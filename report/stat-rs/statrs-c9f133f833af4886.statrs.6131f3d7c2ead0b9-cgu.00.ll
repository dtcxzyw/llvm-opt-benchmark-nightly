Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.00?download=true
inline.NumInlined: 143
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 14
begin_hunk_0
@26 = private unnamed_addr constant [50 x i8] c"assertion failed: old_left_len + count <= CAPACITY", align 1
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"[\00\00\00\00\00\00\00@\06\00\00\0D\00\00\00" }>, align 8
@28 = private unnamed_addr constant [40 x i8] c"assertion failed: old_right_len >= count", align 1
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"[\00\00\00\00\00\00\00A\06\00\00\0D\00\00\00" }>, align 8
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"[\00\00\00\00\00\00\00q\06\00\00\16\00\00\00" }>, align 8
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"[\00\00\00\00\00\00\00\D0\04\00\00#\00\00\00" }>, align 8
@32 = private unnamed_addr constant [61 x i8] c"internal error: entered unreachable code: empty internal node", align 1
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"[\00\00\00\00\00\00\00P\05\00\00\1F\00\00\00" }>, align 8
@34 = private unnamed_addr constant [32 x i8] c"assertion failed: idx < CAPACITY", align 1
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"[\00\00\00\00\00\00\00\9E\02\00\00\09\00\00\00" }>, align 8
@36 = private unnamed_addr constant [48 x i8] c"assertion failed: edge.height == self.height - 1", align 1
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"[\00\00\00\00\00\00\00\B6\02\00\00\09\00\00\00" }>, align 8
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"[\00\00\00\00\00\00\00\BA\02\00\00\09\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs1xwejQucwHj_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB3S_13OccupiedEntryB1J_yE9remove_kv0NtNtB9_5alloc6GlobalEB1S_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef writeonly captures(none) dereferenceable(1) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 3 uses
  %i.i = icmp eq i64 %i.e, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.4.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.4.sroa.6.0..sroa_idx, align 8
  %.sroa.4.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.h, ptr %.sroa.4.sroa.7.0..sroa_idx, align 8
  call fastcc void @_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB3F_13OccupiedEntryB1L_yE9remove_kv0NtNtBb_5alloc6GlobalEB1U_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %i.k = icmp ult i64 %i.h, 12
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.h
  %i.m = load ptr, ptr %i.l, align 8, !noalias !8, !nonnull !4, !noundef !4 ; 3 uses
  %i.n = add i64 %i.e, -1                         ; 4 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvMsn_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1k_14LeafOrInternalE14last_leaf_edgeB1K_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %i.p = add i64 %i.e, -2
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.03.08.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.prol ], [ %i.m, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.05.07.i.i.prol = phi i64 [ %i.x, %.lr.ph.i.i.prol ], [ %i.n, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.prol, i64 186
  %i.r = load i16, ptr %i.q, align 2, !noalias !11, !noundef !4 ; 2 uses
  %i.s = zext nneg i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.prol, i64 192
  %i.u = icmp ult i16 %i.r, 12
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.w = load ptr, ptr %i.v, align 8, !noalias !11, !nonnull !4, !noundef !4 ; 3 uses
  %i.x = add i64 %.sroa.05.07.i.i.prol, -1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !14

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa36.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.w, %.lr.ph.i.i.prol ]
  %.sroa.03.08.i.i.unr = phi ptr [ %i.m, %.lr.ph.i.i.preheader ], [ %i.w, %.lr.ph.i.i.prol ]
  %.sroa.05.07.i.i.unr = phi i64 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.x, %.lr.ph.i.i.prol ]
  %i.y = icmp ult i64 %i.p, 7
  br i1 %i.y, label %_RNvMsn_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1k_14LeafOrInternalE14last_leaf_edgeB1K_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.03.08.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %.sroa.03.08.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.07.i.i = phi i64 [ %i.cd, %.lr.ph.i.i ], [ %.sroa.05.07.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i, i64 186
  %i.aa = load i16, ptr %i.z, align 2, !noalias !11, !noundef !4 ; 2 uses
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i, i64 192
  %i.ad = icmp ult i16 %i.aa, 12
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !11, !nonnull !4, !noundef !4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 186
  %i.ah = load i16, ptr %i.ag, align 2, !noalias !11, !noundef !4 ; 2 uses
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 192
  %i.ak = icmp ult i16 %i.ah, 12
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  %i.am = load ptr, ptr %i.al, align 8, !noalias !11, !nonnull !4, !noundef !4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 186
  %i.ao = load i16, ptr %i.an, align 2, !noalias !11, !noundef !4 ; 2 uses
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 192
  %i.ar = icmp ult i16 %i.ao, 12
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  %i.at = load ptr, ptr %i.as, align 8, !noalias !11, !nonnull !4, !noundef !4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 186
  %i.av = load i16, ptr %i.au, align 2, !noalias !11, !noundef !4 ; 2 uses
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 192
  %i.ay = icmp ult i16 %i.av, 12
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.aw
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !11, !nonnull !4, !noundef !4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 186
  %i.bc = load i16, ptr %i.bb, align 2, !noalias !11, !noundef !4 ; 2 uses
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 192
  %i.bf = icmp ult i16 %i.bc, 12
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bd
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !11, !nonnull !4, !noundef !4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 186
  %i.bj = load i16, ptr %i.bi, align 2, !noalias !11, !noundef !4 ; 2 uses
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 192
  %i.bm = icmp ult i16 %i.bj, 12
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bk
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !11, !nonnull !4, !noundef !4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 186
  %i.bq = load i16, ptr %i.bp, align 2, !noalias !11, !noundef !4 ; 2 uses
  %i.br = zext nneg i16 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 192
  %i.bt = icmp ult i16 %i.bq, 12
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !11, !nonnull !4, !noundef !4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 186
  %i.bx = load i16, ptr %i.bw, align 2, !noalias !11, !noundef !4 ; 2 uses
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 192
  %i.ca = icmp ult i16 %i.bx, 12
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.by
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !11, !nonnull !4, !noundef !4 ; 2 uses
  %i.cd = add i64 %.sroa.05.07.i.i, -8            ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %_RNvMsn_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1k_14LeafOrInternalE14last_leaf_edgeB1K_.exit.i, label %.lr.ph.i.i

_RNvMsn_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1k_14LeafOrInternalE14last_leaf_edgeB1K_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.c
  %.sroa.03.0.lcssa.i.i = phi ptr [ %i.m, %bb.c ], [ %.lcssa36.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.cc, %.lr.ph.i.i ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i, i64 186
  %i.cg = load i16, ptr %i.cf, align 2, !noalias !11, !noundef !4 ; 2 uses
  %i.ch = zext i16 %i.cg to i64
  %i.ci = icmp ne i16 %i.cg, 0
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = add nsw i64 %i.ch, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8
  store ptr %.sroa.03.0.lcssa.i.i, ptr %i.b, align 8, !noalias !8
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !8
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.cj, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8
  call fastcc void @_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB3F_13OccupiedEntryB1L_yE9remove_kv0NtNtBb_5alloc6GlobalEB1U_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull dereferenceable(1) %2), !noalias !16
  %i.ck = load double, ptr %i.a, align 8, !noalias !8, !noundef !4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !noalias !8, !noundef !4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.014.0.copyload.i = load ptr, ptr %i.cn, align 8, !noalias !8, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.415.0.copyload.i = load i64, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload.i, i64 186
  %i.cp = load i16, ptr %i.co, align 2, !noalias !17, !noundef !4
  %i.cq = zext i16 %i.cp to i64
  %i.cr = icmp ult i64 %.sroa.5.0.copyload.i, %i.cq
  br i1 %i.cr, label %_RNvMsh_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeE7next_kvB1Y_.exit.i, label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %_RNvMsn_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1k_14LeafOrInternalE14last_leaf_edgeB1K_.exit.i, %.lr.ph.i13.i
  %.sroa.0.022.i.i = phi ptr [ %i.cs, %.lr.ph.i13.i ], [ %.sroa.014.0.copyload.i, %_RNvMsn_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1k_14LeafOrInternalE14last_leaf_edgeB1K_.exit.i ] ; 2 uses
  %.sroa.5.021.i.i = phi i64 [ %i.ct, %.lr.ph.i13.i ], [ %.sroa.415.0.copyload.i, %_RNvMsn_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1k_14LeafOrInternalE14last_leaf_edgeB1K_.exit.i ]
  %i.cs = load ptr, ptr %.sroa.0.022.i.i, align 8, !noalias !21, !nonnull !4, !noundef !4 ; 3 uses
  %i.ct = add i64 %.sroa.5.021.i.i, 1             ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i, i64 184
  %i.cv = load i16, ptr %i.cu, align 8, !noalias !21 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 186
  %i.cx = load i16, ptr %i.cw, align 2, !noalias !17, !noundef !4
  %i.cy = icmp ult i16 %i.cv, %i.cx
  br i1 %i.cy, label %._crit_edge.loopexit.i.i, label %.lr.ph.i13.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i13.i
  %i.cz = zext i16 %i.cv to i64
  br label %_RNvMsh_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeE7next_kvB1Y_.exit.i

_RNvMsh_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeE7next_kvB1Y_.exit.i: ; preds = %._crit_edge.loopexit.i.i, %_RNvMsn_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1k_14LeafOrInternalE14last_leaf_edgeB1K_.exit.i
  %.sroa.7.0.i.a = phi i64 [ %i.ct, %._crit_edge.loopexit.i.i ], [ %.sroa.415.0.copyload.i, %_RNvMsn_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1k_14LeafOrInternalE14last_leaf_edgeB1K_.exit.i ] ; 5 uses
  %.sroa.528.0.i = phi i64 [ %i.cz, %._crit_edge.loopexit.i.i ], [ %.sroa.5.0.copyload.i, %_RNvMsn_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1k_14LeafOrInternalE14last_leaf_edgeB1K_.exit.i ] ; 5 uses
  %.sroa.027.0.i = phi ptr [ %i.cs, %._crit_edge.loopexit.i.i ], [ %.sroa.014.0.copyload.i, %_RNvMsn_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1k_14LeafOrInternalE14last_leaf_edgeB1K_.exit.i ] ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i, i64 8
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %.sroa.528.0.i ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i, i64 96
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.sroa.528.0.i ; 2 uses
  %i.de = load double, ptr %i.db, align 8, !noalias !8, !noundef !4
  store double %i.ck, ptr %i.db, align 8, !noalias !8
  %i.df = load i64, ptr %i.dd, align 8, !noalias !8, !noundef !4
  store i64 %i.cm, ptr %i.dd, align 8, !noalias !8
  %i.dg = icmp eq i64 %.sroa.7.0.i.a, 0
  br i1 %i.dg, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMsh_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeE7next_kvB1Y_.exit.i
  %i.dh = add nuw nsw i64 %.sroa.528.0.i, 1
  br label %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB3O_13OccupiedEntryB1M_yE9remove_kv0NtNtBc_5alloc6GlobalEB1V_.exit

bb.e:                                             ; preds = %_RNvMsh_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeE7next_kvB1Y_.exit.i
  %i.di = icmp samesign ult i64 %.sroa.528.0.i, 11
  tail call void @llvm.assume(i1 %i.di)
  %i.dj = getelementptr i8, ptr %.sroa.027.0.i, i64 200
  %i.dk = getelementptr [8 x i8], ptr %i.dj, i64 %.sroa.528.0.i ; 2 uses
  %xtraiter37 = and i64 %.sroa.7.0.i.a, 7         ; 2 uses
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.e, %.prol.preheader
  %.sroa.017.0.in.i.i.prol = phi ptr [ %i.dl, %.prol.preheader ], [ %i.dk, %bb.e ]
  %.sroa.019.0.in.i.i.prol = phi i64 [ %.sroa.019.0.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.i.a, %bb.e ]
  %prol.iter39 = phi i64 [ %prol.iter39.next, %.prol.preheader ], [ 0, %bb.e ]
  %.sroa.019.0.i.i.prol = add i64 %.sroa.019.0.in.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.prol, align 8, !noalias !24, !nonnull !4, !noundef !4 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.prol, i64 192 ; 2 uses
  %prol.iter39.next = add i64 %prol.iter39, 1     ; 2 uses
  %prol.iter39.cmp.not = icmp eq i64 %prol.iter39.next, %xtraiter37
  br i1 %prol.iter39.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !28

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.e
  %.sroa.017.0.i.i.lcssa.unr = phi ptr [ poison, %bb.e ], [ %.sroa.017.0.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.unr = phi ptr [ %i.dk, %bb.e ], [ %i.dl, %.prol.preheader ]
  %.sroa.019.0.in.i.i.unr = phi i64 [ %.sroa.7.0.i.a, %bb.e ], [ %.sroa.019.0.i.i.prol, %.prol.preheader ]
  %i.dm = icmp ult i64 %.sroa.7.0.i.a, 8
  br i1 %i.dm, label %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB3O_13OccupiedEntryB1M_yE9remove_kv0NtNtBc_5alloc6GlobalEB1V_.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i = phi ptr [ %i.dv, %.new ], [ %.sroa.017.0.in.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i = phi i64 [ %.sroa.019.0.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i = load ptr, ptr %.sroa.017.0.in.i.i, align 8, !noalias !24, !nonnull !4, !noundef !4
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i, i64 192
  %.sroa.017.0.i.i.1 = load ptr, ptr %i.dn, align 8, !noalias !24, !nonnull !4, !noundef !4
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.1, i64 192
  %.sroa.017.0.i.i.2 = load ptr, ptr %i.do, align 8, !noalias !24, !nonnull !4, !noundef !4
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.2, i64 192
  %.sroa.017.0.i.i.3 = load ptr, ptr %i.dp, align 8, !noalias !24, !nonnull !4, !noundef !4
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.3, i64 192
  %.sroa.017.0.i.i.4 = load ptr, ptr %i.dq, align 8, !noalias !24, !nonnull !4, !noundef !4
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.4, i64 192
  %.sroa.017.0.i.i.5 = load ptr, ptr %i.dr, align 8, !noalias !24, !nonnull !4, !noundef !4
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.5, i64 192
  %.sroa.017.0.i.i.6 = load ptr, ptr %i.ds, align 8, !noalias !24, !nonnull !4, !noundef !4
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.6, i64 192
  %.sroa.019.0.i.i.7 = add i64 %.sroa.019.0.in.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.7 = load ptr, ptr %i.dt, align 8, !noalias !24, !nonnull !4, !noundef !4 ; 2 uses
  %i.du = icmp eq i64 %.sroa.019.0.i.i.7, 0
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.7, i64 192
  br i1 %i.du, label %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB3O_13OccupiedEntryB1M_yE9remove_kv0NtNtBc_5alloc6GlobalEB1V_.exit, label %.new

_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB3O_13OccupiedEntryB1M_yE9remove_kv0NtNtBc_5alloc6GlobalEB1V_.exit: ; preds = %.prol.loopexit, %.new, %bb.d
  %.sroa.731.0.i = phi i64 [ %i.dh, %bb.d ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.029.0.i = phi ptr [ %.sroa.027.0.i, %bb.d ], [ %.sroa.017.0.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.7, %.new ]
  store double %i.de, ptr %0, align 8, !alias.scope !5, !noalias !29
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.df, ptr %i.dw, align 8, !alias.scope !5, !noalias !29
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.029.0.i, ptr %i.dx, align 8, !alias.scope !5, !noalias !29
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.530.0..sroa_idx.i, align 8, !alias.scope !5, !noalias !29
  %.sroa.731.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.731.0.i, ptr %.sroa.731.0..sroa_idx.i, align 8, !alias.scope !5, !noalias !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8
  br label %bb.f

bb.f:                                             ; preds = %_RINvMs0_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB3O_13OccupiedEntryB1M_yE9remove_kv0NtNtBc_5alloc6GlobalEB1V_.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs10_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB7_16BalancingContextINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE25merge_tracking_child_edgeNtNtBd_5alloc6GlobalEB1s_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, i64 noundef range(i64 0, 2) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 186 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !noundef !4
  %i.e = zext i16 %i.d to i64                     ; 4 uses
  %i.f = trunc nuw i64 %2 to i1                   ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 186
  %i.j = load i16, ptr %i.i, align 2, !noundef !4
  %i.k = zext i16 %i.j to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.pn = phi i64 [ %i.k, %bb.b ], [ %i.e, %bb.a ]
  %.sroa.05.0.in.not = icmp ugt i64 %3, %.pn
  br i1 %.sroa.05.0.in.not, label %bb.d, label %bb.e, !prof !30

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 142, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #13
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.l = load ptr, ptr %1, align 8, !alias.scope !31, !nonnull !4, !noundef !4 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !31, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !31, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !31, !nonnull !4, !noundef !4 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 186
  %i.t = load i16, ptr %i.s, align 2, !noalias !31, !noundef !4 ; 2 uses
  %i.u = zext i16 %i.t to i64                     ; 3 uses
  %i.v = add nuw nsw i64 %i.e, 1                  ; 7 uses
  %i.w = add nuw nsw i64 %i.v, %i.u               ; 3 uses
  %i.x = icmp samesign ult i64 %i.w, 12
  br i1 %i.x, label %bb.g, label %bb.f, !prof !34

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #13, !noalias !31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 186 ; 3 uses
  %i.z = load i16, ptr %i.y, align 2, !noalias !31, !noundef !4
  %i.aa = zext i16 %i.z to i64                    ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !31, !noundef !4 ; 6 uses
  %i.ad = trunc nuw nsw i64 %i.w to i16
  store i16 %i.ad, ptr %i.c, align 2, !noalias !31
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  %i.ag = load double, ptr %i.af, align 8, !alias.scope !35, !noalias !31, !noundef !4
  %i.ah = getelementptr i8, ptr %i.af, i64 8
  %i.ai = xor i64 %i.ac, -1
  %i.aj = add i64 %i.aa, %i.ai
  %i.ak = shl nuw nsw i64 %i.aj, 3                ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.ah, i64 %i.ak, i1 false), !alias.scope !35, !noalias !31
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.e
  store double %i.ag, ptr %i.am, align 8, !noalias !31
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.v
  %i.ap = shl nuw nsw i64 %i.u, 3                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr nonnull readonly align 8 %i.an, i64 %i.ap, i1 false), !alias.scope !38, !noalias !31
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ac ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !42, !noalias !31, !noundef !4
  %i.at = getelementptr i8, ptr %i.ar, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 8 %i.at, i64 %i.ak, i1 false), !alias.scope !42, !noalias !31
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.e
  store i64 %i.as, ptr %i.av, align 8, !noalias !31
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr nonnull readonly align 8 %i.aw, i64 %i.ap, i1 false), !alias.scope !45, !noalias !31
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 192 ; 6 uses
  %i.az = add i64 %i.ac, 1                        ; 4 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %i.bb, i64 %i.ak, i1 false), !alias.scope !49, !noalias !31
  %i.bc = icmp ult i64 %i.az, %i.aa
  br i1 %i.bc, label %.lr.ph.i.i.preheader, label %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.bd = xor i64 %i.ac, -1
  %i.be = add i64 %i.bd, %i.aa
  %i.bf = add nsw i64 %i.aa, -2
  %i.bg = sub i64 %i.bf, %i.ac
  %xtraiter = and i64 %i.be, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.0.06.i.i.prol = phi i64 [ %i.bh, %.lr.ph.i.i.prol ], [ %i.az, %.lr.ph.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bh = add nuw nsw i64 %.sroa.0.06.i.i.prol, 1 ; 2 uses
  %i.bi = icmp ult i64 %.sroa.0.06.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.0.06.i.i.prol
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !31, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.l, ptr %i.bk, align 8, !noalias !31
  %i.bl = trunc nuw nsw i64 %.sroa.0.06.i.i.prol to i16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 184
  store i16 %i.bl, ptr %i.bm, align 8, !noalias !31
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !52

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.0.06.i.i.unr = phi i64 [ %i.az, %.lr.ph.i.i.preheader ], [ %i.bh, %.lr.ph.i.i.prol ]
  %i.bn = icmp ult i64 %i.bg, 3
  br i1 %i.bn, label %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.0.06.i.i = phi i64 [ %i.cd, %.lr.ph.i.i ], [ %.sroa.0.06.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.bo = add nuw nsw i64 %.sroa.0.06.i.i, 1      ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.0.06.i.i
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !31, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.l, ptr %i.bq, align 8, !noalias !31
  %i.br = trunc nuw nsw i64 %.sroa.0.06.i.i to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 184
  store i16 %i.br, ptr %i.bs, align 8, !noalias !31
  %i.bt = add nuw nsw i64 %.sroa.0.06.i.i, 2      ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bo
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !31, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.l, ptr %i.bv, align 8, !noalias !31
  %i.bw = trunc nuw nsw i64 %i.bo to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 184
  store i16 %i.bw, ptr %i.bx, align 8, !noalias !31
  %i.by = add nuw nsw i64 %.sroa.0.06.i.i, 3      ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bt
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !31, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.l, ptr %i.ca, align 8, !noalias !31
  %i.cb = trunc nuw nsw i64 %i.bt to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 184
  store i16 %i.cb, ptr %i.cc, align 8, !noalias !31
  %i.cd = add nuw nsw i64 %.sroa.0.06.i.i, 4      ; 2 uses
  %i.ce = icmp ult i64 %.sroa.0.06.i.i, 9
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.by
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !31, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.l, ptr %i.cg, align 8, !noalias !31
  %i.ch = trunc nuw nsw i64 %i.by to i16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 184
  store i16 %i.ch, ptr %i.ci, align 8, !noalias !31
  %exitcond.not.i.i.3 = icmp eq i64 %i.cd, %i.aa
  br i1 %exitcond.not.i.i.3, label %_RINvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1z_.exit.i, label %.lr.ph.i.i

end_hunk_0
