Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.09?download=true
inline.NumInlined: 13762
inline.NumDeleted: 6781
loop-unroll.NumCompletelyUnrolled: 155
loop-unroll.NumRuntimeUnrolled: 281
loop-unroll.NumUnrolled: 436
begin_hunk_0_@_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E7__removeCs1LHh8CLbVkQ_11polars_core:bb.a
bb.ac:                                            ; preds = %bb.o
  %i.gm = add i32 %i.cn, -1, !dbg !186843         ; 2 uses
  store i32 %i.gm, ptr %i.cm, align 8, !dbg !186843
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ck, i64 28, !dbg !186844
  %i.go = load i32, ptr %i.gn, align 4, !dbg !186844, !range !8720, !noundef !7548
  %i.gp = icmp eq i32 %i.go, 1, !dbg !186845
  br i1 %i.gp, label %bb.af, label %bb.ae, !dbg !186845

bb.ad:                                            ; preds = %bb.o, %bb.af
  %.sroa.5.0 = phi i16 [ %i.ha, %bb.af ], [ undef, %bb.o ], !dbg !186846
  tail call void @llvm.assume(i1 %i.co), !dbg !186847
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ck, i64 36, !dbg !186848 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !dbg !186848, !noundef !7548
  %i.gs = add i32 %i.gr, -1, !dbg !186848
  store i32 %i.gs, ptr %i.gq, align 4, !dbg !186848
  store i16 1, ptr %0, align 4, !dbg !186849
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !186849
  store i16 %.sroa.5.0, ptr %i.gt, align 2, !dbg !186849
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !186849
  store i32 %3, ptr %i.gu, align 4, !dbg !186849
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !186849
  store i32 %4, ptr %i.gv, align 4, !dbg !186849
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !186849
  store i8 0, ptr %i.gw, align 4, !dbg !186849
  br label %bb.d, !dbg !186850

bb.ae:                                            ; preds = %bb.ac
  %i.gx = load ptr, ptr %i.cl, align 8, !dbg !186851, !noundef !7548
  br label %bb.af, !dbg !186852

bb.af:                                            ; preds = %bb.ac, %bb.ae
  %.sroa.06.0 = phi ptr [ %i.gx, %bb.ae ], [ %i.cl, %bb.ac ], !dbg !186853
  %i.gy = zext i32 %i.gm to i64, !dbg !186854
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.06.0, i64 %i.gy, !dbg !186855
  %i.ha = load i16, ptr %i.gz, align 2, !dbg !186856, !noundef !7548
  br label %bb.ad, !dbg !186857
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i32, i32 } @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E9balance_lCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !186858 !guid !187114 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 10 uses
  %i.b = alloca [40 x i8], align 16               ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 10 uses
  %i.f = alloca [40 x i8], align 8                ; 10 uses
  %i.g = alloca [40 x i8], align 8                ; 11 uses
  %i.h = alloca [40 x i8], align 16               ; 8 uses
  %i.i = alloca [40 x i8], align 16               ; 8 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 10 uses
  %i.n = alloca [40 x i8], align 8                ; 10 uses
  %i.o = alloca [40 x i8], align 8                ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !187154 ; 11 uses
  %i.q = load ptr, ptr %i.p, align 8, !dbg !187154, !nonnull !7548, !noundef !7548 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !187155 ; 11 uses
  %i.s = load i64, ptr %i.r, align 8, !dbg !187155, !noundef !7548 ; 6 uses
  %i.t = zext i32 %2 to i64, !dbg !187156         ; 2 uses
  %i.u = icmp ugt i64 %i.s, %i.t, !dbg !187157
  tail call void @llvm.assume(i1 %i.u), !dbg !187158
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.t, !dbg !187159 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4, !dbg !187160
  %i.x = load i32, ptr %i.w, align 4, !dbg !187160, !noundef !7548 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 12, !dbg !187161
  %i.z = load i32, ptr %i.y, align 4, !dbg !187161, !noundef !7548 ; 3 uses
  %i.aa = icmp eq i32 %i.x, -1, !dbg !187162
  br i1 %i.aa, label %bb.c, label %bb.b, !dbg !187162

bb.b:                                             ; preds = %bb.a
  %i.ab = zext i32 %i.x to i64, !dbg !187163      ; 2 uses
  %i.ac = icmp ugt i64 %i.s, %i.ab, !dbg !187164
  tail call void @llvm.assume(i1 %i.ac), !dbg !187165
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.ab, !dbg !187166
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32, !dbg !187167
  %i.af = load i32, ptr %i.ae, align 8, !dbg !187167, !noundef !7548
  %i.ag = zext i32 %i.af to i64, !dbg !187167
  %i.ah = add nuw nsw i64 %i.ag, 1, !dbg !187168
  br label %bb.c, !dbg !187169

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.01.0.i = phi i64 [ %i.ah, %bb.b ], [ 1, %bb.a ], !dbg !187170 ; 2 uses
  %i.ai = icmp eq i32 %i.z, -1, !dbg !187171
  br i1 %i.ai, label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit, label %bb.d, !dbg !187171

bb.d:                                             ; preds = %bb.c
  %i.aj = zext i32 %i.z to i64, !dbg !187172      ; 2 uses
  %i.ak = icmp ugt i64 %i.s, %i.aj, !dbg !187173
  tail call void @llvm.assume(i1 %i.ak), !dbg !187174
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.aj, !dbg !187175
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32, !dbg !187176
  %i.an = load i32, ptr %i.am, align 8, !dbg !187176, !noundef !7548
  %i.ao = zext i32 %i.an to i64, !dbg !187176
  %i.ap = add nuw nsw i64 %i.ao, 1, !dbg !187177
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit, !dbg !187178

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.c, %bb.d
  %.sroa.03.0.i = phi i64 [ %i.ap, %bb.d ], [ 1, %bb.c ], !dbg !187179 ; 2 uses
  %i.aq = mul nuw nsw i64 %.sroa.01.0.i, 3, !dbg !187180
  %.not.i = icmp samesign uge i64 %i.aq, %.sroa.03.0.i, !dbg !187180
  %i.ar = mul nuw nsw i64 %.sroa.03.0.i, 3, !dbg !187180
  %i.as = icmp samesign uge i64 %i.ar, %.sroa.01.0.i, !dbg !187180
  %.sroa.0.0.i = select i1 %.not.i, i1 %i.as, i1 false, !dbg !187180
  br i1 %.sroa.0.0.i, label %bb.be, label %bb.e, !dbg !187181

bb.e:                                             ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187124), !dbg !187182
  %i.at = zext i32 %i.z to i64, !dbg !187183      ; 2 uses
  %i.au = icmp ugt i64 %i.s, %i.at, !dbg !187184
  tail call void @llvm.assume(i1 %i.au), !dbg !187185
  %i.av = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.at, !dbg !187186 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4, !dbg !187187
  %i.ax = load i32, ptr %i.aw, align 4, !dbg !187187, !noalias !187124, !noundef !7548 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 12, !dbg !187188
  %i.az = load i32, ptr %i.ay, align 4, !dbg !187188, !noalias !187124, !noundef !7548 ; 2 uses
  %i.ba = icmp eq i32 %i.ax, -1, !dbg !187189
  br i1 %i.ba, label %bb.g, label %bb.f, !dbg !187189

bb.f:                                             ; preds = %bb.e
  %i.bb = zext i32 %i.ax to i64, !dbg !187190     ; 2 uses
  %i.bc = icmp ugt i64 %i.s, %i.bb, !dbg !187191
  tail call void @llvm.assume(i1 %i.bc), !dbg !187192
  %i.bd = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.bb, !dbg !187193
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32, !dbg !187194
  %i.bf = load i32, ptr %i.be, align 8, !dbg !187194, !noundef !7548
  %i.bg = zext i32 %i.bf to i64, !dbg !187194
  %i.bh = add nuw nsw i64 %i.bg, 1, !dbg !187195
  br label %bb.g, !dbg !187196

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i = phi i64 [ %i.bh, %bb.f ], [ 1, %bb.e ], !dbg !187197
  %i.bi = icmp eq i32 %i.az, -1, !dbg !187198
  br i1 %i.bi, label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.h, !dbg !187198

bb.h:                                             ; preds = %bb.g
  %i.bj = zext i32 %i.az to i64, !dbg !187199     ; 2 uses
  %i.bk = icmp ugt i64 %i.s, %i.bj, !dbg !187200
  tail call void @llvm.assume(i1 %i.bk), !dbg !187201
  %i.bl = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.bj, !dbg !187202
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32, !dbg !187203
  %i.bn = load i32, ptr %i.bm, align 8, !dbg !187203, !noundef !7548
  %i.bo = zext i32 %i.bn to i64, !dbg !187203
  %i.bp = shl nuw nsw i64 %i.bo, 1, !dbg !187204
  %i.bq = add nuw nsw i64 %i.bp, 2, !dbg !187204
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !187205

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.h, %bb.g
  %.sroa.01.0.i.i = phi i64 [ %i.bq, %bb.h ], [ 2, %bb.g ], !dbg !187206
  %i.br = icmp samesign ult i64 %.sroa.0.0.i.i, %.sroa.01.0.i.i, !dbg !187195
  br i1 %i.br, label %bb.al, label %bb.i, !dbg !187207

bb.i:                                             ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187127), !dbg !187208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !187209, !noalias !187128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !187210, !noalias !187128
  call void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodeNtNtBR_7float164pf16EE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2), !dbg !187211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false), !dbg !187212, !noalias !187128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !187213, !noalias !187128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !187214, !noalias !187128
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !187215
  %i.bt = load i32, ptr %i.bs, align 8, !dbg !187215, !range !8720, !noalias !187128, !noundef !7548
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 12, !dbg !187215
  %i.bv = load i32, ptr %i.bu, align 4, !dbg !187215, !noalias !187128, !noundef !7548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !187216, !noalias !187128
  invoke void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodeNtNtBR_7float164pf16EE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bt, i32 noundef %i.bv)
          to label %bb.j unwind label %.thread.i.i, !dbg !187217

.thread.i.i:                                      ; preds = %bb.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak, !dbg !187218

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false), !dbg !187219, !noalias !187128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !187220, !noalias !187128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !187221, !noalias !187128
  %i.bx = load i32, ptr %i.n, align 8, !dbg !187222, !range !8720, !noalias !187128, !noundef !7548
  %i.by = getelementptr inbounds nuw i8, ptr %i.n, i64 4, !dbg !187222
  %i.bz = load i32, ptr %i.by, align 4, !dbg !187222, !noalias !187128, !noundef !7548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !187223, !noalias !187128
  invoke void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodeNtNtBR_7float164pf16EE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bx, i32 noundef %i.bz)
          to label %bb.k unwind label %.thread55.i.i, !dbg !187224

.thread55.i.i:                                    ; preds = %bb.j
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj, !dbg !187225

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !dbg !187226, !noalias !187128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !187227, !noalias !187128
  %i.cb = getelementptr inbounds nuw i8, ptr %i.o, i64 4, !dbg !187228
  %i.cc = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !187229
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cc, align 8, !dbg !187229, !noalias !187128
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24, !dbg !187229 ; 2 uses
  %i.cd = load <2 x i32>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !187229, !noalias !187128
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !187229, !noalias !187128
  %i.ce = getelementptr inbounds nuw i8, ptr %i.m, i64 4, !dbg !187230
  %3 = load <1 x i64>, ptr %i.o, align 8, !dbg !187228, !noalias !187128
  %i.cf = load i32, ptr %i.cb, align 4, !dbg !187228, !noalias !187128, !noundef !7548 ; 2 uses
  %4 = load <1 x i64>, ptr %i.m, align 8, !dbg !187230, !noalias !187128
  %i.cg = load i32, ptr %i.ce, align 4, !dbg !187230, !noalias !187128, !noundef !7548 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187131), !dbg !187231
  %i.ch = icmp eq i32 %i.cf, -1, !dbg !187232
  br i1 %i.ch, label %bb.l, label %bb.m, !dbg !187232

bb.l:                                             ; preds = %bb.k
  %i.ci = icmp eq i32 %i.cg, -1, !dbg !187233
  br i1 %i.ci, label %bb.r, label %bb.n, !dbg !187233

bb.m:                                             ; preds = %bb.k
  %i.cj = load ptr, ptr %i.p, align 8, !dbg !187234, !alias.scope !187132, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.ck = load i64, ptr %i.r, align 8, !dbg !187235, !alias.scope !187132, !noundef !7548 ; 2 uses
  %i.cl = zext i32 %i.cf to i64, !dbg !187236     ; 2 uses
  %i.cm = icmp ugt i64 %i.ck, %i.cl, !dbg !187237
  tail call void @llvm.assume(i1 %i.cm), !dbg !187238
  %i.cn = getelementptr inbounds nuw [48 x i8], ptr %i.cj, i64 %i.cl, !dbg !187239 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32, !dbg !187240
  %i.cp = load i32, ptr %i.co, align 8, !dbg !187240, !noalias !187133, !noundef !7548 ; 2 uses
  %i.cq = icmp eq i32 %i.cg, -1, !dbg !187233
  br i1 %i.cq, label %bb.p, label %bb.q, !dbg !187233

bb.n:                                             ; preds = %bb.l
  %i.cr = load ptr, ptr %i.p, align 8, !dbg !187241, !alias.scope !187132, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.cs = load i64, ptr %i.r, align 8, !dbg !187242, !alias.scope !187132, !noundef !7548
  %i.ct = zext i32 %i.cg to i64, !dbg !187243     ; 3 uses
  %i.cu = icmp ugt i64 %i.cs, %i.ct, !dbg !187244
  tail call void @llvm.assume(i1 %i.cu), !dbg !187245
  %i.cv = getelementptr inbounds nuw [48 x i8], ptr %i.cr, i64 %i.ct, !dbg !187246
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32, !dbg !187247
  %i.cx = load i32, ptr %i.cw, align 8, !dbg !187247, !noalias !187133, !noundef !7548
  br label %bb.o, !dbg !187248

bb.o:                                             ; preds = %bb.q, %bb.n
  %.pre-phi.i.i.i = phi i64 [ %i.df, %bb.q ], [ %i.ct, %bb.n ], !dbg !187249
  %i.cy = phi ptr [ %i.cj, %bb.q ], [ %i.cr, %bb.n ], !dbg !187250
  %.sroa.013.1.i.i.i = phi i32 [ %i.dm, %bb.q ], [ 0, %bb.n ], !dbg !187251
  %.sroa.0.1.in.i.i.i = phi i32 [ %i.dk, %bb.q ], [ %i.cx, %bb.n ]
  %.sroa.0.1.i.i.i = add i32 %.sroa.0.1.in.i.i.i, 1, !dbg !187252
  %i.cz = getelementptr inbounds nuw [48 x i8], ptr %i.cy, i64 %.pre-phi.i.i.i, !dbg !187253
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 36, !dbg !187254
  %i.db = load i32, ptr %i.da, align 4, !dbg !187254, !noalias !187133, !noundef !7548
  br label %bb.r, !dbg !187255

bb.p:                                             ; preds = %bb.m
  %i.dc = add i32 %i.cp, 1, !dbg !187252
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 36, !dbg !187256
  %i.de = load i32, ptr %i.dd, align 4, !dbg !187256, !noalias !187133, !noundef !7548
  br label %bb.r, !dbg !187248

bb.q:                                             ; preds = %bb.m
  %i.df = zext i32 %i.cg to i64, !dbg !187243     ; 3 uses
  %i.dg = icmp ugt i64 %i.ck, %i.df, !dbg !187244
  tail call void @llvm.assume(i1 %i.dg), !dbg !187245
  %i.dh = getelementptr inbounds nuw [48 x i8], ptr %i.cj, i64 %i.df, !dbg !187246
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32, !dbg !187247
  %i.dj = load i32, ptr %i.di, align 8, !dbg !187247, !noalias !187133, !noundef !7548
  %i.dk = add i32 %i.dj, %i.cp, !dbg !187252
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cn, i64 36, !dbg !187256
  %i.dm = load i32, ptr %i.dl, align 4, !dbg !187256, !noalias !187133, !noundef !7548
  br label %bb.o, !dbg !187248

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.l
  %.sroa.014.0.i.i.i = phi i32 [ %i.db, %bb.o ], [ 0, %bb.l ], [ 0, %bb.p ], !dbg !187257
  %.sroa.013.2.i.i.i = phi i32 [ %.sroa.013.1.i.i.i, %bb.o ], [ 0, %bb.l ], [ %i.de, %bb.p ], !dbg !187258
  %.sroa.0.2.i.i.i = phi i32 [ %.sroa.0.1.i.i.i, %bb.o ], [ 1, %bb.l ], [ %i.dc, %bb.p ], !dbg !187252
  %i.dn = add i32 %.sroa.014.0.i.i.i, %.sroa.4.0.copyload.i.i, !dbg !187259
  %i.do = add i32 %i.dn, %.sroa.013.2.i.i.i, !dbg !187259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !187260, !noalias !187134
  %5 = shufflevector <1 x i64> %3, <1 x i64> %4, <2 x i32> <i32 0, i32 1>, !dbg !187260
  store <2 x i64> %5, ptr %i.i, align 16, !dbg !187260, !noalias !187134
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !187260
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 16, !dbg !187260, !noalias !187132
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !187260
  store <2 x i32> %i.cd, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i.i, align 8, !dbg !187260, !noalias !187132
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !187260
  store i32 %.sroa.0.2.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 16, !dbg !187260, !noalias !187134
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 36, !dbg !187260
  store i32 %i.do, ptr %.sroa.7.0..sroa_idx.i.i.i, align 4, !dbg !187260, !noalias !187134
  %i.dp = invoke { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodeNtNtBS_7float164pf16EE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.i)
          to label %bb.s unwind label %bb.ah, !dbg !187261 ; 2 uses

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !187262, !noalias !187134
  %i.dq = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !187263
  %i.dr = getelementptr inbounds nuw i8, ptr %i.m, i64 12, !dbg !187263
  %i.ds = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !187264
  %.sroa.039.0.copyload.i.i = load i64, ptr %i.ds, align 8, !dbg !187264, !noalias !187128
  %.sroa.441.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !187264 ; 2 uses
  %i.dt = load <2 x i32>, ptr %.sroa.441.0..sroa_idx.i.i, align 8, !dbg !187264, !noalias !187128
  %.sroa.441.0.copyload.i.i = load i32, ptr %.sroa.441.0..sroa_idx.i.i, align 8, !dbg !187264, !noalias !187128
  %i.du = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !187265
  %i.dv = getelementptr inbounds nuw i8, ptr %i.n, i64 12, !dbg !187265
  %6 = load <1 x i64>, ptr %i.dq, align 8, !dbg !187263, !noalias !187128
  %i.dw = load i32, ptr %i.dr, align 4, !dbg !187263, !noalias !187128, !noundef !7548 ; 2 uses
  %7 = load <1 x i64>, ptr %i.du, align 8, !dbg !187265, !noalias !187128
  %i.dx = load i32, ptr %i.dv, align 4, !dbg !187265, !noalias !187128, !noundef !7548 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !187135), !dbg !187266
  %i.dy = icmp eq i32 %i.dw, -1, !dbg !187267
  br i1 %i.dy, label %bb.t, label %bb.u, !dbg !187267

bb.t:                                             ; preds = %bb.s
  %i.dz = icmp eq i32 %i.dx, -1, !dbg !187268
  br i1 %i.dz, label %bb.z, label %bb.v, !dbg !187268

bb.u:                                             ; preds = %bb.s
  %i.ea = load ptr, ptr %i.p, align 8, !dbg !187269, !alias.scope !187136, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.eb = load i64, ptr %i.r, align 8, !dbg !187270, !alias.scope !187136, !noundef !7548 ; 2 uses
  %i.ec = zext i32 %i.dw to i64, !dbg !187271     ; 2 uses
  %i.ed = icmp ugt i64 %i.eb, %i.ec, !dbg !187272
  call void @llvm.assume(i1 %i.ed), !dbg !187273
  %i.ee = getelementptr inbounds nuw [48 x i8], ptr %i.ea, i64 %i.ec, !dbg !187274 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32, !dbg !187275
  %i.eg = load i32, ptr %i.ef, align 8, !dbg !187275, !noalias !187137, !noundef !7548 ; 2 uses
  %i.eh = icmp eq i32 %i.dx, -1, !dbg !187268
  br i1 %i.eh, label %bb.x, label %bb.y, !dbg !187268

bb.v:                                             ; preds = %bb.t
  %i.ei = load ptr, ptr %i.p, align 8, !dbg !187276, !alias.scope !187136, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.ej = load i64, ptr %i.r, align 8, !dbg !187277, !alias.scope !187136, !noundef !7548
  %i.ek = zext i32 %i.dx to i64, !dbg !187278     ; 3 uses
  %i.el = icmp ugt i64 %i.ej, %i.ek, !dbg !187279
  call void @llvm.assume(i1 %i.el), !dbg !187280
  %i.em = getelementptr inbounds nuw [48 x i8], ptr %i.ei, i64 %i.ek, !dbg !187281
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32, !dbg !187282
  %i.eo = load i32, ptr %i.en, align 8, !dbg !187282, !noalias !187137, !noundef !7548
  br label %bb.w, !dbg !187283

bb.w:                                             ; preds = %bb.y, %bb.v
  %.pre-phi.i6.i.i = phi i64 [ %i.ew, %bb.y ], [ %i.ek, %bb.v ], !dbg !187284
  %i.ep = phi ptr [ %i.ea, %bb.y ], [ %i.ei, %bb.v ], !dbg !187285
  %.sroa.013.1.i7.i.i = phi i32 [ %i.fd, %bb.y ], [ 0, %bb.v ], !dbg !187286
  %.sroa.0.1.in.i8.i.i = phi i32 [ %i.fb, %bb.y ], [ %i.eo, %bb.v ]
  %.sroa.0.1.i9.i.i = add i32 %.sroa.0.1.in.i8.i.i, 1, !dbg !187287
  %i.eq = getelementptr inbounds nuw [48 x i8], ptr %i.ep, i64 %.pre-phi.i6.i.i, !dbg !187288
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 36, !dbg !187289
  %i.es = load i32, ptr %i.er, align 4, !dbg !187289, !noalias !187137, !noundef !7548
  br label %bb.z, !dbg !187290

bb.x:                                             ; preds = %bb.u
  %i.et = add i32 %i.eg, 1, !dbg !187287
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ee, i64 36, !dbg !187291
  %i.ev = load i32, ptr %i.eu, align 4, !dbg !187291, !noalias !187137, !noundef !7548
  br label %bb.z, !dbg !187283

bb.y:                                             ; preds = %bb.u
  %i.ew = zext i32 %i.dx to i64, !dbg !187278     ; 3 uses
  %i.ex = icmp ugt i64 %i.eb, %i.ew, !dbg !187279
  call void @llvm.assume(i1 %i.ex), !dbg !187280
  %i.ey = getelementptr inbounds nuw [48 x i8], ptr %i.ea, i64 %i.ew, !dbg !187281
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32, !dbg !187282
  %i.fa = load i32, ptr %i.ez, align 8, !dbg !187282, !noalias !187137, !noundef !7548
  %i.fb = add i32 %i.fa, %i.eg, !dbg !187287
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ee, i64 36, !dbg !187291
  %i.fd = load i32, ptr %i.fc, align 4, !dbg !187291, !noalias !187137, !noundef !7548
  br label %bb.w, !dbg !187283

bb.z:                                             ; preds = %bb.x, %bb.w, %bb.t
  %.sroa.014.0.i10.i.i = phi i32 [ %i.es, %bb.w ], [ 0, %bb.t ], [ 0, %bb.x ], !dbg !187292
  %.sroa.013.2.i11.i.i = phi i32 [ %.sroa.013.1.i7.i.i, %bb.w ], [ 0, %bb.t ], [ %i.ev, %bb.x ], !dbg !187293
  %.sroa.0.2.i12.i.i = phi i32 [ %.sroa.0.1.i9.i.i, %bb.w ], [ 1, %bb.t ], [ %i.et, %bb.x ], !dbg !187287
  %i.fe = add i32 %.sroa.014.0.i10.i.i, %.sroa.441.0.copyload.i.i, !dbg !187294
  %i.ff = add i32 %i.fe, %.sroa.013.2.i11.i.i, !dbg !187294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !187295, !noalias !187138
  %8 = shufflevector <1 x i64> %6, <1 x i64> %7, <2 x i32> <i32 0, i32 1>, !dbg !187295
  store <2 x i64> %8, ptr %i.h, align 16, !dbg !187295, !noalias !187138
  %.sroa.5.0..sroa_idx.i16.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !187295
  store i64 %.sroa.039.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i16.i.i, align 16, !dbg !187295, !noalias !187136
  %.sroa.441.0..sroa.5.0..sroa_idx.i16.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !187295
  store <2 x i32> %i.dt, ptr %.sroa.441.0..sroa.5.0..sroa_idx.i16.sroa_idx.i.i, align 8, !dbg !187295, !noalias !187136
  %.sroa.6.0..sroa_idx.i17.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !187295
  store i32 %.sroa.0.2.i12.i.i, ptr %.sroa.6.0..sroa_idx.i17.i.i, align 16, !dbg !187295, !noalias !187138
  %.sroa.7.0..sroa_idx.i18.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36, !dbg !187295
  store i32 %i.ff, ptr %.sroa.7.0..sroa_idx.i18.i.i, align 4, !dbg !187295, !noalias !187138
  %i.fg = invoke { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodeNtNtBS_7float164pf16EE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.h)
          to label %bb.aa unwind label %bb.ah, !dbg !187296 ; 2 uses

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !187297, !noalias !187138
  %i.fh = extractvalue { i32, i32 } %i.dp, 1, !dbg !187298 ; 3 uses
  %i.fi = extractvalue { i32, i32 } %i.fg, 1, !dbg !187299 ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !187300
  %.sroa.045.0.copyload.i.i = load i64, ptr %i.fj, align 8, !dbg !187300, !noalias !187128
  %.sroa.447.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !187300 ; 2 uses
  %i.fk = load <2 x i32>, ptr %.sroa.447.0..sroa_idx.i.i, align 8, !dbg !187300, !noalias !187128
  %.sroa.447.0.copyload.i.i = load i32, ptr %.sroa.447.0..sroa_idx.i.i, align 8, !dbg !187300, !noalias !187128
  call void @llvm.experimental.noalias.scope.decl(metadata !187139), !dbg !187301
  %i.fl = icmp eq i32 %i.fh, -1, !dbg !187302
  br i1 %i.fl, label %bb.ab, label %bb.ac, !dbg !187302

bb.ab:                                            ; preds = %bb.aa
  %i.fm = icmp eq i32 %i.fi, -1, !dbg !187303
  br i1 %i.fm, label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8double_lCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.ad, !dbg !187303

bb.ac:                                            ; preds = %bb.aa
  %i.fn = load ptr, ptr %i.p, align 8, !dbg !187304, !alias.scope !187140, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.fo = load i64, ptr %i.r, align 8, !dbg !187305, !alias.scope !187140, !noundef !7548 ; 2 uses
  %i.fp = zext i32 %i.fh to i64, !dbg !187306     ; 2 uses
  %i.fq = icmp ugt i64 %i.fo, %i.fp, !dbg !187307
  call void @llvm.assume(i1 %i.fq), !dbg !187308
  %i.fr = getelementptr inbounds nuw [48 x i8], ptr %i.fn, i64 %i.fp, !dbg !187309 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 32, !dbg !187310
  %i.ft = load i32, ptr %i.fs, align 8, !dbg !187310, !noalias !187141, !noundef !7548 ; 2 uses
  %i.fu = icmp eq i32 %i.fi, -1, !dbg !187303
  br i1 %i.fu, label %bb.af, label %bb.ag, !dbg !187303

bb.ad:                                            ; preds = %bb.ab
  %i.fv = load ptr, ptr %i.p, align 8, !dbg !187311, !alias.scope !187140, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.fw = load i64, ptr %i.r, align 8, !dbg !187312, !alias.scope !187140, !noundef !7548
  %i.fx = zext i32 %i.fi to i64, !dbg !187313     ; 3 uses
  %i.fy = icmp ugt i64 %i.fw, %i.fx, !dbg !187314
  call void @llvm.assume(i1 %i.fy), !dbg !187315
  %i.fz = getelementptr inbounds nuw [48 x i8], ptr %i.fv, i64 %i.fx, !dbg !187316
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 32, !dbg !187317
  %i.gb = load i32, ptr %i.ga, align 8, !dbg !187317, !noalias !187141, !noundef !7548
  br label %bb.ae, !dbg !187318

bb.ae:                                            ; preds = %bb.ag, %bb.ad
  %.pre-phi.i20.i.i = phi i64 [ %i.gj, %bb.ag ], [ %i.fx, %bb.ad ], !dbg !187319
  %i.gc = phi ptr [ %i.fn, %bb.ag ], [ %i.fv, %bb.ad ], !dbg !187320
  %.sroa.013.1.i21.i.i = phi i32 [ %i.gq, %bb.ag ], [ 0, %bb.ad ], !dbg !187321
  %.sroa.0.1.in.i22.i.i = phi i32 [ %i.go, %bb.ag ], [ %i.gb, %bb.ad ]
  %.sroa.0.1.i23.i.i = add i32 %.sroa.0.1.in.i22.i.i, 1, !dbg !187322
  %i.gd = getelementptr inbounds nuw [48 x i8], ptr %i.gc, i64 %.pre-phi.i20.i.i, !dbg !187323
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 36, !dbg !187324
  %i.gf = load i32, ptr %i.ge, align 4, !dbg !187324, !noalias !187141, !noundef !7548
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8double_lCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !187325

bb.af:                                            ; preds = %bb.ac
  %i.gg = add i32 %i.ft, 1, !dbg !187322
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fr, i64 36, !dbg !187326
  %i.gi = load i32, ptr %i.gh, align 4, !dbg !187326, !noalias !187141, !noundef !7548
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8double_lCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !187318

bb.ag:                                            ; preds = %bb.ac
  %i.gj = zext i32 %i.fi to i64, !dbg !187313     ; 3 uses
  %i.gk = icmp ugt i64 %i.fo, %i.gj, !dbg !187314
  call void @llvm.assume(i1 %i.gk), !dbg !187315
  %i.gl = getelementptr inbounds nuw [48 x i8], ptr %i.fn, i64 %i.gj, !dbg !187316
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 32, !dbg !187317
  %i.gn = load i32, ptr %i.gm, align 8, !dbg !187317, !noalias !187141, !noundef !7548
  %i.go = add i32 %i.gn, %i.ft, !dbg !187322
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fr, i64 36, !dbg !187326
  %i.gq = load i32, ptr %i.gp, align 4, !dbg !187326, !noalias !187141, !noundef !7548
  br label %bb.ae, !dbg !187318

bb.ah:                                            ; preds = %bb.z, %bb.r
  %.sroa.01.1.ph.i.i = phi i1 [ true, %bb.r ], [ false, %bb.z ]
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !187327
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_7float164pf16ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gr)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecNtNtBL_7float164pf16EECs1LHh8CLbVkQ_11polars_core.exit.i.i unwind label %bb.ai, !dbg !187328

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecNtNtBL_7float164pf16EECs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %bb.ah
  br i1 %.sroa.01.1.ph.i.i, label %bb.aj, label %common.resume.i, !dbg !187225

bb.ai:                                            ; preds = %bb.ak, %bb.aj, %bb.ah
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #48, !dbg !187329
  unreachable, !dbg !187329

bb.aj:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecNtNtBL_7float164pf16EECs1LHh8CLbVkQ_11polars_core.exit.i.i, %.thread55.i.i
  %.sroa.02.160.i.i = phi i1 [ true, %.thread55.i.i ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecNtNtBL_7float164pf16EECs1LHh8CLbVkQ_11polars_core.exit.i.i ]
  %.pn59.i.i = phi { ptr, i32 } [ %i.ca, %.thread55.i.i ], [ %lpad.thr_comm.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecNtNtBL_7float164pf16EECs1LHh8CLbVkQ_11polars_core.exit.i.i ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !187225
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_7float164pf16ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gt)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecNtNtBL_7float164pf16EECs1LHh8CLbVkQ_11polars_core.exit34.i.i unwind label %bb.ai, !dbg !187330

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecNtNtBL_7float164pf16EECs1LHh8CLbVkQ_11polars_core.exit34.i.i: ; preds = %bb.aj
  br i1 %.sroa.02.160.i.i, label %bb.ak, label %common.resume.i, !dbg !187218

common.resume.i:                                  ; preds = %bb.bd, %bb.bb, %bb.ak, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecNtNtBL_7float164pf16EECs1LHh8CLbVkQ_11polars_core.exit34.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecNtNtBL_7float164pf16EECs1LHh8CLbVkQ_11polars_core.exit.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecNtNtBL_7float164pf16EECs1LHh8CLbVkQ_11polars_core.exit.i.i ], [ %.pn59.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecNtNtBL_7float164pf16EECs1LHh8CLbVkQ_11polars_core.exit34.i.i ], [ %.pn.pn54.i.i, %bb.ak ], [ %i.kj, %bb.bd ], [ %i.kg, %bb.bb ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !187331

bb.ak:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecNtNtBL_7float164pf16EECs1LHh8CLbVkQ_11polars_core.exit34.i.i, %.thread.i.i
  %.pn.pn54.i.i = phi { ptr, i32 } [ %i.bw, %.thread.i.i ], [ %.pn59.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecNtNtBL_7float164pf16EECs1LHh8CLbVkQ_11polars_core.exit34.i.i ]
  %i.gu = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !187218
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_7float164pf16ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gu)
          to label %common.resume.i unwind label %bb.ai, !dbg !187332

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8double_lCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.af, %bb.ae, %bb.ab
  %.sroa.014.0.i24.i.i = phi i32 [ %i.gf, %bb.ae ], [ 0, %bb.ab ], [ 0, %bb.af ], !dbg !187333
  %.sroa.013.2.i25.i.i = phi i32 [ %.sroa.013.1.i21.i.i, %bb.ae ], [ 0, %bb.ab ], [ %i.gi, %bb.af ], !dbg !187334
  %.sroa.0.2.i26.i.i = phi i32 [ %.sroa.0.1.i23.i.i, %bb.ae ], [ 1, %bb.ab ], [ %i.gg, %bb.af ], !dbg !187322
  %i.gv = extractvalue { i32, i32 } %i.fg, 0, !dbg !187299
  %i.gw = extractvalue { i32, i32 } %i.dp, 0, !dbg !187298
  %i.gx = add i32 %.sroa.014.0.i24.i.i, %.sroa.447.0.copyload.i.i, !dbg !187335
  %i.gy = add i32 %i.gx, %.sroa.013.2.i25.i.i, !dbg !187335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !187336, !noalias !187142
  store i32 %i.gw, ptr %i.g, align 8, !dbg !187336, !noalias !187142
  %.sroa.2.0..sroa_idx.i27.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4, !dbg !187336
  store i32 %i.fh, ptr %.sroa.2.0..sroa_idx.i27.i.i, align 4, !dbg !187336, !noalias !187142
  %.sroa.3.0..sroa_idx.i28.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !187336
  store i32 %i.gv, ptr %.sroa.3.0..sroa_idx.i28.i.i, align 8, !dbg !187336, !noalias !187142
  %.sroa.4.0..sroa_idx.i29.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12, !dbg !187336
  store i32 %i.fi, ptr %.sroa.4.0..sroa_idx.i29.i.i, align 4, !dbg !187336, !noalias !187142
  %.sroa.5.0..sroa_idx.i30.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !187336
  store i64 %.sroa.045.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i30.i.i, align 8, !dbg !187336, !noalias !187140
  %.sroa.447.0..sroa.5.0..sroa_idx.i30.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !187336
  store <2 x i32> %i.fk, ptr %.sroa.447.0..sroa.5.0..sroa_idx.i30.sroa_idx.i.i, align 8, !dbg !187336, !noalias !187140
  %.sroa.6.0..sroa_idx.i31.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !187336
  store i32 %.sroa.0.2.i26.i.i, ptr %.sroa.6.0..sroa_idx.i31.i.i, align 8, !dbg !187336, !noalias !187142
  %.sroa.7.0..sroa_idx.i32.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 36, !dbg !187336
  store i32 %i.gy, ptr %.sroa.7.0..sroa_idx.i32.i.i, align 4, !dbg !187336, !noalias !187142
  %i.gz = call { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodeNtNtBS_7float164pf16EE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.g), !dbg !187337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !187338, !noalias !187142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !187327, !noalias !187128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !187225, !noalias !187128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !187218, !noalias !187128
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8rotate_lCs1LHh8CLbVkQ_11polars_core.exit, !dbg !187208

bb.al:                                            ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187143), !dbg !187339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !187340, !noalias !187144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !187341, !noalias !187144
  call void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodeNtNtBR_7float164pf16EE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2), !dbg !187342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !dbg !187343, !noalias !187144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !187344, !noalias !187144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !187345, !noalias !187144
  %i.ha = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !187346
  %i.hb = load i32, ptr %i.ha, align 8, !dbg !187346, !range !8720, !noalias !187144, !noundef !7548
  %i.hc = getelementptr inbounds nuw i8, ptr %i.f, i64 12, !dbg !187346
  %i.hd = load i32, ptr %i.hc, align 4, !dbg !187346, !noalias !187144, !noundef !7548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !187347, !noalias !187144
  invoke void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodeNtNtBR_7float164pf16EE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.hb, i32 noundef %i.hd)
          to label %bb.am unwind label %bb.bd, !dbg !187348

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !dbg !187349, !noalias !187144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !187350, !noalias !187144
  %i.he = getelementptr inbounds nuw i8, ptr %i.f, i64 4, !dbg !187351
  %i.hf = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !187352
  %.sroa.0.0.copyload.i3.i = load i64, ptr %i.hf, align 8, !dbg !187352, !noalias !187144
  %.sroa.4.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !187352 ; 2 uses
  %i.hg = load <2 x i32>, ptr %.sroa.4.0..sroa_idx.i4.i, align 8, !dbg !187352, !noalias !187144
  %.sroa.4.0.copyload.i5.i = load i32, ptr %.sroa.4.0..sroa_idx.i4.i, align 8, !dbg !187352, !noalias !187144
  %i.hh = getelementptr inbounds nuw i8, ptr %i.e, i64 4, !dbg !187353
  %9 = load <1 x i64>, ptr %i.f, align 8, !dbg !187351, !noalias !187144
  %i.hi = load i32, ptr %i.he, align 4, !dbg !187351, !noalias !187144, !noundef !7548 ; 2 uses
  %10 = load <1 x i64>, ptr %i.e, align 8, !dbg !187353, !noalias !187144
  %i.hj = load i32, ptr %i.hh, align 4, !dbg !187353, !noalias !187144, !noundef !7548 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187146), !dbg !187354
  %i.hk = icmp eq i32 %i.hi, -1, !dbg !187355
  br i1 %i.hk, label %bb.an, label %bb.ao, !dbg !187355

bb.an:                                            ; preds = %bb.am
  %i.hl = icmp eq i32 %i.hj, -1, !dbg !187356
  br i1 %i.hl, label %bb.at, label %bb.ap, !dbg !187356

bb.ao:                                            ; preds = %bb.am
  %i.hm = load ptr, ptr %i.p, align 8, !dbg !187357, !alias.scope !187147, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.hn = load i64, ptr %i.r, align 8, !dbg !187358, !alias.scope !187147, !noundef !7548 ; 2 uses
  %i.ho = zext i32 %i.hi to i64, !dbg !187359     ; 2 uses
  %i.hp = icmp ugt i64 %i.hn, %i.ho, !dbg !187360
  tail call void @llvm.assume(i1 %i.hp), !dbg !187361
  %i.hq = getelementptr inbounds nuw [48 x i8], ptr %i.hm, i64 %i.ho, !dbg !187362 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 32, !dbg !187363
  %i.hs = load i32, ptr %i.hr, align 8, !dbg !187363, !noalias !187148, !noundef !7548 ; 2 uses
  %i.ht = icmp eq i32 %i.hj, -1, !dbg !187356
  br i1 %i.ht, label %bb.ar, label %bb.as, !dbg !187356

bb.ap:                                            ; preds = %bb.an
  %i.hu = load ptr, ptr %i.p, align 8, !dbg !187364, !alias.scope !187147, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.hv = load i64, ptr %i.r, align 8, !dbg !187365, !alias.scope !187147, !noundef !7548
  %i.hw = zext i32 %i.hj to i64, !dbg !187366     ; 3 uses
  %i.hx = icmp ugt i64 %i.hv, %i.hw, !dbg !187367
  tail call void @llvm.assume(i1 %i.hx), !dbg !187368
  %i.hy = getelementptr inbounds nuw [48 x i8], ptr %i.hu, i64 %i.hw, !dbg !187369
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32, !dbg !187370
  %i.ia = load i32, ptr %i.hz, align 8, !dbg !187370, !noalias !187148, !noundef !7548
  br label %bb.aq, !dbg !187371

bb.aq:                                            ; preds = %bb.as, %bb.ap
  %.pre-phi.i.i8.i = phi i64 [ %i.ii, %bb.as ], [ %i.hw, %bb.ap ], !dbg !187372
  %i.ib = phi ptr [ %i.hm, %bb.as ], [ %i.hu, %bb.ap ], !dbg !187373
  %.sroa.013.1.i.i9.i = phi i32 [ %i.ip, %bb.as ], [ 0, %bb.ap ], !dbg !187374
  %.sroa.0.1.in.i.i10.i = phi i32 [ %i.in, %bb.as ], [ %i.ia, %bb.ap ]
  %.sroa.0.1.i.i11.i = add i32 %.sroa.0.1.in.i.i10.i, 1, !dbg !187375
  %i.ic = getelementptr inbounds nuw [48 x i8], ptr %i.ib, i64 %.pre-phi.i.i8.i, !dbg !187376
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 36, !dbg !187377
  %i.ie = load i32, ptr %i.id, align 4, !dbg !187377, !noalias !187148, !noundef !7548
  br label %bb.at, !dbg !187378

bb.ar:                                            ; preds = %bb.ao
  %i.if = add i32 %i.hs, 1, !dbg !187375
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hq, i64 36, !dbg !187379
  %i.ih = load i32, ptr %i.ig, align 4, !dbg !187379, !noalias !187148, !noundef !7548
  br label %bb.at, !dbg !187371

bb.as:                                            ; preds = %bb.ao
  %i.ii = zext i32 %i.hj to i64, !dbg !187366     ; 3 uses
  %i.ij = icmp ugt i64 %i.hn, %i.ii, !dbg !187367
  tail call void @llvm.assume(i1 %i.ij), !dbg !187368
  %i.ik = getelementptr inbounds nuw [48 x i8], ptr %i.hm, i64 %i.ii, !dbg !187369
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 32, !dbg !187370
  %i.im = load i32, ptr %i.il, align 8, !dbg !187370, !noalias !187148, !noundef !7548
  %i.in = add i32 %i.im, %i.hs, !dbg !187375
  %i.io = getelementptr inbounds nuw i8, ptr %i.hq, i64 36, !dbg !187379
  %i.ip = load i32, ptr %i.io, align 4, !dbg !187379, !noalias !187148, !noundef !7548
  br label %bb.aq, !dbg !187371

bb.at:                                            ; preds = %bb.ar, %bb.aq, %bb.an
  %.sroa.014.0.i.i12.i = phi i32 [ %i.ie, %bb.aq ], [ 0, %bb.an ], [ 0, %bb.ar ], !dbg !187380
  %.sroa.013.2.i.i13.i = phi i32 [ %.sroa.013.1.i.i9.i, %bb.aq ], [ 0, %bb.an ], [ %i.ih, %bb.ar ], !dbg !187381
  %.sroa.0.2.i.i14.i = phi i32 [ %.sroa.0.1.i.i11.i, %bb.aq ], [ 1, %bb.an ], [ %i.if, %bb.ar ], !dbg !187375
  %i.iq = add i32 %.sroa.014.0.i.i12.i, %.sroa.4.0.copyload.i5.i, !dbg !187382
  %i.ir = add i32 %i.iq, %.sroa.013.2.i.i13.i, !dbg !187382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !187383, !noalias !187149
  %11 = shufflevector <1 x i64> %9, <1 x i64> %10, <2 x i32> <i32 0, i32 1>, !dbg !187383
  store <2 x i64> %11, ptr %i.b, align 16, !dbg !187383, !noalias !187149
  %.sroa.5.0..sroa_idx.i.i18.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !187383
  store i64 %.sroa.0.0.copyload.i3.i, ptr %.sroa.5.0..sroa_idx.i.i18.i, align 16, !dbg !187383, !noalias !187147
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !187383
  store <2 x i32> %i.hg, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i19.i, align 8, !dbg !187383, !noalias !187147
  %.sroa.6.0..sroa_idx.i.i21.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !187383
  store i32 %.sroa.0.2.i.i14.i, ptr %.sroa.6.0..sroa_idx.i.i21.i, align 16, !dbg !187383, !noalias !187149
  %.sroa.7.0..sroa_idx.i.i22.i = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !187383
  store i32 %i.ir, ptr %.sroa.7.0..sroa_idx.i.i22.i, align 4, !dbg !187383, !noalias !187149
  %i.is = invoke { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodeNtNtBS_7float164pf16EE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.au unwind label %bb.bb, !dbg !187384 ; 2 uses

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !187385, !noalias !187149
  %i.it = extractvalue { i32, i32 } %i.is, 1, !dbg !187386 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !187387
  %.sroa.022.0.copyload.i.i = load i64, ptr %i.iu, align 8, !dbg !187387, !noalias !187144
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !187387 ; 2 uses
  %i.iv = load <2 x i32>, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !dbg !187387, !noalias !187144
  %.sroa.424.0.copyload.i.i = load i32, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !dbg !187387, !noalias !187144
  %i.iw = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !187388
  %i.ix = getelementptr inbounds nuw i8, ptr %i.e, i64 12, !dbg !187388
  %i.iy = load i32, ptr %i.ix, align 4, !dbg !187388, !noalias !187144, !noundef !7548 ; 4 uses
  %i.iz = load <2 x i32>, ptr %i.iw, align 8, !dbg !187388, !noalias !187144
  call void @llvm.experimental.noalias.scope.decl(metadata !187150), !dbg !187389
  %i.ja = icmp eq i32 %i.it, -1, !dbg !187390
  br i1 %i.ja, label %bb.av, label %bb.aw, !dbg !187390

bb.av:                                            ; preds = %bb.au
  %i.jb = icmp eq i32 %i.iy, -1, !dbg !187391
  br i1 %i.jb, label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8single_lCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.ax, !dbg !187391

bb.aw:                                            ; preds = %bb.au
  %i.jc = load ptr, ptr %i.p, align 8, !dbg !187392, !alias.scope !187151, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.jd = load i64, ptr %i.r, align 8, !dbg !187393, !alias.scope !187151, !noundef !7548 ; 2 uses
  %i.je = zext i32 %i.it to i64, !dbg !187394     ; 2 uses
  %i.jf = icmp ugt i64 %i.jd, %i.je, !dbg !187395
  call void @llvm.assume(i1 %i.jf), !dbg !187396
  %i.jg = getelementptr inbounds nuw [48 x i8], ptr %i.jc, i64 %i.je, !dbg !187397 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 32, !dbg !187398
  %i.ji = load i32, ptr %i.jh, align 8, !dbg !187398, !noalias !187152, !noundef !7548 ; 2 uses
  %i.jj = icmp eq i32 %i.iy, -1, !dbg !187391
  br i1 %i.jj, label %bb.az, label %bb.ba, !dbg !187391

bb.ax:                                            ; preds = %bb.av
  %i.jk = load ptr, ptr %i.p, align 8, !dbg !187399, !alias.scope !187151, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.jl = load i64, ptr %i.r, align 8, !dbg !187400, !alias.scope !187151, !noundef !7548
  %i.jm = zext i32 %i.iy to i64, !dbg !187401     ; 3 uses
  %i.jn = icmp ugt i64 %i.jl, %i.jm, !dbg !187402
  call void @llvm.assume(i1 %i.jn), !dbg !187403
  %i.jo = getelementptr inbounds nuw [48 x i8], ptr %i.jk, i64 %i.jm, !dbg !187404
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 32, !dbg !187405
  %i.jq = load i32, ptr %i.jp, align 8, !dbg !187405, !noalias !187152, !noundef !7548
  br label %bb.ay, !dbg !187406

bb.ay:                                            ; preds = %bb.ba, %bb.ax
  %.pre-phi.i4.i.i = phi i64 [ %i.jy, %bb.ba ], [ %i.jm, %bb.ax ], !dbg !187407
  %i.jr = phi ptr [ %i.jc, %bb.ba ], [ %i.jk, %bb.ax ], !dbg !187408
  %.sroa.013.1.i5.i.i = phi i32 [ %i.kf, %bb.ba ], [ 0, %bb.ax ], !dbg !187409
  %.sroa.0.1.in.i6.i.i = phi i32 [ %i.kd, %bb.ba ], [ %i.jq, %bb.ax ]
  %.sroa.0.1.i7.i.i = add i32 %.sroa.0.1.in.i6.i.i, 1, !dbg !187410
  %i.js = getelementptr inbounds nuw [48 x i8], ptr %i.jr, i64 %.pre-phi.i4.i.i, !dbg !187411
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 36, !dbg !187412
  %i.ju = load i32, ptr %i.jt, align 4, !dbg !187412, !noalias !187152, !noundef !7548
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8single_lCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !187413

bb.az:                                            ; preds = %bb.aw
  %i.jv = add i32 %i.ji, 1, !dbg !187410
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jg, i64 36, !dbg !187414
  %i.jx = load i32, ptr %i.jw, align 4, !dbg !187414, !noalias !187152, !noundef !7548
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8single_lCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !187406

bb.ba:                                            ; preds = %bb.aw
  %i.jy = zext i32 %i.iy to i64, !dbg !187401     ; 3 uses
  %i.jz = icmp ugt i64 %i.jd, %i.jy, !dbg !187402
  call void @llvm.assume(i1 %i.jz), !dbg !187403
  %i.ka = getelementptr inbounds nuw [48 x i8], ptr %i.jc, i64 %i.jy, !dbg !187404
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 32, !dbg !187405
  %i.kc = load i32, ptr %i.kb, align 8, !dbg !187405, !noalias !187152, !noundef !7548
  %i.kd = add i32 %i.kc, %i.ji, !dbg !187410
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jg, i64 36, !dbg !187414
  %i.kf = load i32, ptr %i.ke, align 4, !dbg !187414, !noalias !187152, !noundef !7548
  br label %bb.ay, !dbg !187406

bb.bb:                                            ; preds = %bb.at
  %i.kg = landingpad { ptr, i32 }
          cleanup
  %i.kh = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !187415
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_7float164pf16ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.kh)
          to label %common.resume.i unwind label %bb.bc, !dbg !187416

bb.bc:                                            ; preds = %bb.bd, %bb.bb
  %i.ki = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #48, !dbg !187417
  unreachable, !dbg !187417

bb.bd:                                            ; preds = %bb.al
  %i.kj = landingpad { ptr, i32 }
          cleanup
  %i.kk = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !187418
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_7float164pf16ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.kk)
          to label %common.resume.i unwind label %bb.bc, !dbg !187419

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8single_lCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.az, %bb.ay, %bb.av
  %.sroa.014.0.i8.i.i = phi i32 [ %i.ju, %bb.ay ], [ 0, %bb.av ], [ 0, %bb.az ], !dbg !187420
  %.sroa.013.2.i9.i.i = phi i32 [ %.sroa.013.1.i5.i.i, %bb.ay ], [ 0, %bb.av ], [ %i.jx, %bb.az ], !dbg !187421
  %.sroa.0.2.i10.i.i = phi i32 [ %.sroa.0.1.i7.i.i, %bb.ay ], [ 1, %bb.av ], [ %i.jv, %bb.az ], !dbg !187410
  %i.kl = extractvalue { i32, i32 } %i.is, 0, !dbg !187386
  %i.km = add i32 %.sroa.014.0.i8.i.i, %.sroa.424.0.copyload.i.i, !dbg !187422
  %i.kn = add i32 %i.km, %.sroa.013.2.i9.i.i, !dbg !187422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !187423, !noalias !187153
  store i32 %i.kl, ptr %i.a, align 8, !dbg !187423, !noalias !187153
  %.sroa.2.0..sroa_idx.i11.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4, !dbg !187423
  store i32 %i.it, ptr %.sroa.2.0..sroa_idx.i11.i.i, align 4, !dbg !187423, !noalias !187153
  %.sroa.3.0..sroa_idx.i12.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !187423
  store <2 x i32> %i.iz, ptr %.sroa.3.0..sroa_idx.i12.i.i, align 8, !dbg !187423, !noalias !187153
  %.sroa.5.0..sroa_idx.i14.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !187423
  store i64 %.sroa.022.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i14.i.i, align 8, !dbg !187423, !noalias !187151
  %.sroa.424.0..sroa.5.0..sroa_idx.i14.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !187423
  store <2 x i32> %i.iv, ptr %.sroa.424.0..sroa.5.0..sroa_idx.i14.sroa_idx.i.i, align 8, !dbg !187423, !noalias !187151
  %.sroa.6.0..sroa_idx.i15.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !187423
  store i32 %.sroa.0.2.i10.i.i, ptr %.sroa.6.0..sroa_idx.i15.i.i, align 8, !dbg !187423, !noalias !187153
  %.sroa.7.0..sroa_idx.i16.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 36, !dbg !187423
  store i32 %i.kn, ptr %.sroa.7.0..sroa_idx.i16.i.i, align 4, !dbg !187423, !noalias !187153
  %i.ko = call { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodeNtNtBS_7float164pf16EE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !dbg !187424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !187425, !noalias !187153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !187415, !noalias !187144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !187418, !noalias !187144
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8rotate_lCs1LHh8CLbVkQ_11polars_core.exit, !dbg !187339

bb.be:                                            ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit
  %i.kp = insertvalue { i32, i32 } poison, i32 %1, 0, !dbg !187426
  %i.kq = insertvalue { i32, i32 } %i.kp, i32 %2, 1, !dbg !187426
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8rotate_lCs1LHh8CLbVkQ_11polars_core.exit, !dbg !187426

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8rotate_lCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8single_lCs1LHh8CLbVkQ_11polars_core.exit.i, %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8double_lCs1LHh8CLbVkQ_11polars_core.exit.i, %bb.be
  %.merged = phi { i32, i32 } [ %i.kq, %bb.be ], [ %i.ko, %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8single_lCs1LHh8CLbVkQ_11polars_core.exit.i ], [ %i.gz, %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8double_lCs1LHh8CLbVkQ_11polars_core.exit.i ], !dbg !187426
  ret { i32, i32 } %.merged, !dbg !187426
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i32, i32 } @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E9balance_rCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !187427 !guid !187683 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 10 uses
  %i.b = alloca [40 x i8], align 16               ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 10 uses
  %i.f = alloca [40 x i8], align 8                ; 10 uses
  %i.g = alloca [40 x i8], align 8                ; 11 uses
  %i.h = alloca [40 x i8], align 16               ; 8 uses
  %i.i = alloca [40 x i8], align 16               ; 8 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 10 uses
  %i.n = alloca [40 x i8], align 8                ; 10 uses
  %i.o = alloca [40 x i8], align 8                ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !187723 ; 11 uses
  %i.q = load ptr, ptr %i.p, align 8, !dbg !187723, !nonnull !7548, !noundef !7548 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !187724 ; 11 uses
  %i.s = load i64, ptr %i.r, align 8, !dbg !187724, !noundef !7548 ; 6 uses
  %i.t = zext i32 %2 to i64, !dbg !187725         ; 2 uses
  %i.u = icmp ugt i64 %i.s, %i.t, !dbg !187726
  tail call void @llvm.assume(i1 %i.u), !dbg !187727
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.t, !dbg !187728 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12, !dbg !187729
  %i.x = load i32, ptr %i.w, align 4, !dbg !187729, !noundef !7548 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4, !dbg !187730
  %i.z = load i32, ptr %i.y, align 4, !dbg !187730, !noundef !7548 ; 3 uses
  %i.aa = icmp eq i32 %i.x, -1, !dbg !187731
  br i1 %i.aa, label %bb.c, label %bb.b, !dbg !187731

bb.b:                                             ; preds = %bb.a
  %i.ab = zext i32 %i.x to i64, !dbg !187732      ; 2 uses
  %i.ac = icmp ugt i64 %i.s, %i.ab, !dbg !187733
  tail call void @llvm.assume(i1 %i.ac), !dbg !187734
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.ab, !dbg !187735
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32, !dbg !187736
  %i.af = load i32, ptr %i.ae, align 8, !dbg !187736, !noundef !7548
  %i.ag = zext i32 %i.af to i64, !dbg !187736
  %i.ah = add nuw nsw i64 %i.ag, 1, !dbg !187737
  br label %bb.c, !dbg !187738

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.01.0.i = phi i64 [ %i.ah, %bb.b ], [ 1, %bb.a ], !dbg !187739 ; 2 uses
  %i.ai = icmp eq i32 %i.z, -1, !dbg !187740
  br i1 %i.ai, label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit, label %bb.d, !dbg !187740

bb.d:                                             ; preds = %bb.c
  %i.aj = zext i32 %i.z to i64, !dbg !187741      ; 2 uses
  %i.ak = icmp ugt i64 %i.s, %i.aj, !dbg !187742
  tail call void @llvm.assume(i1 %i.ak), !dbg !187743
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.aj, !dbg !187744
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32, !dbg !187745
  %i.an = load i32, ptr %i.am, align 8, !dbg !187745, !noundef !7548
  %i.ao = zext i32 %i.an to i64, !dbg !187745
  %i.ap = add nuw nsw i64 %i.ao, 1, !dbg !187746
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit, !dbg !187747

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.c, %bb.d
  %.sroa.03.0.i = phi i64 [ %i.ap, %bb.d ], [ 1, %bb.c ], !dbg !187748 ; 2 uses
  %i.aq = mul nuw nsw i64 %.sroa.01.0.i, 3, !dbg !187749
  %.not.i = icmp samesign uge i64 %i.aq, %.sroa.03.0.i, !dbg !187749
  %i.ar = mul nuw nsw i64 %.sroa.03.0.i, 3, !dbg !187749
  %i.as = icmp samesign uge i64 %i.ar, %.sroa.01.0.i, !dbg !187749
  %.sroa.0.0.i = select i1 %.not.i, i1 %i.as, i1 false, !dbg !187749
  br i1 %.sroa.0.0.i, label %bb.be, label %bb.e, !dbg !187750

bb.e:                                             ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187693), !dbg !187751
  %i.at = zext i32 %i.z to i64, !dbg !187752      ; 2 uses
  %i.au = icmp ugt i64 %i.s, %i.at, !dbg !187753
  tail call void @llvm.assume(i1 %i.au), !dbg !187754
  %i.av = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.at, !dbg !187755 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12, !dbg !187756
  %i.ax = load i32, ptr %i.aw, align 4, !dbg !187756, !noalias !187693, !noundef !7548 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 4, !dbg !187757
  %i.az = load i32, ptr %i.ay, align 4, !dbg !187757, !noalias !187693, !noundef !7548 ; 2 uses
  %i.ba = icmp eq i32 %i.ax, -1, !dbg !187758
  br i1 %i.ba, label %bb.g, label %bb.f, !dbg !187758

bb.f:                                             ; preds = %bb.e
  %i.bb = zext i32 %i.ax to i64, !dbg !187759     ; 2 uses
  %i.bc = icmp ugt i64 %i.s, %i.bb, !dbg !187760
  tail call void @llvm.assume(i1 %i.bc), !dbg !187761
  %i.bd = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.bb, !dbg !187762
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32, !dbg !187763
  %i.bf = load i32, ptr %i.be, align 8, !dbg !187763, !noundef !7548
  %i.bg = zext i32 %i.bf to i64, !dbg !187763
  %i.bh = add nuw nsw i64 %i.bg, 1, !dbg !187764
  br label %bb.g, !dbg !187765

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i = phi i64 [ %i.bh, %bb.f ], [ 1, %bb.e ], !dbg !187766
  %i.bi = icmp eq i32 %i.az, -1, !dbg !187767
  br i1 %i.bi, label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.h, !dbg !187767

bb.h:                                             ; preds = %bb.g
  %i.bj = zext i32 %i.az to i64, !dbg !187768     ; 2 uses
  %i.bk = icmp ugt i64 %i.s, %i.bj, !dbg !187769
  tail call void @llvm.assume(i1 %i.bk), !dbg !187770
  %i.bl = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.bj, !dbg !187771
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32, !dbg !187772
  %i.bn = load i32, ptr %i.bm, align 8, !dbg !187772, !noundef !7548
  %i.bo = zext i32 %i.bn to i64, !dbg !187772
  %i.bp = shl nuw nsw i64 %i.bo, 1, !dbg !187773
  %i.bq = add nuw nsw i64 %i.bp, 2, !dbg !187773
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !187774

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.h, %bb.g
  %.sroa.01.0.i.i = phi i64 [ %i.bq, %bb.h ], [ 2, %bb.g ], !dbg !187775
  %i.br = icmp samesign ult i64 %.sroa.0.0.i.i, %.sroa.01.0.i.i, !dbg !187764
  br i1 %i.br, label %bb.al, label %bb.i, !dbg !187776

bb.i:                                             ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187696), !dbg !187777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !187778, !noalias !187697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !187779, !noalias !187697
  call void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodeNtNtBR_7float164pf16EE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2), !dbg !187780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false), !dbg !187781, !noalias !187697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !187782, !noalias !187697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !187783, !noalias !187697
  %i.bs = load i32, ptr %i.o, align 8, !dbg !187784, !range !8720, !noalias !187697, !noundef !7548
  %i.bt = getelementptr inbounds nuw i8, ptr %i.o, i64 4, !dbg !187784
  %i.bu = load i32, ptr %i.bt, align 4, !dbg !187784, !noalias !187697, !noundef !7548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !187785, !noalias !187697
  invoke void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodeNtNtBR_7float164pf16EE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bs, i32 noundef %i.bu)
          to label %bb.j unwind label %.thread.i.i, !dbg !187786

.thread.i.i:                                      ; preds = %bb.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak, !dbg !187787

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false), !dbg !187788, !noalias !187697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !187789, !noalias !187697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !187790, !noalias !187697
  %i.bw = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !187791
  %i.bx = load i32, ptr %i.bw, align 8, !dbg !187791, !range !8720, !noalias !187697, !noundef !7548
  %i.by = getelementptr inbounds nuw i8, ptr %i.n, i64 12, !dbg !187791
  %i.bz = load i32, ptr %i.by, align 4, !dbg !187791, !noalias !187697, !noundef !7548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !187792, !noalias !187697
  invoke void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodeNtNtBR_7float164pf16EE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bx, i32 noundef %i.bz)
          to label %bb.k unwind label %.thread55.i.i, !dbg !187793

.thread55.i.i:                                    ; preds = %bb.j
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj, !dbg !187794

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !dbg !187795, !noalias !187697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !187796, !noalias !187697
  %i.cb = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !187797
  %i.cc = getelementptr inbounds nuw i8, ptr %i.m, i64 12, !dbg !187797
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !187798
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cd, align 8, !dbg !187798, !noalias !187697
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24, !dbg !187798 ; 2 uses
  %i.ce = load <2 x i32>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !187798, !noalias !187697
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !187798, !noalias !187697
  %i.cf = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !187799
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 12, !dbg !187799
  %3 = load <1 x i64>, ptr %i.cb, align 8, !dbg !187797, !noalias !187697
  %i.ch = load i32, ptr %i.cc, align 4, !dbg !187797, !noalias !187697, !noundef !7548 ; 2 uses
  %4 = load <1 x i64>, ptr %i.cf, align 8, !dbg !187799, !noalias !187697
  %i.ci = load i32, ptr %i.cg, align 4, !dbg !187799, !noalias !187697, !noundef !7548 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187700), !dbg !187800
  %i.cj = icmp eq i32 %i.ch, -1, !dbg !187801
  br i1 %i.cj, label %bb.l, label %bb.m, !dbg !187801

bb.l:                                             ; preds = %bb.k
  %i.ck = icmp eq i32 %i.ci, -1, !dbg !187802
  br i1 %i.ck, label %bb.r, label %bb.n, !dbg !187802

bb.m:                                             ; preds = %bb.k
  %i.cl = load ptr, ptr %i.p, align 8, !dbg !187803, !alias.scope !187701, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.cm = load i64, ptr %i.r, align 8, !dbg !187804, !alias.scope !187701, !noundef !7548 ; 2 uses
  %i.cn = zext i32 %i.ch to i64, !dbg !187805     ; 2 uses
  %i.co = icmp ugt i64 %i.cm, %i.cn, !dbg !187806
  tail call void @llvm.assume(i1 %i.co), !dbg !187807
  %i.cp = getelementptr inbounds nuw [48 x i8], ptr %i.cl, i64 %i.cn, !dbg !187808 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32, !dbg !187809
  %i.cr = load i32, ptr %i.cq, align 8, !dbg !187809, !noalias !187702, !noundef !7548 ; 2 uses
  %i.cs = icmp eq i32 %i.ci, -1, !dbg !187802
  br i1 %i.cs, label %bb.p, label %bb.q, !dbg !187802

bb.n:                                             ; preds = %bb.l
  %i.ct = load ptr, ptr %i.p, align 8, !dbg !187810, !alias.scope !187701, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.cu = load i64, ptr %i.r, align 8, !dbg !187811, !alias.scope !187701, !noundef !7548
  %i.cv = zext i32 %i.ci to i64, !dbg !187812     ; 3 uses
  %i.cw = icmp ugt i64 %i.cu, %i.cv, !dbg !187813
  tail call void @llvm.assume(i1 %i.cw), !dbg !187814
  %i.cx = getelementptr inbounds nuw [48 x i8], ptr %i.ct, i64 %i.cv, !dbg !187815
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32, !dbg !187816
  %i.cz = load i32, ptr %i.cy, align 8, !dbg !187816, !noalias !187702, !noundef !7548
  br label %bb.o, !dbg !187817

bb.o:                                             ; preds = %bb.q, %bb.n
  %.pre-phi.i.i.i = phi i64 [ %i.dh, %bb.q ], [ %i.cv, %bb.n ], !dbg !187818
  %i.da = phi ptr [ %i.cl, %bb.q ], [ %i.ct, %bb.n ], !dbg !187819
  %.sroa.013.1.i.i.i = phi i32 [ %i.do, %bb.q ], [ 0, %bb.n ], !dbg !187820
  %.sroa.0.1.in.i.i.i = phi i32 [ %i.dm, %bb.q ], [ %i.cz, %bb.n ]
  %.sroa.0.1.i.i.i = add i32 %.sroa.0.1.in.i.i.i, 1, !dbg !187821
  %i.db = getelementptr inbounds nuw [48 x i8], ptr %i.da, i64 %.pre-phi.i.i.i, !dbg !187822
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 36, !dbg !187823
  %i.dd = load i32, ptr %i.dc, align 4, !dbg !187823, !noalias !187702, !noundef !7548
  br label %bb.r, !dbg !187824

bb.p:                                             ; preds = %bb.m
  %i.de = add i32 %i.cr, 1, !dbg !187821
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 36, !dbg !187825
  %i.dg = load i32, ptr %i.df, align 4, !dbg !187825, !noalias !187702, !noundef !7548
  br label %bb.r, !dbg !187817

bb.q:                                             ; preds = %bb.m
  %i.dh = zext i32 %i.ci to i64, !dbg !187812     ; 3 uses
  %i.di = icmp ugt i64 %i.cm, %i.dh, !dbg !187813
  tail call void @llvm.assume(i1 %i.di), !dbg !187814
  %i.dj = getelementptr inbounds nuw [48 x i8], ptr %i.cl, i64 %i.dh, !dbg !187815
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32, !dbg !187816
  %i.dl = load i32, ptr %i.dk, align 8, !dbg !187816, !noalias !187702, !noundef !7548
  %i.dm = add i32 %i.dl, %i.cr, !dbg !187821
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cp, i64 36, !dbg !187825
  %i.do = load i32, ptr %i.dn, align 4, !dbg !187825, !noalias !187702, !noundef !7548
  br label %bb.o, !dbg !187817

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.l
  %.sroa.014.0.i.i.i = phi i32 [ %i.dd, %bb.o ], [ 0, %bb.l ], [ 0, %bb.p ], !dbg !187826
  %.sroa.013.2.i.i.i = phi i32 [ %.sroa.013.1.i.i.i, %bb.o ], [ 0, %bb.l ], [ %i.dg, %bb.p ], !dbg !187827
  %.sroa.0.2.i.i.i = phi i32 [ %.sroa.0.1.i.i.i, %bb.o ], [ 1, %bb.l ], [ %i.de, %bb.p ], !dbg !187821
  %i.dp = add i32 %.sroa.014.0.i.i.i, %.sroa.4.0.copyload.i.i, !dbg !187828
  %i.dq = add i32 %i.dp, %.sroa.013.2.i.i.i, !dbg !187828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !187829, !noalias !187703
  %5 = shufflevector <1 x i64> %3, <1 x i64> %4, <2 x i32> <i32 0, i32 1>, !dbg !187829
  store <2 x i64> %5, ptr %i.i, align 16, !dbg !187829, !noalias !187703
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !187829
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 16, !dbg !187829, !noalias !187701
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !187829
  store <2 x i32> %i.ce, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i.i, align 8, !dbg !187829, !noalias !187701
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !187829
  store i32 %.sroa.0.2.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 16, !dbg !187829, !noalias !187703
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 36, !dbg !187829
  store i32 %i.dq, ptr %.sroa.7.0..sroa_idx.i.i.i, align 4, !dbg !187829, !noalias !187703
  %i.dr = invoke { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodeNtNtBS_7float164pf16EE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.i)
          to label %bb.s unwind label %bb.ah, !dbg !187830 ; 2 uses

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !187831, !noalias !187703
  %i.ds = getelementptr inbounds nuw i8, ptr %i.n, i64 4, !dbg !187832
  %i.dt = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !187833
  %.sroa.039.0.copyload.i.i = load i64, ptr %i.dt, align 8, !dbg !187833, !noalias !187697
  %.sroa.441.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !187833 ; 2 uses
  %i.du = load <2 x i32>, ptr %.sroa.441.0..sroa_idx.i.i, align 8, !dbg !187833, !noalias !187697
  %.sroa.441.0.copyload.i.i = load i32, ptr %.sroa.441.0..sroa_idx.i.i, align 8, !dbg !187833, !noalias !187697
  %i.dv = getelementptr inbounds nuw i8, ptr %i.m, i64 4, !dbg !187834
  %6 = load <1 x i64>, ptr %i.n, align 8, !dbg !187832, !noalias !187697
  %i.dw = load i32, ptr %i.ds, align 4, !dbg !187832, !noalias !187697, !noundef !7548 ; 2 uses
  %7 = load <1 x i64>, ptr %i.m, align 8, !dbg !187834, !noalias !187697
  %i.dx = load i32, ptr %i.dv, align 4, !dbg !187834, !noalias !187697, !noundef !7548 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !187704), !dbg !187835
  %i.dy = icmp eq i32 %i.dw, -1, !dbg !187836
  br i1 %i.dy, label %bb.t, label %bb.u, !dbg !187836

bb.t:                                             ; preds = %bb.s
  %i.dz = icmp eq i32 %i.dx, -1, !dbg !187837
  br i1 %i.dz, label %bb.z, label %bb.v, !dbg !187837

bb.u:                                             ; preds = %bb.s
  %i.ea = load ptr, ptr %i.p, align 8, !dbg !187838, !alias.scope !187705, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.eb = load i64, ptr %i.r, align 8, !dbg !187839, !alias.scope !187705, !noundef !7548 ; 2 uses
  %i.ec = zext i32 %i.dw to i64, !dbg !187840     ; 2 uses
  %i.ed = icmp ugt i64 %i.eb, %i.ec, !dbg !187841
  call void @llvm.assume(i1 %i.ed), !dbg !187842
  %i.ee = getelementptr inbounds nuw [48 x i8], ptr %i.ea, i64 %i.ec, !dbg !187843 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32, !dbg !187844
  %i.eg = load i32, ptr %i.ef, align 8, !dbg !187844, !noalias !187706, !noundef !7548 ; 2 uses
  %i.eh = icmp eq i32 %i.dx, -1, !dbg !187837
  br i1 %i.eh, label %bb.x, label %bb.y, !dbg !187837

bb.v:                                             ; preds = %bb.t
  %i.ei = load ptr, ptr %i.p, align 8, !dbg !187845, !alias.scope !187705, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.ej = load i64, ptr %i.r, align 8, !dbg !187846, !alias.scope !187705, !noundef !7548
  %i.ek = zext i32 %i.dx to i64, !dbg !187847     ; 3 uses
  %i.el = icmp ugt i64 %i.ej, %i.ek, !dbg !187848
  call void @llvm.assume(i1 %i.el), !dbg !187849
  %i.em = getelementptr inbounds nuw [48 x i8], ptr %i.ei, i64 %i.ek, !dbg !187850
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32, !dbg !187851
  %i.eo = load i32, ptr %i.en, align 8, !dbg !187851, !noalias !187706, !noundef !7548
  br label %bb.w, !dbg !187852

bb.w:                                             ; preds = %bb.y, %bb.v
  %.pre-phi.i6.i.i = phi i64 [ %i.ew, %bb.y ], [ %i.ek, %bb.v ], !dbg !187853
  %i.ep = phi ptr [ %i.ea, %bb.y ], [ %i.ei, %bb.v ], !dbg !187854
  %.sroa.013.1.i7.i.i = phi i32 [ %i.fd, %bb.y ], [ 0, %bb.v ], !dbg !187855
  %.sroa.0.1.in.i8.i.i = phi i32 [ %i.fb, %bb.y ], [ %i.eo, %bb.v ]
  %.sroa.0.1.i9.i.i = add i32 %.sroa.0.1.in.i8.i.i, 1, !dbg !187856
  %i.eq = getelementptr inbounds nuw [48 x i8], ptr %i.ep, i64 %.pre-phi.i6.i.i, !dbg !187857
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 36, !dbg !187858
  %i.es = load i32, ptr %i.er, align 4, !dbg !187858, !noalias !187706, !noundef !7548
  br label %bb.z, !dbg !187859

bb.x:                                             ; preds = %bb.u
  %i.et = add i32 %i.eg, 1, !dbg !187856
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ee, i64 36, !dbg !187860
  %i.ev = load i32, ptr %i.eu, align 4, !dbg !187860, !noalias !187706, !noundef !7548
  br label %bb.z, !dbg !187852

bb.y:                                             ; preds = %bb.u
  %i.ew = zext i32 %i.dx to i64, !dbg !187847     ; 3 uses
  %i.ex = icmp ugt i64 %i.eb, %i.ew, !dbg !187848
  call void @llvm.assume(i1 %i.ex), !dbg !187849
  %i.ey = getelementptr inbounds nuw [48 x i8], ptr %i.ea, i64 %i.ew, !dbg !187850
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32, !dbg !187851
  %i.fa = load i32, ptr %i.ez, align 8, !dbg !187851, !noalias !187706, !noundef !7548
  %i.fb = add i32 %i.fa, %i.eg, !dbg !187856
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ee, i64 36, !dbg !187860
  %i.fd = load i32, ptr %i.fc, align 4, !dbg !187860, !noalias !187706, !noundef !7548
  br label %bb.w, !dbg !187852

bb.z:                                             ; preds = %bb.x, %bb.w, %bb.t
  %.sroa.014.0.i10.i.i = phi i32 [ %i.es, %bb.w ], [ 0, %bb.t ], [ 0, %bb.x ], !dbg !187861
  %.sroa.013.2.i11.i.i = phi i32 [ %.sroa.013.1.i7.i.i, %bb.w ], [ 0, %bb.t ], [ %i.ev, %bb.x ], !dbg !187862
  %.sroa.0.2.i12.i.i = phi i32 [ %.sroa.0.1.i9.i.i, %bb.w ], [ 1, %bb.t ], [ %i.et, %bb.x ], !dbg !187856
  %i.fe = add i32 %.sroa.014.0.i10.i.i, %.sroa.441.0.copyload.i.i, !dbg !187863
  %i.ff = add i32 %i.fe, %.sroa.013.2.i11.i.i, !dbg !187863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !187864, !noalias !187707
  %8 = shufflevector <1 x i64> %6, <1 x i64> %7, <2 x i32> <i32 0, i32 1>, !dbg !187864
  store <2 x i64> %8, ptr %i.h, align 16, !dbg !187864, !noalias !187707
  %.sroa.5.0..sroa_idx.i16.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !187864
  store i64 %.sroa.039.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i16.i.i, align 16, !dbg !187864, !noalias !187705
  %.sroa.441.0..sroa.5.0..sroa_idx.i16.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !187864
  store <2 x i32> %i.du, ptr %.sroa.441.0..sroa.5.0..sroa_idx.i16.sroa_idx.i.i, align 8, !dbg !187864, !noalias !187705
  %.sroa.6.0..sroa_idx.i17.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !187864
  store i32 %.sroa.0.2.i12.i.i, ptr %.sroa.6.0..sroa_idx.i17.i.i, align 16, !dbg !187864, !noalias !187707
  %.sroa.7.0..sroa_idx.i18.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36, !dbg !187864
  store i32 %i.ff, ptr %.sroa.7.0..sroa_idx.i18.i.i, align 4, !dbg !187864, !noalias !187707
  %i.fg = invoke { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodeNtNtBS_7float164pf16EE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.h)
          to label %bb.aa unwind label %bb.ah, !dbg !187865 ; 2 uses

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !187866, !noalias !187707
  %i.fh = extractvalue { i32, i32 } %i.dr, 1, !dbg !187867 ; 5 uses
  %i.fi = extractvalue { i32, i32 } %i.fg, 1, !dbg !187868 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !187869
  %.sroa.045.0.copyload.i.i = load i64, ptr %i.fj, align 8, !dbg !187869, !noalias !187697
  %.sroa.447.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !187869 ; 2 uses
  %i.fk = load <2 x i32>, ptr %.sroa.447.0..sroa_idx.i.i, align 8, !dbg !187869, !noalias !187697
  %.sroa.447.0.copyload.i.i = load i32, ptr %.sroa.447.0..sroa_idx.i.i, align 8, !dbg !187869, !noalias !187697
  call void @llvm.experimental.noalias.scope.decl(metadata !187708), !dbg !187870
  %i.fl = icmp eq i32 %i.fi, -1, !dbg !187871
  br i1 %i.fl, label %bb.ab, label %bb.ac, !dbg !187871

bb.ab:                                            ; preds = %bb.aa
  %i.fm = icmp eq i32 %i.fh, -1, !dbg !187872
  br i1 %i.fm, label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8double_rCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.ad, !dbg !187872

bb.ac:                                            ; preds = %bb.aa
  %i.fn = load ptr, ptr %i.p, align 8, !dbg !187873, !alias.scope !187709, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.fo = load i64, ptr %i.r, align 8, !dbg !187874, !alias.scope !187709, !noundef !7548 ; 2 uses
  %i.fp = zext i32 %i.fi to i64, !dbg !187875     ; 2 uses
  %i.fq = icmp ugt i64 %i.fo, %i.fp, !dbg !187876
  call void @llvm.assume(i1 %i.fq), !dbg !187877
  %i.fr = getelementptr inbounds nuw [48 x i8], ptr %i.fn, i64 %i.fp, !dbg !187878 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 32, !dbg !187879
  %i.ft = load i32, ptr %i.fs, align 8, !dbg !187879, !noalias !187710, !noundef !7548 ; 2 uses
  %i.fu = icmp eq i32 %i.fh, -1, !dbg !187872
  br i1 %i.fu, label %bb.af, label %bb.ag, !dbg !187872

bb.ad:                                            ; preds = %bb.ab
  %i.fv = load ptr, ptr %i.p, align 8, !dbg !187880, !alias.scope !187709, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.fw = load i64, ptr %i.r, align 8, !dbg !187881, !alias.scope !187709, !noundef !7548
  %i.fx = zext i32 %i.fh to i64, !dbg !187882     ; 3 uses
  %i.fy = icmp ugt i64 %i.fw, %i.fx, !dbg !187883
  call void @llvm.assume(i1 %i.fy), !dbg !187884
  %i.fz = getelementptr inbounds nuw [48 x i8], ptr %i.fv, i64 %i.fx, !dbg !187885
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 32, !dbg !187886
  %i.gb = load i32, ptr %i.ga, align 8, !dbg !187886, !noalias !187710, !noundef !7548
  br label %bb.ae, !dbg !187887

bb.ae:                                            ; preds = %bb.ag, %bb.ad
  %.pre-phi.i20.i.i = phi i64 [ %i.gj, %bb.ag ], [ %i.fx, %bb.ad ], !dbg !187888
  %i.gc = phi ptr [ %i.fn, %bb.ag ], [ %i.fv, %bb.ad ], !dbg !187889
  %.sroa.013.1.i21.i.i = phi i32 [ %i.gq, %bb.ag ], [ 0, %bb.ad ], !dbg !187890
  %.sroa.0.1.in.i22.i.i = phi i32 [ %i.go, %bb.ag ], [ %i.gb, %bb.ad ]
  %.sroa.0.1.i23.i.i = add i32 %.sroa.0.1.in.i22.i.i, 1, !dbg !187891
  %i.gd = getelementptr inbounds nuw [48 x i8], ptr %i.gc, i64 %.pre-phi.i20.i.i, !dbg !187892
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 36, !dbg !187893
  %i.gf = load i32, ptr %i.ge, align 4, !dbg !187893, !noalias !187710, !noundef !7548
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8double_rCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !187894

bb.af:                                            ; preds = %bb.ac
  %i.gg = add i32 %i.ft, 1, !dbg !187891
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fr, i64 36, !dbg !187895
  %i.gi = load i32, ptr %i.gh, align 4, !dbg !187895, !noalias !187710, !noundef !7548
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8double_rCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !187887

bb.ag:                                            ; preds = %bb.ac
  %i.gj = zext i32 %i.fh to i64, !dbg !187882     ; 3 uses
  %i.gk = icmp ugt i64 %i.fo, %i.gj, !dbg !187883
  call void @llvm.assume(i1 %i.gk), !dbg !187884
  %i.gl = getelementptr inbounds nuw [48 x i8], ptr %i.fn, i64 %i.gj, !dbg !187885
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 32, !dbg !187886
  %i.gn = load i32, ptr %i.gm, align 8, !dbg !187886, !noalias !187710, !noundef !7548
  %i.go = add i32 %i.gn, %i.ft, !dbg !187891
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fr, i64 36, !dbg !187895
  %i.gq = load i32, ptr %i.gp, align 4, !dbg !187895, !noalias !187710, !noundef !7548
  br label %bb.ae, !dbg !187887

bb.ah:                                            ; preds = %bb.z, %bb.r
  %.sroa.01.1.ph.i.i = phi i1 [ true, %bb.r ], [ false, %bb.z ]
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !187896
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_7float164pf16ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gr)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecNtNtBL_7float164pf16EECs1LHh8CLbVkQ_11polars_core.exit.i.i unwind label %bb.ai, !dbg !187897

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecNtNtBL_7float164pf16EECs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %bb.ah
  br i1 %.sroa.01.1.ph.i.i, label %bb.aj, label %common.resume.i, !dbg !187794

bb.ai:                                            ; preds = %bb.ak, %bb.aj, %bb.ah
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #48, !dbg !187898
  unreachable, !dbg !187898

bb.aj:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecNtNtBL_7float164pf16EECs1LHh8CLbVkQ_11polars_core.exit.i.i, %.thread55.i.i
  %.sroa.02.160.i.i = phi i1 [ true, %.thread55.i.i ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecNtNtBL_7float164pf16EECs1LHh8CLbVkQ_11polars_core.exit.i.i ]
  %.pn59.i.i = phi { ptr, i32 } [ %i.ca, %.thread55.i.i ], [ %lpad.thr_comm.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecNtNtBL_7float164pf16EECs1LHh8CLbVkQ_11polars_core.exit.i.i ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !187794
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_7float164pf16ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gt)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecNtNtBL_7float164pf16EECs1LHh8CLbVkQ_11polars_core.exit34.i.i unwind label %bb.ai, !dbg !187899

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecNtNtBL_7float164pf16EECs1LHh8CLbVkQ_11polars_core.exit34.i.i: ; preds = %bb.aj
  br i1 %.sroa.02.160.i.i, label %bb.ak, label %common.resume.i, !dbg !187787

common.resume.i:                                  ; preds = %bb.bd, %bb.bb, %bb.ak, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecNtNtBL_7float164pf16EECs1LHh8CLbVkQ_11polars_core.exit34.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecNtNtBL_7float164pf16EECs1LHh8CLbVkQ_11polars_core.exit.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecNtNtBL_7float164pf16EECs1LHh8CLbVkQ_11polars_core.exit.i.i ], [ %.pn59.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecNtNtBL_7float164pf16EECs1LHh8CLbVkQ_11polars_core.exit34.i.i ], [ %.pn.pn54.i.i, %bb.ak ], [ %i.kj, %bb.bd ], [ %i.kg, %bb.bb ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !187900

bb.ak:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecNtNtBL_7float164pf16EECs1LHh8CLbVkQ_11polars_core.exit34.i.i, %.thread.i.i
  %.pn.pn54.i.i = phi { ptr, i32 } [ %i.bv, %.thread.i.i ], [ %.pn59.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecNtNtBL_7float164pf16EECs1LHh8CLbVkQ_11polars_core.exit34.i.i ]
  %i.gu = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !187787
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_7float164pf16ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gu)
          to label %common.resume.i unwind label %bb.ai, !dbg !187901

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8double_rCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.af, %bb.ae, %bb.ab
  %.sroa.014.0.i24.i.i = phi i32 [ %i.gf, %bb.ae ], [ 0, %bb.ab ], [ 0, %bb.af ], !dbg !187902
  %.sroa.013.2.i25.i.i = phi i32 [ %.sroa.013.1.i21.i.i, %bb.ae ], [ 0, %bb.ab ], [ %i.gi, %bb.af ], !dbg !187903
  %.sroa.0.2.i26.i.i = phi i32 [ %.sroa.0.1.i23.i.i, %bb.ae ], [ 1, %bb.ab ], [ %i.gg, %bb.af ], !dbg !187891
  %i.gv = extractvalue { i32, i32 } %i.fg, 0, !dbg !187868
  %i.gw = extractvalue { i32, i32 } %i.dr, 0, !dbg !187867
  %i.gx = add i32 %.sroa.014.0.i24.i.i, %.sroa.447.0.copyload.i.i, !dbg !187904
  %i.gy = add i32 %i.gx, %.sroa.013.2.i25.i.i, !dbg !187904
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !187905, !noalias !187711
  store i32 %i.gv, ptr %i.g, align 8, !dbg !187905, !noalias !187711
  %.sroa.2.0..sroa_idx.i27.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4, !dbg !187905
  store i32 %i.fi, ptr %.sroa.2.0..sroa_idx.i27.i.i, align 4, !dbg !187905, !noalias !187711
  %.sroa.3.0..sroa_idx.i28.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !187905
  store i32 %i.gw, ptr %.sroa.3.0..sroa_idx.i28.i.i, align 8, !dbg !187905, !noalias !187711
  %.sroa.4.0..sroa_idx.i29.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12, !dbg !187905
  store i32 %i.fh, ptr %.sroa.4.0..sroa_idx.i29.i.i, align 4, !dbg !187905, !noalias !187711
  %.sroa.5.0..sroa_idx.i30.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !187905
  store i64 %.sroa.045.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i30.i.i, align 8, !dbg !187905, !noalias !187709
  %.sroa.447.0..sroa.5.0..sroa_idx.i30.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !187905
  store <2 x i32> %i.fk, ptr %.sroa.447.0..sroa.5.0..sroa_idx.i30.sroa_idx.i.i, align 8, !dbg !187905, !noalias !187709
  %.sroa.6.0..sroa_idx.i31.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !187905
  store i32 %.sroa.0.2.i26.i.i, ptr %.sroa.6.0..sroa_idx.i31.i.i, align 8, !dbg !187905, !noalias !187711
  %.sroa.7.0..sroa_idx.i32.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 36, !dbg !187905
  store i32 %i.gy, ptr %.sroa.7.0..sroa_idx.i32.i.i, align 4, !dbg !187905, !noalias !187711
  %i.gz = call { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodeNtNtBS_7float164pf16EE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.g), !dbg !187906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !187907, !noalias !187711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !187896, !noalias !187697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !187794, !noalias !187697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !187787, !noalias !187697
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8rotate_rCs1LHh8CLbVkQ_11polars_core.exit, !dbg !187777

bb.al:                                            ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187712), !dbg !187908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !187909, !noalias !187713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !187910, !noalias !187713
  call void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodeNtNtBR_7float164pf16EE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2), !dbg !187911
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !dbg !187912, !noalias !187713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !187913, !noalias !187713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !187914, !noalias !187713
  %i.ha = load i32, ptr %i.f, align 8, !dbg !187915, !range !8720, !noalias !187713, !noundef !7548
  %i.hb = getelementptr inbounds nuw i8, ptr %i.f, i64 4, !dbg !187915
  %i.hc = load i32, ptr %i.hb, align 4, !dbg !187915, !noalias !187713, !noundef !7548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !187916, !noalias !187713
  invoke void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodeNtNtBR_7float164pf16EE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.ha, i32 noundef %i.hc)
          to label %bb.am unwind label %bb.bd, !dbg !187917

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !dbg !187918, !noalias !187713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !187919, !noalias !187713
  %i.hd = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !187920
  %i.he = getelementptr inbounds nuw i8, ptr %i.e, i64 12, !dbg !187920
  %i.hf = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !187921
  %.sroa.0.0.copyload.i3.i = load i64, ptr %i.hf, align 8, !dbg !187921, !noalias !187713
  %.sroa.4.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !187921 ; 2 uses
  %i.hg = load <2 x i32>, ptr %.sroa.4.0..sroa_idx.i4.i, align 8, !dbg !187921, !noalias !187713
  %.sroa.4.0.copyload.i5.i = load i32, ptr %.sroa.4.0..sroa_idx.i4.i, align 8, !dbg !187921, !noalias !187713
  %i.hh = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !187922
  %i.hi = getelementptr inbounds nuw i8, ptr %i.f, i64 12, !dbg !187922
  %9 = load <1 x i64>, ptr %i.hd, align 8, !dbg !187920, !noalias !187713
  %i.hj = load i32, ptr %i.he, align 4, !dbg !187920, !noalias !187713, !noundef !7548 ; 2 uses
  %10 = load <1 x i64>, ptr %i.hh, align 8, !dbg !187922, !noalias !187713
  %i.hk = load i32, ptr %i.hi, align 4, !dbg !187922, !noalias !187713, !noundef !7548 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187715), !dbg !187923
  %i.hl = icmp eq i32 %i.hj, -1, !dbg !187924
  br i1 %i.hl, label %bb.an, label %bb.ao, !dbg !187924

bb.an:                                            ; preds = %bb.am
  %i.hm = icmp eq i32 %i.hk, -1, !dbg !187925
  br i1 %i.hm, label %bb.at, label %bb.ap, !dbg !187925

bb.ao:                                            ; preds = %bb.am
  %i.hn = load ptr, ptr %i.p, align 8, !dbg !187926, !alias.scope !187716, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.ho = load i64, ptr %i.r, align 8, !dbg !187927, !alias.scope !187716, !noundef !7548 ; 2 uses
  %i.hp = zext i32 %i.hj to i64, !dbg !187928     ; 2 uses
  %i.hq = icmp ugt i64 %i.ho, %i.hp, !dbg !187929
  tail call void @llvm.assume(i1 %i.hq), !dbg !187930
  %i.hr = getelementptr inbounds nuw [48 x i8], ptr %i.hn, i64 %i.hp, !dbg !187931 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 32, !dbg !187932
  %i.ht = load i32, ptr %i.hs, align 8, !dbg !187932, !noalias !187717, !noundef !7548 ; 2 uses
  %i.hu = icmp eq i32 %i.hk, -1, !dbg !187925
  br i1 %i.hu, label %bb.ar, label %bb.as, !dbg !187925

bb.ap:                                            ; preds = %bb.an
  %i.hv = load ptr, ptr %i.p, align 8, !dbg !187933, !alias.scope !187716, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.hw = load i64, ptr %i.r, align 8, !dbg !187934, !alias.scope !187716, !noundef !7548
  %i.hx = zext i32 %i.hk to i64, !dbg !187935     ; 3 uses
  %i.hy = icmp ugt i64 %i.hw, %i.hx, !dbg !187936
  tail call void @llvm.assume(i1 %i.hy), !dbg !187937
  %i.hz = getelementptr inbounds nuw [48 x i8], ptr %i.hv, i64 %i.hx, !dbg !187938
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 32, !dbg !187939
  %i.ib = load i32, ptr %i.ia, align 8, !dbg !187939, !noalias !187717, !noundef !7548
  br label %bb.aq, !dbg !187940

bb.aq:                                            ; preds = %bb.as, %bb.ap
  %.pre-phi.i.i8.i = phi i64 [ %i.ij, %bb.as ], [ %i.hx, %bb.ap ], !dbg !187941
  %i.ic = phi ptr [ %i.hn, %bb.as ], [ %i.hv, %bb.ap ], !dbg !187942
  %.sroa.013.1.i.i9.i = phi i32 [ %i.iq, %bb.as ], [ 0, %bb.ap ], !dbg !187943
  %.sroa.0.1.in.i.i10.i = phi i32 [ %i.io, %bb.as ], [ %i.ib, %bb.ap ]
  %.sroa.0.1.i.i11.i = add i32 %.sroa.0.1.in.i.i10.i, 1, !dbg !187944
  %i.id = getelementptr inbounds nuw [48 x i8], ptr %i.ic, i64 %.pre-phi.i.i8.i, !dbg !187945
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 36, !dbg !187946
  %i.if = load i32, ptr %i.ie, align 4, !dbg !187946, !noalias !187717, !noundef !7548
  br label %bb.at, !dbg !187947

bb.ar:                                            ; preds = %bb.ao
  %i.ig = add i32 %i.ht, 1, !dbg !187944
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hr, i64 36, !dbg !187948
  %i.ii = load i32, ptr %i.ih, align 4, !dbg !187948, !noalias !187717, !noundef !7548
  br label %bb.at, !dbg !187940

bb.as:                                            ; preds = %bb.ao
  %i.ij = zext i32 %i.hk to i64, !dbg !187935     ; 3 uses
  %i.ik = icmp ugt i64 %i.ho, %i.ij, !dbg !187936
  tail call void @llvm.assume(i1 %i.ik), !dbg !187937
  %i.il = getelementptr inbounds nuw [48 x i8], ptr %i.hn, i64 %i.ij, !dbg !187938
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 32, !dbg !187939
  %i.in = load i32, ptr %i.im, align 8, !dbg !187939, !noalias !187717, !noundef !7548
  %i.io = add i32 %i.in, %i.ht, !dbg !187944
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hr, i64 36, !dbg !187948
  %i.iq = load i32, ptr %i.ip, align 4, !dbg !187948, !noalias !187717, !noundef !7548
  br label %bb.aq, !dbg !187940

bb.at:                                            ; preds = %bb.ar, %bb.aq, %bb.an
  %.sroa.014.0.i.i12.i = phi i32 [ %i.if, %bb.aq ], [ 0, %bb.an ], [ 0, %bb.ar ], !dbg !187949
  %.sroa.013.2.i.i13.i = phi i32 [ %.sroa.013.1.i.i9.i, %bb.aq ], [ 0, %bb.an ], [ %i.ii, %bb.ar ], !dbg !187950
  %.sroa.0.2.i.i14.i = phi i32 [ %.sroa.0.1.i.i11.i, %bb.aq ], [ 1, %bb.an ], [ %i.ig, %bb.ar ], !dbg !187944
  %i.ir = add i32 %.sroa.014.0.i.i12.i, %.sroa.4.0.copyload.i5.i, !dbg !187951
  %i.is = add i32 %i.ir, %.sroa.013.2.i.i13.i, !dbg !187951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !187952, !noalias !187718
  %11 = shufflevector <1 x i64> %9, <1 x i64> %10, <2 x i32> <i32 0, i32 1>, !dbg !187952
  store <2 x i64> %11, ptr %i.b, align 16, !dbg !187952, !noalias !187718
  %.sroa.5.0..sroa_idx.i.i18.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !187952
  store i64 %.sroa.0.0.copyload.i3.i, ptr %.sroa.5.0..sroa_idx.i.i18.i, align 16, !dbg !187952, !noalias !187716
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !187952
  store <2 x i32> %i.hg, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i19.i, align 8, !dbg !187952, !noalias !187716
  %.sroa.6.0..sroa_idx.i.i21.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !187952
  store i32 %.sroa.0.2.i.i14.i, ptr %.sroa.6.0..sroa_idx.i.i21.i, align 16, !dbg !187952, !noalias !187718
  %.sroa.7.0..sroa_idx.i.i22.i = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !187952
  store i32 %i.is, ptr %.sroa.7.0..sroa_idx.i.i22.i, align 4, !dbg !187952, !noalias !187718
  %i.it = invoke { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodeNtNtBS_7float164pf16EE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.au unwind label %bb.bb, !dbg !187953 ; 2 uses

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !187954, !noalias !187718
  %i.iu = extractvalue { i32, i32 } %i.it, 1, !dbg !187955 ; 5 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.e, i64 4, !dbg !187956
  %i.iw = load i32, ptr %i.iv, align 4, !dbg !187956, !noalias !187713, !noundef !7548 ; 2 uses
  %i.ix = load <2 x i32>, ptr %i.e, align 8, !dbg !187956, !noalias !187713
  %i.iy = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !187957
  %.sroa.022.0.copyload.i.i = load i64, ptr %i.iy, align 8, !dbg !187957, !noalias !187713
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !187957 ; 2 uses
  %i.iz = load <2 x i32>, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !dbg !187957, !noalias !187713
  %.sroa.424.0.copyload.i.i = load i32, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !dbg !187957, !noalias !187713
  call void @llvm.experimental.noalias.scope.decl(metadata !187719), !dbg !187958
  %i.ja = icmp eq i32 %i.iw, -1, !dbg !187959
  br i1 %i.ja, label %bb.av, label %bb.aw, !dbg !187959

bb.av:                                            ; preds = %bb.au
  %i.jb = icmp eq i32 %i.iu, -1, !dbg !187960
  br i1 %i.jb, label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8single_rCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.ax, !dbg !187960

bb.aw:                                            ; preds = %bb.au
  %i.jc = load ptr, ptr %i.p, align 8, !dbg !187961, !alias.scope !187720, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.jd = load i64, ptr %i.r, align 8, !dbg !187962, !alias.scope !187720, !noundef !7548 ; 2 uses
  %i.je = zext i32 %i.iw to i64, !dbg !187963     ; 2 uses
  %i.jf = icmp ugt i64 %i.jd, %i.je, !dbg !187964
  call void @llvm.assume(i1 %i.jf), !dbg !187965
  %i.jg = getelementptr inbounds nuw [48 x i8], ptr %i.jc, i64 %i.je, !dbg !187966 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 32, !dbg !187967
  %i.ji = load i32, ptr %i.jh, align 8, !dbg !187967, !noalias !187721, !noundef !7548 ; 2 uses
  %i.jj = icmp eq i32 %i.iu, -1, !dbg !187960
  br i1 %i.jj, label %bb.az, label %bb.ba, !dbg !187960

bb.ax:                                            ; preds = %bb.av
  %i.jk = load ptr, ptr %i.p, align 8, !dbg !187968, !alias.scope !187720, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.jl = load i64, ptr %i.r, align 8, !dbg !187969, !alias.scope !187720, !noundef !7548
  %i.jm = zext i32 %i.iu to i64, !dbg !187970     ; 3 uses
  %i.jn = icmp ugt i64 %i.jl, %i.jm, !dbg !187971
  call void @llvm.assume(i1 %i.jn), !dbg !187972
  %i.jo = getelementptr inbounds nuw [48 x i8], ptr %i.jk, i64 %i.jm, !dbg !187973
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 32, !dbg !187974
  %i.jq = load i32, ptr %i.jp, align 8, !dbg !187974, !noalias !187721, !noundef !7548
  br label %bb.ay, !dbg !187975

bb.ay:                                            ; preds = %bb.ba, %bb.ax
  %.pre-phi.i4.i.i = phi i64 [ %i.jy, %bb.ba ], [ %i.jm, %bb.ax ], !dbg !187976
  %i.jr = phi ptr [ %i.jc, %bb.ba ], [ %i.jk, %bb.ax ], !dbg !187977
  %.sroa.013.1.i5.i.i = phi i32 [ %i.kf, %bb.ba ], [ 0, %bb.ax ], !dbg !187978
  %.sroa.0.1.in.i6.i.i = phi i32 [ %i.kd, %bb.ba ], [ %i.jq, %bb.ax ]
  %.sroa.0.1.i7.i.i = add i32 %.sroa.0.1.in.i6.i.i, 1, !dbg !187979
  %i.js = getelementptr inbounds nuw [48 x i8], ptr %i.jr, i64 %.pre-phi.i4.i.i, !dbg !187980
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 36, !dbg !187981
  %i.ju = load i32, ptr %i.jt, align 4, !dbg !187981, !noalias !187721, !noundef !7548
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8single_rCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !187982

bb.az:                                            ; preds = %bb.aw
  %i.jv = add i32 %i.ji, 1, !dbg !187979
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jg, i64 36, !dbg !187983
  %i.jx = load i32, ptr %i.jw, align 4, !dbg !187983, !noalias !187721, !noundef !7548
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8single_rCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !187975

bb.ba:                                            ; preds = %bb.aw
  %i.jy = zext i32 %i.iu to i64, !dbg !187970     ; 3 uses
  %i.jz = icmp ugt i64 %i.jd, %i.jy, !dbg !187971
  call void @llvm.assume(i1 %i.jz), !dbg !187972
  %i.ka = getelementptr inbounds nuw [48 x i8], ptr %i.jc, i64 %i.jy, !dbg !187973
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 32, !dbg !187974
  %i.kc = load i32, ptr %i.kb, align 8, !dbg !187974, !noalias !187721, !noundef !7548
  %i.kd = add i32 %i.kc, %i.ji, !dbg !187979
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jg, i64 36, !dbg !187983
  %i.kf = load i32, ptr %i.ke, align 4, !dbg !187983, !noalias !187721, !noundef !7548
  br label %bb.ay, !dbg !187975

bb.bb:                                            ; preds = %bb.at
  %i.kg = landingpad { ptr, i32 }
          cleanup
  %i.kh = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !187984
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_7float164pf16ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.kh)
          to label %common.resume.i unwind label %bb.bc, !dbg !187985

bb.bc:                                            ; preds = %bb.bd, %bb.bb
  %i.ki = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #48, !dbg !187986
  unreachable, !dbg !187986

bb.bd:                                            ; preds = %bb.al
  %i.kj = landingpad { ptr, i32 }
          cleanup
  %i.kk = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !187987
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_7float164pf16ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.kk)
          to label %common.resume.i unwind label %bb.bc, !dbg !187988

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8single_rCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.az, %bb.ay, %bb.av
  %.sroa.014.0.i8.i.i = phi i32 [ %i.ju, %bb.ay ], [ 0, %bb.av ], [ 0, %bb.az ], !dbg !187989
  %.sroa.013.2.i9.i.i = phi i32 [ %.sroa.013.1.i5.i.i, %bb.ay ], [ 0, %bb.av ], [ %i.jx, %bb.az ], !dbg !187990
  %.sroa.0.2.i10.i.i = phi i32 [ %.sroa.0.1.i7.i.i, %bb.ay ], [ 1, %bb.av ], [ %i.jv, %bb.az ], !dbg !187979
  %i.kl = extractvalue { i32, i32 } %i.it, 0, !dbg !187955
  %i.km = add i32 %.sroa.014.0.i8.i.i, %.sroa.424.0.copyload.i.i, !dbg !187991
  %i.kn = add i32 %i.km, %.sroa.013.2.i9.i.i, !dbg !187991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !187992, !noalias !187722
  store <2 x i32> %i.ix, ptr %i.a, align 8, !dbg !187992, !noalias !187722
  %.sroa.3.0..sroa_idx.i12.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !187992
  store i32 %i.kl, ptr %.sroa.3.0..sroa_idx.i12.i.i, align 8, !dbg !187992, !noalias !187722
  %.sroa.4.0..sroa_idx.i13.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12, !dbg !187992
  store i32 %i.iu, ptr %.sroa.4.0..sroa_idx.i13.i.i, align 4, !dbg !187992, !noalias !187722
  %.sroa.5.0..sroa_idx.i14.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !187992
  store i64 %.sroa.022.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i14.i.i, align 8, !dbg !187992, !noalias !187720
  %.sroa.424.0..sroa.5.0..sroa_idx.i14.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !187992
  store <2 x i32> %i.iz, ptr %.sroa.424.0..sroa.5.0..sroa_idx.i14.sroa_idx.i.i, align 8, !dbg !187992, !noalias !187720
  %.sroa.6.0..sroa_idx.i15.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !187992
  store i32 %.sroa.0.2.i10.i.i, ptr %.sroa.6.0..sroa_idx.i15.i.i, align 8, !dbg !187992, !noalias !187722
  %.sroa.7.0..sroa_idx.i16.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 36, !dbg !187992
  store i32 %i.kn, ptr %.sroa.7.0..sroa_idx.i16.i.i, align 4, !dbg !187992, !noalias !187722
  %i.ko = call { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodeNtNtBS_7float164pf16EE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !dbg !187993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !187994, !noalias !187722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !187984, !noalias !187713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !187987, !noalias !187713
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8rotate_rCs1LHh8CLbVkQ_11polars_core.exit, !dbg !187908

bb.be:                                            ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit
  %i.kp = insertvalue { i32, i32 } poison, i32 %1, 0, !dbg !187995
  %i.kq = insertvalue { i32, i32 } %i.kp, i32 %2, 1, !dbg !187995
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8rotate_rCs1LHh8CLbVkQ_11polars_core.exit, !dbg !187995

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8rotate_rCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8single_rCs1LHh8CLbVkQ_11polars_core.exit.i, %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8double_rCs1LHh8CLbVkQ_11polars_core.exit.i, %bb.be
  %.merged = phi { i32, i32 } [ %i.kq, %bb.be ], [ %i.ko, %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8single_rCs1LHh8CLbVkQ_11polars_core.exit.i ], [ %i.gz, %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeNtNtB4_7float164pf16E8double_rCs1LHh8CLbVkQ_11polars_core.exit.i ], !dbg !187995
  ret { i32, i32 } %.merged, !dbg !187995
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE10remove_maxCs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !187996 !guid !188021 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !188048 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !dbg !188048, !nonnull !7548, !noundef !7548
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !188049
  %i.g = load i64, ptr %i.f, align 8, !dbg !188049, !noundef !7548
  %i.h = zext i32 %3 to i64, !dbg !188050         ; 3 uses
  %i.i = icmp ugt i64 %i.g, %i.h, !dbg !188051
  tail call void @llvm.assume(i1 %i.i), !dbg !188052
  %i.j = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.h, !dbg !188053 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12, !dbg !188054
  %i.l = load i32, ptr %i.k, align 4, !dbg !188054, !noundef !7548 ; 2 uses
  %i.m = icmp eq i32 %i.l, -1, !dbg !188055
  br i1 %i.m, label %bb.b, label %bb.c, !dbg !188055

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, i32 noundef %3), !dbg !188056
  %i.o = load i32, ptr %i.a, align 8, !dbg !188057, !noundef !7548 ; 2 uses
  %i.p = icmp ne i32 %i.o, 0, !dbg !188057
  tail call void @llvm.assume(i1 %i.p), !dbg !188058
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4, !dbg !188059
  %i.r = load i32, ptr %i.q, align 4, !dbg !188059, !noundef !7548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !dbg !188060
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !188060
  store i32 %i.o, ptr %i.s, align 8, !dbg !188060
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !188060
  store i32 %i.r, ptr %i.t, align 4, !dbg !188060
  br label %bb.d, !dbg !188061

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !188054
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !188062
  %i.v = load i32, ptr %i.u, align 8, !dbg !188063, !range !8720, !noundef !7548
  call fastcc void @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE10remove_maxCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(48) %1, i32 noundef %i.v, i32 noundef %i.l), !dbg !188064
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8, !dbg !188065
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !188065 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !188066
  %i.x = load <2 x i32>, ptr %i.w, align 8, !dbg !188066
  %.sroa.4.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !188067
  %i.y = load <2 x i32>, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !188065
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !188065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !188068
  %i.z = load ptr, ptr %i.d, align 8, !dbg !188069, !nonnull !7548, !noundef !7548
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %i.h, !dbg !188070 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !188071
  store <2 x i32> %i.x, ptr %i.ab, align 8, !dbg !188071
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 32, !dbg !188072 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !dbg !188072, !noundef !7548
  %i.ae = add i32 %i.ad, -1, !dbg !188072
  store i32 %i.ae, ptr %i.ac, align 8, !dbg !188072
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 36, !dbg !188073 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !dbg !188073, !noundef !7548
  %i.ah = sub i32 %i.ag, %.sroa.4.0.copyload, !dbg !188073
  store i32 %i.ah, ptr %i.af, align 4, !dbg !188073
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !188067
  store i64 %.sroa.0.0.copyload, ptr %i.b, align 8, !dbg !188067
end_hunk_0
begin_hunk_1_@_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE7__removeCs1LHh8CLbVkQ_11polars_core:bb.a
bb.ac:                                            ; preds = %bb.o
  %i.gq = add i32 %i.cr, -1, !dbg !188712         ; 2 uses
  store i32 %i.gq, ptr %i.cq, align 8, !dbg !188712
  %i.gr = getelementptr inbounds nuw i8, ptr %i.co, i64 28, !dbg !188713
  %i.gs = load i32, ptr %i.gr, align 4, !dbg !188713, !range !8720, !noundef !7548
  %i.gt = icmp eq i32 %i.gs, 1, !dbg !188714
  br i1 %i.gt, label %bb.af, label %bb.ae, !dbg !188714

bb.ad:                                            ; preds = %bb.o, %bb.af
  %.sroa.5.0 = phi double [ %i.he, %bb.af ], [ undef, %bb.o ], !dbg !188715
  tail call void @llvm.assume(i1 %i.cs), !dbg !188716
  %i.gu = getelementptr inbounds nuw i8, ptr %i.co, i64 36, !dbg !188717 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !dbg !188717, !noundef !7548
  %i.gw = add i32 %i.gv, -1, !dbg !188717
  store i32 %i.gw, ptr %i.gu, align 4, !dbg !188717
  store i64 1, ptr %0, align 8, !dbg !188718
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !188718
  store double %.sroa.5.0, ptr %i.gx, align 8, !dbg !188718
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !188718
  store i32 %3, ptr %i.gy, align 8, !dbg !188718
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !188718
  store i32 %4, ptr %i.gz, align 4, !dbg !188718
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !188718
  store i8 0, ptr %i.ha, align 8, !dbg !188718
  br label %bb.d, !dbg !188719

bb.ae:                                            ; preds = %bb.ac
  %i.hb = load ptr, ptr %i.cp, align 8, !dbg !188720, !noundef !7548
  br label %bb.af, !dbg !188721

bb.af:                                            ; preds = %bb.ac, %bb.ae
  %.sroa.06.0 = phi ptr [ %i.hb, %bb.ae ], [ %i.cp, %bb.ac ], !dbg !188722
  %i.hc = zext i32 %i.gq to i64, !dbg !188723
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.0, i64 %i.hc, !dbg !188724
  %i.he = load double, ptr %i.hd, align 8, !dbg !188725, !noundef !7548
  br label %bb.ad, !dbg !188726
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i32, i32 } @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE9balance_lCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !188727 !guid !188983 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 10 uses
  %i.b = alloca [40 x i8], align 16               ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 10 uses
  %i.f = alloca [40 x i8], align 8                ; 10 uses
  %i.g = alloca [40 x i8], align 8                ; 11 uses
  %i.h = alloca [40 x i8], align 16               ; 8 uses
  %i.i = alloca [40 x i8], align 16               ; 8 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 10 uses
  %i.n = alloca [40 x i8], align 8                ; 10 uses
  %i.o = alloca [40 x i8], align 8                ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !189023 ; 11 uses
  %i.q = load ptr, ptr %i.p, align 8, !dbg !189023, !nonnull !7548, !noundef !7548 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !189024 ; 11 uses
  %i.s = load i64, ptr %i.r, align 8, !dbg !189024, !noundef !7548 ; 6 uses
  %i.t = zext i32 %2 to i64, !dbg !189025         ; 2 uses
  %i.u = icmp ugt i64 %i.s, %i.t, !dbg !189026
  tail call void @llvm.assume(i1 %i.u), !dbg !189027
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.t, !dbg !189028 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4, !dbg !189029
  %i.x = load i32, ptr %i.w, align 4, !dbg !189029, !noundef !7548 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 12, !dbg !189030
  %i.z = load i32, ptr %i.y, align 4, !dbg !189030, !noundef !7548 ; 3 uses
  %i.aa = icmp eq i32 %i.x, -1, !dbg !189031
  br i1 %i.aa, label %bb.c, label %bb.b, !dbg !189031

bb.b:                                             ; preds = %bb.a
  %i.ab = zext i32 %i.x to i64, !dbg !189032      ; 2 uses
  %i.ac = icmp ugt i64 %i.s, %i.ab, !dbg !189033
  tail call void @llvm.assume(i1 %i.ac), !dbg !189034
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.ab, !dbg !189035
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32, !dbg !189036
  %i.af = load i32, ptr %i.ae, align 8, !dbg !189036, !noundef !7548
  %i.ag = zext i32 %i.af to i64, !dbg !189036
  %i.ah = add nuw nsw i64 %i.ag, 1, !dbg !189037
  br label %bb.c, !dbg !189038

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.01.0.i = phi i64 [ %i.ah, %bb.b ], [ 1, %bb.a ], !dbg !189039 ; 2 uses
  %i.ai = icmp eq i32 %i.z, -1, !dbg !189040
  br i1 %i.ai, label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit, label %bb.d, !dbg !189040

bb.d:                                             ; preds = %bb.c
  %i.aj = zext i32 %i.z to i64, !dbg !189041      ; 2 uses
  %i.ak = icmp ugt i64 %i.s, %i.aj, !dbg !189042
  tail call void @llvm.assume(i1 %i.ak), !dbg !189043
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.aj, !dbg !189044
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32, !dbg !189045
  %i.an = load i32, ptr %i.am, align 8, !dbg !189045, !noundef !7548
  %i.ao = zext i32 %i.an to i64, !dbg !189045
  %i.ap = add nuw nsw i64 %i.ao, 1, !dbg !189046
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit, !dbg !189047

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.c, %bb.d
  %.sroa.03.0.i = phi i64 [ %i.ap, %bb.d ], [ 1, %bb.c ], !dbg !189048 ; 2 uses
  %i.aq = mul nuw nsw i64 %.sroa.01.0.i, 3, !dbg !189049
  %.not.i = icmp samesign uge i64 %i.aq, %.sroa.03.0.i, !dbg !189049
  %i.ar = mul nuw nsw i64 %.sroa.03.0.i, 3, !dbg !189049
  %i.as = icmp samesign uge i64 %i.ar, %.sroa.01.0.i, !dbg !189049
  %.sroa.0.0.i = select i1 %.not.i, i1 %i.as, i1 false, !dbg !189049
  br i1 %.sroa.0.0.i, label %bb.be, label %bb.e, !dbg !189050

bb.e:                                             ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188993), !dbg !189051
  %i.at = zext i32 %i.z to i64, !dbg !189052      ; 2 uses
  %i.au = icmp ugt i64 %i.s, %i.at, !dbg !189053
  tail call void @llvm.assume(i1 %i.au), !dbg !189054
  %i.av = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.at, !dbg !189055 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4, !dbg !189056
  %i.ax = load i32, ptr %i.aw, align 4, !dbg !189056, !noalias !188993, !noundef !7548 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 12, !dbg !189057
  %i.az = load i32, ptr %i.ay, align 4, !dbg !189057, !noalias !188993, !noundef !7548 ; 2 uses
  %i.ba = icmp eq i32 %i.ax, -1, !dbg !189058
  br i1 %i.ba, label %bb.g, label %bb.f, !dbg !189058

bb.f:                                             ; preds = %bb.e
  %i.bb = zext i32 %i.ax to i64, !dbg !189059     ; 2 uses
  %i.bc = icmp ugt i64 %i.s, %i.bb, !dbg !189060
  tail call void @llvm.assume(i1 %i.bc), !dbg !189061
  %i.bd = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.bb, !dbg !189062
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32, !dbg !189063
  %i.bf = load i32, ptr %i.be, align 8, !dbg !189063, !noundef !7548
  %i.bg = zext i32 %i.bf to i64, !dbg !189063
  %i.bh = add nuw nsw i64 %i.bg, 1, !dbg !189064
  br label %bb.g, !dbg !189065

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i = phi i64 [ %i.bh, %bb.f ], [ 1, %bb.e ], !dbg !189066
  %i.bi = icmp eq i32 %i.az, -1, !dbg !189067
  br i1 %i.bi, label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.h, !dbg !189067

bb.h:                                             ; preds = %bb.g
  %i.bj = zext i32 %i.az to i64, !dbg !189068     ; 2 uses
  %i.bk = icmp ugt i64 %i.s, %i.bj, !dbg !189069
  tail call void @llvm.assume(i1 %i.bk), !dbg !189070
  %i.bl = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.bj, !dbg !189071
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32, !dbg !189072
  %i.bn = load i32, ptr %i.bm, align 8, !dbg !189072, !noundef !7548
  %i.bo = zext i32 %i.bn to i64, !dbg !189072
  %i.bp = shl nuw nsw i64 %i.bo, 1, !dbg !189073
  %i.bq = add nuw nsw i64 %i.bp, 2, !dbg !189073
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !189074

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.h, %bb.g
  %.sroa.01.0.i.i = phi i64 [ %i.bq, %bb.h ], [ 2, %bb.g ], !dbg !189075
  %i.br = icmp samesign ult i64 %.sroa.0.0.i.i, %.sroa.01.0.i.i, !dbg !189064
  br i1 %i.br, label %bb.al, label %bb.i, !dbg !189076

bb.i:                                             ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188996), !dbg !189077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !189078, !noalias !188997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !189079, !noalias !188997
  call void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2), !dbg !189080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false), !dbg !189081, !noalias !188997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !189082, !noalias !188997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !189083, !noalias !188997
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !189084
  %i.bt = load i32, ptr %i.bs, align 8, !dbg !189084, !range !8720, !noalias !188997, !noundef !7548
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 12, !dbg !189084
  %i.bv = load i32, ptr %i.bu, align 4, !dbg !189084, !noalias !188997, !noundef !7548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !189085, !noalias !188997
  invoke void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bt, i32 noundef %i.bv)
          to label %bb.j unwind label %.thread.i.i, !dbg !189086

.thread.i.i:                                      ; preds = %bb.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak, !dbg !189087

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false), !dbg !189088, !noalias !188997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !189089, !noalias !188997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !189090, !noalias !188997
  %i.bx = load i32, ptr %i.n, align 8, !dbg !189091, !range !8720, !noalias !188997, !noundef !7548
  %i.by = getelementptr inbounds nuw i8, ptr %i.n, i64 4, !dbg !189091
  %i.bz = load i32, ptr %i.by, align 4, !dbg !189091, !noalias !188997, !noundef !7548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !189092, !noalias !188997
  invoke void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bx, i32 noundef %i.bz)
          to label %bb.k unwind label %.thread55.i.i, !dbg !189093

.thread55.i.i:                                    ; preds = %bb.j
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj, !dbg !189094

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !dbg !189095, !noalias !188997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !189096, !noalias !188997
  %i.cb = getelementptr inbounds nuw i8, ptr %i.o, i64 4, !dbg !189097
  %i.cc = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !189098
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cc, align 8, !dbg !189098, !noalias !188997
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24, !dbg !189098 ; 2 uses
  %i.cd = load <2 x i32>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !189098, !noalias !188997
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !189098, !noalias !188997
  %i.ce = getelementptr inbounds nuw i8, ptr %i.m, i64 4, !dbg !189099
  %3 = load <1 x i64>, ptr %i.o, align 8, !dbg !189097, !noalias !188997
  %i.cf = load i32, ptr %i.cb, align 4, !dbg !189097, !noalias !188997, !noundef !7548 ; 2 uses
  %4 = load <1 x i64>, ptr %i.m, align 8, !dbg !189099, !noalias !188997
  %i.cg = load i32, ptr %i.ce, align 4, !dbg !189099, !noalias !188997, !noundef !7548 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189000), !dbg !189100
  %i.ch = icmp eq i32 %i.cf, -1, !dbg !189101
  br i1 %i.ch, label %bb.l, label %bb.m, !dbg !189101

bb.l:                                             ; preds = %bb.k
  %i.ci = icmp eq i32 %i.cg, -1, !dbg !189102
  br i1 %i.ci, label %bb.r, label %bb.n, !dbg !189102

bb.m:                                             ; preds = %bb.k
  %i.cj = load ptr, ptr %i.p, align 8, !dbg !189103, !alias.scope !189001, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.ck = load i64, ptr %i.r, align 8, !dbg !189104, !alias.scope !189001, !noundef !7548 ; 2 uses
  %i.cl = zext i32 %i.cf to i64, !dbg !189105     ; 2 uses
  %i.cm = icmp ugt i64 %i.ck, %i.cl, !dbg !189106
  tail call void @llvm.assume(i1 %i.cm), !dbg !189107
  %i.cn = getelementptr inbounds nuw [48 x i8], ptr %i.cj, i64 %i.cl, !dbg !189108 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32, !dbg !189109
  %i.cp = load i32, ptr %i.co, align 8, !dbg !189109, !noalias !189002, !noundef !7548 ; 2 uses
  %i.cq = icmp eq i32 %i.cg, -1, !dbg !189102
  br i1 %i.cq, label %bb.p, label %bb.q, !dbg !189102

bb.n:                                             ; preds = %bb.l
  %i.cr = load ptr, ptr %i.p, align 8, !dbg !189110, !alias.scope !189001, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.cs = load i64, ptr %i.r, align 8, !dbg !189111, !alias.scope !189001, !noundef !7548
  %i.ct = zext i32 %i.cg to i64, !dbg !189112     ; 3 uses
  %i.cu = icmp ugt i64 %i.cs, %i.ct, !dbg !189113
  tail call void @llvm.assume(i1 %i.cu), !dbg !189114
  %i.cv = getelementptr inbounds nuw [48 x i8], ptr %i.cr, i64 %i.ct, !dbg !189115
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32, !dbg !189116
  %i.cx = load i32, ptr %i.cw, align 8, !dbg !189116, !noalias !189002, !noundef !7548
  br label %bb.o, !dbg !189117

bb.o:                                             ; preds = %bb.q, %bb.n
  %.pre-phi.i.i.i = phi i64 [ %i.df, %bb.q ], [ %i.ct, %bb.n ], !dbg !189118
  %i.cy = phi ptr [ %i.cj, %bb.q ], [ %i.cr, %bb.n ], !dbg !189119
  %.sroa.013.1.i.i.i = phi i32 [ %i.dm, %bb.q ], [ 0, %bb.n ], !dbg !189120
  %.sroa.0.1.in.i.i.i = phi i32 [ %i.dk, %bb.q ], [ %i.cx, %bb.n ]
  %.sroa.0.1.i.i.i = add i32 %.sroa.0.1.in.i.i.i, 1, !dbg !189121
  %i.cz = getelementptr inbounds nuw [48 x i8], ptr %i.cy, i64 %.pre-phi.i.i.i, !dbg !189122
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 36, !dbg !189123
  %i.db = load i32, ptr %i.da, align 4, !dbg !189123, !noalias !189002, !noundef !7548
  br label %bb.r, !dbg !189124

bb.p:                                             ; preds = %bb.m
  %i.dc = add i32 %i.cp, 1, !dbg !189121
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 36, !dbg !189125
  %i.de = load i32, ptr %i.dd, align 4, !dbg !189125, !noalias !189002, !noundef !7548
  br label %bb.r, !dbg !189117

bb.q:                                             ; preds = %bb.m
  %i.df = zext i32 %i.cg to i64, !dbg !189112     ; 3 uses
  %i.dg = icmp ugt i64 %i.ck, %i.df, !dbg !189113
  tail call void @llvm.assume(i1 %i.dg), !dbg !189114
  %i.dh = getelementptr inbounds nuw [48 x i8], ptr %i.cj, i64 %i.df, !dbg !189115
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32, !dbg !189116
  %i.dj = load i32, ptr %i.di, align 8, !dbg !189116, !noalias !189002, !noundef !7548
  %i.dk = add i32 %i.dj, %i.cp, !dbg !189121
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cn, i64 36, !dbg !189125
  %i.dm = load i32, ptr %i.dl, align 4, !dbg !189125, !noalias !189002, !noundef !7548
  br label %bb.o, !dbg !189117

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.l
  %.sroa.014.0.i.i.i = phi i32 [ %i.db, %bb.o ], [ 0, %bb.l ], [ 0, %bb.p ], !dbg !189126
  %.sroa.013.2.i.i.i = phi i32 [ %.sroa.013.1.i.i.i, %bb.o ], [ 0, %bb.l ], [ %i.de, %bb.p ], !dbg !189127
  %.sroa.0.2.i.i.i = phi i32 [ %.sroa.0.1.i.i.i, %bb.o ], [ 1, %bb.l ], [ %i.dc, %bb.p ], !dbg !189121
  %i.dn = add i32 %.sroa.014.0.i.i.i, %.sroa.4.0.copyload.i.i, !dbg !189128
  %i.do = add i32 %i.dn, %.sroa.013.2.i.i.i, !dbg !189128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !189129, !noalias !189003
  %5 = shufflevector <1 x i64> %3, <1 x i64> %4, <2 x i32> <i32 0, i32 1>, !dbg !189129
  store <2 x i64> %5, ptr %i.i, align 16, !dbg !189129, !noalias !189003
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !189129
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 16, !dbg !189129, !noalias !189001
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !189129
  store <2 x i32> %i.cd, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i.i, align 8, !dbg !189129, !noalias !189001
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !189129
  store i32 %.sroa.0.2.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 16, !dbg !189129, !noalias !189003
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 36, !dbg !189129
  store i32 %i.do, ptr %.sroa.7.0..sroa_idx.i.i.i, align 4, !dbg !189129, !noalias !189003
  %i.dp = invoke { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodedEE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.i)
          to label %bb.s unwind label %bb.ah, !dbg !189130 ; 2 uses

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !189131, !noalias !189003
  %i.dq = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !189132
  %i.dr = getelementptr inbounds nuw i8, ptr %i.m, i64 12, !dbg !189132
  %i.ds = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !189133
  %.sroa.039.0.copyload.i.i = load i64, ptr %i.ds, align 8, !dbg !189133, !noalias !188997
  %.sroa.441.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !189133 ; 2 uses
  %i.dt = load <2 x i32>, ptr %.sroa.441.0..sroa_idx.i.i, align 8, !dbg !189133, !noalias !188997
  %.sroa.441.0.copyload.i.i = load i32, ptr %.sroa.441.0..sroa_idx.i.i, align 8, !dbg !189133, !noalias !188997
  %i.du = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !189134
  %i.dv = getelementptr inbounds nuw i8, ptr %i.n, i64 12, !dbg !189134
  %6 = load <1 x i64>, ptr %i.dq, align 8, !dbg !189132, !noalias !188997
  %i.dw = load i32, ptr %i.dr, align 4, !dbg !189132, !noalias !188997, !noundef !7548 ; 2 uses
  %7 = load <1 x i64>, ptr %i.du, align 8, !dbg !189134, !noalias !188997
  %i.dx = load i32, ptr %i.dv, align 4, !dbg !189134, !noalias !188997, !noundef !7548 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !189004), !dbg !189135
  %i.dy = icmp eq i32 %i.dw, -1, !dbg !189136
  br i1 %i.dy, label %bb.t, label %bb.u, !dbg !189136

bb.t:                                             ; preds = %bb.s
  %i.dz = icmp eq i32 %i.dx, -1, !dbg !189137
  br i1 %i.dz, label %bb.z, label %bb.v, !dbg !189137

bb.u:                                             ; preds = %bb.s
  %i.ea = load ptr, ptr %i.p, align 8, !dbg !189138, !alias.scope !189005, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.eb = load i64, ptr %i.r, align 8, !dbg !189139, !alias.scope !189005, !noundef !7548 ; 2 uses
  %i.ec = zext i32 %i.dw to i64, !dbg !189140     ; 2 uses
  %i.ed = icmp ugt i64 %i.eb, %i.ec, !dbg !189141
  call void @llvm.assume(i1 %i.ed), !dbg !189142
  %i.ee = getelementptr inbounds nuw [48 x i8], ptr %i.ea, i64 %i.ec, !dbg !189143 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32, !dbg !189144
  %i.eg = load i32, ptr %i.ef, align 8, !dbg !189144, !noalias !189006, !noundef !7548 ; 2 uses
  %i.eh = icmp eq i32 %i.dx, -1, !dbg !189137
  br i1 %i.eh, label %bb.x, label %bb.y, !dbg !189137

bb.v:                                             ; preds = %bb.t
  %i.ei = load ptr, ptr %i.p, align 8, !dbg !189145, !alias.scope !189005, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.ej = load i64, ptr %i.r, align 8, !dbg !189146, !alias.scope !189005, !noundef !7548
  %i.ek = zext i32 %i.dx to i64, !dbg !189147     ; 3 uses
  %i.el = icmp ugt i64 %i.ej, %i.ek, !dbg !189148
  call void @llvm.assume(i1 %i.el), !dbg !189149
  %i.em = getelementptr inbounds nuw [48 x i8], ptr %i.ei, i64 %i.ek, !dbg !189150
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32, !dbg !189151
  %i.eo = load i32, ptr %i.en, align 8, !dbg !189151, !noalias !189006, !noundef !7548
  br label %bb.w, !dbg !189152

bb.w:                                             ; preds = %bb.y, %bb.v
  %.pre-phi.i6.i.i = phi i64 [ %i.ew, %bb.y ], [ %i.ek, %bb.v ], !dbg !189153
  %i.ep = phi ptr [ %i.ea, %bb.y ], [ %i.ei, %bb.v ], !dbg !189154
  %.sroa.013.1.i7.i.i = phi i32 [ %i.fd, %bb.y ], [ 0, %bb.v ], !dbg !189155
  %.sroa.0.1.in.i8.i.i = phi i32 [ %i.fb, %bb.y ], [ %i.eo, %bb.v ]
  %.sroa.0.1.i9.i.i = add i32 %.sroa.0.1.in.i8.i.i, 1, !dbg !189156
  %i.eq = getelementptr inbounds nuw [48 x i8], ptr %i.ep, i64 %.pre-phi.i6.i.i, !dbg !189157
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 36, !dbg !189158
  %i.es = load i32, ptr %i.er, align 4, !dbg !189158, !noalias !189006, !noundef !7548
  br label %bb.z, !dbg !189159

bb.x:                                             ; preds = %bb.u
  %i.et = add i32 %i.eg, 1, !dbg !189156
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ee, i64 36, !dbg !189160
  %i.ev = load i32, ptr %i.eu, align 4, !dbg !189160, !noalias !189006, !noundef !7548
  br label %bb.z, !dbg !189152

bb.y:                                             ; preds = %bb.u
  %i.ew = zext i32 %i.dx to i64, !dbg !189147     ; 3 uses
  %i.ex = icmp ugt i64 %i.eb, %i.ew, !dbg !189148
  call void @llvm.assume(i1 %i.ex), !dbg !189149
  %i.ey = getelementptr inbounds nuw [48 x i8], ptr %i.ea, i64 %i.ew, !dbg !189150
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32, !dbg !189151
  %i.fa = load i32, ptr %i.ez, align 8, !dbg !189151, !noalias !189006, !noundef !7548
  %i.fb = add i32 %i.fa, %i.eg, !dbg !189156
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ee, i64 36, !dbg !189160
  %i.fd = load i32, ptr %i.fc, align 4, !dbg !189160, !noalias !189006, !noundef !7548
  br label %bb.w, !dbg !189152

bb.z:                                             ; preds = %bb.x, %bb.w, %bb.t
  %.sroa.014.0.i10.i.i = phi i32 [ %i.es, %bb.w ], [ 0, %bb.t ], [ 0, %bb.x ], !dbg !189161
  %.sroa.013.2.i11.i.i = phi i32 [ %.sroa.013.1.i7.i.i, %bb.w ], [ 0, %bb.t ], [ %i.ev, %bb.x ], !dbg !189162
  %.sroa.0.2.i12.i.i = phi i32 [ %.sroa.0.1.i9.i.i, %bb.w ], [ 1, %bb.t ], [ %i.et, %bb.x ], !dbg !189156
  %i.fe = add i32 %.sroa.014.0.i10.i.i, %.sroa.441.0.copyload.i.i, !dbg !189163
  %i.ff = add i32 %i.fe, %.sroa.013.2.i11.i.i, !dbg !189163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !189164, !noalias !189007
  %8 = shufflevector <1 x i64> %6, <1 x i64> %7, <2 x i32> <i32 0, i32 1>, !dbg !189164
  store <2 x i64> %8, ptr %i.h, align 16, !dbg !189164, !noalias !189007
  %.sroa.5.0..sroa_idx.i16.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !189164
  store i64 %.sroa.039.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i16.i.i, align 16, !dbg !189164, !noalias !189005
  %.sroa.441.0..sroa.5.0..sroa_idx.i16.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !189164
  store <2 x i32> %i.dt, ptr %.sroa.441.0..sroa.5.0..sroa_idx.i16.sroa_idx.i.i, align 8, !dbg !189164, !noalias !189005
  %.sroa.6.0..sroa_idx.i17.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !189164
  store i32 %.sroa.0.2.i12.i.i, ptr %.sroa.6.0..sroa_idx.i17.i.i, align 16, !dbg !189164, !noalias !189007
  %.sroa.7.0..sroa_idx.i18.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36, !dbg !189164
  store i32 %i.ff, ptr %.sroa.7.0..sroa_idx.i18.i.i, align 4, !dbg !189164, !noalias !189007
  %i.fg = invoke { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodedEE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.h)
          to label %bb.aa unwind label %bb.ah, !dbg !189165 ; 2 uses

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !189166, !noalias !189007
  %i.fh = extractvalue { i32, i32 } %i.dp, 1, !dbg !189167 ; 3 uses
  %i.fi = extractvalue { i32, i32 } %i.fg, 1, !dbg !189168 ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !189169
  %.sroa.045.0.copyload.i.i = load i64, ptr %i.fj, align 8, !dbg !189169, !noalias !188997
  %.sroa.447.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !189169 ; 2 uses
  %i.fk = load <2 x i32>, ptr %.sroa.447.0..sroa_idx.i.i, align 8, !dbg !189169, !noalias !188997
  %.sroa.447.0.copyload.i.i = load i32, ptr %.sroa.447.0..sroa_idx.i.i, align 8, !dbg !189169, !noalias !188997
  call void @llvm.experimental.noalias.scope.decl(metadata !189008), !dbg !189170
  %i.fl = icmp eq i32 %i.fh, -1, !dbg !189171
  br i1 %i.fl, label %bb.ab, label %bb.ac, !dbg !189171

bb.ab:                                            ; preds = %bb.aa
  %i.fm = icmp eq i32 %i.fi, -1, !dbg !189172
  br i1 %i.fm, label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8double_lCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.ad, !dbg !189172

bb.ac:                                            ; preds = %bb.aa
  %i.fn = load ptr, ptr %i.p, align 8, !dbg !189173, !alias.scope !189009, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.fo = load i64, ptr %i.r, align 8, !dbg !189174, !alias.scope !189009, !noundef !7548 ; 2 uses
  %i.fp = zext i32 %i.fh to i64, !dbg !189175     ; 2 uses
  %i.fq = icmp ugt i64 %i.fo, %i.fp, !dbg !189176
  call void @llvm.assume(i1 %i.fq), !dbg !189177
  %i.fr = getelementptr inbounds nuw [48 x i8], ptr %i.fn, i64 %i.fp, !dbg !189178 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 32, !dbg !189179
  %i.ft = load i32, ptr %i.fs, align 8, !dbg !189179, !noalias !189010, !noundef !7548 ; 2 uses
  %i.fu = icmp eq i32 %i.fi, -1, !dbg !189172
  br i1 %i.fu, label %bb.af, label %bb.ag, !dbg !189172

bb.ad:                                            ; preds = %bb.ab
  %i.fv = load ptr, ptr %i.p, align 8, !dbg !189180, !alias.scope !189009, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.fw = load i64, ptr %i.r, align 8, !dbg !189181, !alias.scope !189009, !noundef !7548
  %i.fx = zext i32 %i.fi to i64, !dbg !189182     ; 3 uses
  %i.fy = icmp ugt i64 %i.fw, %i.fx, !dbg !189183
  call void @llvm.assume(i1 %i.fy), !dbg !189184
  %i.fz = getelementptr inbounds nuw [48 x i8], ptr %i.fv, i64 %i.fx, !dbg !189185
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 32, !dbg !189186
  %i.gb = load i32, ptr %i.ga, align 8, !dbg !189186, !noalias !189010, !noundef !7548
  br label %bb.ae, !dbg !189187

bb.ae:                                            ; preds = %bb.ag, %bb.ad
  %.pre-phi.i20.i.i = phi i64 [ %i.gj, %bb.ag ], [ %i.fx, %bb.ad ], !dbg !189188
  %i.gc = phi ptr [ %i.fn, %bb.ag ], [ %i.fv, %bb.ad ], !dbg !189189
  %.sroa.013.1.i21.i.i = phi i32 [ %i.gq, %bb.ag ], [ 0, %bb.ad ], !dbg !189190
  %.sroa.0.1.in.i22.i.i = phi i32 [ %i.go, %bb.ag ], [ %i.gb, %bb.ad ]
  %.sroa.0.1.i23.i.i = add i32 %.sroa.0.1.in.i22.i.i, 1, !dbg !189191
  %i.gd = getelementptr inbounds nuw [48 x i8], ptr %i.gc, i64 %.pre-phi.i20.i.i, !dbg !189192
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 36, !dbg !189193
  %i.gf = load i32, ptr %i.ge, align 4, !dbg !189193, !noalias !189010, !noundef !7548
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8double_lCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !189194

bb.af:                                            ; preds = %bb.ac
  %i.gg = add i32 %i.ft, 1, !dbg !189191
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fr, i64 36, !dbg !189195
  %i.gi = load i32, ptr %i.gh, align 4, !dbg !189195, !noalias !189010, !noundef !7548
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8double_lCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !189187

bb.ag:                                            ; preds = %bb.ac
  %i.gj = zext i32 %i.fi to i64, !dbg !189182     ; 3 uses
  %i.gk = icmp ugt i64 %i.fo, %i.gj, !dbg !189183
  call void @llvm.assume(i1 %i.gk), !dbg !189184
  %i.gl = getelementptr inbounds nuw [48 x i8], ptr %i.fn, i64 %i.gj, !dbg !189185
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 32, !dbg !189186
  %i.gn = load i32, ptr %i.gm, align 8, !dbg !189186, !noalias !189010, !noundef !7548
  %i.go = add i32 %i.gn, %i.ft, !dbg !189191
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fr, i64 36, !dbg !189195
  %i.gq = load i32, ptr %i.gp, align 4, !dbg !189195, !noalias !189010, !noundef !7548
  br label %bb.ae, !dbg !189187

bb.ah:                                            ; preds = %bb.z, %bb.r
  %.sroa.01.1.ph.i.i = phi i1 [ true, %bb.r ], [ false, %bb.z ]
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !189196
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecdENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gr)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecdEECs1LHh8CLbVkQ_11polars_core.exit.i.i unwind label %bb.ai, !dbg !189197

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecdEECs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %bb.ah
  br i1 %.sroa.01.1.ph.i.i, label %bb.aj, label %common.resume.i, !dbg !189094

bb.ai:                                            ; preds = %bb.ak, %bb.aj, %bb.ah
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #48, !dbg !189198
  unreachable, !dbg !189198

bb.aj:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecdEECs1LHh8CLbVkQ_11polars_core.exit.i.i, %.thread55.i.i
  %.sroa.02.160.i.i = phi i1 [ true, %.thread55.i.i ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecdEECs1LHh8CLbVkQ_11polars_core.exit.i.i ]
  %.pn59.i.i = phi { ptr, i32 } [ %i.ca, %.thread55.i.i ], [ %lpad.thr_comm.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecdEECs1LHh8CLbVkQ_11polars_core.exit.i.i ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !189094
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecdENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gt)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecdEECs1LHh8CLbVkQ_11polars_core.exit34.i.i unwind label %bb.ai, !dbg !189199

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecdEECs1LHh8CLbVkQ_11polars_core.exit34.i.i: ; preds = %bb.aj
  br i1 %.sroa.02.160.i.i, label %bb.ak, label %common.resume.i, !dbg !189087

common.resume.i:                                  ; preds = %bb.bd, %bb.bb, %bb.ak, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecdEECs1LHh8CLbVkQ_11polars_core.exit34.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecdEECs1LHh8CLbVkQ_11polars_core.exit.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecdEECs1LHh8CLbVkQ_11polars_core.exit.i.i ], [ %.pn59.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecdEECs1LHh8CLbVkQ_11polars_core.exit34.i.i ], [ %.pn.pn54.i.i, %bb.ak ], [ %i.kj, %bb.bd ], [ %i.kg, %bb.bb ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !189200

bb.ak:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecdEECs1LHh8CLbVkQ_11polars_core.exit34.i.i, %.thread.i.i
  %.pn.pn54.i.i = phi { ptr, i32 } [ %i.bw, %.thread.i.i ], [ %.pn59.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecdEECs1LHh8CLbVkQ_11polars_core.exit34.i.i ]
  %i.gu = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !189087
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecdENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gu)
          to label %common.resume.i unwind label %bb.ai, !dbg !189201

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8double_lCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.af, %bb.ae, %bb.ab
  %.sroa.014.0.i24.i.i = phi i32 [ %i.gf, %bb.ae ], [ 0, %bb.ab ], [ 0, %bb.af ], !dbg !189202
  %.sroa.013.2.i25.i.i = phi i32 [ %.sroa.013.1.i21.i.i, %bb.ae ], [ 0, %bb.ab ], [ %i.gi, %bb.af ], !dbg !189203
  %.sroa.0.2.i26.i.i = phi i32 [ %.sroa.0.1.i23.i.i, %bb.ae ], [ 1, %bb.ab ], [ %i.gg, %bb.af ], !dbg !189191
  %i.gv = extractvalue { i32, i32 } %i.fg, 0, !dbg !189168
  %i.gw = extractvalue { i32, i32 } %i.dp, 0, !dbg !189167
  %i.gx = add i32 %.sroa.014.0.i24.i.i, %.sroa.447.0.copyload.i.i, !dbg !189204
  %i.gy = add i32 %i.gx, %.sroa.013.2.i25.i.i, !dbg !189204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !189205, !noalias !189011
  store i32 %i.gw, ptr %i.g, align 8, !dbg !189205, !noalias !189011
  %.sroa.2.0..sroa_idx.i27.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4, !dbg !189205
  store i32 %i.fh, ptr %.sroa.2.0..sroa_idx.i27.i.i, align 4, !dbg !189205, !noalias !189011
  %.sroa.3.0..sroa_idx.i28.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !189205
  store i32 %i.gv, ptr %.sroa.3.0..sroa_idx.i28.i.i, align 8, !dbg !189205, !noalias !189011
  %.sroa.4.0..sroa_idx.i29.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12, !dbg !189205
  store i32 %i.fi, ptr %.sroa.4.0..sroa_idx.i29.i.i, align 4, !dbg !189205, !noalias !189011
  %.sroa.5.0..sroa_idx.i30.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !189205
  store i64 %.sroa.045.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i30.i.i, align 8, !dbg !189205, !noalias !189009
  %.sroa.447.0..sroa.5.0..sroa_idx.i30.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !189205
  store <2 x i32> %i.fk, ptr %.sroa.447.0..sroa.5.0..sroa_idx.i30.sroa_idx.i.i, align 8, !dbg !189205, !noalias !189009
  %.sroa.6.0..sroa_idx.i31.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !189205
  store i32 %.sroa.0.2.i26.i.i, ptr %.sroa.6.0..sroa_idx.i31.i.i, align 8, !dbg !189205, !noalias !189011
  %.sroa.7.0..sroa_idx.i32.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 36, !dbg !189205
  store i32 %i.gy, ptr %.sroa.7.0..sroa_idx.i32.i.i, align 4, !dbg !189205, !noalias !189011
  %i.gz = call { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodedEE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.g), !dbg !189206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !189207, !noalias !189011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !189196, !noalias !188997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !189094, !noalias !188997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !189087, !noalias !188997
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8rotate_lCs1LHh8CLbVkQ_11polars_core.exit, !dbg !189077

bb.al:                                            ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189012), !dbg !189208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !189209, !noalias !189013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !189210, !noalias !189013
  call void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2), !dbg !189211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !dbg !189212, !noalias !189013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !189213, !noalias !189013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !189214, !noalias !189013
  %i.ha = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !189215
  %i.hb = load i32, ptr %i.ha, align 8, !dbg !189215, !range !8720, !noalias !189013, !noundef !7548
  %i.hc = getelementptr inbounds nuw i8, ptr %i.f, i64 12, !dbg !189215
  %i.hd = load i32, ptr %i.hc, align 4, !dbg !189215, !noalias !189013, !noundef !7548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !189216, !noalias !189013
  invoke void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.hb, i32 noundef %i.hd)
          to label %bb.am unwind label %bb.bd, !dbg !189217

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !dbg !189218, !noalias !189013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !189219, !noalias !189013
  %i.he = getelementptr inbounds nuw i8, ptr %i.f, i64 4, !dbg !189220
  %i.hf = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !189221
  %.sroa.0.0.copyload.i3.i = load i64, ptr %i.hf, align 8, !dbg !189221, !noalias !189013
  %.sroa.4.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !189221 ; 2 uses
  %i.hg = load <2 x i32>, ptr %.sroa.4.0..sroa_idx.i4.i, align 8, !dbg !189221, !noalias !189013
  %.sroa.4.0.copyload.i5.i = load i32, ptr %.sroa.4.0..sroa_idx.i4.i, align 8, !dbg !189221, !noalias !189013
  %i.hh = getelementptr inbounds nuw i8, ptr %i.e, i64 4, !dbg !189222
  %9 = load <1 x i64>, ptr %i.f, align 8, !dbg !189220, !noalias !189013
  %i.hi = load i32, ptr %i.he, align 4, !dbg !189220, !noalias !189013, !noundef !7548 ; 2 uses
  %10 = load <1 x i64>, ptr %i.e, align 8, !dbg !189222, !noalias !189013
  %i.hj = load i32, ptr %i.hh, align 4, !dbg !189222, !noalias !189013, !noundef !7548 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189015), !dbg !189223
  %i.hk = icmp eq i32 %i.hi, -1, !dbg !189224
  br i1 %i.hk, label %bb.an, label %bb.ao, !dbg !189224

bb.an:                                            ; preds = %bb.am
  %i.hl = icmp eq i32 %i.hj, -1, !dbg !189225
  br i1 %i.hl, label %bb.at, label %bb.ap, !dbg !189225

bb.ao:                                            ; preds = %bb.am
  %i.hm = load ptr, ptr %i.p, align 8, !dbg !189226, !alias.scope !189016, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.hn = load i64, ptr %i.r, align 8, !dbg !189227, !alias.scope !189016, !noundef !7548 ; 2 uses
  %i.ho = zext i32 %i.hi to i64, !dbg !189228     ; 2 uses
  %i.hp = icmp ugt i64 %i.hn, %i.ho, !dbg !189229
  tail call void @llvm.assume(i1 %i.hp), !dbg !189230
  %i.hq = getelementptr inbounds nuw [48 x i8], ptr %i.hm, i64 %i.ho, !dbg !189231 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 32, !dbg !189232
  %i.hs = load i32, ptr %i.hr, align 8, !dbg !189232, !noalias !189017, !noundef !7548 ; 2 uses
  %i.ht = icmp eq i32 %i.hj, -1, !dbg !189225
  br i1 %i.ht, label %bb.ar, label %bb.as, !dbg !189225

bb.ap:                                            ; preds = %bb.an
  %i.hu = load ptr, ptr %i.p, align 8, !dbg !189233, !alias.scope !189016, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.hv = load i64, ptr %i.r, align 8, !dbg !189234, !alias.scope !189016, !noundef !7548
  %i.hw = zext i32 %i.hj to i64, !dbg !189235     ; 3 uses
  %i.hx = icmp ugt i64 %i.hv, %i.hw, !dbg !189236
  tail call void @llvm.assume(i1 %i.hx), !dbg !189237
  %i.hy = getelementptr inbounds nuw [48 x i8], ptr %i.hu, i64 %i.hw, !dbg !189238
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32, !dbg !189239
  %i.ia = load i32, ptr %i.hz, align 8, !dbg !189239, !noalias !189017, !noundef !7548
  br label %bb.aq, !dbg !189240

bb.aq:                                            ; preds = %bb.as, %bb.ap
  %.pre-phi.i.i8.i = phi i64 [ %i.ii, %bb.as ], [ %i.hw, %bb.ap ], !dbg !189241
  %i.ib = phi ptr [ %i.hm, %bb.as ], [ %i.hu, %bb.ap ], !dbg !189242
  %.sroa.013.1.i.i9.i = phi i32 [ %i.ip, %bb.as ], [ 0, %bb.ap ], !dbg !189243
  %.sroa.0.1.in.i.i10.i = phi i32 [ %i.in, %bb.as ], [ %i.ia, %bb.ap ]
  %.sroa.0.1.i.i11.i = add i32 %.sroa.0.1.in.i.i10.i, 1, !dbg !189244
  %i.ic = getelementptr inbounds nuw [48 x i8], ptr %i.ib, i64 %.pre-phi.i.i8.i, !dbg !189245
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 36, !dbg !189246
  %i.ie = load i32, ptr %i.id, align 4, !dbg !189246, !noalias !189017, !noundef !7548
  br label %bb.at, !dbg !189247

bb.ar:                                            ; preds = %bb.ao
  %i.if = add i32 %i.hs, 1, !dbg !189244
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hq, i64 36, !dbg !189248
  %i.ih = load i32, ptr %i.ig, align 4, !dbg !189248, !noalias !189017, !noundef !7548
  br label %bb.at, !dbg !189240

bb.as:                                            ; preds = %bb.ao
  %i.ii = zext i32 %i.hj to i64, !dbg !189235     ; 3 uses
  %i.ij = icmp ugt i64 %i.hn, %i.ii, !dbg !189236
  tail call void @llvm.assume(i1 %i.ij), !dbg !189237
  %i.ik = getelementptr inbounds nuw [48 x i8], ptr %i.hm, i64 %i.ii, !dbg !189238
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 32, !dbg !189239
  %i.im = load i32, ptr %i.il, align 8, !dbg !189239, !noalias !189017, !noundef !7548
  %i.in = add i32 %i.im, %i.hs, !dbg !189244
  %i.io = getelementptr inbounds nuw i8, ptr %i.hq, i64 36, !dbg !189248
  %i.ip = load i32, ptr %i.io, align 4, !dbg !189248, !noalias !189017, !noundef !7548
  br label %bb.aq, !dbg !189240

bb.at:                                            ; preds = %bb.ar, %bb.aq, %bb.an
  %.sroa.014.0.i.i12.i = phi i32 [ %i.ie, %bb.aq ], [ 0, %bb.an ], [ 0, %bb.ar ], !dbg !189249
  %.sroa.013.2.i.i13.i = phi i32 [ %.sroa.013.1.i.i9.i, %bb.aq ], [ 0, %bb.an ], [ %i.ih, %bb.ar ], !dbg !189250
  %.sroa.0.2.i.i14.i = phi i32 [ %.sroa.0.1.i.i11.i, %bb.aq ], [ 1, %bb.an ], [ %i.if, %bb.ar ], !dbg !189244
  %i.iq = add i32 %.sroa.014.0.i.i12.i, %.sroa.4.0.copyload.i5.i, !dbg !189251
  %i.ir = add i32 %i.iq, %.sroa.013.2.i.i13.i, !dbg !189251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !189252, !noalias !189018
  %11 = shufflevector <1 x i64> %9, <1 x i64> %10, <2 x i32> <i32 0, i32 1>, !dbg !189252
  store <2 x i64> %11, ptr %i.b, align 16, !dbg !189252, !noalias !189018
  %.sroa.5.0..sroa_idx.i.i18.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !189252
  store i64 %.sroa.0.0.copyload.i3.i, ptr %.sroa.5.0..sroa_idx.i.i18.i, align 16, !dbg !189252, !noalias !189016
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !189252
  store <2 x i32> %i.hg, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i19.i, align 8, !dbg !189252, !noalias !189016
  %.sroa.6.0..sroa_idx.i.i21.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !189252
  store i32 %.sroa.0.2.i.i14.i, ptr %.sroa.6.0..sroa_idx.i.i21.i, align 16, !dbg !189252, !noalias !189018
  %.sroa.7.0..sroa_idx.i.i22.i = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !189252
  store i32 %i.ir, ptr %.sroa.7.0..sroa_idx.i.i22.i, align 4, !dbg !189252, !noalias !189018
  %i.is = invoke { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodedEE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.au unwind label %bb.bb, !dbg !189253 ; 2 uses

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !189254, !noalias !189018
  %i.it = extractvalue { i32, i32 } %i.is, 1, !dbg !189255 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !189256
  %.sroa.022.0.copyload.i.i = load i64, ptr %i.iu, align 8, !dbg !189256, !noalias !189013
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !189256 ; 2 uses
  %i.iv = load <2 x i32>, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !dbg !189256, !noalias !189013
  %.sroa.424.0.copyload.i.i = load i32, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !dbg !189256, !noalias !189013
  %i.iw = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !189257
  %i.ix = getelementptr inbounds nuw i8, ptr %i.e, i64 12, !dbg !189257
  %i.iy = load i32, ptr %i.ix, align 4, !dbg !189257, !noalias !189013, !noundef !7548 ; 4 uses
  %i.iz = load <2 x i32>, ptr %i.iw, align 8, !dbg !189257, !noalias !189013
  call void @llvm.experimental.noalias.scope.decl(metadata !189019), !dbg !189258
  %i.ja = icmp eq i32 %i.it, -1, !dbg !189259
  br i1 %i.ja, label %bb.av, label %bb.aw, !dbg !189259

bb.av:                                            ; preds = %bb.au
  %i.jb = icmp eq i32 %i.iy, -1, !dbg !189260
  br i1 %i.jb, label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8single_lCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.ax, !dbg !189260

bb.aw:                                            ; preds = %bb.au
  %i.jc = load ptr, ptr %i.p, align 8, !dbg !189261, !alias.scope !189020, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.jd = load i64, ptr %i.r, align 8, !dbg !189262, !alias.scope !189020, !noundef !7548 ; 2 uses
  %i.je = zext i32 %i.it to i64, !dbg !189263     ; 2 uses
  %i.jf = icmp ugt i64 %i.jd, %i.je, !dbg !189264
  call void @llvm.assume(i1 %i.jf), !dbg !189265
  %i.jg = getelementptr inbounds nuw [48 x i8], ptr %i.jc, i64 %i.je, !dbg !189266 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 32, !dbg !189267
  %i.ji = load i32, ptr %i.jh, align 8, !dbg !189267, !noalias !189021, !noundef !7548 ; 2 uses
  %i.jj = icmp eq i32 %i.iy, -1, !dbg !189260
  br i1 %i.jj, label %bb.az, label %bb.ba, !dbg !189260

bb.ax:                                            ; preds = %bb.av
  %i.jk = load ptr, ptr %i.p, align 8, !dbg !189268, !alias.scope !189020, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.jl = load i64, ptr %i.r, align 8, !dbg !189269, !alias.scope !189020, !noundef !7548
  %i.jm = zext i32 %i.iy to i64, !dbg !189270     ; 3 uses
  %i.jn = icmp ugt i64 %i.jl, %i.jm, !dbg !189271
  call void @llvm.assume(i1 %i.jn), !dbg !189272
  %i.jo = getelementptr inbounds nuw [48 x i8], ptr %i.jk, i64 %i.jm, !dbg !189273
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 32, !dbg !189274
  %i.jq = load i32, ptr %i.jp, align 8, !dbg !189274, !noalias !189021, !noundef !7548
  br label %bb.ay, !dbg !189275

bb.ay:                                            ; preds = %bb.ba, %bb.ax
  %.pre-phi.i4.i.i = phi i64 [ %i.jy, %bb.ba ], [ %i.jm, %bb.ax ], !dbg !189276
  %i.jr = phi ptr [ %i.jc, %bb.ba ], [ %i.jk, %bb.ax ], !dbg !189277
  %.sroa.013.1.i5.i.i = phi i32 [ %i.kf, %bb.ba ], [ 0, %bb.ax ], !dbg !189278
  %.sroa.0.1.in.i6.i.i = phi i32 [ %i.kd, %bb.ba ], [ %i.jq, %bb.ax ]
  %.sroa.0.1.i7.i.i = add i32 %.sroa.0.1.in.i6.i.i, 1, !dbg !189279
  %i.js = getelementptr inbounds nuw [48 x i8], ptr %i.jr, i64 %.pre-phi.i4.i.i, !dbg !189280
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 36, !dbg !189281
  %i.ju = load i32, ptr %i.jt, align 4, !dbg !189281, !noalias !189021, !noundef !7548
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8single_lCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !189282

bb.az:                                            ; preds = %bb.aw
  %i.jv = add i32 %i.ji, 1, !dbg !189279
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jg, i64 36, !dbg !189283
  %i.jx = load i32, ptr %i.jw, align 4, !dbg !189283, !noalias !189021, !noundef !7548
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8single_lCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !189275

bb.ba:                                            ; preds = %bb.aw
  %i.jy = zext i32 %i.iy to i64, !dbg !189270     ; 3 uses
  %i.jz = icmp ugt i64 %i.jd, %i.jy, !dbg !189271
  call void @llvm.assume(i1 %i.jz), !dbg !189272
  %i.ka = getelementptr inbounds nuw [48 x i8], ptr %i.jc, i64 %i.jy, !dbg !189273
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 32, !dbg !189274
  %i.kc = load i32, ptr %i.kb, align 8, !dbg !189274, !noalias !189021, !noundef !7548
  %i.kd = add i32 %i.kc, %i.ji, !dbg !189279
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jg, i64 36, !dbg !189283
  %i.kf = load i32, ptr %i.ke, align 4, !dbg !189283, !noalias !189021, !noundef !7548
  br label %bb.ay, !dbg !189275

bb.bb:                                            ; preds = %bb.at
  %i.kg = landingpad { ptr, i32 }
          cleanup
  %i.kh = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !189284
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecdENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.kh)
          to label %common.resume.i unwind label %bb.bc, !dbg !189285

bb.bc:                                            ; preds = %bb.bd, %bb.bb
  %i.ki = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #48, !dbg !189286
  unreachable, !dbg !189286

bb.bd:                                            ; preds = %bb.al
  %i.kj = landingpad { ptr, i32 }
          cleanup
  %i.kk = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !189287
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecdENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.kk)
          to label %common.resume.i unwind label %bb.bc, !dbg !189288

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8single_lCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.az, %bb.ay, %bb.av
  %.sroa.014.0.i8.i.i = phi i32 [ %i.ju, %bb.ay ], [ 0, %bb.av ], [ 0, %bb.az ], !dbg !189289
  %.sroa.013.2.i9.i.i = phi i32 [ %.sroa.013.1.i5.i.i, %bb.ay ], [ 0, %bb.av ], [ %i.jx, %bb.az ], !dbg !189290
  %.sroa.0.2.i10.i.i = phi i32 [ %.sroa.0.1.i7.i.i, %bb.ay ], [ 1, %bb.av ], [ %i.jv, %bb.az ], !dbg !189279
  %i.kl = extractvalue { i32, i32 } %i.is, 0, !dbg !189255
  %i.km = add i32 %.sroa.014.0.i8.i.i, %.sroa.424.0.copyload.i.i, !dbg !189291
  %i.kn = add i32 %i.km, %.sroa.013.2.i9.i.i, !dbg !189291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !189292, !noalias !189022
  store i32 %i.kl, ptr %i.a, align 8, !dbg !189292, !noalias !189022
  %.sroa.2.0..sroa_idx.i11.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4, !dbg !189292
  store i32 %i.it, ptr %.sroa.2.0..sroa_idx.i11.i.i, align 4, !dbg !189292, !noalias !189022
  %.sroa.3.0..sroa_idx.i12.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !189292
  store <2 x i32> %i.iz, ptr %.sroa.3.0..sroa_idx.i12.i.i, align 8, !dbg !189292, !noalias !189022
  %.sroa.5.0..sroa_idx.i14.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !189292
  store i64 %.sroa.022.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i14.i.i, align 8, !dbg !189292, !noalias !189020
  %.sroa.424.0..sroa.5.0..sroa_idx.i14.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !189292
  store <2 x i32> %i.iv, ptr %.sroa.424.0..sroa.5.0..sroa_idx.i14.sroa_idx.i.i, align 8, !dbg !189292, !noalias !189020
  %.sroa.6.0..sroa_idx.i15.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !189292
  store i32 %.sroa.0.2.i10.i.i, ptr %.sroa.6.0..sroa_idx.i15.i.i, align 8, !dbg !189292, !noalias !189022
  %.sroa.7.0..sroa_idx.i16.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 36, !dbg !189292
  store i32 %i.kn, ptr %.sroa.7.0..sroa_idx.i16.i.i, align 4, !dbg !189292, !noalias !189022
  %i.ko = call { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodedEE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !dbg !189293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !189294, !noalias !189022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !189284, !noalias !189013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !189287, !noalias !189013
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8rotate_lCs1LHh8CLbVkQ_11polars_core.exit, !dbg !189208

bb.be:                                            ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit
  %i.kp = insertvalue { i32, i32 } poison, i32 %1, 0, !dbg !189295
  %i.kq = insertvalue { i32, i32 } %i.kp, i32 %2, 1, !dbg !189295
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8rotate_lCs1LHh8CLbVkQ_11polars_core.exit, !dbg !189295

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8rotate_lCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8single_lCs1LHh8CLbVkQ_11polars_core.exit.i, %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8double_lCs1LHh8CLbVkQ_11polars_core.exit.i, %bb.be
  %.merged = phi { i32, i32 } [ %i.kq, %bb.be ], [ %i.ko, %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8single_lCs1LHh8CLbVkQ_11polars_core.exit.i ], [ %i.gz, %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8double_lCs1LHh8CLbVkQ_11polars_core.exit.i ], !dbg !189295
  ret { i32, i32 } %.merged, !dbg !189295
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i32, i32 } @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE9balance_rCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !189296 !guid !189552 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 10 uses
  %i.b = alloca [40 x i8], align 16               ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 10 uses
  %i.f = alloca [40 x i8], align 8                ; 10 uses
  %i.g = alloca [40 x i8], align 8                ; 11 uses
  %i.h = alloca [40 x i8], align 16               ; 8 uses
  %i.i = alloca [40 x i8], align 16               ; 8 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 10 uses
  %i.n = alloca [40 x i8], align 8                ; 10 uses
  %i.o = alloca [40 x i8], align 8                ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !189592 ; 11 uses
  %i.q = load ptr, ptr %i.p, align 8, !dbg !189592, !nonnull !7548, !noundef !7548 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !189593 ; 11 uses
  %i.s = load i64, ptr %i.r, align 8, !dbg !189593, !noundef !7548 ; 6 uses
  %i.t = zext i32 %2 to i64, !dbg !189594         ; 2 uses
  %i.u = icmp ugt i64 %i.s, %i.t, !dbg !189595
  tail call void @llvm.assume(i1 %i.u), !dbg !189596
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.t, !dbg !189597 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12, !dbg !189598
  %i.x = load i32, ptr %i.w, align 4, !dbg !189598, !noundef !7548 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4, !dbg !189599
  %i.z = load i32, ptr %i.y, align 4, !dbg !189599, !noundef !7548 ; 3 uses
  %i.aa = icmp eq i32 %i.x, -1, !dbg !189600
  br i1 %i.aa, label %bb.c, label %bb.b, !dbg !189600

bb.b:                                             ; preds = %bb.a
  %i.ab = zext i32 %i.x to i64, !dbg !189601      ; 2 uses
  %i.ac = icmp ugt i64 %i.s, %i.ab, !dbg !189602
  tail call void @llvm.assume(i1 %i.ac), !dbg !189603
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.ab, !dbg !189604
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32, !dbg !189605
  %i.af = load i32, ptr %i.ae, align 8, !dbg !189605, !noundef !7548
  %i.ag = zext i32 %i.af to i64, !dbg !189605
  %i.ah = add nuw nsw i64 %i.ag, 1, !dbg !189606
  br label %bb.c, !dbg !189607

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.01.0.i = phi i64 [ %i.ah, %bb.b ], [ 1, %bb.a ], !dbg !189608 ; 2 uses
  %i.ai = icmp eq i32 %i.z, -1, !dbg !189609
  br i1 %i.ai, label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit, label %bb.d, !dbg !189609

bb.d:                                             ; preds = %bb.c
  %i.aj = zext i32 %i.z to i64, !dbg !189610      ; 2 uses
  %i.ak = icmp ugt i64 %i.s, %i.aj, !dbg !189611
  tail call void @llvm.assume(i1 %i.ak), !dbg !189612
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.aj, !dbg !189613
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32, !dbg !189614
  %i.an = load i32, ptr %i.am, align 8, !dbg !189614, !noundef !7548
  %i.ao = zext i32 %i.an to i64, !dbg !189614
  %i.ap = add nuw nsw i64 %i.ao, 1, !dbg !189615
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit, !dbg !189616

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.c, %bb.d
  %.sroa.03.0.i = phi i64 [ %i.ap, %bb.d ], [ 1, %bb.c ], !dbg !189617 ; 2 uses
  %i.aq = mul nuw nsw i64 %.sroa.01.0.i, 3, !dbg !189618
  %.not.i = icmp samesign uge i64 %i.aq, %.sroa.03.0.i, !dbg !189618
  %i.ar = mul nuw nsw i64 %.sroa.03.0.i, 3, !dbg !189618
  %i.as = icmp samesign uge i64 %i.ar, %.sroa.01.0.i, !dbg !189618
  %.sroa.0.0.i = select i1 %.not.i, i1 %i.as, i1 false, !dbg !189618
  br i1 %.sroa.0.0.i, label %bb.be, label %bb.e, !dbg !189619

bb.e:                                             ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189562), !dbg !189620
  %i.at = zext i32 %i.z to i64, !dbg !189621      ; 2 uses
  %i.au = icmp ugt i64 %i.s, %i.at, !dbg !189622
  tail call void @llvm.assume(i1 %i.au), !dbg !189623
  %i.av = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.at, !dbg !189624 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12, !dbg !189625
  %i.ax = load i32, ptr %i.aw, align 4, !dbg !189625, !noalias !189562, !noundef !7548 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 4, !dbg !189626
  %i.az = load i32, ptr %i.ay, align 4, !dbg !189626, !noalias !189562, !noundef !7548 ; 2 uses
  %i.ba = icmp eq i32 %i.ax, -1, !dbg !189627
  br i1 %i.ba, label %bb.g, label %bb.f, !dbg !189627

bb.f:                                             ; preds = %bb.e
  %i.bb = zext i32 %i.ax to i64, !dbg !189628     ; 2 uses
  %i.bc = icmp ugt i64 %i.s, %i.bb, !dbg !189629
  tail call void @llvm.assume(i1 %i.bc), !dbg !189630
  %i.bd = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.bb, !dbg !189631
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32, !dbg !189632
  %i.bf = load i32, ptr %i.be, align 8, !dbg !189632, !noundef !7548
  %i.bg = zext i32 %i.bf to i64, !dbg !189632
  %i.bh = add nuw nsw i64 %i.bg, 1, !dbg !189633
  br label %bb.g, !dbg !189634

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i = phi i64 [ %i.bh, %bb.f ], [ 1, %bb.e ], !dbg !189635
  %i.bi = icmp eq i32 %i.az, -1, !dbg !189636
  br i1 %i.bi, label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.h, !dbg !189636

bb.h:                                             ; preds = %bb.g
  %i.bj = zext i32 %i.az to i64, !dbg !189637     ; 2 uses
  %i.bk = icmp ugt i64 %i.s, %i.bj, !dbg !189638
  tail call void @llvm.assume(i1 %i.bk), !dbg !189639
  %i.bl = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.bj, !dbg !189640
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32, !dbg !189641
  %i.bn = load i32, ptr %i.bm, align 8, !dbg !189641, !noundef !7548
  %i.bo = zext i32 %i.bn to i64, !dbg !189641
  %i.bp = shl nuw nsw i64 %i.bo, 1, !dbg !189642
  %i.bq = add nuw nsw i64 %i.bp, 2, !dbg !189642
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !189643

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.h, %bb.g
  %.sroa.01.0.i.i = phi i64 [ %i.bq, %bb.h ], [ 2, %bb.g ], !dbg !189644
  %i.br = icmp samesign ult i64 %.sroa.0.0.i.i, %.sroa.01.0.i.i, !dbg !189633
  br i1 %i.br, label %bb.al, label %bb.i, !dbg !189645

bb.i:                                             ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189565), !dbg !189646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !189647, !noalias !189566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !189648, !noalias !189566
  call void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2), !dbg !189649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false), !dbg !189650, !noalias !189566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !189651, !noalias !189566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !189652, !noalias !189566
  %i.bs = load i32, ptr %i.o, align 8, !dbg !189653, !range !8720, !noalias !189566, !noundef !7548
  %i.bt = getelementptr inbounds nuw i8, ptr %i.o, i64 4, !dbg !189653
  %i.bu = load i32, ptr %i.bt, align 4, !dbg !189653, !noalias !189566, !noundef !7548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !189654, !noalias !189566
  invoke void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bs, i32 noundef %i.bu)
          to label %bb.j unwind label %.thread.i.i, !dbg !189655

.thread.i.i:                                      ; preds = %bb.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak, !dbg !189656

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false), !dbg !189657, !noalias !189566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !189658, !noalias !189566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !189659, !noalias !189566
  %i.bw = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !189660
  %i.bx = load i32, ptr %i.bw, align 8, !dbg !189660, !range !8720, !noalias !189566, !noundef !7548
  %i.by = getelementptr inbounds nuw i8, ptr %i.n, i64 12, !dbg !189660
  %i.bz = load i32, ptr %i.by, align 4, !dbg !189660, !noalias !189566, !noundef !7548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !189661, !noalias !189566
  invoke void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bx, i32 noundef %i.bz)
          to label %bb.k unwind label %.thread55.i.i, !dbg !189662

.thread55.i.i:                                    ; preds = %bb.j
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj, !dbg !189663

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !dbg !189664, !noalias !189566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !189665, !noalias !189566
  %i.cb = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !189666
  %i.cc = getelementptr inbounds nuw i8, ptr %i.m, i64 12, !dbg !189666
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !189667
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cd, align 8, !dbg !189667, !noalias !189566
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24, !dbg !189667 ; 2 uses
  %i.ce = load <2 x i32>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !189667, !noalias !189566
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !189667, !noalias !189566
  %i.cf = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !189668
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 12, !dbg !189668
  %3 = load <1 x i64>, ptr %i.cb, align 8, !dbg !189666, !noalias !189566
  %i.ch = load i32, ptr %i.cc, align 4, !dbg !189666, !noalias !189566, !noundef !7548 ; 2 uses
  %4 = load <1 x i64>, ptr %i.cf, align 8, !dbg !189668, !noalias !189566
  %i.ci = load i32, ptr %i.cg, align 4, !dbg !189668, !noalias !189566, !noundef !7548 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189569), !dbg !189669
  %i.cj = icmp eq i32 %i.ch, -1, !dbg !189670
  br i1 %i.cj, label %bb.l, label %bb.m, !dbg !189670

bb.l:                                             ; preds = %bb.k
  %i.ck = icmp eq i32 %i.ci, -1, !dbg !189671
  br i1 %i.ck, label %bb.r, label %bb.n, !dbg !189671

bb.m:                                             ; preds = %bb.k
  %i.cl = load ptr, ptr %i.p, align 8, !dbg !189672, !alias.scope !189570, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.cm = load i64, ptr %i.r, align 8, !dbg !189673, !alias.scope !189570, !noundef !7548 ; 2 uses
  %i.cn = zext i32 %i.ch to i64, !dbg !189674     ; 2 uses
  %i.co = icmp ugt i64 %i.cm, %i.cn, !dbg !189675
  tail call void @llvm.assume(i1 %i.co), !dbg !189676
  %i.cp = getelementptr inbounds nuw [48 x i8], ptr %i.cl, i64 %i.cn, !dbg !189677 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32, !dbg !189678
  %i.cr = load i32, ptr %i.cq, align 8, !dbg !189678, !noalias !189571, !noundef !7548 ; 2 uses
  %i.cs = icmp eq i32 %i.ci, -1, !dbg !189671
  br i1 %i.cs, label %bb.p, label %bb.q, !dbg !189671

bb.n:                                             ; preds = %bb.l
  %i.ct = load ptr, ptr %i.p, align 8, !dbg !189679, !alias.scope !189570, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.cu = load i64, ptr %i.r, align 8, !dbg !189680, !alias.scope !189570, !noundef !7548
  %i.cv = zext i32 %i.ci to i64, !dbg !189681     ; 3 uses
  %i.cw = icmp ugt i64 %i.cu, %i.cv, !dbg !189682
  tail call void @llvm.assume(i1 %i.cw), !dbg !189683
  %i.cx = getelementptr inbounds nuw [48 x i8], ptr %i.ct, i64 %i.cv, !dbg !189684
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32, !dbg !189685
  %i.cz = load i32, ptr %i.cy, align 8, !dbg !189685, !noalias !189571, !noundef !7548
  br label %bb.o, !dbg !189686

bb.o:                                             ; preds = %bb.q, %bb.n
  %.pre-phi.i.i.i = phi i64 [ %i.dh, %bb.q ], [ %i.cv, %bb.n ], !dbg !189687
  %i.da = phi ptr [ %i.cl, %bb.q ], [ %i.ct, %bb.n ], !dbg !189688
  %.sroa.013.1.i.i.i = phi i32 [ %i.do, %bb.q ], [ 0, %bb.n ], !dbg !189689
  %.sroa.0.1.in.i.i.i = phi i32 [ %i.dm, %bb.q ], [ %i.cz, %bb.n ]
  %.sroa.0.1.i.i.i = add i32 %.sroa.0.1.in.i.i.i, 1, !dbg !189690
  %i.db = getelementptr inbounds nuw [48 x i8], ptr %i.da, i64 %.pre-phi.i.i.i, !dbg !189691
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 36, !dbg !189692
  %i.dd = load i32, ptr %i.dc, align 4, !dbg !189692, !noalias !189571, !noundef !7548
  br label %bb.r, !dbg !189693

bb.p:                                             ; preds = %bb.m
  %i.de = add i32 %i.cr, 1, !dbg !189690
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 36, !dbg !189694
  %i.dg = load i32, ptr %i.df, align 4, !dbg !189694, !noalias !189571, !noundef !7548
  br label %bb.r, !dbg !189686

bb.q:                                             ; preds = %bb.m
  %i.dh = zext i32 %i.ci to i64, !dbg !189681     ; 3 uses
  %i.di = icmp ugt i64 %i.cm, %i.dh, !dbg !189682
  tail call void @llvm.assume(i1 %i.di), !dbg !189683
  %i.dj = getelementptr inbounds nuw [48 x i8], ptr %i.cl, i64 %i.dh, !dbg !189684
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32, !dbg !189685
  %i.dl = load i32, ptr %i.dk, align 8, !dbg !189685, !noalias !189571, !noundef !7548
  %i.dm = add i32 %i.dl, %i.cr, !dbg !189690
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cp, i64 36, !dbg !189694
  %i.do = load i32, ptr %i.dn, align 4, !dbg !189694, !noalias !189571, !noundef !7548
  br label %bb.o, !dbg !189686

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.l
  %.sroa.014.0.i.i.i = phi i32 [ %i.dd, %bb.o ], [ 0, %bb.l ], [ 0, %bb.p ], !dbg !189695
  %.sroa.013.2.i.i.i = phi i32 [ %.sroa.013.1.i.i.i, %bb.o ], [ 0, %bb.l ], [ %i.dg, %bb.p ], !dbg !189696
  %.sroa.0.2.i.i.i = phi i32 [ %.sroa.0.1.i.i.i, %bb.o ], [ 1, %bb.l ], [ %i.de, %bb.p ], !dbg !189690
  %i.dp = add i32 %.sroa.014.0.i.i.i, %.sroa.4.0.copyload.i.i, !dbg !189697
  %i.dq = add i32 %i.dp, %.sroa.013.2.i.i.i, !dbg !189697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !189698, !noalias !189572
  %5 = shufflevector <1 x i64> %3, <1 x i64> %4, <2 x i32> <i32 0, i32 1>, !dbg !189698
  store <2 x i64> %5, ptr %i.i, align 16, !dbg !189698, !noalias !189572
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !189698
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 16, !dbg !189698, !noalias !189570
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !189698
  store <2 x i32> %i.ce, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i.i, align 8, !dbg !189698, !noalias !189570
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !189698
  store i32 %.sroa.0.2.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 16, !dbg !189698, !noalias !189572
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 36, !dbg !189698
  store i32 %i.dq, ptr %.sroa.7.0..sroa_idx.i.i.i, align 4, !dbg !189698, !noalias !189572
  %i.dr = invoke { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodedEE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.i)
          to label %bb.s unwind label %bb.ah, !dbg !189699 ; 2 uses

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !189700, !noalias !189572
  %i.ds = getelementptr inbounds nuw i8, ptr %i.n, i64 4, !dbg !189701
  %i.dt = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !189702
  %.sroa.039.0.copyload.i.i = load i64, ptr %i.dt, align 8, !dbg !189702, !noalias !189566
  %.sroa.441.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !189702 ; 2 uses
  %i.du = load <2 x i32>, ptr %.sroa.441.0..sroa_idx.i.i, align 8, !dbg !189702, !noalias !189566
  %.sroa.441.0.copyload.i.i = load i32, ptr %.sroa.441.0..sroa_idx.i.i, align 8, !dbg !189702, !noalias !189566
  %i.dv = getelementptr inbounds nuw i8, ptr %i.m, i64 4, !dbg !189703
  %6 = load <1 x i64>, ptr %i.n, align 8, !dbg !189701, !noalias !189566
  %i.dw = load i32, ptr %i.ds, align 4, !dbg !189701, !noalias !189566, !noundef !7548 ; 2 uses
  %7 = load <1 x i64>, ptr %i.m, align 8, !dbg !189703, !noalias !189566
  %i.dx = load i32, ptr %i.dv, align 4, !dbg !189703, !noalias !189566, !noundef !7548 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !189573), !dbg !189704
  %i.dy = icmp eq i32 %i.dw, -1, !dbg !189705
  br i1 %i.dy, label %bb.t, label %bb.u, !dbg !189705

bb.t:                                             ; preds = %bb.s
  %i.dz = icmp eq i32 %i.dx, -1, !dbg !189706
  br i1 %i.dz, label %bb.z, label %bb.v, !dbg !189706

bb.u:                                             ; preds = %bb.s
  %i.ea = load ptr, ptr %i.p, align 8, !dbg !189707, !alias.scope !189574, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.eb = load i64, ptr %i.r, align 8, !dbg !189708, !alias.scope !189574, !noundef !7548 ; 2 uses
  %i.ec = zext i32 %i.dw to i64, !dbg !189709     ; 2 uses
  %i.ed = icmp ugt i64 %i.eb, %i.ec, !dbg !189710
  call void @llvm.assume(i1 %i.ed), !dbg !189711
  %i.ee = getelementptr inbounds nuw [48 x i8], ptr %i.ea, i64 %i.ec, !dbg !189712 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32, !dbg !189713
  %i.eg = load i32, ptr %i.ef, align 8, !dbg !189713, !noalias !189575, !noundef !7548 ; 2 uses
  %i.eh = icmp eq i32 %i.dx, -1, !dbg !189706
  br i1 %i.eh, label %bb.x, label %bb.y, !dbg !189706

bb.v:                                             ; preds = %bb.t
  %i.ei = load ptr, ptr %i.p, align 8, !dbg !189714, !alias.scope !189574, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.ej = load i64, ptr %i.r, align 8, !dbg !189715, !alias.scope !189574, !noundef !7548
  %i.ek = zext i32 %i.dx to i64, !dbg !189716     ; 3 uses
  %i.el = icmp ugt i64 %i.ej, %i.ek, !dbg !189717
  call void @llvm.assume(i1 %i.el), !dbg !189718
  %i.em = getelementptr inbounds nuw [48 x i8], ptr %i.ei, i64 %i.ek, !dbg !189719
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32, !dbg !189720
  %i.eo = load i32, ptr %i.en, align 8, !dbg !189720, !noalias !189575, !noundef !7548
  br label %bb.w, !dbg !189721

bb.w:                                             ; preds = %bb.y, %bb.v
  %.pre-phi.i6.i.i = phi i64 [ %i.ew, %bb.y ], [ %i.ek, %bb.v ], !dbg !189722
  %i.ep = phi ptr [ %i.ea, %bb.y ], [ %i.ei, %bb.v ], !dbg !189723
  %.sroa.013.1.i7.i.i = phi i32 [ %i.fd, %bb.y ], [ 0, %bb.v ], !dbg !189724
  %.sroa.0.1.in.i8.i.i = phi i32 [ %i.fb, %bb.y ], [ %i.eo, %bb.v ]
  %.sroa.0.1.i9.i.i = add i32 %.sroa.0.1.in.i8.i.i, 1, !dbg !189725
  %i.eq = getelementptr inbounds nuw [48 x i8], ptr %i.ep, i64 %.pre-phi.i6.i.i, !dbg !189726
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 36, !dbg !189727
  %i.es = load i32, ptr %i.er, align 4, !dbg !189727, !noalias !189575, !noundef !7548
  br label %bb.z, !dbg !189728

bb.x:                                             ; preds = %bb.u
  %i.et = add i32 %i.eg, 1, !dbg !189725
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ee, i64 36, !dbg !189729
  %i.ev = load i32, ptr %i.eu, align 4, !dbg !189729, !noalias !189575, !noundef !7548
  br label %bb.z, !dbg !189721

bb.y:                                             ; preds = %bb.u
  %i.ew = zext i32 %i.dx to i64, !dbg !189716     ; 3 uses
  %i.ex = icmp ugt i64 %i.eb, %i.ew, !dbg !189717
  call void @llvm.assume(i1 %i.ex), !dbg !189718
  %i.ey = getelementptr inbounds nuw [48 x i8], ptr %i.ea, i64 %i.ew, !dbg !189719
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32, !dbg !189720
  %i.fa = load i32, ptr %i.ez, align 8, !dbg !189720, !noalias !189575, !noundef !7548
  %i.fb = add i32 %i.fa, %i.eg, !dbg !189725
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ee, i64 36, !dbg !189729
  %i.fd = load i32, ptr %i.fc, align 4, !dbg !189729, !noalias !189575, !noundef !7548
  br label %bb.w, !dbg !189721

bb.z:                                             ; preds = %bb.x, %bb.w, %bb.t
  %.sroa.014.0.i10.i.i = phi i32 [ %i.es, %bb.w ], [ 0, %bb.t ], [ 0, %bb.x ], !dbg !189730
  %.sroa.013.2.i11.i.i = phi i32 [ %.sroa.013.1.i7.i.i, %bb.w ], [ 0, %bb.t ], [ %i.ev, %bb.x ], !dbg !189731
  %.sroa.0.2.i12.i.i = phi i32 [ %.sroa.0.1.i9.i.i, %bb.w ], [ 1, %bb.t ], [ %i.et, %bb.x ], !dbg !189725
  %i.fe = add i32 %.sroa.014.0.i10.i.i, %.sroa.441.0.copyload.i.i, !dbg !189732
  %i.ff = add i32 %i.fe, %.sroa.013.2.i11.i.i, !dbg !189732
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !189733, !noalias !189576
  %8 = shufflevector <1 x i64> %6, <1 x i64> %7, <2 x i32> <i32 0, i32 1>, !dbg !189733
  store <2 x i64> %8, ptr %i.h, align 16, !dbg !189733, !noalias !189576
  %.sroa.5.0..sroa_idx.i16.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !189733
  store i64 %.sroa.039.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i16.i.i, align 16, !dbg !189733, !noalias !189574
  %.sroa.441.0..sroa.5.0..sroa_idx.i16.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !189733
  store <2 x i32> %i.du, ptr %.sroa.441.0..sroa.5.0..sroa_idx.i16.sroa_idx.i.i, align 8, !dbg !189733, !noalias !189574
  %.sroa.6.0..sroa_idx.i17.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !189733
  store i32 %.sroa.0.2.i12.i.i, ptr %.sroa.6.0..sroa_idx.i17.i.i, align 16, !dbg !189733, !noalias !189576
  %.sroa.7.0..sroa_idx.i18.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36, !dbg !189733
  store i32 %i.ff, ptr %.sroa.7.0..sroa_idx.i18.i.i, align 4, !dbg !189733, !noalias !189576
  %i.fg = invoke { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodedEE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.h)
          to label %bb.aa unwind label %bb.ah, !dbg !189734 ; 2 uses

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !189735, !noalias !189576
  %i.fh = extractvalue { i32, i32 } %i.dr, 1, !dbg !189736 ; 5 uses
  %i.fi = extractvalue { i32, i32 } %i.fg, 1, !dbg !189737 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !189738
  %.sroa.045.0.copyload.i.i = load i64, ptr %i.fj, align 8, !dbg !189738, !noalias !189566
  %.sroa.447.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !189738 ; 2 uses
  %i.fk = load <2 x i32>, ptr %.sroa.447.0..sroa_idx.i.i, align 8, !dbg !189738, !noalias !189566
  %.sroa.447.0.copyload.i.i = load i32, ptr %.sroa.447.0..sroa_idx.i.i, align 8, !dbg !189738, !noalias !189566
  call void @llvm.experimental.noalias.scope.decl(metadata !189577), !dbg !189739
  %i.fl = icmp eq i32 %i.fi, -1, !dbg !189740
  br i1 %i.fl, label %bb.ab, label %bb.ac, !dbg !189740

bb.ab:                                            ; preds = %bb.aa
  %i.fm = icmp eq i32 %i.fh, -1, !dbg !189741
  br i1 %i.fm, label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8double_rCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.ad, !dbg !189741

bb.ac:                                            ; preds = %bb.aa
  %i.fn = load ptr, ptr %i.p, align 8, !dbg !189742, !alias.scope !189578, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.fo = load i64, ptr %i.r, align 8, !dbg !189743, !alias.scope !189578, !noundef !7548 ; 2 uses
  %i.fp = zext i32 %i.fi to i64, !dbg !189744     ; 2 uses
  %i.fq = icmp ugt i64 %i.fo, %i.fp, !dbg !189745
  call void @llvm.assume(i1 %i.fq), !dbg !189746
  %i.fr = getelementptr inbounds nuw [48 x i8], ptr %i.fn, i64 %i.fp, !dbg !189747 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 32, !dbg !189748
  %i.ft = load i32, ptr %i.fs, align 8, !dbg !189748, !noalias !189579, !noundef !7548 ; 2 uses
  %i.fu = icmp eq i32 %i.fh, -1, !dbg !189741
  br i1 %i.fu, label %bb.af, label %bb.ag, !dbg !189741

bb.ad:                                            ; preds = %bb.ab
  %i.fv = load ptr, ptr %i.p, align 8, !dbg !189749, !alias.scope !189578, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.fw = load i64, ptr %i.r, align 8, !dbg !189750, !alias.scope !189578, !noundef !7548
  %i.fx = zext i32 %i.fh to i64, !dbg !189751     ; 3 uses
  %i.fy = icmp ugt i64 %i.fw, %i.fx, !dbg !189752
  call void @llvm.assume(i1 %i.fy), !dbg !189753
  %i.fz = getelementptr inbounds nuw [48 x i8], ptr %i.fv, i64 %i.fx, !dbg !189754
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 32, !dbg !189755
  %i.gb = load i32, ptr %i.ga, align 8, !dbg !189755, !noalias !189579, !noundef !7548
  br label %bb.ae, !dbg !189756

bb.ae:                                            ; preds = %bb.ag, %bb.ad
  %.pre-phi.i20.i.i = phi i64 [ %i.gj, %bb.ag ], [ %i.fx, %bb.ad ], !dbg !189757
  %i.gc = phi ptr [ %i.fn, %bb.ag ], [ %i.fv, %bb.ad ], !dbg !189758
  %.sroa.013.1.i21.i.i = phi i32 [ %i.gq, %bb.ag ], [ 0, %bb.ad ], !dbg !189759
  %.sroa.0.1.in.i22.i.i = phi i32 [ %i.go, %bb.ag ], [ %i.gb, %bb.ad ]
  %.sroa.0.1.i23.i.i = add i32 %.sroa.0.1.in.i22.i.i, 1, !dbg !189760
  %i.gd = getelementptr inbounds nuw [48 x i8], ptr %i.gc, i64 %.pre-phi.i20.i.i, !dbg !189761
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 36, !dbg !189762
  %i.gf = load i32, ptr %i.ge, align 4, !dbg !189762, !noalias !189579, !noundef !7548
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8double_rCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !189763

bb.af:                                            ; preds = %bb.ac
  %i.gg = add i32 %i.ft, 1, !dbg !189760
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fr, i64 36, !dbg !189764
  %i.gi = load i32, ptr %i.gh, align 4, !dbg !189764, !noalias !189579, !noundef !7548
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8double_rCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !189756

bb.ag:                                            ; preds = %bb.ac
  %i.gj = zext i32 %i.fh to i64, !dbg !189751     ; 3 uses
  %i.gk = icmp ugt i64 %i.fo, %i.gj, !dbg !189752
  call void @llvm.assume(i1 %i.gk), !dbg !189753
  %i.gl = getelementptr inbounds nuw [48 x i8], ptr %i.fn, i64 %i.gj, !dbg !189754
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 32, !dbg !189755
  %i.gn = load i32, ptr %i.gm, align 8, !dbg !189755, !noalias !189579, !noundef !7548
  %i.go = add i32 %i.gn, %i.ft, !dbg !189760
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fr, i64 36, !dbg !189764
  %i.gq = load i32, ptr %i.gp, align 4, !dbg !189764, !noalias !189579, !noundef !7548
  br label %bb.ae, !dbg !189756

bb.ah:                                            ; preds = %bb.z, %bb.r
  %.sroa.01.1.ph.i.i = phi i1 [ true, %bb.r ], [ false, %bb.z ]
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !189765
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecdENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gr)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecdEECs1LHh8CLbVkQ_11polars_core.exit.i.i unwind label %bb.ai, !dbg !189766

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecdEECs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %bb.ah
  br i1 %.sroa.01.1.ph.i.i, label %bb.aj, label %common.resume.i, !dbg !189663

bb.ai:                                            ; preds = %bb.ak, %bb.aj, %bb.ah
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #48, !dbg !189767
  unreachable, !dbg !189767

bb.aj:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecdEECs1LHh8CLbVkQ_11polars_core.exit.i.i, %.thread55.i.i
  %.sroa.02.160.i.i = phi i1 [ true, %.thread55.i.i ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecdEECs1LHh8CLbVkQ_11polars_core.exit.i.i ]
  %.pn59.i.i = phi { ptr, i32 } [ %i.ca, %.thread55.i.i ], [ %lpad.thr_comm.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecdEECs1LHh8CLbVkQ_11polars_core.exit.i.i ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !189663
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecdENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gt)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecdEECs1LHh8CLbVkQ_11polars_core.exit34.i.i unwind label %bb.ai, !dbg !189768

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecdEECs1LHh8CLbVkQ_11polars_core.exit34.i.i: ; preds = %bb.aj
  br i1 %.sroa.02.160.i.i, label %bb.ak, label %common.resume.i, !dbg !189656

common.resume.i:                                  ; preds = %bb.bd, %bb.bb, %bb.ak, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecdEECs1LHh8CLbVkQ_11polars_core.exit34.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecdEECs1LHh8CLbVkQ_11polars_core.exit.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecdEECs1LHh8CLbVkQ_11polars_core.exit.i.i ], [ %.pn59.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecdEECs1LHh8CLbVkQ_11polars_core.exit34.i.i ], [ %.pn.pn54.i.i, %bb.ak ], [ %i.kj, %bb.bd ], [ %i.kg, %bb.bb ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !189769

bb.ak:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecdEECs1LHh8CLbVkQ_11polars_core.exit34.i.i, %.thread.i.i
  %.pn.pn54.i.i = phi { ptr, i32 } [ %i.bv, %.thread.i.i ], [ %.pn59.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecdEECs1LHh8CLbVkQ_11polars_core.exit34.i.i ]
  %i.gu = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !189656
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecdENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gu)
          to label %common.resume.i unwind label %bb.ai, !dbg !189770

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8double_rCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.af, %bb.ae, %bb.ab
  %.sroa.014.0.i24.i.i = phi i32 [ %i.gf, %bb.ae ], [ 0, %bb.ab ], [ 0, %bb.af ], !dbg !189771
  %.sroa.013.2.i25.i.i = phi i32 [ %.sroa.013.1.i21.i.i, %bb.ae ], [ 0, %bb.ab ], [ %i.gi, %bb.af ], !dbg !189772
  %.sroa.0.2.i26.i.i = phi i32 [ %.sroa.0.1.i23.i.i, %bb.ae ], [ 1, %bb.ab ], [ %i.gg, %bb.af ], !dbg !189760
  %i.gv = extractvalue { i32, i32 } %i.fg, 0, !dbg !189737
  %i.gw = extractvalue { i32, i32 } %i.dr, 0, !dbg !189736
  %i.gx = add i32 %.sroa.014.0.i24.i.i, %.sroa.447.0.copyload.i.i, !dbg !189773
  %i.gy = add i32 %i.gx, %.sroa.013.2.i25.i.i, !dbg !189773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !189774, !noalias !189580
  store i32 %i.gv, ptr %i.g, align 8, !dbg !189774, !noalias !189580
  %.sroa.2.0..sroa_idx.i27.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4, !dbg !189774
  store i32 %i.fi, ptr %.sroa.2.0..sroa_idx.i27.i.i, align 4, !dbg !189774, !noalias !189580
  %.sroa.3.0..sroa_idx.i28.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !189774
  store i32 %i.gw, ptr %.sroa.3.0..sroa_idx.i28.i.i, align 8, !dbg !189774, !noalias !189580
  %.sroa.4.0..sroa_idx.i29.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12, !dbg !189774
  store i32 %i.fh, ptr %.sroa.4.0..sroa_idx.i29.i.i, align 4, !dbg !189774, !noalias !189580
  %.sroa.5.0..sroa_idx.i30.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !189774
  store i64 %.sroa.045.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i30.i.i, align 8, !dbg !189774, !noalias !189578
  %.sroa.447.0..sroa.5.0..sroa_idx.i30.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !189774
  store <2 x i32> %i.fk, ptr %.sroa.447.0..sroa.5.0..sroa_idx.i30.sroa_idx.i.i, align 8, !dbg !189774, !noalias !189578
  %.sroa.6.0..sroa_idx.i31.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !189774
  store i32 %.sroa.0.2.i26.i.i, ptr %.sroa.6.0..sroa_idx.i31.i.i, align 8, !dbg !189774, !noalias !189580
  %.sroa.7.0..sroa_idx.i32.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 36, !dbg !189774
  store i32 %i.gy, ptr %.sroa.7.0..sroa_idx.i32.i.i, align 4, !dbg !189774, !noalias !189580
  %i.gz = call { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodedEE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.g), !dbg !189775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !189776, !noalias !189580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !189765, !noalias !189566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !189663, !noalias !189566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !189656, !noalias !189566
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8rotate_rCs1LHh8CLbVkQ_11polars_core.exit, !dbg !189646

bb.al:                                            ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189581), !dbg !189777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !189778, !noalias !189582
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !189779, !noalias !189582
  call void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2), !dbg !189780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !dbg !189781, !noalias !189582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !189782, !noalias !189582
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !189783, !noalias !189582
  %i.ha = load i32, ptr %i.f, align 8, !dbg !189784, !range !8720, !noalias !189582, !noundef !7548
  %i.hb = getelementptr inbounds nuw i8, ptr %i.f, i64 4, !dbg !189784
  %i.hc = load i32, ptr %i.hb, align 4, !dbg !189784, !noalias !189582, !noundef !7548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !189785, !noalias !189582
  invoke void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodedEE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.ha, i32 noundef %i.hc)
          to label %bb.am unwind label %bb.bd, !dbg !189786

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !dbg !189787, !noalias !189582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !189788, !noalias !189582
  %i.hd = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !189789
  %i.he = getelementptr inbounds nuw i8, ptr %i.e, i64 12, !dbg !189789
  %i.hf = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !189790
  %.sroa.0.0.copyload.i3.i = load i64, ptr %i.hf, align 8, !dbg !189790, !noalias !189582
  %.sroa.4.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !189790 ; 2 uses
  %i.hg = load <2 x i32>, ptr %.sroa.4.0..sroa_idx.i4.i, align 8, !dbg !189790, !noalias !189582
  %.sroa.4.0.copyload.i5.i = load i32, ptr %.sroa.4.0..sroa_idx.i4.i, align 8, !dbg !189790, !noalias !189582
  %i.hh = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !189791
  %i.hi = getelementptr inbounds nuw i8, ptr %i.f, i64 12, !dbg !189791
  %9 = load <1 x i64>, ptr %i.hd, align 8, !dbg !189789, !noalias !189582
  %i.hj = load i32, ptr %i.he, align 4, !dbg !189789, !noalias !189582, !noundef !7548 ; 2 uses
  %10 = load <1 x i64>, ptr %i.hh, align 8, !dbg !189791, !noalias !189582
  %i.hk = load i32, ptr %i.hi, align 4, !dbg !189791, !noalias !189582, !noundef !7548 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189584), !dbg !189792
  %i.hl = icmp eq i32 %i.hj, -1, !dbg !189793
  br i1 %i.hl, label %bb.an, label %bb.ao, !dbg !189793

bb.an:                                            ; preds = %bb.am
  %i.hm = icmp eq i32 %i.hk, -1, !dbg !189794
  br i1 %i.hm, label %bb.at, label %bb.ap, !dbg !189794

bb.ao:                                            ; preds = %bb.am
  %i.hn = load ptr, ptr %i.p, align 8, !dbg !189795, !alias.scope !189585, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.ho = load i64, ptr %i.r, align 8, !dbg !189796, !alias.scope !189585, !noundef !7548 ; 2 uses
  %i.hp = zext i32 %i.hj to i64, !dbg !189797     ; 2 uses
  %i.hq = icmp ugt i64 %i.ho, %i.hp, !dbg !189798
  tail call void @llvm.assume(i1 %i.hq), !dbg !189799
  %i.hr = getelementptr inbounds nuw [48 x i8], ptr %i.hn, i64 %i.hp, !dbg !189800 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 32, !dbg !189801
  %i.ht = load i32, ptr %i.hs, align 8, !dbg !189801, !noalias !189586, !noundef !7548 ; 2 uses
  %i.hu = icmp eq i32 %i.hk, -1, !dbg !189794
  br i1 %i.hu, label %bb.ar, label %bb.as, !dbg !189794

bb.ap:                                            ; preds = %bb.an
  %i.hv = load ptr, ptr %i.p, align 8, !dbg !189802, !alias.scope !189585, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.hw = load i64, ptr %i.r, align 8, !dbg !189803, !alias.scope !189585, !noundef !7548
  %i.hx = zext i32 %i.hk to i64, !dbg !189804     ; 3 uses
  %i.hy = icmp ugt i64 %i.hw, %i.hx, !dbg !189805
  tail call void @llvm.assume(i1 %i.hy), !dbg !189806
  %i.hz = getelementptr inbounds nuw [48 x i8], ptr %i.hv, i64 %i.hx, !dbg !189807
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 32, !dbg !189808
  %i.ib = load i32, ptr %i.ia, align 8, !dbg !189808, !noalias !189586, !noundef !7548
  br label %bb.aq, !dbg !189809

bb.aq:                                            ; preds = %bb.as, %bb.ap
  %.pre-phi.i.i8.i = phi i64 [ %i.ij, %bb.as ], [ %i.hx, %bb.ap ], !dbg !189810
  %i.ic = phi ptr [ %i.hn, %bb.as ], [ %i.hv, %bb.ap ], !dbg !189811
  %.sroa.013.1.i.i9.i = phi i32 [ %i.iq, %bb.as ], [ 0, %bb.ap ], !dbg !189812
  %.sroa.0.1.in.i.i10.i = phi i32 [ %i.io, %bb.as ], [ %i.ib, %bb.ap ]
  %.sroa.0.1.i.i11.i = add i32 %.sroa.0.1.in.i.i10.i, 1, !dbg !189813
  %i.id = getelementptr inbounds nuw [48 x i8], ptr %i.ic, i64 %.pre-phi.i.i8.i, !dbg !189814
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 36, !dbg !189815
  %i.if = load i32, ptr %i.ie, align 4, !dbg !189815, !noalias !189586, !noundef !7548
  br label %bb.at, !dbg !189816

bb.ar:                                            ; preds = %bb.ao
  %i.ig = add i32 %i.ht, 1, !dbg !189813
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hr, i64 36, !dbg !189817
  %i.ii = load i32, ptr %i.ih, align 4, !dbg !189817, !noalias !189586, !noundef !7548
  br label %bb.at, !dbg !189809

bb.as:                                            ; preds = %bb.ao
  %i.ij = zext i32 %i.hk to i64, !dbg !189804     ; 3 uses
  %i.ik = icmp ugt i64 %i.ho, %i.ij, !dbg !189805
  tail call void @llvm.assume(i1 %i.ik), !dbg !189806
  %i.il = getelementptr inbounds nuw [48 x i8], ptr %i.hn, i64 %i.ij, !dbg !189807
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 32, !dbg !189808
  %i.in = load i32, ptr %i.im, align 8, !dbg !189808, !noalias !189586, !noundef !7548
  %i.io = add i32 %i.in, %i.ht, !dbg !189813
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hr, i64 36, !dbg !189817
  %i.iq = load i32, ptr %i.ip, align 4, !dbg !189817, !noalias !189586, !noundef !7548
  br label %bb.aq, !dbg !189809

bb.at:                                            ; preds = %bb.ar, %bb.aq, %bb.an
  %.sroa.014.0.i.i12.i = phi i32 [ %i.if, %bb.aq ], [ 0, %bb.an ], [ 0, %bb.ar ], !dbg !189818
  %.sroa.013.2.i.i13.i = phi i32 [ %.sroa.013.1.i.i9.i, %bb.aq ], [ 0, %bb.an ], [ %i.ii, %bb.ar ], !dbg !189819
  %.sroa.0.2.i.i14.i = phi i32 [ %.sroa.0.1.i.i11.i, %bb.aq ], [ 1, %bb.an ], [ %i.ig, %bb.ar ], !dbg !189813
  %i.ir = add i32 %.sroa.014.0.i.i12.i, %.sroa.4.0.copyload.i5.i, !dbg !189820
  %i.is = add i32 %i.ir, %.sroa.013.2.i.i13.i, !dbg !189820
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !189821, !noalias !189587
  %11 = shufflevector <1 x i64> %9, <1 x i64> %10, <2 x i32> <i32 0, i32 1>, !dbg !189821
  store <2 x i64> %11, ptr %i.b, align 16, !dbg !189821, !noalias !189587
  %.sroa.5.0..sroa_idx.i.i18.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !189821
  store i64 %.sroa.0.0.copyload.i3.i, ptr %.sroa.5.0..sroa_idx.i.i18.i, align 16, !dbg !189821, !noalias !189585
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !189821
  store <2 x i32> %i.hg, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i19.i, align 8, !dbg !189821, !noalias !189585
  %.sroa.6.0..sroa_idx.i.i21.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !189821
  store i32 %.sroa.0.2.i.i14.i, ptr %.sroa.6.0..sroa_idx.i.i21.i, align 16, !dbg !189821, !noalias !189587
  %.sroa.7.0..sroa_idx.i.i22.i = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !189821
  store i32 %i.is, ptr %.sroa.7.0..sroa_idx.i.i22.i, align 4, !dbg !189821, !noalias !189587
  %i.it = invoke { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodedEE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.au unwind label %bb.bb, !dbg !189822 ; 2 uses

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !189823, !noalias !189587
  %i.iu = extractvalue { i32, i32 } %i.it, 1, !dbg !189824 ; 5 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.e, i64 4, !dbg !189825
  %i.iw = load i32, ptr %i.iv, align 4, !dbg !189825, !noalias !189582, !noundef !7548 ; 2 uses
  %i.ix = load <2 x i32>, ptr %i.e, align 8, !dbg !189825, !noalias !189582
  %i.iy = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !189826
  %.sroa.022.0.copyload.i.i = load i64, ptr %i.iy, align 8, !dbg !189826, !noalias !189582
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !189826 ; 2 uses
  %i.iz = load <2 x i32>, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !dbg !189826, !noalias !189582
  %.sroa.424.0.copyload.i.i = load i32, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !dbg !189826, !noalias !189582
  call void @llvm.experimental.noalias.scope.decl(metadata !189588), !dbg !189827
  %i.ja = icmp eq i32 %i.iw, -1, !dbg !189828
  br i1 %i.ja, label %bb.av, label %bb.aw, !dbg !189828

bb.av:                                            ; preds = %bb.au
  %i.jb = icmp eq i32 %i.iu, -1, !dbg !189829
  br i1 %i.jb, label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8single_rCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.ax, !dbg !189829

bb.aw:                                            ; preds = %bb.au
  %i.jc = load ptr, ptr %i.p, align 8, !dbg !189830, !alias.scope !189589, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.jd = load i64, ptr %i.r, align 8, !dbg !189831, !alias.scope !189589, !noundef !7548 ; 2 uses
  %i.je = zext i32 %i.iw to i64, !dbg !189832     ; 2 uses
  %i.jf = icmp ugt i64 %i.jd, %i.je, !dbg !189833
  call void @llvm.assume(i1 %i.jf), !dbg !189834
  %i.jg = getelementptr inbounds nuw [48 x i8], ptr %i.jc, i64 %i.je, !dbg !189835 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 32, !dbg !189836
  %i.ji = load i32, ptr %i.jh, align 8, !dbg !189836, !noalias !189590, !noundef !7548 ; 2 uses
  %i.jj = icmp eq i32 %i.iu, -1, !dbg !189829
  br i1 %i.jj, label %bb.az, label %bb.ba, !dbg !189829

bb.ax:                                            ; preds = %bb.av
  %i.jk = load ptr, ptr %i.p, align 8, !dbg !189837, !alias.scope !189589, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.jl = load i64, ptr %i.r, align 8, !dbg !189838, !alias.scope !189589, !noundef !7548
  %i.jm = zext i32 %i.iu to i64, !dbg !189839     ; 3 uses
  %i.jn = icmp ugt i64 %i.jl, %i.jm, !dbg !189840
  call void @llvm.assume(i1 %i.jn), !dbg !189841
  %i.jo = getelementptr inbounds nuw [48 x i8], ptr %i.jk, i64 %i.jm, !dbg !189842
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 32, !dbg !189843
  %i.jq = load i32, ptr %i.jp, align 8, !dbg !189843, !noalias !189590, !noundef !7548
  br label %bb.ay, !dbg !189844

bb.ay:                                            ; preds = %bb.ba, %bb.ax
  %.pre-phi.i4.i.i = phi i64 [ %i.jy, %bb.ba ], [ %i.jm, %bb.ax ], !dbg !189845
  %i.jr = phi ptr [ %i.jc, %bb.ba ], [ %i.jk, %bb.ax ], !dbg !189846
  %.sroa.013.1.i5.i.i = phi i32 [ %i.kf, %bb.ba ], [ 0, %bb.ax ], !dbg !189847
  %.sroa.0.1.in.i6.i.i = phi i32 [ %i.kd, %bb.ba ], [ %i.jq, %bb.ax ]
  %.sroa.0.1.i7.i.i = add i32 %.sroa.0.1.in.i6.i.i, 1, !dbg !189848
  %i.js = getelementptr inbounds nuw [48 x i8], ptr %i.jr, i64 %.pre-phi.i4.i.i, !dbg !189849
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 36, !dbg !189850
  %i.ju = load i32, ptr %i.jt, align 4, !dbg !189850, !noalias !189590, !noundef !7548
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8single_rCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !189851

bb.az:                                            ; preds = %bb.aw
  %i.jv = add i32 %i.ji, 1, !dbg !189848
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jg, i64 36, !dbg !189852
  %i.jx = load i32, ptr %i.jw, align 4, !dbg !189852, !noalias !189590, !noundef !7548
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8single_rCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !189844

bb.ba:                                            ; preds = %bb.aw
  %i.jy = zext i32 %i.iu to i64, !dbg !189839     ; 3 uses
  %i.jz = icmp ugt i64 %i.jd, %i.jy, !dbg !189840
  call void @llvm.assume(i1 %i.jz), !dbg !189841
  %i.ka = getelementptr inbounds nuw [48 x i8], ptr %i.jc, i64 %i.jy, !dbg !189842
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 32, !dbg !189843
  %i.kc = load i32, ptr %i.kb, align 8, !dbg !189843, !noalias !189590, !noundef !7548
  %i.kd = add i32 %i.kc, %i.ji, !dbg !189848
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jg, i64 36, !dbg !189852
  %i.kf = load i32, ptr %i.ke, align 4, !dbg !189852, !noalias !189590, !noundef !7548
  br label %bb.ay, !dbg !189844

bb.bb:                                            ; preds = %bb.at
  %i.kg = landingpad { ptr, i32 }
          cleanup
  %i.kh = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !189853
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecdENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.kh)
          to label %common.resume.i unwind label %bb.bc, !dbg !189854

bb.bc:                                            ; preds = %bb.bd, %bb.bb
  %i.ki = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #48, !dbg !189855
  unreachable, !dbg !189855

bb.bd:                                            ; preds = %bb.al
  %i.kj = landingpad { ptr, i32 }
          cleanup
  %i.kk = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !189856
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecdENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.kk)
          to label %common.resume.i unwind label %bb.bc, !dbg !189857

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8single_rCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.az, %bb.ay, %bb.av
  %.sroa.014.0.i8.i.i = phi i32 [ %i.ju, %bb.ay ], [ 0, %bb.av ], [ 0, %bb.az ], !dbg !189858
  %.sroa.013.2.i9.i.i = phi i32 [ %.sroa.013.1.i5.i.i, %bb.ay ], [ 0, %bb.av ], [ %i.jx, %bb.az ], !dbg !189859
  %.sroa.0.2.i10.i.i = phi i32 [ %.sroa.0.1.i7.i.i, %bb.ay ], [ 1, %bb.av ], [ %i.jv, %bb.az ], !dbg !189848
  %i.kl = extractvalue { i32, i32 } %i.it, 0, !dbg !189824
  %i.km = add i32 %.sroa.014.0.i8.i.i, %.sroa.424.0.copyload.i.i, !dbg !189860
  %i.kn = add i32 %i.km, %.sroa.013.2.i9.i.i, !dbg !189860
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !189861, !noalias !189591
  store <2 x i32> %i.ix, ptr %i.a, align 8, !dbg !189861, !noalias !189591
  %.sroa.3.0..sroa_idx.i12.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !189861
  store i32 %i.kl, ptr %.sroa.3.0..sroa_idx.i12.i.i, align 8, !dbg !189861, !noalias !189591
  %.sroa.4.0..sroa_idx.i13.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12, !dbg !189861
  store i32 %i.iu, ptr %.sroa.4.0..sroa_idx.i13.i.i, align 4, !dbg !189861, !noalias !189591
  %.sroa.5.0..sroa_idx.i14.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !189861
  store i64 %.sroa.022.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i14.i.i, align 8, !dbg !189861, !noalias !189589
  %.sroa.424.0..sroa.5.0..sroa_idx.i14.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !189861
  store <2 x i32> %i.iz, ptr %.sroa.424.0..sroa.5.0..sroa_idx.i14.sroa_idx.i.i, align 8, !dbg !189861, !noalias !189589
  %.sroa.6.0..sroa_idx.i15.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !189861
  store i32 %.sroa.0.2.i10.i.i, ptr %.sroa.6.0..sroa_idx.i15.i.i, align 8, !dbg !189861, !noalias !189591
  %.sroa.7.0..sroa_idx.i16.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 36, !dbg !189861
  store i32 %i.kn, ptr %.sroa.7.0..sroa_idx.i16.i.i, align 4, !dbg !189861, !noalias !189591
  %i.ko = call { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodedEE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !dbg !189862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !189863, !noalias !189591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !189853, !noalias !189582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !189856, !noalias !189582
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8rotate_rCs1LHh8CLbVkQ_11polars_core.exit, !dbg !189777

bb.be:                                            ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit
  %i.kp = insertvalue { i32, i32 } poison, i32 %1, 0, !dbg !189864
  %i.kq = insertvalue { i32, i32 } %i.kp, i32 %2, 1, !dbg !189864
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8rotate_rCs1LHh8CLbVkQ_11polars_core.exit, !dbg !189864

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8rotate_rCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8single_rCs1LHh8CLbVkQ_11polars_core.exit.i, %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8double_rCs1LHh8CLbVkQ_11polars_core.exit.i, %bb.be
  %.merged = phi { i32, i32 } [ %i.kq, %bb.be ], [ %i.ko, %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8single_rCs1LHh8CLbVkQ_11polars_core.exit.i ], [ %i.gz, %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreedE8double_rCs1LHh8CLbVkQ_11polars_core.exit.i ], !dbg !189864
  ret { i32, i32 } %.merged, !dbg !189864
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE10remove_maxCs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !189865 !guid !189890 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !189917 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !dbg !189917, !nonnull !7548, !noundef !7548
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !189918
  %i.g = load i64, ptr %i.f, align 8, !dbg !189918, !noundef !7548
  %i.h = zext i32 %3 to i64, !dbg !189919         ; 3 uses
  %i.i = icmp ugt i64 %i.g, %i.h, !dbg !189920
  tail call void @llvm.assume(i1 %i.i), !dbg !189921
  %i.j = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.h, !dbg !189922 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12, !dbg !189923
  %i.l = load i32, ptr %i.k, align 4, !dbg !189923, !noundef !7548 ; 2 uses
  %i.m = icmp eq i32 %i.l, -1, !dbg !189924
  br i1 %i.m, label %bb.b, label %bb.c, !dbg !189924

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, i32 noundef %3), !dbg !189925
  %i.o = load i32, ptr %i.a, align 8, !dbg !189926, !noundef !7548 ; 2 uses
  %i.p = icmp ne i32 %i.o, 0, !dbg !189926
  tail call void @llvm.assume(i1 %i.p), !dbg !189927
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4, !dbg !189928
  %i.r = load i32, ptr %i.q, align 4, !dbg !189928, !noundef !7548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !dbg !189929
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !189929
  store i32 %i.o, ptr %i.s, align 8, !dbg !189929
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !189929
  store i32 %i.r, ptr %i.t, align 4, !dbg !189929
  br label %bb.d, !dbg !189930

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !189923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !189931
  %i.v = load i32, ptr %i.u, align 8, !dbg !189932, !range !8720, !noundef !7548
  call fastcc void @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE10remove_maxCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(48) %1, i32 noundef %i.v, i32 noundef %i.l), !dbg !189933
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8, !dbg !189934
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !189934 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !189935
  %i.x = load <2 x i32>, ptr %i.w, align 8, !dbg !189935
  %.sroa.4.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !189936
  %i.y = load <2 x i32>, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !189934
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !189934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !189937
  %i.z = load ptr, ptr %i.d, align 8, !dbg !189938, !nonnull !7548, !noundef !7548
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %i.h, !dbg !189939 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !189940
  store <2 x i32> %i.x, ptr %i.ab, align 8, !dbg !189940
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 32, !dbg !189941 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !dbg !189941, !noundef !7548
  %i.ae = add i32 %i.ad, -1, !dbg !189941
  store i32 %i.ae, ptr %i.ac, align 8, !dbg !189941
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 36, !dbg !189942 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !dbg !189942, !noundef !7548
  %i.ah = sub i32 %i.ag, %.sroa.4.0.copyload, !dbg !189942
  store i32 %i.ah, ptr %i.af, align 4, !dbg !189942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !189936
  store i64 %.sroa.0.0.copyload, ptr %i.b, align 8, !dbg !189936
end_hunk_1
begin_hunk_2_@_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE7__removeCs1LHh8CLbVkQ_11polars_core:bb.a
bb.ac:                                            ; preds = %bb.o
  %i.go = add i32 %i.cp, -1, !dbg !190579         ; 2 uses
  store i32 %i.go, ptr %i.co, align 8, !dbg !190579
  %i.gp = getelementptr inbounds nuw i8, ptr %i.cm, i64 28, !dbg !190580
  %i.gq = load i32, ptr %i.gp, align 4, !dbg !190580, !range !8720, !noundef !7548
  %i.gr = icmp eq i32 %i.gq, 1, !dbg !190581
  br i1 %i.gr, label %bb.af, label %bb.ae, !dbg !190581

bb.ad:                                            ; preds = %bb.o, %bb.af
  %.sroa.5.0 = phi float [ %i.hc, %bb.af ], [ undef, %bb.o ], !dbg !190582
  tail call void @llvm.assume(i1 %i.cq), !dbg !190583
  %i.gs = getelementptr inbounds nuw i8, ptr %i.cm, i64 36, !dbg !190584 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !dbg !190584, !noundef !7548
  %i.gu = add i32 %i.gt, -1, !dbg !190584
  store i32 %i.gu, ptr %i.gs, align 4, !dbg !190584
  store i32 1, ptr %0, align 4, !dbg !190585
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !190585
  store float %.sroa.5.0, ptr %i.gv, align 4, !dbg !190585
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !190585
  store i32 %3, ptr %i.gw, align 4, !dbg !190585
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !190585
  store i32 %4, ptr %i.gx, align 4, !dbg !190585
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !190585
  store i8 0, ptr %i.gy, align 4, !dbg !190585
  br label %bb.d, !dbg !190586

bb.ae:                                            ; preds = %bb.ac
  %i.gz = load ptr, ptr %i.cn, align 8, !dbg !190587, !noundef !7548
  br label %bb.af, !dbg !190588

bb.af:                                            ; preds = %bb.ac, %bb.ae
  %.sroa.06.0 = phi ptr [ %i.gz, %bb.ae ], [ %i.cn, %bb.ac ], !dbg !190589
  %i.ha = zext i32 %i.go to i64, !dbg !190590
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.0, i64 %i.ha, !dbg !190591
  %i.hc = load float, ptr %i.hb, align 4, !dbg !190592, !noundef !7548
  br label %bb.ad, !dbg !190593
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i32, i32 } @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE9balance_lCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !190594 !guid !190850 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 10 uses
  %i.b = alloca [40 x i8], align 16               ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 10 uses
  %i.f = alloca [40 x i8], align 8                ; 10 uses
  %i.g = alloca [40 x i8], align 8                ; 11 uses
  %i.h = alloca [40 x i8], align 16               ; 8 uses
  %i.i = alloca [40 x i8], align 16               ; 8 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 10 uses
  %i.n = alloca [40 x i8], align 8                ; 10 uses
  %i.o = alloca [40 x i8], align 8                ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !190890 ; 11 uses
  %i.q = load ptr, ptr %i.p, align 8, !dbg !190890, !nonnull !7548, !noundef !7548 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !190891 ; 11 uses
  %i.s = load i64, ptr %i.r, align 8, !dbg !190891, !noundef !7548 ; 6 uses
  %i.t = zext i32 %2 to i64, !dbg !190892         ; 2 uses
  %i.u = icmp ugt i64 %i.s, %i.t, !dbg !190893
  tail call void @llvm.assume(i1 %i.u), !dbg !190894
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.t, !dbg !190895 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4, !dbg !190896
  %i.x = load i32, ptr %i.w, align 4, !dbg !190896, !noundef !7548 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 12, !dbg !190897
  %i.z = load i32, ptr %i.y, align 4, !dbg !190897, !noundef !7548 ; 3 uses
  %i.aa = icmp eq i32 %i.x, -1, !dbg !190898
  br i1 %i.aa, label %bb.c, label %bb.b, !dbg !190898

bb.b:                                             ; preds = %bb.a
  %i.ab = zext i32 %i.x to i64, !dbg !190899      ; 2 uses
  %i.ac = icmp ugt i64 %i.s, %i.ab, !dbg !190900
  tail call void @llvm.assume(i1 %i.ac), !dbg !190901
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.ab, !dbg !190902
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32, !dbg !190903
  %i.af = load i32, ptr %i.ae, align 8, !dbg !190903, !noundef !7548
  %i.ag = zext i32 %i.af to i64, !dbg !190903
  %i.ah = add nuw nsw i64 %i.ag, 1, !dbg !190904
  br label %bb.c, !dbg !190905

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.01.0.i = phi i64 [ %i.ah, %bb.b ], [ 1, %bb.a ], !dbg !190906 ; 2 uses
  %i.ai = icmp eq i32 %i.z, -1, !dbg !190907
  br i1 %i.ai, label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit, label %bb.d, !dbg !190907

bb.d:                                             ; preds = %bb.c
  %i.aj = zext i32 %i.z to i64, !dbg !190908      ; 2 uses
  %i.ak = icmp ugt i64 %i.s, %i.aj, !dbg !190909
  tail call void @llvm.assume(i1 %i.ak), !dbg !190910
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.aj, !dbg !190911
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32, !dbg !190912
  %i.an = load i32, ptr %i.am, align 8, !dbg !190912, !noundef !7548
  %i.ao = zext i32 %i.an to i64, !dbg !190912
  %i.ap = add nuw nsw i64 %i.ao, 1, !dbg !190913
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit, !dbg !190914

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.c, %bb.d
  %.sroa.03.0.i = phi i64 [ %i.ap, %bb.d ], [ 1, %bb.c ], !dbg !190915 ; 2 uses
  %i.aq = mul nuw nsw i64 %.sroa.01.0.i, 3, !dbg !190916
  %.not.i = icmp samesign uge i64 %i.aq, %.sroa.03.0.i, !dbg !190916
  %i.ar = mul nuw nsw i64 %.sroa.03.0.i, 3, !dbg !190916
  %i.as = icmp samesign uge i64 %i.ar, %.sroa.01.0.i, !dbg !190916
  %.sroa.0.0.i = select i1 %.not.i, i1 %i.as, i1 false, !dbg !190916
  br i1 %.sroa.0.0.i, label %bb.be, label %bb.e, !dbg !190917

bb.e:                                             ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190860), !dbg !190918
  %i.at = zext i32 %i.z to i64, !dbg !190919      ; 2 uses
  %i.au = icmp ugt i64 %i.s, %i.at, !dbg !190920
  tail call void @llvm.assume(i1 %i.au), !dbg !190921
  %i.av = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.at, !dbg !190922 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4, !dbg !190923
  %i.ax = load i32, ptr %i.aw, align 4, !dbg !190923, !noalias !190860, !noundef !7548 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 12, !dbg !190924
  %i.az = load i32, ptr %i.ay, align 4, !dbg !190924, !noalias !190860, !noundef !7548 ; 2 uses
  %i.ba = icmp eq i32 %i.ax, -1, !dbg !190925
  br i1 %i.ba, label %bb.g, label %bb.f, !dbg !190925

bb.f:                                             ; preds = %bb.e
  %i.bb = zext i32 %i.ax to i64, !dbg !190926     ; 2 uses
  %i.bc = icmp ugt i64 %i.s, %i.bb, !dbg !190927
  tail call void @llvm.assume(i1 %i.bc), !dbg !190928
  %i.bd = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.bb, !dbg !190929
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32, !dbg !190930
  %i.bf = load i32, ptr %i.be, align 8, !dbg !190930, !noundef !7548
  %i.bg = zext i32 %i.bf to i64, !dbg !190930
  %i.bh = add nuw nsw i64 %i.bg, 1, !dbg !190931
  br label %bb.g, !dbg !190932

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i = phi i64 [ %i.bh, %bb.f ], [ 1, %bb.e ], !dbg !190933
  %i.bi = icmp eq i32 %i.az, -1, !dbg !190934
  br i1 %i.bi, label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.h, !dbg !190934

bb.h:                                             ; preds = %bb.g
  %i.bj = zext i32 %i.az to i64, !dbg !190935     ; 2 uses
  %i.bk = icmp ugt i64 %i.s, %i.bj, !dbg !190936
  tail call void @llvm.assume(i1 %i.bk), !dbg !190937
  %i.bl = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.bj, !dbg !190938
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32, !dbg !190939
  %i.bn = load i32, ptr %i.bm, align 8, !dbg !190939, !noundef !7548
  %i.bo = zext i32 %i.bn to i64, !dbg !190939
  %i.bp = shl nuw nsw i64 %i.bo, 1, !dbg !190940
  %i.bq = add nuw nsw i64 %i.bp, 2, !dbg !190940
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !190941

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.h, %bb.g
  %.sroa.01.0.i.i = phi i64 [ %i.bq, %bb.h ], [ 2, %bb.g ], !dbg !190942
  %i.br = icmp samesign ult i64 %.sroa.0.0.i.i, %.sroa.01.0.i.i, !dbg !190931
  br i1 %i.br, label %bb.al, label %bb.i, !dbg !190943

bb.i:                                             ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190863), !dbg !190944
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !190945, !noalias !190864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !190946, !noalias !190864
  call void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2), !dbg !190947
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false), !dbg !190948, !noalias !190864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !190949, !noalias !190864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !190950, !noalias !190864
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !190951
  %i.bt = load i32, ptr %i.bs, align 8, !dbg !190951, !range !8720, !noalias !190864, !noundef !7548
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 12, !dbg !190951
  %i.bv = load i32, ptr %i.bu, align 4, !dbg !190951, !noalias !190864, !noundef !7548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !190952, !noalias !190864
  invoke void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bt, i32 noundef %i.bv)
          to label %bb.j unwind label %.thread.i.i, !dbg !190953

.thread.i.i:                                      ; preds = %bb.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak, !dbg !190954

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false), !dbg !190955, !noalias !190864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !190956, !noalias !190864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !190957, !noalias !190864
  %i.bx = load i32, ptr %i.n, align 8, !dbg !190958, !range !8720, !noalias !190864, !noundef !7548
  %i.by = getelementptr inbounds nuw i8, ptr %i.n, i64 4, !dbg !190958
  %i.bz = load i32, ptr %i.by, align 4, !dbg !190958, !noalias !190864, !noundef !7548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !190959, !noalias !190864
  invoke void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bx, i32 noundef %i.bz)
          to label %bb.k unwind label %.thread55.i.i, !dbg !190960

.thread55.i.i:                                    ; preds = %bb.j
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj, !dbg !190961

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !dbg !190962, !noalias !190864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !190963, !noalias !190864
  %i.cb = getelementptr inbounds nuw i8, ptr %i.o, i64 4, !dbg !190964
  %i.cc = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !190965
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cc, align 8, !dbg !190965, !noalias !190864
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24, !dbg !190965 ; 2 uses
  %i.cd = load <2 x i32>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !190965, !noalias !190864
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !190965, !noalias !190864
  %i.ce = getelementptr inbounds nuw i8, ptr %i.m, i64 4, !dbg !190966
  %3 = load <1 x i64>, ptr %i.o, align 8, !dbg !190964, !noalias !190864
  %i.cf = load i32, ptr %i.cb, align 4, !dbg !190964, !noalias !190864, !noundef !7548 ; 2 uses
  %4 = load <1 x i64>, ptr %i.m, align 8, !dbg !190966, !noalias !190864
  %i.cg = load i32, ptr %i.ce, align 4, !dbg !190966, !noalias !190864, !noundef !7548 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190867), !dbg !190967
  %i.ch = icmp eq i32 %i.cf, -1, !dbg !190968
  br i1 %i.ch, label %bb.l, label %bb.m, !dbg !190968

bb.l:                                             ; preds = %bb.k
  %i.ci = icmp eq i32 %i.cg, -1, !dbg !190969
  br i1 %i.ci, label %bb.r, label %bb.n, !dbg !190969

bb.m:                                             ; preds = %bb.k
  %i.cj = load ptr, ptr %i.p, align 8, !dbg !190970, !alias.scope !190868, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.ck = load i64, ptr %i.r, align 8, !dbg !190971, !alias.scope !190868, !noundef !7548 ; 2 uses
  %i.cl = zext i32 %i.cf to i64, !dbg !190972     ; 2 uses
  %i.cm = icmp ugt i64 %i.ck, %i.cl, !dbg !190973
  tail call void @llvm.assume(i1 %i.cm), !dbg !190974
  %i.cn = getelementptr inbounds nuw [48 x i8], ptr %i.cj, i64 %i.cl, !dbg !190975 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32, !dbg !190976
  %i.cp = load i32, ptr %i.co, align 8, !dbg !190976, !noalias !190869, !noundef !7548 ; 2 uses
  %i.cq = icmp eq i32 %i.cg, -1, !dbg !190969
  br i1 %i.cq, label %bb.p, label %bb.q, !dbg !190969

bb.n:                                             ; preds = %bb.l
  %i.cr = load ptr, ptr %i.p, align 8, !dbg !190977, !alias.scope !190868, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.cs = load i64, ptr %i.r, align 8, !dbg !190978, !alias.scope !190868, !noundef !7548
  %i.ct = zext i32 %i.cg to i64, !dbg !190979     ; 3 uses
  %i.cu = icmp ugt i64 %i.cs, %i.ct, !dbg !190980
  tail call void @llvm.assume(i1 %i.cu), !dbg !190981
  %i.cv = getelementptr inbounds nuw [48 x i8], ptr %i.cr, i64 %i.ct, !dbg !190982
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32, !dbg !190983
  %i.cx = load i32, ptr %i.cw, align 8, !dbg !190983, !noalias !190869, !noundef !7548
  br label %bb.o, !dbg !190984

bb.o:                                             ; preds = %bb.q, %bb.n
  %.pre-phi.i.i.i = phi i64 [ %i.df, %bb.q ], [ %i.ct, %bb.n ], !dbg !190985
  %i.cy = phi ptr [ %i.cj, %bb.q ], [ %i.cr, %bb.n ], !dbg !190986
  %.sroa.013.1.i.i.i = phi i32 [ %i.dm, %bb.q ], [ 0, %bb.n ], !dbg !190987
  %.sroa.0.1.in.i.i.i = phi i32 [ %i.dk, %bb.q ], [ %i.cx, %bb.n ]
  %.sroa.0.1.i.i.i = add i32 %.sroa.0.1.in.i.i.i, 1, !dbg !190988
  %i.cz = getelementptr inbounds nuw [48 x i8], ptr %i.cy, i64 %.pre-phi.i.i.i, !dbg !190989
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 36, !dbg !190990
  %i.db = load i32, ptr %i.da, align 4, !dbg !190990, !noalias !190869, !noundef !7548
  br label %bb.r, !dbg !190991

bb.p:                                             ; preds = %bb.m
  %i.dc = add i32 %i.cp, 1, !dbg !190988
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 36, !dbg !190992
  %i.de = load i32, ptr %i.dd, align 4, !dbg !190992, !noalias !190869, !noundef !7548
  br label %bb.r, !dbg !190984

bb.q:                                             ; preds = %bb.m
  %i.df = zext i32 %i.cg to i64, !dbg !190979     ; 3 uses
  %i.dg = icmp ugt i64 %i.ck, %i.df, !dbg !190980
  tail call void @llvm.assume(i1 %i.dg), !dbg !190981
  %i.dh = getelementptr inbounds nuw [48 x i8], ptr %i.cj, i64 %i.df, !dbg !190982
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32, !dbg !190983
  %i.dj = load i32, ptr %i.di, align 8, !dbg !190983, !noalias !190869, !noundef !7548
  %i.dk = add i32 %i.dj, %i.cp, !dbg !190988
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cn, i64 36, !dbg !190992
  %i.dm = load i32, ptr %i.dl, align 4, !dbg !190992, !noalias !190869, !noundef !7548
  br label %bb.o, !dbg !190984

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.l
  %.sroa.014.0.i.i.i = phi i32 [ %i.db, %bb.o ], [ 0, %bb.l ], [ 0, %bb.p ], !dbg !190993
  %.sroa.013.2.i.i.i = phi i32 [ %.sroa.013.1.i.i.i, %bb.o ], [ 0, %bb.l ], [ %i.de, %bb.p ], !dbg !190994
  %.sroa.0.2.i.i.i = phi i32 [ %.sroa.0.1.i.i.i, %bb.o ], [ 1, %bb.l ], [ %i.dc, %bb.p ], !dbg !190988
  %i.dn = add i32 %.sroa.014.0.i.i.i, %.sroa.4.0.copyload.i.i, !dbg !190995
  %i.do = add i32 %i.dn, %.sroa.013.2.i.i.i, !dbg !190995
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !190996, !noalias !190870
  %5 = shufflevector <1 x i64> %3, <1 x i64> %4, <2 x i32> <i32 0, i32 1>, !dbg !190996
  store <2 x i64> %5, ptr %i.i, align 16, !dbg !190996, !noalias !190870
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !190996
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 16, !dbg !190996, !noalias !190868
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !190996
  store <2 x i32> %i.cd, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i.i, align 8, !dbg !190996, !noalias !190868
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !190996
  store i32 %.sroa.0.2.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 16, !dbg !190996, !noalias !190870
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 36, !dbg !190996
  store i32 %i.do, ptr %.sroa.7.0..sroa_idx.i.i.i, align 4, !dbg !190996, !noalias !190870
  %i.dp = invoke { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodefEE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.i)
          to label %bb.s unwind label %bb.ah, !dbg !190997 ; 2 uses

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !190998, !noalias !190870
  %i.dq = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !190999
  %i.dr = getelementptr inbounds nuw i8, ptr %i.m, i64 12, !dbg !190999
  %i.ds = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !191000
  %.sroa.039.0.copyload.i.i = load i64, ptr %i.ds, align 8, !dbg !191000, !noalias !190864
  %.sroa.441.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !191000 ; 2 uses
  %i.dt = load <2 x i32>, ptr %.sroa.441.0..sroa_idx.i.i, align 8, !dbg !191000, !noalias !190864
  %.sroa.441.0.copyload.i.i = load i32, ptr %.sroa.441.0..sroa_idx.i.i, align 8, !dbg !191000, !noalias !190864
  %i.du = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !191001
  %i.dv = getelementptr inbounds nuw i8, ptr %i.n, i64 12, !dbg !191001
  %6 = load <1 x i64>, ptr %i.dq, align 8, !dbg !190999, !noalias !190864
  %i.dw = load i32, ptr %i.dr, align 4, !dbg !190999, !noalias !190864, !noundef !7548 ; 2 uses
  %7 = load <1 x i64>, ptr %i.du, align 8, !dbg !191001, !noalias !190864
  %i.dx = load i32, ptr %i.dv, align 4, !dbg !191001, !noalias !190864, !noundef !7548 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !190871), !dbg !191002
  %i.dy = icmp eq i32 %i.dw, -1, !dbg !191003
  br i1 %i.dy, label %bb.t, label %bb.u, !dbg !191003

bb.t:                                             ; preds = %bb.s
  %i.dz = icmp eq i32 %i.dx, -1, !dbg !191004
  br i1 %i.dz, label %bb.z, label %bb.v, !dbg !191004

bb.u:                                             ; preds = %bb.s
  %i.ea = load ptr, ptr %i.p, align 8, !dbg !191005, !alias.scope !190872, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.eb = load i64, ptr %i.r, align 8, !dbg !191006, !alias.scope !190872, !noundef !7548 ; 2 uses
  %i.ec = zext i32 %i.dw to i64, !dbg !191007     ; 2 uses
  %i.ed = icmp ugt i64 %i.eb, %i.ec, !dbg !191008
  call void @llvm.assume(i1 %i.ed), !dbg !191009
  %i.ee = getelementptr inbounds nuw [48 x i8], ptr %i.ea, i64 %i.ec, !dbg !191010 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32, !dbg !191011
  %i.eg = load i32, ptr %i.ef, align 8, !dbg !191011, !noalias !190873, !noundef !7548 ; 2 uses
  %i.eh = icmp eq i32 %i.dx, -1, !dbg !191004
  br i1 %i.eh, label %bb.x, label %bb.y, !dbg !191004

bb.v:                                             ; preds = %bb.t
  %i.ei = load ptr, ptr %i.p, align 8, !dbg !191012, !alias.scope !190872, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.ej = load i64, ptr %i.r, align 8, !dbg !191013, !alias.scope !190872, !noundef !7548
  %i.ek = zext i32 %i.dx to i64, !dbg !191014     ; 3 uses
  %i.el = icmp ugt i64 %i.ej, %i.ek, !dbg !191015
  call void @llvm.assume(i1 %i.el), !dbg !191016
  %i.em = getelementptr inbounds nuw [48 x i8], ptr %i.ei, i64 %i.ek, !dbg !191017
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32, !dbg !191018
  %i.eo = load i32, ptr %i.en, align 8, !dbg !191018, !noalias !190873, !noundef !7548
  br label %bb.w, !dbg !191019

bb.w:                                             ; preds = %bb.y, %bb.v
  %.pre-phi.i6.i.i = phi i64 [ %i.ew, %bb.y ], [ %i.ek, %bb.v ], !dbg !191020
  %i.ep = phi ptr [ %i.ea, %bb.y ], [ %i.ei, %bb.v ], !dbg !191021
  %.sroa.013.1.i7.i.i = phi i32 [ %i.fd, %bb.y ], [ 0, %bb.v ], !dbg !191022
  %.sroa.0.1.in.i8.i.i = phi i32 [ %i.fb, %bb.y ], [ %i.eo, %bb.v ]
  %.sroa.0.1.i9.i.i = add i32 %.sroa.0.1.in.i8.i.i, 1, !dbg !191023
  %i.eq = getelementptr inbounds nuw [48 x i8], ptr %i.ep, i64 %.pre-phi.i6.i.i, !dbg !191024
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 36, !dbg !191025
  %i.es = load i32, ptr %i.er, align 4, !dbg !191025, !noalias !190873, !noundef !7548
  br label %bb.z, !dbg !191026

bb.x:                                             ; preds = %bb.u
  %i.et = add i32 %i.eg, 1, !dbg !191023
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ee, i64 36, !dbg !191027
  %i.ev = load i32, ptr %i.eu, align 4, !dbg !191027, !noalias !190873, !noundef !7548
  br label %bb.z, !dbg !191019

bb.y:                                             ; preds = %bb.u
  %i.ew = zext i32 %i.dx to i64, !dbg !191014     ; 3 uses
  %i.ex = icmp ugt i64 %i.eb, %i.ew, !dbg !191015
  call void @llvm.assume(i1 %i.ex), !dbg !191016
  %i.ey = getelementptr inbounds nuw [48 x i8], ptr %i.ea, i64 %i.ew, !dbg !191017
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32, !dbg !191018
  %i.fa = load i32, ptr %i.ez, align 8, !dbg !191018, !noalias !190873, !noundef !7548
  %i.fb = add i32 %i.fa, %i.eg, !dbg !191023
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ee, i64 36, !dbg !191027
  %i.fd = load i32, ptr %i.fc, align 4, !dbg !191027, !noalias !190873, !noundef !7548
  br label %bb.w, !dbg !191019

bb.z:                                             ; preds = %bb.x, %bb.w, %bb.t
  %.sroa.014.0.i10.i.i = phi i32 [ %i.es, %bb.w ], [ 0, %bb.t ], [ 0, %bb.x ], !dbg !191028
  %.sroa.013.2.i11.i.i = phi i32 [ %.sroa.013.1.i7.i.i, %bb.w ], [ 0, %bb.t ], [ %i.ev, %bb.x ], !dbg !191029
  %.sroa.0.2.i12.i.i = phi i32 [ %.sroa.0.1.i9.i.i, %bb.w ], [ 1, %bb.t ], [ %i.et, %bb.x ], !dbg !191023
  %i.fe = add i32 %.sroa.014.0.i10.i.i, %.sroa.441.0.copyload.i.i, !dbg !191030
  %i.ff = add i32 %i.fe, %.sroa.013.2.i11.i.i, !dbg !191030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !191031, !noalias !190874
  %8 = shufflevector <1 x i64> %6, <1 x i64> %7, <2 x i32> <i32 0, i32 1>, !dbg !191031
  store <2 x i64> %8, ptr %i.h, align 16, !dbg !191031, !noalias !190874
  %.sroa.5.0..sroa_idx.i16.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !191031
  store i64 %.sroa.039.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i16.i.i, align 16, !dbg !191031, !noalias !190872
  %.sroa.441.0..sroa.5.0..sroa_idx.i16.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !191031
  store <2 x i32> %i.dt, ptr %.sroa.441.0..sroa.5.0..sroa_idx.i16.sroa_idx.i.i, align 8, !dbg !191031, !noalias !190872
  %.sroa.6.0..sroa_idx.i17.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !191031
  store i32 %.sroa.0.2.i12.i.i, ptr %.sroa.6.0..sroa_idx.i17.i.i, align 16, !dbg !191031, !noalias !190874
  %.sroa.7.0..sroa_idx.i18.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36, !dbg !191031
  store i32 %i.ff, ptr %.sroa.7.0..sroa_idx.i18.i.i, align 4, !dbg !191031, !noalias !190874
  %i.fg = invoke { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodefEE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.h)
          to label %bb.aa unwind label %bb.ah, !dbg !191032 ; 2 uses

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !191033, !noalias !190874
  %i.fh = extractvalue { i32, i32 } %i.dp, 1, !dbg !191034 ; 3 uses
  %i.fi = extractvalue { i32, i32 } %i.fg, 1, !dbg !191035 ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !191036
  %.sroa.045.0.copyload.i.i = load i64, ptr %i.fj, align 8, !dbg !191036, !noalias !190864
  %.sroa.447.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !191036 ; 2 uses
  %i.fk = load <2 x i32>, ptr %.sroa.447.0..sroa_idx.i.i, align 8, !dbg !191036, !noalias !190864
  %.sroa.447.0.copyload.i.i = load i32, ptr %.sroa.447.0..sroa_idx.i.i, align 8, !dbg !191036, !noalias !190864
  call void @llvm.experimental.noalias.scope.decl(metadata !190875), !dbg !191037
  %i.fl = icmp eq i32 %i.fh, -1, !dbg !191038
  br i1 %i.fl, label %bb.ab, label %bb.ac, !dbg !191038

bb.ab:                                            ; preds = %bb.aa
  %i.fm = icmp eq i32 %i.fi, -1, !dbg !191039
  br i1 %i.fm, label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8double_lCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.ad, !dbg !191039

bb.ac:                                            ; preds = %bb.aa
  %i.fn = load ptr, ptr %i.p, align 8, !dbg !191040, !alias.scope !190876, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.fo = load i64, ptr %i.r, align 8, !dbg !191041, !alias.scope !190876, !noundef !7548 ; 2 uses
  %i.fp = zext i32 %i.fh to i64, !dbg !191042     ; 2 uses
  %i.fq = icmp ugt i64 %i.fo, %i.fp, !dbg !191043
  call void @llvm.assume(i1 %i.fq), !dbg !191044
  %i.fr = getelementptr inbounds nuw [48 x i8], ptr %i.fn, i64 %i.fp, !dbg !191045 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 32, !dbg !191046
  %i.ft = load i32, ptr %i.fs, align 8, !dbg !191046, !noalias !190877, !noundef !7548 ; 2 uses
  %i.fu = icmp eq i32 %i.fi, -1, !dbg !191039
  br i1 %i.fu, label %bb.af, label %bb.ag, !dbg !191039

bb.ad:                                            ; preds = %bb.ab
  %i.fv = load ptr, ptr %i.p, align 8, !dbg !191047, !alias.scope !190876, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.fw = load i64, ptr %i.r, align 8, !dbg !191048, !alias.scope !190876, !noundef !7548
  %i.fx = zext i32 %i.fi to i64, !dbg !191049     ; 3 uses
  %i.fy = icmp ugt i64 %i.fw, %i.fx, !dbg !191050
  call void @llvm.assume(i1 %i.fy), !dbg !191051
  %i.fz = getelementptr inbounds nuw [48 x i8], ptr %i.fv, i64 %i.fx, !dbg !191052
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 32, !dbg !191053
  %i.gb = load i32, ptr %i.ga, align 8, !dbg !191053, !noalias !190877, !noundef !7548
  br label %bb.ae, !dbg !191054

bb.ae:                                            ; preds = %bb.ag, %bb.ad
  %.pre-phi.i20.i.i = phi i64 [ %i.gj, %bb.ag ], [ %i.fx, %bb.ad ], !dbg !191055
  %i.gc = phi ptr [ %i.fn, %bb.ag ], [ %i.fv, %bb.ad ], !dbg !191056
  %.sroa.013.1.i21.i.i = phi i32 [ %i.gq, %bb.ag ], [ 0, %bb.ad ], !dbg !191057
  %.sroa.0.1.in.i22.i.i = phi i32 [ %i.go, %bb.ag ], [ %i.gb, %bb.ad ]
  %.sroa.0.1.i23.i.i = add i32 %.sroa.0.1.in.i22.i.i, 1, !dbg !191058
  %i.gd = getelementptr inbounds nuw [48 x i8], ptr %i.gc, i64 %.pre-phi.i20.i.i, !dbg !191059
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 36, !dbg !191060
  %i.gf = load i32, ptr %i.ge, align 4, !dbg !191060, !noalias !190877, !noundef !7548
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8double_lCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !191061

bb.af:                                            ; preds = %bb.ac
  %i.gg = add i32 %i.ft, 1, !dbg !191058
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fr, i64 36, !dbg !191062
  %i.gi = load i32, ptr %i.gh, align 4, !dbg !191062, !noalias !190877, !noundef !7548
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8double_lCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !191054

bb.ag:                                            ; preds = %bb.ac
  %i.gj = zext i32 %i.fi to i64, !dbg !191049     ; 3 uses
  %i.gk = icmp ugt i64 %i.fo, %i.gj, !dbg !191050
  call void @llvm.assume(i1 %i.gk), !dbg !191051
  %i.gl = getelementptr inbounds nuw [48 x i8], ptr %i.fn, i64 %i.gj, !dbg !191052
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 32, !dbg !191053
  %i.gn = load i32, ptr %i.gm, align 8, !dbg !191053, !noalias !190877, !noundef !7548
  %i.go = add i32 %i.gn, %i.ft, !dbg !191058
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fr, i64 36, !dbg !191062
  %i.gq = load i32, ptr %i.gp, align 4, !dbg !191062, !noalias !190877, !noundef !7548
  br label %bb.ae, !dbg !191054

bb.ah:                                            ; preds = %bb.z, %bb.r
  %.sroa.01.1.ph.i.i = phi i1 [ true, %bb.r ], [ false, %bb.z ]
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !191063
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecfENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gr)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecfEECs1LHh8CLbVkQ_11polars_core.exit.i.i unwind label %bb.ai, !dbg !191064

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecfEECs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %bb.ah
  br i1 %.sroa.01.1.ph.i.i, label %bb.aj, label %common.resume.i, !dbg !190961

bb.ai:                                            ; preds = %bb.ak, %bb.aj, %bb.ah
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #48, !dbg !191065
  unreachable, !dbg !191065

bb.aj:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecfEECs1LHh8CLbVkQ_11polars_core.exit.i.i, %.thread55.i.i
  %.sroa.02.160.i.i = phi i1 [ true, %.thread55.i.i ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecfEECs1LHh8CLbVkQ_11polars_core.exit.i.i ]
  %.pn59.i.i = phi { ptr, i32 } [ %i.ca, %.thread55.i.i ], [ %lpad.thr_comm.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecfEECs1LHh8CLbVkQ_11polars_core.exit.i.i ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !190961
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecfENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gt)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecfEECs1LHh8CLbVkQ_11polars_core.exit34.i.i unwind label %bb.ai, !dbg !191066

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecfEECs1LHh8CLbVkQ_11polars_core.exit34.i.i: ; preds = %bb.aj
  br i1 %.sroa.02.160.i.i, label %bb.ak, label %common.resume.i, !dbg !190954

common.resume.i:                                  ; preds = %bb.bd, %bb.bb, %bb.ak, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecfEECs1LHh8CLbVkQ_11polars_core.exit34.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecfEECs1LHh8CLbVkQ_11polars_core.exit.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecfEECs1LHh8CLbVkQ_11polars_core.exit.i.i ], [ %.pn59.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecfEECs1LHh8CLbVkQ_11polars_core.exit34.i.i ], [ %.pn.pn54.i.i, %bb.ak ], [ %i.kj, %bb.bd ], [ %i.kg, %bb.bb ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !191067

bb.ak:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecfEECs1LHh8CLbVkQ_11polars_core.exit34.i.i, %.thread.i.i
  %.pn.pn54.i.i = phi { ptr, i32 } [ %i.bw, %.thread.i.i ], [ %.pn59.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecfEECs1LHh8CLbVkQ_11polars_core.exit34.i.i ]
  %i.gu = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !190954
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecfENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gu)
          to label %common.resume.i unwind label %bb.ai, !dbg !191068

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8double_lCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.af, %bb.ae, %bb.ab
  %.sroa.014.0.i24.i.i = phi i32 [ %i.gf, %bb.ae ], [ 0, %bb.ab ], [ 0, %bb.af ], !dbg !191069
  %.sroa.013.2.i25.i.i = phi i32 [ %.sroa.013.1.i21.i.i, %bb.ae ], [ 0, %bb.ab ], [ %i.gi, %bb.af ], !dbg !191070
  %.sroa.0.2.i26.i.i = phi i32 [ %.sroa.0.1.i23.i.i, %bb.ae ], [ 1, %bb.ab ], [ %i.gg, %bb.af ], !dbg !191058
  %i.gv = extractvalue { i32, i32 } %i.fg, 0, !dbg !191035
  %i.gw = extractvalue { i32, i32 } %i.dp, 0, !dbg !191034
  %i.gx = add i32 %.sroa.014.0.i24.i.i, %.sroa.447.0.copyload.i.i, !dbg !191071
  %i.gy = add i32 %i.gx, %.sroa.013.2.i25.i.i, !dbg !191071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !191072, !noalias !190878
  store i32 %i.gw, ptr %i.g, align 8, !dbg !191072, !noalias !190878
  %.sroa.2.0..sroa_idx.i27.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4, !dbg !191072
  store i32 %i.fh, ptr %.sroa.2.0..sroa_idx.i27.i.i, align 4, !dbg !191072, !noalias !190878
  %.sroa.3.0..sroa_idx.i28.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !191072
  store i32 %i.gv, ptr %.sroa.3.0..sroa_idx.i28.i.i, align 8, !dbg !191072, !noalias !190878
  %.sroa.4.0..sroa_idx.i29.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12, !dbg !191072
  store i32 %i.fi, ptr %.sroa.4.0..sroa_idx.i29.i.i, align 4, !dbg !191072, !noalias !190878
  %.sroa.5.0..sroa_idx.i30.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !191072
  store i64 %.sroa.045.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i30.i.i, align 8, !dbg !191072, !noalias !190876
  %.sroa.447.0..sroa.5.0..sroa_idx.i30.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !191072
  store <2 x i32> %i.fk, ptr %.sroa.447.0..sroa.5.0..sroa_idx.i30.sroa_idx.i.i, align 8, !dbg !191072, !noalias !190876
  %.sroa.6.0..sroa_idx.i31.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !191072
  store i32 %.sroa.0.2.i26.i.i, ptr %.sroa.6.0..sroa_idx.i31.i.i, align 8, !dbg !191072, !noalias !190878
  %.sroa.7.0..sroa_idx.i32.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 36, !dbg !191072
  store i32 %i.gy, ptr %.sroa.7.0..sroa_idx.i32.i.i, align 4, !dbg !191072, !noalias !190878
  %i.gz = call { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodefEE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.g), !dbg !191073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !191074, !noalias !190878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !191063, !noalias !190864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !190961, !noalias !190864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !190954, !noalias !190864
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8rotate_lCs1LHh8CLbVkQ_11polars_core.exit, !dbg !190944

bb.al:                                            ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190879), !dbg !191075
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !191076, !noalias !190880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !191077, !noalias !190880
  call void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2), !dbg !191078
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !dbg !191079, !noalias !190880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !191080, !noalias !190880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !191081, !noalias !190880
  %i.ha = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !191082
  %i.hb = load i32, ptr %i.ha, align 8, !dbg !191082, !range !8720, !noalias !190880, !noundef !7548
  %i.hc = getelementptr inbounds nuw i8, ptr %i.f, i64 12, !dbg !191082
  %i.hd = load i32, ptr %i.hc, align 4, !dbg !191082, !noalias !190880, !noundef !7548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !191083, !noalias !190880
  invoke void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.hb, i32 noundef %i.hd)
          to label %bb.am unwind label %bb.bd, !dbg !191084

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !dbg !191085, !noalias !190880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !191086, !noalias !190880
  %i.he = getelementptr inbounds nuw i8, ptr %i.f, i64 4, !dbg !191087
  %i.hf = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !191088
  %.sroa.0.0.copyload.i3.i = load i64, ptr %i.hf, align 8, !dbg !191088, !noalias !190880
  %.sroa.4.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !191088 ; 2 uses
  %i.hg = load <2 x i32>, ptr %.sroa.4.0..sroa_idx.i4.i, align 8, !dbg !191088, !noalias !190880
  %.sroa.4.0.copyload.i5.i = load i32, ptr %.sroa.4.0..sroa_idx.i4.i, align 8, !dbg !191088, !noalias !190880
  %i.hh = getelementptr inbounds nuw i8, ptr %i.e, i64 4, !dbg !191089
  %9 = load <1 x i64>, ptr %i.f, align 8, !dbg !191087, !noalias !190880
  %i.hi = load i32, ptr %i.he, align 4, !dbg !191087, !noalias !190880, !noundef !7548 ; 2 uses
  %10 = load <1 x i64>, ptr %i.e, align 8, !dbg !191089, !noalias !190880
  %i.hj = load i32, ptr %i.hh, align 4, !dbg !191089, !noalias !190880, !noundef !7548 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190882), !dbg !191090
  %i.hk = icmp eq i32 %i.hi, -1, !dbg !191091
  br i1 %i.hk, label %bb.an, label %bb.ao, !dbg !191091

bb.an:                                            ; preds = %bb.am
  %i.hl = icmp eq i32 %i.hj, -1, !dbg !191092
  br i1 %i.hl, label %bb.at, label %bb.ap, !dbg !191092

bb.ao:                                            ; preds = %bb.am
  %i.hm = load ptr, ptr %i.p, align 8, !dbg !191093, !alias.scope !190883, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.hn = load i64, ptr %i.r, align 8, !dbg !191094, !alias.scope !190883, !noundef !7548 ; 2 uses
  %i.ho = zext i32 %i.hi to i64, !dbg !191095     ; 2 uses
  %i.hp = icmp ugt i64 %i.hn, %i.ho, !dbg !191096
  tail call void @llvm.assume(i1 %i.hp), !dbg !191097
  %i.hq = getelementptr inbounds nuw [48 x i8], ptr %i.hm, i64 %i.ho, !dbg !191098 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 32, !dbg !191099
  %i.hs = load i32, ptr %i.hr, align 8, !dbg !191099, !noalias !190884, !noundef !7548 ; 2 uses
  %i.ht = icmp eq i32 %i.hj, -1, !dbg !191092
  br i1 %i.ht, label %bb.ar, label %bb.as, !dbg !191092

bb.ap:                                            ; preds = %bb.an
  %i.hu = load ptr, ptr %i.p, align 8, !dbg !191100, !alias.scope !190883, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.hv = load i64, ptr %i.r, align 8, !dbg !191101, !alias.scope !190883, !noundef !7548
  %i.hw = zext i32 %i.hj to i64, !dbg !191102     ; 3 uses
  %i.hx = icmp ugt i64 %i.hv, %i.hw, !dbg !191103
  tail call void @llvm.assume(i1 %i.hx), !dbg !191104
  %i.hy = getelementptr inbounds nuw [48 x i8], ptr %i.hu, i64 %i.hw, !dbg !191105
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32, !dbg !191106
  %i.ia = load i32, ptr %i.hz, align 8, !dbg !191106, !noalias !190884, !noundef !7548
  br label %bb.aq, !dbg !191107

bb.aq:                                            ; preds = %bb.as, %bb.ap
  %.pre-phi.i.i8.i = phi i64 [ %i.ii, %bb.as ], [ %i.hw, %bb.ap ], !dbg !191108
  %i.ib = phi ptr [ %i.hm, %bb.as ], [ %i.hu, %bb.ap ], !dbg !191109
  %.sroa.013.1.i.i9.i = phi i32 [ %i.ip, %bb.as ], [ 0, %bb.ap ], !dbg !191110
  %.sroa.0.1.in.i.i10.i = phi i32 [ %i.in, %bb.as ], [ %i.ia, %bb.ap ]
  %.sroa.0.1.i.i11.i = add i32 %.sroa.0.1.in.i.i10.i, 1, !dbg !191111
  %i.ic = getelementptr inbounds nuw [48 x i8], ptr %i.ib, i64 %.pre-phi.i.i8.i, !dbg !191112
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 36, !dbg !191113
  %i.ie = load i32, ptr %i.id, align 4, !dbg !191113, !noalias !190884, !noundef !7548
  br label %bb.at, !dbg !191114

bb.ar:                                            ; preds = %bb.ao
  %i.if = add i32 %i.hs, 1, !dbg !191111
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hq, i64 36, !dbg !191115
  %i.ih = load i32, ptr %i.ig, align 4, !dbg !191115, !noalias !190884, !noundef !7548
  br label %bb.at, !dbg !191107

bb.as:                                            ; preds = %bb.ao
  %i.ii = zext i32 %i.hj to i64, !dbg !191102     ; 3 uses
  %i.ij = icmp ugt i64 %i.hn, %i.ii, !dbg !191103
  tail call void @llvm.assume(i1 %i.ij), !dbg !191104
  %i.ik = getelementptr inbounds nuw [48 x i8], ptr %i.hm, i64 %i.ii, !dbg !191105
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 32, !dbg !191106
  %i.im = load i32, ptr %i.il, align 8, !dbg !191106, !noalias !190884, !noundef !7548
  %i.in = add i32 %i.im, %i.hs, !dbg !191111
  %i.io = getelementptr inbounds nuw i8, ptr %i.hq, i64 36, !dbg !191115
  %i.ip = load i32, ptr %i.io, align 4, !dbg !191115, !noalias !190884, !noundef !7548
  br label %bb.aq, !dbg !191107

bb.at:                                            ; preds = %bb.ar, %bb.aq, %bb.an
  %.sroa.014.0.i.i12.i = phi i32 [ %i.ie, %bb.aq ], [ 0, %bb.an ], [ 0, %bb.ar ], !dbg !191116
  %.sroa.013.2.i.i13.i = phi i32 [ %.sroa.013.1.i.i9.i, %bb.aq ], [ 0, %bb.an ], [ %i.ih, %bb.ar ], !dbg !191117
  %.sroa.0.2.i.i14.i = phi i32 [ %.sroa.0.1.i.i11.i, %bb.aq ], [ 1, %bb.an ], [ %i.if, %bb.ar ], !dbg !191111
  %i.iq = add i32 %.sroa.014.0.i.i12.i, %.sroa.4.0.copyload.i5.i, !dbg !191118
  %i.ir = add i32 %i.iq, %.sroa.013.2.i.i13.i, !dbg !191118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !191119, !noalias !190885
  %11 = shufflevector <1 x i64> %9, <1 x i64> %10, <2 x i32> <i32 0, i32 1>, !dbg !191119
  store <2 x i64> %11, ptr %i.b, align 16, !dbg !191119, !noalias !190885
  %.sroa.5.0..sroa_idx.i.i18.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !191119
  store i64 %.sroa.0.0.copyload.i3.i, ptr %.sroa.5.0..sroa_idx.i.i18.i, align 16, !dbg !191119, !noalias !190883
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !191119
  store <2 x i32> %i.hg, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i19.i, align 8, !dbg !191119, !noalias !190883
  %.sroa.6.0..sroa_idx.i.i21.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !191119
  store i32 %.sroa.0.2.i.i14.i, ptr %.sroa.6.0..sroa_idx.i.i21.i, align 16, !dbg !191119, !noalias !190885
  %.sroa.7.0..sroa_idx.i.i22.i = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !191119
  store i32 %i.ir, ptr %.sroa.7.0..sroa_idx.i.i22.i, align 4, !dbg !191119, !noalias !190885
  %i.is = invoke { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodefEE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.au unwind label %bb.bb, !dbg !191120 ; 2 uses

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !191121, !noalias !190885
  %i.it = extractvalue { i32, i32 } %i.is, 1, !dbg !191122 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !191123
  %.sroa.022.0.copyload.i.i = load i64, ptr %i.iu, align 8, !dbg !191123, !noalias !190880
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !191123 ; 2 uses
  %i.iv = load <2 x i32>, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !dbg !191123, !noalias !190880
  %.sroa.424.0.copyload.i.i = load i32, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !dbg !191123, !noalias !190880
  %i.iw = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !191124
  %i.ix = getelementptr inbounds nuw i8, ptr %i.e, i64 12, !dbg !191124
  %i.iy = load i32, ptr %i.ix, align 4, !dbg !191124, !noalias !190880, !noundef !7548 ; 4 uses
  %i.iz = load <2 x i32>, ptr %i.iw, align 8, !dbg !191124, !noalias !190880
  call void @llvm.experimental.noalias.scope.decl(metadata !190886), !dbg !191125
  %i.ja = icmp eq i32 %i.it, -1, !dbg !191126
  br i1 %i.ja, label %bb.av, label %bb.aw, !dbg !191126

bb.av:                                            ; preds = %bb.au
  %i.jb = icmp eq i32 %i.iy, -1, !dbg !191127
  br i1 %i.jb, label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8single_lCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.ax, !dbg !191127

bb.aw:                                            ; preds = %bb.au
  %i.jc = load ptr, ptr %i.p, align 8, !dbg !191128, !alias.scope !190887, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.jd = load i64, ptr %i.r, align 8, !dbg !191129, !alias.scope !190887, !noundef !7548 ; 2 uses
  %i.je = zext i32 %i.it to i64, !dbg !191130     ; 2 uses
  %i.jf = icmp ugt i64 %i.jd, %i.je, !dbg !191131
  call void @llvm.assume(i1 %i.jf), !dbg !191132
  %i.jg = getelementptr inbounds nuw [48 x i8], ptr %i.jc, i64 %i.je, !dbg !191133 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 32, !dbg !191134
  %i.ji = load i32, ptr %i.jh, align 8, !dbg !191134, !noalias !190888, !noundef !7548 ; 2 uses
  %i.jj = icmp eq i32 %i.iy, -1, !dbg !191127
  br i1 %i.jj, label %bb.az, label %bb.ba, !dbg !191127

bb.ax:                                            ; preds = %bb.av
  %i.jk = load ptr, ptr %i.p, align 8, !dbg !191135, !alias.scope !190887, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.jl = load i64, ptr %i.r, align 8, !dbg !191136, !alias.scope !190887, !noundef !7548
  %i.jm = zext i32 %i.iy to i64, !dbg !191137     ; 3 uses
  %i.jn = icmp ugt i64 %i.jl, %i.jm, !dbg !191138
  call void @llvm.assume(i1 %i.jn), !dbg !191139
  %i.jo = getelementptr inbounds nuw [48 x i8], ptr %i.jk, i64 %i.jm, !dbg !191140
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 32, !dbg !191141
  %i.jq = load i32, ptr %i.jp, align 8, !dbg !191141, !noalias !190888, !noundef !7548
  br label %bb.ay, !dbg !191142

bb.ay:                                            ; preds = %bb.ba, %bb.ax
  %.pre-phi.i4.i.i = phi i64 [ %i.jy, %bb.ba ], [ %i.jm, %bb.ax ], !dbg !191143
  %i.jr = phi ptr [ %i.jc, %bb.ba ], [ %i.jk, %bb.ax ], !dbg !191144
  %.sroa.013.1.i5.i.i = phi i32 [ %i.kf, %bb.ba ], [ 0, %bb.ax ], !dbg !191145
  %.sroa.0.1.in.i6.i.i = phi i32 [ %i.kd, %bb.ba ], [ %i.jq, %bb.ax ]
  %.sroa.0.1.i7.i.i = add i32 %.sroa.0.1.in.i6.i.i, 1, !dbg !191146
  %i.js = getelementptr inbounds nuw [48 x i8], ptr %i.jr, i64 %.pre-phi.i4.i.i, !dbg !191147
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 36, !dbg !191148
  %i.ju = load i32, ptr %i.jt, align 4, !dbg !191148, !noalias !190888, !noundef !7548
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8single_lCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !191149

bb.az:                                            ; preds = %bb.aw
  %i.jv = add i32 %i.ji, 1, !dbg !191146
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jg, i64 36, !dbg !191150
  %i.jx = load i32, ptr %i.jw, align 4, !dbg !191150, !noalias !190888, !noundef !7548
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8single_lCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !191142

bb.ba:                                            ; preds = %bb.aw
  %i.jy = zext i32 %i.iy to i64, !dbg !191137     ; 3 uses
  %i.jz = icmp ugt i64 %i.jd, %i.jy, !dbg !191138
  call void @llvm.assume(i1 %i.jz), !dbg !191139
  %i.ka = getelementptr inbounds nuw [48 x i8], ptr %i.jc, i64 %i.jy, !dbg !191140
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 32, !dbg !191141
  %i.kc = load i32, ptr %i.kb, align 8, !dbg !191141, !noalias !190888, !noundef !7548
  %i.kd = add i32 %i.kc, %i.ji, !dbg !191146
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jg, i64 36, !dbg !191150
  %i.kf = load i32, ptr %i.ke, align 4, !dbg !191150, !noalias !190888, !noundef !7548
  br label %bb.ay, !dbg !191142

bb.bb:                                            ; preds = %bb.at
  %i.kg = landingpad { ptr, i32 }
          cleanup
  %i.kh = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !191151
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecfENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.kh)
          to label %common.resume.i unwind label %bb.bc, !dbg !191152

bb.bc:                                            ; preds = %bb.bd, %bb.bb
  %i.ki = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #48, !dbg !191153
  unreachable, !dbg !191153

bb.bd:                                            ; preds = %bb.al
  %i.kj = landingpad { ptr, i32 }
          cleanup
  %i.kk = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !191154
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecfENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.kk)
          to label %common.resume.i unwind label %bb.bc, !dbg !191155

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8single_lCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.az, %bb.ay, %bb.av
  %.sroa.014.0.i8.i.i = phi i32 [ %i.ju, %bb.ay ], [ 0, %bb.av ], [ 0, %bb.az ], !dbg !191156
  %.sroa.013.2.i9.i.i = phi i32 [ %.sroa.013.1.i5.i.i, %bb.ay ], [ 0, %bb.av ], [ %i.jx, %bb.az ], !dbg !191157
  %.sroa.0.2.i10.i.i = phi i32 [ %.sroa.0.1.i7.i.i, %bb.ay ], [ 1, %bb.av ], [ %i.jv, %bb.az ], !dbg !191146
  %i.kl = extractvalue { i32, i32 } %i.is, 0, !dbg !191122
  %i.km = add i32 %.sroa.014.0.i8.i.i, %.sroa.424.0.copyload.i.i, !dbg !191158
  %i.kn = add i32 %i.km, %.sroa.013.2.i9.i.i, !dbg !191158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !191159, !noalias !190889
  store i32 %i.kl, ptr %i.a, align 8, !dbg !191159, !noalias !190889
  %.sroa.2.0..sroa_idx.i11.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4, !dbg !191159
  store i32 %i.it, ptr %.sroa.2.0..sroa_idx.i11.i.i, align 4, !dbg !191159, !noalias !190889
  %.sroa.3.0..sroa_idx.i12.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !191159
  store <2 x i32> %i.iz, ptr %.sroa.3.0..sroa_idx.i12.i.i, align 8, !dbg !191159, !noalias !190889
  %.sroa.5.0..sroa_idx.i14.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !191159
  store i64 %.sroa.022.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i14.i.i, align 8, !dbg !191159, !noalias !190887
  %.sroa.424.0..sroa.5.0..sroa_idx.i14.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !191159
  store <2 x i32> %i.iv, ptr %.sroa.424.0..sroa.5.0..sroa_idx.i14.sroa_idx.i.i, align 8, !dbg !191159, !noalias !190887
  %.sroa.6.0..sroa_idx.i15.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !191159
  store i32 %.sroa.0.2.i10.i.i, ptr %.sroa.6.0..sroa_idx.i15.i.i, align 8, !dbg !191159, !noalias !190889
  %.sroa.7.0..sroa_idx.i16.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 36, !dbg !191159
  store i32 %i.kn, ptr %.sroa.7.0..sroa_idx.i16.i.i, align 4, !dbg !191159, !noalias !190889
  %i.ko = call { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodefEE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !dbg !191160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !191161, !noalias !190889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !191151, !noalias !190880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !191154, !noalias !190880
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8rotate_lCs1LHh8CLbVkQ_11polars_core.exit, !dbg !191075

bb.be:                                            ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit
  %i.kp = insertvalue { i32, i32 } poison, i32 %1, 0, !dbg !191162
  %i.kq = insertvalue { i32, i32 } %i.kp, i32 %2, 1, !dbg !191162
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8rotate_lCs1LHh8CLbVkQ_11polars_core.exit, !dbg !191162

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8rotate_lCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8single_lCs1LHh8CLbVkQ_11polars_core.exit.i, %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8double_lCs1LHh8CLbVkQ_11polars_core.exit.i, %bb.be
  %.merged = phi { i32, i32 } [ %i.kq, %bb.be ], [ %i.ko, %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8single_lCs1LHh8CLbVkQ_11polars_core.exit.i ], [ %i.gz, %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8double_lCs1LHh8CLbVkQ_11polars_core.exit.i ], !dbg !191162
  ret { i32, i32 } %.merged, !dbg !191162
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i32, i32 } @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE9balance_rCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !191163 !guid !191419 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 10 uses
  %i.b = alloca [40 x i8], align 16               ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 10 uses
  %i.f = alloca [40 x i8], align 8                ; 10 uses
  %i.g = alloca [40 x i8], align 8                ; 11 uses
  %i.h = alloca [40 x i8], align 16               ; 8 uses
  %i.i = alloca [40 x i8], align 16               ; 8 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 10 uses
  %i.n = alloca [40 x i8], align 8                ; 10 uses
  %i.o = alloca [40 x i8], align 8                ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !191459 ; 11 uses
  %i.q = load ptr, ptr %i.p, align 8, !dbg !191459, !nonnull !7548, !noundef !7548 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !191460 ; 11 uses
  %i.s = load i64, ptr %i.r, align 8, !dbg !191460, !noundef !7548 ; 6 uses
  %i.t = zext i32 %2 to i64, !dbg !191461         ; 2 uses
  %i.u = icmp ugt i64 %i.s, %i.t, !dbg !191462
  tail call void @llvm.assume(i1 %i.u), !dbg !191463
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.t, !dbg !191464 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12, !dbg !191465
  %i.x = load i32, ptr %i.w, align 4, !dbg !191465, !noundef !7548 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4, !dbg !191466
  %i.z = load i32, ptr %i.y, align 4, !dbg !191466, !noundef !7548 ; 3 uses
  %i.aa = icmp eq i32 %i.x, -1, !dbg !191467
  br i1 %i.aa, label %bb.c, label %bb.b, !dbg !191467

bb.b:                                             ; preds = %bb.a
  %i.ab = zext i32 %i.x to i64, !dbg !191468      ; 2 uses
  %i.ac = icmp ugt i64 %i.s, %i.ab, !dbg !191469
  tail call void @llvm.assume(i1 %i.ac), !dbg !191470
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.ab, !dbg !191471
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32, !dbg !191472
  %i.af = load i32, ptr %i.ae, align 8, !dbg !191472, !noundef !7548
  %i.ag = zext i32 %i.af to i64, !dbg !191472
  %i.ah = add nuw nsw i64 %i.ag, 1, !dbg !191473
  br label %bb.c, !dbg !191474

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.01.0.i = phi i64 [ %i.ah, %bb.b ], [ 1, %bb.a ], !dbg !191475 ; 2 uses
  %i.ai = icmp eq i32 %i.z, -1, !dbg !191476
  br i1 %i.ai, label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit, label %bb.d, !dbg !191476

bb.d:                                             ; preds = %bb.c
  %i.aj = zext i32 %i.z to i64, !dbg !191477      ; 2 uses
  %i.ak = icmp ugt i64 %i.s, %i.aj, !dbg !191478
  tail call void @llvm.assume(i1 %i.ak), !dbg !191479
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.aj, !dbg !191480
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32, !dbg !191481
  %i.an = load i32, ptr %i.am, align 8, !dbg !191481, !noundef !7548
  %i.ao = zext i32 %i.an to i64, !dbg !191481
  %i.ap = add nuw nsw i64 %i.ao, 1, !dbg !191482
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit, !dbg !191483

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.c, %bb.d
  %.sroa.03.0.i = phi i64 [ %i.ap, %bb.d ], [ 1, %bb.c ], !dbg !191484 ; 2 uses
  %i.aq = mul nuw nsw i64 %.sroa.01.0.i, 3, !dbg !191485
  %.not.i = icmp samesign uge i64 %i.aq, %.sroa.03.0.i, !dbg !191485
  %i.ar = mul nuw nsw i64 %.sroa.03.0.i, 3, !dbg !191485
  %i.as = icmp samesign uge i64 %i.ar, %.sroa.01.0.i, !dbg !191485
  %.sroa.0.0.i = select i1 %.not.i, i1 %i.as, i1 false, !dbg !191485
  br i1 %.sroa.0.0.i, label %bb.be, label %bb.e, !dbg !191486

bb.e:                                             ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191429), !dbg !191487
  %i.at = zext i32 %i.z to i64, !dbg !191488      ; 2 uses
  %i.au = icmp ugt i64 %i.s, %i.at, !dbg !191489
  tail call void @llvm.assume(i1 %i.au), !dbg !191490
  %i.av = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.at, !dbg !191491 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12, !dbg !191492
  %i.ax = load i32, ptr %i.aw, align 4, !dbg !191492, !noalias !191429, !noundef !7548 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 4, !dbg !191493
  %i.az = load i32, ptr %i.ay, align 4, !dbg !191493, !noalias !191429, !noundef !7548 ; 2 uses
  %i.ba = icmp eq i32 %i.ax, -1, !dbg !191494
  br i1 %i.ba, label %bb.g, label %bb.f, !dbg !191494

bb.f:                                             ; preds = %bb.e
  %i.bb = zext i32 %i.ax to i64, !dbg !191495     ; 2 uses
  %i.bc = icmp ugt i64 %i.s, %i.bb, !dbg !191496
  tail call void @llvm.assume(i1 %i.bc), !dbg !191497
  %i.bd = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.bb, !dbg !191498
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32, !dbg !191499
  %i.bf = load i32, ptr %i.be, align 8, !dbg !191499, !noundef !7548
  %i.bg = zext i32 %i.bf to i64, !dbg !191499
  %i.bh = add nuw nsw i64 %i.bg, 1, !dbg !191500
  br label %bb.g, !dbg !191501

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i = phi i64 [ %i.bh, %bb.f ], [ 1, %bb.e ], !dbg !191502
  %i.bi = icmp eq i32 %i.az, -1, !dbg !191503
  br i1 %i.bi, label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.h, !dbg !191503

bb.h:                                             ; preds = %bb.g
  %i.bj = zext i32 %i.az to i64, !dbg !191504     ; 2 uses
  %i.bk = icmp ugt i64 %i.s, %i.bj, !dbg !191505
  tail call void @llvm.assume(i1 %i.bk), !dbg !191506
  %i.bl = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.bj, !dbg !191507
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32, !dbg !191508
  %i.bn = load i32, ptr %i.bm, align 8, !dbg !191508, !noundef !7548
  %i.bo = zext i32 %i.bn to i64, !dbg !191508
  %i.bp = shl nuw nsw i64 %i.bo, 1, !dbg !191509
  %i.bq = add nuw nsw i64 %i.bp, 2, !dbg !191509
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !191510

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.h, %bb.g
  %.sroa.01.0.i.i = phi i64 [ %i.bq, %bb.h ], [ 2, %bb.g ], !dbg !191511
  %i.br = icmp samesign ult i64 %.sroa.0.0.i.i, %.sroa.01.0.i.i, !dbg !191500
  br i1 %i.br, label %bb.al, label %bb.i, !dbg !191512

bb.i:                                             ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191432), !dbg !191513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !191514, !noalias !191433
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !191515, !noalias !191433
  call void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2), !dbg !191516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false), !dbg !191517, !noalias !191433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !191518, !noalias !191433
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !191519, !noalias !191433
  %i.bs = load i32, ptr %i.o, align 8, !dbg !191520, !range !8720, !noalias !191433, !noundef !7548
  %i.bt = getelementptr inbounds nuw i8, ptr %i.o, i64 4, !dbg !191520
  %i.bu = load i32, ptr %i.bt, align 4, !dbg !191520, !noalias !191433, !noundef !7548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !191521, !noalias !191433
  invoke void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bs, i32 noundef %i.bu)
          to label %bb.j unwind label %.thread.i.i, !dbg !191522

.thread.i.i:                                      ; preds = %bb.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak, !dbg !191523

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false), !dbg !191524, !noalias !191433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !191525, !noalias !191433
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !191526, !noalias !191433
  %i.bw = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !191527
  %i.bx = load i32, ptr %i.bw, align 8, !dbg !191527, !range !8720, !noalias !191433, !noundef !7548
  %i.by = getelementptr inbounds nuw i8, ptr %i.n, i64 12, !dbg !191527
  %i.bz = load i32, ptr %i.by, align 4, !dbg !191527, !noalias !191433, !noundef !7548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !191528, !noalias !191433
  invoke void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bx, i32 noundef %i.bz)
          to label %bb.k unwind label %.thread55.i.i, !dbg !191529

.thread55.i.i:                                    ; preds = %bb.j
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj, !dbg !191530

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !dbg !191531, !noalias !191433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !191532, !noalias !191433
  %i.cb = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !191533
  %i.cc = getelementptr inbounds nuw i8, ptr %i.m, i64 12, !dbg !191533
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !191534
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cd, align 8, !dbg !191534, !noalias !191433
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24, !dbg !191534 ; 2 uses
  %i.ce = load <2 x i32>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !191534, !noalias !191433
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !191534, !noalias !191433
  %i.cf = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !191535
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 12, !dbg !191535
  %3 = load <1 x i64>, ptr %i.cb, align 8, !dbg !191533, !noalias !191433
  %i.ch = load i32, ptr %i.cc, align 4, !dbg !191533, !noalias !191433, !noundef !7548 ; 2 uses
  %4 = load <1 x i64>, ptr %i.cf, align 8, !dbg !191535, !noalias !191433
  %i.ci = load i32, ptr %i.cg, align 4, !dbg !191535, !noalias !191433, !noundef !7548 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191436), !dbg !191536
  %i.cj = icmp eq i32 %i.ch, -1, !dbg !191537
  br i1 %i.cj, label %bb.l, label %bb.m, !dbg !191537

bb.l:                                             ; preds = %bb.k
  %i.ck = icmp eq i32 %i.ci, -1, !dbg !191538
  br i1 %i.ck, label %bb.r, label %bb.n, !dbg !191538

bb.m:                                             ; preds = %bb.k
  %i.cl = load ptr, ptr %i.p, align 8, !dbg !191539, !alias.scope !191437, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.cm = load i64, ptr %i.r, align 8, !dbg !191540, !alias.scope !191437, !noundef !7548 ; 2 uses
  %i.cn = zext i32 %i.ch to i64, !dbg !191541     ; 2 uses
  %i.co = icmp ugt i64 %i.cm, %i.cn, !dbg !191542
  tail call void @llvm.assume(i1 %i.co), !dbg !191543
  %i.cp = getelementptr inbounds nuw [48 x i8], ptr %i.cl, i64 %i.cn, !dbg !191544 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32, !dbg !191545
  %i.cr = load i32, ptr %i.cq, align 8, !dbg !191545, !noalias !191438, !noundef !7548 ; 2 uses
  %i.cs = icmp eq i32 %i.ci, -1, !dbg !191538
  br i1 %i.cs, label %bb.p, label %bb.q, !dbg !191538

bb.n:                                             ; preds = %bb.l
  %i.ct = load ptr, ptr %i.p, align 8, !dbg !191546, !alias.scope !191437, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.cu = load i64, ptr %i.r, align 8, !dbg !191547, !alias.scope !191437, !noundef !7548
  %i.cv = zext i32 %i.ci to i64, !dbg !191548     ; 3 uses
  %i.cw = icmp ugt i64 %i.cu, %i.cv, !dbg !191549
  tail call void @llvm.assume(i1 %i.cw), !dbg !191550
  %i.cx = getelementptr inbounds nuw [48 x i8], ptr %i.ct, i64 %i.cv, !dbg !191551
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32, !dbg !191552
  %i.cz = load i32, ptr %i.cy, align 8, !dbg !191552, !noalias !191438, !noundef !7548
  br label %bb.o, !dbg !191553

bb.o:                                             ; preds = %bb.q, %bb.n
  %.pre-phi.i.i.i = phi i64 [ %i.dh, %bb.q ], [ %i.cv, %bb.n ], !dbg !191554
  %i.da = phi ptr [ %i.cl, %bb.q ], [ %i.ct, %bb.n ], !dbg !191555
  %.sroa.013.1.i.i.i = phi i32 [ %i.do, %bb.q ], [ 0, %bb.n ], !dbg !191556
  %.sroa.0.1.in.i.i.i = phi i32 [ %i.dm, %bb.q ], [ %i.cz, %bb.n ]
  %.sroa.0.1.i.i.i = add i32 %.sroa.0.1.in.i.i.i, 1, !dbg !191557
  %i.db = getelementptr inbounds nuw [48 x i8], ptr %i.da, i64 %.pre-phi.i.i.i, !dbg !191558
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 36, !dbg !191559
  %i.dd = load i32, ptr %i.dc, align 4, !dbg !191559, !noalias !191438, !noundef !7548
  br label %bb.r, !dbg !191560

bb.p:                                             ; preds = %bb.m
  %i.de = add i32 %i.cr, 1, !dbg !191557
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 36, !dbg !191561
  %i.dg = load i32, ptr %i.df, align 4, !dbg !191561, !noalias !191438, !noundef !7548
  br label %bb.r, !dbg !191553

bb.q:                                             ; preds = %bb.m
  %i.dh = zext i32 %i.ci to i64, !dbg !191548     ; 3 uses
  %i.di = icmp ugt i64 %i.cm, %i.dh, !dbg !191549
  tail call void @llvm.assume(i1 %i.di), !dbg !191550
  %i.dj = getelementptr inbounds nuw [48 x i8], ptr %i.cl, i64 %i.dh, !dbg !191551
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32, !dbg !191552
  %i.dl = load i32, ptr %i.dk, align 8, !dbg !191552, !noalias !191438, !noundef !7548
  %i.dm = add i32 %i.dl, %i.cr, !dbg !191557
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cp, i64 36, !dbg !191561
  %i.do = load i32, ptr %i.dn, align 4, !dbg !191561, !noalias !191438, !noundef !7548
  br label %bb.o, !dbg !191553

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.l
  %.sroa.014.0.i.i.i = phi i32 [ %i.dd, %bb.o ], [ 0, %bb.l ], [ 0, %bb.p ], !dbg !191562
  %.sroa.013.2.i.i.i = phi i32 [ %.sroa.013.1.i.i.i, %bb.o ], [ 0, %bb.l ], [ %i.dg, %bb.p ], !dbg !191563
  %.sroa.0.2.i.i.i = phi i32 [ %.sroa.0.1.i.i.i, %bb.o ], [ 1, %bb.l ], [ %i.de, %bb.p ], !dbg !191557
  %i.dp = add i32 %.sroa.014.0.i.i.i, %.sroa.4.0.copyload.i.i, !dbg !191564
  %i.dq = add i32 %i.dp, %.sroa.013.2.i.i.i, !dbg !191564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !191565, !noalias !191439
  %5 = shufflevector <1 x i64> %3, <1 x i64> %4, <2 x i32> <i32 0, i32 1>, !dbg !191565
  store <2 x i64> %5, ptr %i.i, align 16, !dbg !191565, !noalias !191439
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !191565
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 16, !dbg !191565, !noalias !191437
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !191565
  store <2 x i32> %i.ce, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i.i, align 8, !dbg !191565, !noalias !191437
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !191565
  store i32 %.sroa.0.2.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 16, !dbg !191565, !noalias !191439
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 36, !dbg !191565
  store i32 %i.dq, ptr %.sroa.7.0..sroa_idx.i.i.i, align 4, !dbg !191565, !noalias !191439
  %i.dr = invoke { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodefEE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.i)
          to label %bb.s unwind label %bb.ah, !dbg !191566 ; 2 uses

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !191567, !noalias !191439
  %i.ds = getelementptr inbounds nuw i8, ptr %i.n, i64 4, !dbg !191568
  %i.dt = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !191569
  %.sroa.039.0.copyload.i.i = load i64, ptr %i.dt, align 8, !dbg !191569, !noalias !191433
  %.sroa.441.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !191569 ; 2 uses
  %i.du = load <2 x i32>, ptr %.sroa.441.0..sroa_idx.i.i, align 8, !dbg !191569, !noalias !191433
  %.sroa.441.0.copyload.i.i = load i32, ptr %.sroa.441.0..sroa_idx.i.i, align 8, !dbg !191569, !noalias !191433
  %i.dv = getelementptr inbounds nuw i8, ptr %i.m, i64 4, !dbg !191570
  %6 = load <1 x i64>, ptr %i.n, align 8, !dbg !191568, !noalias !191433
  %i.dw = load i32, ptr %i.ds, align 4, !dbg !191568, !noalias !191433, !noundef !7548 ; 2 uses
  %7 = load <1 x i64>, ptr %i.m, align 8, !dbg !191570, !noalias !191433
  %i.dx = load i32, ptr %i.dv, align 4, !dbg !191570, !noalias !191433, !noundef !7548 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !191440), !dbg !191571
  %i.dy = icmp eq i32 %i.dw, -1, !dbg !191572
  br i1 %i.dy, label %bb.t, label %bb.u, !dbg !191572

bb.t:                                             ; preds = %bb.s
  %i.dz = icmp eq i32 %i.dx, -1, !dbg !191573
  br i1 %i.dz, label %bb.z, label %bb.v, !dbg !191573

bb.u:                                             ; preds = %bb.s
  %i.ea = load ptr, ptr %i.p, align 8, !dbg !191574, !alias.scope !191441, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.eb = load i64, ptr %i.r, align 8, !dbg !191575, !alias.scope !191441, !noundef !7548 ; 2 uses
  %i.ec = zext i32 %i.dw to i64, !dbg !191576     ; 2 uses
  %i.ed = icmp ugt i64 %i.eb, %i.ec, !dbg !191577
  call void @llvm.assume(i1 %i.ed), !dbg !191578
  %i.ee = getelementptr inbounds nuw [48 x i8], ptr %i.ea, i64 %i.ec, !dbg !191579 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32, !dbg !191580
  %i.eg = load i32, ptr %i.ef, align 8, !dbg !191580, !noalias !191442, !noundef !7548 ; 2 uses
  %i.eh = icmp eq i32 %i.dx, -1, !dbg !191573
  br i1 %i.eh, label %bb.x, label %bb.y, !dbg !191573

bb.v:                                             ; preds = %bb.t
  %i.ei = load ptr, ptr %i.p, align 8, !dbg !191581, !alias.scope !191441, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.ej = load i64, ptr %i.r, align 8, !dbg !191582, !alias.scope !191441, !noundef !7548
  %i.ek = zext i32 %i.dx to i64, !dbg !191583     ; 3 uses
  %i.el = icmp ugt i64 %i.ej, %i.ek, !dbg !191584
  call void @llvm.assume(i1 %i.el), !dbg !191585
  %i.em = getelementptr inbounds nuw [48 x i8], ptr %i.ei, i64 %i.ek, !dbg !191586
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32, !dbg !191587
  %i.eo = load i32, ptr %i.en, align 8, !dbg !191587, !noalias !191442, !noundef !7548
  br label %bb.w, !dbg !191588

bb.w:                                             ; preds = %bb.y, %bb.v
  %.pre-phi.i6.i.i = phi i64 [ %i.ew, %bb.y ], [ %i.ek, %bb.v ], !dbg !191589
  %i.ep = phi ptr [ %i.ea, %bb.y ], [ %i.ei, %bb.v ], !dbg !191590
  %.sroa.013.1.i7.i.i = phi i32 [ %i.fd, %bb.y ], [ 0, %bb.v ], !dbg !191591
  %.sroa.0.1.in.i8.i.i = phi i32 [ %i.fb, %bb.y ], [ %i.eo, %bb.v ]
  %.sroa.0.1.i9.i.i = add i32 %.sroa.0.1.in.i8.i.i, 1, !dbg !191592
  %i.eq = getelementptr inbounds nuw [48 x i8], ptr %i.ep, i64 %.pre-phi.i6.i.i, !dbg !191593
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 36, !dbg !191594
  %i.es = load i32, ptr %i.er, align 4, !dbg !191594, !noalias !191442, !noundef !7548
  br label %bb.z, !dbg !191595

bb.x:                                             ; preds = %bb.u
  %i.et = add i32 %i.eg, 1, !dbg !191592
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ee, i64 36, !dbg !191596
  %i.ev = load i32, ptr %i.eu, align 4, !dbg !191596, !noalias !191442, !noundef !7548
  br label %bb.z, !dbg !191588

bb.y:                                             ; preds = %bb.u
  %i.ew = zext i32 %i.dx to i64, !dbg !191583     ; 3 uses
  %i.ex = icmp ugt i64 %i.eb, %i.ew, !dbg !191584
  call void @llvm.assume(i1 %i.ex), !dbg !191585
  %i.ey = getelementptr inbounds nuw [48 x i8], ptr %i.ea, i64 %i.ew, !dbg !191586
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32, !dbg !191587
  %i.fa = load i32, ptr %i.ez, align 8, !dbg !191587, !noalias !191442, !noundef !7548
  %i.fb = add i32 %i.fa, %i.eg, !dbg !191592
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ee, i64 36, !dbg !191596
  %i.fd = load i32, ptr %i.fc, align 4, !dbg !191596, !noalias !191442, !noundef !7548
  br label %bb.w, !dbg !191588

bb.z:                                             ; preds = %bb.x, %bb.w, %bb.t
  %.sroa.014.0.i10.i.i = phi i32 [ %i.es, %bb.w ], [ 0, %bb.t ], [ 0, %bb.x ], !dbg !191597
  %.sroa.013.2.i11.i.i = phi i32 [ %.sroa.013.1.i7.i.i, %bb.w ], [ 0, %bb.t ], [ %i.ev, %bb.x ], !dbg !191598
  %.sroa.0.2.i12.i.i = phi i32 [ %.sroa.0.1.i9.i.i, %bb.w ], [ 1, %bb.t ], [ %i.et, %bb.x ], !dbg !191592
  %i.fe = add i32 %.sroa.014.0.i10.i.i, %.sroa.441.0.copyload.i.i, !dbg !191599
  %i.ff = add i32 %i.fe, %.sroa.013.2.i11.i.i, !dbg !191599
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !191600, !noalias !191443
  %8 = shufflevector <1 x i64> %6, <1 x i64> %7, <2 x i32> <i32 0, i32 1>, !dbg !191600
  store <2 x i64> %8, ptr %i.h, align 16, !dbg !191600, !noalias !191443
  %.sroa.5.0..sroa_idx.i16.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !191600
  store i64 %.sroa.039.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i16.i.i, align 16, !dbg !191600, !noalias !191441
  %.sroa.441.0..sroa.5.0..sroa_idx.i16.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !191600
  store <2 x i32> %i.du, ptr %.sroa.441.0..sroa.5.0..sroa_idx.i16.sroa_idx.i.i, align 8, !dbg !191600, !noalias !191441
  %.sroa.6.0..sroa_idx.i17.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !191600
  store i32 %.sroa.0.2.i12.i.i, ptr %.sroa.6.0..sroa_idx.i17.i.i, align 16, !dbg !191600, !noalias !191443
  %.sroa.7.0..sroa_idx.i18.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36, !dbg !191600
  store i32 %i.ff, ptr %.sroa.7.0..sroa_idx.i18.i.i, align 4, !dbg !191600, !noalias !191443
  %i.fg = invoke { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodefEE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.h)
          to label %bb.aa unwind label %bb.ah, !dbg !191601 ; 2 uses

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !191602, !noalias !191443
  %i.fh = extractvalue { i32, i32 } %i.dr, 1, !dbg !191603 ; 5 uses
  %i.fi = extractvalue { i32, i32 } %i.fg, 1, !dbg !191604 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !191605
  %.sroa.045.0.copyload.i.i = load i64, ptr %i.fj, align 8, !dbg !191605, !noalias !191433
  %.sroa.447.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !191605 ; 2 uses
  %i.fk = load <2 x i32>, ptr %.sroa.447.0..sroa_idx.i.i, align 8, !dbg !191605, !noalias !191433
  %.sroa.447.0.copyload.i.i = load i32, ptr %.sroa.447.0..sroa_idx.i.i, align 8, !dbg !191605, !noalias !191433
  call void @llvm.experimental.noalias.scope.decl(metadata !191444), !dbg !191606
  %i.fl = icmp eq i32 %i.fi, -1, !dbg !191607
  br i1 %i.fl, label %bb.ab, label %bb.ac, !dbg !191607

bb.ab:                                            ; preds = %bb.aa
  %i.fm = icmp eq i32 %i.fh, -1, !dbg !191608
  br i1 %i.fm, label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8double_rCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.ad, !dbg !191608

bb.ac:                                            ; preds = %bb.aa
  %i.fn = load ptr, ptr %i.p, align 8, !dbg !191609, !alias.scope !191445, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.fo = load i64, ptr %i.r, align 8, !dbg !191610, !alias.scope !191445, !noundef !7548 ; 2 uses
  %i.fp = zext i32 %i.fi to i64, !dbg !191611     ; 2 uses
  %i.fq = icmp ugt i64 %i.fo, %i.fp, !dbg !191612
  call void @llvm.assume(i1 %i.fq), !dbg !191613
  %i.fr = getelementptr inbounds nuw [48 x i8], ptr %i.fn, i64 %i.fp, !dbg !191614 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 32, !dbg !191615
  %i.ft = load i32, ptr %i.fs, align 8, !dbg !191615, !noalias !191446, !noundef !7548 ; 2 uses
  %i.fu = icmp eq i32 %i.fh, -1, !dbg !191608
  br i1 %i.fu, label %bb.af, label %bb.ag, !dbg !191608

bb.ad:                                            ; preds = %bb.ab
  %i.fv = load ptr, ptr %i.p, align 8, !dbg !191616, !alias.scope !191445, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.fw = load i64, ptr %i.r, align 8, !dbg !191617, !alias.scope !191445, !noundef !7548
  %i.fx = zext i32 %i.fh to i64, !dbg !191618     ; 3 uses
  %i.fy = icmp ugt i64 %i.fw, %i.fx, !dbg !191619
  call void @llvm.assume(i1 %i.fy), !dbg !191620
  %i.fz = getelementptr inbounds nuw [48 x i8], ptr %i.fv, i64 %i.fx, !dbg !191621
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 32, !dbg !191622
  %i.gb = load i32, ptr %i.ga, align 8, !dbg !191622, !noalias !191446, !noundef !7548
  br label %bb.ae, !dbg !191623

bb.ae:                                            ; preds = %bb.ag, %bb.ad
  %.pre-phi.i20.i.i = phi i64 [ %i.gj, %bb.ag ], [ %i.fx, %bb.ad ], !dbg !191624
  %i.gc = phi ptr [ %i.fn, %bb.ag ], [ %i.fv, %bb.ad ], !dbg !191625
  %.sroa.013.1.i21.i.i = phi i32 [ %i.gq, %bb.ag ], [ 0, %bb.ad ], !dbg !191626
  %.sroa.0.1.in.i22.i.i = phi i32 [ %i.go, %bb.ag ], [ %i.gb, %bb.ad ]
  %.sroa.0.1.i23.i.i = add i32 %.sroa.0.1.in.i22.i.i, 1, !dbg !191627
  %i.gd = getelementptr inbounds nuw [48 x i8], ptr %i.gc, i64 %.pre-phi.i20.i.i, !dbg !191628
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 36, !dbg !191629
  %i.gf = load i32, ptr %i.ge, align 4, !dbg !191629, !noalias !191446, !noundef !7548
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8double_rCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !191630

bb.af:                                            ; preds = %bb.ac
  %i.gg = add i32 %i.ft, 1, !dbg !191627
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fr, i64 36, !dbg !191631
  %i.gi = load i32, ptr %i.gh, align 4, !dbg !191631, !noalias !191446, !noundef !7548
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8double_rCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !191623

bb.ag:                                            ; preds = %bb.ac
  %i.gj = zext i32 %i.fh to i64, !dbg !191618     ; 3 uses
  %i.gk = icmp ugt i64 %i.fo, %i.gj, !dbg !191619
  call void @llvm.assume(i1 %i.gk), !dbg !191620
  %i.gl = getelementptr inbounds nuw [48 x i8], ptr %i.fn, i64 %i.gj, !dbg !191621
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 32, !dbg !191622
  %i.gn = load i32, ptr %i.gm, align 8, !dbg !191622, !noalias !191446, !noundef !7548
  %i.go = add i32 %i.gn, %i.ft, !dbg !191627
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fr, i64 36, !dbg !191631
  %i.gq = load i32, ptr %i.gp, align 4, !dbg !191631, !noalias !191446, !noundef !7548
  br label %bb.ae, !dbg !191623

bb.ah:                                            ; preds = %bb.z, %bb.r
  %.sroa.01.1.ph.i.i = phi i1 [ true, %bb.r ], [ false, %bb.z ]
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !191632
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecfENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gr)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecfEECs1LHh8CLbVkQ_11polars_core.exit.i.i unwind label %bb.ai, !dbg !191633

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecfEECs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %bb.ah
  br i1 %.sroa.01.1.ph.i.i, label %bb.aj, label %common.resume.i, !dbg !191530

bb.ai:                                            ; preds = %bb.ak, %bb.aj, %bb.ah
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #48, !dbg !191634
  unreachable, !dbg !191634

bb.aj:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecfEECs1LHh8CLbVkQ_11polars_core.exit.i.i, %.thread55.i.i
  %.sroa.02.160.i.i = phi i1 [ true, %.thread55.i.i ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecfEECs1LHh8CLbVkQ_11polars_core.exit.i.i ]
  %.pn59.i.i = phi { ptr, i32 } [ %i.ca, %.thread55.i.i ], [ %lpad.thr_comm.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecfEECs1LHh8CLbVkQ_11polars_core.exit.i.i ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !191530
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecfENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gt)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecfEECs1LHh8CLbVkQ_11polars_core.exit34.i.i unwind label %bb.ai, !dbg !191635

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecfEECs1LHh8CLbVkQ_11polars_core.exit34.i.i: ; preds = %bb.aj
  br i1 %.sroa.02.160.i.i, label %bb.ak, label %common.resume.i, !dbg !191523

common.resume.i:                                  ; preds = %bb.bd, %bb.bb, %bb.ak, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecfEECs1LHh8CLbVkQ_11polars_core.exit34.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecfEECs1LHh8CLbVkQ_11polars_core.exit.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecfEECs1LHh8CLbVkQ_11polars_core.exit.i.i ], [ %.pn59.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecfEECs1LHh8CLbVkQ_11polars_core.exit34.i.i ], [ %.pn.pn54.i.i, %bb.ak ], [ %i.kj, %bb.bd ], [ %i.kg, %bb.bb ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !191636

bb.ak:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecfEECs1LHh8CLbVkQ_11polars_core.exit34.i.i, %.thread.i.i
  %.pn.pn54.i.i = phi { ptr, i32 } [ %i.bv, %.thread.i.i ], [ %.pn59.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecfEECs1LHh8CLbVkQ_11polars_core.exit34.i.i ]
  %i.gu = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !191523
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecfENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gu)
          to label %common.resume.i unwind label %bb.ai, !dbg !191637

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8double_rCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.af, %bb.ae, %bb.ab
  %.sroa.014.0.i24.i.i = phi i32 [ %i.gf, %bb.ae ], [ 0, %bb.ab ], [ 0, %bb.af ], !dbg !191638
  %.sroa.013.2.i25.i.i = phi i32 [ %.sroa.013.1.i21.i.i, %bb.ae ], [ 0, %bb.ab ], [ %i.gi, %bb.af ], !dbg !191639
  %.sroa.0.2.i26.i.i = phi i32 [ %.sroa.0.1.i23.i.i, %bb.ae ], [ 1, %bb.ab ], [ %i.gg, %bb.af ], !dbg !191627
  %i.gv = extractvalue { i32, i32 } %i.fg, 0, !dbg !191604
  %i.gw = extractvalue { i32, i32 } %i.dr, 0, !dbg !191603
  %i.gx = add i32 %.sroa.014.0.i24.i.i, %.sroa.447.0.copyload.i.i, !dbg !191640
  %i.gy = add i32 %i.gx, %.sroa.013.2.i25.i.i, !dbg !191640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !191641, !noalias !191447
  store i32 %i.gv, ptr %i.g, align 8, !dbg !191641, !noalias !191447
  %.sroa.2.0..sroa_idx.i27.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4, !dbg !191641
  store i32 %i.fi, ptr %.sroa.2.0..sroa_idx.i27.i.i, align 4, !dbg !191641, !noalias !191447
  %.sroa.3.0..sroa_idx.i28.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !191641
  store i32 %i.gw, ptr %.sroa.3.0..sroa_idx.i28.i.i, align 8, !dbg !191641, !noalias !191447
  %.sroa.4.0..sroa_idx.i29.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12, !dbg !191641
  store i32 %i.fh, ptr %.sroa.4.0..sroa_idx.i29.i.i, align 4, !dbg !191641, !noalias !191447
  %.sroa.5.0..sroa_idx.i30.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !191641
  store i64 %.sroa.045.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i30.i.i, align 8, !dbg !191641, !noalias !191445
  %.sroa.447.0..sroa.5.0..sroa_idx.i30.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !191641
  store <2 x i32> %i.fk, ptr %.sroa.447.0..sroa.5.0..sroa_idx.i30.sroa_idx.i.i, align 8, !dbg !191641, !noalias !191445
  %.sroa.6.0..sroa_idx.i31.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !191641
  store i32 %.sroa.0.2.i26.i.i, ptr %.sroa.6.0..sroa_idx.i31.i.i, align 8, !dbg !191641, !noalias !191447
  %.sroa.7.0..sroa_idx.i32.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 36, !dbg !191641
  store i32 %i.gy, ptr %.sroa.7.0..sroa_idx.i32.i.i, align 4, !dbg !191641, !noalias !191447
  %i.gz = call { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodefEE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.g), !dbg !191642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !191643, !noalias !191447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !191632, !noalias !191433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !191530, !noalias !191433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !191523, !noalias !191433
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8rotate_rCs1LHh8CLbVkQ_11polars_core.exit, !dbg !191513

bb.al:                                            ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE9is_singleCs1LHh8CLbVkQ_11polars_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191448), !dbg !191644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !191645, !noalias !191449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !191646, !noalias !191449
  call void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2), !dbg !191647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !dbg !191648, !noalias !191449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !191649, !noalias !191449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !191650, !noalias !191449
  %i.ha = load i32, ptr %i.f, align 8, !dbg !191651, !range !8720, !noalias !191449, !noundef !7548
  %i.hb = getelementptr inbounds nuw i8, ptr %i.f, i64 4, !dbg !191651
  %i.hc = load i32, ptr %i.hb, align 4, !dbg !191651, !noalias !191449, !noundef !7548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !191652, !noalias !191449
  invoke void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBP_4NodefEE6removeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.ha, i32 noundef %i.hc)
          to label %bb.am unwind label %bb.bd, !dbg !191653

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !dbg !191654, !noalias !191449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !191655, !noalias !191449
  %i.hd = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !191656
  %i.he = getelementptr inbounds nuw i8, ptr %i.e, i64 12, !dbg !191656
  %i.hf = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !191657
  %.sroa.0.0.copyload.i3.i = load i64, ptr %i.hf, align 8, !dbg !191657, !noalias !191449
  %.sroa.4.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !191657 ; 2 uses
  %i.hg = load <2 x i32>, ptr %.sroa.4.0..sroa_idx.i4.i, align 8, !dbg !191657, !noalias !191449
  %.sroa.4.0.copyload.i5.i = load i32, ptr %.sroa.4.0..sroa_idx.i4.i, align 8, !dbg !191657, !noalias !191449
  %i.hh = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !191658
  %i.hi = getelementptr inbounds nuw i8, ptr %i.f, i64 12, !dbg !191658
  %9 = load <1 x i64>, ptr %i.hd, align 8, !dbg !191656, !noalias !191449
  %i.hj = load i32, ptr %i.he, align 4, !dbg !191656, !noalias !191449, !noundef !7548 ; 2 uses
  %10 = load <1 x i64>, ptr %i.hh, align 8, !dbg !191658, !noalias !191449
  %i.hk = load i32, ptr %i.hi, align 4, !dbg !191658, !noalias !191449, !noundef !7548 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191451), !dbg !191659
  %i.hl = icmp eq i32 %i.hj, -1, !dbg !191660
  br i1 %i.hl, label %bb.an, label %bb.ao, !dbg !191660

bb.an:                                            ; preds = %bb.am
  %i.hm = icmp eq i32 %i.hk, -1, !dbg !191661
  br i1 %i.hm, label %bb.at, label %bb.ap, !dbg !191661

bb.ao:                                            ; preds = %bb.am
  %i.hn = load ptr, ptr %i.p, align 8, !dbg !191662, !alias.scope !191452, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.ho = load i64, ptr %i.r, align 8, !dbg !191663, !alias.scope !191452, !noundef !7548 ; 2 uses
  %i.hp = zext i32 %i.hj to i64, !dbg !191664     ; 2 uses
  %i.hq = icmp ugt i64 %i.ho, %i.hp, !dbg !191665
  tail call void @llvm.assume(i1 %i.hq), !dbg !191666
  %i.hr = getelementptr inbounds nuw [48 x i8], ptr %i.hn, i64 %i.hp, !dbg !191667 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 32, !dbg !191668
  %i.ht = load i32, ptr %i.hs, align 8, !dbg !191668, !noalias !191453, !noundef !7548 ; 2 uses
  %i.hu = icmp eq i32 %i.hk, -1, !dbg !191661
  br i1 %i.hu, label %bb.ar, label %bb.as, !dbg !191661

bb.ap:                                            ; preds = %bb.an
  %i.hv = load ptr, ptr %i.p, align 8, !dbg !191669, !alias.scope !191452, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.hw = load i64, ptr %i.r, align 8, !dbg !191670, !alias.scope !191452, !noundef !7548
  %i.hx = zext i32 %i.hk to i64, !dbg !191671     ; 3 uses
  %i.hy = icmp ugt i64 %i.hw, %i.hx, !dbg !191672
  tail call void @llvm.assume(i1 %i.hy), !dbg !191673
  %i.hz = getelementptr inbounds nuw [48 x i8], ptr %i.hv, i64 %i.hx, !dbg !191674
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 32, !dbg !191675
  %i.ib = load i32, ptr %i.ia, align 8, !dbg !191675, !noalias !191453, !noundef !7548
  br label %bb.aq, !dbg !191676

bb.aq:                                            ; preds = %bb.as, %bb.ap
  %.pre-phi.i.i8.i = phi i64 [ %i.ij, %bb.as ], [ %i.hx, %bb.ap ], !dbg !191677
  %i.ic = phi ptr [ %i.hn, %bb.as ], [ %i.hv, %bb.ap ], !dbg !191678
  %.sroa.013.1.i.i9.i = phi i32 [ %i.iq, %bb.as ], [ 0, %bb.ap ], !dbg !191679
  %.sroa.0.1.in.i.i10.i = phi i32 [ %i.io, %bb.as ], [ %i.ib, %bb.ap ]
  %.sroa.0.1.i.i11.i = add i32 %.sroa.0.1.in.i.i10.i, 1, !dbg !191680
  %i.id = getelementptr inbounds nuw [48 x i8], ptr %i.ic, i64 %.pre-phi.i.i8.i, !dbg !191681
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 36, !dbg !191682
  %i.if = load i32, ptr %i.ie, align 4, !dbg !191682, !noalias !191453, !noundef !7548
  br label %bb.at, !dbg !191683

bb.ar:                                            ; preds = %bb.ao
  %i.ig = add i32 %i.ht, 1, !dbg !191680
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hr, i64 36, !dbg !191684
  %i.ii = load i32, ptr %i.ih, align 4, !dbg !191684, !noalias !191453, !noundef !7548
  br label %bb.at, !dbg !191676

bb.as:                                            ; preds = %bb.ao
  %i.ij = zext i32 %i.hk to i64, !dbg !191671     ; 3 uses
  %i.ik = icmp ugt i64 %i.ho, %i.ij, !dbg !191672
  tail call void @llvm.assume(i1 %i.ik), !dbg !191673
  %i.il = getelementptr inbounds nuw [48 x i8], ptr %i.hn, i64 %i.ij, !dbg !191674
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 32, !dbg !191675
  %i.in = load i32, ptr %i.im, align 8, !dbg !191675, !noalias !191453, !noundef !7548
  %i.io = add i32 %i.in, %i.ht, !dbg !191680
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hr, i64 36, !dbg !191684
  %i.iq = load i32, ptr %i.ip, align 4, !dbg !191684, !noalias !191453, !noundef !7548
  br label %bb.aq, !dbg !191676

bb.at:                                            ; preds = %bb.ar, %bb.aq, %bb.an
  %.sroa.014.0.i.i12.i = phi i32 [ %i.if, %bb.aq ], [ 0, %bb.an ], [ 0, %bb.ar ], !dbg !191685
  %.sroa.013.2.i.i13.i = phi i32 [ %.sroa.013.1.i.i9.i, %bb.aq ], [ 0, %bb.an ], [ %i.ii, %bb.ar ], !dbg !191686
  %.sroa.0.2.i.i14.i = phi i32 [ %.sroa.0.1.i.i11.i, %bb.aq ], [ 1, %bb.an ], [ %i.ig, %bb.ar ], !dbg !191680
  %i.ir = add i32 %.sroa.014.0.i.i12.i, %.sroa.4.0.copyload.i5.i, !dbg !191687
  %i.is = add i32 %i.ir, %.sroa.013.2.i.i13.i, !dbg !191687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !191688, !noalias !191454
  %11 = shufflevector <1 x i64> %9, <1 x i64> %10, <2 x i32> <i32 0, i32 1>, !dbg !191688
  store <2 x i64> %11, ptr %i.b, align 16, !dbg !191688, !noalias !191454
  %.sroa.5.0..sroa_idx.i.i18.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !191688
  store i64 %.sroa.0.0.copyload.i3.i, ptr %.sroa.5.0..sroa_idx.i.i18.i, align 16, !dbg !191688, !noalias !191452
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !191688
  store <2 x i32> %i.hg, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i19.i, align 8, !dbg !191688, !noalias !191452
  %.sroa.6.0..sroa_idx.i.i21.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !191688
  store i32 %.sroa.0.2.i.i14.i, ptr %.sroa.6.0..sroa_idx.i.i21.i, align 16, !dbg !191688, !noalias !191454
  %.sroa.7.0..sroa_idx.i.i22.i = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !191688
  store i32 %i.is, ptr %.sroa.7.0..sroa_idx.i.i22.i, align 4, !dbg !191688, !noalias !191454
  %i.it = invoke { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodefEE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.au unwind label %bb.bb, !dbg !191689 ; 2 uses

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !191690, !noalias !191454
  %i.iu = extractvalue { i32, i32 } %i.it, 1, !dbg !191691 ; 5 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.e, i64 4, !dbg !191692
  %i.iw = load i32, ptr %i.iv, align 4, !dbg !191692, !noalias !191449, !noundef !7548 ; 2 uses
  %i.ix = load <2 x i32>, ptr %i.e, align 8, !dbg !191692, !noalias !191449
  %i.iy = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !191693
  %.sroa.022.0.copyload.i.i = load i64, ptr %i.iy, align 8, !dbg !191693, !noalias !191449
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !191693 ; 2 uses
  %i.iz = load <2 x i32>, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !dbg !191693, !noalias !191449
  %.sroa.424.0.copyload.i.i = load i32, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !dbg !191693, !noalias !191449
  call void @llvm.experimental.noalias.scope.decl(metadata !191455), !dbg !191694
  %i.ja = icmp eq i32 %i.iw, -1, !dbg !191695
  br i1 %i.ja, label %bb.av, label %bb.aw, !dbg !191695

bb.av:                                            ; preds = %bb.au
  %i.jb = icmp eq i32 %i.iu, -1, !dbg !191696
  br i1 %i.jb, label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8single_rCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.ax, !dbg !191696

bb.aw:                                            ; preds = %bb.au
  %i.jc = load ptr, ptr %i.p, align 8, !dbg !191697, !alias.scope !191456, !nonnull !7548, !noundef !7548 ; 3 uses
  %i.jd = load i64, ptr %i.r, align 8, !dbg !191698, !alias.scope !191456, !noundef !7548 ; 2 uses
  %i.je = zext i32 %i.iw to i64, !dbg !191699     ; 2 uses
  %i.jf = icmp ugt i64 %i.jd, %i.je, !dbg !191700
  call void @llvm.assume(i1 %i.jf), !dbg !191701
  %i.jg = getelementptr inbounds nuw [48 x i8], ptr %i.jc, i64 %i.je, !dbg !191702 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 32, !dbg !191703
  %i.ji = load i32, ptr %i.jh, align 8, !dbg !191703, !noalias !191457, !noundef !7548 ; 2 uses
  %i.jj = icmp eq i32 %i.iu, -1, !dbg !191696
  br i1 %i.jj, label %bb.az, label %bb.ba, !dbg !191696

bb.ax:                                            ; preds = %bb.av
  %i.jk = load ptr, ptr %i.p, align 8, !dbg !191704, !alias.scope !191456, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.jl = load i64, ptr %i.r, align 8, !dbg !191705, !alias.scope !191456, !noundef !7548
  %i.jm = zext i32 %i.iu to i64, !dbg !191706     ; 3 uses
  %i.jn = icmp ugt i64 %i.jl, %i.jm, !dbg !191707
  call void @llvm.assume(i1 %i.jn), !dbg !191708
  %i.jo = getelementptr inbounds nuw [48 x i8], ptr %i.jk, i64 %i.jm, !dbg !191709
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 32, !dbg !191710
  %i.jq = load i32, ptr %i.jp, align 8, !dbg !191710, !noalias !191457, !noundef !7548
  br label %bb.ay, !dbg !191711

bb.ay:                                            ; preds = %bb.ba, %bb.ax
  %.pre-phi.i4.i.i = phi i64 [ %i.jy, %bb.ba ], [ %i.jm, %bb.ax ], !dbg !191712
  %i.jr = phi ptr [ %i.jc, %bb.ba ], [ %i.jk, %bb.ax ], !dbg !191713
  %.sroa.013.1.i5.i.i = phi i32 [ %i.kf, %bb.ba ], [ 0, %bb.ax ], !dbg !191714
  %.sroa.0.1.in.i6.i.i = phi i32 [ %i.kd, %bb.ba ], [ %i.jq, %bb.ax ]
  %.sroa.0.1.i7.i.i = add i32 %.sroa.0.1.in.i6.i.i, 1, !dbg !191715
  %i.js = getelementptr inbounds nuw [48 x i8], ptr %i.jr, i64 %.pre-phi.i4.i.i, !dbg !191716
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 36, !dbg !191717
  %i.ju = load i32, ptr %i.jt, align 4, !dbg !191717, !noalias !191457, !noundef !7548
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8single_rCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !191718

bb.az:                                            ; preds = %bb.aw
  %i.jv = add i32 %i.ji, 1, !dbg !191715
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jg, i64 36, !dbg !191719
  %i.jx = load i32, ptr %i.jw, align 4, !dbg !191719, !noalias !191457, !noundef !7548
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8single_rCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !191711

bb.ba:                                            ; preds = %bb.aw
  %i.jy = zext i32 %i.iu to i64, !dbg !191706     ; 3 uses
  %i.jz = icmp ugt i64 %i.jd, %i.jy, !dbg !191707
  call void @llvm.assume(i1 %i.jz), !dbg !191708
  %i.ka = getelementptr inbounds nuw [48 x i8], ptr %i.jc, i64 %i.jy, !dbg !191709
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 32, !dbg !191710
  %i.kc = load i32, ptr %i.kb, align 8, !dbg !191710, !noalias !191457, !noundef !7548
  %i.kd = add i32 %i.kc, %i.ji, !dbg !191715
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jg, i64 36, !dbg !191719
  %i.kf = load i32, ptr %i.ke, align 4, !dbg !191719, !noalias !191457, !noundef !7548
  br label %bb.ay, !dbg !191711

bb.bb:                                            ; preds = %bb.at
  %i.kg = landingpad { ptr, i32 }
          cleanup
  %i.kh = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !191720
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecfENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.kh)
          to label %common.resume.i unwind label %bb.bc, !dbg !191721

bb.bc:                                            ; preds = %bb.bd, %bb.bb
  %i.ki = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #48, !dbg !191722
  unreachable, !dbg !191722

bb.bd:                                            ; preds = %bb.al
  %i.kj = landingpad { ptr, i32 }
          cleanup
  %i.kk = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !191723
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecfENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.kk)
          to label %common.resume.i unwind label %bb.bc, !dbg !191724

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8single_rCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.az, %bb.ay, %bb.av
  %.sroa.014.0.i8.i.i = phi i32 [ %i.ju, %bb.ay ], [ 0, %bb.av ], [ 0, %bb.az ], !dbg !191725
  %.sroa.013.2.i9.i.i = phi i32 [ %.sroa.013.1.i5.i.i, %bb.ay ], [ 0, %bb.av ], [ %i.jx, %bb.az ], !dbg !191726
  %.sroa.0.2.i10.i.i = phi i32 [ %.sroa.0.1.i7.i.i, %bb.ay ], [ 1, %bb.av ], [ %i.jv, %bb.az ], !dbg !191715
  %i.kl = extractvalue { i32, i32 } %i.it, 0, !dbg !191691
  %i.km = add i32 %.sroa.014.0.i8.i.i, %.sroa.424.0.copyload.i.i, !dbg !191727
  %i.kn = add i32 %i.km, %.sroa.013.2.i9.i.i, !dbg !191727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !191728, !noalias !191458
  store <2 x i32> %i.ix, ptr %i.a, align 8, !dbg !191728, !noalias !191458
  %.sroa.3.0..sroa_idx.i12.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !191728
  store i32 %i.kl, ptr %.sroa.3.0..sroa_idx.i12.i.i, align 8, !dbg !191728, !noalias !191458
  %.sroa.4.0..sroa_idx.i13.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12, !dbg !191728
  store i32 %i.iu, ptr %.sroa.4.0..sroa_idx.i13.i.i, align 4, !dbg !191728, !noalias !191458
  %.sroa.5.0..sroa_idx.i14.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !191728
  store i64 %.sroa.022.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i14.i.i, align 8, !dbg !191728, !noalias !191456
  %.sroa.424.0..sroa.5.0..sroa_idx.i14.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !191728
  store <2 x i32> %i.iz, ptr %.sroa.424.0..sroa.5.0..sroa_idx.i14.sroa_idx.i.i, align 8, !dbg !191728, !noalias !191456
  %.sroa.6.0..sroa_idx.i15.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !191728
  store i32 %.sroa.0.2.i10.i.i, ptr %.sroa.6.0..sroa_idx.i15.i.i, align 8, !dbg !191728, !noalias !191458
  %.sroa.7.0..sroa_idx.i16.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 36, !dbg !191728
  store i32 %i.kn, ptr %.sroa.7.0..sroa_idx.i16.i.i, align 4, !dbg !191728, !noalias !191458
  %i.ko = call { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtCs2mZqlW55729_12polars_utils20order_statistic_tree3KeyINtBQ_4NodefEE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !dbg !191729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !191730, !noalias !191458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !191720, !noalias !191449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !191723, !noalias !191449
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8rotate_rCs1LHh8CLbVkQ_11polars_core.exit, !dbg !191644

bb.be:                                            ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE16pair_is_balancedCs1LHh8CLbVkQ_11polars_core.exit
  %i.kp = insertvalue { i32, i32 } poison, i32 %1, 0, !dbg !191731
  %i.kq = insertvalue { i32, i32 } %i.kp, i32 %2, 1, !dbg !191731
  br label %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8rotate_rCs1LHh8CLbVkQ_11polars_core.exit, !dbg !191731

_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8rotate_rCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8single_rCs1LHh8CLbVkQ_11polars_core.exit.i, %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8double_rCs1LHh8CLbVkQ_11polars_core.exit.i, %bb.be
  %.merged = phi { i32, i32 } [ %i.kq, %bb.be ], [ %i.ko, %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8single_rCs1LHh8CLbVkQ_11polars_core.exit.i ], [ %i.gz, %_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreefE8double_rCs1LHh8CLbVkQ_11polars_core.exit.i ], !dbg !191731
  ret { i32, i32 } %.merged, !dbg !191731
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCscgRAwXFJnXP_4core5sliceSAmj2_14swap_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #16 !dbg !191732 !guid !191739 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2, !dbg !191742 ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3, !dbg !191743 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 4, !dbg !191744
  %i.c = load i64, ptr %i.b, align 4, !dbg !191745
  store i64 %i.c, ptr %i.a, align 4, !dbg !191745
  store i64 %.sroa.0.0.copyload.i, ptr %i.b, align 4, !dbg !191746
  ret void, !dbg !191747
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf1614swap_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef nonnull align 2 captures(none) %0, i64 noundef range(i64 0, 4611686018427387904) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #16 !dbg !191748 !guid !191755 {
bb.a:
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %2, !dbg !191758 ; 2 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %3, !dbg !191759 ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.a, align 2, !dbg !191760
  %i.c = load i16, ptr %i.b, align 2, !dbg !191761
  store i16 %i.c, ptr %i.a, align 2, !dbg !191761
  store i16 %.sroa.0.0.copyload.i, ptr %i.b, align 2, !dbg !191762
  ret void, !dbg !191763
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4View14swap_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #16 !dbg !191764 !guid !191771 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %2, !dbg !191774 ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %3, !dbg !191775 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !191776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !dbg !191777
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !dbg !191778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !191779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !191780
  ret void, !dbg !191781
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCscgRAwXFJnXP_4core5sliceSRSh14swap_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #16 !dbg !191782 !guid !191789 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %2, !dbg !191792 ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %3, !dbg !191793 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !191794
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !dbg !191795
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !dbg !191796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !191797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !191798
  ret void, !dbg !191799
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCscgRAwXFJnXP_4core5sliceSTINtNtB4_6option6OptionhEIBw_ReEE14swap_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 384307168202282326) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #16 !dbg !191800 !guid !191807 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2, !dbg !191810 ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %3, !dbg !191811 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !191812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !191813
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !191814
end_hunk_2
