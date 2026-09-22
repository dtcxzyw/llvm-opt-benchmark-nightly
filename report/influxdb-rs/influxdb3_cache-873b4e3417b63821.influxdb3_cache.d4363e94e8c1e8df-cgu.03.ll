Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_cache-873b4e3417b63821.influxdb3_cache.d4363e94e8c1e8df-cgu.03?download=true
inline.NumInlined: 721
inline.NumDeleted: 382
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYBW_NtNtBa_3cmp10PartialOrd2ltEB12_:bb.a
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.as, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.as ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.jw, %bb.as ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ju, %bb.as ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit
  %.sroa.021.0 = phi i8 [ %i.eu, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph99, label %._crit_edge

.lr.ph99:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.y

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 14 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 16 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, %bb.h
  br i1 %4, label %bb.v, label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValue7reverseBA_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537), !noalias !538
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539), !noalias !538
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540), !noalias !538
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541), !noalias !538
  %i.r = load i64, ptr %i.q, align 8, !range !8, !alias.scope !542, !noalias !543, !noundef !3 ; 4 uses
  %i.s = icmp slt i64 %i.r, 0
  %i.t = add i64 %i.r, -9223372036854775807
  %i.u = select i1 %i.s, i64 %i.t, i64 0          ; 3 uses
  %i.v = load i64, ptr %i.o, align 8, !range !8, !alias.scope !544, !noalias !545, !noundef !3 ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  %i.x = add i64 %i.v, -9223372036854775807
  %i.y = select i1 %i.w, i64 %i.x, i64 0          ; 2 uses
  %.not.i.i.i45 = icmp eq i64 %i.u, %i.y
  br i1 %.not.i.i.i45, label %bb.l, label %.split

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 4 uses
  switch i64 %i.u, label %bb.m [
    i64 0, label %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit49
    i64 1, label %.split54
    i64 2, label %.split53
    i64 3, label %.split52
  ]

.split:                                           ; preds = %bb.k
  %i.aa = icmp samesign ult i64 %i.u, %i.y
  br i1 %i.aa, label %.preheader, label %.preheader72

bb.m:                                             ; preds = %bb.l
  unreachable

.split54:                                         ; preds = %bb.l
  %i.ab = load i64, ptr %i.z, align 8, !alias.scope !542, !noalias !543, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !544, !noalias !545, !noundef !3
  %i.ae = icmp slt i64 %i.ab, %i.ad
  br i1 %i.ae, label %.preheader, label %.preheader72

.preheader:                                       ; preds = %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit49, %.split, %.split52, %.split53, %.split54
  %.not106 = icmp eq i64 %i.n, 2
  br i1 %.not106, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, label %.lr.ph90

.split53:                                         ; preds = %bb.l
  %i.af = load i64, ptr %i.z, align 8, !alias.scope !542, !noalias !543, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !544, !noalias !545, !noundef !3
  %i.ai = icmp ult i64 %i.af, %i.ah
  br i1 %i.ai, label %.preheader, label %.preheader72

.split52:                                         ; preds = %bb.l
  %i.aj = load i8, ptr %i.z, align 8, !range !9, !alias.scope !542, !noalias !543, !noundef !3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.al = load i8, ptr %i.ak, align 8, !range !9, !alias.scope !544, !noalias !545, !noundef !3
  %i.am = icmp samesign ult i8 %i.aj, %i.al
  br i1 %i.am, label %.preheader, label %.preheader72

_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit49: ; preds = %bb.l
  %i.an = load ptr, ptr %i.z, align 8, !alias.scope !542, !noalias !543, !nonnull !3, !noundef !3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !542, !noalias !543, !noundef !3 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !544, !noalias !545, !nonnull !3, !noundef !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !544, !noalias !545, !noundef !3 ; 2 uses
  %spec.store.select.i.i.i47 = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.at)
  %i.au = tail call i32 @memcmp(ptr nonnull %i.an, ptr nonnull %i.ar, i64 %spec.store.select.i.i.i47), !noalias !546 ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp eq i32 %i.au, 0
  %i.ax = sub i64 %i.ap, %i.at
  %spec.select.i.i.i48 = select i1 %i.aw, i64 %i.ax, i64 %i.av
  %i.ay = icmp slt i64 %spec.select.i.i.i48, 0
  br i1 %i.ay, label %.preheader, label %.preheader72

.preheader72:                                     ; preds = %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit49, %.split, %.split52, %.split53, %.split54
  %.not105 = icmp eq i64 %i.n, 2
  br i1 %.not105, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader72, %bb.p
  %i.az = phi i64 [ %i.be, %bb.p ], [ %i.r, %.preheader72 ] ; 2 uses
  %.sroa.01.0.i.i83 = phi i64 [ %i.cl, %bb.p ], [ 2, %.preheader72 ] ; 8 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.0.i.i83 ; 3 uses
  %i.bb = add nsw i64 %.sroa.01.0.i.i83, -1       ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.n
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.bb ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549), !noalias !538
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550), !noalias !538
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551), !noalias !538
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552), !noalias !538
  %i.be = load i64, ptr %i.ba, align 8, !range !8, !alias.scope !553, !noalias !554, !noundef !3 ; 3 uses
  %i.bf = icmp slt i64 %i.be, 0
  %i.bg = add i64 %i.be, -9223372036854775807
  %i.bh = select i1 %i.bf, i64 %i.bg, i64 0       ; 3 uses
  %i.bi = icmp slt i64 %i.az, 0
  %i.bj = add i64 %i.az, -9223372036854775807
  %i.bk = select i1 %i.bi, i64 %i.bj, i64 0       ; 2 uses
  %.not.i.i.i40 = icmp eq i64 %i.bh, %i.bk
  br i1 %.not.i.i.i40, label %bb.n, label %.split55

bb.n:                                             ; preds = %.lr.ph
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  switch i64 %i.bh, label %bb.o [
    i64 0, label %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit44
    i64 1, label %.split58
    i64 2, label %.split57
    i64 3, label %.split56
  ]

.split55:                                         ; preds = %.lr.ph
  %i.bm = icmp samesign ult i64 %i.bh, %i.bk
  br i1 %i.bm, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

.split58:                                         ; preds = %bb.n
  %i.bn = load i64, ptr %i.bl, align 8, !alias.scope !553, !noalias !554, !noundef !3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !555, !noalias !556, !noundef !3
  %i.bq = icmp slt i64 %i.bn, %i.bp
  br i1 %i.bq, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, label %bb.p

.split57:                                         ; preds = %bb.n
  %i.br = load i64, ptr %i.bl, align 8, !alias.scope !553, !noalias !554, !noundef !3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !555, !noalias !556, !noundef !3
  %i.bu = icmp ult i64 %i.br, %i.bt
  br i1 %i.bu, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, label %bb.p

.split56:                                         ; preds = %bb.n
  %i.bv = load i8, ptr %i.bl, align 8, !range !9, !alias.scope !553, !noalias !554, !noundef !3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bx = load i8, ptr %i.bw, align 8, !range !9, !alias.scope !555, !noalias !556, !noundef !3
  %i.by = icmp samesign ult i8 %i.bv, %i.bx
  br i1 %i.by, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, label %bb.p

_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit44: ; preds = %bb.n
  %i.bz = load ptr, ptr %i.bl, align 8, !alias.scope !553, !noalias !554, !nonnull !3, !noundef !3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !553, !noalias !554, !noundef !3 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !555, !noalias !556, !nonnull !3, !noundef !3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !555, !noalias !556, !noundef !3 ; 2 uses
  %spec.store.select.i.i.i42 = tail call i64 @llvm.umin.i64(i64 %i.cb, i64 %i.cf)
  %i.cg = tail call i32 @memcmp(ptr nonnull %i.bz, ptr nonnull %i.cd, i64 %spec.store.select.i.i.i42), !noalias !557 ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp eq i32 %i.cg, 0
  %i.cj = sub i64 %i.cb, %i.cf
  %spec.select.i.i.i43 = select i1 %i.ci, i64 %i.cj, i64 %i.ch
  %i.ck = icmp slt i64 %spec.select.i.i.i43, 0
  br i1 %i.ck, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, label %bb.p

bb.p:                                             ; preds = %.split58, %.split57, %.split56, %.split55, %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit44
  %i.cl = add nuw nsw i64 %.sroa.01.0.i.i83, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cl, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, label %.lr.ph

.lr.ph90:                                         ; preds = %.preheader, %bb.s
  %i.cm = phi i64 [ %i.cr, %bb.s ], [ %i.r, %.preheader ] ; 2 uses
  %.sroa.01.1.i.i89 = phi i64 [ %i.dy, %bb.s ], [ 2, %.preheader ] ; 8 uses
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.1.i.i89 ; 3 uses
  %i.co = add nsw i64 %.sroa.01.1.i.i89, -1       ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.n
  tail call void @llvm.assume(i1 %i.cp)
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.co ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560), !noalias !538
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561), !noalias !538
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562), !noalias !538
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563), !noalias !538
  %i.cr = load i64, ptr %i.cn, align 8, !range !8, !alias.scope !564, !noalias !565, !noundef !3 ; 3 uses
  %i.cs = icmp slt i64 %i.cr, 0
  %i.ct = add i64 %i.cr, -9223372036854775807
  %i.cu = select i1 %i.cs, i64 %i.ct, i64 0       ; 3 uses
  %i.cv = icmp slt i64 %i.cm, 0
  %i.cw = add i64 %i.cm, -9223372036854775807
  %i.cx = select i1 %i.cv, i64 %i.cw, i64 0       ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.cu, %i.cx
  br i1 %.not.i.i.i, label %bb.q, label %.split59

bb.q:                                             ; preds = %.lr.ph90
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 4 uses
  switch i64 %i.cu, label %bb.r [
    i64 0, label %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit
    i64 1, label %.split62
    i64 2, label %.split61
    i64 3, label %.split60
  ]

.split59:                                         ; preds = %.lr.ph90
  %i.cz = icmp samesign ult i64 %i.cu, %i.cx
  br i1 %i.cz, label %bb.s, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i

bb.r:                                             ; preds = %bb.q
  unreachable

.split62:                                         ; preds = %bb.q
  %i.da = load i64, ptr %i.cy, align 8, !alias.scope !564, !noalias !565, !noundef !3
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !566, !noalias !567, !noundef !3
  %i.dd = icmp slt i64 %i.da, %i.dc
  br i1 %i.dd, label %bb.s, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i

.split61:                                         ; preds = %bb.q
  %i.de = load i64, ptr %i.cy, align 8, !alias.scope !564, !noalias !565, !noundef !3
  %i.df = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !566, !noalias !567, !noundef !3
  %i.dh = icmp ult i64 %i.de, %i.dg
  br i1 %i.dh, label %bb.s, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i

.split60:                                         ; preds = %bb.q
  %i.di = load i8, ptr %i.cy, align 8, !range !9, !alias.scope !564, !noalias !565, !noundef !3
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dk = load i8, ptr %i.dj, align 8, !range !9, !alias.scope !566, !noalias !567, !noundef !3
  %i.dl = icmp samesign ult i8 %i.di, %i.dk
  br i1 %i.dl, label %bb.s, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i

_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit: ; preds = %bb.q
  %i.dm = load ptr, ptr %i.cy, align 8, !alias.scope !564, !noalias !565, !nonnull !3, !noundef !3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !564, !noalias !565, !noundef !3 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !alias.scope !566, !noalias !567, !nonnull !3, !noundef !3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !566, !noalias !567, !noundef !3 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.do, i64 %i.ds)
  %i.dt = tail call i32 @memcmp(ptr nonnull %i.dm, ptr nonnull %i.dq, i64 %spec.store.select.i.i.i), !noalias !568 ; 2 uses
  %i.du = sext i32 %i.dt to i64
  %i.dv = icmp eq i32 %i.dt, 0
  %i.dw = sub i64 %i.do, %i.ds
  %spec.select.i.i.i = select i1 %i.dv, i64 %i.dw, i64 %i.du
  %i.dx = icmp slt i64 %spec.select.i.i.i, 0
  br i1 %i.dx, label %bb.s, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i

bb.s:                                             ; preds = %.split62, %.split61, %.split60, %.split59, %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit
  %i.dy = add nuw nsw i64 %.sroa.01.1.i.i89, 1    ; 2 uses
  %exitcond114.not = icmp eq i64 %i.dy, %i.n
  br i1 %exitcond114.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, label %.lr.ph90

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i: ; preds = %bb.p, %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit44, %.split55, %.split56, %.split57, %.split58, %bb.s, %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit, %.split59, %.split60, %.split61, %.split62, %.preheader72, %.preheader
  %.sroa.3.0.i.i = phi i1 [ true, %.preheader ], [ true, %bb.s ], [ false, %.preheader72 ], [ true, %.split62 ], [ true, %.split61 ], [ true, %.split60 ], [ true, %.split59 ], [ true, %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit ], [ false, %.split58 ], [ false, %.split57 ], [ false, %.split56 ], [ false, %.split55 ], [ false, %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit44 ], [ false, %bb.p ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.preheader ], [ %i.n, %bb.s ], [ 2, %.preheader72 ], [ %.sroa.01.1.i.i89, %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit ], [ %.sroa.01.1.i.i89, %.split59 ], [ %.sroa.01.1.i.i89, %.split60 ], [ %.sroa.01.1.i.i89, %.split61 ], [ %.sroa.01.1.i.i89, %.split62 ], [ %i.n, %bb.p ], [ %.sroa.01.0.i.i83, %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit44 ], [ %.sroa.01.0.i.i83, %.split55 ], [ %.sroa.01.0.i.i83, %.split56 ], [ %.sroa.01.0.i.i83, %.split57 ], [ %.sroa.01.0.i.i83, %.split58 ] ; 7 uses
  %i.dz = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.dz)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.t

bb.t:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.w, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValue7reverseBA_.exit

bb.u:                                             ; preds = %bb.i
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 %.sroa.01.0)
  %i.ea = shl nuw nsw i64 %.sroa.0.0.i39, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit

bb.v:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i38, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull %5), !inline_history !504
  %i.eb = shl nuw nsw i64 %.sroa.0.0.i38, 1
  %i.ec = or disjoint i64 %i.eb, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValue7reverseBA_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueEB16_.exit.i.i, %bb.j, %bb.w, %bb.t
  %.sroa.0.0.i.i6770 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.t ], [ %.sroa.0.0.i.i, %bb.w ], [ %.sroa.0.0.i.i, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueEB16_.exit.i.i ]
  %i.ed = shl nuw nsw i64 %.sroa.0.0.i.i6770, 1
  %i.ee = or disjoint i64 %i.ed, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit

bb.w:                                             ; preds = %bb.t
  %i.ef = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValue7reverseBA_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.w
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueEB16_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.el, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueEB16_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.eh = xor i64 %.sroa.0.017.i.i, -1
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.017.i.i
  %i.ej = getelementptr [24 x i8], ptr %i.eg, i64 %i.eh
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsidB8gjke19X_15influxdb3_cache(ptr noundef nonnull %i.ei, ptr noundef nonnull %i.ej, i64 noundef 3)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueEB16_.exit.i.i unwind label %bb.x, !noalias !538

bb.x:                                             ; preds = %.lr.ph.i.i37
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #22, !noalias !538
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueEB16_.exit.i.i: ; preds = %.lr.ph.i.i37
  %i.el = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.el, %i.ef
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValue7reverseBA_.exit, label %.lr.ph.i.i37

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit: ; preds = %bb.u, %bb.v, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValue7reverseBA_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ee, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValue7reverseBA_.exit ], [ %i.ec, %bb.v ], [ %i.ea, %bb.u ] ; 2 uses
  %i.em = lshr i64 %.sroa.023.0, 1
  %i.en = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.eo = sub nsw i64 %factor, %i.em
  %i.ep = add nuw nsw i64 %i.en, %factor
  %i.eq = mul i64 %i.eo, %.sroa.0.0
  %i.er = mul i64 %i.ep, %.sroa.0.0
  %i.es = xor i64 %i.er, %i.eq
  %i.et = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.es, i1 false)
  %i.eu = trunc nuw nsw i64 %i.et to i8
  br label %bb.g

bb.y:                                             ; preds = %.lr.ph99, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit
  %.sroa.02.198 = phi i64 [ %.sroa.02.0, %.lr.ph99 ], [ %i.ev, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ] ; 2 uses
  %.sroa.023.197 = phi i64 [ %.sroa.023.0, %.lr.ph99 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ] ; 4 uses
  %i.ev = add i64 %.sroa.02.198, -1               ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !noundef !3
  %.not29 = icmp ult i8 %i.ex, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.z

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, %bb.y, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.197, %bb.y ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.198, %bb.y ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ez, align 1
  br i1 %i.k, label %bb.as, label %bb.at

bb.z:                                             ; preds = %bb.y
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ev
  %i.fb = load i64, ptr %i.fa, align 8, !noundef !3 ; 3 uses
  %i.fc = lshr i64 %i.fb, 1                       ; 8 uses
  %i.fd = lshr i64 %.sroa.023.197, 1              ; 6 uses
  %i.fe = add nuw i64 %i.fc, %i.fd                ; 4 uses
  %i.ff = sub i64 %.sroa.09.0, %i.fe
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ff ; 6 uses
  %i.fh = icmp samesign ugt i64 %i.fe, %3
  %i.fi = trunc i64 %.sroa.023.197 to i1
  %i.fj = or i64 %i.fb, %.sroa.023.197
  %i.fk = trunc i64 %i.fj to i1
  %or.cond3.i = or i1 %i.fh, %i.fk
  br i1 %or.cond3.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fl = trunc i64 %i.fb to i1
  br i1 %i.fl, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.fm = shl nuw nsw i64 %i.fe, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit

bb.ac:                                            ; preds = %bb.ad, %bb.aa
  br i1 %i.fi, label %bb.ae, label %bb.ar

bb.ad:                                            ; preds = %bb.aa
  %i.fn = or i64 %i.fc, 1
  %i.fo = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.fn, i1 true)
  %i.fp = trunc nuw nsw i64 %i.fo to i32
  %i.fq = shl nuw nsw i32 %i.fp, 1
  %i.fr = xor i32 %i.fq, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias noundef nonnull align 8 %i.fg, i64 noundef range(i64 0, 384307168202282326) %i.fc, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.fr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull %5), !inline_history !505
  br label %bb.ac

bb.ae:                                            ; preds = %bb.ar, %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  %i.fs = icmp eq i64 %i.fc, 0
  %i.ft = icmp eq i64 %i.fd, 0
  %or.cond.i = or i1 %i.ft, %i.fs
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYBX_NtNtBa_3cmp10PartialOrd2ltEB13_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.fd, i64 range(i64 0, -9223372036854775808) %i.fc) ; 2 uses
  %i.fu = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.fu, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYBX_NtNtBa_3cmp10PartialOrd2ltEB13_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.af
  %i.fv = getelementptr inbounds nuw [24 x i8], ptr %i.fg, i64 %i.fc ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.fc, %i.fd  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.fv, ptr %i.fg
  %i.fw = mul nuw nsw i64 %.sroa.0.0.i.i35, 24    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.fw, i1 false), !alias.scope !571
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 %i.fw ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit.i.i
  %i.fy = phi ptr [ %i.hp, %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit.i.i ], [ %i.fx, %.critedge.i ] ; 3 uses
  %i.fz = phi ptr [ %i.hn, %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit.i.i ], [ %i.fv, %.critedge.i ] ; 6 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.gc, %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit.i.i ], [ %i.m, %.critedge.i ]
  %i.ga = getelementptr inbounds i8, ptr %i.fz, i64 -24 ; 3 uses
  %i.gb = getelementptr inbounds i8, ptr %i.fy, i64 -24 ; 3 uses
  %i.gc = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  %i.gd = load i64, ptr %i.gb, align 8, !range !8, !alias.scope !578, !noalias !579, !noundef !3 ; 2 uses
  %i.ge = icmp slt i64 %i.gd, 0
  %i.gf = add i64 %i.gd, -9223372036854775807
  %i.gg = select i1 %i.ge, i64 %i.gf, i64 0       ; 3 uses
  %i.gh = load i64, ptr %i.ga, align 8, !range !8, !alias.scope !580, !noalias !581, !noundef !3 ; 2 uses
  %i.gi = icmp slt i64 %i.gh, 0
  %i.gj = add i64 %i.gh, -9223372036854775807
  %i.gk = select i1 %i.gi, i64 %i.gj, i64 0       ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.gg, %i.gk
  br i1 %.not.i.i.i.i.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.preheader.i
  %i.gl = getelementptr inbounds i8, ptr %i.fy, i64 -16 ; 4 uses
  switch i64 %i.gg, label %bb.ai [
    i64 0, label %bb.aj
    i64 1, label %bb.ak
    i64 2, label %bb.al
    i64 3, label %bb.am
  ]

bb.ah:                                            ; preds = %.preheader.i
  %i.gm = icmp samesign ult i64 %i.gg, %i.gk
  br label %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit.i.i

bb.ai:                                            ; preds = %bb.ag
  unreachable

bb.aj:                                            ; preds = %bb.ag
  %i.gn = load ptr, ptr %i.gl, align 8, !alias.scope !578, !noalias !579, !nonnull !3, !noundef !3
  %i.go = getelementptr inbounds i8, ptr %i.fy, i64 -8
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !578, !noalias !579, !noundef !3 ; 2 uses
  %i.gq = getelementptr inbounds i8, ptr %i.fz, i64 -16
  %i.gr = load ptr, ptr %i.gq, align 8, !alias.scope !580, !noalias !581, !nonnull !3, !noundef !3
  %i.gs = getelementptr inbounds i8, ptr %i.fz, i64 -8
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !580, !noalias !581, !noundef !3 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.gp, i64 %i.gt)
  %i.gu = tail call i32 @memcmp(ptr nonnull %i.gn, ptr nonnull %i.gr, i64 %spec.store.select.i.i.i.i.i), !noalias !582 ; 2 uses
  %i.gv = sext i32 %i.gu to i64
  %i.gw = icmp eq i32 %i.gu, 0
  %i.gx = sub i64 %i.gp, %i.gt
  %spec.select.i.i.i.i.i = select i1 %i.gw, i64 %i.gx, i64 %i.gv
  %i.gy = icmp slt i64 %spec.select.i.i.i.i.i, 0
  br label %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit.i.i

bb.ak:                                            ; preds = %bb.ag
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYBW_NtNtBa_3cmp10PartialOrd2ltEB12_:bb.a
  %i.it = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !alias.scope !592, !noalias !593, !nonnull !3, !noundef !3
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.iw = load i64, ptr %i.iv, align 8, !alias.scope !592, !noalias !593, !noundef !3 ; 2 uses
  %spec.store.select.i.i.i.i22.i = tail call i64 @llvm.umin.i64(i64 %i.is, i64 %i.iw)
  %i.ix = tail call i32 @memcmp(ptr nonnull %i.iq, ptr nonnull %i.iu, i64 %spec.store.select.i.i.i.i22.i), !noalias !594 ; 2 uses
  %i.iy = sext i32 %i.ix to i64
  %i.iz = icmp eq i32 %i.ix, 0
  %i.ja = sub i64 %i.is, %i.iw
  %spec.select.i.i.i.i23.i = select i1 %i.iz, i64 %i.ja, i64 %i.iy
  %i.jb = icmp slt i64 %spec.select.i.i.i.i23.i, 0
  br i1 %i.jb, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit.i21.i, %.split3.i.i, %.split4.i.i, %.split5.i.i, %.split.i.i
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit.i21.i, %.split3.i.i, %.split4.i.i, %.split5.i.i, %.split.i.i
  %i.jc = phi i64 [ 1, %bb.ap ], [ 0, %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit.i21.i ], [ 0, %.split.i.i ], [ 0, %.split3.i.i ], [ 0, %.split4.i.i ], [ 0, %.split5.i.i ]
  %.sroa.0.0.i.i.i2.i.i = phi i64 [ 0, %bb.ap ], [ 1, %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit.i21.i ], [ 1, %.split.i.i ], [ 1, %.split3.i.i ], [ 1, %.split4.i.i ], [ 1, %.split5.i.i ]
  %.sroa.05.0.i.i = phi ptr [ %i.ht, %bb.ap ], [ %.sroa.0.07.i.i, %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit.i21.i ], [ %.sroa.0.07.i.i, %.split.i.i ], [ %.sroa.0.07.i.i, %.split3.i.i ], [ %.sroa.0.07.i.i, %.split4.i.i ], [ %.sroa.0.07.i.i, %.split5.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.0.i.i, i64 24, i1 false), !alias.scope !571, !noalias !595
  %i.jd = getelementptr inbounds nuw [24 x i8], ptr %i.ht, i64 %i.jc ; 3 uses
  %i.je = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.07.i.i, i64 %.sroa.0.0.i.i.i2.i.i ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hs, i64 24 ; 2 uses
  %i.jg = icmp ne ptr %i.jd, %i.fx
  %i.jh = icmp ne ptr %i.je, %i.m
  %or.cond.i20.i = select i1 %i.jg, i1 %i.jh, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1g_.exit.i

_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1g_.exit.i: ; preds = %bb.aq, %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit.i.i
  %.sroa.13.1.i = phi ptr [ %i.hn, %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit.i.i ], [ %i.jf, %bb.aq ]
  %.sroa.7.0.i = phi ptr [ %i.hp, %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit.i.i ], [ %i.fx, %bb.aq ]
  %.sroa.0.1.i = phi ptr [ %2, %_RNvYNvYNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1b_3ops8function5FnMutTRB5_B2i_EE8call_mutBb_.exit.i.i ], [ %i.jd, %bb.aq ] ; 2 uses
  %i.ji = ptrtoint ptr %.sroa.7.0.i to i64
  %i.jj = ptrtoint ptr %.sroa.0.1.i to i64
  %i.jk = sub nuw i64 %i.ji, %i.jj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.jk, i1 false), !alias.scope !571, !noalias !596
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYBX_NtNtBa_3cmp10PartialOrd2ltEB13_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYBX_NtNtBa_3cmp10PartialOrd2ltEB13_.exit: ; preds = %bb.ae, %bb.af, %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1g_.exit.i
  %i.jl = shl nuw nsw i64 %i.fe, 1
  %i.jm = or disjoint i64 %i.jl, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit

bb.ar:                                            ; preds = %bb.ac
  %i.jn = getelementptr inbounds nuw [24 x i8], ptr %i.fg, i64 %i.fc
  %i.jo = or i64 %i.fd, 1
  %i.jp = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.jo, i1 true)
  %i.jq = trunc nuw nsw i64 %i.jp to i32
  %i.jr = shl nuw nsw i32 %i.jq, 1
  %i.js = xor i32 %i.jr, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias noundef nonnull align 8 %i.jn, i64 noundef range(i64 0, 384307168202282326) %i.fd, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.js, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull %5), !inline_history !505
  br label %bb.ae

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit: ; preds = %bb.ab, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYBX_NtNtBa_3cmp10PartialOrd2ltEB13_.exit
  %.sroa.0.0.i = phi i64 [ %i.jm, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYBX_NtNtBa_3cmp10PartialOrd2ltEB13_.exit ], [ %i.fm, %bb.ab ] ; 2 uses
  %i.jt = icmp ugt i64 %i.ev, 1
  br i1 %i.jt, label %bb.y, label %._crit_edge

bb.as:                                            ; preds = %._crit_edge
  %i.ju = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.jv = lshr i64 %.sroa.018.0, 1
  %i.jw = add nuw i64 %i.jv, %.sroa.09.0
  br label %bb.f

bb.at:                                            ; preds = %._crit_edge
  %i.jx = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.jx, 0
  br i1 %.not31, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.jy = or i64 %1, 1
  %i.jz = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.jy, i1 true)
  %i.ka = trunc nuw nsw i64 %i.jz to i32
  %i.kb = shl nuw nsw i32 %i.ka, 1
  %i.kc = xor i32 %i.kb, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.kc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull %5), !inline_history !505
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.a, %bb.av
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYBW_NtNtBa_3cmp10PartialOrd2ltEB12_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i99 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i104 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fl, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fj, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit
  %.sroa.021.0 = phi i8 [ %i.cj, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph67, label %._crit_edge

.lr.ph67:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i.thread102, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i.thread, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value7reverseBA_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.val14.i = load ptr, ptr %i.q, align 8, !alias.scope !634, !noalias !635, !nonnull !3, !noundef !3 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 24
  %.val15.i = load i64, ptr %i.r, align 8, !alias.scope !634, !noalias !635, !noundef !3 ; 4 uses
  %.val16.i = load ptr, ptr %i.o, align 8, !alias.scope !634, !noalias !635, !nonnull !3, !noundef !3
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val17.i = load i64, ptr %i.s, align 8, !alias.scope !634, !noalias !635, !noundef !3 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val14.i, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16
  %spec.store.select.i.i.i.i41 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.v = tail call i32 @memcmp(ptr nonnull readonly %i.t, ptr nonnull readonly %i.u, i64 %spec.store.select.i.i.i.i41), !alias.scope !636, !noalias !637 ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = icmp eq i32 %i.v, 0
  %i.y = sub i64 %.val15.i, %.val17.i
  %spec.select.i.i.i.i42 = select i1 %i.x, i64 %i.y, i64 %i.w
  %i.z = icmp slt i64 %spec.select.i.i.i.i42, 0   ; 2 uses
  %.not74 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader52

.preheader52:                                     ; preds = %bb.k
  br i1 %.not74, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not74, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i.thread102, label %.lr.ph61

.lr.ph:                                           ; preds = %.preheader52, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader52 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader52 ]
  %.sroa.01.0.i.i57 = phi i64 [ %i.aj, %bb.l ], [ 2, %.preheader52 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.0.i.i57 ; 2 uses
  %.val10.i = load ptr, ptr %i.aa, align 8, !alias.scope !634, !noalias !635, !nonnull !3, !noundef !3 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val11.i = load i64, ptr %i.ab, align 8, !alias.scope !634, !noalias !635, !noundef !3 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %.val12.i, i64 16
  %spec.store.select.i.i.i.i39 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.ae = tail call i32 @memcmp(ptr nonnull readonly %i.ac, ptr nonnull readonly %i.ad, i64 %spec.store.select.i.i.i.i39), !alias.scope !638, !noalias !637 ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp eq i32 %i.ae, 0
  %i.ah = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i40 = select i1 %i.ag, i64 %i.ah, i64 %i.af
  %i.ai = icmp slt i64 %spec.select.i.i.i.i40, 0
  br i1 %i.ai, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.aj = add nuw nsw i64 %.sroa.01.0.i.i57, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, label %.lr.ph

.lr.ph61:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i60 = phi i64 [ %i.at, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.1.i.i60 ; 2 uses
  %.val.i = load ptr, ptr %i.ak, align 8, !alias.scope !634, !noalias !635, !nonnull !3, !noundef !3 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %.val7.i = load i64, ptr %i.al, align 8, !alias.scope !634, !noalias !635, !noundef !3 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.ao = tail call i32 @memcmp(ptr nonnull readonly %i.am, ptr nonnull readonly %i.an, i64 %spec.store.select.i.i.i.i), !alias.scope !639, !noalias !637 ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp eq i32 %i.ao, 0
  %i.ar = sub i64 %.val7.i, %.val9.i
  %spec.select.i.i.i.i = select i1 %i.aq, i64 %i.ar, i64 %i.ap
  %i.as = icmp slt i64 %spec.select.i.i.i.i, 0
  br i1 %i.as, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i

bb.m:                                             ; preds = %.lr.ph61
  %i.at = add nuw nsw i64 %.sroa.01.1.i.i60, 1    ; 2 uses
  %exitcond81.not = icmp eq i64 %i.at, %i.n
  br i1 %exitcond81.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, label %.lr.ph61

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph61
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i60, %.lr.ph61 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i57, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.au = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.au)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i.thread102: ; preds = %.preheader
  br i1 %.not5.i104, label %bb.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value12split_at_mutBA_.exit11.preheader.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i.thread: ; preds = %.preheader52
  br i1 %.not5.i99, label %bb.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value7reverseBA_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i
  br i1 %i.z, label %bb.q, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value7reverseBA_.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 %.sroa.01.0)
  %i.av = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull %5), !inline_history !610
  %i.aw = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ax = or disjoint i64 %i.aw, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value7reverseBA_.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value12split_at_mutBA_.exit11.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value7reverseBA_.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value12split_at_mutBA_.exit11.i.i.epil.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value12split_at_mutBA_.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value7reverseBA_.exit.loopexit.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value12split_at_mutBA_.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value12split_at_mutBA_.exit11.preheader.i.i ], [ %i.ca, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value7reverseBA_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod130 = trunc i64 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod130)
  %i.ay = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.epil.init ; 3 uses
  %i.ba = getelementptr [16 x i8], ptr %i.bj, i64 %i.ay ; 3 uses
  %i.bb = load ptr, ptr %i.az, align 8, !alias.scope !640, !noalias !641, !nonnull !3, !noundef !3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !640, !noalias !641, !noundef !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !alias.scope !642, !noalias !635
  store ptr %i.bb, ptr %i.ba, align 8, !alias.scope !643, !noalias !644
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !alias.scope !643, !noalias !644
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value7reverseBA_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value7reverseBA_.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value12split_at_mutBA_.exit11.i.i.epil.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value7reverseBA_.exit.loopexit.unr-lcssa, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4750 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i.thread ], [ %.sroa.0.0.i.i100107111, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value7reverseBA_.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i100107111, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value12split_at_mutBA_.exit11.i.i.epil.preheader ]
  %i.bf = shl nuw nsw i64 %.sroa.0.0.i.i4750, 1
  %i.bg = or disjoint i64 %i.bf, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit

bb.q:                                             ; preds = %bb.n
  %i.bh = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645), !noalias !635
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646), !noalias !635
  %.not.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value7reverseBA_.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value12split_at_mutBA_.exit11.preheader.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value12split_at_mutBA_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i.thread102, %bb.q
  %i.bi = phi i64 [ %i.bh, %bb.q ], [ 1, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i.thread102 ] ; 4 uses
  %.sroa.0.0.i.i100107111 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i.thread102 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.0.i.i100107111 ; 3 uses
  %xtraiter = and i64 %i.bi, 1
  %i.bk = icmp eq i64 %i.bi, 1
  br i1 %i.bk, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value12split_at_mutBA_.exit11.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value12split_at_mutBA_.exit11.preheader.i.i.new

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value12split_at_mutBA_.exit11.preheader.i.i.new: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value12split_at_mutBA_.exit11.preheader.i.i
  %unroll_iter = and i64 %i.bi, 9223372036854775806
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value12split_at_mutBA_.exit11.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value12split_at_mutBA_.exit11.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value12split_at_mutBA_.exit11.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value12split_at_mutBA_.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value12split_at_mutBA_.exit11.preheader.i.i.new ], [ %i.ca, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value12split_at_mutBA_.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value12split_at_mutBA_.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value12split_at_mutBA_.exit11.i.i ]
  %i.bl = xor i64 %.sroa.0.016.i.i, -1
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.bn = getelementptr [16 x i8], ptr %i.bj, i64 %i.bl ; 3 uses
  %i.bo = load ptr, ptr %i.bm, align 8, !alias.scope !640, !noalias !641, !nonnull !3, !noundef !3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !640, !noalias !641, !noundef !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !alias.scope !642, !noalias !635
  store ptr %i.bo, ptr %i.bn, align 8, !alias.scope !643, !noalias !644
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !alias.scope !643, !noalias !644
  %i.bs = xor i64 %.sroa.0.016.i.i, -2
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.bv = getelementptr [16 x i8], ptr %i.bj, i64 %i.bs ; 3 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !alias.scope !640, !noalias !641, !nonnull !3, !noundef !3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !640, !noalias !641, !noundef !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !alias.scope !642, !noalias !635
  store ptr %i.bw, ptr %i.bv, align 8, !alias.scope !643, !noalias !644
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %i.by, ptr %i.bz, align 8, !alias.scope !643, !noalias !644
  %i.ca = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value7reverseBA_.exit.loopexit.unr-lcssa, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value12split_at_mutBA_.exit11.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value7reverseBA_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.bg, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5Value7reverseBA_.exit ], [ %i.ax, %bb.p ], [ %i.av, %bb.o ] ; 2 uses
  %i.cb = lshr i64 %.sroa.023.0, 1
  %i.cc = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.cd = sub nsw i64 %factor, %i.cb
  %i.ce = add nuw nsw i64 %i.cc, %factor
  %i.cf = mul i64 %i.cd, %.sroa.0.0
  %i.cg = mul i64 %i.ce, %.sroa.0.0
  %i.ch = xor i64 %i.cg, %i.cf
  %i.ci = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ch, i1 false)
  %i.cj = trunc nuw nsw i64 %i.ci to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph67, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit
  %.sroa.02.166 = phi i64 [ %.sroa.02.0, %.lr.ph67 ], [ %i.ck, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ] ; 2 uses
  %.sroa.023.165 = phi i64 [ %.sroa.023.0, %.lr.ph67 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ] ; 4 uses
  %i.ck = add i64 %.sroa.02.166, -1               ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noundef !3
  %.not29 = icmp ult i8 %i.cm, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.165, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.166, %bb.r ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.co, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ck
  %i.cq = load i64, ptr %i.cp, align 8, !noundef !3 ; 3 uses
  %i.cr = lshr i64 %i.cq, 1                       ; 8 uses
  %i.cs = lshr i64 %.sroa.023.165, 1              ; 6 uses
  %i.ct = add nuw i64 %i.cr, %i.cs                ; 4 uses
  %i.cu = sub i64 %.sroa.09.0, %i.ct
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cu ; 6 uses
  %i.cw = icmp samesign ugt i64 %i.ct, %3
  %i.cx = trunc i64 %.sroa.023.165 to i1
  %i.cy = or i64 %i.cq, %.sroa.023.165
  %i.cz = trunc i64 %i.cy to i1
  %or.cond3.i = or i1 %i.cw, %i.cz
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.da = trunc i64 %i.cq to i1
  br i1 %i.da, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.db = shl nuw nsw i64 %i.ct, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cx, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.dc = or i64 %i.cr, 1
  %i.dd = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.dc, i1 true)
  %i.de = trunc nuw nsw i64 %i.dd to i32
  %i.df = shl nuw nsw i32 %i.de, 1
  %i.dg = xor i32 %i.df, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias noundef nonnull align 8 %i.cv, i64 noundef range(i64 0, 576460752303423488) %i.cr, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.dg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull %5), !inline_history !616
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648)
  %i.dh = icmp eq i64 %i.cr, 0
  %i.di = icmp eq i64 %i.cs, 0
  %or.cond.i = or i1 %i.di, %i.dh
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYBX_NtNtBa_3cmp10PartialOrd2ltEB13_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.cs, i64 range(i64 0, -9223372036854775808) %i.cr) ; 2 uses
  %i.dj = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.dj, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueNvYBX_NtNtBa_3cmp10PartialOrd2ltEB13_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.cr ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.cr, %i.cs  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.dk, ptr %i.cv
  %i.dl = shl nuw nsw i64 %.sroa.0.0.i.i35, 4     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.dl, i1 false), !alias.scope !649
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 %i.dl ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.dn = phi ptr [ %i.ed, %.preheader.i ], [ %i.dm, %.critedge.i ] ; 2 uses
  %i.do = phi ptr [ %i.ec, %.preheader.i ], [ %i.dk, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dr, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 -16 ; 3 uses
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 -16 ; 3 uses
end_hunk_1
