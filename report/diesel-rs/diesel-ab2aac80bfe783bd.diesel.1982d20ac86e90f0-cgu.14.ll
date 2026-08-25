Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-ab2aac80bfe783bd.diesel.1982d20ac86e90f0-cgu.14?download=true
inline.NumInlined: 1400
inline.NumDeleted: 463
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort12sort4_stableRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1g_:bb.a

.split23:                                         ; preds = %bb.q
  %i.gm = select i1 %.sroa.0.0.i.i.i.i23, ptr %i.dj, ptr %i.dk, !unpredictable !11 ; 2 uses
  br i1 %.not28.i.i.i.i41.not, label %.thread27.thread, label %.split58.thread

.split58.thread:                                  ; preds = %.split23
  %i.gn = select i1 %.sroa.0.0.i.i.i.i23, ptr %i.dk, ptr %i.dj, !unpredictable !11
  br label %bb.s

.split20:                                         ; preds = %bb.r
  %i.go = getelementptr inbounds nuw i8, ptr %.val2, i64 56
  %i.gp = load ptr, ptr %i.go, align 8, !alias.scope !514, !noalias !515, !nonnull !11, !noundef !11
  %i.gq = getelementptr inbounds nuw i8, ptr %.val2, i64 64
  %i.gr = load i64, ptr %i.gq, align 8, !alias.scope !514, !noalias !515, !noundef !11 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.val3, i64 56
  %i.gt = load ptr, ptr %i.gs, align 8, !alias.scope !515, !noalias !514, !nonnull !11, !noundef !11
  %i.gu = getelementptr inbounds nuw i8, ptr %.val3, i64 64
  %i.gv = load i64, ptr %i.gu, align 8, !alias.scope !515, !noalias !514, !noundef !11 ; 2 uses
  %spec.store.select2.i.i.i.i39 = tail call i64 @llvm.umin.i64(i64 %i.gr, i64 %i.gv)
  %i.gw = tail call i32 @memcmp(ptr nonnull %i.gp, ptr nonnull %i.gt, i64 %spec.store.select2.i.i.i.i39), !noalias !516 ; 2 uses
  %i.gx = sext i32 %i.gw to i64
  %i.gy = icmp eq i32 %i.gw, 0
  %i.gz = sub i64 %i.gr, %i.gv
  %spec.select31.i.i.i.i40 = select i1 %i.gy, i64 %i.gz, i64 %i.gx
  %spec.select31.i.i.i.i40.fr = freeze i64 %spec.select31.i.i.i.i40
  %i.ha = icmp slt i64 %spec.select31.i.i.i.i40.fr, 0
  %i.hb = select i1 %.sroa.0.0.i.i.i.i23, ptr %i.dj, ptr %i.dk, !unpredictable !11 ; 2 uses
  br i1 %i.ha, label %.split58, label %.thread27

_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit42: ; preds = %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit31, %bb.p
  %.sroa.0.0.i.i.i.i34.in = phi i64 [ %spec.select.i.i.i.i33, %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit31 ], [ %spec.select30.i.i.i.i36, %bb.p ]
  %.sroa.0.0.i.i.i.i34.in.fr = freeze i64 %.sroa.0.0.i.i.i.i34.in
  %.sroa.0.0.i.i.i.i34 = icmp slt i64 %.sroa.0.0.i.i.i.i34.in.fr, 0
  %i.hc = select i1 %.sroa.0.0.i.i.i.i23, ptr %i.dj, ptr %i.dk, !unpredictable !11 ; 2 uses
  br i1 %.sroa.0.0.i.i.i.i34, label %.split58, label %.thread27

.split58:                                         ; preds = %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit42, %.split20
  %i.hd = phi ptr [ %i.hb, %.split20 ], [ %i.hc, %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit42 ]
  %i.he = select i1 %.sroa.0.0.i.i.i.i23, ptr %i.dk, ptr %i.dj, !unpredictable !11
  br label %bb.s

.thread27.thread:                                 ; preds = %.split23, %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit42.thread
  %.ph55 = phi ptr [ %i.gl, %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit42.thread ], [ %i.gm, %.split23 ]
  %i.hf = select i1 %.sroa.0.0.i.i.i.i23, ptr %i.dk, ptr %i.dl, !unpredictable !11
  %i.hg = select i1 %.sroa.0.0.i.i.i.i23, ptr %i.dl, ptr %i.dj, !unpredictable !11
  br label %bb.s

.thread27:                                        ; preds = %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit42, %.split20
  %i.hh = phi ptr [ %i.hb, %.split20 ], [ %i.hc, %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit42 ]
  %i.hi = select i1 %.sroa.0.0.i.i.i.i23, ptr %i.dk, ptr %i.dl, !unpredictable !11
  %i.hj = select i1 %.sroa.0.0.i.i.i.i23, ptr %i.dl, ptr %i.dj, !unpredictable !11
  br label %bb.s

bb.s:                                             ; preds = %.split58.thread, %.split58, %.thread27, %.thread27.thread
  %i.hk = phi ptr [ %i.hf, %.thread27.thread ], [ %i.hi, %.thread27 ], [ %i.he, %.split58 ], [ %i.gn, %.split58.thread ] ; 6 uses
  %i.hl = phi ptr [ %.ph55, %.thread27.thread ], [ %i.hh, %.thread27 ], [ %i.hd, %.split58 ], [ %i.gm, %.split58.thread ]
  %i.hm = phi ptr [ %i.dn, %.thread27.thread ], [ %i.dn, %.thread27 ], [ %i.dl, %.split58 ], [ %i.dl, %.split58.thread ]
  %i.hn = phi ptr [ %i.hg, %.thread27.thread ], [ %i.hj, %.thread27 ], [ %i.dn, %.split58 ], [ %i.dn, %.split58.thread ] ; 6 uses
  %.val = load ptr, ptr %i.hn, align 8, !nonnull !11, !align !45, !noundef !11 ; 7 uses
  %.val1 = load ptr, ptr %i.hk, align 8, !nonnull !11, !align !45, !noundef !11 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.ho = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !alias.scope !527, !noalias !528, !nonnull !11, !noundef !11
  %i.hq = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.hr = load i64, ptr %i.hq, align 8, !alias.scope !527, !noalias !528, !noundef !11 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !alias.scope !528, !noalias !527, !nonnull !11, !noundef !11
  %i.hu = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.hv = load i64, ptr %i.hu, align 8, !alias.scope !528, !noalias !527, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i43 = tail call i64 @llvm.umin.i64(i64 %i.hr, i64 %i.hv)
  %i.hw = tail call i32 @memcmp(ptr nonnull %i.hp, ptr nonnull %i.ht, i64 %spec.store.select.i.i.i.i43), !noalias !529 ; 2 uses
  %i.hx = sext i32 %i.hw to i64
  %i.hy = icmp eq i32 %i.hw, 0
  %i.hz = sub i64 %i.hr, %i.hv
  %spec.select.i.i.i.i44 = select i1 %i.hy, i64 %i.hz, i64 %i.hx ; 2 uses
  %i.ia = icmp eq i64 %spec.select.i.i.i.i44, 0
  br i1 %i.ia, label %bb.t, label %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit53

bb.t:                                             ; preds = %bb.s
  %i.ib = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ic = load ptr, ptr %i.ib, align 8, !alias.scope !527, !noalias !528, !nonnull !11, !noundef !11
  %i.id = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ie = load i64, ptr %i.id, align 8, !alias.scope !527, !noalias !528, !noundef !11 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.val1, i64 32
  %i.ig = load ptr, ptr %i.if, align 8, !alias.scope !528, !noalias !527, !nonnull !11, !noundef !11
  %i.ih = getelementptr inbounds nuw i8, ptr %.val1, i64 40
  %i.ii = load i64, ptr %i.ih, align 8, !alias.scope !528, !noalias !527, !noundef !11 ; 2 uses
  %spec.store.select1.i.i.i.i46 = tail call i64 @llvm.umin.i64(i64 %i.ie, i64 %i.ii)
  %i.ij = tail call i32 @memcmp(ptr nonnull %i.ic, ptr nonnull %i.ig, i64 %spec.store.select1.i.i.i.i46), !noalias !529 ; 2 uses
  %i.ik = sext i32 %i.ij to i64
  %i.il = icmp eq i32 %i.ij, 0
  %i.im = sub i64 %i.ie, %i.ii
  %spec.select30.i.i.i.i47 = select i1 %i.il, i64 %i.im, i64 %i.ik ; 2 uses
  %i.in = icmp eq i64 %spec.select30.i.i.i.i47, 0
  br i1 %i.in, label %bb.u, label %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit53

bb.u:                                             ; preds = %bb.t
  %i.io = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.ip = load i64, ptr %i.io, align 8, !range !40, !alias.scope !527, !noalias !528, !noundef !11
  %.not.i.i.i.i48 = icmp eq i64 %i.ip, -1
  %i.iq = getelementptr inbounds nuw i8, ptr %.val1, i64 48
  %i.ir = load i64, ptr %i.iq, align 8, !range !40, !alias.scope !528, !noalias !527, !noundef !11
  %.not28.i.i.i.i52.not = icmp eq i64 %i.ir, -1   ; 2 uses
  br i1 %.not.i.i.i.i48, label %.split42, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not28.i.i.i.i52.not, label %.thread45, label %.split39

.split42:                                         ; preds = %bb.u
  br i1 %.not28.i.i.i.i52.not, label %.thread45, label %.split48.thread

.split39:                                         ; preds = %bb.v
  %i.is = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.it = load ptr, ptr %i.is, align 8, !alias.scope !527, !noalias !528, !nonnull !11, !noundef !11
  %i.iu = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.iv = load i64, ptr %i.iu, align 8, !alias.scope !527, !noalias !528, !noundef !11 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.val1, i64 56
  %i.ix = load ptr, ptr %i.iw, align 8, !alias.scope !528, !noalias !527, !nonnull !11, !noundef !11
  %i.iy = getelementptr inbounds nuw i8, ptr %.val1, i64 64
  %i.iz = load i64, ptr %i.iy, align 8, !alias.scope !528, !noalias !527, !noundef !11 ; 2 uses
  %spec.store.select2.i.i.i.i50 = tail call i64 @llvm.umin.i64(i64 %i.iv, i64 %i.iz)
  %i.ja = tail call i32 @memcmp(ptr nonnull %i.it, ptr nonnull %i.ix, i64 %spec.store.select2.i.i.i.i50), !noalias !529 ; 2 uses
  %i.jb = sext i32 %i.ja to i64
  %i.jc = icmp eq i32 %i.ja, 0
  %i.jd = sub i64 %i.iv, %i.iz
  %spec.select31.i.i.i.i51 = select i1 %i.jc, i64 %i.jd, i64 %i.jb
  %spec.select31.i.i.i.i51.fr = freeze i64 %spec.select31.i.i.i.i51
  %i.je = icmp slt i64 %spec.select31.i.i.i.i51.fr, 0
  br i1 %i.je, label %.split48.thread, label %.thread45

_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit53: ; preds = %bb.s, %bb.t
  %.sroa.0.0.i.i.i.i45.in = phi i64 [ %spec.select.i.i.i.i44, %bb.s ], [ %spec.select30.i.i.i.i47, %bb.t ]
  %.sroa.0.0.i.i.i.i45.in.fr = freeze i64 %.sroa.0.0.i.i.i.i45.in
  %.sroa.0.0.i.i.i.i45 = icmp slt i64 %.sroa.0.0.i.i.i.i45.in.fr, 0
  br i1 %.sroa.0.0.i.i.i.i45, label %.split48.thread, label %.thread45

.split48.thread:                                  ; preds = %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit53, %.split39, %.split42
  br label %.thread45

.thread45:                                        ; preds = %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit53, %.split39, %bb.v, %.split42, %.split48.thread
  %i.jf = phi ptr [ %i.hn, %.split48.thread ], [ %i.hk, %.split42 ], [ %i.hk, %bb.v ], [ %i.hk, %.split39 ], [ %i.hk, %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit53 ]
  %i.jg = phi ptr [ %i.hk, %.split48.thread ], [ %i.hn, %.split42 ], [ %i.hn, %bb.v ], [ %i.hn, %.split39 ], [ %i.hn, %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit53 ]
  %i.jh = load i64, ptr %i.hl, align 8
  store i64 %i.jh, ptr %1, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jj = load i64, ptr %i.jf, align 8
  store i64 %i.jj, ptr %i.ji, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jl = load i64, ptr %i.jg, align 8
  store i64 %i.jl, ptr %i.jk, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jn = load i64, ptr %i.hm, align 8
  store i64 %i.jn, ptr %i.jm, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort12sort4_stableRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeNCINvMB8_SB19_20sort_unstable_by_keyReNCNvXNtB1g_12print_schemaNtB39_30CustomTypesForTablesForDisplayNtNtBa_3fmt7Display3fmt0E0EB1g_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 32)) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %.val9 = load ptr, ptr %0, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val8, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11
  %i.d = getelementptr inbounds nuw i8, ptr %.val8, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !11 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val9, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !11, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %.val9, i64 32
  %i.i = load i64, ptr %i.h, align 8, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.i)
  %i.j = tail call i32 @memcmp(ptr nonnull readonly %i.c, ptr nonnull readonly %i.g, i64 %spec.store.select.i.i.i.i.i), !alias.scope !530 ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = icmp eq i32 %i.j, 0
  %i.m = sub i64 %i.e, %i.i
  %spec.select.i.i.i.i.i = select i1 %i.l, i64 %i.m, i64 %i.k ; 2 uses
  %i.n = icmp sgt i64 %spec.select.i.i.i.i.i, -1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6 = load ptr, ptr %i.o, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %.val7 = load ptr, ptr %i.p, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val6, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !11, !noundef !11
  %i.s = getelementptr inbounds nuw i8, ptr %.val6, i64 32
  %i.t = load i64, ptr %i.s, align 8, !noundef !11 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val7, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !11, !noundef !11
  %i.w = getelementptr inbounds nuw i8, ptr %.val7, i64 32
  %i.x = load i64, ptr %i.w, align 8, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i10 = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.x)
  %i.y = tail call i32 @memcmp(ptr nonnull readonly %i.r, ptr nonnull readonly %i.v, i64 %spec.store.select.i.i.i.i.i10), !alias.scope !540 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp eq i32 %i.y, 0
  %i.ab = sub i64 %i.t, %i.x
  %spec.select.i.i.i.i.i11 = select i1 %i.aa, i64 %i.ab, i64 %i.z
  %i.ac = icmp slt i64 %spec.select.i.i.i.i.i11, 0 ; 2 uses
  %spec.select.i.i.i.i.i.lobit = lshr i64 %spec.select.i.i.i.i.i, 63
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select.i.i.i.i.i.lobit ; 3 uses
  %i.ae = zext i1 %i.n to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ae ; 4 uses
  %i.ag = select i1 %i.ac, i64 3, i64 2
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag ; 4 uses
  %i.ai = select i1 %i.ac, i64 2, i64 3
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai ; 3 uses
  %.val4 = load ptr, ptr %i.ah, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %.val5 = load ptr, ptr %i.ad, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val4, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !11, !noundef !11
  %i.am = getelementptr inbounds nuw i8, ptr %.val4, i64 32
  %i.an = load i64, ptr %i.am, align 8, !noundef !11 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val5, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !11, !noundef !11
  %i.aq = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i12 = tail call i64 @llvm.umin.i64(i64 %i.an, i64 %i.ar)
  %i.as = tail call i32 @memcmp(ptr nonnull readonly %i.al, ptr nonnull readonly %i.ap, i64 %spec.store.select.i.i.i.i.i12), !alias.scope !550 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp eq i32 %i.as, 0
  %i.av = sub i64 %i.an, %i.ar
  %spec.select.i.i.i.i.i13 = select i1 %i.au, i64 %i.av, i64 %i.at
  %i.aw = icmp slt i64 %spec.select.i.i.i.i.i13, 0 ; 3 uses
  %.val2 = load ptr, ptr %i.aj, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %.val3 = load ptr, ptr %i.af, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !11, !noundef !11
  %i.az = getelementptr inbounds nuw i8, ptr %.val2, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !noundef !11 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val3, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !11, !noundef !11
  %i.bd = getelementptr inbounds nuw i8, ptr %.val3, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i14 = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 %i.be)
  %i.bf = tail call i32 @memcmp(ptr nonnull readonly %i.ay, ptr nonnull readonly %i.bc, i64 %spec.store.select.i.i.i.i.i14), !alias.scope !560 ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp eq i32 %i.bf, 0
  %i.bi = sub i64 %i.ba, %i.be
  %spec.select.i.i.i.i.i15 = select i1 %i.bh, i64 %i.bi, i64 %i.bg
  %i.bj = icmp slt i64 %spec.select.i.i.i.i.i15, 0 ; 3 uses
  %2 = select i1 %i.aw, ptr %i.ah, ptr %i.ad, !unpredictable !11
  %i.bk = select i1 %i.bj, ptr %i.ah, ptr %i.af, !unpredictable !11
  %i.bl = select i1 %i.aw, ptr %i.ad, ptr %i.bk, !unpredictable !11 ; 3 uses
  %i.bm = select i1 %i.aw, ptr %i.af, ptr %i.ah, !unpredictable !11
  %i.bn = select i1 %i.bj, ptr %i.aj, ptr %i.bm, !unpredictable !11 ; 3 uses
  %.val = load ptr, ptr %i.bn, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %.val1 = load ptr, ptr %i.bl, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !11, !noundef !11
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.br = load i64, ptr %i.bq, align 8, !noundef !11 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !11, !noundef !11
  %i.bu = getelementptr inbounds nuw i8, ptr %.val1, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i16 = tail call i64 @llvm.umin.i64(i64 %i.br, i64 %i.bv)
  %i.bw = tail call i32 @memcmp(ptr nonnull readonly %i.bp, ptr nonnull readonly %i.bt, i64 %spec.store.select.i.i.i.i.i16), !alias.scope !570 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = icmp eq i32 %i.bw, 0
  %i.bz = sub i64 %i.br, %i.bv
  %spec.select.i.i.i.i.i17 = select i1 %i.by, i64 %i.bz, i64 %i.bx
  %i.ca = icmp slt i64 %spec.select.i.i.i.i.i17, 0 ; 2 uses
  %3 = load i64, ptr %2, align 8
  store i64 %3, ptr %1, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12.a = load i64, ptr %i.bn, align 8
  %.val13.a = load i64, ptr %i.bl, align 8
  %i.cc = select i1 %i.ca, i64 %.val12.a, i64 %.val13.a, !unpredictable !11
  store i64 %i.cc, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val14.a = load i64, ptr %i.bl, align 8
  %.val15.a = load i64, ptr %i.bn, align 8
  %i.ce = select i1 %i.ca, i64 %.val14.a, i64 %.val15.a, !unpredictable !11
  store i64 %i.ce, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val16 = load i64, ptr %i.af, align 8
  %.val17 = load i64, ptr %i.aj, align 8
  %i.cg = select i1 %i.bj, i64 %.val16, i64 %.val17, !unpredictable !11
  store i64 %i.cg, ptr %i.cf, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort12sort4_stableRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeNCINvMB8_SB19_20sort_unstable_by_keyReNCNvXNtB1g_12print_schemaNtB39_30CustomTypesForTablesForDisplayNtNtBa_3fmt7Display3fmts0_0E0EB1g_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 32)) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %.val9 = load ptr, ptr %0, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val8, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11
  %i.d = getelementptr inbounds nuw i8, ptr %.val8, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !11 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val9, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !11, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %.val9, i64 32
  %i.i = load i64, ptr %i.h, align 8, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.i)
  %i.j = tail call i32 @memcmp(ptr nonnull readonly %i.c, ptr nonnull readonly %i.g, i64 %spec.store.select.i.i.i.i.i), !alias.scope !580 ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = icmp eq i32 %i.j, 0
  %i.m = sub i64 %i.e, %i.i
  %spec.select.i.i.i.i.i = select i1 %i.l, i64 %i.m, i64 %i.k ; 2 uses
  %i.n = icmp sgt i64 %spec.select.i.i.i.i.i, -1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6 = load ptr, ptr %i.o, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %.val7 = load ptr, ptr %i.p, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val6, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !11, !noundef !11
  %i.s = getelementptr inbounds nuw i8, ptr %.val6, i64 32
  %i.t = load i64, ptr %i.s, align 8, !noundef !11 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val7, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !11, !noundef !11
  %i.w = getelementptr inbounds nuw i8, ptr %.val7, i64 32
  %i.x = load i64, ptr %i.w, align 8, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i10 = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.x)
  %i.y = tail call i32 @memcmp(ptr nonnull readonly %i.r, ptr nonnull readonly %i.v, i64 %spec.store.select.i.i.i.i.i10), !alias.scope !590 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp eq i32 %i.y, 0
  %i.ab = sub i64 %i.t, %i.x
  %spec.select.i.i.i.i.i11 = select i1 %i.aa, i64 %i.ab, i64 %i.z
  %i.ac = icmp slt i64 %spec.select.i.i.i.i.i11, 0 ; 2 uses
  %spec.select.i.i.i.i.i.lobit = lshr i64 %spec.select.i.i.i.i.i, 63
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select.i.i.i.i.i.lobit ; 3 uses
  %i.ae = zext i1 %i.n to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ae ; 4 uses
  %i.ag = select i1 %i.ac, i64 3, i64 2
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag ; 4 uses
  %i.ai = select i1 %i.ac, i64 2, i64 3
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai ; 3 uses
  %.val4 = load ptr, ptr %i.ah, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %.val5 = load ptr, ptr %i.ad, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val4, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !11, !noundef !11
  %i.am = getelementptr inbounds nuw i8, ptr %.val4, i64 32
  %i.an = load i64, ptr %i.am, align 8, !noundef !11 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val5, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !11, !noundef !11
  %i.aq = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i12 = tail call i64 @llvm.umin.i64(i64 %i.an, i64 %i.ar)
  %i.as = tail call i32 @memcmp(ptr nonnull readonly %i.al, ptr nonnull readonly %i.ap, i64 %spec.store.select.i.i.i.i.i12), !alias.scope !600 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp eq i32 %i.as, 0
  %i.av = sub i64 %i.an, %i.ar
  %spec.select.i.i.i.i.i13 = select i1 %i.au, i64 %i.av, i64 %i.at
  %i.aw = icmp slt i64 %spec.select.i.i.i.i.i13, 0 ; 3 uses
  %.val2 = load ptr, ptr %i.aj, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %.val3 = load ptr, ptr %i.af, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !11, !noundef !11
  %i.az = getelementptr inbounds nuw i8, ptr %.val2, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !noundef !11 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val3, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !11, !noundef !11
  %i.bd = getelementptr inbounds nuw i8, ptr %.val3, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i14 = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 %i.be)
  %i.bf = tail call i32 @memcmp(ptr nonnull readonly %i.ay, ptr nonnull readonly %i.bc, i64 %spec.store.select.i.i.i.i.i14), !alias.scope !610 ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp eq i32 %i.bf, 0
  %i.bi = sub i64 %i.ba, %i.be
  %spec.select.i.i.i.i.i15 = select i1 %i.bh, i64 %i.bi, i64 %i.bg
  %i.bj = icmp slt i64 %spec.select.i.i.i.i.i15, 0 ; 3 uses
  %2 = select i1 %i.aw, ptr %i.ah, ptr %i.ad, !unpredictable !11
  %i.bk = select i1 %i.bj, ptr %i.ah, ptr %i.af, !unpredictable !11
  %i.bl = select i1 %i.aw, ptr %i.ad, ptr %i.bk, !unpredictable !11 ; 3 uses
  %i.bm = select i1 %i.aw, ptr %i.af, ptr %i.ah, !unpredictable !11
  %i.bn = select i1 %i.bj, ptr %i.aj, ptr %i.bm, !unpredictable !11 ; 3 uses
  %.val = load ptr, ptr %i.bn, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %.val1 = load ptr, ptr %i.bl, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !11, !noundef !11
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.br = load i64, ptr %i.bq, align 8, !noundef !11 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !11, !noundef !11
  %i.bu = getelementptr inbounds nuw i8, ptr %.val1, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i16 = tail call i64 @llvm.umin.i64(i64 %i.br, i64 %i.bv)
  %i.bw = tail call i32 @memcmp(ptr nonnull readonly %i.bp, ptr nonnull readonly %i.bt, i64 %spec.store.select.i.i.i.i.i16), !alias.scope !620 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = icmp eq i32 %i.bw, 0
  %i.bz = sub i64 %i.br, %i.bv
  %spec.select.i.i.i.i.i17 = select i1 %i.by, i64 %i.bz, i64 %i.bx
  %i.ca = icmp slt i64 %spec.select.i.i.i.i.i17, 0 ; 2 uses
  %3 = load i64, ptr %2, align 8
  store i64 %3, ptr %1, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12.a = load i64, ptr %i.bn, align 8
  %.val13.a = load i64, ptr %i.bl, align 8
  %i.cc = select i1 %i.ca, i64 %.val12.a, i64 %.val13.a, !unpredictable !11
  store i64 %i.cc, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val14.a = load i64, ptr %i.bl, align 8
  %.val15.a = load i64, ptr %i.bn, align 8
  %i.ce = select i1 %i.ca, i64 %.val14.a, i64 %.val15.a, !unpredictable !11
  store i64 %i.ce, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val16 = load i64, ptr %i.af, align 8
  %.val17 = load i64, ptr %i.aj, align 8
  %i.cg = select i1 %i.bj, i64 %.val16, i64 %.val17, !unpredictable !11
  store i64 %i.cg, ptr %i.cf, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort12sort4_stableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaENCINvMNtB1e_5sliceSB19_7sort_byNCNvXs1z_NtNtNtB1e_11collections5btree3mapINtB3a_8BTreeMapB1a_B1M_EINtNtBa_7convert4FromAB19_j1_E4from0E0EB1Q_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 928)) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 240
  %.val16 = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  %i.b = getelementptr i8, ptr %0, i64 248
  %.val17 = load i64, ptr %i.b, align 8, !noundef !11 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val18 = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val19 = load i64, ptr %i.d, align 8, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val17, i64 range(i64 0, -9223372036854775808) %.val19)
  %i.e = tail call i32 @memcmp(ptr nonnull readonly %.val16, ptr nonnull readonly %.val18, i64 %spec.store.select.i.i.i.i.i), !alias.scope !630 ; 2 uses
  %i.f = sext i32 %i.e to i64
  %i.g = icmp eq i32 %i.e, 0
  %i.h = sub nsw i64 %.val17, %.val19
  %spec.select.i.i.i.i.i = select i1 %i.g, i64 %i.h, i64 %i.f ; 2 uses
  %i.i = icmp sgt i64 %spec.select.i.i.i.i.i, -1
  %i.j = getelementptr i8, ptr %0, i64 704
  %.val12 = load ptr, ptr %i.j, align 8, !nonnull !11, !noundef !11
  %i.k = getelementptr i8, ptr %0, i64 712
  %.val13 = load i64, ptr %i.k, align 8, !noundef !11 ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 472
  %.val14 = load ptr, ptr %i.l, align 8, !nonnull !11, !noundef !11
  %i.m = getelementptr i8, ptr %0, i64 480
  %.val15 = load i64, ptr %i.m, align 8, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i20 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val13, i64 range(i64 0, -9223372036854775808) %.val15)
  %i.n = tail call i32 @memcmp(ptr nonnull readonly %.val12, ptr nonnull readonly %.val14, i64 %spec.store.select.i.i.i.i.i20), !alias.scope !634 ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp eq i32 %i.n, 0
  %i.q = sub nsw i64 %.val13, %.val15
  %spec.select.i.i.i.i.i21 = select i1 %i.p, i64 %i.q, i64 %i.o
  %i.r = icmp slt i64 %spec.select.i.i.i.i.i21, 0 ; 2 uses
  %spec.select.i.i.i.i.i.lobit = lshr i64 %spec.select.i.i.i.i.i, 63
  %i.s = getelementptr inbounds nuw [232 x i8], ptr %0, i64 %spec.select.i.i.i.i.i.lobit ; 4 uses
  %i.t = zext i1 %i.i to i64
  %i.u = getelementptr inbounds nuw [232 x i8], ptr %0, i64 %i.t ; 5 uses
  %i.v = select i1 %i.r, i64 3, i64 2
  %i.w = getelementptr inbounds nuw [232 x i8], ptr %0, i64 %i.v ; 5 uses
  %i.x = select i1 %i.r, i64 2, i64 3
  %i.y = getelementptr inbounds nuw [232 x i8], ptr %0, i64 %i.x ; 4 uses
  %i.z = getelementptr i8, ptr %i.w, i64 8
  %.val8 = load ptr, ptr %i.z, align 8, !nonnull !11, !noundef !11
  %i.aa = getelementptr i8, ptr %i.w, i64 16
  %.val9 = load i64, ptr %i.aa, align 8, !noundef !11 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.s, i64 8
  %.val10 = load ptr, ptr %i.ab, align 8, !nonnull !11, !noundef !11
  %i.ac = getelementptr i8, ptr %i.s, i64 16
  %.val11 = load i64, ptr %i.ac, align 8, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i22 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val9, i64 range(i64 0, -9223372036854775808) %.val11)
  %i.ad = tail call i32 @memcmp(ptr nonnull readonly %.val8, ptr nonnull readonly %.val10, i64 %spec.store.select.i.i.i.i.i22), !alias.scope !638 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp eq i32 %i.ad, 0
  %i.ag = sub nsw i64 %.val9, %.val11
  %spec.select.i.i.i.i.i23 = select i1 %i.af, i64 %i.ag, i64 %i.ae
  %i.ah = icmp slt i64 %spec.select.i.i.i.i.i23, 0 ; 3 uses
  %i.ai = getelementptr i8, ptr %i.y, i64 8
  %.val4 = load ptr, ptr %i.ai, align 8, !nonnull !11, !noundef !11
  %i.aj = getelementptr i8, ptr %i.y, i64 16
  %.val5 = load i64, ptr %i.aj, align 8, !noundef !11 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.u, i64 8
  %.val6 = load ptr, ptr %i.ak, align 8, !nonnull !11, !noundef !11
  %i.al = getelementptr i8, ptr %i.u, i64 16
  %.val7 = load i64, ptr %i.al, align 8, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i24 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val5, i64 range(i64 0, -9223372036854775808) %.val7)
  %i.am = tail call i32 @memcmp(ptr nonnull readonly %.val4, ptr nonnull readonly %.val6, i64 %spec.store.select.i.i.i.i.i24), !alias.scope !642 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp eq i32 %i.am, 0
  %i.ap = sub nsw i64 %.val5, %.val7
  %spec.select.i.i.i.i.i25 = select i1 %i.ao, i64 %i.ap, i64 %i.an
  %i.aq = icmp slt i64 %spec.select.i.i.i.i.i25, 0 ; 3 uses
  %i.ar = select i1 %i.ah, ptr %i.w, ptr %i.s, !unpredictable !11
  %i.as = select i1 %i.aq, ptr %i.u, ptr %i.y, !unpredictable !11
  %i.at = select i1 %i.aq, ptr %i.w, ptr %i.u, !unpredictable !11
  %i.au = select i1 %i.ah, ptr %i.s, ptr %i.at, !unpredictable !11 ; 4 uses
  %i.av = select i1 %i.ah, ptr %i.u, ptr %i.w, !unpredictable !11
  %i.aw = select i1 %i.aq, ptr %i.y, ptr %i.av, !unpredictable !11 ; 4 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %.val = load ptr, ptr %i.ax, align 8, !nonnull !11, !noundef !11
  %i.ay = getelementptr i8, ptr %i.aw, i64 16
  %.val1 = load i64, ptr %i.ay, align 8, !noundef !11 ; 2 uses
  %i.az = getelementptr i8, ptr %i.au, i64 8
  %.val2 = load ptr, ptr %i.az, align 8, !nonnull !11, !noundef !11
  %i.ba = getelementptr i8, ptr %i.au, i64 16
  %.val3 = load i64, ptr %i.ba, align 8, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i26 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1, i64 range(i64 0, -9223372036854775808) %.val3)
  %i.bb = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %spec.store.select.i.i.i.i.i26), !alias.scope !646 ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp eq i32 %i.bb, 0
  %i.be = sub nsw i64 %.val1, %.val3
  %spec.select.i.i.i.i.i27 = select i1 %i.bd, i64 %i.be, i64 %i.bc
  %i.bf = icmp slt i64 %spec.select.i.i.i.i.i27, 0 ; 2 uses
  %i.bg = select i1 %i.bf, ptr %i.aw, ptr %i.au, !unpredictable !11
  %i.bh = select i1 %i.bf, ptr %i.au, ptr %i.aw, !unpredictable !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %1, ptr noundef nonnull align 8 dereferenceable(232) %i.ar, i64 232, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.bi, ptr noundef nonnull align 8 dereferenceable(232) %i.bg, i64 232, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 464
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.bj, ptr noundef nonnull align 8 dereferenceable(232) %i.bh, i64 232, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 696
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.bk, ptr noundef nonnull align 8 dereferenceable(232) %i.as, i64 232, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort12sort4_stableTRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeRNtNtB1f_10table_data9TableNameRNtB1d_16ColumnDefinitionENCINvMNtCs40k4W9msRzi_5alloc5sliceSB19_11sort_by_keyReNCNvXNtB1h_12print_schemaNtB4l_30CustomTypesForTablesForDisplayNtNtBa_3fmt7Display3fmts3_0E0EB1h_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 96)) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val8 = load ptr, ptr %i.a, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %.val9 = load ptr, ptr %0, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val8, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11
  %i.d = getelementptr inbounds nuw i8, ptr %.val8, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !11 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val9, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !11, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %.val9, i64 32
  %i.i = load i64, ptr %i.h, align 8, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.i)
  %i.j = tail call i32 @memcmp(ptr nonnull readonly %i.c, ptr nonnull readonly %i.g, i64 %spec.store.select.i.i.i.i.i), !alias.scope !650 ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = icmp eq i32 %i.j, 0
  %i.m = sub i64 %i.e, %i.i
  %spec.select.i.i.i.i.i = select i1 %i.l, i64 %i.m, i64 %i.k ; 2 uses
  %i.n = icmp sgt i64 %spec.select.i.i.i.i.i, -1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val6 = load ptr, ptr %i.o, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %.val7 = load ptr, ptr %i.p, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val6, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !11, !noundef !11
  %i.s = getelementptr inbounds nuw i8, ptr %.val6, i64 32
  %i.t = load i64, ptr %i.s, align 8, !noundef !11 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val7, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !11, !noundef !11
  %i.w = getelementptr inbounds nuw i8, ptr %.val7, i64 32
  %i.x = load i64, ptr %i.w, align 8, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i10 = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.x)
  %i.y = tail call i32 @memcmp(ptr nonnull readonly %i.r, ptr nonnull readonly %i.v, i64 %spec.store.select.i.i.i.i.i10), !alias.scope !660 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp eq i32 %i.y, 0
  %i.ab = sub i64 %i.t, %i.x
  %spec.select.i.i.i.i.i11 = select i1 %i.aa, i64 %i.ab, i64 %i.z
  %i.ac = icmp slt i64 %spec.select.i.i.i.i.i11, 0 ; 2 uses
  %spec.select.i.i.i.i.i.lobit = lshr i64 %spec.select.i.i.i.i.i, 63
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %spec.select.i.i.i.i.i.lobit ; 3 uses
  %i.ae = zext i1 %i.n to i64
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ae ; 4 uses
  %i.ag = select i1 %i.ac, i64 3, i64 2
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ag ; 4 uses
  %i.ai = select i1 %i.ac, i64 2, i64 3
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ai ; 3 uses
  %.val4 = load ptr, ptr %i.ah, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %.val5 = load ptr, ptr %i.ad, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val4, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !11, !noundef !11
  %i.am = getelementptr inbounds nuw i8, ptr %.val4, i64 32
  %i.an = load i64, ptr %i.am, align 8, !noundef !11 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val5, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !11, !noundef !11
  %i.aq = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i12 = tail call i64 @llvm.umin.i64(i64 %i.an, i64 %i.ar)
  %i.as = tail call i32 @memcmp(ptr nonnull readonly %i.al, ptr nonnull readonly %i.ap, i64 %spec.store.select.i.i.i.i.i12), !alias.scope !670 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp eq i32 %i.as, 0
  %i.av = sub i64 %i.an, %i.ar
  %spec.select.i.i.i.i.i13 = select i1 %i.au, i64 %i.av, i64 %i.at
  %i.aw = icmp slt i64 %spec.select.i.i.i.i.i13, 0 ; 3 uses
  %.val2 = load ptr, ptr %i.aj, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %.val3 = load ptr, ptr %i.af, align 8, !nonnull !11, !align !45, !noundef !11 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !11, !noundef !11
  %i.az = getelementptr inbounds nuw i8, ptr %.val2, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !noundef !11 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val3, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !11, !noundef !11
  %i.bd = getelementptr inbounds nuw i8, ptr %.val3, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i14 = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 %i.be)
  %i.bf = tail call i32 @memcmp(ptr nonnull readonly %i.ay, ptr nonnull readonly %i.bc, i64 %spec.store.select.i.i.i.i.i14), !alias.scope !680 ; 2 uses
  %i.bg = sext i32 %i.bf to i64
end_hunk_0
