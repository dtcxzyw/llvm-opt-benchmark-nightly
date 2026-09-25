Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 215
loop-unroll.NumRuntimeUnrolled: 564
loop-unroll.NumUnrolled: 782
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$27unix_timestamp_microseconds17h2028fbd112cadd72E":bb.a
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp slt i8 %.sroa.01.0.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.y)
  %narrow.i = sub nsw i8 0, %.sroa.01.2.extract.trunc.i.i
  %neg11.i = sext i8 %narrow.i to i64
  %narrow14.i = sub nsw i8 0, %.sroa.01.0.extract.trunc.i.i
  %.neg7.i = sext i8 %narrow14.i to i64
  %narrow15.i = sub nsw i8 0, %.sroa.01.1.extract.trunc.i.i
  %neg.i = sext i8 %narrow15.i to i64
  %reass.add.i = add nsw i64 %neg.i, %i.d
  %reass.mul.i = mul nsw i64 %reass.add.i, 60
  %reass.add12.i = add nsw i64 %neg11.i, %i.e
  %reass.mul13.i = mul nsw i64 %reass.add12.i, 3600
  %i.z = or disjoint i64 %i.s, -31619087683200
  %i.aa = add nsw i64 %i.z, %.neg7.i
  %i.ab = add nsw i64 %i.aa, %reass.mul.i
  %i.ac = add nsw i64 %i.ab, %reass.mul13.i
  %i.ad = add nsw i64 %i.ac, %i.r
  %i.ae = icmp ult i32 %.sroa.0.0.copyload, 1000000000
  %i.af = sext i64 %i.ad to i128
  %i.ag = mul nsw i128 %i.af, 1000000000
  tail call void @llvm.assume(i1 %i.ae)
  %i.ah = zext nneg i32 %.sroa.0.0.copyload to i128
  %i.ai = add nsw i128 %i.ag, %i.ah
  %i.aj = sdiv i128 %i.ai, 1000
  ret i128 %i.aj
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef range(i64 -66245516071199000, 66121194247199000) i64 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$27unix_timestamp_milliseconds17h4fac17dc882169cdE"(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #15 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %0, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.5.sroa.0.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.5.sroa.4.0.copyload = load i8, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 1 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.5.sroa.5.0.copyload = load i8, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 2 ; 2 uses
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.7.0.copyload = load i32, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 4 ; 2 uses
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.5.sroa.8.0.copyload = load i24, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 4 ; 3 uses
  %i.a = icmp ult i8 %.sroa.5.sroa.5.0.copyload, 24
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ult i8 %.sroa.5.sroa.4.0.copyload, 60
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i8 %.sroa.5.sroa.0.0.copyload, 60
  %i.d = zext nneg i8 %.sroa.5.sroa.4.0.copyload to i64
  %i.e = zext nneg i8 %.sroa.5.sroa.5.0.copyload to i64
  %i.f = ashr i32 %.sroa.5.sroa.7.0.copyload, 10
  %i.g = add nsw i32 %i.f, 999999                 ; 3 uses
  %.neg.i = sdiv i32 %i.g, -100
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, 1461
  %i.j = sdiv i64 %i.i, 4
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = sdiv i32 %i.g, 400
  %i.m = and i32 %.sroa.5.sroa.7.0.copyload, 511
  %i.n = add nsw i32 %.neg.i, %i.m
  %i.o = add nsw i32 %i.n, %i.l
  %i.p = add nsw i32 %i.o, %i.k
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, 86400
  tail call void @llvm.assume(i1 %i.c)
  %i.s = zext nneg i8 %.sroa.5.sroa.0.0.copyload to i64
  %.sroa.01.0.extract.trunc.i.i = trunc i24 %.sroa.5.sroa.8.0.copyload to i8 ; 3 uses
  %.sroa.01.1.extract.shift.i.i = lshr i24 %.sroa.5.sroa.8.0.copyload, 8
  %.sroa.01.1.extract.trunc.i.i = trunc i24 %.sroa.01.1.extract.shift.i.i to i8 ; 3 uses
  %.sroa.01.2.extract.shift.i.i = lshr i24 %.sroa.5.sroa.8.0.copyload, 16
  %.sroa.01.2.extract.trunc.i.i = trunc nuw i24 %.sroa.01.2.extract.shift.i.i to i8 ; 3 uses
  %i.t = icmp sgt i8 %.sroa.01.2.extract.trunc.i.i, -26
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp slt i8 %.sroa.01.2.extract.trunc.i.i, 26
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i8 %.sroa.01.1.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp slt i8 %.sroa.01.1.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp sgt i8 %.sroa.01.0.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp slt i8 %.sroa.01.0.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.y)
  %narrow.i = sub nsw i8 0, %.sroa.01.2.extract.trunc.i.i
  %neg11.i = sext i8 %narrow.i to i64
  %narrow14.i = sub nsw i8 0, %.sroa.01.0.extract.trunc.i.i
  %.neg7.i = sext i8 %narrow14.i to i64
  %narrow15.i = sub nsw i8 0, %.sroa.01.1.extract.trunc.i.i
  %neg.i = sext i8 %narrow15.i to i64
  %reass.add.i = add nsw i64 %neg.i, %i.d
  %reass.mul.i = mul nsw i64 %reass.add.i, 60
  %reass.add12.i = add nsw i64 %neg11.i, %i.e
  %reass.mul13.i = mul nsw i64 %reass.add12.i, 3600
  %i.z = or disjoint i64 %i.s, -31619087683200
  %i.aa = add nsw i64 %i.z, %.neg7.i
  %i.ab = add nsw i64 %i.aa, %reass.mul.i
  %i.ac = add nsw i64 %i.ab, %reass.mul13.i
  %i.ad = add nsw i64 %i.ac, %i.r
  %i.ae = icmp ult i32 %.sroa.0.0.copyload, 1000000000
  %i.af = sext i64 %i.ad to i128
  %i.ag = mul nsw i128 %i.af, 1000000000
  tail call void @llvm.assume(i1 %i.ae)
  %i.ah = zext nneg i32 %.sroa.0.0.copyload to i128
  %i.ai = add nsw i128 %i.ag, %i.ah
  %i.aj = sdiv i128 %i.ai, 1000000
  %i.ak = trunc nsw i128 %i.aj to i64
  ret i64 %i.ak
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN115_$LT$index_scheduler..upgrade..v1_30..MigrateNetwork$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$11description17h2ca5501a3c05760cE"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @373, i64 27 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @"_ZN115_$LT$index_scheduler..upgrade..v1_30..MigrateNetwork$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$12must_upgrade17h18defd37a25c90faE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #2 {
"_ZN4core5tuple69_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$$LP$V$C$U$C$T$RP$$GT$2lt17he23ea79208eb1b10E.exit":
  %.val7.i = load i32, ptr %1, align 4, !alias.scope !29884, !noalias !29885, !noundef !57 ; 2 uses
  %i.a = icmp eq i32 %.val7.i, 1
  %i.b = icmp eq i32 %.val7.i, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.c, align 4
  %i.d = icmp ult i32 %.val.i, 30
  %.sroa.0.1.in.i = select i1 %i.a, i1 %i.d, i1 %i.b
  ret i1 %.sroa.0.1.in.i
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @"_ZN115_$LT$index_scheduler..upgrade..v1_30..MigrateNetwork$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$7upgrade17hacdca22dc7cc7323E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 24 uses
  %i.e = alloca [16 x i8], align 8                ; 10 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [48 x i8], align 8                ; 7 uses
  %i.o = alloca [96 x i8], align 8                ; 5 uses
  %i.p = alloca [72 x i8], align 8                ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 13 uses
  %i.r = alloca [72 x i8], align 8                ; 4 uses
  %i.s = alloca [128 x i8], align 8               ; 19 uses
  %i.t = alloca [8 x i8], align 8                 ; 3 uses
  %i.u = alloca [72 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [96 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [72 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 10 uses
  %i.aa = alloca [72 x i8], align 8               ; 16 uses
  %i.ab = alloca [24 x i8], align 8               ; 10 uses
  %i.ac = alloca [72 x i8], align 8               ; 12 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [72 x i8], align 8               ; 12 uses
  %i.af = alloca [72 x i8], align 8               ; 12 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 10 uses
  %i.ap = alloca [16 x i8], align 8               ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 7 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [24 x i8], align 8               ; 7 uses
  %i.at = alloca [32 x i8], align 8               ; 19 uses
  %i.au = alloca [16 x i8], align 8               ; 6 uses
  %i.av = alloca [72 x i8], align 8               ; 12 uses
  %i.aw = alloca [72 x i8], align 8               ; 12 uses
  %i.ax = alloca [16 x i8], align 8               ; 7 uses
  %i.ay = alloca [16 x i8], align 8               ; 7 uses
  %i.az = alloca [32 x i8], align 8               ; 7 uses
  %i.ba = alloca [16 x i8], align 8               ; 7 uses
  %i.bb = alloca [24 x i8], align 8               ; 7 uses
  %i.bc = alloca [16 x i8], align 8               ; 7 uses
  %i.bd = alloca [24 x i8], align 8               ; 11 uses
  %i.be = alloca [16 x i8], align 8               ; 10 uses
  %i.bf = alloca [56 x i8], align 8               ; 10 uses
  %i.bg = alloca [56 x i8], align 8               ; 10 uses
  %.sroa.14.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 5 uses
  %i.bh = alloca [24 x i8], align 8               ; 4 uses
  %i.bi = alloca [56 x i8], align 8               ; 11 uses
  %i.bj = alloca [64 x i8], align 8               ; 22 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.10.i.sroa.5.i.i = alloca [24 x i8], align 8 ; 6 uses
  %i.bl = alloca [16 x i8], align 8               ; 7 uses
  %i.bm = alloca [16 x i8], align 8               ; 7 uses
  %i.bn = alloca [48 x i8], align 8               ; 7 uses
  %i.bo = alloca [24 x i8], align 8               ; 13 uses
  %i.bp = alloca [48 x i8], align 8               ; 7 uses
  %i.bq = alloca [56 x i8], align 8               ; 18 uses
  %i.br = alloca [344 x i8], align 8              ; 8 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
  %i.bt = alloca [344 x i8], align 8              ; 8 uses
  %i.bu = alloca [88 x i8], align 8               ; 17 uses
  %.sroa.7.sroa.8.sroa.9.sroa.9 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.20.sroa.7 = alloca [16 x i8], align 8    ; 6 uses
  %i.bv = alloca [24 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30798)
  %i.bw = load ptr, ptr %1, align 8, !alias.scope !30796, !noalias !30799, !nonnull !57, !noundef !57
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40 ; 4 uses
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !30800, !nonnull !57, !noundef !57
  %i.bz = load i64, ptr %2, align 8, !range !71, !alias.scope !30801, !noalias !30802, !noundef !57
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cb = trunc nuw i64 %i.bz to i1
  %i.cc = load ptr, ptr %i.ca, align 8, !alias.scope !30801, !noalias !30802, !nonnull !57, !align !61
  %.sroa.05.0.i.i = select i1 %i.cb, ptr %i.ca, ptr %i.cc ; 4 uses
  %i.cd = load ptr, ptr %.sroa.05.0.i.i, align 8, !noalias !30802, !nonnull !57, !noundef !57
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !30800, !nonnull !57, !noundef !57
  %i.cg = icmp eq ptr %i.by, %i.cf
  %.sink1421.sroa.gep = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sink1421.sroa.gep2196 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sink1421.sroa.gep2198 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sink1421.sroa.gep2199 = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sink1421.sroa.gep2201 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sink1421.sroa.gep2202 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sink1421.sroa.gep2204 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sink1421.sroa.gep2205 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  br i1 %i.cg, label %bb.c, label %bb.b, !prof !58

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !30800
  store ptr @2223, ptr %i.bp, align 8, !noalias !30800
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 1, ptr %i.ch, align 8, !noalias !30800
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  store ptr null, ptr %i.ci, align 8, !noalias !30800
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cj, align 8, !noalias !30800
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store i64 0, ptr %i.ck, align 8, !noalias !30800
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.bp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2224) #80, !noalias !30800
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !30800
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !30801, !noalias !30802, !noundef !57 ; 5 uses
  %.not.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !60

bb.d:                                             ; preds = %bb.c
  %i.cn = tail call fastcc i64 @"_ZN4heed4envs3env12Env$LT$T$GT$12raw_open_dbi17h22b14340deb78d57E"(ptr noundef nonnull %i.cm, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @802, i64 21, i32 noundef 0), !noalias !30803 ; 2 uses
  %.sroa.020.0.extract.trunc.i.i.i = trunc i64 %i.cn to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i = lshr i64 %i.cn, 32
  %.sroa.4.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i.i to i32 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.sroa.020.0.extract.trunc.i.i.i, 22
  br i1 %.not.i.i.i, label %bb.h, label %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i"

"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i": ; preds = %bb.d
  call void @"_ZN87_$LT$heed..Error$u20$as$u20$core..convert..From$LT$heed..mdb..lmdb_error..Error$GT$$GT$4from17hea4d5b0dd9c7836fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bo, i32 noundef %.sroa.020.0.extract.trunc.i.i.i, i32 %.sroa.4.0.extract.trunc.i.i.i), !noalias !30800
  %.pr.i.i = load i32, ptr %i.bo, align 8, !noalias !30800
  switch i32 %.pr.i.i, label %bb.g [
    i32 5, label %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit._crit_edge.i.i"
    i32 1, label %bb.f
  ]

"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit._crit_edge.i.i": ; preds = %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i"
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !noalias !30800
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2201) #80, !noalias !30800
  unreachable

bb.f:                                             ; preds = %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i"
  %i.co = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !range !143, !noalias !30800, !noundef !57
  %i.cq = icmp eq i32 %i.cp, 1
  br i1 %i.cq, label %bb.ec, label %bb.g

bb.g:                                             ; preds = %bb.f, %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i"
  %.sroa.758.8.copyload.i = load i64, ptr %i.bo, align 8, !noalias !30804
  %.sroa.11.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.11.8.copyload.i = load i64, ptr %.sroa.11.8..sroa_idx.i, align 8, !noalias !30804
  %.sroa.14.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.sroa.14.8.copyload.i = load i32, ptr %.sroa.14.8..sroa_idx.i, align 8, !noalias !30804
  %.sroa.17.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %.sroa.17.8.copyload.i = load i32, ptr %.sroa.17.8..sroa_idx.i, align 4, !noalias !30804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !30800
  br label %bb.ef

bb.h:                                             ; preds = %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit._crit_edge.i.i", %bb.d
  %i.cr = phi i32 [ %.pre.i.i, %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit._crit_edge.i.i" ], [ %.sroa.4.0.extract.trunc.i.i.i, %bb.d ]
  %i.cs = load ptr, ptr %i.bx, align 8, !noalias !30800, !nonnull !57, !noundef !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !30800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !30805
  call void @llvm.experimental.noalias.scope.decl(metadata !30806)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.sroa.5.i.i)
  %i.ct = load ptr, ptr %.sroa.05.0.i.i, align 8, !noalias !30807, !nonnull !57, !noundef !57
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !30808, !nonnull !57, !noundef !57
  %i.cw = icmp eq ptr %i.cs, %i.cv
  br i1 %i.cw, label %bb.j, label %bb.i, !prof !58

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !30808
  store ptr @2206, ptr %i.bn, align 8, !noalias !30808
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 1, ptr %i.cx, align 8, !noalias !30808
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store ptr null, ptr %i.cy, align 8, !noalias !30808
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cz, align 8, !noalias !30808
  %i.da = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i64 0, ptr %i.da, align 8, !noalias !30808
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2211) #80, !noalias !30808
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !30808
  store i64 7, ptr %i.bm, align 8, !noalias !30808
  %i.db = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr @763, ptr %i.db, align 8, !noalias !30808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !30808
  %i.dc = call noundef i32 @mdb_get(ptr noundef nonnull %i.cm, i32 noundef %i.cr, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bl) #79, !noalias !30808
  %i.dd = call { i32, i32 } @_ZN4heed3mdb10lmdb_error10mdb_result17h91f495da5828afd4E(i32 noundef %i.dc), !noalias !30808 ; 2 uses
  %i.de = extractvalue { i32, i32 } %i.dd, 0      ; 2 uses
  switch i32 %i.de, label %bb.eb [
    i32 22, label %bb.k
    i32 1, label %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.thread76.i"
  ]

bb.k:                                             ; preds = %bb.j
  %i.df = load i64, ptr %i.bl, align 8, !noalias !30808
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !30808
  %i.di = call { ptr, i64 } @_ZN4heed3mdb8lmdb_ffi8from_val17h24ff60375949e69aE(i64 noundef %i.df, ptr noundef %i.dh), !noalias !30808 ; 2 uses
  %i.dj = extractvalue { ptr, i64 } %i.di, 0      ; 2 uses
  %i.dk = extractvalue { ptr, i64 } %i.di, 1      ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30809)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !30810
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  store ptr %i.dj, ptr %i.dl, align 8, !noalias !30811
  %.sroa.4.0..sroa_idx.i144.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  store i64 %i.dk, ptr %.sroa.4.0..sroa_idx.i144.i.i, align 8, !noalias !30811
  %.sroa.5.0..sroa_idx.i145.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 40 ; 6 uses
  store i64 0, ptr %i.bj, align 8, !noalias !30810
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i145.i.i, i8 0, i64 16, i1 false), !noalias !30812
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !30810
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !30810
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bj, i64 57 ; 7 uses
  store i8 -128, ptr %i.dm, align 1, !noalias !30810
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bj, i64 56 ; 3 uses
  store i8 0, ptr %i.dn, align 8, !noalias !30810
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !30810
  call void @llvm.experimental.noalias.scope.decl(metadata !30813)
  call void @llvm.experimental.noalias.scope.decl(metadata !30814)
  call void @llvm.experimental.noalias.scope.decl(metadata !30815)
  %.not.i.i56.i = icmp eq i64 %i.dk, 0
  br i1 %.not.i.i56.i, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.k, %bb.l
  %i.do = phi i64 [ %i.dr, %bb.l ], [ 0, %bb.k ]  ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !alias.scope !30809, !noalias !30816, !noundef !57
  switch i8 %i.dq, label %bb.m [
    i8 32, label %bb.l
    i8 10, label %bb.l
    i8 9, label %bb.l
    i8 13, label %bb.l
    i8 91, label %bb.n
    i8 123, label %bb.bd
  ], !prof !117

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.dr = add nuw i64 %i.do, 1                    ; 3 uses
  store i64 %i.dr, ptr %.sroa.5.0..sroa_idx.i145.i.i, align 8, !alias.scope !30817, !noalias !30818
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.dr, %i.dk
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !30819
  store i64 5, ptr %i.bh, align 8, !noalias !30819
  %i.ds = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bj, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bh)
          to label %.noexc.i.i.i.i unwind label %bb.dp, !noalias !30820

.noexc.i.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !30819
  br label %bb.dw

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.dt = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h97be36a958020018E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bj, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6231)
          to label %.thread.thread.i.i.i.i.i.i unwind label %bb.dp, !noalias !30820

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  store i8 127, ptr %i.dm, align 1, !alias.scope !30821, !noalias !30822
  %i.du = add i64 %i.do, 1
  store i64 %i.du, ptr %.sroa.5.0..sroa_idx.i145.i.i, align 8, !alias.scope !30823, !noalias !30822
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !30819
end_hunk_0
begin_hunk_1_@"_ZN115_$LT$index_scheduler..upgrade..v1_30..MigrateNetwork$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$7upgrade17hacdca22dc7cc7323E":bb.a
  %.val8.i.i.i.i = load i64, ptr %i.bj, align 8, !range !56, !alias.scope !30943, !noalias !30810, !noundef !57 ; 2 uses
  %i.ll = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.ll, label %common.resume, label %bb.do

bb.do:                                            ; preds = %.body.i.i.i.i
  %.val9.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !30810, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %.val8.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !30944
  br label %common.resume

bb.dp:                                            ; preds = %"_ZN4core3ptr132drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$index_scheduler..upgrade..v1_29..Remote$GT$$GT$17h0006b0039bc1aa83E.exit.i.i.i.i.i", %.thread.thread.i.i.i.i.i.i, %"_ZN4core3ptr132drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$index_scheduler..upgrade..v1_29..Remote$GT$$GT$17h0006b0039bc1aa83E.exit.i81.i.i.i.i.i.i", %"_ZN4core3ptr132drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$index_scheduler..upgrade..v1_29..Remote$GT$$GT$17h0006b0039bc1aa83E.exit.i60.i.i.i.i.i.i", %bb.q, %bb.n, %bb.m, %.loopexit.i.i.i.i.i.i
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

"_ZN15index_scheduler7upgrade5v1_291_98_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$index_scheduler..upgrade..v1_29..Network$GT$11deserialize17h3f84df8f98b5ace0E.exit.i.i.i.i": ; preds = %bb.df, %bb.at
  %.sroa.15.0.i.i.i.i = phi i64 [ %.sroa.11.0.copyload.i.i.i.i.i.i, %bb.at ], [ %.sroa.11591.0.copyload.i.i.i.i.i.i, %bb.df ]
  %.sroa.14.0.i.i.i.i = phi i64 [ %.sroa.10.0.copyload.i.i.i.i.i.i, %bb.at ], [ %.sroa.169.0.i.i.i.i.i.i, %bb.df ] ; 2 uses
  %.sroa.13.0.i.i.i.i = phi i64 [ %.sroa.9.0.copyload.i.i.i.i.i.i, %bb.at ], [ %.sroa.158.0.i.i.i.i.i.i, %bb.df ] ; 3 uses
  %.sroa.12.0.i.i.i.i = phi ptr [ %.sroa.8.0.copyload.i.i.i.i.i.i, %bb.at ], [ %.sroa.147.0.i.i.i.i.i.i, %bb.df ] ; 6 uses
  %.sroa.11.0.i.i.i.i = phi i64 [ %.sroa.13.0.i.i.i.i.i.i, %bb.at ], [ %.sroa.136.0.i.i.i.i.i.i, %bb.df ] ; 4 uses
  %.sroa.7.0.i.i.i.i = phi ptr [ %.sroa.93.1.i.i.i.i.i.i, %bb.at ], [ %.sroa.95.2.i.i.i.i.i.i, %bb.df ] ; 4 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.02.1.i.i.i.i.i.i, %bb.at ], [ %.sroa.04.2.i.i.i.i.i.i, %bb.df ] ; 5 uses
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.bi, align 8, !noalias !30810
  %.sroa.4.0..sroa_idx36.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %.sroa.7.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx36.i.i.i.i, align 8, !noalias !30810
  %.sroa.5.0..sroa_idx37.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 %.sroa.11.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx37.i.i.i.i, align 8, !noalias !30810
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr %.sroa.12.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !30810
  %.sroa.738.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  store i64 %.sroa.13.0.i.i.i.i, ptr %.sroa.738.0..sroa_idx.i.i.i.i, align 8, !noalias !30810
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store i64 %.sroa.14.0.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !noalias !30810
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  store i64 %.sroa.15.0.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !30810
  call void @llvm.experimental.noalias.scope.decl(metadata !30945)
  call void @llvm.experimental.noalias.scope.decl(metadata !30946)
  %i.ln = load i64, ptr %.sroa.4.0..sroa_idx.i144.i.i, align 8, !alias.scope !30947, !noalias !30948, !noundef !57 ; 2 uses
  %.promoted.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i145.i.i, align 8, !alias.scope !30949, !noalias !30950 ; 2 uses
  %i.lo = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.ln
  %i.lp = inttoptr i64 %.sroa.11.0.i.i.i.i to ptr
  br i1 %i.lo, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN15index_scheduler7upgrade5v1_291_98_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$index_scheduler..upgrade..v1_29..Network$GT$11deserialize17h3f84df8f98b5ace0E.exit.i.i.i.i"
  %i.lq = load ptr, ptr %i.dl, align 8, !alias.scope !30947, !noalias !30948, !nonnull !57, !align !64, !noundef !57
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dr, %.lr.ph.i.i.i.i.i.i
  %i.lr = phi i64 [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.lu, %bb.dr ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30951)
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.lr
  %i.lt = load i8, ptr %i.ls, align 1, !noalias !30952, !noundef !57
  switch i8 %i.lt, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i" [
    i8 32, label %bb.dr
    i8 10, label %bb.dr
    i8 9, label %bb.dr
    i8 13, label %bb.dr
  ]

bb.dr:                                            ; preds = %bb.dq, %bb.dq, %bb.dq, %bb.dq
  %i.lu = add i64 %i.lr, 1                        ; 3 uses
  store i64 %i.lu, ptr %.sroa.5.0..sroa_idx.i145.i.i, align 8, !alias.scope !30953, !noalias !30950
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.lu, %i.ln
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.dq

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i": ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !30954
  store i64 22, ptr %i.ad, align 8, !noalias !30954
  %i.lv = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bj, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ad)
          to label %bb.dt unwind label %bb.ds, !noalias !30820

bb.ds:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i"
  %i.lw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$index_scheduler..upgrade..v1_29..Network$GT$17h60af404f8fc9181cE"(ptr noalias noundef align 8 dereferenceable(56) %i.bi) #81
          to label %.body.i.i.i.i unwind label %bb.dx, !noalias !30820

bb.dt:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !30954
  switch i64 %.sroa.0.0.i.i.i.i, label %bb.du [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit.i.i.i.i.i"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit.i.i.i.i.i"
  ]

bb.du:                                            ; preds = %bb.dt
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.i.i.i.i, i64 noundef %.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !30955
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit.i.i.i.i.i"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit.i.i.i.i.i": ; preds = %bb.du, %bb.dt, %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !30956
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.12.0.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr132drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$index_scheduler..upgrade..v1_29..Remote$GT$$GT$17h0006b0039bc1aa83E.exit.i.i.i.i.i", label %bb.dv

bb.dv:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit.i.i.i.i.i"
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !30957, !noalias !30958
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %.sroa.12.0.i.i.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !30957, !noalias !30958
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 %.sroa.13.0.i.i.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !30957, !noalias !30958
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !30957, !noalias !30958
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store ptr %.sroa.12.0.i.i.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !30957, !noalias !30958
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store i64 %.sroa.13.0.i.i.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !30957, !noalias !30958
  br label %"_ZN4core3ptr132drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$index_scheduler..upgrade..v1_29..Remote$GT$$GT$17h0006b0039bc1aa83E.exit.i.i.i.i.i"

"_ZN4core3ptr132drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$index_scheduler..upgrade..v1_29..Remote$GT$$GT$17h0006b0039bc1aa83E.exit.i.i.i.i.i": ; preds = %bb.dv, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit.i.i.i.i.i"
  %.sink23.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.dv ], [ 0, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.14.0.i.i.i.i, %bb.dv ], [ 0, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit.i.i.i.i.i" ]
  store i64 %.sink23.i.i.i.i.i.i.i.i, ptr %i.ac, align 8, !alias.scope !30957, !noalias !30958
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store i64 %.sink23.i.i.i.i.i.i.i.i, ptr %i.lx, align 8, !alias.scope !30957, !noalias !30958
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i.i.i.i, ptr %i.ly, align 8, !alias.scope !30957, !noalias !30958
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$index_scheduler..upgrade..v1_29..Remote$GT$$GT$17hff6728643429feb9E"(ptr noalias noundef align 8 dereferenceable(72) %i.ac)
          to label %"_ZN4core3ptr61drop_in_place$LT$index_scheduler..upgrade..v1_29..Network$GT$17h60af404f8fc9181cE.exit.i.i.i.i" unwind label %bb.dp, !noalias !30820

"_ZN4core3ptr61drop_in_place$LT$index_scheduler..upgrade..v1_29..Network$GT$17h60af404f8fc9181cE.exit.i.i.i.i": ; preds = %"_ZN4core3ptr132drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$index_scheduler..upgrade..v1_29..Remote$GT$$GT$17h0006b0039bc1aa83E.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !30956
  br label %bb.dw

.loopexit.i.i.i.i:                                ; preds = %bb.dr, %"_ZN15index_scheduler7upgrade5v1_291_98_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$index_scheduler..upgrade..v1_29..Network$GT$11deserialize17h3f84df8f98b5ace0E.exit.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.738.0..sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !30808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !30810
  %.val6.i.i.i.i = load i64, ptr %i.bj, align 8, !range !56, !alias.scope !30943, !noalias !30810, !noundef !57 ; 2 uses
  %i.lz = icmp eq i64 %.val6.i.i.i.i, 0
  br i1 %i.lz, label %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.i", label %_ZN10serde_json2de10from_trait17hdd475edc2811349fE.exit.i.i.i

bb.dw:                                            ; preds = %"_ZN4core3ptr61drop_in_place$LT$index_scheduler..upgrade..v1_29..Network$GT$17h60af404f8fc9181cE.exit.i.i.i.i", %.thread.thread.i.i.i.i.i.i, %.noexc.i.i.i.i
  %.sroa.7.0.i.i.i = phi ptr [ %i.lv, %"_ZN4core3ptr61drop_in_place$LT$index_scheduler..upgrade..v1_29..Network$GT$17h60af404f8fc9181cE.exit.i.i.i.i" ], [ %i.lk, %.thread.thread.i.i.i.i.i.i ], [ %i.ds, %.noexc.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !30810
  %.val.i.i.i.i = load i64, ptr %i.bj, align 8, !range !56, !alias.scope !30943, !noalias !30810, !noundef !57 ; 2 uses
  %i.ma = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ma, label %_ZN10serde_json2de10from_trait17hdd475edc2811349fE.exit.thread.i.i.i, label %_ZN10serde_json2de10from_trait17hdd475edc2811349fE.exit.thread17.i.i.i

_ZN10serde_json2de10from_trait17hdd475edc2811349fE.exit.thread17.i.i.i: ; preds = %bb.dw
  %.val7.i21.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !30810, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i21.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !30820
  br label %_ZN10serde_json2de10from_trait17hdd475edc2811349fE.exit.thread.i.i.i

bb.dx:                                            ; preds = %bb.ds
  %i.mb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !30820
  unreachable

_ZN10serde_json2de10from_trait17hdd475edc2811349fE.exit.i.i.i: ; preds = %.loopexit.i.i.i.i
  %.val7.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !30810, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i, i64 noundef %.val6.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !30820
  br label %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.i"

_ZN10serde_json2de10from_trait17hdd475edc2811349fE.exit.thread.i.i.i: ; preds = %_ZN10serde_json2de10from_trait17hdd475edc2811349fE.exit.thread17.i.i.i, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !30810
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !30812
  store ptr %.sroa.7.0.i.i.i, ptr %i.bk, align 8, !noalias !30959
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !30960
  %i.mc = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !30960 ; 3 uses
  %i.md = icmp eq ptr %i.mc, null
  br i1 %i.md, label %bb.dy, label %.thread.i.i, !prof !66

bb.dy:                                            ; preds = %_ZN10serde_json2de10from_trait17hdd475edc2811349fE.exit.thread.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #80
          to label %.noexc.i.i.i unwind label %bb.dz, !noalias !30960

.noexc.i.i.i:                                     ; preds = %bb.dy
  unreachable

bb.dz:                                            ; preds = %bb.dy
  %i.me = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bk) #81
          to label %common.resume unwind label %bb.ea, !noalias !30960

bb.ea:                                            ; preds = %bb.dz
  %i.mf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !30960
  unreachable

.thread.i.i:                                      ; preds = %_ZN10serde_json2de10from_trait17hdd475edc2811349fE.exit.thread.i.i.i
  store ptr %.sroa.7.0.i.i.i, ptr %i.mc, align 8, !noalias !30960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !30812
  %i.mg = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i32 3, ptr %i.mg, align 8, !alias.scope !30806, !noalias !30961
  %i.mh = ptrtoint ptr %i.mc to i64
  %i.mi = lshr i64 ptrtoint (ptr @4882 to i64), 32
  %i.mj = trunc nuw i64 %i.mi to i32
  br label %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.thread.i"

"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.thread76.i": ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !30808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !30808
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.sroa.5.i.i)
  %.sroa.550.0..sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.6.i.sroa.0.0.copyload.pre = load i64, ptr %.sroa.550.0..sroa_idx.i.phi.trans.insert, align 8, !noalias !30805
  %.sroa.6.i.sroa.7.0..sroa.550.0..sroa_idx.i.sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.6.i.sroa.7.0.copyload.pre = load i64, ptr %.sroa.6.i.sroa.7.0..sroa.550.0..sroa_idx.i.sroa_idx.phi.trans.insert, align 8, !noalias !30805
  %.sroa.6.i.sroa.10.0..sroa.550.0..sroa_idx.i.sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %3 = load <2 x i32>, ptr %.sroa.6.i.sroa.10.0..sroa.550.0..sroa_idx.i.sroa_idx.phi.trans.insert, align 8, !noalias !30805
  %i.mk = inttoptr i64 %.sroa.6.i.sroa.0.0.copyload.pre to ptr
  br label %bb.ee

bb.eb:                                            ; preds = %bb.j
  %i.ml = extractvalue { i32, i32 } %i.dd, 1
  %i.mm = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  call void @"_ZN87_$LT$heed..Error$u20$as$u20$core..convert..From$LT$heed..mdb..lmdb_error..Error$GT$$GT$4from17hea4d5b0dd9c7836fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.mm, i32 noundef %i.de, i32 %i.ml), !noalias !30961
  %.sroa.6.i.sroa.7.0..sroa_idx.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.6.i.sroa.7.0.copyload218.pre.pre = load i64, ptr %.sroa.6.i.sroa.7.0..sroa_idx.phi.trans.insert.phi.trans.insert, align 8, !noalias !30805
  %.sroa.6.i.sroa.10.0..sroa_idx.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %.sroa.6.i.sroa.10.0.copyload219.pre.pre = load i32, ptr %.sroa.6.i.sroa.10.0..sroa_idx.phi.trans.insert.phi.trans.insert, align 8, !noalias !30805
  %.sroa.6.i.sroa.12.0..sroa_idx.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bq, i64 28
  %.sroa.6.i.sroa.12.0.copyload220.pre.pre = load i32, ptr %.sroa.6.i.sroa.12.0..sroa_idx.phi.trans.insert.phi.trans.insert, align 4, !noalias !30805
  br label %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.thread.i"

common.resume:                                    ; preds = %.thread293, %.thread293, %.body126, %bb.kk, %.body.i.i.i.i, %bb.do, %bb.dz
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.do ], [ %i.me, %bb.dz ], [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %.pn.pn264298, %bb.kk ], [ %eh.lpad-body127, %.body126 ], [ %.pn.pn264298, %.thread293 ], [ %.pn.pn264298, %.thread293 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.thread.i": ; preds = %bb.eb, %.thread.i.i
  %.sroa.6.i.sroa.12.0.copyload220.pre = phi i32 [ %.sroa.6.i.sroa.12.0.copyload220.pre.pre, %bb.eb ], [ %i.mj, %.thread.i.i ]
  %.sroa.6.i.sroa.10.0.copyload219.pre = phi i32 [ %.sroa.6.i.sroa.10.0.copyload219.pre.pre, %bb.eb ], [ ptrtoint (ptr @4882 to i32), %.thread.i.i ]
  %.sroa.6.i.sroa.7.0.copyload218.pre = phi i64 [ %.sroa.6.i.sroa.7.0.copyload218.pre.pre, %bb.eb ], [ %i.mh, %.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !30808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !30808
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.sroa.5.i.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.6.i.sroa.0.0.copyload217.pre = load i64, ptr %.phi.trans.insert, align 8, !noalias !30805
  br label %bb.ed

"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.i": ; preds = %_ZN10serde_json2de10from_trait17hdd475edc2811349fE.exit.i.i.i, %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !30810
  %i.mn = ptrtoint ptr %.sroa.7.0.i.i.i.i to i64  ; 2 uses
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %i.mn, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !alias.scope !30806, !noalias !30961
  %.sroa.424.sroa.5.0..sroa.424.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store ptr %i.lp, ptr %.sroa.424.sroa.5.0..sroa.424.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !30806, !noalias !30961
  %.sroa.424.sroa.6.0..sroa.424.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store ptr %.sroa.12.0.i.i.i.i, ptr %.sroa.424.sroa.6.0..sroa.424.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !30806, !noalias !30961
  %.sroa.525.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.525.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.sroa.5.i.i, i64 24, i1 false), !noalias !30961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !30808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !30808
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.sroa.5.i.i)
  %i.mo = icmp eq i64 %.sroa.0.0.i.i.i.i, -9223372036854775806
  %i.mp = ptrtoint ptr %.sroa.12.0.i.i.i.i to i64 ; 3 uses
  %i.mq = trunc i64 %i.mp to i32
  %i.mr = lshr i64 %i.mp, 32
  %i.ms = trunc nuw i64 %i.mr to i32
  %4 = bitcast i64 %i.mp to <2 x i32>
  br i1 %i.mo, label %bb.ed, label %bb.ee

bb.ec:                                            ; preds = %bb.f
  call void @"_ZN4core3ptr32drop_in_place$LT$heed..Error$GT$17hc98baf41816c301eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo), !noalias !30800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !30800
  br label %bb.eg

bb.ed:                                            ; preds = %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.i", %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.thread.i"
  %.sroa.6.i.sroa.12.0.copyload220 = phi i32 [ %i.ms, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.i" ], [ %.sroa.6.i.sroa.12.0.copyload220.pre, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.thread.i" ]
  %.sroa.6.i.sroa.10.0.copyload219 = phi i32 [ %i.mq, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.i" ], [ %.sroa.6.i.sroa.10.0.copyload219.pre, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.thread.i" ]
  %.sroa.6.i.sroa.7.0.copyload218 = phi i64 [ %.sroa.11.0.i.i.i.i, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.i" ], [ %.sroa.6.i.sroa.7.0.copyload218.pre, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.thread.i" ]
  %.sroa.6.i.sroa.0.0.copyload217 = phi i64 [ %i.mn, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.i" ], [ %.sroa.6.i.sroa.0.0.copyload217.pre, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.thread.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !30805
  br label %bb.ef

bb.ee:                                            ; preds = %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.i", %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.thread76.i"
  %.sroa.6.i.sroa.7.0.copyload = phi i64 [ %.sroa.6.i.sroa.7.0.copyload.pre, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.thread76.i" ], [ %.sroa.11.0.i.i.i.i, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.i" ]
  %.sroa.6.i.sroa.0.0.copyload = phi ptr [ %i.mk, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.thread76.i" ], [ %.sroa.7.0.i.i.i.i, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.i" ]
  %i.mt = phi i64 [ -9223372036854775807, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.thread76.i" ], [ %.sroa.0.0.i.i.i.i, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.i" ]
  %5 = phi <2 x i32> [ %3, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.thread76.i" ], [ %4, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h4a1660ca82124623E.exit.i" ]
  %.sroa.651.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.651.0..sroa_idx.i, i64 16, i1 false), !noalias !30962
  %.sroa.21.40..sroa.651.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %.sroa.21.40.copyload = load i8, ptr %.sroa.21.40..sroa.651.0..sroa_idx.i.sroa_idx, align 8, !noalias !30962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !30805
  %i.mu = trunc nuw i8 %.sroa.21.40.copyload to i1
  br label %bb.eg

bb.ef:                                            ; preds = %bb.ed, %bb.g
  %.sroa.19.0 = phi i32 [ %.sroa.6.i.sroa.12.0.copyload220, %bb.ed ], [ %.sroa.17.8.copyload.i, %bb.g ]
  %.sroa.18.0 = phi i32 [ %.sroa.6.i.sroa.10.0.copyload219, %bb.ed ], [ %.sroa.14.8.copyload.i, %bb.g ]
  %.sroa.14.0 = phi i64 [ %.sroa.6.i.sroa.7.0.copyload218, %bb.ed ], [ %.sroa.11.8.copyload.i, %bb.g ]
  %.sroa.8134.0 = phi i64 [ %.sroa.6.i.sroa.0.0.copyload217, %bb.ed ], [ %.sroa.758.8.copyload.i, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.8.sroa.9.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.sroa.7, i64 16, i1 false)
  %.sroa.522.sroa.4.8.insert.ext = zext i32 %.sroa.18.0 to i64
  %.sroa.522.sroa.4.12.insert.ext = zext i32 %.sroa.19.0 to i64
  %.sroa.522.sroa.4.12.insert.shift = shl nuw i64 %.sroa.522.sroa.4.12.insert.ext, 32
  %.sroa.522.sroa.4.12.insert.insert = or disjoint i64 %.sroa.522.sroa.4.12.insert.shift, %.sroa.522.sroa.4.8.insert.ext
  %i.mv = inttoptr i64 %.sroa.14.0 to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.sroa.7)
  %.sroa.2.sroa.2.sroa.3.sroa.3.0..sroa.2.sroa.2.sroa.3.0..sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.sroa.2.sroa.3.sroa.3.0..sroa.2.sroa.2.sroa.3.0..sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.8.sroa.9.sroa.9, i64 16, i1 false)
  store i64 127, ptr %i.bt, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 %.sroa.8134.0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store ptr %i.mv, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.2.sroa.2.0..sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store i64 %.sroa.522.sroa.4.12.insert.insert, ptr %.sroa.2.sroa.2.sroa.2.0..sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %i.mw = call fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17ha6b155e913d27dcbE"(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %bb.kf

bb.eg:                                            ; preds = %bb.ee, %bb.ec
  %.sroa.21.0.ph = phi i1 [ undef, %bb.ec ], [ %i.mu, %bb.ee ]
  %.sroa.14.0.ph = phi ptr [ undef, %bb.ec ], [ %.sroa.6.i.sroa.0.0.copyload, %bb.ee ] ; 3 uses
  %.sroa.8134.0.ph = phi i64 [ -9223372036854775807, %bb.ec ], [ %i.mt, %bb.ee ] ; 4 uses
  %.sroa.518.sroa.5.12.insert.insert = phi i64 [ 0, %bb.ec ], [ %.sroa.6.i.sroa.7.0.copyload, %bb.ee ]
  %6 = phi <2 x i32> [ undef, %bb.ec ], [ %5, %bb.ee ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.8.sroa.9.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.sroa.7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.sroa.7)
  %.not73 = icmp eq i64 %.sroa.8134.0.ph, -9223372036854775807
  br i1 %.not73, label %bb.kf, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  store <2 x i32> %6, ptr %i.bv, align 8
  %.sroa.38.sroa.3.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.sroa.3.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.8.sroa.9.sroa.9, i64 16, i1 false)
  %.sroa.0180.0.copyload.pre = load ptr, ptr %i.bv, align 8 ; 7 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.my = load i64, ptr %i.mx, align 8            ; 2 uses
  br i1 %.sroa.21.0.ph, label %bb.ei, label %"._ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h009ace5071564449E.exit_crit_edge"

"._ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h009ace5071564449E.exit_crit_edge": ; preds = %bb.eh
  %.sroa.4181.0.copyload.pre = load i64, ptr %.sroa.38.sroa.3.sroa.3.0..sroa_idx, align 8
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h009ace5071564449E.exit"

bb.ei:                                            ; preds = %bb.eh
  %.not74 = icmp ne ptr %.sroa.0180.0.copyload.pre, null
  %i.mz = icmp ne i64 %i.my, 0
  %.not305 = select i1 %.not74, i1 %i.mz, i1 false
  %.sroa.4181.0.copyload.pre982 = load i64, ptr %.sroa.38.sroa.3.sroa.3.0..sroa_idx, align 8 ; 7 uses
  br i1 %.not305, label %bb.ej, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h009ace5071564449E.exit"

bb.ej:                                            ; preds = %bb.ei
  %i.na = icmp eq i64 %.sroa.4181.0.copyload.pre982, 0
  br i1 %i.na, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha63cabd254430144E.exit.i", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.ej
  %xtraiter = and i64 %.sroa.4181.0.copyload.pre982, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.012.015.i.i.prol = phi ptr [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ], [ %.sroa.0180.0.copyload.pre, %.lr.ph.i.i.preheader ]
  %.sroa.011.014.i.i.prol = phi i64 [ %i.nc, %.lr.ph.i.i.prol ], [ %.sroa.4181.0.copyload.pre982, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.prol, i64 1072
  %i.nc = add i64 %.sroa.011.014.i.i.prol, -1     ; 2 uses
  %.sroa.012.0.i.i.prol = load ptr, ptr %i.nb, align 8, !noalias !30963, !nonnull !57, !noundef !57 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !30146

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.012.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.012.015.i.i.unr = phi ptr [ %.sroa.0180.0.copyload.pre, %.lr.ph.i.i.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.011.014.i.i.unr = phi i64 [ %.sroa.4181.0.copyload.pre982, %.lr.ph.i.i.preheader ], [ %i.nc, %.lr.ph.i.i.prol ]
  %i.nd = icmp ult i64 %.sroa.4181.0.copyload.pre982, 8
  br i1 %i.nd, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha63cabd254430144E.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.012.015.i.i = phi ptr [ %.sroa.012.0.i.i.7, %.lr.ph.i.i ], [ %.sroa.012.015.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.011.014.i.i = phi i64 [ %i.nm, %.lr.ph.i.i ], [ %.sroa.011.014.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i, i64 1072
  %.sroa.012.0.i.i = load ptr, ptr %i.ne, align 8, !noalias !30963, !nonnull !57, !noundef !57
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 1072
  %.sroa.012.0.i.i.1 = load ptr, ptr %i.nf, align 8, !noalias !30963, !nonnull !57, !noundef !57
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.1, i64 1072
  %.sroa.012.0.i.i.2 = load ptr, ptr %i.ng, align 8, !noalias !30963, !nonnull !57, !noundef !57
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.2, i64 1072
  %.sroa.012.0.i.i.3 = load ptr, ptr %i.nh, align 8, !noalias !30963, !nonnull !57, !noundef !57
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.3, i64 1072
  %.sroa.012.0.i.i.4 = load ptr, ptr %i.ni, align 8, !noalias !30963, !nonnull !57, !noundef !57
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.4, i64 1072
  %.sroa.012.0.i.i.5 = load ptr, ptr %i.nj, align 8, !noalias !30963, !nonnull !57, !noundef !57
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.5, i64 1072
  %.sroa.012.0.i.i.6 = load ptr, ptr %i.nk, align 8, !noalias !30963, !nonnull !57, !noundef !57
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.6, i64 1072
  %i.nm = add i64 %.sroa.011.014.i.i, -8          ; 2 uses
  %.sroa.012.0.i.i.7 = load ptr, ptr %i.nl, align 8, !noalias !30963, !nonnull !57, !noundef !57 ; 2 uses
  %i.nn = icmp eq i64 %i.nm, 0
  br i1 %i.nn, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha63cabd254430144E.exit.i", label %.lr.ph.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha63cabd254430144E.exit.i": ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.ej
  %.sroa.012.0.lcssa.i.i = phi ptr [ %.sroa.0180.0.copyload.pre, %bb.ej ], [ %.sroa.012.0.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.7, %.lr.ph.i.i ] ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i, i64 1066
  %i.np = load i16, ptr %i.no, align 2, !noalias !30964, !noundef !57
  %.not = icmp eq i16 %i.np, 0
  br i1 %.not, label %.lr.ph.i.i.i.i, label %.thread

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha63cabd254430144E.exit.i", %bb.ek
  %.sroa.0.038.i.i.i.i = phi ptr [ %i.nq, %bb.ek ], [ %.sroa.012.0.lcssa.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha63cabd254430144E.exit.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i = phi i64 [ %i.nr, %bb.ek ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha63cabd254430144E.exit.i" ]
  %i.nq = load ptr, ptr %.sroa.0.038.i.i.i.i, align 8, !noalias !30965, !noundef !57 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.nq, null
  br i1 %.not.i.i.i.i.i, label %bb.em, label %bb.ek

bb.ek:                                            ; preds = %.lr.ph.i.i.i.i
  %i.nr = add i64 %.sroa.5.037.i.i.i.i, 1         ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i, i64 1064
  %i.nt = load i16, ptr %i.ns, align 8, !noalias !30965 ; 4 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nq, i64 1066
  %i.nv = load i16, ptr %i.nu, align 2, !noalias !30964, !noundef !57
  %i.nw = icmp ult i16 %i.nt, %i.nv
  br i1 %i.nw, label %bb.el, label %.lr.ph.i.i.i.i

bb.el:                                            ; preds = %bb.ek
  %i.nx = icmp eq i64 %i.nr, 0
  br i1 %i.nx, label %.thread, label %.thread.loopexit

.thread.loopexit:                                 ; preds = %bb.el
  %i.ny = icmp ult i16 %i.nt, 11
  call void @llvm.assume(i1 %i.ny)
  br label %.thread

bb.em:                                            ; preds = %.lr.ph.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537) #80
          to label %.noexc.i.i unwind label %bb.en, !noalias !30966

.noexc.i.i:                                       ; preds = %bb.em
  unreachable

bb.en:                                            ; preds = %bb.em
  %i.nz = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h009ace5071564449E.exit": ; preds = %"._ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h009ace5071564449E.exit_crit_edge", %bb.eo, %bb.ei
  %.sroa.4181.0.copyload = phi i64 [ %.sroa.4181.0.copyload.pre, %"._ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h009ace5071564449E.exit_crit_edge" ], [ %.sroa.4181.0.copyload.pre982, %bb.eo ], [ %.sroa.4181.0.copyload.pre982, %bb.ei ]
  %.sroa.9150.0 = phi i64 [ undef, %"._ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h009ace5071564449E.exit_crit_edge" ], [ %.sroa.9150.0.copyload, %bb.eo ], [ undef, %bb.ei ]
  %.sroa.8147.0 = phi ptr [ undef, %"._ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h009ace5071564449E.exit_crit_edge" ], [ %.sroa.8147.0.copyload, %bb.eo ], [ undef, %bb.ei ] ; 3 uses
  %.sroa.0145.0 = phi i64 [ -9223372036854775808, %"._ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h009ace5071564449E.exit_crit_edge" ], [ %.sroa.0145.0.copyload, %bb.eo ], [ -9223372036854775808, %bb.ei ] ; 3 uses
  %.not.i = icmp ne ptr %.sroa.0180.0.copyload.pre, null ; 3 uses
  %.sroa.10.0 = select i1 %.not.i, i64 %.sroa.4181.0.copyload, i64 undef ; 2 uses
  %.sink23.i = zext i1 %.not.i to i64             ; 2 uses
  %.sroa.7.0.copyload.sink.i = select i1 %.not.i, i64 %i.my, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !30967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !30968
  store i64 %.sink23.i, ptr %i.aa, align 8, !alias.scope !30969, !noalias !30970
  %.sroa.4172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr null, ptr %.sroa.4172.0..sroa_idx, align 8, !alias.scope !30969, !noalias !30970
  %.sroa.5173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %.sroa.0180.0.copyload.pre, ptr %.sroa.5173.0..sroa_idx, align 8, !alias.scope !30969, !noalias !30970
  %.sroa.6174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 %.sroa.10.0, ptr %.sroa.6174.0..sroa_idx, align 8, !alias.scope !30969, !noalias !30970
  %.sroa.7175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i64 %.sink23.i, ptr %.sroa.7175.0..sroa_idx, align 8, !alias.scope !30969, !noalias !30970
  %.sroa.8176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr null, ptr %.sroa.8176.0..sroa_idx, align 8, !alias.scope !30969, !noalias !30970
  %.sroa.9177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr %.sroa.0180.0.copyload.pre, ptr %.sroa.9177.0..sroa_idx, align 8, !alias.scope !30969, !noalias !30970
  %.sroa.10178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store i64 %.sroa.10.0, ptr %.sroa.10178.0..sroa_idx, align 8, !alias.scope !30969, !noalias !30970
  %.sroa.11179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 64 ; 2 uses
  store i64 %.sroa.7.0.copyload.sink.i, ptr %.sroa.11179.0..sroa_idx, align 8, !alias.scope !30969, !noalias !30970
  call void @llvm.experimental.noalias.scope.decl(metadata !30971)
  call void @llvm.experimental.noalias.scope.decl(metadata !30972)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !30973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !30974
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hb4e19d4914156dddE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aa)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.ep, !noalias !30975

.thread:                                          ; preds = %.thread.loopexit, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha63cabd254430144E.exit.i", %bb.el
  %.sroa.0.0.ph.i.i.i256 = phi ptr [ %i.nq, %bb.el ], [ %.sroa.012.0.lcssa.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha63cabd254430144E.exit.i" ], [ %i.nq, %.thread.loopexit ]
  %.sroa.6.sroa.4.0.ph.i.i.i255.shrunk = phi i16 [ %i.nt, %bb.el ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17ha63cabd254430144E.exit.i" ], [ %i.nt, %.thread.loopexit ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i255 = zext nneg i16 %.sroa.6.sroa.4.0.ph.i.i.i255.shrunk to i64
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i256, i64 8
  %i.ob = icmp ult i16 %.sroa.6.sroa.4.0.ph.i.i.i255.shrunk, 11
  call void @llvm.assume(i1 %i.ob)
  %i.oc = getelementptr inbounds nuw [24 x i8], ptr %i.oa, i64 %.sroa.6.sroa.4.0.ph.i.i.i255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104)
          to label %bb.eo unwind label %bb.kj

bb.eo:                                            ; preds = %.thread
  %.sroa.0145.0.copyload = load i64, ptr %i.bs, align 8
  %.sroa.8147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.8147.0.copyload = load ptr, ptr %.sroa.8147.0..sroa_idx, align 8
  %.sroa.9150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.9150.0.copyload = load i64, ptr %.sroa.9150.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h009ace5071564449E.exit"

.thread284:                                       ; preds = %.noexc19.i.i.i.i.invoke, %.thread.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread276

.noexc.i.i.i.i.i.i:                               ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h009ace5071564449E.exit"
  %i.od = load ptr, ptr %i.x, align 8, !noalias !30974, !noundef !57 ; 3 uses
  %.not.i.i.i.i.i.i.i.i81 = icmp eq ptr %i.od, null
  br i1 %.not.i.i.i.i.i.i.i.i81, label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ca25b85388b18d2E.exit.thread.i.i.i.i.i.i.i", label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ca25b85388b18d2E.exit.i.i.i.i.i.i.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ca25b85388b18d2E.exit.thread.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !30974
  br label %.thread.i

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ca25b85388b18d2E.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !30974 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.of = getelementptr inbounds nuw [24 x i8], ptr %i.oe, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i ; 3 uses
  %.sroa.08.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.of, align 8, !noalias !30974 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !30974
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.08.0.copyload.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i, label %.thread.i, label %bb.ev

bb.ep:                                            ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h009ace5071564449E.exit"
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr92drop_in_place$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_30..Remote$RP$$GT$17h4b4ed9695d491ef6E.exit.i.i.i.i.i"

.thread.i:                                        ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ca25b85388b18d2E.exit.i.i.i.i.i.i.i", %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6ca25b85388b18d2E.exit.thread.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !30973
end_hunk_1
