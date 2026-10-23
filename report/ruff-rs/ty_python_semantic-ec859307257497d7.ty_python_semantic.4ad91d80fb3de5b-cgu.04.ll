Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.04?download=true
inline.NumInlined: 10536
inline.NumDeleted: 4602
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB6_19TypeRelationChecker20with_recursion_guardNCNvB2_15check_type_pairsq_0EBa_:bb.a
  %i.am = alloca [16 x i8], align 8               ; 4 uses
  %i.an = alloca [16 x i8], align 8               ; 3 uses
  %i.ao = alloca [72 x i8], align 8               ; 13 uses
  %i.ap = alloca [40 x i8], align 8               ; 8 uses
  %i.aq = alloca [20 x i8], align 4               ; 9 uses
  %i.ar = alloca [16 x i8], align 4               ; 4 uses
  %i.as = alloca [16 x i8], align 8               ; 4 uses
  %i.at = alloca [16 x i8], align 8               ; 4 uses
  %i.au = alloca [16 x i8], align 8               ; 3 uses
  %i.av = alloca [20 x i8], align 4               ; 8 uses
  %i.aw = alloca [20 x i8], align 4               ; 8 uses
  %i.ax = alloca [72 x i8], align 8               ; 11 uses
  %i.ay = alloca [72 x i8], align 8               ; 8 uses
  %i.az = alloca [16 x i8], align 8               ; 4 uses
  %i.ba = alloca [16 x i8], align 8               ; 3 uses
  %i.bb = alloca [16 x i8], align 4               ; 4 uses
  %i.bc = alloca [16 x i8], align 4               ; 5 uses
  %i.bd = alloca [16 x i8], align 8               ; 6 uses
  %i.be = alloca [16 x i8], align 4               ; 4 uses
  %i.bf = alloca [16 x i8], align 4               ; 4 uses
  %i.bg = alloca [16 x i8], align 8               ; 6 uses
  %i.bh = alloca [72 x i8], align 8               ; 7 uses
  %i.bi = alloca [72 x i8], align 8               ; 7 uses
  %i.bj = alloca [16 x i8], align 4               ; 4 uses
  %i.bk = alloca [16 x i8], align 4               ; 4 uses
  %i.bl = alloca [16 x i8], align 4               ; 4 uses
  %i.bm = alloca [16 x i8], align 4               ; 4 uses
  %i.bn = alloca [16 x i8], align 4               ; 4 uses
  %i.bo = alloca [16 x i8], align 8               ; 6 uses
  %i.bp = alloca [72 x i8], align 8               ; 7 uses
  %i.bq = alloca [16 x i8], align 4               ; 4 uses
  %i.br = alloca [16 x i8], align 4               ; 4 uses
  %i.bs = alloca [72 x i8], align 8               ; 7 uses
  %i.bt = alloca [72 x i8], align 8               ; 6 uses
  %i.bu = alloca [16 x i8], align 8               ; 12 uses
  %i.bv = alloca [72 x i8], align 8               ; 13 uses
  %i.bw = alloca [16 x i8], align 8               ; 14 uses
  %i.bx = alloca [12 x i8], align 4               ; 6 uses
  %i.by = alloca [12 x i8], align 4               ; 7 uses
  %i.bz = alloca [16 x i8], align 8               ; 4 uses
  %i.ca = alloca [16 x i8], align 8               ; 3 uses
  %i.cb = alloca [16 x i8], align 4               ; 4 uses
  %i.cc = alloca [16 x i8], align 8               ; 4 uses
  %i.cd = alloca [16 x i8], align 8               ; 3 uses
  %i.ce = alloca [72 x i8], align 8               ; 13 uses
  %i.cf = alloca [20 x i8], align 4               ; 5 uses
  %i.cg = alloca [20 x i8], align 4               ; 10 uses
  %i.ch = alloca [16 x i8], align 4               ; 4 uses
  %i.ci = alloca [16 x i8], align 8               ; 4 uses
  %i.cj = alloca [16 x i8], align 8               ; 3 uses
  %i.ck = alloca [72 x i8], align 8               ; 13 uses
  %i.cl = alloca [16 x i8], align 8               ; 11 uses
  %i.cm = alloca [20 x i8], align 4               ; 6 uses
  %i.cn = alloca [12 x i8], align 4               ; 14 uses
  %i.co = alloca [36 x i8], align 4               ; 2 uses
  %i.cp = alloca [16 x i8], align 8               ; 4 uses
  %i.cq = alloca [16 x i8], align 8               ; 50 uses
  %i.cr = alloca [40 x i8], align 8               ; 4 uses
  %i.cs = alloca [36 x i8], align 4               ; 8 uses
  %.sroa.6 = alloca [36 x i8], align 4            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cw = load i8, ptr %i.cv, align 8, !range !18, !noundef !12
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.cy = load i8, ptr %i.cx, align 1, !range !17, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cs, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cz, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  store i8 %i.cw, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 33
  store i8 %i.cy, ptr %i.db, align 1
  call void @_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB5_13CycleDetectorNtNtB7_8relation12TypeRelationTNtB7_4TypeB1J_B1e_NtB1g_17TypeVarEvaluationENtNtB7_11constraints13ConstraintSetKj1_E11begin_visitB9_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cr, ptr noundef nonnull align 8 %i.cu, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(36) %i.cs), !inline_history !491
  %i.dc = load i32, ptr %i.cr, align 8, !range !19, !noundef !12
  switch i32 %i.dc, label %default.unreachable520 [
    i32 0, label %_RINvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB6_13CycleDetectorNtNtB8_8relation12TypeRelationTNtB8_4TypeB1K_B1f_NtB1h_17TypeVarEvaluationENtNtB8_11constraints13ConstraintSetKj1_E9try_visitNCNvMs2_B1h_NtB1h_19TypeRelationChecker15check_type_pairsq_0EBa_.exit
    i32 1, label %bb.dw
    i32 2, label %bb.b
  ]

default.unreachable520:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.co, ptr noundef nonnull align 4 dereferenceable(36) %i.dd, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !652
  call void @llvm.experimental.noalias.scope.decl(metadata !653)
  %i.de = load ptr, ptr %6, align 8, !alias.scope !653, !noalias !654, !nonnull !12, !align !13, !noundef !12 ; 39 uses
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !653, !noalias !654, !nonnull !12, !noundef !12 ; 44 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !653, !noalias !654, !nonnull !12, !align !13, !noundef !12 ; 44 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !653, !noalias !654, !nonnull !12, !align !16, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.x, ptr noundef nonnull align 4 dereferenceable(12) %i.dk, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !655
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !alias.scope !653, !noalias !654, !nonnull !12, !align !16, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cn, ptr noundef nonnull align 4 dereferenceable(12) %i.dm, i64 12, i1 false), !noalias !655
  call void @llvm.experimental.noalias.scope.decl(metadata !656), !noalias !654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !655
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !655
  %i.dn = load i32, ptr %i.cn, align 4, !range !23, !alias.scope !656, !noalias !655, !noundef !12 ; 2 uses
  %i.do = icmp eq i32 %i.dn, -2
  br i1 %i.do, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !range !20, !alias.scope !656, !noalias !655, !noundef !12 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.ds = load i32, ptr %i.dr, align 4, !alias.scope !656, !noalias !655, !noundef !12 ; 3 uses
  %i.dt = call noundef zeroext i1 @_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_24SynthesizedTypedDictType8is_patch(i32 noundef %i.dq, i32 noundef %i.ds, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di), !noalias !657, !inline_history !504
  br i1 %i.dt, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0234.0.copyload = load i32, ptr %i.x, align 4
  %i.du = icmp eq i32 %.sroa.0234.0.copyload, -2
  br i1 %i.du, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit111.thread, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit.thread

.thread:                                          ; preds = %bb.b
  %.sroa.0234.0.copyload264 = load i32, ptr %i.x, align 4 ; 2 uses
  %i.dv = icmp eq i32 %.sroa.0234.0.copyload264, -2
  br i1 %i.dv, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit111.thread, label %bb.af

bb.e:                                             ; preds = %bb.c
  %i.dw = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType5items(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.x, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di) ; 3 uses
  %i.dx = call noundef nonnull align 8 ptr @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dicts4_1__NtB8_24SynthesizedTypedDictType5itemsDNtNtBc_2db2DbEL_EBc_(i32 noundef %i.dq, i32 noundef %i.ds, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di), !noalias !657, !inline_history !504 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !658
  call void @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dicts4_1__NtB8_24SynthesizedTypedDictType8opennessDNtNtBc_2db2DbEL_EBc_(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.cm, i32 noundef %i.dq, i32 noundef %i.ds, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di), !noalias !657, !inline_history !504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !658
  %i.dy = getelementptr i8, ptr %i.de, i64 48     ; 6 uses
  %.val110.i.i = load ptr, ptr %i.dy, align 8, !noalias !658, !nonnull !12, !align !13, !noundef !12
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 3 uses
  store i32 -1, ptr %i.dz, align 8, !alias.scope !659, !noalias !657
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 0, ptr %i.ea, align 4, !alias.scope !659, !noalias !657
  store ptr %.val110.i.i, ptr %i.cl, align 8, !alias.scope !659, !noalias !657
  %i.eb = load ptr, ptr %i.dw, align 8, !alias.scope !660, !noalias !657, !noundef !12 ; 3 uses
  %.not.i101 = icmp eq ptr %i.eb, null
  br i1 %.not.i101, label %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit110, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ed = load <2 x i64>, ptr %i.ec, align 8, !alias.scope !660, !noalias !657
  br label %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit110

_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit110: ; preds = %bb.e, %bb.f
  %.sink19.i108 = phi i64 [ 0, %bb.e ], [ 1, %bb.f ] ; 2 uses
  %i.ee = phi <2 x i64> [ <i64 undef, i64 0>, %bb.e ], [ %i.ed, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !658
  store i64 %.sink19.i108, ptr %i.ck, align 8, !noalias !658
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !658
  %.sroa.6115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store ptr %i.eb, ptr %.sroa.6115.0..sroa_idx, align 8, !noalias !658
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.ef = extractelement <2 x i64> %i.ee, i64 0
  store i64 %i.ef, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !658
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store i64 %.sink19.i108, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !658
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  store ptr null, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !658
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  store ptr %i.eb, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !658
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store <2 x i64> %i.ee, ptr %.sroa.11.0..sroa_idx, align 8, !noalias !658
  %i.eg = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ck), !noalias !657, !inline_history !504 ; 2 uses
  %i.eh = extractvalue { ptr, ptr } %i.eg, 0      ; 2 uses
  %.not95.i.i367 = icmp eq ptr %i.eh, null
  %.sroa.0232.0.copyload.pre = load i32, ptr %i.cm, align 4 ; 5 uses
  br i1 %.not95.i.i367, label %._crit_edge369, label %.lr.ph368

.lr.ph368:                                        ; preds = %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit110
  %i.ei = add nsw i32 %.sroa.0232.0.copyload.pre, -37
  %i.ej = icmp samesign ugt i32 %.sroa.0232.0.copyload.pre, 36
  %narrow101.i.i = select i1 %i.ej, i32 %i.ei, i32 2
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph368, %.backedge326
  %.pn375 = phi { ptr, ptr } [ %i.eg, %.lr.ph368 ], [ %i.fv, %.backedge326 ]
  %i.ek = phi ptr [ %i.eh, %.lr.ph368 ], [ %i.fw, %.backedge326 ] ; 4 uses
  %i.el = extractvalue { ptr, ptr } %.pn375, 1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.el) ], !noalias !654
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 15
  %i.en = load i8, ptr %i.em, align 1, !range !24, !alias.scope !661, !noalias !657, !noundef !12 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !661, !noalias !657, !noundef !12
  %i.eq = and i64 %i.ep, 72057594037927935
  %i.er = icmp ult i8 %i.en, -48
  %i.es = zext i8 %i.en to i64
  %i.et = add nsw i64 %i.es, -192
  %spec.store.select.i98 = call i64 @llvm.umin.i64(i64 %i.et, i64 16)
  %.sroa.0.0.i99 = select i1 %i.er, i64 %spec.store.select.i98, i64 %i.eq
  %i.eu = icmp ugt i8 %i.en, -49
  %i.ev = load ptr, ptr %i.ek, align 8, !alias.scope !661, !noalias !657
  %.sroa.01.0.i100 = select i1 %i.eu, ptr %i.ev, ptr %i.ek
  %i.ew = call noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldE3geteEB1W_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i100, i64 noundef %.sroa.0.0.i99), !noalias !657, !inline_history !504 ; 2 uses
  %.not100.i.i = icmp eq ptr %i.ew, null
  br i1 %.not100.i.i, label %bb.z, label %bb.aa

._crit_edge369:                                   ; preds = %.backedge326, %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !658
  %i.ex = icmp eq i32 %.sroa.0232.0.copyload.pre, 37
  br i1 %i.ex, label %bb.m, label %bb.h

bb.h:                                             ; preds = %._crit_edge369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !658
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType8openness(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.cf, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.x, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di), !inline_history !504
  call void @llvm.experimental.noalias.scope.decl(metadata !662)
  call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %i.ey = load i32, ptr %i.cf, align 4, !range !25, !alias.scope !663, !noalias !658, !noundef !12 ; 2 uses
  %i.ez = add nsw i32 %i.ey, -37
  %i.fa = icmp samesign ugt i32 %i.ey, 36
  %narrow.i94 = select i1 %i.fa, i32 %i.ez, i32 2
  switch i32 %narrow.i94, label %bb.i [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  store i32 18, ptr %i.cg, align 4, !alias.scope !662, !noalias !658
  %.sroa.0.sroa.4.0..sroa_idx.i95 = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store i32 5, ptr %.sroa.0.sroa.4.0..sroa_idx.i95, align 4, !alias.scope !662, !noalias !658
  br label %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit97

bb.k:                                             ; preds = %bb.h
  store i32 -1, ptr %i.cg, align 4, !alias.scope !662, !noalias !658
  br label %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit97

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cg, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.cf, i64 20, i1 false), !alias.scope !664, !noalias !658
  br label %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit97

_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit97: ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !658
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge369
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType20explicit_extra_items(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.cg, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.x, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di), !inline_history !504
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit97
  %i.fb = load i32, ptr %i.cg, align 4, !range !26, !noalias !658, !noundef !12
  %.not96.i.i = icmp eq i32 %i.fb, -1
  br i1 %.not96.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ac, ptr noundef nonnull align 4 dereferenceable(16) %i.cg, i64 16, i1 false), !noalias !658
  %i.fc = load ptr, ptr %i.dx, align 8, !alias.scope !665, !noalias !657, !noundef !12 ; 3 uses
  %.not.i84 = icmp eq ptr %i.fc, null
  br i1 %.not.i84, label %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit93, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.fe = load <2 x i64>, ptr %i.fd, align 8, !alias.scope !665, !noalias !657
  br label %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit93

_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit93: ; preds = %bb.o, %bb.p
  %.sink19.i91 = phi i64 [ 0, %bb.o ], [ 1, %bb.p ] ; 2 uses
  %i.ff = phi <2 x i64> [ <i64 undef, i64 0>, %bb.o ], [ %i.fe, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !658
  store i64 %.sink19.i91, ptr %i.ce, align 8, !noalias !658
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr null, ptr %.sroa.5119.0..sroa_idx, align 8, !noalias !658
  %.sroa.6120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store ptr %i.fc, ptr %.sroa.6120.0..sroa_idx, align 8, !noalias !658
  %.sroa.7121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.fg = extractelement <2 x i64> %i.ff, i64 0
  store i64 %i.fg, ptr %.sroa.7121.0..sroa_idx, align 8, !noalias !658
  %.sroa.8122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  store i64 %.sink19.i91, ptr %.sroa.8122.0..sroa_idx, align 8, !noalias !658
  %.sroa.9123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  store ptr null, ptr %.sroa.9123.0..sroa_idx, align 8, !noalias !658
  %.sroa.10124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  store ptr %i.fc, ptr %.sroa.10124.0..sroa_idx, align 8, !noalias !658
  %.sroa.11125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  store <2 x i64> %i.ff, ptr %.sroa.11125.0..sroa_idx, align 8, !noalias !658
  %i.fh = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ce), !noalias !657, !inline_history !504 ; 2 uses
  %i.fi = extractvalue { ptr, ptr } %i.fh, 0      ; 2 uses
  %.not97.i.i370 = icmp eq ptr %i.fi, null
  br i1 %.not97.i.i370, label %._crit_edge372, label %.lr.ph371

bb.q:                                             ; preds = %bb.r, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !noalias !666
  br label %bb.x

.lr.ph371:                                        ; preds = %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit93, %.backedge
  %.pn376 = phi { ptr, ptr } [ %i.fl, %.backedge ], [ %i.fh, %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit93 ]
  %i.fj = phi ptr [ %i.fm, %.backedge ], [ %i.fi, %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit93 ]
  %i.fk = call noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldE3getB17_EB1W_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fj), !noalias !657, !inline_history !504
  %.not99.i.i = icmp eq ptr %i.fk, null
  br i1 %.not99.i.i, label %bb.v, label %.backedge

.backedge:                                        ; preds = %.lr.ph371, %bb.v
  %i.fl = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ce), !noalias !657, !inline_history !504 ; 2 uses
  %i.fm = extractvalue { ptr, ptr } %i.fl, 0      ; 2 uses
  %.not97.i.i = icmp eq ptr %i.fm, null
  br i1 %.not97.i.i, label %._crit_edge372, label %.lr.ph371

._crit_edge372:                                   ; preds = %.backedge, %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !658
  %i.fn = add nsw i32 %.sroa.0232.0.copyload.pre, -37
  %i.fo = icmp samesign ugt i32 %.sroa.0232.0.copyload.pre, 36
  %narrow98.i.i = select i1 %i.fo, i32 %i.fn, i32 2
  switch i32 %narrow98.i.i, label %.loopexit [
    i32 0, label %bb.r
    i32 1, label %bb.s
    i32 2, label %bb.t
  ]

.loopexit:                                        ; preds = %bb.z, %._crit_edge, %._crit_edge372
  unreachable

bb.r:                                             ; preds = %bb.t, %._crit_edge372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !658
  br label %bb.q

bb.s:                                             ; preds = %._crit_edge372
  %.val123.i.i = load ptr, ptr %i.dy, align 8, !noalias !658, !nonnull !12, !align !13, !noundef !12
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 -2, ptr %i.fp, align 8, !alias.scope !667, !noalias !668
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.fq, align 4, !alias.scope !667, !noalias !668
  store ptr %.val123.i.i, ptr %i.cq, align 8, !alias.scope !667, !noalias !668
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ab, ptr noundef nonnull align 4 dereferenceable(16) %i.cm, i64 16, i1 false), !noalias !658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !658
  %i.fr = load ptr, ptr %i.dy, align 8, !noalias !658, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !658
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bz, ptr noundef nonnull align 8 %i.de, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ac, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ab), !noalias !657, !inline_history !504
  call void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ca, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noundef nonnull align 8 %i.fr, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.bz), !noalias !657, !inline_history !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !658
  br label %bb.r

bb.u:                                             ; preds = %bb.w, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !658
  br label %bb.x

bb.v:                                             ; preds = %.lr.ph371
  %i.fs = extractvalue { ptr, ptr } %.pn376, 1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fs) ], !noalias !654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !658
  %i.ft = load ptr, ptr %i.dy, align 8, !noalias !658, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cb, ptr noundef nonnull align 4 dereferenceable(16) %i.fs, i64 16, i1 false), !noalias !657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.y, ptr noundef nonnull align 4 dereferenceable(16) %i.cg, i64 16, i1 false)
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.cc, ptr noundef nonnull align 8 %i.de, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.y, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.cb), !noalias !657, !inline_history !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !658
  call void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.cd, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noundef nonnull align 8 %i.ft, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.cc), !noalias !657, !inline_history !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !658
  %.sroa.4128.0.copyload = load i32, ptr %i.dz, align 8, !noalias !658
  %i.fu = icmp eq i32 %.sroa.4128.0.copyload, -2
  br i1 %i.fu, label %bb.w, label %.backedge

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !noalias !666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !658
  br label %bb.u

bb.x:                                             ; preds = %bb.u, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !658
  br label %bb.y

bb.y:                                             ; preds = %bb.ac, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !658
  br label %_RINvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB6_13CycleDetectorNtNtB8_8relation12TypeRelationTNtB8_4TypeB1K_B1f_NtB1h_17TypeVarEvaluationENtNtB8_11constraints13ConstraintSetKj1_E9try_visitNCNvMs2_B1h_NtB1h_19TypeRelationChecker15check_type_pairsq_0EBa_.exit.thread

bb.z:                                             ; preds = %bb.g
  switch i32 %narrow101.i.i, label %.loopexit [
    i32 0, label %.backedge326
    i32 1, label %bb.ab
    i32 2, label %bb.aa
  ]

.backedge326:                                     ; preds = %bb.z, %bb.aa
  %i.fv = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ck), !noalias !657, !inline_history !504 ; 2 uses
  %i.fw = extractvalue { ptr, ptr } %i.fv, 0      ; 2 uses
  %.not95.i.i = icmp eq ptr %i.fw, null
  br i1 %.not95.i.i, label %._crit_edge369, label %bb.g

bb.aa:                                            ; preds = %bb.g, %bb.z
  %.sink = phi ptr [ %i.cm, %bb.z ], [ %i.ew, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ad, ptr noundef nonnull align 4 dereferenceable(16) %.sink, i64 16, i1 false), !noalias !657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !658
  %i.fx = load ptr, ptr %i.dy, align 8, !noalias !658, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ch, ptr noundef nonnull align 4 dereferenceable(16) %i.el, i64 16, i1 false), !noalias !657
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ci, ptr noundef nonnull align 8 %i.de, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ch, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ad), !noalias !657, !inline_history !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !658
  call void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.cj, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noundef nonnull align 8 %i.fx, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.ci), !noalias !657, !inline_history !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !658
  %.sroa.4.0.copyload = load i32, ptr %i.dz, align 8, !noalias !658
  %i.fy = icmp eq i32 %.sroa.4.0.copyload, -2
  br i1 %i.fy, label %bb.ad, label %.backedge326

bb.ab:                                            ; preds = %bb.z
  %.val122.i.i = load ptr, ptr %i.dy, align 8, !noalias !658, !nonnull !12, !align !13, !noundef !12
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 -2, ptr %i.fz, align 8, !alias.scope !669, !noalias !668
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.ga, align 4, !alias.scope !669, !noalias !668
  store ptr %.val122.i.i, ptr %i.cq, align 8, !alias.scope !669, !noalias !668
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !658
  br label %bb.y

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !noalias !666
  br label %bb.ac

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !658
  br label %bb.aq

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit111.thread: ; preds = %bb.d, %.thread, %bb.aq
  %i.gb = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType5items(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.x, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di) ; 9 uses
  %i.gc = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType5items(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.cn, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di), !noalias !670, !inline_history !504 ; 5 uses
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType8openness(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.s, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.x, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di)
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType8openness(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.aq, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.cn, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di), !inline_history !504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !658
  %i.gd = getelementptr i8, ptr %i.de, i64 48     ; 23 uses
  %.val109.i.i = load ptr, ptr %i.gd, align 8, !noalias !658, !nonnull !12, !align !13, !noundef !12
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  store i32 -1, ptr %i.ge, align 8, !alias.scope !671, !noalias !657
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 0, ptr %i.gf, align 4, !alias.scope !671, !noalias !657
  store ptr %.val109.i.i, ptr %i.bw, align 8, !alias.scope !671, !noalias !657
  %i.gg = load ptr, ptr %i.gc, align 8, !alias.scope !672, !noalias !657, !noundef !12 ; 3 uses
  %.not.i74 = icmp eq ptr %i.gg, null
  br i1 %.not.i74, label %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit83, label %bb.ae

bb.ae:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit111.thread
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gi = load <2 x i64>, ptr %i.gh, align 8, !alias.scope !672, !noalias !657
  br label %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit83

_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit83: ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit111.thread, %bb.ae
  %.sink19.i81 = phi i64 [ 0, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit111.thread ], [ 1, %bb.ae ] ; 2 uses
  %i.gj = phi <2 x i64> [ <i64 undef, i64 0>, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit111.thread ], [ %i.gi, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !658
  store i64 %.sink19.i81, ptr %i.bv, align 8, !noalias !658
  %.sroa.5141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr null, ptr %.sroa.5141.0..sroa_idx, align 8, !noalias !658
  %.sroa.6142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %i.gg, ptr %.sroa.6142.0..sroa_idx, align 8, !noalias !658
  %.sroa.7143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.gk = extractelement <2 x i64> %i.gj, i64 0
  store i64 %i.gk, ptr %.sroa.7143.0..sroa_idx, align 8, !noalias !658
  %.sroa.8144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store i64 %.sink19.i81, ptr %.sroa.8144.0..sroa_idx, align 8, !noalias !658
  %.sroa.9145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store ptr null, ptr %.sroa.9145.0..sroa_idx, align 8, !noalias !658
  %.sroa.10146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  store ptr %i.gg, ptr %.sroa.10146.0..sroa_idx, align 8, !noalias !658
  %.sroa.11147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  store <2 x i64> %i.gj, ptr %.sroa.11147.0..sroa_idx, align 8, !noalias !658
  %i.gl = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bv), !noalias !657, !inline_history !504 ; 2 uses
  %i.gm = extractvalue { ptr, ptr } %i.gl, 0      ; 2 uses
  %.not74.i.i360 = icmp eq ptr %i.gm, null
  br i1 %.not74.i.i360, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit83
  %.sroa.6254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %.sroa.7156.0..sroa_idx157 = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %.sroa.8159.0..sroa_idx160 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.5248.sroa.4.0..sroa.5248.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.7.0..sroa_idx259 = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.7.0..sroa_idx260 = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 7 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.de, i64 40
end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB6_19TypeRelationChecker20with_recursion_guardNCNvB2_15check_type_pairsq_0EBa_:bb.a
  store i32 %i.dn, ptr %i.bx, align 4, !noalias !658
  %.sroa.7137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i64 %.sroa.7137.0.copyload139, ptr %.sroa.7137.0..sroa_idx, align 4, !noalias !658
  %i.gu = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !675
  %i.gv = getelementptr inbounds nuw i8, ptr %i.de, i64 48 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  %i.gx = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.gy = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.gz = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.hb = getelementptr inbounds nuw i8, ptr %i.e, i64 89
  %i.hc = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.5.0..sroa_idx.i.i73 = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.hd = getelementptr inbounds nuw i8, ptr %i.e, i64 90
  %i.he = load ptr, ptr %i.gu, align 8, !noalias !675, !nonnull !12, !align !16, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !675
  %i.hf = load ptr, ptr %i.gv, align 8, !noalias !675, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.hg = load <2 x ptr>, ptr %i.gw, align 8, !noalias !675
  store i32 0, ptr %i.gz, align 8, !alias.scope !676, !noalias !675
  store ptr null, ptr %i.e, align 8, !alias.scope !676, !noalias !675
  store ptr %i.hf, ptr %i.hc, align 8, !alias.scope !676, !noalias !675
  store i32 -2, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !676, !noalias !675
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.i73, align 4, !alias.scope !676, !noalias !675
  %i.hh = insertelement <4 x ptr> poison, ptr %i.he, i64 0
  %i.hi = insertelement <4 x ptr> %i.hh, ptr %i.hf, i64 1
  %i.hj = shufflevector <2 x ptr> %i.hg, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hk = shufflevector <4 x ptr> %i.hi, <4 x ptr> %i.hj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.hk, ptr %i.gy, align 8, !alias.scope !676, !noalias !675
  %i.hl = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.hm = load <2 x ptr>, ptr %i.gx, align 8, !noalias !675
  store i8 2, ptr %i.ha, align 8, !alias.scope !676, !noalias !675
  store i8 0, ptr %i.hb, align 1, !alias.scope !676, !noalias !675
  store i8 1, ptr %i.hd, align 2, !alias.scope !676, !noalias !675
  store <2 x ptr> %i.hm, ptr %i.hl, align 8, !alias.scope !676, !noalias !675
  invoke void @_RNvMsf_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtNtB7_8relation19TypeRelationChecker16check_class_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %i.e, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.by, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.bx)
          to label %bb.aj unwind label %bb.ag, !noalias !657, !inline_history !534

bb.ag:                                            ; preds = %bb.al, %bb.af
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.am, %bb.ag
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.hn, %bb.ag ], [ %i.ic, %bb.am ]
  call void @llvm.experimental.noalias.scope.decl(metadata !677), !noalias !657
  call void @llvm.experimental.noalias.scope.decl(metadata !678), !noalias !657
  %i.ho = load ptr, ptr %i.e, align 8, !alias.scope !679, !noalias !675, !noundef !12 ; 3 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8relation19TypeRelationCheckerEBH_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %.body.i
  %i.hq = load i64, ptr %i.ho, align 8, !noalias !680, !noundef !12
  %i.hr = add i64 %i.hq, -1                       ; 2 uses
  store i64 %i.hr, ptr %i.ho, align 8, !noalias !680
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %bb.ai, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8relation19TypeRelationCheckerEBH_.exit.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_error16ErrorContextNodeEE9drop_slowB1j_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8relation19TypeRelationCheckerEBH_.exit.i unwind label %bb.ap, !noalias !681, !inline_history !534

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8relation19TypeRelationCheckerEBH_.exit.i: ; preds = %bb.ai, %bb.ah, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.aj:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !682), !noalias !657
  %i.ht = load ptr, ptr %i.f, align 8, !alias.scope !682, !noalias !675, !nonnull !12, !align !13, !noundef !12 ; 7 uses
  %i.hu = load i64, ptr %i.ht, align 8, !noalias !683, !noundef !12
  %i.hv = icmp eq i64 %i.hu, 0
  br i1 %i.hv, label %bb.ak, label %bb.al, !prof !27

bb.ak:                                            ; preds = %bb.aj
  store i64 -1, ptr %i.ht, align 8, !noalias !683
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.hy = load i32, ptr %i.hx, align 8, !alias.scope !682, !noalias !675, !noundef !12
  %i.hz = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.ia = load i32, ptr %i.hz, align 4, !alias.scope !682, !noalias !675, !noundef !12
  %i.ib = invoke noundef zeroext i1 @_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_6NodeId19is_always_satisfied(i32 noundef %i.hy, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noundef nonnull align 4 %i.he, ptr noalias noundef nonnull align 8 dereferenceable(688) %i.hw, i32 noundef %i.ia)
          to label %_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet19is_always_satisfied.exit.i unwind label %bb.am, !noalias !684, !inline_history !534

bb.al:                                            ; preds = %bb.aj
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149) #64
          to label %.noexc1.i unwind label %bb.ag, !noalias !681, !inline_history !534

.noexc1.i:                                        ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.ic = landingpad { ptr, i32 }
          cleanup
  %i.id = load i64, ptr %i.ht, align 8, !noalias !684, !noundef !12
  %i.ie = add i64 %i.id, 1
  store i64 %i.ie, ptr %i.ht, align 8, !noalias !684
  br label %.body.i

_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet19is_always_satisfied.exit.i: ; preds = %bb.ak
  %i.if = load i64, ptr %i.ht, align 8, !noalias !684, !noundef !12
  %i.ig = add i64 %i.if, 1
  store i64 %i.ig, ptr %i.ht, align 8, !noalias !684
  call void @llvm.experimental.noalias.scope.decl(metadata !685), !noalias !657
  call void @llvm.experimental.noalias.scope.decl(metadata !686), !noalias !657
  %i.ih = load ptr, ptr %i.e, align 8, !alias.scope !687, !noalias !675, !noundef !12 ; 3 uses
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker16is_class_subtype.exit, label %bb.an

bb.an:                                            ; preds = %_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet19is_always_satisfied.exit.i
  %i.ij = load i64, ptr %i.ih, align 8, !noalias !688, !noundef !12
  %i.ik = add i64 %i.ij, -1                       ; 2 uses
  store i64 %i.ik, ptr %i.ih, align 8, !noalias !688
  %i.il = icmp eq i64 %i.ik, 0
  br i1 %i.il, label %bb.ao, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker16is_class_subtype.exit

bb.ao:                                            ; preds = %bb.an
  call void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_error16ErrorContextNodeEE9drop_slowB1j_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.e), !noalias !681, !inline_history !534
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker16is_class_subtype.exit

bb.ap:                                            ; preds = %bb.ai
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #63, !noalias !681, !inline_history !534
  unreachable

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker16is_class_subtype.exit: ; preds = %_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet19is_always_satisfied.exit.i, %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !675
  br i1 %i.ib, label %bb.as, label %bb.ar

bb.aq:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit.thread, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !658
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit111.thread

bb.ar:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker16is_class_subtype.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !658
  br label %bb.aq

bb.as:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker16is_class_subtype.exit
  %.val108.i.i = load ptr, ptr %i.gv, align 8, !noalias !658, !nonnull !12, !align !13, !noundef !12
  %i.in = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 -1, ptr %i.in, align 8, !alias.scope !689, !noalias !668
  %i.io = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.io, align 4, !alias.scope !689, !noalias !668
  store ptr %.val108.i.i, ptr %i.cq, align 8, !alias.scope !689, !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !658
  br label %_RINvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB6_13CycleDetectorNtNtB8_8relation12TypeRelationTNtB8_4TypeB1K_B1f_NtB1h_17TypeVarEvaluationENtNtB8_11constraints13ConstraintSetKj1_E9try_visitNCNvMs2_B1h_NtB1h_19TypeRelationChecker15check_type_pairsq_0EBa_.exit.thread

bb.at:                                            ; preds = %.lr.ph, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker29is_context_collection_enabled.exit.thread
  %.pn = phi { ptr, ptr } [ %i.gl, %.lr.ph ], [ %i.pj, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker29is_context_collection_enabled.exit.thread ]
  %i.ip = phi ptr [ %i.gm, %.lr.ph ], [ %i.pk, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker29is_context_collection_enabled.exit.thread ] ; 35 uses
  %i.iq = extractvalue { ptr, ptr } %.pn, 1       ; 12 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.iq) ], !noalias !654
  %i.ir = getelementptr i8, ptr %i.iq, i64 24     ; 2 uses
  %.val106.i.i = load i8, ptr %i.ir, align 4, !noalias !657, !noundef !12 ; 2 uses
  %i.is = trunc i8 %.val106.i.i to i1
  br i1 %i.is, label %bb.by, label %bb.bx

._crit_edge:                                      ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker29is_context_collection_enabled.exit.thread, %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !658
  %i.it = load i32, ptr %i.aq, align 4, !range !25, !noundef !12 ; 3 uses
  %i.iu = add nsw i32 %i.it, -37
  %i.iv = icmp samesign ugt i32 %i.it, 36
  %narrow.i.i = select i1 %i.iv, i32 %i.iu, i32 2
  switch i32 %narrow.i.i, label %.loopexit [
    i32 0, label %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit72
    i32 1, label %bb.av
    i32 2, label %bb.aw
  ]

bb.au:                                            ; preds = %bb.aw
  %.sroa.7196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.sroa.7196.0.copyload = load i32, ptr %.sroa.7196.0..sroa_idx, align 4
  %.sroa.8199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.8199.0.copyload = load i64, ptr %.sroa.8199.0..sroa_idx, align 4
  br label %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit72

bb.av:                                            ; preds = %._crit_edge
  %.val128.i.i = load i32, ptr %i.s, align 4, !range !25, !noundef !12
  %i.iw = icmp eq i32 %.val128.i.i, 38
  br i1 %i.iw, label %bb.ay, label %bb.ax

bb.aw:                                            ; preds = %._crit_edge
  %.sroa.6239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.6239.0.copyload = load i8, ptr %.sroa.6239.0..sroa_idx, align 4
  %i.ix = trunc nuw i8 %.sroa.6239.0.copyload to i1
  br i1 %i.ix, label %bb.au, label %bb.bd

bb.ax:                                            ; preds = %bb.ba, %bb.av
  %.val121.i.i = load ptr, ptr %i.gd, align 8, !noalias !658, !nonnull !12, !align !13, !noundef !12
  %i.iy = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 -2, ptr %i.iy, align 8, !alias.scope !690, !noalias !668
  %i.iz = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.iz, align 4, !alias.scope !690, !noalias !668
  store ptr %.val121.i.i, ptr %i.cq, align 8, !alias.scope !690, !noalias !668
  br label %bb.bc

bb.ay:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !658
  %i.ja = load ptr, ptr %i.gb, align 8, !noalias !657, !noundef !12 ; 3 uses
  %.not78.i.i = icmp eq ptr %i.ja, null
  br i1 %.not78.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jb = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.jc = load <2 x i64>, ptr %i.jb, align 8, !noalias !657
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.sroa.039.sroa.0.0.i.i = phi i64 [ 1, %bb.az ], [ 0, %bb.ay ] ; 2 uses
  %i.jd = phi <2 x i64> [ %i.jc, %bb.az ], [ <i64 undef, i64 0>, %bb.ay ] ; 2 uses
  store i64 %.sroa.039.sroa.0.0.i.i, ptr %i.ax, align 8, !noalias !658
  %.sroa.039.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr null, ptr %.sroa.039.sroa.5.0..sroa_idx.i.i, align 8, !noalias !658
  %.sroa.039.sroa.5.sroa.5.0..sroa.039.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr %i.ja, ptr %.sroa.039.sroa.5.sroa.5.0..sroa.039.sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !658
  %.sroa.039.sroa.5.sroa.6.0..sroa.039.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.je = extractelement <2 x i64> %i.jd, i64 0
  store i64 %i.je, ptr %.sroa.039.sroa.5.sroa.6.0..sroa.039.sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !658
  %.sroa.039.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store i64 %.sroa.039.sroa.0.0.i.i, ptr %.sroa.039.sroa.6.0..sroa_idx.i.i, align 8, !noalias !658
  %.sroa.039.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store ptr null, ptr %.sroa.039.sroa.7.0..sroa_idx.i.i, align 8, !noalias !658
  %.sroa.039.sroa.7.sroa.5.0..sroa.039.sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  store ptr %i.ja, ptr %.sroa.039.sroa.7.sroa.5.0..sroa.039.sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !658
  %.sroa.039.sroa.7.sroa.6.0..sroa.039.sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  store <2 x i64> %i.jd, ptr %.sroa.039.sroa.7.sroa.6.0..sroa.039.sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !658
  %i.jf = call fastcc noundef zeroext i1 @_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4KeysNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2S_3any5checkRBX_NCNvMs3_B1I_NtNtB1K_8relation19TypeRelationChecker20check_typeddict_pairs1_0E0INtNtNtB30_3ops12control_flow11ControlFlowuEEB1M_(ptr noalias noundef align 8 dereferenceable(72) %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gc), !noalias !657, !inline_history !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !658
  br i1 %i.jf, label %bb.ax, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %._crit_edge366, %._crit_edge363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !noalias !666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !658
  br label %_RINvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB6_13CycleDetectorNtNtB8_8relation12TypeRelationTNtB8_4TypeB1K_B1f_NtB1h_17TypeVarEvaluationENtNtB8_11constraints13ConstraintSetKj1_E9try_visitNCNvMs2_B1h_NtB1h_19TypeRelationChecker15check_type_pairsq_0EBa_.exit.thread

bb.bc:                                            ; preds = %bb.dt, %bb.bp, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !658
  br label %_RINvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB6_13CycleDetectorNtNtB8_8relation12TypeRelationTNtB8_4TypeB1K_B1f_NtB1h_17TypeVarEvaluationENtNtB8_11constraints13ConstraintSetKj1_E9try_visitNCNvMs2_B1h_NtB1h_19TypeRelationChecker15check_type_pairsq_0EBa_.exit.thread

bb.bd:                                            ; preds = %bb.aw
  %.sroa.7242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aw, ptr noundef nonnull align 4 dereferenceable(16) %i.aq, i64 16, i1 false)
  %.sroa.6239.0..sroa_idx240 = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i8 0, ptr %.sroa.6239.0..sroa_idx240, align 4, !noalias !658
  %.sroa.7242.0..sroa_idx243 = getelementptr inbounds nuw i8, ptr %i.aw, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7242.0..sroa_idx243, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7242.0..sroa_idx, i64 3, i1 false)
  %i.jg = load i32, ptr %i.s, align 4, !range !25, !noundef !12 ; 2 uses
  %i.jh = icmp samesign ult i32 %i.jg, 37
  br i1 %i.jh, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %.sroa.7183.0..sroa_idx184 = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.sroa.7183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7183.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7183.0..sroa_idx184, i64 16, i1 false)
  store i32 %i.jg, ptr %i.av, align 4, !noalias !658
  %.sroa.3245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.3245.0.copyload = load i8, ptr %.sroa.3245.0..sroa_idx, align 4, !noalias !658
  %i.ji = trunc nuw i8 %.sroa.3245.0.copyload to i1
  br i1 %i.ji, label %bb.bi, label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %.val120.i.i = load ptr, ptr %i.gd, align 8, !noalias !658, !nonnull !12, !align !13, !noundef !12
  %i.jj = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 -2, ptr %i.jj, align 8, !alias.scope !691, !noalias !668
  %i.jk = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.jk, align 4, !alias.scope !691, !noalias !668
  store ptr %.val120.i.i, ptr %i.cq, align 8, !alias.scope !691, !noalias !668
  br label %bb.bp

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !658
  %i.jl = load ptr, ptr %i.gd, align 8, !noalias !658, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ar, ptr noundef nonnull align 4 dereferenceable(16) %i.av, i64 16, i1 false), !noalias !658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, ptr noundef nonnull align 4 dereferenceable(16) %i.aq, i64 16, i1 false)
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.as, ptr noundef nonnull align 8 %i.de, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ar, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.w), !noalias !657, !inline_history !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !658
  %i.jm = load ptr, ptr %i.gd, align 8, !noalias !658, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !658
  store ptr %i.de, ptr %i.ap, align 8, !noalias !658
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.dg, ptr %i.jn, align 8, !noalias !658
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.di, ptr %i.jo, align 8, !noalias !658
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.aw, ptr %i.jp, align 8, !noalias !658
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store ptr %i.av, ptr %i.jq, align 8, !noalias !658
  call fastcc void @_RINvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13ConstraintSet3andNCNvMs3_NtB8_10typed_dictNtNtB8_8relation19TypeRelationChecker20check_typeddict_pairs2_0EBa_(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.at, ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.as, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noundef nonnull align 8 %i.jm, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.ap), !noalias !657, !inline_history !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !658
  call void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noundef nonnull align 8 %i.jl, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.at), !noalias !657, !inline_history !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !658
  %i.jr = load ptr, ptr %i.gb, align 8, !alias.scope !692, !noalias !657, !noundef !12 ; 3 uses
  %.not.i58 = icmp eq ptr %i.jr, null
  br i1 %.not.i58, label %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit67, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.js = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.jt = load <2 x i64>, ptr %i.js, align 8, !alias.scope !692, !noalias !657
  br label %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit67

_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit67: ; preds = %bb.bg, %bb.bh
  %.sink19.i65 = phi i64 [ 0, %bb.bg ], [ 1, %bb.bh ] ; 2 uses
  %i.ju = phi <2 x i64> [ <i64 undef, i64 0>, %bb.bg ], [ %i.jt, %bb.bh ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !658
  store i64 %.sink19.i65, ptr %i.ao, align 8, !noalias !658
  %.sroa.5186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr null, ptr %.sroa.5186.0..sroa_idx, align 8, !noalias !658
  %.sroa.6187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.jr, ptr %.sroa.6187.0..sroa_idx, align 8, !noalias !658
  %.sroa.7188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.jv = extractelement <2 x i64> %i.ju, i64 0
  store i64 %i.jv, ptr %.sroa.7188.0..sroa_idx, align 8, !noalias !658
  %.sroa.8189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i64 %.sink19.i65, ptr %.sroa.8189.0..sroa_idx, align 8, !noalias !658
  %.sroa.9190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr null, ptr %.sroa.9190.0..sroa_idx, align 8, !noalias !658
  %.sroa.10191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  store ptr %i.jr, ptr %.sroa.10191.0..sroa_idx, align 8, !noalias !658
  %.sroa.11192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  store <2 x i64> %i.ju, ptr %.sroa.11192.0..sroa_idx, align 8, !noalias !658
  %i.jw = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ao), !noalias !657, !inline_history !504 ; 2 uses
  %i.jx = extractvalue { ptr, ptr } %i.jw, 0      ; 2 uses
  %.not76.i.i361 = icmp eq ptr %i.jx, null
  br i1 %.not76.i.i361, label %._crit_edge363, label %.lr.ph362.preheader

.lr.ph362.preheader:                              ; preds = %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit67
  %i.jy = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  br label %.lr.ph362

bb.bi:                                            ; preds = %bb.be
  %.val119.i.i = load ptr, ptr %i.gd, align 8, !noalias !658, !nonnull !12, !align !13, !noundef !12
  %i.jz = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 -2, ptr %i.jz, align 8, !alias.scope !693, !noalias !668
  %i.ka = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.ka, align 4, !alias.scope !693, !noalias !668
  store ptr %.val119.i.i, ptr %i.cq, align 8, !alias.scope !693, !noalias !668
  br label %bb.bo

.lr.ph362:                                        ; preds = %.lr.ph362.preheader, %bb.bk
  %.pn373 = phi { ptr, ptr } [ %i.kg, %bb.bk ], [ %i.jw, %.lr.ph362.preheader ]
  %i.kb = phi ptr [ %i.kh, %bb.bk ], [ %i.jx, %.lr.ph362.preheader ]
  %i.kc = extractvalue { ptr, ptr } %.pn373, 1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kc) ], !noalias !654
  %i.kd = call noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldE3getB17_EB1W_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.kb), !noalias !657, !inline_history !504
  %.not77.i.i = icmp eq ptr %i.kd, null
  br i1 %.not77.i.i, label %bb.bj, label %bb.bk

._crit_edge363:                                   ; preds = %bb.bk, %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !658
  br label %bb.bb

bb.bj:                                            ; preds = %.lr.ph362
  %i.ke = getelementptr i8, ptr %i.kc, i64 24
  %.val105.i.i = load i8, ptr %i.ke, align 4, !noalias !657, !noundef !12
  %i.kf = and i8 %.val105.i.i, 3
  %or.cond.not = icmp eq i8 %i.kf, 0
  br i1 %or.cond.not, label %bb.bm, label %bb.bl

bb.bk:                                            ; preds = %_RINvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13ConstraintSet3andNCNvMs3_NtB8_10typed_dictNtNtB8_8relation19TypeRelationChecker20check_typeddict_pairs3_0EBa_.exit, %.lr.ph362
  %i.kg = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ao), !noalias !657, !inline_history !504 ; 2 uses
  %i.kh = extractvalue { ptr, ptr } %i.kg, 0      ; 2 uses
  %.not76.i.i = icmp eq ptr %i.kh, null
  br i1 %.not76.i.i, label %._crit_edge363, label %.lr.ph362

bb.bl:                                            ; preds = %bb.bj
  %.val118.i.i = load ptr, ptr %i.gd, align 8, !noalias !658, !nonnull !12, !align !13, !noundef !12
  %i.ki = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 -2, ptr %i.ki, align 8, !alias.scope !694, !noalias !668
  %i.kj = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.kj, align 4, !alias.scope !694, !noalias !668
  store ptr %.val118.i.i, ptr %i.cq, align 8, !alias.scope !694, !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !658
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !658
  %i.kk = load ptr, ptr %i.gd, align 8, !noalias !658, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %i.kc, i64 16, i1 false), !noalias !657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(16) %i.aq, i64 16, i1 false)
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.al, ptr noundef nonnull align 8 %i.de, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ak, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.v), !noalias !657, !inline_history !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !658
  %i.kl = load ptr, ptr %i.gd, align 8, !noalias !658, !nonnull !12, !align !13, !noundef !12
  call void @llvm.experimental.noalias.scope.decl(metadata !695)
  call void @llvm.experimental.noalias.scope.decl(metadata !696)
  %i.km = load i32, ptr %i.jy, align 8, !alias.scope !696, !noalias !657, !noundef !12
  %i.kn = icmp eq i32 %i.km, -2
  br i1 %i.kn, label %_RINvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13ConstraintSet3andNCNvMs3_NtB8_10typed_dictNtNtB8_8relation19TypeRelationChecker20check_typeddict_pairs3_0EBa_.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.aw, i64 16, i1 false), !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.kc, i64 16, i1 false), !noalias !698
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull align 8 %i.de, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.a), !noalias !699, !inline_history !578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !697
  call void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noundef nonnull align 8 %i.kl, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.d), !noalias !700, !inline_history !579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !697
  br label %_RINvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13ConstraintSet3andNCNvMs3_NtB8_10typed_dictNtNtB8_8relation19TypeRelationChecker20check_typeddict_pairs3_0EBa_.exit

_RINvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13ConstraintSet3andNCNvMs3_NtB8_10typed_dictNtNtB8_8relation19TypeRelationChecker20check_typeddict_pairs3_0EBa_.exit: ; preds = %bb.bm, %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !alias.scope !701, !noalias !657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !658
  call void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noundef nonnull align 8 %i.kk, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.am), !noalias !657, !inline_history !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !658
  br label %bb.bk

bb.bo:                                            ; preds = %bb.bl, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !658
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !658
  br label %bb.bc

_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit72: ; preds = %._crit_edge, %bb.au
  %.sroa.8199.0 = phi i64 [ %.sroa.8199.0.copyload, %bb.au ], [ undef, %._crit_edge ] ; 2 uses
  %.sroa.7196.0 = phi i32 [ %.sroa.7196.0.copyload, %bb.au ], [ 5, %._crit_edge ] ; 2 uses
  %.sroa.0194.0 = phi i32 [ %i.it, %bb.au ], [ 18, %._crit_edge ] ; 2 uses
  %i.ko = load i32, ptr %i.s, align 4, !range !25, !noundef !12 ; 3 uses
  %i.kp = add nsw i32 %i.ko, -37
  %i.kq = icmp samesign ugt i32 %i.ko, 36
  %narrow.i54 = select i1 %i.kq, i32 %i.kp, i32 2
  switch i32 %narrow.i54, label %bb.bq [
    i32 0, label %bb.bs
    i32 1, label %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit57
    i32 2, label %bb.br
  ]

bb.bq:                                            ; preds = %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit72
  unreachable

bb.br:                                            ; preds = %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit72
  %.sroa.8206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.sroa.8206.0.copyload = load i32, ptr %.sroa.8206.0..sroa_idx, align 4
  %.sroa.9209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.9209.0.copyload = load i64, ptr %.sroa.9209.0..sroa_idx, align 4
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit72
  %.sroa.9209.0.ph = phi i64 [ undef, %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit72 ], [ %.sroa.9209.0.copyload, %bb.br ]
  %.sroa.8206.0.ph = phi i32 [ 5, %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit72 ], [ %.sroa.8206.0.copyload, %bb.br ]
  %.sroa.0204.0.ph = phi i32 [ 18, %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit72 ], [ %i.ko, %bb.br ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !658
  store i32 %.sroa.0204.0.ph, ptr %i.z, align 4, !noalias !658
  %.sroa.8206.0..sroa_idx207 = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %.sroa.8206.0.ph, ptr %.sroa.8206.0..sroa_idx207, align 4, !noalias !658
  %.sroa.9209.0..sroa_idx210 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %.sroa.9209.0.ph, ptr %.sroa.9209.0..sroa_idx210, align 4, !noalias !658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !658
  %i.kr = load ptr, ptr %i.gd, align 8, !noalias !658, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !658
  store i32 %.sroa.0194.0, ptr %i.u, align 4, !noalias !658
  %.sroa.5226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %.sroa.7196.0, ptr %.sroa.5226.0..sroa_idx, align 4, !noalias !658
  %.sroa.6229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %.sroa.8199.0, ptr %.sroa.6229.0..sroa_idx, align 4, !noalias !658
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ai, ptr noundef nonnull align 8 %i.de, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.z, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.u), !noalias !657, !inline_history !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !658
  call void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noundef nonnull align 8 %i.kr, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.ai), !noalias !657, !inline_history !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !658
  br label %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit57

_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit57: ; preds = %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit72, %bb.bs
  %i.ks = load ptr, ptr %i.gb, align 8, !alias.scope !702, !noalias !657, !noundef !12 ; 3 uses
  %.not.i52 = icmp eq ptr %i.ks, null
  br i1 %.not.i52, label %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit, label %bb.bt

bb.bt:                                            ; preds = %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit57
  %i.kt = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.ku = load <2 x i64>, ptr %i.kt, align 8, !alias.scope !702, !noalias !657
  br label %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit

_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit: ; preds = %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit57, %bb.bt
  %.sink19.i = phi i64 [ 0, %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit57 ], [ 1, %bb.bt ] ; 2 uses
  %i.kv = phi <2 x i64> [ <i64 undef, i64 0>, %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_17TypedDictOpenness21effective_extra_items.exit57 ], [ %i.ku, %bb.bt ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !658
  store i64 %.sink19.i, ptr %i.ah, align 8, !noalias !658
  %.sroa.4215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr null, ptr %.sroa.4215.0..sroa_idx, align 8, !noalias !658
  %.sroa.5216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.ks, ptr %.sroa.5216.0..sroa_idx, align 8, !noalias !658
  %.sroa.6217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.kw = extractelement <2 x i64> %i.kv, i64 0
  store i64 %i.kw, ptr %.sroa.6217.0..sroa_idx, align 8, !noalias !658
  %.sroa.7218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i64 %.sink19.i, ptr %.sroa.7218.0..sroa_idx, align 8, !noalias !658
  %.sroa.8219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store ptr null, ptr %.sroa.8219.0..sroa_idx, align 8, !noalias !658
  %.sroa.9220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store ptr %i.ks, ptr %.sroa.9220.0..sroa_idx, align 8, !noalias !658
  %.sroa.10221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store <2 x i64> %i.kv, ptr %.sroa.10221.0..sroa_idx, align 8, !noalias !658
  %i.kx = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ah), !noalias !657, !inline_history !504 ; 2 uses
  %i.ky = extractvalue { ptr, ptr } %i.kx, 0      ; 2 uses
  %.not81.i.i364 = icmp eq ptr %i.ky, null
  br i1 %.not81.i.i364, label %._crit_edge366, label %.lr.ph365

.lr.ph365:                                        ; preds = %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit
  %.sroa.5226.0..sroa_idx227 = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %.sroa.6229.0..sroa_idx230 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph365, %bb.bw
  %.pn374 = phi { ptr, ptr } [ %i.kx, %.lr.ph365 ], [ %i.ld, %bb.bw ]
  %i.kz = phi ptr [ %i.ky, %.lr.ph365 ], [ %i.le, %bb.bw ]
  %i.la = call noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldE3getB17_EB1W_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.kz), !noalias !657, !inline_history !504
  %.not82.i.i = icmp eq ptr %i.la, null
  br i1 %.not82.i.i, label %bb.bv, label %bb.bw

._crit_edge366:                                   ; preds = %bb.bw, %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !658
  br label %bb.bb

bb.bv:                                            ; preds = %bb.bu
  %i.lb = extractvalue { ptr, ptr } %.pn374, 1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lb) ], !noalias !654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !658
  %i.lc = load ptr, ptr %i.gd, align 8, !noalias !658, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ae, ptr noundef nonnull align 4 dereferenceable(16) %i.lb, i64 16, i1 false), !noalias !657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !658
  store i32 %.sroa.0194.0, ptr %i.t, align 4, !noalias !658
  store i32 %.sroa.7196.0, ptr %.sroa.5226.0..sroa_idx227, align 4, !noalias !658
  store i64 %.sroa.8199.0, ptr %.sroa.6229.0..sroa_idx230, align 4, !noalias !658
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.af, ptr noundef nonnull align 8 %i.de, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ae, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.t), !noalias !657, !inline_history !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !658
  call void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noundef nonnull align 8 %i.lc, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.af), !noalias !657, !inline_history !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !658
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.ld = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ah), !noalias !657, !inline_history !504 ; 2 uses
  %i.le = extractvalue { ptr, ptr } %i.ld, 0      ; 2 uses
  %.not81.i.i = icmp eq ptr %i.le, null
  br i1 %.not81.i.i, label %._crit_edge366, label %bb.bu

bb.bx:                                            ; preds = %bb.at
  %i.lf = and i8 %.val106.i.i, 2
  %.not = icmp eq i8 %i.lf, 0
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ip, i64 15
  %i.lh = load i8, ptr %i.lg, align 1, !range !24, !noalias !657, !noundef !12 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.lj = load i64, ptr %i.li, align 8, !noalias !657, !noundef !12
  %i.lk = and i64 %i.lj, 72057594037927935
  %i.ll = icmp ult i8 %i.lh, -48
  %i.lm = zext i8 %i.lh to i64
  %i.ln = add nsw i64 %i.lm, -192
  %spec.store.select.i46 = call i64 @llvm.umin.i64(i64 %i.ln, i64 16)
  %.sroa.0.0.i47 = select i1 %i.ll, i64 %spec.store.select.i46, i64 %i.lk
  %i.lo = icmp ugt i8 %i.lh, -49
  %i.lp = load ptr, ptr %i.ip, align 8, !noalias !657
  %.sroa.01.0.i48 = select i1 %i.lo, ptr %i.lp, ptr %i.ip
  %i.lq = call noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldE3geteEB1W_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gb, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i48, i64 noundef %.sroa.0.0.i47), !noalias !657 ; 5 uses
  %.not83.i.i = icmp eq ptr %i.lq, null           ; 2 uses
  br i1 %.not, label %bb.bz, label %bb.ca

bb.by:                                            ; preds = %bb.at
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ip, i64 15
  %i.ls = load i8, ptr %i.lr, align 1, !range !24, !alias.scope !703, !noalias !657, !noundef !12 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.lu = load i64, ptr %i.lt, align 8, !alias.scope !703, !noalias !657, !noundef !12
  %i.lv = and i64 %i.lu, 72057594037927935
  %i.lw = icmp ult i8 %i.ls, -48
  %i.lx = zext i8 %i.ls to i64
  %i.ly = add nsw i64 %i.lx, -192
  %spec.store.select.i49 = call i64 @llvm.umin.i64(i64 %i.ly, i64 16)
  %.sroa.0.0.i50 = select i1 %i.lw, i64 %spec.store.select.i49, i64 %i.lv
  %i.lz = icmp ugt i8 %i.ls, -49
  %i.ma = load ptr, ptr %i.ip, align 8, !alias.scope !703, !noalias !657
  %.sroa.01.0.i51 = select i1 %i.lz, ptr %i.ma, ptr %i.ip
  %i.mb = call noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldE3geteEB1W_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gb, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i51, i64 noundef %.sroa.0.0.i50), !noalias !657, !inline_history !504 ; 5 uses
  %.not89.i.i = icmp eq ptr %i.mb, null
  br i1 %.not89.i.i, label %bb.cy, label %bb.cx

bb.bz:                                            ; preds = %bb.bx
  br i1 %.not83.i.i, label %bb.cc, label %bb.cb

bb.ca:                                            ; preds = %bb.bx
  br i1 %.not83.i.i, label %bb.cu, label %bb.ct

bb.cb:                                            ; preds = %bb.bz
  %i.mc = getelementptr i8, ptr %i.lq, i64 24
  %.val134.i.i = load i8, ptr %i.mc, align 4, !noalias !657, !noundef !12 ; 2 uses
  %i.md = and i8 %.val134.i.i, 2
  %.not323 = icmp eq i8 %i.md, 0
  br i1 %.not323, label %bb.cd, label %bb.ce

bb.cc:                                            ; preds = %bb.bz
  %.sroa.0247.0.copyload = load i32, ptr %i.s, align 4 ; 3 uses
  %i.me = icmp samesign ult i32 %.sroa.0247.0.copyload, 37
  br i1 %i.me, label %bb.co, label %bb.cp

bb.cd:                                            ; preds = %bb.cb
  %i.mf = trunc i8 %.val134.i.i to i1
  br i1 %i.mf, label %bb.ci, label %bb.cg

bb.ce:                                            ; preds = %bb.cb
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ip, i64 15
  %i.mh = load ptr, ptr %i.de, align 8, !noalias !658, !noundef !12
  %.not.i39 = icmp eq ptr %i.mh, null
  br i1 %.not.i39, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit42.thread, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mi = load i8, ptr %i.gs, align 8, !range !17, !noalias !658, !noundef !12
  %i.mj = trunc nuw i8 %i.mi to i1
  br i1 %i.mj, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit42, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit42.thread

bb.cg:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bf, ptr noundef nonnull align 4 dereferenceable(16) %i.lq, i64 16, i1 false), !noalias !657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.be, ptr noundef nonnull align 4 dereferenceable(16) %i.iq, i64 16, i1 false), !noalias !657
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bg, ptr noundef nonnull align 8 %i.de, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.bf, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.be), !noalias !657, !inline_history !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !658
  %i.mk = load ptr, ptr %i.gd, align 8, !noalias !658, !nonnull !12, !align !13, !noundef !12
  call void @llvm.experimental.noalias.scope.decl(metadata !704)
  call void @llvm.experimental.noalias.scope.decl(metadata !705)
  %i.ml = load i32, ptr %i.gp, align 8, !alias.scope !705, !noalias !657, !noundef !12
  %i.mm = icmp eq i32 %i.ml, -2
  br i1 %i.mm, label %_RINvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13ConstraintSet3andNCNvMs3_NtB8_10typed_dictNtNtB8_8relation19TypeRelationChecker20check_typeddict_pairs_0EBa_.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.iq, i64 16, i1 false), !noalias !707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.lq, i64 16, i1 false), !noalias !707
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.j, ptr noundef nonnull align 8 %i.de, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.g), !noalias !708, !inline_history !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !706
  call void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noundef nonnull align 8 %i.mk, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.j), !noalias !709, !inline_history !593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !706
  br label %_RINvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13ConstraintSet3andNCNvMs3_NtB8_10typed_dictNtNtB8_8relation19TypeRelationChecker20check_typeddict_pairs_0EBa_.exit

_RINvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13ConstraintSet3andNCNvMs3_NtB8_10typed_dictNtNtB8_8relation19TypeRelationChecker20check_typeddict_pairs_0EBa_.exit: ; preds = %bb.cg, %bb.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false), !alias.scope !710, !noalias !657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !658
  br label %bb.cw

bb.ci:                                            ; preds = %bb.cd
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ip, i64 15
  %i.mo = load ptr, ptr %i.de, align 8, !noalias !658, !noundef !12
  %.not.i35 = icmp eq ptr %i.mo, null
  br i1 %.not.i35, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit38.thread, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.mp = load i8, ptr %i.gs, align 8, !range !17, !noalias !658, !noundef !12
  %i.mq = trunc nuw i8 %i.mp to i1
  br i1 %i.mq, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit38, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit38.thread

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit38: ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !658
  call void @llvm.experimental.noalias.scope.decl(metadata !711)
  %i.mr = load i8, ptr %i.mn, align 1, !range !24, !alias.scope !711, !noalias !657, !noundef !12
  %i.ms = and i8 %i.mr, -2
  %switch.i31 = icmp eq i8 %i.ms, -48
  br i1 %switch.i31, label %bb.ck, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit34

bb.ck:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit38
  %.pn.i32 = load ptr, ptr %i.ip, align 8, !alias.scope !711, !noalias !657, !nonnull !12, !noundef !12
  %.sroa.0.0.i33 = getelementptr inbounds i8, ptr %.pn.i32, i64 -8
  %i.mt = atomicrmw add ptr %.sroa.0.0.i33, i64 1 monotonic, align 8, !noalias !712
  %i.mu = icmp slt i64 %i.mt, 0
  br i1 %i.mu, label %bb.cl, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit34, !prof !28

bb.cl:                                            ; preds = %bb.ck
  call void @_RNvNvMNtCsj8vhLppEnlJ_8char_str4reprNtB4_4Repr18make_shallow_clone18ref_count_overflow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ip) #64, !noalias !713
  unreachable

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit34: ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit38, %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ip, i64 16, i1 false), !noalias !657
  %i.mv = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.mv, ptr noundef nonnull align 4 dereferenceable(12) %i.x, i64 12, i1 false)
  %i.mw = getelementptr inbounds nuw i8, ptr %i.bh, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mw, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.cn, i64 12, i1 false), !noalias !674
  %i.mx = getelementptr inbounds nuw i8, ptr %i.bh, i64 60
  store i32 13, ptr %i.mx, align 4, !noalias !658
  call void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_errorNtB5_16ErrorContextTree4push(ptr noundef nonnull align 8 %i.de, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.bh), !noalias !654, !inline_history !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !658
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit38.thread

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit38.thread: ; preds = %bb.cj, %bb.ci, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit34
  %.val117.i.i = load ptr, ptr %i.gd, align 8, !noalias !658, !nonnull !12, !align !13, !noundef !12
  %i.my = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 -2, ptr %i.my, align 8, !alias.scope !714, !noalias !668
  %i.mz = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.mz, align 4, !alias.scope !714, !noalias !668
  store ptr %.val117.i.i, ptr %i.cq, align 8, !alias.scope !714, !noalias !668
  br label %bb.dt

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit42: ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !658
  call void @llvm.experimental.noalias.scope.decl(metadata !715)
  %i.na = load i8, ptr %i.mg, align 1, !range !24, !alias.scope !715, !noalias !657, !noundef !12
  %i.nb = and i8 %i.na, -2
  %switch.i27 = icmp eq i8 %i.nb, -48
  br i1 %switch.i27, label %bb.cm, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit30

bb.cm:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit42
  %.pn.i28 = load ptr, ptr %i.ip, align 8, !alias.scope !715, !noalias !657, !nonnull !12, !noundef !12
  %.sroa.0.0.i29 = getelementptr inbounds i8, ptr %.pn.i28, i64 -8
  %i.nc = atomicrmw add ptr %.sroa.0.0.i29, i64 1 monotonic, align 8, !noalias !716
  %i.nd = icmp slt i64 %i.nc, 0
  br i1 %i.nd, label %bb.cn, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit30, !prof !28

bb.cn:                                            ; preds = %bb.cm
  call void @_RNvNvMNtCsj8vhLppEnlJ_8char_str4reprNtB4_4Repr18make_shallow_clone18ref_count_overflow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ip) #64, !noalias !717
  unreachable

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit30: ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit42, %bb.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ip, i64 16, i1 false), !noalias !657
  %i.ne = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ne, ptr noundef nonnull align 4 dereferenceable(12) %i.x, i64 12, i1 false)
  %i.nf = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.nf, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.cn, i64 12, i1 false), !noalias !674
  %i.ng = getelementptr inbounds nuw i8, ptr %i.bi, i64 60
  store i32 14, ptr %i.ng, align 4, !noalias !658
  call void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_errorNtB5_16ErrorContextTree4push(ptr noundef nonnull align 8 %i.de, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.bi), !noalias !654, !inline_history !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !658
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit42.thread

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit42.thread: ; preds = %bb.cf, %bb.ce, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit30
  %.val116.i.i = load ptr, ptr %i.gd, align 8, !noalias !658, !nonnull !12, !align !13, !noundef !12
  %i.nh = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 -2, ptr %i.nh, align 8, !alias.scope !718, !noalias !668
  %i.ni = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.ni, align 4, !alias.scope !718, !noalias !668
  store ptr %.val116.i.i, ptr %i.cq, align 8, !alias.scope !718, !noalias !668
  br label %bb.dt

bb.co:                                            ; preds = %bb.cc
  %.sroa.5248.sroa.4.0.copyload = load i8, ptr %.sroa.5248.sroa.4.0..sroa.5248.0..sroa_idx.sroa_idx, align 4
  %i.nj = trunc nuw i8 %.sroa.5248.sroa.4.0.copyload to i1
  br i1 %i.nj, label %bb.cs, label %bb.cq

bb.cp:                                            ; preds = %bb.cc
  %.val115.i.i = load ptr, ptr %i.gd, align 8, !noalias !658, !nonnull !12, !align !13, !noundef !12
  %i.nk = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 -2, ptr %i.nk, align 8, !alias.scope !719, !noalias !668
  %i.nl = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.nl, align 4, !alias.scope !719, !noalias !668
  store ptr %.val115.i.i, ptr %i.cq, align 8, !alias.scope !719, !noalias !668
  br label %bb.dt

bb.cq:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !658
  store i32 %.sroa.0247.0.copyload, ptr %i.bc, align 4, !noalias !658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.0..sroa_idx259, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5253.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bb, ptr noundef nonnull align 4 dereferenceable(16) %i.iq, i64 16, i1 false), !noalias !657
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bd, ptr noundef nonnull align 8 %i.de, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.bc, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.bb), !noalias !657, !inline_history !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !658
  %i.nm = load ptr, ptr %i.gd, align 8, !noalias !658, !nonnull !12, !align !13, !noundef !12
  call void @llvm.experimental.noalias.scope.decl(metadata !720)
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  %i.nn = load i32, ptr %i.gq, align 8, !alias.scope !721, !noalias !657, !noundef !12
  %i.no = icmp eq i32 %i.nn, -2
  br i1 %i.no, label %_RINvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13ConstraintSet3andNCNvMs3_NtB8_10typed_dictNtNtB8_8relation19TypeRelationChecker20check_typeddict_pairs0_0EBa_.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !723
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.iq, i64 16, i1 false), !noalias !723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !723
  store i32 %.sroa.0247.0.copyload, ptr %i.k, align 4, !noalias !723
end_hunk_1
begin_hunk_2_@_RINvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB6_19TypeRelationChecker20with_recursion_guardNCNvB2_15check_type_pairsq_0EBa_:bb.a
  %i.od = load i8, ptr %i.gs, align 8, !range !17, !noalias !658, !noundef !12
  %i.oe = trunc nuw i8 %i.od to i1
  br i1 %i.oe, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit22, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit22.thread

bb.dc:                                            ; preds = %bb.cx
  %.val133.i.i = load i8, ptr %i.ir, align 4, !noalias !657, !noundef !12
  %i.of = and i8 %.val133.i.i, 2
  %.not324 = icmp eq i8 %i.of, 0
  br i1 %.not324, label %bb.df, label %bb.dg

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit22: ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !658
  call void @llvm.experimental.noalias.scope.decl(metadata !729)
  %i.og = load i8, ptr %i.ob, align 1, !range !24, !alias.scope !729, !noalias !657, !noundef !12
  %i.oh = and i8 %i.og, -2
  %switch.i15 = icmp eq i8 %i.oh, -48
  br i1 %switch.i15, label %bb.dd, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit18

bb.dd:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit22
  %.pn.i16 = load ptr, ptr %i.ip, align 8, !alias.scope !729, !noalias !657, !nonnull !12, !noundef !12
  %.sroa.0.0.i17 = getelementptr inbounds i8, ptr %.pn.i16, i64 -8
  %i.oi = atomicrmw add ptr %.sroa.0.0.i17, i64 1 monotonic, align 8, !noalias !730
  %i.oj = icmp slt i64 %i.oi, 0
  br i1 %i.oj, label %bb.de, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit18, !prof !28

bb.de:                                            ; preds = %bb.dd
  call void @_RNvNvMNtCsj8vhLppEnlJ_8char_str4reprNtB4_4Repr18make_shallow_clone18ref_count_overflow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ip) #64, !noalias !731
  unreachable

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit18: ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit22, %bb.dd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ip, i64 16, i1 false), !noalias !657
  %i.ok = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ok, ptr noundef nonnull align 4 dereferenceable(12) %i.x, i64 12, i1 false)
  %i.ol = getelementptr inbounds nuw i8, ptr %i.bs, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ol, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.cn, i64 12, i1 false), !noalias !674
  %i.om = getelementptr inbounds nuw i8, ptr %i.bs, i64 60
  store i32 12, ptr %i.om, align 4, !noalias !658
  call void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_errorNtB5_16ErrorContextTree4push(ptr noundef nonnull align 8 %i.de, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.bs), !noalias !654, !inline_history !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !658
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit22.thread

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit22.thread: ; preds = %bb.db, %bb.da, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit18
  %.val113.i.i = load ptr, ptr %i.gd, align 8, !noalias !658, !nonnull !12, !align !13, !noundef !12
  %i.on = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 -2, ptr %i.on, align 8, !alias.scope !732, !noalias !668
  %i.oo = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.oo, align 4, !alias.scope !732, !noalias !668
  store ptr %.val113.i.i, ptr %i.cq, align 8, !alias.scope !732, !noalias !668
  br label %bb.dt

bb.df:                                            ; preds = %bb.dc
  %i.op = and i8 %.val103.i.i, 2
  %.not325 = icmp eq i8 %i.op, 0
  br i1 %.not325, label %bb.dh, label %bb.dj

bb.dg:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.br, ptr noundef nonnull align 4 dereferenceable(16) %i.mb, i64 16, i1 false), !noalias !657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bq, ptr noundef nonnull align 4 dereferenceable(16) %i.iq, i64 16, i1 false), !noalias !657
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bu, ptr noundef nonnull align 8 %i.de, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.br, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.bq), !noalias !657, !inline_history !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !658
  br label %bb.cw

bb.dh:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bn, ptr noundef nonnull align 4 dereferenceable(16) %i.mb, i64 16, i1 false), !noalias !657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bm, ptr noundef nonnull align 4 dereferenceable(16) %i.iq, i64 16, i1 false), !noalias !657
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bo, ptr noundef nonnull align 8 %i.de, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.bn, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.bm), !noalias !657, !inline_history !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !658
  %i.oq = load ptr, ptr %i.gd, align 8, !noalias !658, !nonnull !12, !align !13, !noundef !12
  call void @llvm.experimental.noalias.scope.decl(metadata !733)
  call void @llvm.experimental.noalias.scope.decl(metadata !734)
  %i.or = load i32, ptr %i.gr, align 8, !alias.scope !734, !noalias !657, !noundef !12
  %i.os = icmp eq i32 %i.or, -2
  br i1 %i.os, label %_RINvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13ConstraintSet3andNCNvMs3_NtB8_10typed_dictNtNtB8_8relation19TypeRelationChecker20check_typeddict_pair0EBa_.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.p, ptr noundef nonnull align 4 dereferenceable(16) %i.iq, i64 16, i1 false), !noalias !736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %i.mb, i64 16, i1 false), !noalias !736
  call void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.r, ptr noundef nonnull align 8 %i.de, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.p, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.o), !noalias !737, !inline_history !633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !735
  call void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noundef nonnull align 8 %i.oq, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.r), !noalias !738, !inline_history !634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !735
  br label %_RINvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13ConstraintSet3andNCNvMs3_NtB8_10typed_dictNtNtB8_8relation19TypeRelationChecker20check_typeddict_pair0EBa_.exit

_RINvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_13ConstraintSet3andNCNvMs3_NtB8_10typed_dictNtNtB8_8relation19TypeRelationChecker20check_typeddict_pair0EBa_.exit: ; preds = %bb.dh, %bb.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false), !alias.scope !739, !noalias !657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !658
  br label %bb.cw

bb.dj:                                            ; preds = %bb.df
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ip, i64 15
  %i.ou = load ptr, ptr %i.de, align 8, !noalias !658, !noundef !12
  %.not.i11 = icmp eq ptr %i.ou, null
  br i1 %.not.i11, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit14.thread, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ov = load i8, ptr %i.gs, align 8, !range !17, !noalias !658, !noundef !12
  %i.ow = trunc nuw i8 %i.ov to i1
  br i1 %i.ow, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit14, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit14.thread

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit14: ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !658
  call void @llvm.experimental.noalias.scope.decl(metadata !740)
  %i.ox = load i8, ptr %i.ot, align 1, !range !24, !alias.scope !740, !noalias !657, !noundef !12
  %i.oy = and i8 %i.ox, -2
  %switch.i7 = icmp eq i8 %i.oy, -48
  br i1 %switch.i7, label %bb.dl, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit10

bb.dl:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit14
  %.pn.i8 = load ptr, ptr %i.ip, align 8, !alias.scope !740, !noalias !657, !nonnull !12, !noundef !12
  %.sroa.0.0.i9 = getelementptr inbounds i8, ptr %.pn.i8, i64 -8
  %i.oz = atomicrmw add ptr %.sroa.0.0.i9, i64 1 monotonic, align 8, !noalias !741
  %i.pa = icmp slt i64 %i.oz, 0
  br i1 %i.pa, label %bb.dm, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit10, !prof !28

bb.dm:                                            ; preds = %bb.dl
  call void @_RNvNvMNtCsj8vhLppEnlJ_8char_str4reprNtB4_4Repr18make_shallow_clone18ref_count_overflow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ip) #64, !noalias !742
  unreachable

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit10: ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit14, %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ip, i64 16, i1 false), !noalias !657
  %i.pb = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.pb, ptr noundef nonnull align 4 dereferenceable(12) %i.x, i64 12, i1 false)
  %i.pc = getelementptr inbounds nuw i8, ptr %i.bp, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pc, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.cn, i64 12, i1 false), !noalias !674
  %i.pd = getelementptr inbounds nuw i8, ptr %i.bp, i64 60
  store i32 14, ptr %i.pd, align 4, !noalias !658
  call void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_errorNtB5_16ErrorContextTree4push(ptr noundef nonnull align 8 %i.de, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.bp), !noalias !654, !inline_history !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !658
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit14.thread

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit14.thread: ; preds = %bb.dk, %bb.dj, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit10
  %.val112.i.i = load ptr, ptr %i.gd, align 8, !noalias !658, !nonnull !12, !align !13, !noundef !12
  %i.pe = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 -2, ptr %i.pe, align 8, !alias.scope !743, !noalias !668
  %i.pf = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.pf, align 4, !alias.scope !743, !noalias !668
  store ptr %.val112.i.i, ptr %i.cq, align 8, !alias.scope !743, !noalias !668
  br label %bb.dt

bb.dn:                                            ; preds = %bb.cw
  %i.pg = load ptr, ptr %i.de, align 8, !noalias !658, !noundef !12
  %.not.i.i6 = icmp eq ptr %i.pg, null
  br i1 %.not.i.i6, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker29is_context_collection_enabled.exit.thread, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker29is_context_collection_enabled.exit

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker29is_context_collection_enabled.exit: ; preds = %bb.dn
  %i.ph = load i8, ptr %i.gs, align 8, !range !17, !noalias !658, !noundef !12
  %i.pi = trunc nuw i8 %i.ph to i1
  br i1 %i.pi, label %bb.do, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker29is_context_collection_enabled.exit.thread

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker29is_context_collection_enabled.exit.thread: ; preds = %bb.do, %bb.dn, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker29is_context_collection_enabled.exit
  %i.pj = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bv), !noalias !657, !inline_history !504 ; 2 uses
  %i.pk = extractvalue { ptr, ptr } %i.pj, 0      ; 2 uses
  %.not74.i.i = icmp eq ptr %i.pk, null
  br i1 %.not74.i.i, label %._crit_edge, label %bb.at

bb.do:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker29is_context_collection_enabled.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !noalias !658
  %i.pl = load ptr, ptr %i.gt, align 8, !noalias !658, !nonnull !12, !align !16, !noundef !12
  %i.pm = call noundef zeroext i1 @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet18is_never_satisfied(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.az, ptr noundef nonnull %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.di, ptr noundef nonnull align 4 %i.pl), !noalias !657, !inline_history !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !658
  br i1 %i.pm, label %.loopexit327, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker29is_context_collection_enabled.exit.thread

.loopexit327:                                     ; preds = %bb.cw, %bb.do
  %i.pn = load ptr, ptr %i.de, align 8, !noalias !658, !noundef !12
  %.not.i = icmp eq ptr %i.pn, null
  br i1 %.not.i, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit.thread, label %bb.dp

bb.dp:                                            ; preds = %.loopexit327
  %i.po = load i8, ptr %i.gs, align 8, !range !17, !noalias !658, !noundef !12
  %i.pp = trunc nuw i8 %i.po to i1
  br i1 %i.pp, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit.thread

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit: ; preds = %bb.dp
  %i.pq = getelementptr inbounds nuw i8, ptr %i.ip, i64 15 ; 2 uses
  %i.pr = load i8, ptr %i.pq, align 1, !range !24, !alias.scope !744, !noalias !657, !noundef !12 ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.pt = load i64, ptr %i.ps, align 8, !alias.scope !744, !noalias !657, !noundef !12
  %i.pu = and i64 %i.pt, 72057594037927935
  %i.pv = icmp ult i8 %i.pr, -48
  %i.pw = zext i8 %i.pr to i64
  %i.px = add nsw i64 %i.pw, -192
  %spec.store.select.i = call i64 @llvm.umin.i64(i64 %i.px, i64 16)
  %.sroa.0.0.i5 = select i1 %i.pv, i64 %spec.store.select.i, i64 %i.pu
  %i.py = icmp ugt i8 %i.pr, -49
  %i.pz = load ptr, ptr %i.ip, align 8, !alias.scope !744, !noalias !657
  %.sroa.01.0.i = select i1 %i.py, ptr %i.pz, ptr %i.ip
  %i.qa = call noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldE3geteEB1W_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gb, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i, i64 noundef %.sroa.0.0.i5), !noalias !657, !inline_history !504 ; 2 uses
  %.not94.i.i = icmp eq ptr %i.qa, null
  br i1 %.not94.i.i, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit.thread, label %bb.dq

bb.dq:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !658
  call void @llvm.experimental.noalias.scope.decl(metadata !745)
  %i.qb = load i8, ptr %i.pq, align 1, !range !24, !alias.scope !745, !noalias !657, !noundef !12
  %i.qc = and i8 %i.qb, -2
  %switch.i1 = icmp eq i8 %i.qc, -48
  br i1 %switch.i1, label %bb.dr, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit4

bb.dr:                                            ; preds = %bb.dq
  %.pn.i2 = load ptr, ptr %i.ip, align 8, !alias.scope !745, !noalias !657, !nonnull !12, !noundef !12
  %.sroa.0.0.i3 = getelementptr inbounds i8, ptr %.pn.i2, i64 -8
  %i.qd = atomicrmw add ptr %.sroa.0.0.i3, i64 1 monotonic, align 8, !noalias !746
  %i.qe = icmp slt i64 %i.qd, 0
  br i1 %i.qe, label %bb.ds, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit4, !prof !28

bb.ds:                                            ; preds = %bb.dr
  call void @_RNvNvMNtCsj8vhLppEnlJ_8char_str4reprNtB4_4Repr18make_shallow_clone18ref_count_overflow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ip) #64, !noalias !747
  unreachable

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit4: ; preds = %bb.dq, %bb.dr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ip, i64 16, i1 false), !noalias !657
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qf, ptr noundef nonnull align 4 dereferenceable(16) %i.qa, i64 16, i1 false), !noalias !657
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qg, ptr noundef nonnull align 4 dereferenceable(16) %i.iq, i64 16, i1 false), !noalias !657
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.qh, ptr noundef nonnull align 4 dereferenceable(12) %i.x, i64 12, i1 false)
  %i.qi = getelementptr inbounds nuw i8, ptr %i.ay, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.qi, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.cn, i64 12, i1 false), !noalias !674
  call void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_errorNtB5_16ErrorContextTree4push(ptr noundef nonnull align 8 %i.de, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.ay), !noalias !654, !inline_history !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !658
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit.thread

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit.thread: ; preds = %bb.dp, %.loopexit327, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit4, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !noalias !666
  br label %bb.dt

bb.dt:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit26.thread, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit.thread, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit14.thread, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit22.thread, %bb.cs, %bb.cp, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit42.thread, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit38.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !658
  br label %bb.bc

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit26: ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !658
  call void @llvm.experimental.noalias.scope.decl(metadata !748)
  %i.qj = load i8, ptr %i.nx, align 1, !range !24, !alias.scope !748, !noalias !657, !noundef !12
  %i.qk = and i8 %i.qj, -2
  %switch.i = icmp eq i8 %i.qk, -48
  br i1 %switch.i, label %bb.du, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit

bb.du:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit26
  %.pn.i = load ptr, ptr %i.ip, align 8, !alias.scope !748, !noalias !657, !nonnull !12, !noundef !12
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.ql = atomicrmw add ptr %.sroa.0.0.i, i64 1 monotonic, align 8, !noalias !749
  %i.qm = icmp slt i64 %i.ql, 0
  br i1 %i.qm, label %bb.dv, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit, !prof !28

bb.dv:                                            ; preds = %bb.du
  call void @_RNvNvMNtCsj8vhLppEnlJ_8char_str4reprNtB4_4Repr18make_shallow_clone18ref_count_overflow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ip) #64, !noalias !750
  unreachable

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit: ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit26, %bb.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ip, i64 16, i1 false), !noalias !657
  %i.qn = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.qn, ptr noundef nonnull align 4 dereferenceable(12) %i.x, i64 12, i1 false)
  %i.qo = getelementptr inbounds nuw i8, ptr %i.bt, i64 60
  store i32 11, ptr %i.qo, align 4, !noalias !658
  call void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_errorNtB5_16ErrorContextTree4push(ptr noundef nonnull align 8 %i.de, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.bt), !noalias !654, !inline_history !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !658
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit26.thread

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit26.thread: ; preds = %bb.cz, %bb.cy, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit
  %.val111.i.i = load ptr, ptr %i.gd, align 8, !noalias !658, !nonnull !12, !align !13, !noundef !12
  %i.qp = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 -2, ptr %i.qp, align 8, !alias.scope !751, !noalias !668
  %i.qq = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.qq, align 4, !alias.scope !751, !noalias !668
  store ptr %.val111.i.i, ptr %i.cq, align 8, !alias.scope !751, !noalias !668
  br label %bb.dt

_RINvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB6_13CycleDetectorNtNtB8_8relation12TypeRelationTNtB8_4TypeB1K_B1f_NtB1h_17TypeVarEvaluationENtNtB8_11constraints13ConstraintSetKj1_E9try_visitNCNvMs2_B1h_NtB1h_19TypeRelationChecker15check_type_pairsq_0EBa_.exit.thread: ; preds = %bb.bc, %bb.bb, %bb.as, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !655
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !652
  call void @_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB5_13CycleDetectorNtNtB7_8relation12TypeRelationTNtB7_4TypeB1J_B1e_NtB1g_17TypeVarEvaluationENtNtB7_11constraints13ConstraintSetKj1_E12finish_visitB9_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.cp, ptr noundef nonnull align 8 %i.cu, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(36) %i.co, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.cq)
  %.sroa.6.8..sroa_idx112 = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.8..sroa_idx112, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false), !noalias !752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !652
  br label %bb.dx

_RINvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB6_13CycleDetectorNtNtB8_8relation12TypeRelationTNtB8_4TypeB1K_B1f_NtB1h_17TypeVarEvaluationENtNtB8_11constraints13ConstraintSetKj1_E9try_visitNCNvMs2_B1h_NtB1h_19TypeRelationChecker15check_type_pairsq_0EBa_.exit: ; preds = %bb.a
  %i.qr = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %.sroa.6.8..sroa_idx113 = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.8..sroa_idx113, ptr noundef nonnull align 8 dereferenceable(16) %i.qr, i64 16, i1 false)
  br label %bb.dx

bb.dw:                                            ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  %i.qs = getelementptr i8, ptr %1, i64 48
  %.val = load ptr, ptr %i.qs, align 8, !nonnull !12, !align !13, !noundef !12
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2, ptr %i.qt, align 8, !alias.scope !753
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.qu, align 4, !alias.scope !753
  store ptr %.val, ptr %0, align 8, !alias.scope !753
  br label %bb.dy

bb.dx:                                            ; preds = %_RINvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB6_13CycleDetectorNtNtB8_8relation12TypeRelationTNtB8_4TypeB1K_B1f_NtB1h_17TypeVarEvaluationENtNtB8_11constraints13ConstraintSetKj1_E9try_visitNCNvMs2_B1h_NtB1h_19TypeRelationChecker15check_type_pairsq_0EBa_.exit, %_RINvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB6_13CycleDetectorNtNtB8_8relation12TypeRelationTNtB8_4TypeB1K_B1f_NtB1h_17TypeVarEvaluationENtNtB8_11constraints13ConstraintSetKj1_E9try_visitNCNvMs2_B1h_NtB1h_19TypeRelationChecker15check_type_pairsq_0EBa_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.8..sroa_idx, i64 16, i1 false)
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB6_19TypeRelationChecker20with_recursion_guardNCNvB2_15check_type_pairsr_0EBa_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %4, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %5, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 5 uses
  %i.b = alloca [12 x i8], align 4                ; 3 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  %i.e = alloca [16 x i8], align 4                ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 4                ; 4 uses
  %i.i = alloca [16 x i8], align 4                ; 4 uses
  %i.j = alloca [32 x i8], align 4                ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 11 uses
  %i.l = alloca [20 x i8], align 4                ; 4 uses
  %i.m = alloca [72 x i8], align 8                ; 5 uses
  %i.n = alloca [12 x i8], align 4                ; 4 uses
  %i.o = alloca [12 x i8], align 4                ; 4 uses
  %.sroa.5.i = alloca [12 x i8], align 4          ; 6 uses
  %i.p = alloca [12 x i8], align 4                ; 4 uses
  %i.q = alloca [16 x i8], align 4                ; 4 uses
  %i.r = alloca [32 x i8], align 4                ; 5 uses
  %i.s = alloca [32 x i8], align 4                ; 5 uses
  %i.t = alloca [16 x i8], align 4                ; 4 uses
  %i.u = alloca [16 x i8], align 4                ; 5 uses
  %i.v = alloca [12 x i8], align 4                ; 4 uses
  %i.w = alloca [12 x i8], align 4                ; 4 uses
  %i.x = alloca [36 x i8], align 4                ; 2 uses
  %i.y = alloca [16 x i8], align 8                ; 4 uses
  %i.z = alloca [40 x i8], align 8                ; 4 uses
  %i.aa = alloca [36 x i8], align 4               ; 8 uses
  %.sroa.6 = alloca [36 x i8], align 4            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ae = load i8, ptr %i.ad, align 8, !range !18, !noundef !12
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.ag = load i8, ptr %i.af, align 1, !range !17, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aa, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ah, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i8 %i.ae, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 33
  store i8 %i.ag, ptr %i.aj, align 1
  call void @_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB5_13CycleDetectorNtNtB7_8relation12TypeRelationTNtB7_4TypeB1J_B1e_NtB1g_17TypeVarEvaluationENtNtB7_11constraints13ConstraintSetKj1_E11begin_visitB9_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.z, ptr noundef nonnull align 8 %i.ac, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(36) %i.aa), !inline_history !754
  %i.ak = load i32, ptr %i.z, align 8, !range !19, !noundef !12
  switch i32 %i.ak, label %default.unreachable [
    i32 0, label %_RINvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclicINtB6_13CycleDetectorNtNtB8_8relation12TypeRelationTNtB8_4TypeB1K_B1f_NtB1h_17TypeVarEvaluationENtNtB8_11constraints13ConstraintSetKj1_E9try_visitNCNvMs2_B1h_NtB1h_19TypeRelationChecker15check_type_pairsr_0EBa_.exit
    i32 1, label %bb.w
    i32 2, label %bb.b
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.x, ptr noundef nonnull align 4 dereferenceable(36) %i.al, i64 36, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !769)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.am = load ptr, ptr %6, align 8, !alias.scope !769, !noalias !770, !nonnull !12, !align !13, !noundef !12 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %i.ao = load i8, ptr %i.an, align 8, !range !18, !noalias !771, !noundef !12 ; 2 uses
  %i.ap = icmp ne i8 %i.ao, 4
  call void @llvm.assume(i1 %i.ap), !noalias !770
  %i.aq = icmp eq i8 %i.ao, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  br i1 %i.aq, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !771
end_hunk_2
begin_hunk_3_@_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings16check_types_impl:bb.a
  br label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem11check_types.exit.us.us

bb.d:                                             ; preds = %.lr.ph.us
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29.us.us, i64 8
  tail call fastcc void @_RNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15CallableBinding11check_types(ptr noalias noundef align 8 dereferenceable(328) %i.r, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noundef nonnull align 8 %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %6), !noalias !13904, !inline_history !13843
  br label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem11check_types.exit.us.us

_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem11check_types.exit.us.us: ; preds = %bb.d, %bb.c, %bb.b
  %i.s = icmp eq ptr %i.n, %i.l
  br i1 %i.s, label %_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement11check_types.exit.loopexit.us, label %.lr.ph.us

_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement11check_types.exit.loopexit.us: ; preds = %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem11check_types.exit.us.us, %.lr.ph31.split.us
  %i.t = icmp eq ptr %i.h, %i.f
  br i1 %i.t, label %_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement11check_types.exit._crit_edge, label %.lr.ph31.split.us

_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement11check_types.exit.loopexit: ; preds = %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem11check_types.exit, %.lr.ph31.split
  %i.u = icmp eq ptr %i.v, %i.f
  br i1 %i.u, label %_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement11check_types.exit._crit_edge, label %.lr.ph31.split

.lr.ph31.split:                                   ; preds = %.lr.ph31, %_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement11check_types.exit.loopexit
  %.sroa.01.030 = phi ptr [ %i.v, %_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement11check_types.exit.loopexit ], [ %i.e, %.lr.ph31 ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.030, i64 384 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.01.030, i64 16
  %i.x = tail call { ptr, ptr } @_RNvXsO_Csheqz6YZvxwl_8smallvecQINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemj1_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBR_(ptr noalias noundef nonnull align 8 dereferenceable(368) %i.w), !noalias !13902, !inline_history !13837 ; 2 uses
  %i.y = extractvalue { ptr, ptr } %i.x, 0        ; 3 uses
  %i.z = extractvalue { ptr, ptr } %i.x, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement11check_types.exit.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph31.split, %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem11check_types.exit
  %.sroa.0.0.i29 = phi ptr [ %i.ab, %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem11check_types.exit ], [ %i.y, %.lr.ph31.split ] ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29, i64 360 ; 2 uses
  %i.ac = load i64, ptr %.sroa.0.0.i29, align 8, !range !15, !alias.scope !13903, !noalias !13904, !noundef !12
  %.not.i12 = icmp eq i64 %i.ac, 2
  br i1 %.not.i12, label %bb.k, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  tail call fastcc void @_RNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15CallableBinding11check_types(ptr noalias noundef nonnull align 8 dereferenceable(360) %.sroa.0.0.i29, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noundef nonnull align 8 %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, ptr noalias noundef align 4 captures(address) dereferenceable(16) %6), !noalias !13904
  %i.ad = tail call fastcc noundef zeroext i1 @_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind11constructorNtB2_18ConstructorBinding23should_check_downstream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %.sroa.0.0.i29, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3), !noalias !13906, !inline_history !13842
  br i1 %i.ad, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem11check_types.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29, i64 328 ; 3 uses
  %.val.i.i13 = load ptr, ptr %i.ae, align 8, !alias.scope !13905, !noalias !13904, !align !13, !noundef !12 ; 8 uses
  %i.af = icmp eq ptr %.val.i.i13, null
  br i1 %i.af, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEEEB1D_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i13, i64 16
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.ag)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EEB1j_.exit.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i13, i64 408
  %.val2.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !13907, !align !16, !noundef !12 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i13, i64 416
  %.val3.i.i15 = load i64, ptr %i.aj, align 8, !alias.scope !13907 ; 2 uses
  %i.ak = icmp eq ptr %.val2.i.i, null
  %i.al = icmp eq i64 %.val3.i.i15, 0
  %or.cond.i.i.i = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %or.cond.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = mul nuw nsw i64 %.val3.i.i15, 12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef range(i64 1, 0) %i.am, i64 noundef 4) #65
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EEB1j_.exit.i.i: ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i.i13, i64 408
  %.val.i.i16 = load ptr, ptr %i.an, align 8, !alias.scope !13907, !align !16, !noundef !12 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i13, i64 416
  %.val1.i.i = load i64, ptr %i.ao, align 8, !alias.scope !13907 ; 2 uses
  %i.ap = icmp eq ptr %.val.i.i16, null
  %i.aq = icmp eq i64 %.val1.i.i, 0
  %or.cond.i4.i.i = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %or.cond.i4.i.i, label %.noexc, label %bb.j

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EEB1j_.exit.i.i
  %i.ar = mul nuw nsw i64 %.val1.i.i, 12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i16) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i16, i64 noundef range(i64 1, 0) %i.ar, i64 noundef 4) #65
  br label %.noexc

.body:                                            ; preds = %bb.i, %bb.h
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i13, i64 noundef 432, i64 noundef 8) #65
  store ptr null, ptr %i.ae, align 8, !alias.scope !13905, !noalias !13904
  resume { ptr, i32 } %i.ah

.noexc:                                           ; preds = %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EEB1j_.exit.i.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i13, i64 noundef 432, i64 noundef 8) #65
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEEEB1D_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEEEB1D_.exit: ; preds = %.noexc, %bb.f
  store ptr null, ptr %i.ae, align 8, !alias.scope !13905, !noalias !13904
  br label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem11check_types.exit

bb.k:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29, i64 8
  tail call fastcc void @_RNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15CallableBinding11check_types(ptr noalias noundef align 8 dereferenceable(328) %i.as, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noundef nonnull align 8 %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %6), !noalias !13904, !inline_history !13843
  br label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem11check_types.exit

_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem11check_types.exit: ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEEEB1D_.exit, %bb.k
  %i.at = icmp eq ptr %i.ab, %i.z
  br i1 %i.at, label %_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement11check_types.exit.loopexit, label %.lr.ph

_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement11check_types.exit._crit_edge: ; preds = %_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement11check_types.exit.loopexit, %_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement11check_types.exit.loopexit.us, %bb.a
  br i1 %9, label %_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings9as_result.exit, label %bb.l

bb.l:                                             ; preds = %_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement11check_types.exit._crit_edge
  tail call fastcc void @_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings20evaluate_known_cases(ptr noalias noundef align 8 dereferenceable(432) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %7, i64 noundef %8)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !13908, !noundef !12 ; 2 uses
  %i.aw = icmp ugt i64 %i.av, 1                   ; 2 uses
  %i.ax = load ptr, ptr %i.c, align 8, !alias.scope !13908, !nonnull !12
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sink9.i.i.i = select i1 %i.aw, ptr %i.ax, ptr %i.c ; 2 uses
  %.val.i.i = load i64, ptr %i.ay, align 8, !alias.scope !13909
  %i.az = select i1 %i.aw, i64 %.val.i.i, i64 %i.av
  %i.ba = getelementptr inbounds nuw [384 x i8], ptr %.sink9.i.i.i, i64 %i.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sink9.i.i.i, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ba, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  store ptr null, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  br label %bb.m

bb.m:                                             ; preds = %_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind11constructorNtB2_18ConstructorBinding28check_downstream_constructor.exit, %bb.l
  %i.bc = phi ptr [ %.pre, %_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind11constructorNtB2_18ConstructorBinding28check_downstream_constructor.exit ], [ null, %bb.l ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13910)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bb, ptr %i.a, align 8, !noalias !13911
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEuINtNtNtBg_3ops12control_flow11ControlFlowQNtNtB2D_11constructor18ConstructorBindingENCINvNvB1j_8find_map5checkQB2B_B4r_QNvMs0_B2D_B2B_18as_constructor_mutE0E0B2J_.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !13912)
  call void @llvm.experimental.noalias.scope.decl(metadata !13913)
  %i.bd = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !13914, !nonnull !12, !noundef !12
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.be = phi ptr [ %i.bg, %bb.p ], [ %i.bc, %bb.n ] ; 4 uses
  %i.bf = icmp eq ptr %i.be, %i.bd
  br i1 %i.bf, label %_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEuINtNtNtBg_3ops12control_flow11ControlFlowQNtNtB2D_11constructor18ConstructorBindingENCINvNvB1j_8find_map5checkQB2B_B4r_QNvMs0_B2D_B2B_18as_constructor_mutE0E0B2J_.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 360 ; 2 uses
  store ptr %i.bg, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !13914
  %i.bh = load i64, ptr %i.be, align 8, !range !15, !alias.scope !13915, !noalias !13916, !noundef !12
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bh, 2
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.o, label %.loopexit21

_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEuINtNtNtBg_3ops12control_flow11ControlFlowQNtNtB2D_11constructor18ConstructorBindingENCINvNvB1j_8find_map5checkQB2B_B4r_QNvMs0_B2D_B2B_18as_constructor_mutE0E0B2J_.exit.thread.i: ; preds = %bb.o, %bb.m
  store ptr null, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !13910
  %i.bi = load ptr, ptr %i.b, align 8, !alias.scope !13917, !noundef !12
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1K_B1I_9items_mutEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB3Z_13FlattenCompatppE13iter_try_fold7flattenIB1g_NtB1K_12CallableItemEuINtNtNtBc_3ops12control_flow11ControlFlowQNtNtB1K_11constructor18ConstructorBindingENCINvNvXsi_B3Z_B4c_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4Y_uB5p_NCINvNvB74_8find_map5checkQB53_B64_QNvMs0_B1K_B53_18as_constructor_mutE0E0E0B5p_EB1Q_.exit.thread.i, label %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1K_B1I_9items_mutEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB3Z_13FlattenCompatppE13iter_try_fold7flattenIB1g_NtB1K_12CallableItemEuINtNtNtBc_3ops12control_flow11ControlFlowQNtNtB1K_11constructor18ConstructorBindingENCINvNvXsi_B3Z_B4c_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4Y_uB5p_NCINvNvB74_8find_map5checkQB53_B64_QNvMs0_B1K_B53_18as_constructor_mutE0E0E0B5p_EB1Q_.exit.i

_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1K_B1I_9items_mutEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB3Z_13FlattenCompatppE13iter_try_fold7flattenIB1g_NtB1K_12CallableItemEuINtNtNtBc_3ops12control_flow11ControlFlowQNtNtB1K_11constructor18ConstructorBindingENCINvNvXsi_B3Z_B4c_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4Y_uB5p_NCINvNvB74_8find_map5checkQB53_B64_QNvMs0_B1K_B53_18as_constructor_mutE0E0E0B5p_EB1Q_.exit.i: ; preds = %_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEuINtNtNtBg_3ops12control_flow11ControlFlowQNtNtB2D_11constructor18ConstructorBindingENCINvNvB1j_8find_map5checkQB2B_B4r_QNvMs0_B2D_B2B_18as_constructor_mutE0E0B2J_.exit.thread.i
  %i.bj = call noundef align 8 ptr @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1s_B1q_9items_mutENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB3V_13FlattenCompatppE13iter_try_fold7flattenIBY_NtB1s_12CallableItemEuINtNtNtBc_3ops12control_flow11ControlFlowQNtNtB1s_11constructor18ConstructorBindingENCINvNvXsi_B3V_B48_B32_8try_fold7flattenB4U_uB5k_NCINvNvB32_8find_map5checkQB4Y_B5Z_QNvMs0_B1s_B4Y_18as_constructor_mutE0E0E0B5k_EB1y_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx) ; 2 uses
  %.not10.i = icmp eq ptr %i.bj, null
  br i1 %.not10.i, label %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1K_B1I_9items_mutEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB3Z_13FlattenCompatppE13iter_try_fold7flattenIB1g_NtB1K_12CallableItemEuINtNtNtBc_3ops12control_flow11ControlFlowQNtNtB1K_11constructor18ConstructorBindingENCINvNvXsi_B3Z_B4c_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4Y_uB5p_NCINvNvB74_8find_map5checkQB53_B64_QNvMs0_B1K_B53_18as_constructor_mutE0E0E0B5p_EB1Q_.exit.thread.i, label %.loopexit21

_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1K_B1I_9items_mutEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB3Z_13FlattenCompatppE13iter_try_fold7flattenIB1g_NtB1K_12CallableItemEuINtNtNtBc_3ops12control_flow11ControlFlowQNtNtB1K_11constructor18ConstructorBindingENCINvNvXsi_B3Z_B4c_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4Y_uB5p_NCINvNvB74_8find_map5checkQB53_B64_QNvMs0_B1K_B53_18as_constructor_mutE0E0E0B5p_EB1Q_.exit.thread.i: ; preds = %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1K_B1I_9items_mutEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB3Z_13FlattenCompatppE13iter_try_fold7flattenIB1g_NtB1K_12CallableItemEuINtNtNtBc_3ops12control_flow11ControlFlowQNtNtB1K_11constructor18ConstructorBindingENCINvNvXsi_B3Z_B4c_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4Y_uB5p_NCINvNvB74_8find_map5checkQB53_B64_QNvMs0_B1K_B53_18as_constructor_mutE0E0E0B5p_EB1Q_.exit.i, %_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEuINtNtNtBg_3ops12control_flow11ControlFlowQNtNtB2D_11constructor18ConstructorBindingENCINvNvB1j_8find_map5checkQB2B_B4r_QNvMs0_B2D_B2B_18as_constructor_mutE0E0B2J_.exit.thread.i
  store ptr null, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !13910
  %i.bk = load ptr, ptr %.sroa.417.0..sroa_idx, align 8, !alias.scope !13910, !noundef !12 ; 2 uses
  %.not11.i = icmp eq ptr %i.bk, null
  br i1 %.not11.i, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1K_B1I_9items_mutEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB3Z_13FlattenCompatppE13iter_try_fold7flattenIB1g_NtB1K_12CallableItemEuINtNtNtBc_3ops12control_flow11ControlFlowQNtNtB1K_11constructor18ConstructorBindingENCINvNvXsi_B3Z_B4c_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4Y_uB5p_NCINvNvB74_8find_map5checkQB53_B64_QNvMs0_B1K_B53_18as_constructor_mutE0E0E0B5p_EB1Q_.exit.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !13918)
  call void @llvm.experimental.noalias.scope.decl(metadata !13919)
  %i.bl = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !13920, !nonnull !12, !noundef !12
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.bm = phi ptr [ %i.bo, %bb.s ], [ %i.bk, %bb.q ] ; 4 uses
  %i.bn = icmp eq ptr %i.bm, %i.bl
  br i1 %i.bn, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 360 ; 2 uses
  store ptr %i.bo, ptr %.sroa.417.0..sroa_idx, align 8, !alias.scope !13920
  %i.bp = load i64, ptr %i.bm, align 8, !range !15, !alias.scope !13921, !noalias !13922, !noundef !12
  %.not.i.i.i.i.i.i.i14.i = icmp eq i64 %i.bp, 2
  br i1 %.not.i.i.i.i.i.i.i14.i, label %bb.r, label %.loopexit21

.loopexit21:                                      ; preds = %bb.p, %bb.s, %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1K_B1I_9items_mutEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB3Z_13FlattenCompatppE13iter_try_fold7flattenIB1g_NtB1K_12CallableItemEuINtNtNtBc_3ops12control_flow11ControlFlowQNtNtB1K_11constructor18ConstructorBindingENCINvNvXsi_B3Z_B4c_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4Y_uB5p_NCINvNvB74_8find_map5checkQB53_B64_QNvMs0_B1K_B53_18as_constructor_mutE0E0E0B5p_EB1Q_.exit.i
  %.sroa.0.0.i10.ph = phi ptr [ %i.bm, %bb.s ], [ %i.bj, %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1K_B1I_9items_mutEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB3Z_13FlattenCompatppE13iter_try_fold7flattenIB1g_NtB1K_12CallableItemEuINtNtNtBc_3ops12control_flow11ControlFlowQNtNtB1K_11constructor18ConstructorBindingENCINvNvXsi_B3Z_B4c_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4Y_uB5p_NCINvNvB74_8find_map5checkQB53_B64_QNvMs0_B1K_B53_18as_constructor_mutE0E0E0B5p_EB1Q_.exit.i ], [ %i.be, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !13923)
  %i.bq = getelementptr i8, ptr %.sroa.0.0.i10.ph, i64 328
  %.val.i = load ptr, ptr %i.bq, align 8, !alias.scope !13923, !align !13, !noundef !12 ; 2 uses
  %.not.i11 = icmp eq ptr %.val.i, null
  br i1 %.not.i11, label %_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind11constructorNtB2_18ConstructorBinding28check_downstream_constructor.exit, label %bb.t

bb.t:                                             ; preds = %.loopexit21
  %i.br = call noundef i8 @_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings16check_types_impl(ptr noalias noundef nonnull align 8 dereferenceable(432) %.val.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noundef nonnull align 8 %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %7, i64 noundef range(i64 0, 576460752303423488) %8, i1 noundef zeroext false), !noalias !13923, !inline_history !13893 ; 0 uses
  br label %_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind11constructorNtB2_18ConstructorBinding28check_downstream_constructor.exit

_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind11constructorNtB2_18ConstructorBinding28check_downstream_constructor.exit: ; preds = %.loopexit21, %bb.t
  %.pre = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !13910
  br label %bb.m

.loopexit:                                        ; preds = %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1K_B1I_9items_mutEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB3Z_13FlattenCompatppE13iter_try_fold7flattenIB1g_NtB1K_12CallableItemEuINtNtNtBc_3ops12control_flow11ControlFlowQNtNtB1K_11constructor18ConstructorBindingENCINvNvXsi_B3Z_B4c_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4Y_uB5p_NCINvNvB74_8find_map5checkQB53_B64_QNvMs0_B1K_B53_18as_constructor_mutE0E0E0B5p_EB1Q_.exit.thread.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bs = call { ptr, ptr } @_RNvXsO_Csheqz6YZvxwl_8smallvecQINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBR_(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.c) ; 2 uses
  %i.bt = extractvalue { ptr, ptr } %i.bs, 0      ; 3 uses
  %i.bu = extractvalue { ptr, ptr } %i.bs, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ]
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %._crit_edge, label %.lr.ph33

.lr.ph33:                                         ; preds = %.loopexit, %_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement17retain_successful.exit
  %.sroa.04.032 = phi ptr [ %i.bw, %_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement17retain_successful.exit ], [ %i.bt, %.loopexit ] ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.04.032, i64 384 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.04.032, i64 16 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !13924, !noundef !12
  %i.bz = icmp ugt i64 %i.by, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.04.032, i64 32
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !13924
  %i.cc = icmp ugt i64 %i.cb, 1
  %i.cd = select i1 %i.bz, i1 %i.cc, i1 false
  br i1 %i.cd, label %bb.u, label %_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement17retain_successful.exit

bb.u:                                             ; preds = %.lr.ph33
  %i.ce = call fastcc noundef i8 @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement9as_result(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(384) %.sroa.04.032, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  %i.cf = icmp eq i8 %i.ce, -1
  br i1 %i.cf, label %bb.v, label %_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement17retain_successful.exit

bb.v:                                             ; preds = %bb.u
  call void @_RINvMsd_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemj1_E6retainNCNvMs1_BL_NtBL_15BindingsElement17retain_successful0EBR_(ptr noalias noundef nonnull align 8 dereferenceable(368) %i.bx, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  br label %_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement17retain_successful.exit

_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement17retain_successful.exit: ; preds = %.lr.ph33, %bb.u, %bb.v
  %i.cg = icmp eq ptr %i.bw, %i.bu
  br i1 %i.cg, label %._crit_edge, label %.lr.ph33

._crit_edge:                                      ; preds = %_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement17retain_successful.exit, %.loopexit
  %i.ch = call { ptr, ptr } @_RNvXsN_Csheqz6YZvxwl_8smallvecRINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBR_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.c), !noalias !13925, !inline_history !2 ; 2 uses
  %i.ci = extractvalue { ptr, ptr } %i.ch, 0      ; 3 uses
  %i.cj = extractvalue { ptr, ptr } %i.ch, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cj) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings9as_result.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.x
  %.sroa.01.019.i = phi i1 [ %i.co, %bb.x ], [ true, %._crit_edge ]
  %.sroa.03.018.i = phi i1 [ %.sroa.03.1.i, %bb.x ], [ false, %._crit_edge ] ; 2 uses
  %.sroa.06.017.i = phi i1 [ %.sroa.015.0.i, %bb.x ], [ true, %._crit_edge ]
  %.sroa.08.016.i = phi ptr [ %i.cl, %bb.x ], [ %i.ci, %._crit_edge ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.08.016.i, i64 384 ; 2 uses
  %i.cm = call fastcc noundef i8 @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement9as_result(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(384) %.sroa.08.016.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2), !inline_history !2 ; 3 uses
  %i.cn = icmp eq i8 %i.cm, -1                    ; 2 uses
  %i.co = and i1 %.sroa.01.019.i, %i.cn           ; 2 uses
  br i1 %i.cn, label %bb.x, label %bb.w

._crit_edge.loopexit.i:                           ; preds = %bb.x
  %i.cp = select i1 %.sroa.015.0.i, i8 0, i8 2
  %i.cq = select i1 %.sroa.03.1.i, i8 1, i8 %i.cp
  %i.cr = select i1 %i.co, i8 -1, i8 %i.cq
  br label %_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings9as_result.exit

bb.w:                                             ; preds = %.lr.ph.i
  %i.cs = icmp eq i8 %i.cm, 1
  %i.ct = or i1 %.sroa.03.018.i, %i.cs
  %i.cu = icmp eq i8 %i.cm, 0
  %i.cv = and i1 %.sroa.06.017.i, %i.cu
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i
  %.sroa.015.0.i = phi i1 [ %i.cv, %bb.w ], [ false, %.lr.ph.i ] ; 2 uses
  %.sroa.03.1.i = phi i1 [ %i.ct, %bb.w ], [ %.sroa.03.018.i, %.lr.ph.i ] ; 2 uses
  %i.cw = icmp eq ptr %i.cl, %i.cj
  br i1 %i.cw, label %._crit_edge.loopexit.i, label %.lr.ph.i

_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings9as_result.exit: ; preds = %._crit_edge.loopexit.i, %._crit_edge, %_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement11check_types.exit._crit_edge
  %.sroa.0.0 = phi i8 [ -1, %_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement11check_types.exit._crit_edge ], [ -1, %._crit_edge ], [ %i.cr, %._crit_edge.loopexit.i ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings16match_parameters(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([432 x i8]) align 8 captures(none) dereferenceable(432) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(432) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 5 uses
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 4                ; 5 uses
  %i.e = alloca [16 x i8], align 4                ; 4 uses
  %i.f = alloca [16 x i8], align 4                ; 4 uses
  %i.g = alloca [16 x i8], align 4                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 4                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = invoke noundef nonnull ptr @_RNvXs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_21TypeVarNonceGeneratorNtNtCs4NRVxsYgnAr_4core7default7Default7default()
          to label %bb.b unwind label %.thread9

.thread9:                                         ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.a
  store ptr %i.k, ptr %i.j, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14017)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !14017, !align !16, !noundef !12 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !14017 ; 4 uses
  store ptr null, ptr %i.m, align 8, !alias.scope !14017
  %.not.i = icmp eq ptr %i.n, null                ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %i.p
  invoke void @_RINvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB6_21TypeVarNonceGenerator33record_enclosing_binding_contextsINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtB25_5slice4iter4IterNtB6_14BindingContextEEEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noundef nonnull %i.n, ptr noundef nonnull %i.q)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.q, %bb.s, %bb.t, %bb.v, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBH_.exit.i.i.i.i, %.noexc20.i, %.loopexit.i.i.i, %bb.m, %.noexc15.i, %bb.l, %_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind29generic_context_has_paramspec.exit.i.i.i, %.noexc11.i, %bb.h, %bb.g, %bb.c
  %lpad.loopexit.split-lp106 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !14018, !noundef !12 ; 2 uses
  %i.u = icmp ugt i64 %i.t, 1                     ; 2 uses
  %i.v = load ptr, ptr %i.r, align 8, !alias.scope !14018, !nonnull !12
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sink9.i.i.i = select i1 %i.u, ptr %i.v, ptr %i.r ; 2 uses
  %.val.i.i = load i64, ptr %i.w, align 8, !alias.scope !14019
  %i.x = select i1 %i.u, i64 %.val.i.i, i64 %i.t
  %i.y = getelementptr inbounds nuw [384 x i8], ptr %.sink9.i.i.i, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem33freshen_generic_contexts_in_place.exit.i

_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem33freshen_generic_contexts_in_place.exit.i: ; preds = %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem33freshen_generic_contexts_in_place.exit.i.backedge, %bb.d
  %.sroa.032.0.i = phi ptr [ %.sink9.i.i.i, %bb.d ], [ %.sroa.032.1.i.lcssa, %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem33freshen_generic_contexts_in_place.exit.i.backedge ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ null, %bb.d ], [ %i.at, %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem33freshen_generic_contexts_in_place.exit.i.backedge ] ; 3 uses
  %.sroa.11.0.i = phi i64 [ undef, %bb.d ], [ %.sroa.11.1.i.lcssa, %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem33freshen_generic_contexts_in_place.exit.i.backedge ] ; 2 uses
  %i.ae = inttoptr i64 %.sroa.11.0.i to ptr
  %.not.i.i.i30 = icmp eq ptr %.sroa.7.0.i, null
  %i.af = icmp eq ptr %.sroa.7.0.i, %i.ae
  %or.cond62.i31 = select i1 %.not.i.i.i30, i1 true, i1 %i.af
  br i1 %or.cond62.i31, label %select.unfold.i.i, label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1W_B1U_9items_mutEIB1s_NtB1W_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.i

select.unfold.i.i:                                ; preds = %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem33freshen_generic_contexts_in_place.exit.i, %bb.e
  %.sroa.032.1.i32 = phi ptr [ %i.ah, %bb.e ], [ %.sroa.032.0.i, %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem33freshen_generic_contexts_in_place.exit.i ] ; 4 uses
  %i.ag = icmp eq ptr %.sroa.032.1.i32, %i.y
  br i1 %i.ag, label %bb.f, label %bb.e

bb.e:                                             ; preds = %select.unfold.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i32, i64 384 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i32, i64 16 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !14020, !noalias !14021, !noundef !12
  %i.ak = icmp ugt i64 %i.aj, 1                   ; 2 uses
  %.sink8.idx.i.i.i.i.i.i.i = select i1 %i.ak, i64 16, i64 0
  %.sink8.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sink8.idx.i.i.i.i.i.i.i
  %i.al = load i64, ptr %.sink8.i.i.i.i.i.i.i, align 8, !alias.scope !14022, !noalias !14021, !noundef !12 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %select.unfold.i.i, label %._RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1W_B1U_9items_mutEIB1s_NtB1W_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.i_crit_edge

bb.f:                                             ; preds = %select.unfold.i.i
  %.val8.i = load ptr, ptr %i.m, align 8, !alias.scope !14017, !align !16, !noundef !12 ; 3 uses
  %.val9.i = load i64, ptr %i.o, align 8, !alias.scope !14017 ; 2 uses
  %i.an = icmp eq ptr %.val8.i, null
  %i.ao = icmp eq i64 %.val9.i, 0
  %or.cond.i.i = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %or.cond.i.i, label %bb.aj, label %bb.af

._RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1W_B1U_9items_mutEIB1s_NtB1W_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.i_crit_edge: ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i32, i64 24 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !14020, !noalias !14021, !nonnull !12
  %.sink9.i.i.i.i.i.i.i = select i1 %i.ak, ptr %i.aq, ptr %i.ap ; 2 uses
  %.idx = mul nuw nsw i64 %i.al, 360
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink9.i.i.i.i.i.i.i, i64 %.idx
  %i.as = ptrtoint ptr %i.ar to i64
  br label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1W_B1U_9items_mutEIB1s_NtB1W_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.i

_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1W_B1U_9items_mutEIB1s_NtB1W_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.i: ; preds = %._RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1W_B1U_9items_mutEIB1s_NtB1W_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.i_crit_edge, %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem33freshen_generic_contexts_in_place.exit.i
  %.sroa.032.1.i.lcssa = phi ptr [ %i.ah, %._RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1W_B1U_9items_mutEIB1s_NtB1W_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.i_crit_edge ], [ %.sroa.032.0.i, %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem33freshen_generic_contexts_in_place.exit.i ]
  %.sroa.11.1.i.lcssa = phi i64 [ %i.as, %._RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1W_B1U_9items_mutEIB1s_NtB1W_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.i_crit_edge ], [ %.sroa.11.0.i, %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem33freshen_generic_contexts_in_place.exit.i ]
  %spec.select.i19.i.i.lcssa = phi ptr [ %.sink9.i.i.i.i.i.i.i, %._RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1W_B1U_9items_mutEIB1s_NtB1W_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.i_crit_edge ], [ %.sroa.7.0.i, %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem33freshen_generic_contexts_in_place.exit.i ] ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %spec.select.i19.i.i.lcssa, i64 360
  call void @llvm.experimental.noalias.scope.decl(metadata !14023)
  %i.au = load i64, ptr %spec.select.i19.i.i.lcssa, align 8, !range !15, !alias.scope !14023, !noundef !12
  %.not.i.i = icmp eq i64 %i.au, 2
  br i1 %.not.i.i, label %bb.o, label %bb.g

end_hunk_3
begin_hunk_4_@_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings23report_diagnostics_impl:bb.a
  br label %_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind19all_arguments_range.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @346, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @347) #64
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.bh = call { i32, i32 } @_RNvXs82_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f) ; 0 uses
  %i.bi = insertvalue { i32, i32 } poison, i32 %i.bb, 0
  %i.bj = insertvalue { i32, i32 } %i.bi, i32 %.sroa.05.0.i, 1
  br label %_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind19all_arguments_range.exit

_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind19all_arguments_range.exit: ; preds = %bb.d, %bb.f
  %.merged.i = phi { i32, i32 } [ %i.bj, %bb.f ], [ %i.bg, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bk = extractvalue { i32, i32 } %.merged.i, 0
  %i.bl = extractvalue { i32, i32 } %.merged.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val23 = load ptr, ptr %i.bm, align 8, !align !13, !noundef !12
  call fastcc void @_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB3_21CallDiagnosticContext11report_lintNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB9_(ptr noalias noundef align 8 captures(none) dereferenceable(80) %i.n, ptr nonnull %.val21, ptr %.val23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic17CALL_NON_CALLABLE, i32 noundef %i.bk, i32 noundef %i.bl)
  %i.bn = load i64, ptr %i.n, align 8, !range !14, !noundef !12
  %.not15 = icmp eq i64 %i.bn, -2
  br i1 %.not15, label %bb.ag, label %bb.ai

bb.g:                                             ; preds = %_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings9is_single.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.sink10.i, i64 24 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !16225, !nonnull !12
  %.sink10.i3.i = select i1 %i.av, ptr %i.bp, ptr %i.bo ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16226)
  %i.bq = load i64, ptr %.sink10.i3.i, align 8, !range !15, !alias.scope !16226, !noundef !12
  %.not.i24 = icmp eq i64 %i.bq, 2
  %.sroa.0.0.idx.i = select i1 %.not.i24, i64 8, i64 0
  %.sroa.0.0.i25 = getelementptr inbounds nuw i8, ptr %.sink10.i3.i, i64 %.sroa.0.0.idx.i ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16227)
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i25, i64 80
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !16228, !noundef !12 ; 2 uses
  %i.bt = icmp ugt i64 %i.bs, 1                   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i25, i64 96
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !16228
  %.sink9.i.i.i.i26 = select i1 %i.bt, i64 %i.bv, i64 %i.bs ; 2 uses
  %.not.i.i = icmp eq i64 %.sink9.i.i.i.i26, 0
  br i1 %.not.i.i, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16229)
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i25, i64 88 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !16230, !nonnull !12
  %.sink10.i.i.i.i.i = select i1 %i.bt, ptr %i.bx, ptr %i.bw ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %.sink9.i.i.i.i26, 232
  %i.by = getelementptr inbounds nuw i8, ptr %.sink10.i.i.i.i.i, i64 %.idx.i.i.i ; 4 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i, %bb.h
  %i.bz = phi ptr [ %i.ca, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i ], [ %.sink10.i.i.i.i.i, %bb.h ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 232 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16233)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !16234, !noalias !16235, !nonnull !12, !noundef !12 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 88
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !16234, !noalias !16235, !noundef !12 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %i.ce, 144
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.preheader.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.preheader.i.preheader.i.i:                       ; preds = %.lr.ph.i.i.i.i
  %.not.i18.i.i = icmp eq ptr %i.ca, %i.by
  br i1 %.not.i18.i.i, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit, label %.lr.ph.i14.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i, %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i
  %i.cg = phi ptr [ %i.ci, %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.cc, %.lr.ph.i.i.i.i ] ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cg, align 8, !range !35, !noalias !16236, !noundef !12
  %i.ch = tail call i64 @llvm.usub.sat.i64(i64 %.val.i.i.i.i.i.i.i.i.i.i, i64 1)
  switch i64 %i.ch, label %default.unreachable [
    i64 0, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i
    i64 1, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i
    i64 2, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i
    i64 3, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i
    i64 4, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i
    i64 5, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i
    i64 6, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i
    i64 7, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i
    i64 8, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i
    i64 9, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i
    i64 10, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i
    i64 11, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i
    i64 12, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i
    i64 13, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i
    i64 14, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i
    i64 15, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i
    i64 16, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i
    i64 17, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i
    i64 18, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i
  ]

default.unreachable:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i89, %.lr.ph.i.i.i.i.i.i.i17.i.i.i104, %.lr.ph.i.i.i.i.i.i.i.i.i.i48, %.lr.ph.i.i.i.i.i.i.i17.i.i.i63, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i17.i.i.i
  unreachable

_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 144 ; 2 uses
  %.not37.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ci, %i.cf
  br i1 %.not37.i.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cj = icmp eq ptr %i.ca, %i.by
  br i1 %i.cj, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit.thread, label %.lr.ph.i.i.i.i

.preheader.i.loopexit.i.i:                        ; preds = %.lr.ph.i14.i.i.i
  %.not.i.i.i = icmp eq ptr %i.cl, %i.by
  br i1 %.not.i.i.i, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit, label %.lr.ph.i14.i.i.i.backedge

.lr.ph.i14.i.i.i:                                 ; preds = %.preheader.i.preheader.i.i, %.lr.ph.i14.i.i.i.backedge
  %i.ck = phi ptr [ %i.cl, %.lr.ph.i14.i.i.i.backedge ], [ %i.ca, %.preheader.i.preheader.i.i ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 232 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16239)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 80
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !16240, !noalias !16241, !nonnull !12, !noundef !12 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 88
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !16240, !noalias !16241, !noundef !12 ; 2 uses
  %.idx.i.i.i.i.i.i15.i.i.i = mul nuw nsw i64 %i.cp, 144
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i.i.i.i.i.i15.i.i.i
  %.not.i.i.i.i.i.i.i16.i.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.i.i.i.i.i16.i.i.i, label %.preheader.i.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i17.i.i.i

.lr.ph.i.i.i.i.i.i.i17.i.i.i:                     ; preds = %.lr.ph.i14.i.i.i, %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i
  %i.cr = phi ptr [ %i.ct, %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i ], [ %i.cn, %.lr.ph.i14.i.i.i ] ; 2 uses
  %.val.i.i.i.i.i.i.i18.i.i.i = load i64, ptr %i.cr, align 8, !range !35, !noalias !16242, !noundef !12
  %i.cs = tail call i64 @llvm.usub.sat.i64(i64 %.val.i.i.i.i.i.i.i18.i.i.i, i64 1)
  switch i64 %i.cs, label %default.unreachable [
    i64 0, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i
    i64 1, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i
    i64 2, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i
    i64 3, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i
    i64 4, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i
    i64 5, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i
    i64 6, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i
    i64 7, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i
    i64 8, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i
    i64 9, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i
    i64 10, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i
    i64 11, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i
    i64 12, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i
    i64 13, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i
    i64 14, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i
    i64 15, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i
    i64 16, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i
    i64 17, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i
    i64 18, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i
  ]

_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i17.i.i.i, %.lr.ph.i.i.i.i.i.i.i17.i.i.i, %.lr.ph.i.i.i.i.i.i.i17.i.i.i, %.lr.ph.i.i.i.i.i.i.i17.i.i.i, %.lr.ph.i.i.i.i.i.i.i17.i.i.i, %.lr.ph.i.i.i.i.i.i.i17.i.i.i, %.lr.ph.i.i.i.i.i.i.i17.i.i.i, %.lr.ph.i.i.i.i.i.i.i17.i.i.i, %.lr.ph.i.i.i.i.i.i.i17.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 144 ; 2 uses
  %.not37.i.i.i.i.i.i.i20.i.i.i = icmp eq ptr %i.ct, %i.cq
  br i1 %.not37.i.i.i.i.i.i.i20.i.i.i, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit.thread, label %.lr.ph.i.i.i.i.i.i.i17.i.i.i

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i17.i.i.i, %.lr.ph.i.i.i.i.i.i.i17.i.i.i, %.lr.ph.i.i.i.i.i.i.i17.i.i.i, %.lr.ph.i.i.i.i.i.i.i17.i.i.i, %.lr.ph.i.i.i.i.i.i.i17.i.i.i, %.lr.ph.i.i.i.i.i.i.i17.i.i.i, %.lr.ph.i.i.i.i.i.i.i17.i.i.i, %.lr.ph.i.i.i.i.i.i.i17.i.i.i, %.lr.ph.i.i.i.i.i.i.i17.i.i.i, %.lr.ph.i.i.i.i.i.i.i17.i.i.i
  %i.cu = icmp eq ptr %i.cl, %i.by
  br i1 %i.cu, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit, label %.lr.ph.i14.i.i.i.backedge

.lr.ph.i14.i.i.i.backedge:                        ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i, %.preheader.i.loopexit.i.i
  br label %.lr.ph.i14.i.i.i

_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit: ; preds = %.preheader.i.loopexit.i.i, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i, %.preheader.i.preheader.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i25, i64 320
  %i.cw = load i8, ptr %i.cv, align 8, !range !17, !alias.scope !16243, !noundef !12
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit.thread, label %.loopexit151

bb.i:                                             ; preds = %_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings9is_single.exit.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs3_BS_NtBS_8Bindings23report_diagnostics_impl0EBY_.exit
  %i.cy = tail call { ptr, ptr } @_RNvXsN_Csheqz6YZvxwl_8smallvecRINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBR_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.q) ; 2 uses
  %i.cz = extractvalue { ptr, ptr } %i.cy, 0      ; 3 uses
  %i.da = extractvalue { ptr, ptr } %i.cy, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.da) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cz) ]
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %.loopexit151, label %.lr.ph199

.lr.ph199:                                        ; preds = %bb.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.j

_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit.thread: ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i, %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i, %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i, %bb.g, %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit
  tail call fastcc void @_RNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15CallableBinding18report_diagnostics(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %.sroa.0.0.i25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, ptr noundef %3, ptr noundef null, ptr undef)
  br label %.loopexit151

bb.j:                                             ; preds = %.lr.ph199, %_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings26report_element_diagnostics.exit
  %.sroa.02.0198 = phi ptr [ %i.cz, %.lr.ph199 ], [ %i.dj, %_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings26report_element_diagnostics.exit ] ; 10 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.02.0198, i64 384 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16244)
  %.val8.i = load ptr, ptr %.val21, align 8, !noalias !16245, !nonnull !12, !noundef !12
  %.val9.i = load ptr, ptr %i.o, align 8, !noalias !16245, !nonnull !12, !align !13, !noundef !12
  %i.dk = call fastcc noundef i8 @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement9as_result(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(384) %.sroa.02.0198, ptr noundef nonnull %.val8.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val9.i), !noalias !16246, !inline_history !16074
  %i.dl = icmp eq i8 %i.dk, -1
  br i1 %i.dl, label %_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings26report_element_diagnostics.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.02.0198, i64 16 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !16247, !noundef !12 ; 2 uses
  %i.do = icmp ugt i64 %i.dn, 1                   ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.02.0198, i64 32
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !16247 ; 3 uses
  %i.dr = icmp ugt i64 %i.dq, 1
  %i.ds = select i1 %i.do, i1 %i.dr, i1 false
  br i1 %i.ds, label %_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement14error_priority.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sink9.i115 = select i1 %i.do, i64 %i.dq, i64 %i.dn
  %.not.i32 = icmp eq i64 %.sink9.i115, 0
  br i1 %.not.i32, label %_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings26report_element_diagnostics.exit, label %bb.m

_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement14error_priority.exit: ; preds = %bb.k
  %.val6.i = load ptr, ptr %.val21, align 8, !noalias !16248, !nonnull !12, !noundef !12 ; 2 uses
  %.val7.i = load ptr, ptr %i.o, align 8, !noalias !16248, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16249)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16250
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.02.0198, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !16251, !noalias !16248, !nonnull !12 ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.dq, 360
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %.idx.i
  store ptr %i.dv, ptr %i.dd, align 8, !noalias !16250
  store ptr %.val6.i, ptr %i.de, align 8, !noalias !16250
  store ptr %.val7.i, ptr %i.df, align 8, !noalias !16250
  call void @llvm.experimental.noalias.scope.decl(metadata !16252), !noalias !16248
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 360
  store ptr %i.dw, ptr %i.a, align 8, !alias.scope !16253, !noalias !16250
  %i.dx = call noundef range(i8 0, 3) i8 @_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem14error_priority(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %i.du, ptr noundef nonnull %.val6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val7.i), !noalias !16254, !inline_history !16092
  %i.dy = call noundef i8 @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENCNvMs1_B1p_NtB1p_15BindingsElement14error_priority0ENtNtNtBa_6traits8iterator8Iterator4foldNtB1p_17CallErrorPriorityNCINvNvB3o_6max_by4foldB41_NvYB41_NtNtBc_3cmp3Ord3cmpE0EB1v_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, i8 noundef %i.dx), !noalias !16248, !inline_history !16093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16250
  %i.dz = call { ptr, ptr } @_RNvXsN_Csheqz6YZvxwl_8smallvecRINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemj1_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBR_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(368) %i.dm), !noalias !16248, !inline_history !16074 ; 2 uses
  %i.ea = extractvalue { ptr, ptr } %i.dz, 0      ; 3 uses
  %i.eb = extractvalue { ptr, ptr } %i.dz, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eb) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ea) ]
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings26report_element_diagnostics.exit, label %.lr.ph

bb.m:                                             ; preds = %bb.l
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.02.0198, i64 24 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !alias.scope !16255, !noalias !16246, !nonnull !12
  %.sink10.i114 = select i1 %i.do, ptr %i.ee, ptr %i.ed ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16256)
  %i.ef = load i64, ptr %.sink10.i114, align 8, !range !15, !alias.scope !16256, !noalias !16248, !noundef !12
  %.not.i79 = icmp eq i64 %i.ef, 2
  %.sroa.0.0.idx.i80 = select i1 %.not.i79, i64 8, i64 0
  %.sroa.0.0.i81 = getelementptr inbounds nuw i8, ptr %.sink10.i114, i64 %.sroa.0.0.idx.i80 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16257), !noalias !16248
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i81, i64 80
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !16258, !noalias !16248, !noundef !12 ; 2 uses
  %i.ei = icmp ugt i64 %i.eh, 1                   ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i81, i64 96
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !16258, !noalias !16248
  %.sink9.i.i.i.i82 = select i1 %i.ei, i64 %i.ek, i64 %i.eh ; 2 uses
  %.not.i.i83 = icmp eq i64 %.sink9.i.i.i.i82, 0
  br i1 %.not.i.i83, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit113.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !16259), !noalias !16248
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i81, i64 88 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !alias.scope !16260, !noalias !16248, !nonnull !12
  %.sink10.i.i.i.i.i84 = select i1 %i.ei, ptr %i.em, ptr %i.el ; 2 uses
  %.idx.i.i.i85 = mul nuw nsw i64 %.sink9.i.i.i.i82, 232
  %i.en = getelementptr inbounds nuw i8, ptr %.sink10.i.i.i.i.i84, i64 %.idx.i.i.i85 ; 4 uses
  br label %.lr.ph.i.i.i.i86

.lr.ph.i.i.i.i86:                                 ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i95, %bb.n
  %i.eo = phi ptr [ %i.ep, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i95 ], [ %.sink10.i.i.i.i.i84, %bb.n ] ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 232 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16261), !noalias !16248
  call void @llvm.experimental.noalias.scope.decl(metadata !16262), !noalias !16248
  call void @llvm.experimental.noalias.scope.decl(metadata !16263), !noalias !16248
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 80
  %i.er = load ptr, ptr %i.eq, align 8, !alias.scope !16264, !noalias !16265, !nonnull !12, !noundef !12 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 88
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !16264, !noalias !16265, !noundef !12 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i87 = mul nuw nsw i64 %i.et, 144
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 %.idx.i.i.i.i.i.i.i.i.i87
  %.not.i.i.i.i.i.i.i.i.i.i88 = icmp eq i64 %i.et, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i88, label %.preheader.i.preheader.i.i97, label %.lr.ph.i.i.i.i.i.i.i.i.i.i89

.preheader.i.preheader.i.i97:                     ; preds = %.lr.ph.i.i.i.i86
  %.not.i18.i.i98 = icmp eq ptr %i.ep, %i.en
  br i1 %.not.i18.i.i98, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit113, label %.lr.ph.i14.i.i.i101

.lr.ph.i.i.i.i.i.i.i.i.i.i89:                     ; preds = %.lr.ph.i.i.i.i86, %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i91
  %i.ev = phi ptr [ %i.ex, %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i91 ], [ %i.er, %.lr.ph.i.i.i.i86 ] ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i90 = load i64, ptr %i.ev, align 8, !range !35, !noalias !16266, !noundef !12
  %i.ew = call i64 @llvm.usub.sat.i64(i64 %.val.i.i.i.i.i.i.i.i.i.i90, i64 1)
  switch i64 %i.ew, label %default.unreachable [
    i64 0, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i95
    i64 1, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i95
    i64 2, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i95
    i64 3, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i95
    i64 4, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i95
    i64 5, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i95
    i64 6, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i95
    i64 7, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i95
    i64 8, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i95
    i64 9, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i91
    i64 10, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i91
    i64 11, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i91
    i64 12, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i91
    i64 13, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i91
    i64 14, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i91
    i64 15, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i95
    i64 16, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i91
    i64 17, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i91
    i64 18, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i91
  ]

_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i91: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i89, %.lr.ph.i.i.i.i.i.i.i.i.i.i89, %.lr.ph.i.i.i.i.i.i.i.i.i.i89, %.lr.ph.i.i.i.i.i.i.i.i.i.i89, %.lr.ph.i.i.i.i.i.i.i.i.i.i89, %.lr.ph.i.i.i.i.i.i.i.i.i.i89, %.lr.ph.i.i.i.i.i.i.i.i.i.i89, %.lr.ph.i.i.i.i.i.i.i.i.i.i89, %.lr.ph.i.i.i.i.i.i.i.i.i.i89
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 144 ; 2 uses
  %.not37.i.i.i.i.i.i.i.i.i.i92 = icmp eq ptr %i.ex, %i.eu
  br i1 %.not37.i.i.i.i.i.i.i.i.i.i92, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit113.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i89

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i95: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i89, %.lr.ph.i.i.i.i.i.i.i.i.i.i89, %.lr.ph.i.i.i.i.i.i.i.i.i.i89, %.lr.ph.i.i.i.i.i.i.i.i.i.i89, %.lr.ph.i.i.i.i.i.i.i.i.i.i89, %.lr.ph.i.i.i.i.i.i.i.i.i.i89, %.lr.ph.i.i.i.i.i.i.i.i.i.i89, %.lr.ph.i.i.i.i.i.i.i.i.i.i89, %.lr.ph.i.i.i.i.i.i.i.i.i.i89, %.lr.ph.i.i.i.i.i.i.i.i.i.i89
  %i.ey = icmp eq ptr %i.ep, %i.en
  br i1 %i.ey, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit113.thread, label %.lr.ph.i.i.i.i86

.preheader.i.loopexit.i.i111:                     ; preds = %.lr.ph.i14.i.i.i101
  %.not.i.i.i112 = icmp eq ptr %i.fa, %i.en
  br i1 %.not.i.i.i112, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit113, label %.lr.ph.i14.i.i.i101.backedge

.lr.ph.i14.i.i.i101:                              ; preds = %.preheader.i.preheader.i.i97, %.lr.ph.i14.i.i.i101.backedge
  %i.ez = phi ptr [ %i.fa, %.lr.ph.i14.i.i.i101.backedge ], [ %i.ep, %.preheader.i.preheader.i.i97 ] ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 232 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16267), !noalias !16248
  call void @llvm.experimental.noalias.scope.decl(metadata !16268), !noalias !16248
  call void @llvm.experimental.noalias.scope.decl(metadata !16269), !noalias !16248
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 80
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !16270, !noalias !16271, !nonnull !12, !noundef !12 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 88
  %i.fe = load i64, ptr %i.fd, align 8, !alias.scope !16270, !noalias !16271, !noundef !12 ; 2 uses
  %.idx.i.i.i.i.i.i15.i.i.i102 = mul nuw nsw i64 %i.fe, 144
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.idx.i.i.i.i.i.i15.i.i.i102
  %.not.i.i.i.i.i.i.i16.i.i.i103 = icmp eq i64 %i.fe, 0
  br i1 %.not.i.i.i.i.i.i.i16.i.i.i103, label %.preheader.i.loopexit.i.i111, label %.lr.ph.i.i.i.i.i.i.i17.i.i.i104

.lr.ph.i.i.i.i.i.i.i17.i.i.i104:                  ; preds = %.lr.ph.i14.i.i.i101, %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i106
  %i.fg = phi ptr [ %i.fi, %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i106 ], [ %i.fc, %.lr.ph.i14.i.i.i101 ] ; 2 uses
  %.val.i.i.i.i.i.i.i18.i.i.i105 = load i64, ptr %i.fg, align 8, !range !35, !noalias !16272, !noundef !12
  %i.fh = call i64 @llvm.usub.sat.i64(i64 %.val.i.i.i.i.i.i.i18.i.i.i105, i64 1)
  switch i64 %i.fh, label %default.unreachable [
    i64 0, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i109
    i64 1, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i109
    i64 2, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i109
    i64 3, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i109
    i64 4, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i109
    i64 5, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i109
    i64 6, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i109
    i64 7, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i109
    i64 8, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i109
    i64 9, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i106
    i64 10, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i106
    i64 11, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i106
    i64 12, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i106
    i64 13, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i106
    i64 14, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i106
    i64 15, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i109
    i64 16, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i106
    i64 17, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i106
    i64 18, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i106
  ]

_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i106: ; preds = %.lr.ph.i.i.i.i.i.i.i17.i.i.i104, %.lr.ph.i.i.i.i.i.i.i17.i.i.i104, %.lr.ph.i.i.i.i.i.i.i17.i.i.i104, %.lr.ph.i.i.i.i.i.i.i17.i.i.i104, %.lr.ph.i.i.i.i.i.i.i17.i.i.i104, %.lr.ph.i.i.i.i.i.i.i17.i.i.i104, %.lr.ph.i.i.i.i.i.i.i17.i.i.i104, %.lr.ph.i.i.i.i.i.i.i17.i.i.i104, %.lr.ph.i.i.i.i.i.i.i17.i.i.i104
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 144 ; 2 uses
  %.not37.i.i.i.i.i.i.i20.i.i.i107 = icmp eq ptr %i.fi, %i.ff
  br i1 %.not37.i.i.i.i.i.i.i20.i.i.i107, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit113.thread, label %.lr.ph.i.i.i.i.i.i.i17.i.i.i104

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i109: ; preds = %.lr.ph.i.i.i.i.i.i.i17.i.i.i104, %.lr.ph.i.i.i.i.i.i.i17.i.i.i104, %.lr.ph.i.i.i.i.i.i.i17.i.i.i104, %.lr.ph.i.i.i.i.i.i.i17.i.i.i104, %.lr.ph.i.i.i.i.i.i.i17.i.i.i104, %.lr.ph.i.i.i.i.i.i.i17.i.i.i104, %.lr.ph.i.i.i.i.i.i.i17.i.i.i104, %.lr.ph.i.i.i.i.i.i.i17.i.i.i104, %.lr.ph.i.i.i.i.i.i.i17.i.i.i104, %.lr.ph.i.i.i.i.i.i.i17.i.i.i104
  %i.fj = icmp eq ptr %i.fa, %i.en
  br i1 %i.fj, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit113, label %.lr.ph.i14.i.i.i101.backedge

.lr.ph.i14.i.i.i101.backedge:                     ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i109, %.preheader.i.loopexit.i.i111
  br label %.lr.ph.i14.i.i.i101

_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit113: ; preds = %.preheader.i.loopexit.i.i111, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i109, %.preheader.i.preheader.i.i97
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i81, i64 320
  %i.fl = load i8, ptr %i.fk, align 8, !range !17, !alias.scope !16273, !noalias !16248, !noundef !12
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit113.thread, label %_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings26report_element_diagnostics.exit

_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit113.thread: ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i95, %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i91, %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i106, %bb.m, %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit113
  %.val4.i = load ptr, ptr %.val21, align 8, !noalias !16248, !nonnull !12, !noundef !12
  %.val5.i = load ptr, ptr %i.o, align 8, !noalias !16248, !nonnull !12, !align !13, !noundef !12
  %i.fn = call fastcc noundef i8 @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement9as_result(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(384) %.sroa.02.0198, ptr noundef nonnull %.val4.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val5.i), !noalias !16248, !inline_history !16074
  %i.fo = icmp eq i8 %i.fn, -1
  br i1 %i.fo, label %_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings26report_element_diagnostics.exit, label %bb.o

bb.o:                                             ; preds = %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit113.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !noalias !16245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dc, ptr noundef nonnull readonly align 8 dereferenceable(384) %.sroa.02.0198, i64 16, i1 false), !noalias !16246
  call fastcc void @_RNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15CallableBinding18report_diagnostics(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %.sroa.0.0.i81, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef range(i64 0, 94) %2, ptr noundef %3, ptr noundef nonnull %i.c, ptr nonnull @171), !inline_history !16074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16245
  br label %_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings26report_element_diagnostics.exit

.lr.ph:                                           ; preds = %_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement14error_priority.exit, %.backedge149
  %.sroa.0.0.i33197 = phi ptr [ %i.fp, %.backedge149 ], [ %i.ea, %_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement14error_priority.exit ] ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i33197, i64 360 ; 2 uses
  %i.fq = load i64, ptr %.sroa.0.0.i33197, align 8, !range !15, !alias.scope !16274, !noundef !12
  %.not.i73 = icmp eq i64 %i.fq, 2
  %.sroa.0.0.idx.i74 = select i1 %.not.i73, i64 8, i64 0
  %.sroa.0.0.i75 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i33197, i64 %.sroa.0.0.idx.i74 ; 4 uses
  %.val.i = load ptr, ptr %.val21, align 8, !nonnull !12, !noundef !12
  %.val3.i = load ptr, ptr %i.o, align 8, !nonnull !12, !align !13, !noundef !12
  %i.fr = call noundef i8 @_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem14error_priority(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %.sroa.0.0.i33197, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val3.i), !inline_history !16074
  %i.fs = icmp eq i8 %i.fr, %i.dy
  br i1 %i.fs, label %bb.p, label %.backedge149

bb.p:                                             ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !16275)
  %i.ft = load i64, ptr %.sroa.0.0.i33197, align 8, !range !15, !alias.scope !16275, !noundef !12
  %.not.i38 = icmp eq i64 %i.ft, 2
  %.sroa.0.0.idx.i39 = select i1 %.not.i38, i64 8, i64 0
  %.sroa.0.0.i40 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i33197, i64 %.sroa.0.0.idx.i39 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16276)
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i40, i64 80
  %i.fv = load i64, ptr %i.fu, align 8, !alias.scope !16277, !noundef !12 ; 2 uses
  %i.fw = icmp ugt i64 %i.fv, 1                   ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i40, i64 96
  %i.fy = load i64, ptr %i.fx, align 8, !alias.scope !16277
  %.sink9.i.i.i.i41 = select i1 %i.fw, i64 %i.fy, i64 %i.fv ; 2 uses
  %.not.i.i42 = icmp eq i64 %.sink9.i.i.i.i41, 0
  br i1 %.not.i.i42, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit72.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !16278)
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i40, i64 88 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !alias.scope !16279, !nonnull !12
  %.sink10.i.i.i.i.i43 = select i1 %i.fw, ptr %i.ga, ptr %i.fz ; 2 uses
  %.idx.i.i.i44 = mul nuw nsw i64 %.sink9.i.i.i.i41, 232
  %i.gb = getelementptr inbounds nuw i8, ptr %.sink10.i.i.i.i.i43, i64 %.idx.i.i.i44 ; 4 uses
  br label %.lr.ph.i.i.i.i45

.lr.ph.i.i.i.i45:                                 ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i54, %bb.q
  %i.gc = phi ptr [ %i.gd, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i54 ], [ %.sink10.i.i.i.i.i43, %bb.q ] ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 232 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16280)
  call void @llvm.experimental.noalias.scope.decl(metadata !16281)
  call void @llvm.experimental.noalias.scope.decl(metadata !16282)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 80
  %i.gf = load ptr, ptr %i.ge, align 8, !alias.scope !16283, !noalias !16284, !nonnull !12, !noundef !12 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 88
  %i.gh = load i64, ptr %i.gg, align 8, !alias.scope !16283, !noalias !16284, !noundef !12 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i46 = mul nuw nsw i64 %i.gh, 144
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.idx.i.i.i.i.i.i.i.i.i46
  %.not.i.i.i.i.i.i.i.i.i.i47 = icmp eq i64 %i.gh, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i47, label %.preheader.i.preheader.i.i56, label %.lr.ph.i.i.i.i.i.i.i.i.i.i48

.preheader.i.preheader.i.i56:                     ; preds = %.lr.ph.i.i.i.i45
  %.not.i18.i.i57 = icmp eq ptr %i.gd, %i.gb
  br i1 %.not.i18.i.i57, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit72, label %.lr.ph.i14.i.i.i60

.lr.ph.i.i.i.i.i.i.i.i.i.i48:                     ; preds = %.lr.ph.i.i.i.i45, %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i50
  %i.gj = phi ptr [ %i.gl, %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i50 ], [ %i.gf, %.lr.ph.i.i.i.i45 ] ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i49 = load i64, ptr %i.gj, align 8, !range !35, !noalias !16285, !noundef !12
  %i.gk = call i64 @llvm.usub.sat.i64(i64 %.val.i.i.i.i.i.i.i.i.i.i49, i64 1)
  switch i64 %i.gk, label %default.unreachable [
    i64 0, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i54
    i64 1, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i54
    i64 2, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i54
    i64 3, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i54
    i64 4, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i54
    i64 5, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i54
    i64 6, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i54
    i64 7, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i54
    i64 8, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i54
    i64 9, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i50
    i64 10, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i50
    i64 11, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i50
    i64 12, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i50
    i64 13, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i50
    i64 14, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i50
    i64 15, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i54
    i64 16, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i50
    i64 17, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i50
    i64 18, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i50
  ]

_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i50: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i48, %.lr.ph.i.i.i.i.i.i.i.i.i.i48, %.lr.ph.i.i.i.i.i.i.i.i.i.i48, %.lr.ph.i.i.i.i.i.i.i.i.i.i48, %.lr.ph.i.i.i.i.i.i.i.i.i.i48, %.lr.ph.i.i.i.i.i.i.i.i.i.i48, %.lr.ph.i.i.i.i.i.i.i.i.i.i48, %.lr.ph.i.i.i.i.i.i.i.i.i.i48, %.lr.ph.i.i.i.i.i.i.i.i.i.i48
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 144 ; 2 uses
  %.not37.i.i.i.i.i.i.i.i.i.i51 = icmp eq ptr %i.gl, %i.gi
  br i1 %.not37.i.i.i.i.i.i.i.i.i.i51, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit72.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i48

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i54: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i48, %.lr.ph.i.i.i.i.i.i.i.i.i.i48, %.lr.ph.i.i.i.i.i.i.i.i.i.i48, %.lr.ph.i.i.i.i.i.i.i.i.i.i48, %.lr.ph.i.i.i.i.i.i.i.i.i.i48, %.lr.ph.i.i.i.i.i.i.i.i.i.i48, %.lr.ph.i.i.i.i.i.i.i.i.i.i48, %.lr.ph.i.i.i.i.i.i.i.i.i.i48, %.lr.ph.i.i.i.i.i.i.i.i.i.i48, %.lr.ph.i.i.i.i.i.i.i.i.i.i48
  %i.gm = icmp eq ptr %i.gd, %i.gb
  br i1 %i.gm, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit72.thread, label %.lr.ph.i.i.i.i45

.preheader.i.loopexit.i.i70:                      ; preds = %.lr.ph.i14.i.i.i60
  %.not.i.i.i71 = icmp eq ptr %i.go, %i.gb
  br i1 %.not.i.i.i71, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit72, label %.lr.ph.i14.i.i.i60.backedge

.lr.ph.i14.i.i.i60:                               ; preds = %.preheader.i.preheader.i.i56, %.lr.ph.i14.i.i.i60.backedge
  %i.gn = phi ptr [ %i.go, %.lr.ph.i14.i.i.i60.backedge ], [ %i.gd, %.preheader.i.preheader.i.i56 ] ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 232 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16286)
  call void @llvm.experimental.noalias.scope.decl(metadata !16287)
  call void @llvm.experimental.noalias.scope.decl(metadata !16288)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 80
  %i.gq = load ptr, ptr %i.gp, align 8, !alias.scope !16289, !noalias !16290, !nonnull !12, !noundef !12 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 88
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !16289, !noalias !16290, !noundef !12 ; 2 uses
  %.idx.i.i.i.i.i.i15.i.i.i61 = mul nuw nsw i64 %i.gs, 144
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.idx.i.i.i.i.i.i15.i.i.i61
  %.not.i.i.i.i.i.i.i16.i.i.i62 = icmp eq i64 %i.gs, 0
  br i1 %.not.i.i.i.i.i.i.i16.i.i.i62, label %.preheader.i.loopexit.i.i70, label %.lr.ph.i.i.i.i.i.i.i17.i.i.i63

.lr.ph.i.i.i.i.i.i.i17.i.i.i63:                   ; preds = %.lr.ph.i14.i.i.i60, %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i65
  %i.gu = phi ptr [ %i.gw, %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i65 ], [ %i.gq, %.lr.ph.i14.i.i.i60 ] ; 2 uses
  %.val.i.i.i.i.i.i.i18.i.i.i64 = load i64, ptr %i.gu, align 8, !range !35, !noalias !16291, !noundef !12
  %i.gv = call i64 @llvm.usub.sat.i64(i64 %.val.i.i.i.i.i.i.i18.i.i.i64, i64 1)
  switch i64 %i.gv, label %default.unreachable [
    i64 0, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i68
    i64 1, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i68
    i64 2, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i68
    i64 3, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i68
    i64 4, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i68
    i64 5, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i68
    i64 6, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i68
    i64 7, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i68
    i64 8, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i68
    i64 9, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i65
    i64 10, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i65
    i64 11, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i65
    i64 12, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i65
    i64 13, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i65
    i64 14, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i65
    i64 15, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i68
    i64 16, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i65
    i64 17, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i65
    i64 18, label %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i65
  ]

_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i65: ; preds = %.lr.ph.i.i.i.i.i.i.i17.i.i.i63, %.lr.ph.i.i.i.i.i.i.i17.i.i.i63, %.lr.ph.i.i.i.i.i.i.i17.i.i.i63, %.lr.ph.i.i.i.i.i.i.i17.i.i.i63, %.lr.ph.i.i.i.i.i.i.i17.i.i.i63, %.lr.ph.i.i.i.i.i.i.i17.i.i.i63, %.lr.ph.i.i.i.i.i.i.i17.i.i.i63, %.lr.ph.i.i.i.i.i.i.i17.i.i.i63, %.lr.ph.i.i.i.i.i.i.i17.i.i.i63
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 144 ; 2 uses
  %.not37.i.i.i.i.i.i.i20.i.i.i66 = icmp eq ptr %i.gw, %i.gt
  br i1 %.not37.i.i.i.i.i.i.i20.i.i.i66, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit72.thread, label %.lr.ph.i.i.i.i.i.i.i17.i.i.i63

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i68: ; preds = %.lr.ph.i.i.i.i.i.i.i17.i.i.i63, %.lr.ph.i.i.i.i.i.i.i17.i.i.i63, %.lr.ph.i.i.i.i.i.i.i17.i.i.i63, %.lr.ph.i.i.i.i.i.i.i17.i.i.i63, %.lr.ph.i.i.i.i.i.i.i17.i.i.i63, %.lr.ph.i.i.i.i.i.i.i17.i.i.i63, %.lr.ph.i.i.i.i.i.i.i17.i.i.i63, %.lr.ph.i.i.i.i.i.i.i17.i.i.i63, %.lr.ph.i.i.i.i.i.i.i17.i.i.i63, %.lr.ph.i.i.i.i.i.i.i17.i.i.i63
  %i.gx = icmp eq ptr %i.go, %i.gb
  br i1 %i.gx, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit72, label %.lr.ph.i14.i.i.i60.backedge

.lr.ph.i14.i.i.i60.backedge:                      ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i68, %.preheader.i.loopexit.i.i70
  br label %.lr.ph.i14.i.i.i60

_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit72: ; preds = %.preheader.i.loopexit.i.i70, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i24.i.i.i68, %.preheader.i.preheader.i.i56
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i40, i64 320
  %i.gz = load i8, ptr %i.gy, align 8, !range !17, !alias.scope !16292, !noundef !12
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit72.thread, label %.backedge149

.backedge149:                                     ; preds = %bb.r, %bb.s, %.lr.ph, %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit72
  %i.hb = icmp eq ptr %i.fp, %i.eb
  br i1 %i.hb, label %_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings26report_element_diagnostics.exit, label %.lr.ph

_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit72.thread: ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_.exit.i.i.i.i54, %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i.i.i.i50, %_RNvYNvMsq_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12BindingError27affects_overload_resolutionINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_.exit.i.i.i.i.i.i.i19.i.i.i65, %bb.p, %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit72
  br i1 %i.as, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit72.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(384) %.sroa.02.0198, i64 16, i1 false), !noalias !16246
  store ptr %.sroa.0.0.i75, ptr %i.di, align 8, !noalias !16245
  call fastcc void @_RNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15CallableBinding18report_diagnostics(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %.sroa.0.0.i75, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef range(i64 0, 94) %2, ptr noundef %3, ptr noundef nonnull %i.d, ptr nonnull @172), !inline_history !16074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16245
  br label %.backedge149

bb.s:                                             ; preds = %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit72.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !noalias !16245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull readonly align 8 dereferenceable(384) %.sroa.02.0198, i64 16, i1 false), !noalias !16246
  store ptr %.sroa.0.0.i75, ptr %i.dh, align 8, !noalias !16245
  call fastcc void @_RNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15CallableBinding18report_diagnostics(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %.sroa.0.0.i75, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef range(i64 0, 94) %2, ptr noundef %3, ptr noundef nonnull %i.e, ptr nonnull @173), !inline_history !16074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16245
  br label %.backedge149

_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings26report_element_diagnostics.exit: ; preds = %.backedge149, %_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement14error_priority.exit, %bb.j, %bb.l, %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit113, %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit113.thread, %bb.o
  %i.hc = icmp eq ptr %i.dj, %i.da
  br i1 %i.hc, label %.loopexit151, label %bb.j

bb.t:                                             ; preds = %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1H_B1F_5itemsEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB3S_13FlattenCompatppE13iter_try_fold7flattenIB1g_NtB1H_12CallableItemEuINtNtNtBc_3ops12control_flow11ControlFlowRNtNtB1H_11constructor18ConstructorBindingENCINvNvXsi_B3S_B45_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4R_uB5i_NCINvNvB6X_8find_map5checkRB4W_B5X_QNvMs0_B1H_B4W_14as_constructorE0E0E0B5i_EB1N_.exit.i, %bb.ae, %bb.ac
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1A_.exit unwind label %bb.af

.loopexit151:                                     ; preds = %_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings26report_element_diagnostics.exit, %bb.i, %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit.thread, %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) @45, i64 32, i1 false)
  %i.he = getelementptr inbounds nuw [384 x i8], ptr %.sink10.i, i64 %.sink9.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %.sink10.i, ptr %i.h, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.he, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  store ptr null, ptr %.sroa.4121.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.hf = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  br label %bb.u

bb.u:                                             ; preds = %.backedge, %.loopexit151
  %i.hg = phi ptr [ %.pre, %.backedge ], [ null, %.loopexit151 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16293)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.hf, ptr %i.b, align 8, !noalias !16294
  %.not.i34 = icmp eq ptr %i.hg, null
  br i1 %.not.i34, label %_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEuINtNtNtBg_3ops12control_flow11ControlFlowRNtNtB2A_11constructor18ConstructorBindingENCINvNvB1j_8find_map5checkRB2y_B4o_QNvMs0_B2A_B2y_14as_constructorE0E0B2G_.exit.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !16295)
  call void @llvm.experimental.noalias.scope.decl(metadata !16296)
  %i.hh = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !16297, !nonnull !12, !noundef !12
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v
  %i.hi = phi ptr [ %i.hk, %bb.x ], [ %i.hg, %bb.v ] ; 4 uses
  %i.hj = icmp eq ptr %i.hi, %i.hh
  br i1 %i.hj, label %_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEuINtNtNtBg_3ops12control_flow11ControlFlowRNtNtB2A_11constructor18ConstructorBindingENCINvNvB1j_8find_map5checkRB2y_B4o_QNvMs0_B2A_B2y_14as_constructorE0E0B2G_.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 360 ; 2 uses
  store ptr %i.hk, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !16297
  %i.hl = load i64, ptr %i.hi, align 8, !range !15, !alias.scope !16298, !noalias !16299, !noundef !12
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.hl, 2
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.w, label %.loopexit141

_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEuINtNtNtBg_3ops12control_flow11ControlFlowRNtNtB2A_11constructor18ConstructorBindingENCINvNvB1j_8find_map5checkRB2y_B4o_QNvMs0_B2A_B2y_14as_constructorE0E0B2G_.exit.thread.i: ; preds = %bb.w, %bb.u
  store ptr null, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !16293
  %i.hm = load ptr, ptr %i.h, align 8, !alias.scope !16300, !noundef !12
  %.not.i.i36 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i36, label %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1H_B1F_5itemsEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB3S_13FlattenCompatppE13iter_try_fold7flattenIB1g_NtB1H_12CallableItemEuINtNtNtBc_3ops12control_flow11ControlFlowRNtNtB1H_11constructor18ConstructorBindingENCINvNvXsi_B3S_B45_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4R_uB5i_NCINvNvB6X_8find_map5checkRB4W_B5X_QNvMs0_B1H_B4W_14as_constructorE0E0E0B5i_EB1N_.exit.thread.i, label %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1H_B1F_5itemsEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB3S_13FlattenCompatppE13iter_try_fold7flattenIB1g_NtB1H_12CallableItemEuINtNtNtBc_3ops12control_flow11ControlFlowRNtNtB1H_11constructor18ConstructorBindingENCINvNvXsi_B3S_B45_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4R_uB5i_NCINvNvB6X_8find_map5checkRB4W_B5X_QNvMs0_B1H_B4W_14as_constructorE0E0E0B5i_EB1N_.exit.i

_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1H_B1F_5itemsEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB3S_13FlattenCompatppE13iter_try_fold7flattenIB1g_NtB1H_12CallableItemEuINtNtNtBc_3ops12control_flow11ControlFlowRNtNtB1H_11constructor18ConstructorBindingENCINvNvXsi_B3S_B45_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4R_uB5i_NCINvNvB6X_8find_map5checkRB4W_B5X_QNvMs0_B1H_B4W_14as_constructorE0E0E0B5i_EB1N_.exit.i: ; preds = %_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEuINtNtNtBg_3ops12control_flow11ControlFlowRNtNtB2A_11constructor18ConstructorBindingENCINvNvB1j_8find_map5checkRB2y_B4o_QNvMs0_B2A_B2y_14as_constructorE0E0B2G_.exit.thread.i
  %i.hn = invoke noundef align 8 ptr @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1p_B1n_5itemsENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB3O_13FlattenCompatppE13iter_try_fold7flattenIBY_NtB1p_12CallableItemEuINtNtNtBc_3ops12control_flow11ControlFlowRNtNtB1p_11constructor18ConstructorBindingENCINvNvXsi_B3O_B41_B2V_8try_fold7flattenB4N_uB5d_NCINvNvB2V_8find_map5checkRB4R_B5S_QNvMs0_B1p_B4R_14as_constructorE0E0E0B5d_EB1v_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx)
          to label %.noexc unwind label %bb.t     ; 2 uses

.noexc:                                           ; preds = %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1H_B1F_5itemsEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB3S_13FlattenCompatppE13iter_try_fold7flattenIB1g_NtB1H_12CallableItemEuINtNtNtBc_3ops12control_flow11ControlFlowRNtNtB1H_11constructor18ConstructorBindingENCINvNvXsi_B3S_B45_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4R_uB5i_NCINvNvB6X_8find_map5checkRB4W_B5X_QNvMs0_B1H_B4W_14as_constructorE0E0E0B5i_EB1N_.exit.i
  %.not10.i = icmp eq ptr %i.hn, null
  br i1 %.not10.i, label %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1H_B1F_5itemsEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB3S_13FlattenCompatppE13iter_try_fold7flattenIB1g_NtB1H_12CallableItemEuINtNtNtBc_3ops12control_flow11ControlFlowRNtNtB1H_11constructor18ConstructorBindingENCINvNvXsi_B3S_B45_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4R_uB5i_NCINvNvB6X_8find_map5checkRB4W_B5X_QNvMs0_B1H_B4W_14as_constructorE0E0E0B5i_EB1N_.exit.thread.i, label %.loopexit141

_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1H_B1F_5itemsEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB3S_13FlattenCompatppE13iter_try_fold7flattenIB1g_NtB1H_12CallableItemEuINtNtNtBc_3ops12control_flow11ControlFlowRNtNtB1H_11constructor18ConstructorBindingENCINvNvXsi_B3S_B45_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4R_uB5i_NCINvNvB6X_8find_map5checkRB4W_B5X_QNvMs0_B1H_B4W_14as_constructorE0E0E0B5i_EB1N_.exit.thread.i: ; preds = %.noexc, %_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEuINtNtNtBg_3ops12control_flow11ControlFlowRNtNtB2A_11constructor18ConstructorBindingENCINvNvB1j_8find_map5checkRB2y_B4o_QNvMs0_B2A_B2y_14as_constructorE0E0B2G_.exit.thread.i
  store ptr null, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !16293
  %i.ho = load ptr, ptr %.sroa.4121.0..sroa_idx, align 8, !alias.scope !16293, !noundef !12 ; 2 uses
  %.not11.i = icmp eq ptr %i.ho, null
  br i1 %.not11.i, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1H_B1F_5itemsEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB3S_13FlattenCompatppE13iter_try_fold7flattenIB1g_NtB1H_12CallableItemEuINtNtNtBc_3ops12control_flow11ControlFlowRNtNtB1H_11constructor18ConstructorBindingENCINvNvXsi_B3S_B45_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4R_uB5i_NCINvNvB6X_8find_map5checkRB4W_B5X_QNvMs0_B1H_B4W_14as_constructorE0E0E0B5i_EB1N_.exit.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16301)
  call void @llvm.experimental.noalias.scope.decl(metadata !16302)
  %i.hp = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !16303, !nonnull !12, !noundef !12
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %bb.y
  %i.hq = phi ptr [ %i.hs, %bb.aa ], [ %i.ho, %bb.y ] ; 4 uses
  %i.hr = icmp eq ptr %i.hq, %i.hp
  br i1 %i.hr, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 360 ; 2 uses
  store ptr %i.hs, ptr %.sroa.4121.0..sroa_idx, align 8, !alias.scope !16303
  %i.ht = load i64, ptr %i.hq, align 8, !range !15, !alias.scope !16304, !noalias !16305, !noundef !12
  %.not.i.i.i.i.i.i.i14.i = icmp eq i64 %i.ht, 2
  br i1 %.not.i.i.i.i.i.i.i14.i, label %bb.z, label %.loopexit141

.loopexit:                                        ; preds = %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1H_B1F_5itemsEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB3S_13FlattenCompatppE13iter_try_fold7flattenIB1g_NtB1H_12CallableItemEuINtNtNtBc_3ops12control_flow11ControlFlowRNtNtB1H_11constructor18ConstructorBindingENCINvNvXsi_B3S_B45_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4R_uB5i_NCINvNvB6X_8find_map5checkRB4W_B5X_QNvMs0_B1H_B4W_14as_constructorE0E0E0B5i_EB1N_.exit.thread.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ag, %bb.am, %.loopexit
  ret void

.loopexit141:                                     ; preds = %bb.x, %bb.aa, %.noexc
  %.sroa.0.0.i35.ph = phi ptr [ %i.hq, %bb.aa ], [ %i.hn, %.noexc ], [ %i.hi, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.hu = getelementptr i8, ptr %.sroa.0.0.i35.ph, i64 328
  %.val19 = load ptr, ptr %i.hu, align 8, !align !13, !noundef !12 ; 3 uses
  %.not14 = icmp eq ptr %.val19, null
  br i1 %.not14, label %.backedge, label %bb.ac

bb.ac:                                            ; preds = %.loopexit141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(432) %.val19, i64 16, i1 false), !alias.scope !16306
  %i.hv = invoke noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertBR_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.g)
          to label %bb.ad unwind label %bb.t

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.hv, label %.backedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke fastcc void @_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings23report_diagnostics_impl(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(432) %.val19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, ptr noundef %3)
          to label %.backedge unwind label %bb.t

.backedge:                                        ; preds = %bb.ad, %.loopexit141, %bb.ae
  %.pre = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !16293
  br label %bb.u

bb.af:                                            ; preds = %bb.ak, %bb.t, %bb.ah
  %i.hw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #63
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1A_.exit: ; preds = %bb.ak, %bb.t, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.hd, %bb.t ], [ %i.hx, %bb.ah ], [ %i.hy, %bb.ak ]
  resume { ptr, i32 } %.pn

bb.ag:                                            ; preds = %_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind19all_arguments_range.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ab

bb.ah:                                            ; preds = %bb.ai
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context26LintDiagnosticGuardBuilderEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.l) #62
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1A_.exit unwind label %bb.af

bb.ai:                                            ; preds = %_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind19all_arguments_range.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.l, ptr noundef nonnull align 8 dereferenceable(80) %i.n, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB7_4Type7display(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.k, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val17, ptr noundef nonnull align 4 %.val18)
          to label %bb.aj unwind label %bb.ah

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.k, ptr %i.j, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsf_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_11DisplayTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  invoke void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.l, ptr noundef nonnull @170, ptr noundef nonnull %i.j)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.al, %bb.aj
  %i.hy = landingpad { ptr, i32 }
          cleanup
  %i.hz = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.hz)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1A_.exit unwind label %bb.af

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.m)
          to label %bb.am unwind label %bb.ak

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ia = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.ia)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ab
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings25into_constructor_bindings(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([432 x i8]) align 8 captures(none) dereferenceable(432) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(432) %1, ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(16) %2, i8 noundef range(i8 0, 3) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [400 x i8], align 8               ; 6 uses
  %i.b = alloca [368 x i8], align 8               ; 6 uses
  %i.c = alloca [368 x i8], align 8               ; 4 uses
  %i.d = alloca [384 x i8], align 8               ; 4 uses
  %i.e = alloca [368 x i8], align 8               ; 5 uses
  %i.f = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %3, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = invoke { ptr, ptr } @_RNvXsO_Csheqz6YZvxwl_8smallvecQINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBR_(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.g)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

end_hunk_4
begin_hunk_5_@llvm.umax.i8
!16045 = distinct !{!16045, !16044, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_: argument 0"}
!16046 = distinct !{!16046, i1 true, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEQNCNvMs7_B1h_NtB1h_15CallableBinding18matching_overloads0E0B1n_"}
!16047 = distinct !{!16047, !16046, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEQNCNvMs7_B1h_NtB1h_15CallableBinding18matching_overloads0E0B1n_: argument 0"}
!16048 = distinct !{!16048, i1 true, !"_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding40has_errors_affecting_overload_resolution"}
!16049 = distinct !{!16049, !16048, !"_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding40has_errors_affecting_overload_resolution: argument 0"}
!16050 = distinct !{!16050, i1 true, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1T_8adapters9enumerateINtB2M_9EnumeratepEB1N_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3T_EENCINvNvB1N_4find5checkB4D_QNCNvMs7_BL_NtBL_15CallableBinding18matching_overloads0E0E0B3Y_EBR_"}
!16051 = distinct !{!16051, !16050, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1T_8adapters9enumerateINtB2M_9EnumeratepEB1N_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3T_EENCINvNvB1N_4find5checkB4D_QNCNvMs7_BL_NtBL_15CallableBinding18matching_overloads0E0E0B3Y_EBR_: argument 1"}
!16052 = distinct !{!16052, !16050, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1T_8adapters9enumerateINtB2M_9EnumeratepEB1N_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3T_EENCINvNvB1N_4find5checkB4D_QNCNvMs7_BL_NtBL_15CallableBinding18matching_overloads0E0E0B3Y_EBR_: argument 0"}
!16053 = distinct !{!16053, i1 true, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBW_15CallableBinding18matching_overloads0INtB7_5FnMutTRTjRNtBW_7BindingEEE8call_mutB12_"}
!16054 = distinct !{!16054, !16053, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBW_15CallableBinding18matching_overloads0INtB7_5FnMutTRTjRNtBW_7BindingEEE8call_mutB12_: argument 0"}
!16055 = distinct !{!16055, i1 true, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMsq_BS_BQ_27affects_overload_resolutionEBY_"}
!16056 = distinct !{!16056, !16055, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMsq_BS_BQ_27affects_overload_resolutionEBY_: argument 0"}
!16057 = distinct !{!16057, i1 true, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_"}
!16058 = distinct !{!16058, !16057, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_: argument 0"}
!16059 = distinct !{!16059, i1 true, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEQNCNvMs7_B1h_NtB1h_15CallableBinding18matching_overloads0E0B1n_"}
!16060 = distinct !{!16060, !16059, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEQNCNvMs7_B1h_NtB1h_15CallableBinding18matching_overloads0E0B1n_: argument 0"}
!16061 = distinct !{!16061, i1 true, !"_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding40has_errors_affecting_overload_resolution"}
!16062 = distinct !{!16062, !16061, !"_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding40has_errors_affecting_overload_resolution: argument 0"}
!16063 = distinct !{!16063, i1 true, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1T_8adapters9enumerateINtB2M_9EnumeratepEB1N_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3T_EENCINvNvB1N_4find5checkB4D_QNCNvMs7_BL_NtBL_15CallableBinding18matching_overloads0E0E0B3Y_EBR_"}
!16064 = distinct !{!16064, !16063, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1T_8adapters9enumerateINtB2M_9EnumeratepEB1N_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3T_EENCINvNvB1N_4find5checkB4D_QNCNvMs7_BL_NtBL_15CallableBinding18matching_overloads0E0E0B3Y_EBR_: argument 1"}
!16065 = distinct !{!16065, !16063, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1T_8adapters9enumerateINtB2M_9EnumeratepEB1N_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3T_EENCINvNvB1N_4find5checkB4D_QNCNvMs7_BL_NtBL_15CallableBinding18matching_overloads0E0E0B3Y_EBR_: argument 0"}
!16066 = distinct !{!16066, i1 true, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBW_15CallableBinding18matching_overloads0INtB7_5FnMutTRTjRNtBW_7BindingEEE8call_mutB12_"}
!16067 = distinct !{!16067, !16066, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBW_15CallableBinding18matching_overloads0INtB7_5FnMutTRTjRNtBW_7BindingEEE8call_mutB12_: argument 0"}
!16068 = distinct !{!16068, i1 true, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMsq_BS_BQ_27affects_overload_resolutionEBY_"}
!16069 = distinct !{!16069, !16068, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMsq_BS_BQ_27affects_overload_resolutionEBY_: argument 0"}
!16070 = distinct !{!16070, i1 true, !"_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings26report_element_diagnostics"}
!16071 = distinct !{!16071, !16070, !"_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings26report_element_diagnostics: argument 2"}
!16072 = distinct !{!16072, !16070, !"_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings26report_element_diagnostics: argument 1"}
!16073 = distinct !{!16073, !16070, !"_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings26report_element_diagnostics: argument 0"}
!16074 = distinct !{null}
!16075 = distinct !{!16075, i1 true, !"_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement15is_intersection"}
!16076 = distinct !{!16076, !16075, !"_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement15is_intersection: argument 0"}
!16077 = distinct !{!16077, i1 true, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemj1_E6tripleBQ_"}
!16078 = distinct !{!16078, !16077, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemj1_E6tripleBQ_: argument 1"}
!16079 = distinct !{!16079, i1 true, !"_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement14error_priority"}
!16080 = distinct !{!16080, !16079, !"_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement14error_priority: argument 0"}
!16081 = distinct !{!16081, !16079, !"_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement14error_priority: argument 1"}
!16082 = distinct !{!16082, i1 true, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemj1_E6tripleBQ_"}
!16083 = distinct !{!16083, !16082, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemj1_E6tripleBQ_: argument 1"}
!16084 = distinct !{!16084, i1 true, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENCNvMs1_B1j_NtB1j_15BindingsElement14error_priority0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB3i_6max_by4foldNtB1j_17CallErrorPriorityNvYB4k_NtNtBc_3cmp3Ord3cmpE0EB1p_"}
!16085 = distinct !{!16085, !16084, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENCNvMs1_B1j_NtB1j_15BindingsElement14error_priority0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB3i_6max_by4foldNtB1j_17CallErrorPriorityNvYB4k_NtNtBc_3cmp3Ord3cmpE0EB1p_: argument 0"}
!16086 = distinct !{!16086, i1 true, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENCNvMs1_B1o_NtB1o_15BindingsElement14error_priority0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_"}
!16087 = distinct !{!16087, !16086, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENCNvMs1_B1o_NtB1o_15BindingsElement14error_priority0ENtNtNtB9_6traits8iterator8Iterator4nextB1u_: argument 0"}
!16088 = distinct !{!16088, i1 true, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_"}
!16089 = distinct !{!16089, !16088, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_: argument 0"}
!16090 = distinct !{!16090, i1 true, !"_RNCNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_15BindingsElement14error_priority0Bd_"}
!16091 = distinct !{!16091, !16090, !"_RNCNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB7_15BindingsElement14error_priority0Bd_: argument 0"}
!16092 = distinct !{ptr @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement14error_priority, null, null, null, null}
!16093 = distinct !{ptr @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement14error_priority, null, null}
!16094 = distinct !{!16094, i1 true, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemj1_E6tripleBQ_"}
!16095 = distinct !{!16095, !16094, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemj1_E6tripleBQ_: argument 1"}
!16096 = distinct !{!16096, i1 true, !"_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics"}
!16097 = distinct !{!16097, !16096, !"_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics: argument 0"}
!16098 = distinct !{!16098, i1 true, !"_RNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15CallableBinding9as_result"}
!16099 = distinct !{!16099, !16098, !"_RNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15CallableBinding9as_result: argument 0"}
!16100 = distinct !{!16100, i1 true, !"_RNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15CallableBinding11is_callable"}
!16101 = distinct !{!16101, !16100, !"_RNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15CallableBinding11is_callable: argument 0"}
!16102 = distinct !{!16102, i1 true, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7Bindingj1_E6tripleBQ_"}
!16103 = distinct !{!16103, !16102, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7Bindingj1_E6tripleBQ_: argument 1"}
!16104 = distinct !{!16104, i1 true, !"_RNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15CallableBinding18has_binding_errors"}
!16105 = distinct !{!16105, !16104, !"_RNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15CallableBinding18has_binding_errors: argument 0"}
!16106 = distinct !{!16106, i1 true, !"_RNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15CallableBinding18matching_overloads"}
!16107 = distinct !{!16107, !16106, !"_RNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15CallableBinding18matching_overloads: argument 1"}
!16108 = distinct !{!16108, i1 true, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7Bindingj1_E6tripleBQ_"}
!16109 = distinct !{!16109, !16108, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7Bindingj1_E6tripleBQ_: argument 1"}
!16110 = distinct !{!16110, i1 true, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_"}
!16111 = distinct !{!16111, !16110, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_: argument 0"}
!16112 = distinct !{!16112, i1 true, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEQNCNvMs7_B1h_NtB1h_15CallableBinding18matching_overloads0E0B1n_"}
!16113 = distinct !{!16113, !16112, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEQNCNvMs7_B1h_NtB1h_15CallableBinding18matching_overloads0E0B1n_: argument 0"}
!16114 = distinct !{!16114, i1 true, !"_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding40has_errors_affecting_overload_resolution"}
!16115 = distinct !{!16115, !16114, !"_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding40has_errors_affecting_overload_resolution: argument 0"}
!16116 = distinct !{!16116, i1 true, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1T_8adapters9enumerateINtB2M_9EnumeratepEB1N_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3T_EENCINvNvB1N_4find5checkB4D_QNCNvMs7_BL_NtBL_15CallableBinding18matching_overloads0E0E0B3Y_EBR_"}
!16117 = distinct !{!16117, !16116, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1T_8adapters9enumerateINtB2M_9EnumeratepEB1N_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3T_EENCINvNvB1N_4find5checkB4D_QNCNvMs7_BL_NtBL_15CallableBinding18matching_overloads0E0E0B3Y_EBR_: argument 1"}
!16118 = distinct !{!16118, !16116, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1T_8adapters9enumerateINtB2M_9EnumeratepEB1N_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3T_EENCINvNvB1N_4find5checkB4D_QNCNvMs7_BL_NtBL_15CallableBinding18matching_overloads0E0E0B3Y_EBR_: argument 0"}
!16119 = distinct !{!16119, i1 true, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBW_15CallableBinding18matching_overloads0INtB7_5FnMutTRTjRNtBW_7BindingEEE8call_mutB12_"}
!16120 = distinct !{!16120, !16119, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBW_15CallableBinding18matching_overloads0INtB7_5FnMutTRTjRNtBW_7BindingEEE8call_mutB12_: argument 0"}
!16121 = distinct !{!16121, i1 true, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMsq_BS_BQ_27affects_overload_resolutionEBY_"}
!16122 = distinct !{!16122, !16121, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMsq_BS_BQ_27affects_overload_resolutionEBY_: argument 0"}
!16123 = distinct !{!16123, i1 true, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_"}
!16124 = distinct !{!16124, !16123, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_: argument 0"}
!16125 = distinct !{!16125, i1 true, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEQNCNvMs7_B1h_NtB1h_15CallableBinding18matching_overloads0E0B1n_"}
!16126 = distinct !{!16126, !16125, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEQNCNvMs7_B1h_NtB1h_15CallableBinding18matching_overloads0E0B1n_: argument 0"}
!16127 = distinct !{!16127, i1 true, !"_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding40has_errors_affecting_overload_resolution"}
!16128 = distinct !{!16128, !16127, !"_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding40has_errors_affecting_overload_resolution: argument 0"}
!16129 = distinct !{!16129, i1 true, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1T_8adapters9enumerateINtB2M_9EnumeratepEB1N_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3T_EENCINvNvB1N_4find5checkB4D_QNCNvMs7_BL_NtBL_15CallableBinding18matching_overloads0E0E0B3Y_EBR_"}
!16130 = distinct !{!16130, !16129, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1T_8adapters9enumerateINtB2M_9EnumeratepEB1N_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3T_EENCINvNvB1N_4find5checkB4D_QNCNvMs7_BL_NtBL_15CallableBinding18matching_overloads0E0E0B3Y_EBR_: argument 1"}
!16131 = distinct !{!16131, !16129, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1T_8adapters9enumerateINtB2M_9EnumeratepEB1N_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3T_EENCINvNvB1N_4find5checkB4D_QNCNvMs7_BL_NtBL_15CallableBinding18matching_overloads0E0E0B3Y_EBR_: argument 0"}
!16132 = distinct !{!16132, i1 true, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBW_15CallableBinding18matching_overloads0INtB7_5FnMutTRTjRNtBW_7BindingEEE8call_mutB12_"}
!16133 = distinct !{!16133, !16132, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBW_15CallableBinding18matching_overloads0INtB7_5FnMutTRTjRNtBW_7BindingEEE8call_mutB12_: argument 0"}
!16134 = distinct !{!16134, i1 true, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMsq_BS_BQ_27affects_overload_resolutionEBY_"}
!16135 = distinct !{!16135, !16134, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMsq_BS_BQ_27affects_overload_resolutionEBY_: argument 0"}
!16136 = distinct !{!16136, i1 true, !"_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem8callable"}
!16137 = distinct !{!16137, !16136, !"_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem8callable: argument 0"}
!16138 = distinct !{!16138, i1 true, !"_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics"}
!16139 = distinct !{!16139, !16138, !"_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem19has_own_diagnostics: argument 0"}
!16140 = distinct !{!16140, i1 true, !"_RNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15CallableBinding9as_result"}
!16141 = distinct !{!16141, !16140, !"_RNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15CallableBinding9as_result: argument 0"}
!16142 = distinct !{!16142, i1 true, !"_RNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15CallableBinding11is_callable"}
!16143 = distinct !{!16143, !16142, !"_RNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15CallableBinding11is_callable: argument 0"}
!16144 = distinct !{!16144, i1 true, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7Bindingj1_E6tripleBQ_"}
!16145 = distinct !{!16145, !16144, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7Bindingj1_E6tripleBQ_: argument 1"}
!16146 = distinct !{!16146, i1 true, !"_RNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15CallableBinding18has_binding_errors"}
!16147 = distinct !{!16147, !16146, !"_RNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15CallableBinding18has_binding_errors: argument 0"}
!16148 = distinct !{!16148, i1 true, !"_RNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15CallableBinding18matching_overloads"}
!16149 = distinct !{!16149, !16148, !"_RNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15CallableBinding18matching_overloads: argument 1"}
!16150 = distinct !{!16150, i1 true, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7Bindingj1_E6tripleBQ_"}
!16151 = distinct !{!16151, !16150, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7Bindingj1_E6tripleBQ_: argument 1"}
!16152 = distinct !{!16152, i1 true, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_"}
!16153 = distinct !{!16153, !16152, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_: argument 0"}
!16154 = distinct !{!16154, i1 true, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEQNCNvMs7_B1h_NtB1h_15CallableBinding18matching_overloads0E0B1n_"}
!16155 = distinct !{!16155, !16154, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEQNCNvMs7_B1h_NtB1h_15CallableBinding18matching_overloads0E0B1n_: argument 0"}
!16156 = distinct !{!16156, i1 true, !"_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding40has_errors_affecting_overload_resolution"}
!16157 = distinct !{!16157, !16156, !"_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding40has_errors_affecting_overload_resolution: argument 0"}
!16158 = distinct !{!16158, i1 true, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1T_8adapters9enumerateINtB2M_9EnumeratepEB1N_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3T_EENCINvNvB1N_4find5checkB4D_QNCNvMs7_BL_NtBL_15CallableBinding18matching_overloads0E0E0B3Y_EBR_"}
!16159 = distinct !{!16159, !16158, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1T_8adapters9enumerateINtB2M_9EnumeratepEB1N_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3T_EENCINvNvB1N_4find5checkB4D_QNCNvMs7_BL_NtBL_15CallableBinding18matching_overloads0E0E0B3Y_EBR_: argument 1"}
!16160 = distinct !{!16160, !16158, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1T_8adapters9enumerateINtB2M_9EnumeratepEB1N_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3T_EENCINvNvB1N_4find5checkB4D_QNCNvMs7_BL_NtBL_15CallableBinding18matching_overloads0E0E0B3Y_EBR_: argument 0"}
!16161 = distinct !{!16161, i1 true, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBW_15CallableBinding18matching_overloads0INtB7_5FnMutTRTjRNtBW_7BindingEEE8call_mutB12_"}
!16162 = distinct !{!16162, !16161, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBW_15CallableBinding18matching_overloads0INtB7_5FnMutTRTjRNtBW_7BindingEEE8call_mutB12_: argument 0"}
!16163 = distinct !{!16163, i1 true, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMsq_BS_BQ_27affects_overload_resolutionEBY_"}
!16164 = distinct !{!16164, !16163, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMsq_BS_BQ_27affects_overload_resolutionEBY_: argument 0"}
!16165 = distinct !{!16165, i1 true, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_"}
!16166 = distinct !{!16166, !16165, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3P_QNCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0E0E0B2e_: argument 0"}
!16167 = distinct !{!16167, i1 true, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEQNCNvMs7_B1h_NtB1h_15CallableBinding18matching_overloads0E0B1n_"}
!16168 = distinct !{!16168, !16167, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEQNCNvMs7_B1h_NtB1h_15CallableBinding18matching_overloads0E0B1n_: argument 0"}
!16169 = distinct !{!16169, i1 true, !"_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding40has_errors_affecting_overload_resolution"}
!16170 = distinct !{!16170, !16169, !"_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding40has_errors_affecting_overload_resolution: argument 0"}
!16171 = distinct !{!16171, i1 true, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1T_8adapters9enumerateINtB2M_9EnumeratepEB1N_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3T_EENCINvNvB1N_4find5checkB4D_QNCNvMs7_BL_NtBL_15CallableBinding18matching_overloads0E0E0B3Y_EBR_"}
!16172 = distinct !{!16172, !16171, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1T_8adapters9enumerateINtB2M_9EnumeratepEB1N_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3T_EENCINvNvB1N_4find5checkB4D_QNCNvMs7_BL_NtBL_15CallableBinding18matching_overloads0E0E0B3Y_EBR_: argument 1"}
!16173 = distinct !{!16173, !16171, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1T_8adapters9enumerateINtB2M_9EnumeratepEB1N_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB3T_EENCINvNvB1N_4find5checkB4D_QNCNvMs7_BL_NtBL_15CallableBinding18matching_overloads0E0E0B3Y_EBR_: argument 0"}
!16174 = distinct !{!16174, i1 true, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBW_15CallableBinding18matching_overloads0INtB7_5FnMutTRTjRNtBW_7BindingEEE8call_mutB12_"}
!16175 = distinct !{!16175, !16174, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs7_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBW_15CallableBinding18matching_overloads0INtB7_5FnMutTRTjRNtBW_7BindingEEE8call_mutB12_: argument 0"}
!16176 = distinct !{!16176, i1 true, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMsq_BS_BQ_27affects_overload_resolutionEBY_"}
!16177 = distinct !{!16177, !16176, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMsq_BS_BQ_27affects_overload_resolutionEBY_: argument 0"}
!16178 = distinct !{!16178, i1 true, !"_RINvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1U_B1S_5itemsEIB1t_NtB1U_12CallableItemEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB3q_uINtNtNtBc_3ops12control_flow11ControlFlowRNtNtB1U_11constructor18ConstructorBindingENCINvNvB4s_8find_map5checkRB3v_B61_QNvMs0_B1U_B3v_14as_constructorE0E0B5m_EB20_"}
!16179 = distinct !{!16179, !16178, !"_RINvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1U_B1S_5itemsEIB1t_NtB1U_12CallableItemEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB3q_uINtNtNtBc_3ops12control_flow11ControlFlowRNtNtB1U_11constructor18ConstructorBindingENCINvNvB4s_8find_map5checkRB3v_B61_QNvMs0_B1U_B3v_14as_constructorE0E0B5m_EB20_: argument 0"}
!16180 = distinct !{!16180, !16178, !"_RINvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1U_B1S_5itemsEIB1t_NtB1U_12CallableItemEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB3q_uINtNtNtBc_3ops12control_flow11ControlFlowRNtNtB1U_11constructor18ConstructorBindingENCINvNvB4s_8find_map5checkRB3v_B61_QNvMs0_B1U_B3v_14as_constructorE0E0B5m_EB20_: argument 1"}
!16181 = distinct !{!16181, i1 true, !"_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEuINtNtNtBg_3ops12control_flow11ControlFlowRNtNtB2A_11constructor18ConstructorBindingENCINvNvB1j_8find_map5checkRB2y_B4o_QNvMs0_B2A_B2y_14as_constructorE0E0B2G_"}
!16182 = distinct !{!16182, !16181, !"_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEuINtNtNtBg_3ops12control_flow11ControlFlowRNtNtB2A_11constructor18ConstructorBindingENCINvNvB1j_8find_map5checkRB2y_B4o_QNvMs0_B2A_B2y_14as_constructorE0E0B2G_: argument 0"}
!16183 = distinct !{!16183, i1 true, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1T_8find_map5checkRBJ_RNtNtBL_11constructor18ConstructorBindingQNvMs0_BL_BJ_14as_constructorE0INtNtNtBa_3ops12control_flow11ControlFlowB3d_EEBR_"}
!16184 = distinct !{!16184, !16183, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1T_8find_map5checkRBJ_RNtNtBL_11constructor18ConstructorBindingQNvMs0_BL_BJ_14as_constructorE0INtNtNtBa_3ops12control_flow11ControlFlowB3d_EEBR_: argument 0"}
!16185 = distinct !{!16185, i1 true, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_"}
!16186 = distinct !{!16186, !16185, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_: argument 0"}
!16187 = distinct !{!16187, i1 true, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemRNtNtB1S_11constructor18ConstructorBindingQNvMs0_B1S_B1Q_14as_constructorE0INtB7_5FnMutTuB1P_EE8call_mutB1Y_"}
!16188 = distinct !{!16188, !16187, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemRNtNtB1S_11constructor18ConstructorBindingQNvMs0_B1S_B1Q_14as_constructorE0INtB7_5FnMutTuB1P_EE8call_mutB1Y_: argument 0"}
!16189 = distinct !{!16189, i1 true, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemRNtNtB1j_11constructor18ConstructorBindingQNvMs0_B1j_B1h_14as_constructorE0B1p_"}
!16190 = distinct !{!16190, !16189, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemRNtNtB1j_11constructor18ConstructorBindingQNvMs0_B1j_B1h_14as_constructorE0B1p_: argument 0"}
!16191 = distinct !{!16191, i1 true, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBU_12CallableItem14as_constructorINtB7_5FnMutTRB1N_EE8call_mutB10_"}
!16192 = distinct !{!16192, !16191, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBU_12CallableItem14as_constructorINtB7_5FnMutTRB1N_EE8call_mutB10_: argument 0"}
!16193 = distinct !{!16193, i1 true, !"_RNvYNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12CallableItem14as_constructorINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_"}
!16194 = distinct !{!16194, !16193, !"_RNvYNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12CallableItem14as_constructorINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_: argument 0"}
!16195 = distinct !{!16195, i1 true, !"_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem14as_constructor"}
!16196 = distinct !{!16196, !16195, !"_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem14as_constructor: argument 0"}
!16197 = distinct !{!16197, i1 true, !"_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1H_B1F_5itemsEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB3S_13FlattenCompatppE13iter_try_fold7flattenIB1g_NtB1H_12CallableItemEuINtNtNtBc_3ops12control_flow11ControlFlowRNtNtB1H_11constructor18ConstructorBindingENCINvNvXsi_B3S_B45_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4R_uB5i_NCINvNvB6X_8find_map5checkRB4W_B5X_QNvMs0_B1H_B4W_14as_constructorE0E0E0B5i_EB1N_"}
!16198 = distinct !{!16198, !16197, !"_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1H_B1F_5itemsEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB3S_13FlattenCompatppE13iter_try_fold7flattenIB1g_NtB1H_12CallableItemEuINtNtNtBc_3ops12control_flow11ControlFlowRNtNtB1H_11constructor18ConstructorBindingENCINvNvXsi_B3S_B45_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4R_uB5i_NCINvNvB6X_8find_map5checkRB4W_B5X_QNvMs0_B1H_B4W_14as_constructorE0E0E0B5i_EB1N_: argument 0"}
!16199 = distinct !{!16199, i1 true, !"_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEuINtNtNtBg_3ops12control_flow11ControlFlowRNtNtB2A_11constructor18ConstructorBindingENCINvNvB1j_8find_map5checkRB2y_B4o_QNvMs0_B2A_B2y_14as_constructorE0E0B2G_"}
!16200 = distinct !{!16200, !16199, !"_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEuINtNtNtBg_3ops12control_flow11ControlFlowRNtNtB2A_11constructor18ConstructorBindingENCINvNvB1j_8find_map5checkRB2y_B4o_QNvMs0_B2A_B2y_14as_constructorE0E0B2G_: argument 0"}
!16201 = distinct !{!16201, i1 true, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1T_8find_map5checkRBJ_RNtNtBL_11constructor18ConstructorBindingQNvMs0_BL_BJ_14as_constructorE0INtNtNtBa_3ops12control_flow11ControlFlowB3d_EEBR_"}
!16202 = distinct !{!16202, !16201, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1T_8find_map5checkRBJ_RNtNtBL_11constructor18ConstructorBindingQNvMs0_BL_BJ_14as_constructorE0INtNtNtBa_3ops12control_flow11ControlFlowB3d_EEBR_: argument 0"}
!16203 = distinct !{!16203, i1 true, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_"}
!16204 = distinct !{!16204, !16203, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_: argument 0"}
!16205 = distinct !{!16205, i1 true, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemRNtNtB1S_11constructor18ConstructorBindingQNvMs0_B1S_B1Q_14as_constructorE0INtB7_5FnMutTuB1P_EE8call_mutB1Y_"}
!16206 = distinct !{!16206, !16205, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemRNtNtB1S_11constructor18ConstructorBindingQNvMs0_B1S_B1Q_14as_constructorE0INtB7_5FnMutTuB1P_EE8call_mutB1Y_: argument 0"}
!16207 = distinct !{!16207, i1 true, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemRNtNtB1j_11constructor18ConstructorBindingQNvMs0_B1j_B1h_14as_constructorE0B1p_"}
!16208 = distinct !{!16208, !16207, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemRNtNtB1j_11constructor18ConstructorBindingQNvMs0_B1j_B1h_14as_constructorE0B1p_: argument 0"}
!16209 = distinct !{!16209, i1 true, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBU_12CallableItem14as_constructorINtB7_5FnMutTRB1N_EE8call_mutB10_"}
!16210 = distinct !{!16210, !16209, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBU_12CallableItem14as_constructorINtB7_5FnMutTRB1N_EE8call_mutB10_: argument 0"}
!16211 = distinct !{!16211, i1 true, !"_RNvYNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12CallableItem14as_constructorINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_"}
!16212 = distinct !{!16212, !16211, !"_RNvYNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12CallableItem14as_constructorINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRB11_EE8call_mutBe_: argument 0"}
!16213 = distinct !{!16213, i1 true, !"_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem14as_constructor"}
!16214 = distinct !{!16214, !16213, !"_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem14as_constructor: argument 0"}
!16215 = distinct !{!16215, i1 true, !"_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings13callable_type"}
!16216 = distinct !{!16216, !16215, !"_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings13callable_type: argument 1"}
!16217 = distinct !{!16217, !16215, !"_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings13callable_type: argument 0"}
!16218 = !{!16007}
!16219 = !{!16013, !16011, !16009}
!16220 = !{!16015}
!16221 = !{!16019, !16017}
!16222 = !{!16021, !16015}
!16223 = !{!16025, !16023, !16019, !16017}
!16224 = !{!16027}
!16225 = !{!16029}
!16226 = !{!16031}
!16227 = !{!16033}
!16228 = !{!16037, !16035, !16033, !16031}
!16229 = !{!16039}
!16230 = !{!16043, !16041, !16039, !16033, !16031}
!16231 = !{!16045}
!16232 = !{!16047}
!16233 = !{!16049}
!16234 = !{!16049, !16047, !16045}
!16235 = !{!16054, !16052, !16051}
!16236 = !{!16056, !16049, !16054, !16047, !16045, !16052, !16051, !16039, !16033, !16031}
!16237 = !{!16058}
!16238 = !{!16060}
!16239 = !{!16062}
!16240 = !{!16062, !16060, !16058}
!16241 = !{!16067, !16065, !16064}
!16242 = !{!16069, !16062, !16067, !16060, !16058, !16065, !16064, !16039, !16033, !16031}
!16243 = !{!16033, !16031}
!16244 = !{!16071}
!16245 = !{!16073, !16072, !16071}
!16246 = !{!16073, !16072}
!16247 = !{!16078, !16076, !16071}
!16248 = !{!16072}
!16249 = !{!16080}
!16250 = !{!16080, !16081, !16072}
!16251 = !{!16083, !16080}
!16252 = !{!16085}
!16253 = !{!16089, !16087, !16085}
!16254 = !{!16091, !16085, !16072}
!16255 = !{!16095}
!16256 = !{!16097}
!16257 = !{!16099}
!16258 = !{!16103, !16101, !16099, !16097}
!16259 = !{!16105}
!16260 = !{!16109, !16107, !16105, !16099, !16097}
!16261 = !{!16111}
!16262 = !{!16113}
!16263 = !{!16115}
!16264 = !{!16115, !16113, !16111}
!16265 = !{!16120, !16118, !16117, !16072}
!16266 = !{!16122, !16115, !16120, !16113, !16111, !16118, !16117, !16105, !16099, !16097, !16072}
!16267 = !{!16124}
!16268 = !{!16126}
!16269 = !{!16128}
!16270 = !{!16128, !16126, !16124}
!16271 = !{!16133, !16131, !16130, !16072}
!16272 = !{!16135, !16128, !16133, !16126, !16124, !16131, !16130, !16105, !16099, !16097, !16072}
!16273 = !{!16099, !16097}
!16274 = !{!16137}
!16275 = !{!16139}
!16276 = !{!16141}
!16277 = !{!16145, !16143, !16141, !16139}
!16278 = !{!16147}
!16279 = !{!16151, !16149, !16147, !16141, !16139}
!16280 = !{!16153}
!16281 = !{!16155}
!16282 = !{!16157}
!16283 = !{!16157, !16155, !16153}
!16284 = !{!16162, !16160, !16159}
!16285 = !{!16164, !16157, !16162, !16155, !16153, !16160, !16159, !16147, !16141, !16139}
!16286 = !{!16166}
!16287 = !{!16168}
!16288 = !{!16170}
!16289 = !{!16170, !16168, !16166}
!16290 = !{!16175, !16173, !16172}
!16291 = !{!16177, !16170, !16175, !16168, !16166, !16173, !16172, !16147, !16141, !16139}
!16292 = !{!16141, !16139}
!16293 = !{!16179}
!16294 = !{!16179, !16180}
!16295 = !{!16182}
!16296 = !{!16184}
!16297 = !{!16186, !16184, !16182, !16179}
!16298 = !{!16196, !16194, !16192, !16190, !16188}
!16299 = !{!16184, !16182, !16179}
!16300 = !{!16198, !16179}
!16301 = !{!16200}
!16302 = !{!16202}
!16303 = !{!16204, !16202, !16200, !16179}
!16304 = !{!16214, !16212, !16210, !16208, !16206}
!16305 = !{!16202, !16200}
!16306 = !{!16217, !16216}
!16307 = distinct !{!16307, i1 true, !"_RINvXss_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemj1_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB23_8adapters3map3MapINtB6_8IntoIterBI_ENCNvMs3_BL_NtBL_8Bindings25into_constructor_bindings0EEBR_"}
!16308 = distinct !{!16308, !16307, !"_RINvXss_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemj1_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB23_8adapters3map3MapINtB6_8IntoIterBI_ENCNvMs3_BL_NtBL_8Bindings25into_constructor_bindings0EEBR_: argument 1"}
!16309 = distinct !{!16309, !16307, !"_RINvXss_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemj1_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB23_8adapters3map3MapINtB6_8IntoIterBI_ENCNvMs3_BL_NtBL_8Bindings25into_constructor_bindings0EEBR_: argument 0"}
!16310 = distinct !{!16310, i1 true, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemj1_E3newBQ_"}
!16311 = distinct !{!16311, !16310, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemj1_E3newBQ_: argument 0"}
!16312 = !{!16309, !16308}
!16313 = !{!16311}
!16314 = !{!16309}
!16315 = !{!16308}
!16316 = distinct !{!16316, i1 true, !"_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings23iter_callable_items_mut"}
!16317 = distinct !{!16317, !16316, !"_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings23iter_callable_items_mut: argument 1"}
!16318 = distinct !{!16318, i1 true, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_E10triple_mutBQ_"}
!16319 = distinct !{!16319, !16318, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_E10triple_mutBQ_: argument 1"}
!16320 = distinct !{!16320, i1 true, !"_RNvYNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_15BindingsElement9items_mutINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTQB11_EE8call_mutBe_"}
!16321 = distinct !{!16321, !16320, !"_RNvYNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_15BindingsElement9items_mutINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTQB11_EE8call_mutBe_: argument 0"}
!16322 = distinct !{!16322, i1 true, !"_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement9items_mut"}
!16323 = distinct !{!16323, !16322, !"_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement9items_mut: argument 0"}
!16324 = distinct !{!16324, i1 true, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemj1_E10triple_mutBQ_"}
!16325 = distinct !{!16325, !16324, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemj1_E10triple_mutBQ_: argument 1"}
!16326 = distinct !{!16326, i1 true, !"_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1W_B1U_9items_mutEIB1s_NtB1W_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB22_"}
!16327 = distinct !{!16327, !16326, !"_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1W_B1U_9items_mutEIB1s_NtB1W_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB22_: argument 0"}
!16328 = distinct !{!16328, i1 true, !"_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1J_B1H_9items_mutEEINtB5_8FuseImplBY_E4nextB1P_"}
!16329 = distinct !{!16329, !16328, !"_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1J_B1H_9items_mutEEINtB5_8FuseImplBY_E4nextB1P_: argument 0"}
!16330 = distinct !{!16330, i1 true, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1r_B1p_9items_mutENtNtNtB9_6traits8iterator8Iterator4nextB1x_"}
!16331 = distinct !{!16331, !16330, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1r_B1p_9items_mutENtNtNtB9_6traits8iterator8Iterator4nextB1x_: argument 0"}
!16332 = distinct !{!16332, i1 true, !"_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem16match_parameters"}
!16333 = distinct !{!16333, !16332, !"_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem16match_parameters: argument 0"}
!16334 = distinct !{null, null}
!16335 = distinct !{!16335, i1 true, !"_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind11constructorNtB2_18ConstructorBinding16match_parameters"}
!16336 = distinct !{!16336, !16335, !"_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind11constructorNtB2_18ConstructorBinding16match_parameters: argument 0"}
!16337 = distinct !{null}
!16338 = !{!16319, !16317}
!16339 = !{!16317}
!16340 = !{!16325, !16323, !16321}
!16341 = !{!16331, !16329, !16327}
!16342 = !{!16323, !16321}
!16343 = !{!16333}
!16344 = !{!16336}
!16345 = distinct !{!16345, i1 true, !"_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings19iter_callable_items"}
!16346 = distinct !{!16346, !16345, !"_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings19iter_callable_items: argument 0"}
!16347 = distinct !{!16347, !16345, !"_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings19iter_callable_items: argument 1"}
!16348 = distinct !{!16348, i1 true, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_E6tripleBQ_"}
!16349 = distinct !{!16349, !16348, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_E6tripleBQ_: argument 1"}
!16350 = distinct !{!16350, i1 true, !"_RINvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1U_B1S_5itemsEIB1t_NtB1U_12CallableItemEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB3q_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB4s_3all5checkRB3v_NCNvMs3_B1U_NtB1U_8Bindings26has_only_constructor_items0E0E0B5m_EB20_"}
!16351 = distinct !{!16351, !16350, !"_RINvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1U_B1S_5itemsEIB1t_NtB1U_12CallableItemEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB3q_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB4s_3all5checkRB3v_NCNvMs3_B1U_NtB1U_8Bindings26has_only_constructor_items0E0E0B5m_EB20_: argument 0"}
!16352 = distinct !{!16352, i1 true, !"_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvB1j_3all5checkRB2y_NCNvMs3_B2A_NtB2A_8Bindings26has_only_constructor_items0E0E0B2G_"}
!16353 = distinct !{!16353, !16352, !"_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvB1j_3all5checkRB2y_NCNvMs3_B2A_NtB2A_8Bindings26has_only_constructor_items0E0E0B2G_: argument 0"}
!16354 = distinct !{!16354, i1 true, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1T_3all5checkRBJ_NCNvMs3_BL_NtBL_8Bindings26has_only_constructor_items0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEBR_"}
!16355 = distinct !{!16355, !16354, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1T_3all5checkRBJ_NCNvMs3_BL_NtBL_8Bindings26has_only_constructor_items0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEBR_: argument 0"}
!16356 = distinct !{!16356, i1 true, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_"}
!16357 = distinct !{!16357, !16356, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_: argument 0"}
!16358 = distinct !{!16358, i1 true, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3all5checkRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemNCNvMs3_B1N_NtB1N_8Bindings26has_only_constructor_items0E0INtB7_5FnMutTuB1K_EE8call_mutB1T_"}
!16359 = distinct !{!16359, !16358, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3all5checkRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemNCNvMs3_B1N_NtB1N_8Bindings26has_only_constructor_items0E0INtB7_5FnMutTuB1K_EE8call_mutB1T_: argument 0"}
!16360 = !{!16346}
!16361 = !{!16347}
!16362 = !{!16349, !16347}
!16363 = !{!16351}
!16364 = !{!16353}
!16365 = !{!16355}
!16366 = !{!16357, !16355, !16353, !16351}
!16367 = !{!16359}
!16368 = !{!16355, !16353}
!16369 = distinct !{!16369, i1 true, !"_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings23iter_callable_items_mut"}
!16370 = distinct !{!16370, !16369, !"_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings23iter_callable_items_mut: argument 1"}
!16371 = distinct !{!16371, i1 true, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_E10triple_mutBQ_"}
!16372 = distinct !{!16372, !16371, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_E10triple_mutBQ_: argument 1"}
!16373 = distinct !{!16373, i1 true, !"_RNvYNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_15BindingsElement9items_mutINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTQB11_EE8call_mutBe_"}
!16374 = distinct !{!16374, !16373, !"_RNvYNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_15BindingsElement9items_mutINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTQB11_EE8call_mutBe_: argument 0"}
!16375 = distinct !{!16375, i1 true, !"_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement9items_mut"}
!16376 = distinct !{!16376, !16375, !"_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement9items_mut: argument 0"}
!16377 = distinct !{!16377, i1 true, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemj1_E10triple_mutBQ_"}
!16378 = distinct !{!16378, !16377, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemj1_E10triple_mutBQ_: argument 1"}
!16379 = distinct !{!16379, i1 true, !"_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1W_B1U_9items_mutEIB1s_NtB1W_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB22_"}
!16380 = distinct !{!16380, !16379, !"_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1W_B1U_9items_mutEIB1s_NtB1W_12CallableItemEENtNtNtB9_6traits8iterator8Iterator4nextB22_: argument 0"}
!16381 = distinct !{!16381, i1 true, !"_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1J_B1H_9items_mutEEINtB5_8FuseImplBY_E4nextB1P_"}
!16382 = distinct !{!16382, !16381, !"_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1J_B1H_9items_mutEEINtB5_8FuseImplBY_E4nextB1P_: argument 0"}
!16383 = distinct !{!16383, i1 true, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1r_B1p_9items_mutENtNtNtB9_6traits8iterator8Iterator4nextB1x_"}
!16384 = distinct !{!16384, !16383, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1r_B1p_9items_mutENtNtNtB9_6traits8iterator8Iterator4nextB1x_: argument 0"}
!16385 = distinct !{!16385, i1 true, !"_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem26set_downstream_constructor"}
!16386 = distinct !{!16386, !16385, !"_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem26set_downstream_constructor: argument 0"}
!16387 = distinct !{!16387, !16385, !"_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem26set_downstream_constructor: argument 1"}
!16388 = distinct !{!16388, i1 true, !"_RNvXsK_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8BindingsNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone"}
!16389 = distinct !{!16389, !16388, !"_RNvXsK_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8BindingsNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone: argument 0"}
!16390 = distinct !{!16390, !16388, !"_RNvXsK_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8BindingsNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone: argument 1"}
!16391 = distinct !{!16391, i1 true, !"_RNvXsx_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBQ_"}
!16392 = distinct !{!16392, !16391, !"_RNvXsx_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBQ_: argument 1"}
!16393 = distinct !{!16393, !16391, !"_RNvXsx_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBQ_: argument 0"}
!16394 = distinct !{!16394, i1 true, !"_RINvXss_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB26_8adapters6cloned6ClonedINtNtNtB28_5slice4iter4IterBJ_EEEBR_"}
!16395 = distinct !{!16395, !16394, !"_RINvXss_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB26_8adapters6cloned6ClonedINtNtNtB28_5slice4iter4IterBJ_EEEBR_: argument 0"}
!16396 = distinct !{!16396, i1 true, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_E3newBQ_"}
!16397 = distinct !{!16397, !16396, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_E3newBQ_: argument 0"}
!16398 = distinct !{!16398, i1 true, !"_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind11constructorNtB2_18ConstructorBinding26set_downstream_constructor"}
!16399 = distinct !{!16399, !16398, !"_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind11constructorNtB2_18ConstructorBinding26set_downstream_constructor: argument 0"}
!16400 = distinct !{!16400, !16398, !"_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind11constructorNtB2_18ConstructorBinding26set_downstream_constructor: argument 1"}
!16401 = distinct !{!16401, i1 true, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsE3newBL_"}
!16402 = distinct !{!16402, !16401, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsE3newBL_: argument 0"}
!16403 = !{!16372, !16370}
!16404 = !{!16370}
!16405 = !{!16378, !16376, !16374}
!16406 = !{!16384, !16382, !16380}
!16407 = !{!16376, !16374}
!16408 = !{!16386}
!16409 = !{!16386, !16387}
!16410 = !{!16389}
!16411 = !{!16390}
!16412 = !{!16389, !16390, !16386, !16387}
!16413 = !{!16395, !16393, !16392, !16389, !16390, !16386, !16387}
!16414 = !{!16397}
!16415 = !{!16395, !16393, !16389, !16386}
!16416 = !{!16392, !16389, !16390, !16386, !16387}
!16417 = !{!16389, !16386}
!16418 = !{!16389, !16390}
!16419 = !{!16390, !16386, !16387}
!16420 = !{!16399}
!16421 = !{!16402, !16399, !16400, !16386}
!16422 = !{!16399, !16400, !16386}
!16423 = !{!16399, !16386}
!16424 = distinct !{!16424, i1 true, !"_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings26iter_constructor_items_mut"}
!16425 = distinct !{!16425, !16424, !"_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings26iter_constructor_items_mut: argument 1"}
!16426 = distinct !{!16426, i1 true, !"_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings23iter_callable_items_mut"}
!16427 = distinct !{!16427, !16426, !"_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings23iter_callable_items_mut: argument 1"}
!16428 = distinct !{!16428, i1 true, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_E10triple_mutBQ_"}
!16429 = distinct !{!16429, !16428, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_E10triple_mutBQ_: argument 1"}
!16430 = distinct !{!16430, i1 true, !"_RINvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1X_B1V_9items_mutEIB1t_NtB1X_12CallableItemEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB3x_uINtNtNtBc_3ops12control_flow11ControlFlowQNtNtB1X_11constructor18ConstructorBindingENCINvNvB4z_8find_map5checkQB3C_B68_QNvMs0_B1X_B3C_18as_constructor_mutE0E0B5t_EB23_"}
!16431 = distinct !{!16431, !16430, !"_RINvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1X_B1V_9items_mutEIB1t_NtB1X_12CallableItemEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB3x_uINtNtNtBc_3ops12control_flow11ControlFlowQNtNtB1X_11constructor18ConstructorBindingENCINvNvB4z_8find_map5checkQB3C_B68_QNvMs0_B1X_B3C_18as_constructor_mutE0E0B5t_EB23_: argument 0"}
!16432 = distinct !{!16432, !16430, !"_RINvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1X_B1V_9items_mutEIB1t_NtB1X_12CallableItemEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB3x_uINtNtNtBc_3ops12control_flow11ControlFlowQNtNtB1X_11constructor18ConstructorBindingENCINvNvB4z_8find_map5checkQB3C_B68_QNvMs0_B1X_B3C_18as_constructor_mutE0E0B5t_EB23_: argument 1"}
!16433 = distinct !{!16433, i1 true, !"_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEuINtNtNtBg_3ops12control_flow11ControlFlowQNtNtB2D_11constructor18ConstructorBindingENCINvNvB1j_8find_map5checkQB2B_B4r_QNvMs0_B2D_B2B_18as_constructor_mutE0E0B2J_"}
!16434 = distinct !{!16434, !16433, !"_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEuINtNtNtBg_3ops12control_flow11ControlFlowQNtNtB2D_11constructor18ConstructorBindingENCINvNvB1j_8find_map5checkQB2B_B4r_QNvMs0_B2D_B2B_18as_constructor_mutE0E0B2J_: argument 0"}
!16435 = distinct !{!16435, i1 true, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1W_8find_map5checkQBM_QNtNtBO_11constructor18ConstructorBindingQNvMs0_BO_BM_18as_constructor_mutE0INtNtNtBa_3ops12control_flow11ControlFlowB3g_EEBU_"}
!16436 = distinct !{!16436, !16435, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1W_8find_map5checkQBM_QNtNtBO_11constructor18ConstructorBindingQNvMs0_BO_BM_18as_constructor_mutE0INtNtNtBa_3ops12control_flow11ControlFlowB3g_EEBU_: argument 0"}
!16437 = distinct !{!16437, i1 true, !"_RNvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENtNtNtNtBa_4iter6traits8iterator8Iterator4nextB10_"}
!16438 = distinct !{!16438, !16437, !"_RNvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENtNtNtNtBa_4iter6traits8iterator8Iterator4nextB10_: argument 0"}
!16439 = distinct !{!16439, i1 true, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkQNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemQNtNtB1S_11constructor18ConstructorBindingQNvMs0_B1S_B1Q_18as_constructor_mutE0INtB7_5FnMutTuB1P_EE8call_mutB1Y_"}
!16440 = distinct !{!16440, !16439, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkQNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemQNtNtB1S_11constructor18ConstructorBindingQNvMs0_B1S_B1Q_18as_constructor_mutE0INtB7_5FnMutTuB1P_EE8call_mutB1Y_: argument 0"}
!16441 = distinct !{!16441, i1 true, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkQNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemQNtNtB1j_11constructor18ConstructorBindingQNvMs0_B1j_B1h_18as_constructor_mutE0B1p_"}
!16442 = distinct !{!16442, !16441, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkQNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemQNtNtB1j_11constructor18ConstructorBindingQNvMs0_B1j_B1h_18as_constructor_mutE0B1p_: argument 0"}
!16443 = distinct !{!16443, i1 true, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBU_12CallableItem18as_constructor_mutINtB7_5FnMutTQB1N_EE8call_mutB10_"}
!16444 = distinct !{!16444, !16443, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBU_12CallableItem18as_constructor_mutINtB7_5FnMutTQB1N_EE8call_mutB10_: argument 0"}
!16445 = distinct !{!16445, i1 true, !"_RNvYNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12CallableItem18as_constructor_mutINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTQB11_EE8call_mutBe_"}
!16446 = distinct !{!16446, !16445, !"_RNvYNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12CallableItem18as_constructor_mutINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTQB11_EE8call_mutBe_: argument 0"}
!16447 = distinct !{!16447, i1 true, !"_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem18as_constructor_mut"}
!16448 = distinct !{!16448, !16447, !"_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem18as_constructor_mut: argument 0"}
!16449 = distinct !{!16449, i1 true, !"_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1K_B1I_9items_mutEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB3Z_13FlattenCompatppE13iter_try_fold7flattenIB1g_NtB1K_12CallableItemEuINtNtNtBc_3ops12control_flow11ControlFlowQNtNtB1K_11constructor18ConstructorBindingENCINvNvXsi_B3Z_B4c_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4Y_uB5p_NCINvNvB74_8find_map5checkQB53_B64_QNvMs0_B1K_B53_18as_constructor_mutE0E0E0B5p_EB1Q_"}
!16450 = distinct !{!16450, !16449, !"_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtBc_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementENvMs1_B1K_B1I_9items_mutEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB3Z_13FlattenCompatppE13iter_try_fold7flattenIB1g_NtB1K_12CallableItemEuINtNtNtBc_3ops12control_flow11ControlFlowQNtNtB1K_11constructor18ConstructorBindingENCINvNvXsi_B3Z_B4c_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4Y_uB5p_NCINvNvB74_8find_map5checkQB53_B64_QNvMs0_B1K_B53_18as_constructor_mutE0E0E0B5p_EB1Q_: argument 0"}
!16451 = distinct !{!16451, i1 true, !"_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEuINtNtNtBg_3ops12control_flow11ControlFlowQNtNtB2D_11constructor18ConstructorBindingENCINvNvB1j_8find_map5checkQB2B_B4r_QNvMs0_B2D_B2B_18as_constructor_mutE0E0B2J_"}
!16452 = distinct !{!16452, !16451, !"_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemEuINtNtNtBg_3ops12control_flow11ControlFlowQNtNtB2D_11constructor18ConstructorBindingENCINvNvB1j_8find_map5checkQB2B_B4r_QNvMs0_B2D_B2B_18as_constructor_mutE0E0B2J_: argument 0"}
!16453 = distinct !{!16453, i1 true, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1W_8find_map5checkQBM_QNtNtBO_11constructor18ConstructorBindingQNvMs0_BO_BM_18as_constructor_mutE0INtNtNtBa_3ops12control_flow11ControlFlowB3g_EEBU_"}
!16454 = distinct !{!16454, !16453, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1W_8find_map5checkQBM_QNtNtBO_11constructor18ConstructorBindingQNvMs0_BO_BM_18as_constructor_mutE0INtNtNtBa_3ops12control_flow11ControlFlowB3g_EEBU_: argument 0"}
!16455 = distinct !{!16455, i1 true, !"_RNvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENtNtNtNtBa_4iter6traits8iterator8Iterator4nextB10_"}
!16456 = distinct !{!16456, !16455, !"_RNvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_7IterMutNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemENtNtNtNtBa_4iter6traits8iterator8Iterator4nextB10_: argument 0"}
!16457 = distinct !{!16457, i1 true, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkQNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemQNtNtB1S_11constructor18ConstructorBindingQNvMs0_B1S_B1Q_18as_constructor_mutE0INtB7_5FnMutTuB1P_EE8call_mutB1Y_"}
!16458 = distinct !{!16458, !16457, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkQNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemQNtNtB1S_11constructor18ConstructorBindingQNvMs0_B1S_B1Q_18as_constructor_mutE0INtB7_5FnMutTuB1P_EE8call_mutB1Y_: argument 0"}
!16459 = distinct !{!16459, i1 true, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkQNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemQNtNtB1j_11constructor18ConstructorBindingQNvMs0_B1j_B1h_18as_constructor_mutE0B1p_"}
!16460 = distinct !{!16460, !16459, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkQNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemQNtNtB1j_11constructor18ConstructorBindingQNvMs0_B1j_B1h_18as_constructor_mutE0B1p_: argument 0"}
!16461 = distinct !{!16461, i1 true, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBU_12CallableItem18as_constructor_mutINtB7_5FnMutTQB1N_EE8call_mutB10_"}
!16462 = distinct !{!16462, !16461, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtBU_12CallableItem18as_constructor_mutINtB7_5FnMutTQB1N_EE8call_mutB10_: argument 0"}
!16463 = distinct !{!16463, i1 true, !"_RNvYNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12CallableItem18as_constructor_mutINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTQB11_EE8call_mutBe_"}
!16464 = distinct !{!16464, !16463, !"_RNvYNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB8_12CallableItem18as_constructor_mutINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTQB11_EE8call_mutBe_: argument 0"}
!16465 = distinct !{!16465, i1 true, !"_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem18as_constructor_mut"}
!16466 = distinct !{!16466, !16465, !"_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_12CallableItem18as_constructor_mut: argument 0"}
!16467 = distinct !{!16467, i1 true, !"_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind11constructorNtB2_18ConstructorBinding30discard_downstream_constructor"}
!16468 = distinct !{!16468, !16467, !"_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind11constructorNtB2_18ConstructorBinding30discard_downstream_constructor: argument 0"}
!16469 = distinct !{!16469, i1 true, !"_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement17retain_successful"}
!16470 = distinct !{!16470, !16469, !"_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement17retain_successful: argument 0"}
!16471 = distinct !{!16471, i1 true, !"_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement15is_intersection"}
!16472 = distinct !{!16472, !16471, !"_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_15BindingsElement15is_intersection: argument 0"}
!16473 = distinct !{!16473, i1 true, !"_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12CallableItemj1_E6tripleBQ_"}
end_hunk_5
