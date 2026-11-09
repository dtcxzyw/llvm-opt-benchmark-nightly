Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_io-49c95113d69d0886.polars_io.f964ffef671f36be-cgu.12?download=true
inline.NumInlined: 3542
inline.NumDeleted: 1478
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCslpwjCj2YNBy_9polars_io4hive27materialize_hive_partitionsNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2T_EEB4_:bb.a
  %i.be = icmp ult i64 %i.bd, 57646075230342349, !dbg !20804
  call void @llvm.assume(i1 %i.be), !dbg !20805
  %i.bf = add nuw nsw i64 %i.bd, %i.ba, !dbg !20806 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !20807
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %i.bf, i1 noundef zeroext false, i64 noundef 16, i64 noundef 160)
          to label %bb.r unwind label %.thread, !dbg !20807

bb.q:                                             ; preds = %bb.n
  br i1 %i.bc, label %.thread70, label %bb.be, !dbg !20808

bb.r:                                             ; preds = %bb.p
  %i.bg = load i64, ptr %i.i, align 8, !dbg !20807, !range !1465, !noundef !1351
  %i.bh = trunc nuw i64 %i.bg to i1, !dbg !20809
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !20810
  %i.bj = load i64, ptr %i.bi, align 8, !dbg !20810, !range !1595, !noundef !1351 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !20810 ; 2 uses
  br i1 %i.bh, label %bb.s, label %bb.t, !dbg !20809, !prof !1363

bb.s:                                             ; preds = %bb.r
  %i.bl = load i64, ptr %i.bk, align 8, !dbg !20811
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bj, i64 %i.bl) #41
          to label %bb.g unwind label %.thread, !dbg !20812

bb.t:                                             ; preds = %bb.r
  %i.bm = load ptr, ptr %i.bk, align 8, !dbg !20813, !nonnull !1351, !noundef !1351
  %i.bn = icmp samesign ule i64 %i.bf, %i.bj, !dbg !20814
  call void @llvm.assume(i1 %i.bn), !dbg !20815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !20816
  store i64 %i.bj, ptr %i.l, align 8, !dbg !20817
  %i.bo = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !20817
  store ptr %i.bm, ptr %i.bo, align 8, !dbg !20817
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !20817
  store i64 0, ptr %i.bp, align 8, !dbg !20817
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !20818
  call void @llvm.experimental.noalias.scope.decl(metadata !20698), !dbg !20819
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !20820 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20700), !dbg !20820
  call void @llvm.experimental.noalias.scope.decl(metadata !20701), !dbg !20821
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !20822 ; 5 uses
  %.val.i.i.i = load i32, ptr %i.br, align 8, !dbg !20822, !alias.scope !20702, !noundef !1351
  switch i32 %.val.i.i.i, label %bb.u [
    i32 3, label %bb.z
    i32 2, label %bb.z
    i32 0, label %bb.v
  ], !dbg !20823, !prof !1426

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @335, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @337) #44
          to label %.noexc.i unwind label %bb.x, !dbg !20824, !noalias !20698

.noexc.i:                                         ; preds = %bb.u
  unreachable, !dbg !20824

bb.v:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !20703), !dbg !20825
  call void @llvm.experimental.noalias.scope.decl(metadata !20704), !dbg !20826
  %i.bs = load ptr, ptr %i.bq, align 8, !dbg !20827, !alias.scope !20705, !nonnull !1351, !noundef !1351
  %i.bt = atomicrmw add ptr %i.bs, i64 -1 release, align 8, !dbg !20828, !noalias !20705
  %i.bu = icmp eq i64 %i.bt, 1, !dbg !20829
  br i1 %i.bu, label %bb.w, label %bb.z, !dbg !20829

bb.w:                                             ; preds = %bb.v
  fence acquire, !dbg !20830
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bq) #45
          to label %bb.z unwind label %bb.x, !dbg !20831

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.bv = landingpad { ptr, i32 }
          cleanup
  store i32 3, ptr %i.br, align 8, !dbg !20820, !alias.scope !20698
  br label %bb.bd, !dbg !20832

.thread51:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec5drain5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECslpwjCj2YNBy_9polars_io.exit33
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04, i64 24, i1 false), !dbg !20833
  store i64 %i.gf, ptr %i.p, align 8, !dbg !20833
  store i32 3, ptr %i.br, align 8, !dbg !20833
  br label %common.resume, !dbg !20766

bb.y:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECslpwjCj2YNBy_9polars_io.exit32, %bb.z
  %.sroa.09.2 = phi i1 [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECslpwjCj2YNBy_9polars_io.exit32 ], [ true, %bb.z ], !dbg !20834
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.z:                                             ; preds = %bb.w, %bb.v, %bb.t, %bb.t
  store i32 3, ptr %i.br, align 8, !dbg !20820, !alias.scope !20698
  invoke void @_RINvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE5drainNtNtNtCscgRAwXFJnXP_4core3ops5range9RangeFullECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.aa unwind label %bb.y, !dbg !20835

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !20836
  %i.by = load ptr, ptr %i.v, align 8, !dbg !20836, !nonnull !1351, !noundef !1351 ; 3 uses
  %i.bz = load i64, ptr %i.n, align 8, !dbg !20836, !range !1651, !noundef !1351
  %i.ca = load i64, ptr %i.x, align 8, !dbg !20836, !noundef !1351 ; 2 uses
  %i.cb = icmp ult i64 %i.ca, 57646075230342349, !dbg !20837
  call void @llvm.assume(i1 %i.cb), !dbg !20838
  %i.cc = getelementptr inbounds nuw [160 x i8], ptr %i.by, i64 %i.ca, !dbg !20839
  store ptr %i.by, ptr %i.j, align 8, !dbg !20840
  %i.cd = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !20840
  store i64 %i.bz, ptr %i.cd, align 8, !dbg !20840
  %i.ce = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !20840
  store ptr %i.by, ptr %i.ce, align 8, !dbg !20840
  %i.cf = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !20840
  store ptr %i.cc, ptr %i.cf, align 8, !dbg !20840
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !20841, !noalias !20709
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 160, !dbg !20842 ; 3 uses
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i, align 16, !dbg !20842, !noalias !20709
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 168, !dbg !20842 ; 3 uses
  store ptr @21, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !20842, !noalias !20709
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 176, !dbg !20842 ; 7 uses
  store i8 33, ptr %i.cg, align 16, !dbg !20842, !noalias !20709
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 336, !dbg !20842 ; 4 uses
  store ptr %i.j, ptr %.sroa.42.0..sroa_idx.i, align 16, !dbg !20842, !noalias !20709
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 344, !dbg !20842 ; 4 uses
  store ptr @22, ptr %.sroa.53.0..sroa_idx.i, align 8, !dbg !20842, !noalias !20709
  call void @llvm.experimental.noalias.scope.decl(metadata !20711), !dbg !20843
  call void @llvm.experimental.noalias.scope.decl(metadata !20719), !dbg !20843
  %i.ch = load ptr, ptr %i.k, align 8, !dbg !20844, !alias.scope !20719, !noalias !20709, !nonnull !1351, !noundef !1351 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !20845
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !20845, !alias.scope !20719, !noalias !20709, !nonnull !1351, !noundef !1351
  %i.ck = icmp eq ptr %i.ch, %i.cj, !dbg !20846
  br i1 %i.ck, label %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.thread.i, label %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i, !dbg !20847

_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.thread.i: ; preds = %bb.aa
  store i8 32, ptr %i.h, align 16, !dbg !20848, !alias.scope !20711, !noalias !20709
  br label %.thread.i, !dbg !20849

_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i: ; preds = %bb.aa
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 160, !dbg !20850
  store ptr %i.cl, ptr %i.k, align 8, !dbg !20851, !alias.scope !20719, !noalias !20709
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.h, ptr noundef nonnull align 16 dereferenceable(160) %i.ch, i64 160, i1 false), !dbg !20852, !noalias !20720
  %.pr.i = load i8, ptr %i.h, align 16, !dbg !20853, !noalias !20721 ; 2 uses
  %i.cm = icmp ne i8 %.pr.i, 33, !dbg !20853
  call void @llvm.assume(i1 %i.cm), !dbg !20854
  switch i8 %.pr.i, label %bb.ab [
    i8 32, label %.thread.i
    i8 31, label %bb.ac
  ], !dbg !20849

bb.ab:                                            ; preds = %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 96, !dbg !20855
  br label %.noexc.i28, !dbg !20856

bb.ac:                                            ; preds = %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !20857
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !20857, !noalias !20725, !nonnull !1351, !noundef !1351
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !20857
  %i.cr = load ptr, ptr %i.cq, align 16, !dbg !20857, !noalias !20725, !nonnull !1351, !align !1458, !noundef !1351 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16, !dbg !20858
  %i.ct = load i64, ptr %i.cs, align 8, !dbg !20858, !range !1459, !invariant.load !1351, !noalias !20725
  %i.cu = add nsw i64 %i.ct, -1, !dbg !20858
  %i.cv = and i64 %i.cu, -16, !dbg !20858
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cv, !dbg !20858
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16, !dbg !20858
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 288, !dbg !20859
  %i.cz = load ptr, ptr %i.cy, align 8, !dbg !20859, !invariant.load !1351, !noalias !20725, !nonnull !1351
  %i.da = invoke noundef nonnull align 8 ptr %i.cz(ptr noundef nonnull %i.cx) #46
          to label %.noexc.i28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20860, !noalias !20709, !inline_history !20508

.noexc.i28:                                       ; preds = %bb.ac, %bb.ab
  %.sroa.0.0.i.i29 = phi ptr [ %i.cn, %bb.ab ], [ %i.da, %bb.ac ], !dbg !20861 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i29, i64 23, !dbg !20862
  %i.dc = load i8, ptr %i.db, align 1, !dbg !20862, !range !1500, !alias.scope !20726, !noalias !20725, !noundef !1351 ; 2 uses
  %i.dd = icmp ugt i8 %i.dc, -41, !dbg !20863
  br i1 %i.dd, label %bb.ae, label %bb.ad, !dbg !20863

bb.ad:                                            ; preds = %.noexc.i28
  %i.de = add i8 %i.dc, 64, !dbg !20864
  %i.df = call i8 @llvm.umin.i8(i8 %i.de, i8 24), !dbg !20865
  %.sroa.0.0.i.i.i.i = zext nneg i8 %i.df to i64, !dbg !20865
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i, !dbg !20866

bb.ae:                                            ; preds = %.noexc.i28
  %i.dg = load ptr, ptr %.sroa.0.0.i.i29, align 8, !dbg !20867, !alias.scope !20726, !noalias !20725, !noundef !1351
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i29, i64 8, !dbg !20868
  %i.di = load i64, ptr %i.dh, align 8, !dbg !20868, !alias.scope !20726, !noalias !20725, !noundef !1351
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i, !dbg !20869

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i: ; preds = %bb.ae, %bb.ad
  %.sroa.01.0.i.i.i = phi i64 [ %i.di, %bb.ae ], [ %.sroa.0.0.i.i.i.i, %bb.ad ], !dbg !20870
  %.sroa.0.0.i.i.i = phi ptr [ %i.dg, %bb.ae ], [ %.sroa.0.0.i.i29, %bb.ad ], !dbg !20871
  %i.dj = invoke { i64, i64 } @_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE12get_index_ofeECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i, i64 noundef %.sroa.01.0.i.i.i)
          to label %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0B6_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20872, !noalias !20709 ; 2 uses

_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0B6_.exit.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i
  %i.dk = extractvalue { i64, i64 } %i.dj, 0, !dbg !20873
  %i.dl = extractvalue { i64, i64 } %i.dj, 1, !dbg !20873
  %i.dm = trunc nuw i64 %i.dk to i1, !dbg !20874
  %spec.select.i.i = select i1 %i.dm, i64 %i.dl, i64 0, !dbg !20874 ; 2 uses
  %.pre.i = load i8, ptr %i.cg, align 16, !dbg !20875, !range !1695, !noalias !20721 ; 2 uses
  %.not.i35.i.i = icmp eq i8 %.pre.i, 33, !dbg !20875
  br i1 %.not.i35.i.i, label %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0B6_.exit..thread_crit_edge.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB27_8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBM_EL_E4peek0ECslpwjCj2YNBy_9polars_io.exit36.i.i, !dbg !20876

_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0B6_.exit..thread_crit_edge.i: ; preds = %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0B6_.exit.i
  %.val32.i.pre.i = load ptr, ptr %.sroa.53.0..sroa_idx.i, align 8, !dbg !20877, !noalias !20721
  %.val31.i.pre.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 16, !dbg !20877, !noalias !20721
  br label %.thread.i, !dbg !20876

.thread.i:                                        ; preds = %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i, %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0B6_.exit..thread_crit_edge.i, %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.thread.i
  %.val31.i.i = phi ptr [ %.val31.i.pre.i, %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0B6_.exit..thread_crit_edge.i ], [ %i.j, %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i ], [ %i.j, %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.thread.i ], !dbg !20877
  %.val32.i.i = phi ptr [ %.val32.i.pre.i, %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0B6_.exit..thread_crit_edge.i ], [ @22, %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i ], [ @22, %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.thread.i ], !dbg !20877
  %.not.i12.i = phi i1 [ true, %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0B6_.exit..thread_crit_edge.i ], [ false, %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i ], [ false, %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.thread.i ]
  %.sroa.6.0.i32.i = phi i64 [ %spec.select.i.i, %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0B6_.exit..thread_crit_edge.i ], [ undef, %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.i ], [ undef, %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !20878, !noalias !20727
  %i.dn = getelementptr inbounds nuw i8, ptr %.val32.i.i, i64 24, !dbg !20879
  %i.do = load ptr, ptr %i.dn, align 8, !dbg !20879, !invariant.load !1351, !noalias !20728, !nonnull !1351
  invoke void %i.do(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.e, ptr noundef nonnull %.val31.i.i) #46
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20880, !noalias !20709, !inline_history !20539

.noexc11.i:                                       ; preds = %.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.cg, ptr noundef nonnull align 16 dereferenceable(160) %i.e, i64 160, i1 false), !dbg !20881, !noalias !20721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !20882, !noalias !20727
  %i.dp = load i8, ptr %i.cg, align 16, !dbg !20883, !range !1695, !noalias !20721, !noundef !1351 ; 2 uses
  %i.dq = icmp ne i8 %i.dp, 33, !dbg !20883
  call void @llvm.assume(i1 %i.dq), !dbg !20884
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB27_8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBM_EL_E4peek0ECslpwjCj2YNBy_9polars_io.exit36.i.i, !dbg !20885

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB27_8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBM_EL_E4peek0ECslpwjCj2YNBy_9polars_io.exit36.i.i: ; preds = %.noexc11.i, %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0B6_.exit.i
  %.not.i11.i = phi i1 [ true, %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0B6_.exit.i ], [ %.not.i12.i, %.noexc11.i ]
  %.sroa.6.0.i31.i = phi i64 [ %spec.select.i.i, %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0B6_.exit.i ], [ %.sroa.6.0.i32.i, %.noexc11.i ]
  %i.dr = phi i8 [ %.pre.i, %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0B6_.exit.i ], [ %i.dp, %.noexc11.i ], !dbg !20886
  switch i8 %i.dr, label %bb.af [
    i8 32, label %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive33merge_sorted_to_schema_order_implNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnINtNtCsgZ49sUHp3tW_5alloc3vec3VecB18_EE0B6_.exit.i
    i8 31, label %bb.ag
  ], !dbg !20887

bb.af:                                            ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB27_8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBM_EL_E4peek0ECslpwjCj2YNBy_9polars_io.exit36.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.h, i64 272, !dbg !20888
  br label %.noexc41.i, !dbg !20889

bb.ag:                                            ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB27_8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBM_EL_E4peek0ECslpwjCj2YNBy_9polars_io.exit36.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.h, i64 184, !dbg !20890
  %i.du = load ptr, ptr %i.dt, align 8, !dbg !20890, !noalias !20732, !nonnull !1351, !noundef !1351
  %i.dv = getelementptr inbounds nuw i8, ptr %i.h, i64 192, !dbg !20890
  %i.dw = load ptr, ptr %i.dv, align 16, !dbg !20890, !noalias !20732, !nonnull !1351, !align !1458, !noundef !1351 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16, !dbg !20891
  %i.dy = load i64, ptr %i.dx, align 8, !dbg !20891, !range !1459, !invariant.load !1351, !noalias !20732
  %i.dz = add nsw i64 %i.dy, -1, !dbg !20891
  %i.ea = and i64 %i.dz, -16, !dbg !20891
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ea, !dbg !20891
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16, !dbg !20891
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 288, !dbg !20892
  %i.ee = load ptr, ptr %i.ed, align 8, !dbg !20892, !invariant.load !1351, !noalias !20732, !nonnull !1351
  %i.ef = invoke noundef nonnull align 8 ptr %i.ee(ptr noundef nonnull %i.ec) #46
          to label %.noexc41.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20893, !noalias !20709, !inline_history !20508

.noexc41.i:                                       ; preds = %bb.ag, %bb.af
  %.sroa.0.0.i36.i = phi ptr [ %i.ds, %bb.af ], [ %i.ef, %bb.ag ], !dbg !20894 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i36.i, i64 23, !dbg !20895
  %i.eh = load i8, ptr %i.eg, align 1, !dbg !20895, !range !1500, !alias.scope !20733, !noalias !20732, !noundef !1351 ; 2 uses
  %i.ei = icmp ugt i8 %i.eh, -41, !dbg !20896
  br i1 %i.ei, label %bb.ai, label %bb.ah, !dbg !20896

bb.ah:                                            ; preds = %.noexc41.i
  %i.ej = add i8 %i.eh, 64, !dbg !20897
  %i.ek = call i8 @llvm.umin.i8(i8 %i.ej, i8 24), !dbg !20898
  %.sroa.0.0.i.i.i37.i = zext nneg i8 %i.ek to i64, !dbg !20898
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i38.i, !dbg !20899

bb.ai:                                            ; preds = %.noexc41.i
  %i.el = load ptr, ptr %.sroa.0.0.i36.i, align 8, !dbg !20900, !alias.scope !20733, !noalias !20732, !noundef !1351
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i36.i, i64 8, !dbg !20901
  %i.en = load i64, ptr %i.em, align 8, !dbg !20901, !alias.scope !20733, !noalias !20732, !noundef !1351
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i38.i, !dbg !20902

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i38.i: ; preds = %bb.ai, %bb.ah
  %.sroa.01.0.i.i39.i = phi i64 [ %i.en, %bb.ai ], [ %.sroa.0.0.i.i.i37.i, %bb.ah ], !dbg !20903
  %.sroa.0.0.i.i40.i = phi ptr [ %i.el, %bb.ai ], [ %.sroa.0.0.i36.i, %bb.ah ], !dbg !20904
  %i.eo = invoke { i64, i64 } @_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE12get_index_ofeECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i40.i, i64 noundef %.sroa.01.0.i.i39.i)
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20905, !noalias !20709 ; 2 uses

.noexc12.i:                                       ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i38.i
  %i.ep = extractvalue { i64, i64 } %i.eo, 0
  %i.eq = trunc nuw i64 %i.ep to i1, !dbg !20906
  %or.cond.i.i = select i1 %.not.i11.i, i1 %i.eq, i1 false, !dbg !20906
  br i1 %or.cond.i.i, label %.preheader.i.i, label %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive33merge_sorted_to_schema_order_implNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnINtNtCsgZ49sUHp3tW_5alloc3vec3VecB18_EE0B6_.exit.i, !dbg !20906

.preheader.i.i:                                   ; preds = %.noexc12.i
  %i.er = extractvalue { i64, i64 } %i.eo, 1, !dbg !20907
  %.sroa.521.0..sroa_idx22.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.54.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.aj, !dbg !20908

bb.aj:                                            ; preds = %.cont.i.i, %.preheader.i.i
  %.sroa.0.041.i.i = phi i64 [ %spec.select42.i.i, %.cont.i.i ], [ %.sroa.6.0.i31.i, %.preheader.i.i ], !dbg !20909 ; 2 uses
  %.sroa.6.040.i.i = phi i64 [ %spec.select43.i.i, %.cont.i.i ], [ %i.er, %.preheader.i.i ], !dbg !20910 ; 2 uses
  %i.es = icmp ult i64 %.sroa.6.040.i.i, %.sroa.0.041.i.i, !dbg !20911 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !20912, !noalias !20721
  %..i.sroa.sel.i = select i1 %i.es, ptr %i.cg, ptr %i.h, !dbg !20912 ; 5 uses
  %.sroa.019.0.copyload.i.i = load i8, ptr %..i.sroa.sel.i, align 16, !dbg !20913, !noalias !20721 ; 3 uses
  store i8 33, ptr %..i.sroa.sel.i, align 16, !dbg !20914, !noalias !20721
  %.not25.i.i = icmp eq i8 %.sroa.019.0.copyload.i.i, 33, !dbg !20915
  br i1 %.not25.i.i, label %bb.al, label %bb.ak, !dbg !20908

bb.ak:                                            ; preds = %bb.aj
  %..i.sroa.sel.sroa.sel18.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.es, i64 177, i64 1, !dbg !20913
  %..i.sroa.sel.sroa.sel18.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.h, i64 %..i.sroa.sel.sroa.sel18.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, !dbg !20913
  store i8 %.sroa.019.0.copyload.i.i, ptr %i.f, align 16, !dbg !20916, !noalias !20721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(159) %.sroa.521.0..sroa_idx22.i.i, ptr noundef nonnull align 1 dereferenceable(159) %..i.sroa.sel.sroa.sel18.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, i64 159, i1 false), !dbg !20916, !noalias !20721
  br label %bb.am, !dbg !20917

bb.al:                                            ; preds = %bb.aj
  %.sroa.gep.sroa.gep7.val.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 16, !dbg !20918, !noalias !20709, !nonnull !1351
  %.sroa.4.0..sroa_idx.val.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 16, !dbg !20918, !noalias !20709, !nonnull !1351
  %i.et = select i1 %i.es, ptr %.sroa.gep.sroa.gep7.val.i, ptr %.sroa.4.0..sroa_idx.val.i, !dbg !20918
  %.sroa.gep.sroa.gep.val.i = load ptr, ptr %.sroa.53.0..sroa_idx.i, align 8, !dbg !20918, !noalias !20709, !nonnull !1351, !align !1458
  %.sroa.5.0..sroa_idx.val.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !20918, !noalias !20709, !nonnull !1351, !align !1458
  %i.eu = select i1 %i.es, ptr %.sroa.gep.sroa.gep.val.i, ptr %.sroa.5.0..sroa_idx.val.i, !dbg !20918
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24, !dbg !20918
  %i.ew = load ptr, ptr %i.ev, align 8, !dbg !20918, !invariant.load !1351, !noalias !20735, !nonnull !1351
  invoke void %i.ew(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.f, ptr noundef nonnull %i.et) #46
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20919, !inline_history !20539

.noexc13.i:                                       ; preds = %bb.al
  %.pr.i.i = load i8, ptr %i.f, align 16, !dbg !20920, !noalias !20721
  br label %bb.am, !dbg !20921

bb.am:                                            ; preds = %.noexc13.i, %bb.ak
  %i.ex = phi i8 [ %.pr.i.i, %.noexc13.i ], [ %.sroa.019.0.copyload.i.i, %bb.ak ], !dbg !20920
  %.not26.i.i = icmp eq i8 %i.ex, 32, !dbg !20920
  br i1 %.not26.i.i, label %bb.ap, label %bb.an, !dbg !20922, !prof !1363

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !20923, !noalias !20736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %.sroa.54.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(160) %i.f, i64 160, i1 false), !dbg !20924, !noalias !20721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !20925, !noalias !20721
  store i64 0, ptr %i.d, align 16, !dbg !20926, !alias.scope !20738, !noalias !20736
  store i64 1, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !dbg !20926, !alias.scope !20738, !noalias !20736
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEINtB4_10SpecExtendBT_INtNtNtCscgRAwXFJnXP_4core5array4iter8IntoIterBT_Kj1_EE11spec_extendCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(176) %i.d)
          to label %.noexc14.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20927

.noexc14.i:                                       ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !20928, !noalias !20736
  %i.ey = load i8, ptr %..i.sroa.sel.i, align 16, !dbg !20929, !range !1695, !noalias !20721, !noundef !1351 ; 2 uses
  %.not.i37.i.i = icmp eq i8 %i.ey, 33, !dbg !20929
  br i1 %.not.i37.i.i, label %bb.ao, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB27_8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBM_EL_E4peek0ECslpwjCj2YNBy_9polars_io.exit38.i.i, !dbg !20930

bb.ao:                                            ; preds = %.noexc14.i
  %.sroa.gep.sroa.gep13.val.i = load ptr, ptr %.sroa.53.0..sroa_idx.i, align 8, !dbg !20931, !noalias !20709, !nonnull !1351
  %.sroa.5.0..sroa_idx.val24.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !20931, !noalias !20709, !nonnull !1351
  %.val30.i.i = select i1 %i.es, ptr %.sroa.gep.sroa.gep13.val.i, ptr %.sroa.5.0..sroa_idx.val24.i, !dbg !20931
  %.sroa.gep.sroa.gep10.val.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 16, !dbg !20931, !noalias !20709, !nonnull !1351
  %.sroa.4.0..sroa_idx.val25.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 16, !dbg !20931, !noalias !20709, !nonnull !1351
  %.val.i.i = select i1 %i.es, ptr %.sroa.gep.sroa.gep10.val.i, ptr %.sroa.4.0..sroa_idx.val25.i, !dbg !20932
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !20933, !noalias !20740
  %i.ez = getelementptr inbounds nuw i8, ptr %.val30.i.i, i64 24, !dbg !20934
  %i.fa = load ptr, ptr %i.ez, align 8, !dbg !20934, !invariant.load !1351, !noalias !20741, !nonnull !1351
  invoke void %i.fa(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.c, ptr noundef nonnull %.val.i.i) #46
          to label %.noexc15.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20935, !inline_history !20539

.noexc15.i:                                       ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %..i.sroa.sel.i, ptr noundef nonnull align 16 dereferenceable(160) %i.c, i64 160, i1 false), !dbg !20936, !noalias !20721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20937, !noalias !20740
  %i.fb = load i8, ptr %..i.sroa.sel.i, align 16, !dbg !20938, !range !1695, !noalias !20721, !noundef !1351 ; 2 uses
  %i.fc = icmp ne i8 %i.fb, 33, !dbg !20938
  call void @llvm.assume(i1 %i.fc), !dbg !20939
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB27_8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBM_EL_E4peek0ECslpwjCj2YNBy_9polars_io.exit38.i.i, !dbg !20940

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB27_8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBM_EL_E4peek0ECslpwjCj2YNBy_9polars_io.exit38.i.i: ; preds = %.noexc15.i, %.noexc14.i
  %i.fd = phi i8 [ %i.ey, %.noexc14.i ], [ %i.fb, %.noexc15.i ], !dbg !20941
  switch i8 %i.fd, label %bb.aq [
    i8 32, label %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive33merge_sorted_to_schema_order_implNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnINtNtCsgZ49sUHp3tW_5alloc3vec3VecB18_EE0B6_.exit.i
    i8 31, label %bb.ar
  ], !dbg !20942

bb.ap:                                            ; preds = %bb.am
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #44
          to label %.noexc16.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20943

.noexc16.i:                                       ; preds = %bb.ap
  unreachable, !dbg !20943

bb.aq:                                            ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB27_8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBM_EL_E4peek0ECslpwjCj2YNBy_9polars_io.exit38.i.i
  %..i.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.es, i64 272, i64 96, !dbg !20944
  %..i.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.h, i64 %..i.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, !dbg !20944
  br label %.noexc50.i, !dbg !20945

bb.ar:                                            ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB27_8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBM_EL_E4peek0ECslpwjCj2YNBy_9polars_io.exit38.i.i
  %..i.sroa.sel.sroa.sel4.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.es, i64 184, i64 8, !dbg !20946
  %..i.sroa.sel.sroa.sel4.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.h, i64 %..i.sroa.sel.sroa.sel4.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, !dbg !20946
  %i.fe = load ptr, ptr %..i.sroa.sel.sroa.sel4.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !dbg !20946, !noalias !20743, !nonnull !1351, !noundef !1351
  %..i.sroa.sel.sroa.sel7.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.es, i64 192, i64 16, !dbg !20946
  %..i.sroa.sel.sroa.sel7.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.h, i64 %..i.sroa.sel.sroa.sel7.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, !dbg !20946
  %i.ff = load ptr, ptr %..i.sroa.sel.sroa.sel7.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 16, !dbg !20946, !noalias !20743, !nonnull !1351, !align !1458, !noundef !1351 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16, !dbg !20947
  %i.fh = load i64, ptr %i.fg, align 8, !dbg !20947, !range !1459, !invariant.load !1351, !noalias !20744
  %i.fi = add nsw i64 %i.fh, -1, !dbg !20947
  %i.fj = and i64 %i.fi, -16, !dbg !20947
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fj, !dbg !20947
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16, !dbg !20947
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ff, i64 288, !dbg !20948
  %i.fn = load ptr, ptr %i.fm, align 8, !dbg !20948, !invariant.load !1351, !noalias !20744, !nonnull !1351
  %i.fo = invoke noundef nonnull align 8 ptr %i.fn(ptr noundef nonnull %i.fl) #46
          to label %.noexc50.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20949, !inline_history !20508

.noexc50.i:                                       ; preds = %bb.ar, %bb.aq
  %.sroa.0.0.i45.i = phi ptr [ %..i.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, %bb.aq ], [ %i.fo, %bb.ar ], !dbg !20950 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i45.i, i64 23, !dbg !20951
  %i.fq = load i8, ptr %i.fp, align 1, !dbg !20951, !range !1500, !alias.scope !20745, !noalias !20744, !noundef !1351 ; 2 uses
  %i.fr = icmp ugt i8 %i.fq, -41, !dbg !20952
  br i1 %i.fr, label %bb.at, label %bb.as, !dbg !20952

bb.as:                                            ; preds = %.noexc50.i
  %i.fs = add i8 %i.fq, 64, !dbg !20953
  %i.ft = call i8 @llvm.umin.i8(i8 %i.fs, i8 24), !dbg !20954
  %.sroa.0.0.i.i.i46.i = zext nneg i8 %i.ft to i64, !dbg !20954
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i47.i, !dbg !20955

bb.at:                                            ; preds = %.noexc50.i
  %i.fu = load ptr, ptr %.sroa.0.0.i45.i, align 8, !dbg !20956, !alias.scope !20745, !noalias !20744, !noundef !1351
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i45.i, i64 8, !dbg !20957
  %i.fw = load i64, ptr %i.fv, align 8, !dbg !20957, !alias.scope !20745, !noalias !20744, !noundef !1351
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i47.i, !dbg !20958

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i47.i: ; preds = %bb.at, %bb.as
  %.sroa.01.0.i.i48.i = phi i64 [ %i.fw, %bb.at ], [ %.sroa.0.0.i.i.i46.i, %bb.as ], !dbg !20959
  %.sroa.0.0.i.i49.i = phi ptr [ %i.fu, %bb.at ], [ %.sroa.0.0.i45.i, %bb.as ], !dbg !20960
  %i.fx = invoke { i64, i64 } @_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE12get_index_ofeECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i49.i, i64 noundef %.sroa.01.0.i.i48.i)
          to label %.noexc17.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20961 ; 2 uses

.noexc17.i:                                       ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i47.i
  %i.fy = extractvalue { i64, i64 } %i.fx, 0, !dbg !20962
  %i.fz = trunc nuw i64 %i.fy to i1, !dbg !20963
  br i1 %i.fz, label %.cont.i.i, label %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive33merge_sorted_to_schema_order_implNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnINtNtCsgZ49sUHp3tW_5alloc3vec3VecB18_EE0B6_.exit.i, !dbg !20963

.cont.i.i:                                        ; preds = %.noexc17.i
  %i.ga = extractvalue { i64, i64 } %i.fx, 1, !dbg !20962 ; 2 uses
  %spec.select42.i.i = select i1 %i.es, i64 %.sroa.0.041.i.i, i64 %i.ga, !dbg !20964
  %spec.select43.i.i = select i1 %i.es, i64 %i.ga, i64 %.sroa.6.040.i.i, !dbg !20964
  br label %bb.aj, !dbg !20965

_RNCINvNtCslpwjCj2YNBy_9polars_io4hive33merge_sorted_to_schema_order_implNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnINtNtCsgZ49sUHp3tW_5alloc3vec3VecB18_EE0B6_.exit.i: ; preds = %.noexc17.i, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB27_8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBM_EL_E4peek0ECslpwjCj2YNBy_9polars_io.exit38.i.i, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB27_8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBM_EL_E4peek0ECslpwjCj2YNBy_9polars_io.exit36.i.i, %.noexc12.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20966, !noalias !20746
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.b, ptr noundef nonnull align 16 dereferenceable(176) %i.h, i64 176, i1 false), !dbg !20967, !noalias !20709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !20968, !noalias !20709
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.g, ptr noundef nonnull align 16 dereferenceable(176) %i.cg, i64 176, i1 false), !dbg !20968, !noalias !20709
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEINtB2_10SpecExtendBR_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters8peekable8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBR_EL_EE11spec_extendCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(176) %i.b)
          to label %bb.au unwind label %bb.av, !dbg !20969

bb.au:                                            ; preds = %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive33merge_sorted_to_schema_order_implNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnINtNtCsgZ49sUHp3tW_5alloc3vec3VecB18_EE0B6_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20970, !noalias !20746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20971, !noalias !20747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.a, ptr noundef nonnull align 16 dereferenceable(176) %i.g, i64 176, i1 false), !dbg !20972, !noalias !20709
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEINtB2_10SpecExtendBR_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters8peekable8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBR_EL_EE11spec_extendCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(176) %i.a)
          to label %bb.az unwind label %bb.ay, !dbg !20973

bb.av:                                            ; preds = %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive33merge_sorted_to_schema_order_implNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnINtNtCsgZ49sUHp3tW_5alloc3vec3VecB18_EE0B6_.exit.i
  %i.gb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters8peekable8PeekableQDNtNtNtBN_6traits8iterator8Iteratorp4ItemNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEL_EECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(176) %i.g) #40
          to label %.body30 unwind label %bb.aw, !dbg !20974

bb.aw:                                            ; preds = %bb.ax, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.av
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !20975
  unreachable, !dbg !20975

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i47.i, %bb.ar, %bb.ao, %bb.an, %bb.al, %bb.ap, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i38.i, %bb.ag, %.thread.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i, %bb.ac
  %lpad.loopexit.split-lp71 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters8peekable8PeekableQDNtNtNtBN_6traits8iterator8Iteratorp4ItemNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEL_EECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(176) %i.cg) #40
          to label %bb.ax unwind label %bb.aw, !dbg !20976

bb.ax:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters8peekable8PeekableQDNtNtNtBN_6traits8iterator8Iteratorp4ItemNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEL_EECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(176) %i.h) #40
          to label %.body30 unwind label %bb.aw, !dbg !20976

bb.ay:                                            ; preds = %bb.au
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %.body30, !dbg !20977

.body30:                                          ; preds = %bb.av, %bb.ax, %bb.ay
  %eh.lpad-body31 = phi { ptr, i32 } [ %i.gd, %bb.ay ], [ %lpad.loopexit.split-lp71, %bb.ax ], [ %i.gb, %bb.av ]
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECslpwjCj2YNBy_9polars_io.exit unwind label %bb.bc, !dbg !20978

bb.az:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20979, !noalias !20747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !20974, !noalias !20709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !20976, !noalias !20709
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECslpwjCj2YNBy_9polars_io.exit32 unwind label %bb.ba, !dbg !20980

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECslpwjCj2YNBy_9polars_io.exit: ; preds = %.body30, %bb.ba
  %.pn = phi { ptr, i32 } [ %i.ge, %bb.ba ], [ %eh.lpad-body31, %.body30 ]
  invoke void @_RNvXs5_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %bb.bd unwind label %bb.bc, !dbg !20981

bb.ba:                                            ; preds = %bb.az
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECslpwjCj2YNBy_9polars_io.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECslpwjCj2YNBy_9polars_io.exit32: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !20977
  invoke void @_RNvXs5_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec5drain5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECslpwjCj2YNBy_9polars_io.exit33 unwind label %bb.y, !dbg !20982

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec5drain5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECslpwjCj2YNBy_9polars_io.exit33: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECslpwjCj2YNBy_9polars_io.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !20977
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04), !dbg !20983
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !20984
  %i.gf = load i64, ptr %i.o, align 8, !dbg !20985, !noundef !1351 ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(48) %0)
          to label %bb.bb unwind label %.thread51, !dbg !20833

bb.bb:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec5drain5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECslpwjCj2YNBy_9polars_io.exit33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04, i64 24, i1 false), !dbg !20833
  store i64 %i.gf, ptr %i.p, align 8, !dbg !20833
  store i32 3, ptr %i.br, align 8, !dbg !20833
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04), !dbg !20986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !20987
  br label %.sink.split, !dbg !20988

bb.bc:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECslpwjCj2YNBy_9polars_io.exit, %.body30, %bb.bi, %bb.bd
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !20989
  unreachable, !dbg !20989

bb.bd:                                            ; preds = %bb.x, %bb.y, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECslpwjCj2YNBy_9polars_io.exit
  %.sroa.09.1.ph = phi i1 [ true, %bb.x ], [ %.sroa.09.2, %bb.y ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECslpwjCj2YNBy_9polars_io.exit ]
  %.pn24.ph = phi { ptr, i32 } [ %i.bv, %bb.x ], [ %i.bx, %bb.y ], [ %.pn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECslpwjCj2YNBy_9polars_io.exit ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.l) #40
          to label %bb.f unwind label %bb.bc, !dbg !20987

.thread70:                                        ; preds = %bb.o, %bb.q
  %i.gh = load i64, ptr %i.o, align 8, !dbg !20990, !noundef !1351
  store i64 %i.gh, ptr %i.p, align 8, !dbg !20990
  br label %bb.be, !dbg !20991

bb.be:                                            ; preds = %bb.q, %.thread70
  %i.gi = load ptr, ptr %i.v, align 8, !dbg !20992, !nonnull !1351, !noundef !1351
  %i.gj = load i64, ptr %i.x, align 8, !dbg !20993, !noundef !1351
  %i.gk = invoke noundef nonnull align 8 ptr @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10horizontalNtNtB4_9dataframe9DataFrame20hstack_mut_unchecked(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 16 %i.gi, i64 noundef %i.gj)
          to label %bb.bf unwind label %.thread, !dbg !20994 ; 0 uses

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECslpwjCj2YNBy_9polars_io.exit unwind label %bb.bg, !dbg !20995

bb.bg:                                            ; preds = %bb.bf
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.bh, !dbg !20996

bb.bh:                                            ; preds = %bb.bg
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !20995
  unreachable, !dbg !20995

common.resume:                                    ; preds = %bb.f, %bb.bi, %.thread51, %bb.bg
  %common.resume.op = phi { ptr, i32 } [ %i.gl, %bb.bg ], [ %.pn2644, %bb.bi ], [ %.pn24.ph, %bb.f ], [ %i.bw, %.thread51 ]
  resume { ptr, i32 } %common.resume.op, !dbg !20997

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.bf
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n), !dbg !20998
  br label %.sink.split, !dbg !20999

bb.bi:                                            ; preds = %.thread, %bb.f
  %.pn2644 = phi { ptr, i32 } [ %i.aa, %.thread ], [ %.pn24.ph, %bb.f ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.n) #40
          to label %common.resume unwind label %bb.bc, !dbg !20766
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs596qD5lrKA2_7bincode6varint15encode_unsigned17varint_encode_u32INtNtNtB6_8features8impl_std8IoWriterQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2, i32 noundef %3) unnamed_addr #1 !dbg !21000 !guid !21051 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [2 x i8], align 2                 ; 4 uses
  %i.d = alloca [2 x i8], align 2                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = icmp ult i32 %3, 251, !dbg !21080
  br i1 %i.f, label %bb.c, label %bb.b, !dbg !21080

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult i32 %3, 65536, !dbg !21081
  %i.h = load ptr, ptr %1, align 8, !dbg !21082, !nonnull !1351, !align !1458, !noundef !1351 ; 5 uses
  %.val4 = load ptr, ptr %i.h, align 8, !dbg !21083, !nonnull !1351, !align !1458, !noundef !1351 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21084 ; 8 uses
  br i1 %i.g, label %bb.g, label %bb.d, !dbg !21081

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !21085
  %i.j = trunc nuw i32 %3 to i8, !dbg !21086
  store i8 %i.j, ptr %i.e, align 1, !dbg !21085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21053), !dbg !21087
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21054), !dbg !21087
  %i.k = load ptr, ptr %1, align 8, !dbg !21088, !alias.scope !21054, !nonnull !1351, !align !1458, !noundef !1351
  %.val = load ptr, ptr %i.k, align 8, !dbg !21089, !nonnull !1351, !align !1458, !noundef !1351
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef range(i64 1, 9) 1), !dbg !21090
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21091 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !21092, !alias.scope !21054, !noundef !1351
  %i.n = add i64 %i.m, 1, !dbg !21092
  store i64 %i.n, ptr %i.l, align 8, !dbg !21092, !alias.scope !21054
  store i64 9, ptr %0, align 8, !dbg !21093, !alias.scope !21053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !21094
  br label %bb.j, !dbg !21095

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef range(i64 1, 9) 1), !dbg !21096
  %i.o = load i64, ptr %i.i, align 8, !dbg !21097, !alias.scope !21055, !noundef !1351 ; 3 uses
  %i.p = add i64 %i.o, 1, !dbg !21097
  store i64 %i.p, ptr %i.i, align 8, !dbg !21097, !alias.scope !21055
  br i1 %2, label %bb.e, label %bb.f, !dbg !21098

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !21099
  %i.q = tail call i32 @llvm.bswap.i32(i32 %3), !dbg !21100
  store i32 %i.q, ptr %i.b, align 4, !dbg !21101
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21062), !dbg !21102
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21063), !dbg !21102
  %.val5 = load ptr, ptr %i.h, align 8, !dbg !21103, !nonnull !1351, !align !1458, !noundef !1351
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val5, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 1, 9) 4), !dbg !21104
  %i.r = add i64 %i.o, 5, !dbg !21105
  store i64 %i.r, ptr %i.i, align 8, !dbg !21105, !alias.scope !21063
  store i64 9, ptr %0, align 8, !dbg !21106, !alias.scope !21062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21107
  br label %bb.j, !dbg !21107

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21108
  store i32 %3, ptr %i.a, align 4, !dbg !21109
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21067), !dbg !21110
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21068), !dbg !21110
  %.val6 = load ptr, ptr %i.h, align 8, !dbg !21111, !nonnull !1351, !align !1458, !noundef !1351
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val6, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 1, 9) 4), !dbg !21112
end_hunk_0
