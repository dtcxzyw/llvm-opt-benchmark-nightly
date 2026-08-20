inline.NumInlined: 2576
inline.NumDeleted: 969
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtNtCslLuZgPVt6hg_3ide11inlay_hints8lifetime8fn_hints:bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, 31903017074688) i64 @_RNvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting9highlight13highlight_def(ptr nofree noundef nonnull readonly align 8 captures(none) %0, i32 noundef %1, i32 %2, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40) %3, i8 noundef range(i8 0, 4) %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 6 uses
  %i.b = alloca [16 x i8], align 4                ; 6 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = alloca [16 x i8], align 4                ; 6 uses
  %i.e = alloca [16 x i8], align 4                ; 5 uses
  %i.f = alloca [16 x i8], align 4                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 4                ; 5 uses
  %i.j = alloca [16 x i8], align 4                ; 6 uses
  %i.k = alloca [16 x i8], align 4                ; 5 uses
  %i.l = alloca [16 x i8], align 4                ; 6 uses
  %i.m = alloca [16 x i8], align 4                ; 6 uses
  %i.n = alloca [16 x i8], align 4                ; 6 uses
  %i.o = alloca [32 x i8], align 4                ; 4 uses
  %i.p = alloca [32 x i8], align 4                ; 4 uses
  %i.q = alloca [12 x i8], align 4                ; 7 uses
  %i.r = alloca [12 x i8], align 4                ; 7 uses
  %i.s = alloca [12 x i8], align 4                ; 7 uses
  %i.t = alloca [12 x i8], align 4                ; 7 uses
  %i.u = alloca [12 x i8], align 4                ; 7 uses
  %i.v = alloca [12 x i8], align 4                ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 5 uses
  %i.x = alloca [80 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [32 x i8], align 8                ; 5 uses
  %i.aa = alloca [32 x i8], align 8               ; 5 uses
  %i.ab = alloca [12 x i8], align 4               ; 3 uses
  %i.ac = alloca [12 x i8], align 4               ; 3 uses
  %i.ad = alloca [32 x i8], align 8               ; 5 uses
  %i.ae = alloca [32 x i8], align 8               ; 5 uses
  %i.af = alloca [12 x i8], align 4               ; 3 uses
  %i.ag = alloca [12 x i8], align 4               ; 3 uses
  %i.ah = alloca [32 x i8], align 8               ; 5 uses
  %i.ai = alloca [32 x i8], align 8               ; 5 uses
  %i.aj = alloca [32 x i8], align 8               ; 5 uses
  %i.ak = alloca [12 x i8], align 4               ; 4 uses
  %i.al = alloca [12 x i8], align 4               ; 3 uses
  %i.am = alloca [12 x i8], align 4               ; 3 uses
  %i.an = alloca [12 x i8], align 4               ; 3 uses
  %i.ao = alloca [32 x i8], align 8               ; 5 uses
  %i.ap = alloca [32 x i8], align 8               ; 5 uses
  %i.aq = alloca [32 x i8], align 8               ; 5 uses
  %i.ar = alloca [32 x i8], align 8               ; 5 uses
  %i.as = alloca [12 x i8], align 4               ; 4 uses
  %i.at = load ptr, ptr %0, align 8, !nonnull !4, !align !86, !noundef !4 ; 34 uses
  %i.au = load i8, ptr %3, align 8, !range !669, !noundef !4 ; 2 uses
  switch i8 %i.au, label %default.unreachable196 [
    i8 0, label %switch.lookup
    i8 1, label %switch.lookup199
    i8 2, label %bb.w
    i8 3, label %bb.b
    i8 4, label %bb.c
    i8 5, label %bb.d
    i8 6, label %switch.lookup202
    i8 7, label %bb.e
    i8 8, label %bb.f
    i8 9, label %bb.g
    i8 10, label %bb.h
    i8 11, label %bb.i
    i8 12, label %bb.j
    i8 13, label %switch.lookup205
    i8 14, label %bb.k
    i8 15, label %bb.l
    i8 16, label %bb.m
    i8 17, label %bb.n
    i8 18, label %bb.al
    i8 19, label %bb.o
    i8 20, label %bb.p
    i8 21, label %bb.q
    i8 22, label %bb.u
    i8 23, label %bb.v
  ]

default.unreachable196:                           ; preds = %bb.a
  unreachable

switch.lookup:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.as, ptr noundef nonnull align 4 dereferenceable(12) %i.av, i64 12, i1 false)
  %i.aw = call noundef i8 @_RNvMsK_Cs8Xq8PKFYOms_3hirNtB5_5Macro4kind(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.as, ptr noundef nonnull %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @38)
  %i.ax = zext nneg i8 %i.aw to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting9highlight13highlight_def, i64 %i.ax
  %switch.load = load i64, ptr %switch.gep, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.ay = load ptr, ptr %0, align 8, !nonnull !4, !align !86, !noundef !4
  %.sroa.9.4..sroa_idx.i146 = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.4..sroa_idx.i146, ptr noundef nonnull align 4 dereferenceable(12) %i.av, i64 12, i1 false)
  store i32 8, ptr %i.e, align 4, !noalias !2252
  call void @_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ar, ptr noundef nonnull %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @38, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.e), !noalias !2256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2252
  %.sroa.045.0.copyload49 = load i64, ptr %i.ar, align 8
  %.sroa.13.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.13.0.copyload64 = load i32, ptr %.sroa.13.0..sroa_idx63, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.w

switch.lookup199:                                 ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.0.0.copyload = load i32, ptr %i.az, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.ba = zext nneg i32 %.sroa.0.0.copyload to i64
  %switch.gep200 = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting9highlight13highlight_def.532, i64 %i.ba
  %switch.load201 = load i8, ptr %switch.gep200, align 1
  %switch.ext = zext i8 %switch.load201 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2257
  store i32 %switch.ext, ptr %i.n, align 4, !noalias !2257
  %.sroa.9.4..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.bb = load <2 x i32>, ptr %.sroa.4.0..sroa_idx, align 8
  store <2 x i32> %i.bb, ptr %.sroa.9.4..sroa_idx4.i, align 4, !noalias !2257
  %.sroa.11.4..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 %.sroa.6.0.copyload, ptr %.sroa.11.4..sroa_idx16.i, align 4, !noalias !2257
  call void @_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner9new_field(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.aq, ptr noundef nonnull %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @38, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.n), !noalias !2261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2257
  %.sroa.045.0.copyload = load i64, ptr %i.aq, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.13.0.copyload = load i32, ptr %.sroa.13.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !range !218, !noundef !4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !noundef !4 ; 2 uses
  %i.bg = tail call noundef zeroext i1 @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module13is_crate_root(i32 noundef %i.bd, i32 noundef %i.bf, ptr noundef nonnull %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @38)
  %. = select i1 %i.bg, i64 4398046511104, i64 19791209299968
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.bh = load ptr, ptr %0, align 8, !nonnull !4, !align !86, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2262
  store i32 0, ptr %i.m, align 4, !noalias !2262
  %.sroa.9.4..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.bd, ptr %.sroa.9.4..sroa_idx.i, align 4, !noalias !2262
  %.sroa.10.4..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 %i.bf, ptr %.sroa.10.4..sroa_idx.i, align 4, !noalias !2262
  call void @_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ao, ptr noundef nonnull %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @38, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2262
  %.sroa.045.0.copyload50 = load i64, ptr %i.ao, align 8
  %.sroa.13.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.13.0.copyload66 = load i32, ptr %.sroa.13.0..sroa_idx65, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !range !218, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.bm = tail call { i32, i32 } @_RNvMs_Cs8Xq8PKFYOms_3hirNtB4_5Crate11root_module(i32 noundef range(i32 1, 0) %i.bj, i32 noundef %i.bl, ptr noundef nonnull %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @38), !noalias !2265 ; 2 uses
  %i.bn = extractvalue { i32, i32 } %i.bm, 0
  %i.bo = extractvalue { i32, i32 } %i.bm, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2270
  store i32 0, ptr %i.l, align 4, !noalias !2270
  %.sroa.9.4..sroa_idx.i136 = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %i.bn, ptr %.sroa.9.4..sroa_idx.i136, align 4, !noalias !2270
  %.sroa.10.4..sroa_idx.i137 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %i.bo, ptr %.sroa.10.4..sroa_idx.i137, align 4, !noalias !2270
  call void @_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ap, ptr noundef nonnull %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @38, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2270
  %.sroa.045.0.copyload46 = load i64, ptr %i.ap, align 8
  %.sroa.13.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.13.0.copyload58 = load i32, ptr %.sroa.13.0..sroa_idx57, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.w

bb.d:                                             ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.0155.0.copyload = load i8, ptr %i.bp, align 4 ; 6 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 5 ; 5 uses
  %.sroa.9166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.9166.0.copyload = load i32, ptr %.sroa.9166.0..sroa_idx, align 8 ; 6 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i8 %.sroa.0155.0.copyload, ptr %i.u, align 4
  %.sroa.9.0..sroa_idx161 = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.9.0..sroa_idx161, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.9.0..sroa_idx, i64 3, i1 false)
  %.sroa.9166.0..sroa_idx167 = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %.sroa.9166.0.copyload, ptr %.sroa.9166.0..sroa_idx167, align 4
  %.sroa.10.0..sroa_idx177 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx177, align 4
  call void @_RNvXsT_Cs8Xq8PKFYOms_3hirNtB5_8FunctionNtB5_11AsAssocItem13as_assoc_item(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.an, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.u, ptr noundef nonnull %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @38)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.bq = load i8, ptr %i.an, align 4, !range !620, !noundef !4
  %.not116 = icmp eq i8 %i.bq, -1
  br i1 %.not116, label %bb.ab, label %bb.x

switch.lookup202:                                 ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.0187.0.copyload = load i32, ptr %i.br, align 4 ; 2 uses
  %.sroa.5189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %6 = zext nneg i32 %.sroa.0187.0.copyload to i64
  %switch.gep203 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting9highlight13highlight_def.533, i64 %6
  %switch.load204 = load i64, ptr %switch.gep203, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2271
  store i32 1, ptr %i.c, align 4, !noalias !2271
  %.sroa.9.4..sroa_idx.i149 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %.sroa.0187.0.copyload, ptr %.sroa.9.4..sroa_idx.i149, align 4, !noalias !2271
  %.sroa.10.4..sroa_idx.i150 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %7 = load <2 x i32>, ptr %.sroa.5189.0..sroa_idx, align 8
  store <2 x i32> %7, ptr %.sroa.10.4..sroa_idx.i150, align 4, !noalias !2271
  call void @_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ai, ptr noundef nonnull %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @38, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.c), !noalias !2275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2271
  %.sroa.045.0.copyload52 = load i64, ptr %i.ai, align 8
  %.sroa.13.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.13.0.copyload70 = load i32, ptr %.sroa.13.0..sroa_idx69, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2276
  store i32 3, ptr %i.k, align 4, !noalias !2276
  %.sroa.9.4..sroa_idx.i138 = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.bt = load <2 x i32>, ptr %i.bs, align 4
  store <2 x i32> %i.bt, ptr %.sroa.9.4..sroa_idx.i138, align 4, !noalias !2276
  call void @_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ah, ptr noundef nonnull %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @38, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2276
  %.sroa.045.0.copyload47 = load i64, ptr %i.ah, align 8
  %.sroa.13.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.13.0.copyload60 = load i32, ptr %.sroa.13.0..sroa_idx59, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.w

bb.f:                                             ; preds = %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !range !218, !noundef !4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !noundef !4 ; 2 uses
  call void @_RNvXsU_Cs8Xq8PKFYOms_3hirNtB5_5ConstNtB5_11AsAssocItem13as_assoc_item(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.ag, i32 noundef %i.bv, i32 noundef %i.bx, ptr noundef nonnull %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @38)
  %i.by = load i8, ptr %i.ag, align 4, !range !620, !noundef !4
  %.not113 = icmp eq i8 %i.by, -1
  br i1 %.not113, label %bb.ah, label %bb.af

bb.g:                                             ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !range !218, !noundef !4 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !noundef !4 ; 2 uses
  %i.cd = tail call noundef zeroext i1 @_RNvMsB_Cs8Xq8PKFYOms_3hirNtB5_6Static6is_mut(i32 noundef %i.ca, i32 noundef %i.cc, ptr noundef nonnull %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @38)
  %spec.select128 = select i1 %5, i32 131072, i32 4325376
  %.sroa.05.12 = select i1 %i.cd, i32 %spec.select128, i32 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.ce = load ptr, ptr %0, align 8, !nonnull !4, !align !86, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2279
  store i32 4, ptr %i.j, align 4, !noalias !2279
  %.sroa.9.4..sroa_idx.i140 = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %i.ca, ptr %.sroa.9.4..sroa_idx.i140, align 4, !noalias !2279
  %.sroa.10.4..sroa_idx.i141 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.cc, ptr %.sroa.10.4..sroa_idx.i141, align 4, !noalias !2279
  call void @_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.z, ptr noundef nonnull %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @38, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2279
  %.sroa.045.0.copyload54 = load i64, ptr %i.z, align 8
  %.sroa.13.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.13.0.copyload74 = load i32, ptr %.sroa.13.0..sroa_idx73, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.w

bb.h:                                             ; preds = %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2282
  store i32 6, ptr %i.i, align 4, !noalias !2282
  %.sroa.9.4..sroa_idx.i142 = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.cg = load <2 x i32>, ptr %i.cf, align 4
  store <2 x i32> %i.cg, ptr %.sroa.9.4..sroa_idx.i142, align 4, !noalias !2282
  call void @_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ad, ptr noundef nonnull %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @38, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2282
  %.sroa.045.0.copyload48 = load i64, ptr %i.ad, align 8
  %.sroa.13.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.13.0.copyload62 = load i32, ptr %.sroa.13.0..sroa_idx61, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.w

bb.i:                                             ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !range !218, !noundef !4 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ck = load i32, ptr %i.cj, align 8, !noundef !4 ; 2 uses
  call void @_RNvXsV_Cs8Xq8PKFYOms_3hirNtB5_9TypeAliasNtB5_11AsAssocItem13as_assoc_item(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.ac, i32 noundef %i.ci, i32 noundef %i.ck, ptr noundef nonnull %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @38)
  %i.cl = load i8, ptr %i.ac, align 4, !range !620, !noundef !4
  %.not110 = icmp eq i8 %i.cl, -1
  br i1 %.not110, label %bb.ak, label %bb.ai

bb.j:                                             ; preds = %bb.a
  br label %bb.w

switch.lookup205:                                 ; preds = %bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.041.0.copyload = load i32, ptr %i.cm, align 4 ; 2 uses
  %i.cn = zext nneg i32 %.sroa.041.0.copyload to i64
  %switch.gep206 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting9highlight13highlight_def.534, i64 %i.cn
  %switch.load207 = load i64, ptr %switch.gep206, align 8
  %i.co = zext nneg i32 %.sroa.041.0.copyload to i64
  %switch.gep208 = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting9highlight13highlight_def.535, i64 %i.co
  %switch.load209 = load i8, ptr %switch.gep208, align 1
  %switch.ext210 = zext i8 %switch.load209 to i32
  br label %bb.w

bb.k:                                             ; preds = %bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.p, ptr noundef nonnull align 4 dereferenceable(32) %i.cp, i64 32, i1 false)
  %i.cq = call noundef zeroext i1 @_RNvMs15_Cs8Xq8PKFYOms_3hirNtB6_5Local7is_self(ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(32) %i.p, ptr noundef nonnull %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @38)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br i1 %i.cq, label %bb.an, label %bb.am

bb.l:                                             ; preds = %bb.a
  br label %bb.w

bb.m:                                             ; preds = %bb.a
  br label %bb.w

bb.n:                                             ; preds = %bb.a
  br label %bb.w

bb.o:                                             ; preds = %bb.a
  br label %bb.w

bb.p:                                             ; preds = %bb.a
  br label %bb.w

bb.q:                                             ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !range !218, !noundef !4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cu = load i32, ptr %i.ct, align 8, !noundef !4 ; 2 uses
  %i.cv = tail call { i64, ptr } @_RNvMsw_Cs8Xq8PKFYOms_3hirNtB5_15ExternCrateDecl5alias(i32 noundef %i.cs, i32 noundef %i.cu, ptr noundef nonnull %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @38) ; 2 uses
  %i.cw = extractvalue { i64, ptr } %i.cv, 0      ; 2 uses
  %i.cx = extractvalue { i64, ptr } %i.cv, 1      ; 2 uses
  %.not = icmp eq i64 %i.cw, 1
  %i.cy = icmp eq i64 %i.cw, 0
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = and i64 %i.cz, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.da, 0
  %or.cond.i = select i1 %i.cy, i1 true, i1 %.not.i.i.i.i.i.i
  br i1 %or.cond.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsileJQcQObtj_7hir_def9item_tree11ImportAliasEECslLuZgPVt6hg_3ide.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.db = getelementptr i8, ptr %i.cx, i64 -1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.db) ]
  %i.dc = tail call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCslLuZgPVt6hg_3ide(ptr noundef nonnull %i.db)
  %i.dd = sub nsw i64 0, %i.dc
  %i.de = getelementptr inbounds i8, ptr %i.db, i64 %i.dd ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.de, ptr %i.h, align 8
  %i.df = load atomic i64, ptr %i.de acquire, align 8
  %i.dg = icmp eq i64 %i.df, 2
  br i1 %i.dg, label %bb.s, label %bb.t, !prof !6

bb.s:                                             ; preds = %bb.r
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.de, ptr %i.g, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsileJQcQObtj_7hir_def9item_tree11ImportAliasEECslLuZgPVt6hg_3ide.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsileJQcQObtj_7hir_def9item_tree11ImportAliasEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.q, %bb.t
  %.125 = select i1 %.not, i32 0, i32 16384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.dh = load ptr, ptr %0, align 8, !nonnull !4, !align !86, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2285
  store i32 11, ptr %i.f, align 4, !noalias !2285
  %.sroa.9.4..sroa_idx.i144 = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.cs, ptr %.sroa.9.4..sroa_idx.i144, align 4, !noalias !2285
  %.sroa.10.4..sroa_idx.i145 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.cu, ptr %.sroa.10.4..sroa_idx.i145, align 4, !noalias !2285
  call void @_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.w, ptr noundef nonnull %i.dh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @38, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2285
  %.sroa.045.0.copyload56 = load i64, ptr %i.w, align 8
  %.sroa.13.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.13.0.copyload78 = load i32, ptr %.sroa.13.0..sroa_idx77, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.w

bb.u:                                             ; preds = %bb.a
  br label %bb.w

bb.v:                                             ; preds = %bb.a
  br label %bb.w

bb.w:                                             ; preds = %switch.lookup205, %bb.al, %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsileJQcQObtj_7hir_def9item_tree11ImportAliasEECslLuZgPVt6hg_3ide.exit, %bb.aw, %bb.ak, %bb.g, %bb.ah, %switch.lookup202, %_RNvYNtCs8Xq8PKFYOms_3hir8FunctionNtNtB4_5attrs8HasAttrs5attrsCslLuZgPVt6hg_3ide.exit, %bb.b, %switch.lookup, %bb.v, %bb.u, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.h, %bb.e, %bb.c, %switch.lookup199
  %.sroa.13.0 = phi i32 [ %.sroa.13.0.copyload64, %switch.lookup ], [ %.sroa.13.0.copyload, %switch.lookup199 ], [ -1, %bb.v ], [ %.sroa.13.0.copyload66, %bb.b ], [ %.sroa.13.0.copyload58, %bb.c ], [ %.sroa.13.0.copyload68, %_RNvYNtCs8Xq8PKFYOms_3hir8FunctionNtNtB4_5attrs8HasAttrs5attrsCslLuZgPVt6hg_3ide.exit ], [ %.sroa.13.0.copyload70, %switch.lookup202 ], [ %.sroa.13.0.copyload60, %bb.e ], [ %.sroa.13.0.copyload72, %bb.ah ], [ %.sroa.13.0.copyload74, %bb.g ], [ %.sroa.13.0.copyload62, %bb.h ], [ %.sroa.13.0.copyload76, %bb.ak ], [ -1, %bb.j ], [ -1, %bb.a ], [ -1, %bb.aw ], [ -1, %bb.l ], [ -1, %bb.m ], [ -1, %bb.n ], [ -1, %bb.al ], [ -1, %bb.o ], [ -1, %bb.p ], [ %.sroa.13.0.copyload78, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsileJQcQObtj_7hir_def9item_tree11ImportAliasEECslLuZgPVt6hg_3ide.exit ], [ -1, %bb.u ], [ -1, %switch.lookup205 ]
  %.sroa.045.0 = phi i64 [ %.sroa.045.0.copyload49, %switch.lookup ], [ %.sroa.045.0.copyload, %switch.lookup199 ], [ undef, %bb.v ], [ %.sroa.045.0.copyload50, %bb.b ], [ %.sroa.045.0.copyload46, %bb.c ], [ %.sroa.045.0.copyload51, %_RNvYNtCs8Xq8PKFYOms_3hir8FunctionNtNtB4_5attrs8HasAttrs5attrsCslLuZgPVt6hg_3ide.exit ], [ %.sroa.045.0.copyload52, %switch.lookup202 ], [ %.sroa.045.0.copyload47, %bb.e ], [ %.sroa.045.0.copyload53, %bb.ah ], [ %.sroa.045.0.copyload54, %bb.g ], [ %.sroa.045.0.copyload48, %bb.h ], [ %.sroa.045.0.copyload55, %bb.ak ], [ undef, %bb.j ], [ undef, %bb.a ], [ undef, %bb.aw ], [ undef, %bb.l ], [ undef, %bb.m ], [ undef, %bb.n ], [ undef, %bb.al ], [ undef, %bb.o ], [ undef, %bb.p ], [ %.sroa.045.0.copyload56, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsileJQcQObtj_7hir_def9item_tree11ImportAliasEECslLuZgPVt6hg_3ide.exit ], [ undef, %bb.u ], [ undef, %switch.lookup205 ]
  %.sroa.116.0 = phi i64 [ %switch.load, %switch.lookup ], [ 8796093022208, %switch.lookup199 ], [ 16492674416640, %bb.v ], [ %., %bb.b ], [ 4398046511104, %bb.c ], [ %.sroa.116.2, %_RNvYNtCs8Xq8PKFYOms_3hir8FunctionNtNtB4_5attrs8HasAttrs5attrsCslLuZgPVt6hg_3ide.exit ], [ %switch.load204, %switch.lookup202 ], [ 31885837205504, %bb.e ], [ 2199023255552, %bb.ah ], [ 23089744183296, %bb.g ], [ 26388279066624, %bb.h ], [ 27487790694400, %bb.ak ], [ 12094627905536, %bb.j ], [ 8796093022208, %bb.a ], [ %.sroa.444.0, %bb.aw ], [ 14293651161088, %bb.l ], [ 6597069766656, %bb.m ], [ 0, %bb.n ], [ 15393162788864, %bb.al ], [ 1099511627776, %bb.o ], [ 25288767438848, %bb.p ], [ 4398046511104, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsileJQcQObtj_7hir_def9item_tree11ImportAliasEECslLuZgPVt6hg_3ide.exit ], [ 13194139533312, %bb.u ], [ %switch.load207, %switch.lookup205 ]
  %.sroa.89.0 = phi i64 [ 0, %switch.lookup ], [ 0, %switch.lookup199 ], [ 0, %bb.v ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %_RNvYNtCs8Xq8PKFYOms_3hir8FunctionNtNtB4_5attrs8HasAttrs5attrsCslLuZgPVt6hg_3ide.exit ], [ 0, %switch.lookup202 ], [ 0, %bb.e ], [ 0, %bb.ah ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.ak ], [ 0, %bb.j ], [ 0, %bb.a ], [ 0, %bb.aw ], [ 0, %bb.l ], [ 0, %bb.m ], [ 12884901888, %bb.n ], [ 0, %bb.al ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsileJQcQObtj_7hir_def9item_tree11ImportAliasEECslLuZgPVt6hg_3ide.exit ], [ 0, %bb.u ], [ 0, %switch.lookup205 ]
  %.sroa.05.0 = phi i32 [ 0, %switch.lookup ], [ 0, %switch.lookup199 ], [ 0, %bb.v ], [ 0, %bb.b ], [ 0, %bb.c ], [ %.sroa.05.8, %_RNvYNtCs8Xq8PKFYOms_3hir8FunctionNtNtB4_5attrs8HasAttrs5attrsCslLuZgPVt6hg_3ide.exit ], [ 0, %switch.lookup202 ], [ 0, %bb.e ], [ %.sroa.05.11, %bb.ah ], [ %.sroa.05.12, %bb.g ], [ 0, %bb.h ], [ %.sroa.05.15, %bb.ak ], [ 0, %bb.j ], [ 0, %bb.a ], [ %.sroa.05.19, %bb.aw ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.al ], [ 0, %bb.o ], [ 0, %bb.p ], [ %.125, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsileJQcQObtj_7hir_def9item_tree11ImportAliasEECslLuZgPVt6hg_3ide.exit ], [ 0, %bb.u ], [ %switch.ext210, %switch.lookup205 ] ; 4 uses
  %i.di = call { i32, i32 } @_RNvMNtCs6oosyzwIepl_6ide_db4defsNtB2_10Definition5krate(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, ptr noundef nonnull align 8 %i.at) ; 2 uses
  %i.dj = extractvalue { i32, i32 } %i.di, 0      ; 3 uses
  %.not120 = icmp eq i32 %i.dj, 0
  br i1 %.not120, label %bb.az, label %bb.ay

bb.x:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i8 %.sroa.0155.0.copyload, ptr %i.t, align 4
end_hunk_0
