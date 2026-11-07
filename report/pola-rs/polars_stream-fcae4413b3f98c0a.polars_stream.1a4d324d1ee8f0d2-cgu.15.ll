Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.15?download=true
inline.NumInlined: 9921
inline.NumDeleted: 5523
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RINvNtCslpwjCj2YNBy_9polars_io4hive27materialize_hive_partitionsNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2T_EECs2g09Ig8GZd6_13polars_stream:bb.a
  br i1 %i.bb, label %.thread79, label %bb.p, !dbg !35731

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !35732
  %i.bc = load i64, ptr %i.w, align 8, !dbg !35733, !noundef !1881 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, 57646075230342349, !dbg !35734
  call void @llvm.assume(i1 %i.bd), !dbg !35735
  %i.be = add nuw nsw i64 %i.bc, %i.az, !dbg !35736 ; 3 uses
  %.not.i = icmp samesign ugt i64 %i.be, 57646075230342348
  br i1 %.not.i, label %bb.s, label %bb.q, !dbg !35737, !prof !2293

bb.q:                                             ; preds = %bb.p
  %i.bf = mul nuw nsw i64 %i.be, 160, !dbg !35738 ; 2 uses
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !dbg !35739, !noalias !35629
  %i.bg = call noundef align 16 ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bf, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !dbg !35740, !noalias !35629 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null, !dbg !35741
  br i1 %i.bh, label %bb.s, label %bb.t, !dbg !35742

bb.r:                                             ; preds = %bb.n
  br i1 %i.bb, label %.thread79, label %bb.be, !dbg !35743

bb.s:                                             ; preds = %bb.p, %bb.q
  %.sroa.10.0.ph = phi i64 [ %i.bf, %bb.q ], [ undef, %bb.p ]
  %.sroa.4.0.ph = phi i64 [ 16, %bb.q ], [ 0, %bb.p ]
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %.sroa.10.0.ph) #55
          to label %bb.g unwind label %.thread, !dbg !35744

bb.t:                                             ; preds = %bb.q
  store i64 %i.be, ptr %i.k, align 8, !dbg !35745
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !35745
  store ptr %i.bg, ptr %i.bi, align 8, !dbg !35745
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !35745
  store i64 0, ptr %i.bj, align 8, !dbg !35745
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !35746
  call void @llvm.experimental.noalias.scope.decl(metadata !35630), !dbg !35747
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !35748 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35632), !dbg !35748
  call void @llvm.experimental.noalias.scope.decl(metadata !35633), !dbg !35749
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !35750 ; 5 uses
  %.val.i.i.i = load i32, ptr %i.bl, align 8, !dbg !35750, !alias.scope !35634, !noundef !1881
  switch i32 %.val.i.i.i, label %bb.u [
    i32 3, label %bb.z
    i32 2, label %bb.z
    i32 0, label %bb.v
  ], !dbg !35751, !prof !2265

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @261, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @263) #57
          to label %.noexc.i unwind label %bb.x, !dbg !35752, !noalias !35630

.noexc.i:                                         ; preds = %bb.u
  unreachable, !dbg !35752

bb.v:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !35635), !dbg !35753
  call void @llvm.experimental.noalias.scope.decl(metadata !35636), !dbg !35754
  %i.bm = load ptr, ptr %i.bk, align 8, !dbg !35755, !alias.scope !35637, !nonnull !1881, !noundef !1881
  %i.bn = atomicrmw add ptr %i.bm, i64 -1 release, align 8, !dbg !35756, !noalias !35637
  %i.bo = icmp eq i64 %i.bn, 1, !dbg !35757
  br i1 %i.bo, label %bb.w, label %bb.z, !dbg !35757

bb.w:                                             ; preds = %bb.v
  fence acquire, !dbg !35758
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bk) #52
          to label %bb.z unwind label %bb.x, !dbg !35759

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.bp = landingpad { ptr, i32 }
          cleanup
  store i32 3, ptr %i.bl, align 8, !dbg !35748, !alias.scope !35630
  br label %bb.bd, !dbg !35760

.thread58:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec5drain5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECs2g09Ig8GZd6_13polars_stream.exit33
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04, i64 24, i1 false), !dbg !35761
  store i64 %i.fz, ptr %i.o, align 8, !dbg !35761
  store i32 3, ptr %i.bl, align 8, !dbg !35761
  br label %common.resume, !dbg !35696

bb.y:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECs2g09Ig8GZd6_13polars_stream.exit32, %bb.z
  %.sroa.09.2 = phi i1 [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECs2g09Ig8GZd6_13polars_stream.exit32 ], [ true, %bb.z ], !dbg !35762
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.z:                                             ; preds = %bb.w, %bb.v, %bb.t, %bb.t
  store i32 3, ptr %i.bl, align 8, !dbg !35748, !alias.scope !35630
  invoke void @_RINvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE5drainNtNtNtCscgRAwXFJnXP_4core3ops5range9RangeFullECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.aa unwind label %bb.y, !dbg !35763

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !35764
  %i.bs = load ptr, ptr %i.u, align 8, !dbg !35764, !nonnull !1881, !noundef !1881 ; 3 uses
  %i.bt = load i64, ptr %i.m, align 8, !dbg !35764, !range !2099, !noundef !1881
  %i.bu = load i64, ptr %i.w, align 8, !dbg !35764, !noundef !1881 ; 2 uses
  %i.bv = icmp ult i64 %i.bu, 57646075230342349, !dbg !35765
  call void @llvm.assume(i1 %i.bv), !dbg !35766
  %i.bw = getelementptr inbounds nuw [160 x i8], ptr %i.bs, i64 %i.bu, !dbg !35767
  store ptr %i.bs, ptr %i.i, align 8, !dbg !35768
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !35768
  store i64 %i.bt, ptr %i.bx, align 8, !dbg !35768
  %i.by = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !35768
  store ptr %i.bs, ptr %i.by, align 8, !dbg !35768
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !35768
  store ptr %i.bw, ptr %i.bz, align 8, !dbg !35768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !35769, !noalias !35641
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 160, !dbg !35770 ; 3 uses
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx.i, align 16, !dbg !35770, !noalias !35641
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 168, !dbg !35770 ; 3 uses
  store ptr @36, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !35770, !noalias !35641
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 176, !dbg !35770 ; 7 uses
  store i8 33, ptr %i.ca, align 16, !dbg !35770, !noalias !35641
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 336, !dbg !35770 ; 4 uses
  store ptr %i.i, ptr %.sroa.42.0..sroa_idx.i, align 16, !dbg !35770, !noalias !35641
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 344, !dbg !35770 ; 4 uses
  store ptr @37, ptr %.sroa.53.0..sroa_idx.i, align 8, !dbg !35770, !noalias !35641
  call void @llvm.experimental.noalias.scope.decl(metadata !35643), !dbg !35771
  call void @llvm.experimental.noalias.scope.decl(metadata !35648), !dbg !35771
  %i.cb = load ptr, ptr %i.j, align 8, !dbg !35772, !alias.scope !35648, !noalias !35641, !nonnull !1881, !noundef !1881 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !35773
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !35773, !alias.scope !35648, !noalias !35641, !nonnull !1881, !noundef !1881
  %i.ce = icmp eq ptr %i.cb, %i.cd, !dbg !35774
  br i1 %i.ce, label %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread.i, label %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !35775

_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread.i: ; preds = %bb.aa
  store i8 32, ptr %i.h, align 16, !dbg !35776, !alias.scope !35643, !noalias !35641
  br label %.thread.i, !dbg !35777

_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.aa
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 160, !dbg !35778
  store ptr %i.cf, ptr %i.j, align 8, !dbg !35779, !alias.scope !35648, !noalias !35641
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.h, ptr noundef nonnull align 16 dereferenceable(160) %i.cb, i64 160, i1 false), !dbg !35780, !noalias !35649
  %.pr.i = load i8, ptr %i.h, align 16, !dbg !35781, !noalias !35650 ; 2 uses
  %i.cg = icmp ne i8 %.pr.i, 33, !dbg !35781
  call void @llvm.assume(i1 %i.cg), !dbg !35782
  switch i8 %.pr.i, label %bb.ab [
    i8 32, label %.thread.i
    i8 31, label %bb.ac
  ], !dbg !35777

bb.ab:                                            ; preds = %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 96, !dbg !35783
  br label %.noexc.i28, !dbg !35784

bb.ac:                                            ; preds = %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !35785
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !35785, !noalias !35654, !nonnull !1881, !noundef !1881
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !35785
  %i.cl = load ptr, ptr %i.ck, align 16, !dbg !35785, !noalias !35654, !nonnull !1881, !align !2090, !noundef !1881 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16, !dbg !35786
  %i.cn = load i64, ptr %i.cm, align 8, !dbg !35786, !range !2100, !invariant.load !1881, !noalias !35654
  %i.co = add nsw i64 %i.cn, -1, !dbg !35786
  %i.cp = and i64 %i.co, -16, !dbg !35786
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cp, !dbg !35786
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16, !dbg !35786
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 288, !dbg !35787
  %i.ct = load ptr, ptr %i.cs, align 8, !dbg !35787, !invariant.load !1881, !noalias !35654, !nonnull !1881
  %i.cu = invoke noundef nonnull align 8 ptr %i.ct(ptr noundef nonnull %i.cr) #53
          to label %.noexc.i28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !35788, !noalias !35641, !inline_history !35417

.noexc.i28:                                       ; preds = %bb.ac, %bb.ab
  %.sroa.0.0.i.i29 = phi ptr [ %i.ch, %bb.ab ], [ %i.cu, %bb.ac ], !dbg !35789 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i29, i64 23, !dbg !35790
  %i.cw = load i8, ptr %i.cv, align 1, !dbg !35790, !range !2243, !alias.scope !35655, !noalias !35654, !noundef !1881 ; 2 uses
  %i.cx = icmp ugt i8 %i.cw, -41, !dbg !35791
  br i1 %i.cx, label %bb.ae, label %bb.ad, !dbg !35791

bb.ad:                                            ; preds = %.noexc.i28
  %i.cy = add i8 %i.cw, 64, !dbg !35792
  %i.cz = call i8 @llvm.umin.i8(i8 %i.cy, i8 24), !dbg !35793
  %.sroa.0.0.i.i.i.i = zext nneg i8 %i.cz to i64, !dbg !35793
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i, !dbg !35794

bb.ae:                                            ; preds = %.noexc.i28
  %i.da = load ptr, ptr %.sroa.0.0.i.i29, align 8, !dbg !35795, !alias.scope !35655, !noalias !35654, !noundef !1881
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i29, i64 8, !dbg !35796
  %i.dc = load i64, ptr %i.db, align 8, !dbg !35796, !alias.scope !35655, !noalias !35654, !noundef !1881
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i, !dbg !35797

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i: ; preds = %bb.ae, %bb.ad
  %.sroa.01.0.i.i.i = phi i64 [ %i.dc, %bb.ae ], [ %.sroa.0.0.i.i.i.i, %bb.ad ], !dbg !35798
  %.sroa.0.0.i.i.i = phi ptr [ %i.da, %bb.ae ], [ %.sroa.0.0.i.i29, %bb.ad ], !dbg !35799
  %i.dd = invoke { i64, i64 } @_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE12get_index_ofeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i, i64 noundef %.sroa.01.0.i.i.i)
          to label %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0Cs2g09Ig8GZd6_13polars_stream.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !35800, !noalias !35641 ; 2 uses

_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0Cs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i
  %i.de = extractvalue { i64, i64 } %i.dd, 0, !dbg !35801
  %i.df = extractvalue { i64, i64 } %i.dd, 1, !dbg !35801
  %i.dg = trunc nuw i64 %i.de to i1, !dbg !35802
  %spec.select.i.i = select i1 %i.dg, i64 %i.df, i64 0, !dbg !35802 ; 2 uses
  %.pre.i = load i8, ptr %i.ca, align 16, !dbg !35803, !range !2270, !noalias !35650 ; 2 uses
  %.not.i35.i.i = icmp eq i8 %.pre.i, 33, !dbg !35803
  br i1 %.not.i35.i.i, label %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0Cs2g09Ig8GZd6_13polars_stream.exit..thread_crit_edge.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB27_8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBM_EL_E4peek0ECs2g09Ig8GZd6_13polars_stream.exit36.i.i, !dbg !35804

_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0Cs2g09Ig8GZd6_13polars_stream.exit..thread_crit_edge.i: ; preds = %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0Cs2g09Ig8GZd6_13polars_stream.exit.i
  %.val32.i.pre.i = load ptr, ptr %.sroa.53.0..sroa_idx.i, align 8, !dbg !35805, !noalias !35650
  %.val31.i.pre.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 16, !dbg !35805, !noalias !35650
  br label %.thread.i, !dbg !35804

.thread.i:                                        ; preds = %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i, %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0Cs2g09Ig8GZd6_13polars_stream.exit..thread_crit_edge.i, %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread.i
  %.val31.i.i = phi ptr [ %.val31.i.pre.i, %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0Cs2g09Ig8GZd6_13polars_stream.exit..thread_crit_edge.i ], [ %i.i, %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i ], [ %i.i, %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread.i ], !dbg !35805
  %.val32.i.i = phi ptr [ %.val32.i.pre.i, %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0Cs2g09Ig8GZd6_13polars_stream.exit..thread_crit_edge.i ], [ @37, %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i ], [ @37, %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread.i ], !dbg !35805
  %.not.i12.i = phi i1 [ true, %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0Cs2g09Ig8GZd6_13polars_stream.exit..thread_crit_edge.i ], [ false, %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i ], [ false, %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread.i ]
  %.sroa.6.0.i32.i = phi i64 [ %spec.select.i.i, %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0Cs2g09Ig8GZd6_13polars_stream.exit..thread_crit_edge.i ], [ undef, %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i ], [ undef, %_RNvXs3_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !35806, !noalias !35656
  %i.dh = getelementptr inbounds nuw i8, ptr %.val32.i.i, i64 24, !dbg !35807
  %i.di = load ptr, ptr %i.dh, align 8, !dbg !35807, !invariant.load !1881, !noalias !35657, !nonnull !1881
  invoke void %i.di(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.e, ptr noundef nonnull %.val31.i.i) #53
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !35808, !noalias !35641, !inline_history !35448

.noexc11.i:                                       ; preds = %.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.ca, ptr noundef nonnull align 16 dereferenceable(160) %i.e, i64 160, i1 false), !dbg !35809, !noalias !35650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !35810, !noalias !35656
  %i.dj = load i8, ptr %i.ca, align 16, !dbg !35811, !range !2270, !noalias !35650, !noundef !1881 ; 2 uses
  %i.dk = icmp ne i8 %i.dj, 33, !dbg !35811
  call void @llvm.assume(i1 %i.dk), !dbg !35812
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB27_8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBM_EL_E4peek0ECs2g09Ig8GZd6_13polars_stream.exit36.i.i, !dbg !35813

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB27_8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBM_EL_E4peek0ECs2g09Ig8GZd6_13polars_stream.exit36.i.i: ; preds = %.noexc11.i, %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0Cs2g09Ig8GZd6_13polars_stream.exit.i
  %.not.i11.i = phi i1 [ true, %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0Cs2g09Ig8GZd6_13polars_stream.exit.i ], [ %.not.i12.i, %.noexc11.i ]
  %.sroa.6.0.i31.i = phi i64 [ %spec.select.i.i, %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0Cs2g09Ig8GZd6_13polars_stream.exit.i ], [ %.sroa.6.0.i32.i, %.noexc11.i ]
  %i.dl = phi i8 [ %.pre.i, %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive28merge_sorted_to_schema_orderNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2W_EE0Cs2g09Ig8GZd6_13polars_stream.exit.i ], [ %i.dj, %.noexc11.i ], !dbg !35814
  switch i8 %i.dl, label %bb.af [
    i8 32, label %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive33merge_sorted_to_schema_order_implNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnINtNtCsgZ49sUHp3tW_5alloc3vec3VecB18_EE0Cs2g09Ig8GZd6_13polars_stream.exit.i
    i8 31, label %bb.ag
  ], !dbg !35815

bb.af:                                            ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB27_8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBM_EL_E4peek0ECs2g09Ig8GZd6_13polars_stream.exit36.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 272, !dbg !35816
  br label %.noexc41.i, !dbg !35817

bb.ag:                                            ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB27_8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBM_EL_E4peek0ECs2g09Ig8GZd6_13polars_stream.exit36.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.h, i64 184, !dbg !35818
  %i.do = load ptr, ptr %i.dn, align 8, !dbg !35818, !noalias !35661, !nonnull !1881, !noundef !1881
  %i.dp = getelementptr inbounds nuw i8, ptr %i.h, i64 192, !dbg !35818
  %i.dq = load ptr, ptr %i.dp, align 16, !dbg !35818, !noalias !35661, !nonnull !1881, !align !2090, !noundef !1881 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16, !dbg !35819
  %i.ds = load i64, ptr %i.dr, align 8, !dbg !35819, !range !2100, !invariant.load !1881, !noalias !35661
  %i.dt = add nsw i64 %i.ds, -1, !dbg !35819
  %i.du = and i64 %i.dt, -16, !dbg !35819
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.du, !dbg !35819
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16, !dbg !35819
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 288, !dbg !35820
  %i.dy = load ptr, ptr %i.dx, align 8, !dbg !35820, !invariant.load !1881, !noalias !35661, !nonnull !1881
  %i.dz = invoke noundef nonnull align 8 ptr %i.dy(ptr noundef nonnull %i.dw) #53
          to label %.noexc41.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !35821, !noalias !35641, !inline_history !35417

.noexc41.i:                                       ; preds = %bb.ag, %bb.af
  %.sroa.0.0.i36.i = phi ptr [ %i.dm, %bb.af ], [ %i.dz, %bb.ag ], !dbg !35822 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i36.i, i64 23, !dbg !35823
  %i.eb = load i8, ptr %i.ea, align 1, !dbg !35823, !range !2243, !alias.scope !35662, !noalias !35661, !noundef !1881 ; 2 uses
  %i.ec = icmp ugt i8 %i.eb, -41, !dbg !35824
  br i1 %i.ec, label %bb.ai, label %bb.ah, !dbg !35824

bb.ah:                                            ; preds = %.noexc41.i
  %i.ed = add i8 %i.eb, 64, !dbg !35825
  %i.ee = call i8 @llvm.umin.i8(i8 %i.ed, i8 24), !dbg !35826
  %.sroa.0.0.i.i.i37.i = zext nneg i8 %i.ee to i64, !dbg !35826
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i38.i, !dbg !35827

bb.ai:                                            ; preds = %.noexc41.i
  %i.ef = load ptr, ptr %.sroa.0.0.i36.i, align 8, !dbg !35828, !alias.scope !35662, !noalias !35661, !noundef !1881
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i36.i, i64 8, !dbg !35829
  %i.eh = load i64, ptr %i.eg, align 8, !dbg !35829, !alias.scope !35662, !noalias !35661, !noundef !1881
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i38.i, !dbg !35830

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i38.i: ; preds = %bb.ai, %bb.ah
  %.sroa.01.0.i.i39.i = phi i64 [ %i.eh, %bb.ai ], [ %.sroa.0.0.i.i.i37.i, %bb.ah ], !dbg !35831
  %.sroa.0.0.i.i40.i = phi ptr [ %i.ef, %bb.ai ], [ %.sroa.0.0.i36.i, %bb.ah ], !dbg !35832
  %i.ei = invoke { i64, i64 } @_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE12get_index_ofeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i40.i, i64 noundef %.sroa.01.0.i.i39.i)
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !35833, !noalias !35641 ; 2 uses

.noexc12.i:                                       ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i38.i
  %i.ej = extractvalue { i64, i64 } %i.ei, 0
  %i.ek = trunc nuw i64 %i.ej to i1, !dbg !35834
  %or.cond.i.i = select i1 %.not.i11.i, i1 %i.ek, i1 false, !dbg !35834
  br i1 %or.cond.i.i, label %.preheader.i.i, label %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive33merge_sorted_to_schema_order_implNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnINtNtCsgZ49sUHp3tW_5alloc3vec3VecB18_EE0Cs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !35834

.preheader.i.i:                                   ; preds = %.noexc12.i
  %i.el = extractvalue { i64, i64 } %i.ei, 1, !dbg !35835
  %.sroa.521.0..sroa_idx22.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.54.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.aj, !dbg !35836

bb.aj:                                            ; preds = %.cont.i.i, %.preheader.i.i
  %.sroa.0.041.i.i = phi i64 [ %spec.select42.i.i, %.cont.i.i ], [ %.sroa.6.0.i31.i, %.preheader.i.i ], !dbg !35837 ; 2 uses
  %.sroa.6.040.i.i = phi i64 [ %spec.select43.i.i, %.cont.i.i ], [ %i.el, %.preheader.i.i ], !dbg !35838 ; 2 uses
  %i.em = icmp ult i64 %.sroa.6.040.i.i, %.sroa.0.041.i.i, !dbg !35839 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !35840, !noalias !35650
  %..i.sroa.sel.i = select i1 %i.em, ptr %i.ca, ptr %i.h, !dbg !35840 ; 5 uses
  %.sroa.019.0.copyload.i.i = load i8, ptr %..i.sroa.sel.i, align 16, !dbg !35841, !noalias !35650 ; 3 uses
  store i8 33, ptr %..i.sroa.sel.i, align 16, !dbg !35842, !noalias !35650
  %.not25.i.i = icmp eq i8 %.sroa.019.0.copyload.i.i, 33, !dbg !35843
  br i1 %.not25.i.i, label %bb.al, label %bb.ak, !dbg !35836

bb.ak:                                            ; preds = %bb.aj
  %..i.sroa.sel.sroa.sel18.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.em, i64 177, i64 1, !dbg !35841
  %..i.sroa.sel.sroa.sel18.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.h, i64 %..i.sroa.sel.sroa.sel18.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, !dbg !35841
  store i8 %.sroa.019.0.copyload.i.i, ptr %i.f, align 16, !dbg !35844, !noalias !35650
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(159) %.sroa.521.0..sroa_idx22.i.i, ptr noundef nonnull align 1 dereferenceable(159) %..i.sroa.sel.sroa.sel18.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, i64 159, i1 false), !dbg !35844, !noalias !35650
  br label %bb.am, !dbg !35845

bb.al:                                            ; preds = %bb.aj
  %.sroa.gep.sroa.gep7.val.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 16, !dbg !35846, !noalias !35641, !nonnull !1881
  %.sroa.4.0..sroa_idx.val.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 16, !dbg !35846, !noalias !35641, !nonnull !1881
  %i.en = select i1 %i.em, ptr %.sroa.gep.sroa.gep7.val.i, ptr %.sroa.4.0..sroa_idx.val.i, !dbg !35846
  %.sroa.gep.sroa.gep.val.i = load ptr, ptr %.sroa.53.0..sroa_idx.i, align 8, !dbg !35846, !noalias !35641, !nonnull !1881, !align !2090
  %.sroa.5.0..sroa_idx.val.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !35846, !noalias !35641, !nonnull !1881, !align !2090
  %i.eo = select i1 %i.em, ptr %.sroa.gep.sroa.gep.val.i, ptr %.sroa.5.0..sroa_idx.val.i, !dbg !35846
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24, !dbg !35846
  %i.eq = load ptr, ptr %i.ep, align 8, !dbg !35846, !invariant.load !1881, !noalias !35663, !nonnull !1881
  invoke void %i.eq(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.f, ptr noundef nonnull %i.en) #53
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !35847, !inline_history !35448

.noexc13.i:                                       ; preds = %bb.al
  %.pr.i.i = load i8, ptr %i.f, align 16, !dbg !35848, !noalias !35650
  br label %bb.am, !dbg !35849

bb.am:                                            ; preds = %.noexc13.i, %bb.ak
  %i.er = phi i8 [ %.pr.i.i, %.noexc13.i ], [ %.sroa.019.0.copyload.i.i, %bb.ak ], !dbg !35848
  %.not26.i.i = icmp eq i8 %i.er, 32, !dbg !35848
  br i1 %.not26.i.i, label %bb.ap, label %bb.an, !dbg !35850, !prof !2010

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !35851, !noalias !35664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %.sroa.54.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(160) %i.f, i64 160, i1 false), !dbg !35852, !noalias !35650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !35853, !noalias !35650
  store i64 0, ptr %i.d, align 16, !dbg !35854, !alias.scope !35665, !noalias !35664
  store i64 1, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !dbg !35854, !alias.scope !35665, !noalias !35664
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEINtB4_10SpecExtendBT_INtNtNtCscgRAwXFJnXP_4core5array4iter8IntoIterBT_Kj1_EE11spec_extendCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(176) %i.d)
          to label %.noexc14.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !35855

.noexc14.i:                                       ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !35856, !noalias !35664
  %i.es = load i8, ptr %..i.sroa.sel.i, align 16, !dbg !35857, !range !2270, !noalias !35650, !noundef !1881 ; 2 uses
  %.not.i37.i.i = icmp eq i8 %i.es, 33, !dbg !35857
  br i1 %.not.i37.i.i, label %bb.ao, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB27_8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBM_EL_E4peek0ECs2g09Ig8GZd6_13polars_stream.exit38.i.i, !dbg !35858

bb.ao:                                            ; preds = %.noexc14.i
  %.sroa.gep.sroa.gep13.val.i = load ptr, ptr %.sroa.53.0..sroa_idx.i, align 8, !dbg !35859, !noalias !35641, !nonnull !1881
  %.sroa.5.0..sroa_idx.val24.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !35859, !noalias !35641, !nonnull !1881
  %.val30.i.i = select i1 %i.em, ptr %.sroa.gep.sroa.gep13.val.i, ptr %.sroa.5.0..sroa_idx.val24.i, !dbg !35859
  %.sroa.gep.sroa.gep10.val.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 16, !dbg !35859, !noalias !35641, !nonnull !1881
  %.sroa.4.0..sroa_idx.val25.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 16, !dbg !35859, !noalias !35641, !nonnull !1881
  %.val.i.i = select i1 %i.em, ptr %.sroa.gep.sroa.gep10.val.i, ptr %.sroa.4.0..sroa_idx.val25.i, !dbg !35860
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !35861, !noalias !35667
  %i.et = getelementptr inbounds nuw i8, ptr %.val30.i.i, i64 24, !dbg !35862
  %i.eu = load ptr, ptr %i.et, align 8, !dbg !35862, !invariant.load !1881, !noalias !35668, !nonnull !1881
  invoke void %i.eu(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.c, ptr noundef nonnull %.val.i.i) #53
          to label %.noexc15.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !35863, !inline_history !35448

.noexc15.i:                                       ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %..i.sroa.sel.i, ptr noundef nonnull align 16 dereferenceable(160) %i.c, i64 160, i1 false), !dbg !35864, !noalias !35650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !35865, !noalias !35667
  %i.ev = load i8, ptr %..i.sroa.sel.i, align 16, !dbg !35866, !range !2270, !noalias !35650, !noundef !1881 ; 2 uses
  %i.ew = icmp ne i8 %i.ev, 33, !dbg !35866
  call void @llvm.assume(i1 %i.ew), !dbg !35867
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB27_8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBM_EL_E4peek0ECs2g09Ig8GZd6_13polars_stream.exit38.i.i, !dbg !35868

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB27_8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBM_EL_E4peek0ECs2g09Ig8GZd6_13polars_stream.exit38.i.i: ; preds = %.noexc15.i, %.noexc14.i
  %i.ex = phi i8 [ %i.es, %.noexc14.i ], [ %i.ev, %.noexc15.i ], !dbg !35869
  switch i8 %i.ex, label %bb.aq [
    i8 32, label %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive33merge_sorted_to_schema_order_implNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnINtNtCsgZ49sUHp3tW_5alloc3vec3VecB18_EE0Cs2g09Ig8GZd6_13polars_stream.exit.i
    i8 31, label %bb.ar
  ], !dbg !35870

bb.ap:                                            ; preds = %bb.am
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #57
          to label %.noexc16.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !35871

.noexc16.i:                                       ; preds = %bb.ap
  unreachable, !dbg !35871

bb.aq:                                            ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB27_8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBM_EL_E4peek0ECs2g09Ig8GZd6_13polars_stream.exit38.i.i
  %..i.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.em, i64 272, i64 96, !dbg !35872
  %..i.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.h, i64 %..i.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, !dbg !35872
  br label %.noexc50.i, !dbg !35873

bb.ar:                                            ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB27_8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBM_EL_E4peek0ECs2g09Ig8GZd6_13polars_stream.exit38.i.i
  %..i.sroa.sel.sroa.sel4.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.em, i64 184, i64 8, !dbg !35874
  %..i.sroa.sel.sroa.sel4.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.h, i64 %..i.sroa.sel.sroa.sel4.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, !dbg !35874
  %i.ey = load ptr, ptr %..i.sroa.sel.sroa.sel4.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !dbg !35874, !noalias !35670, !nonnull !1881, !noundef !1881
  %..i.sroa.sel.sroa.sel7.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.em, i64 192, i64 16, !dbg !35874
  %..i.sroa.sel.sroa.sel7.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.h, i64 %..i.sroa.sel.sroa.sel7.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, !dbg !35874
  %i.ez = load ptr, ptr %..i.sroa.sel.sroa.sel7.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 16, !dbg !35874, !noalias !35670, !nonnull !1881, !align !2090, !noundef !1881 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16, !dbg !35875
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !35875, !range !2100, !invariant.load !1881, !noalias !35671
  %i.fc = add nsw i64 %i.fb, -1, !dbg !35875
  %i.fd = and i64 %i.fc, -16, !dbg !35875
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fd, !dbg !35875
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16, !dbg !35875
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 288, !dbg !35876
  %i.fh = load ptr, ptr %i.fg, align 8, !dbg !35876, !invariant.load !1881, !noalias !35671, !nonnull !1881
  %i.fi = invoke noundef nonnull align 8 ptr %i.fh(ptr noundef nonnull %i.ff) #53
          to label %.noexc50.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !35877, !inline_history !35417

.noexc50.i:                                       ; preds = %bb.ar, %bb.aq
  %.sroa.0.0.i45.i = phi ptr [ %..i.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, %bb.aq ], [ %i.fi, %bb.ar ], !dbg !35878 ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i45.i, i64 23, !dbg !35879
  %i.fk = load i8, ptr %i.fj, align 1, !dbg !35879, !range !2243, !alias.scope !35672, !noalias !35671, !noundef !1881 ; 2 uses
  %i.fl = icmp ugt i8 %i.fk, -41, !dbg !35880
  br i1 %i.fl, label %bb.at, label %bb.as, !dbg !35880

bb.as:                                            ; preds = %.noexc50.i
  %i.fm = add i8 %i.fk, 64, !dbg !35881
  %i.fn = call i8 @llvm.umin.i8(i8 %i.fm, i8 24), !dbg !35882
  %.sroa.0.0.i.i.i46.i = zext nneg i8 %i.fn to i64, !dbg !35882
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i47.i, !dbg !35883

bb.at:                                            ; preds = %.noexc50.i
  %i.fo = load ptr, ptr %.sroa.0.0.i45.i, align 8, !dbg !35884, !alias.scope !35672, !noalias !35671, !noundef !1881
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i45.i, i64 8, !dbg !35885
  %i.fq = load i64, ptr %i.fp, align 8, !dbg !35885, !alias.scope !35672, !noalias !35671, !noundef !1881
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i47.i, !dbg !35886

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i47.i: ; preds = %bb.at, %bb.as
  %.sroa.01.0.i.i48.i = phi i64 [ %i.fq, %bb.at ], [ %.sroa.0.0.i.i.i46.i, %bb.as ], !dbg !35887
  %.sroa.0.0.i.i49.i = phi ptr [ %i.fo, %bb.at ], [ %.sroa.0.0.i45.i, %bb.as ], !dbg !35888
  %i.fr = invoke { i64, i64 } @_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE12get_index_ofeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i49.i, i64 noundef %.sroa.01.0.i.i48.i)
          to label %.noexc17.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !35889 ; 2 uses

.noexc17.i:                                       ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i47.i
  %i.fs = extractvalue { i64, i64 } %i.fr, 0, !dbg !35890
  %i.ft = trunc nuw i64 %i.fs to i1, !dbg !35891
  br i1 %i.ft, label %.cont.i.i, label %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive33merge_sorted_to_schema_order_implNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnINtNtCsgZ49sUHp3tW_5alloc3vec3VecB18_EE0Cs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !35891

.cont.i.i:                                        ; preds = %.noexc17.i
  %i.fu = extractvalue { i64, i64 } %i.fr, 1, !dbg !35890 ; 2 uses
  %spec.select42.i.i = select i1 %i.em, i64 %.sroa.0.041.i.i, i64 %i.fu, !dbg !35892
  %spec.select43.i.i = select i1 %i.em, i64 %i.fu, i64 %.sroa.6.040.i.i, !dbg !35892
  br label %bb.aj, !dbg !35893

_RNCINvNtCslpwjCj2YNBy_9polars_io4hive33merge_sorted_to_schema_order_implNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnINtNtCsgZ49sUHp3tW_5alloc3vec3VecB18_EE0Cs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %.noexc17.i, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB27_8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBM_EL_E4peek0ECs2g09Ig8GZd6_13polars_stream.exit38.i.i, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB27_8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBM_EL_E4peek0ECs2g09Ig8GZd6_13polars_stream.exit36.i.i, %.noexc12.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !35894, !noalias !35673
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.b, ptr noundef nonnull align 16 dereferenceable(176) %i.h, i64 176, i1 false), !dbg !35895, !noalias !35641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !35896, !noalias !35641
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.g, ptr noundef nonnull align 16 dereferenceable(176) %i.ca, i64 176, i1 false), !dbg !35896, !noalias !35641
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEINtB2_10SpecExtendBR_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters8peekable8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBR_EL_EE11spec_extendCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(176) %i.b)
          to label %bb.au unwind label %bb.av, !dbg !35897

bb.au:                                            ; preds = %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive33merge_sorted_to_schema_order_implNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnINtNtCsgZ49sUHp3tW_5alloc3vec3VecB18_EE0Cs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !35898, !noalias !35673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !35899, !noalias !35674
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.a, ptr noundef nonnull align 16 dereferenceable(176) %i.g, i64 176, i1 false), !dbg !35900, !noalias !35641
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEINtB2_10SpecExtendBR_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters8peekable8PeekableQDNtNtNtB2b_6traits8iterator8Iteratorp4ItemBR_EL_EE11spec_extendCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(176) %i.a)
          to label %bb.az unwind label %bb.ay, !dbg !35901

bb.av:                                            ; preds = %_RNCINvNtCslpwjCj2YNBy_9polars_io4hive33merge_sorted_to_schema_order_implNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnINtNtCsgZ49sUHp3tW_5alloc3vec3VecB18_EE0Cs2g09Ig8GZd6_13polars_stream.exit.i
  %i.fv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters8peekable8PeekableQDNtNtNtBN_6traits8iterator8Iteratorp4ItemNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEL_EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(176) %i.g) #56
          to label %.body30 unwind label %bb.aw, !dbg !35902

bb.aw:                                            ; preds = %bb.ax, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.av
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #51, !dbg !35903
  unreachable, !dbg !35903

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i47.i, %bb.ar, %bb.ao, %bb.an, %bb.al, %bb.ap, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i38.i, %bb.ag, %.thread.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i, %bb.ac
  %lpad.loopexit.split-lp80 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters8peekable8PeekableQDNtNtNtBN_6traits8iterator8Iteratorp4ItemNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEL_EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(176) %i.ca) #56
          to label %bb.ax unwind label %bb.aw, !dbg !35904

bb.ax:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters8peekable8PeekableQDNtNtNtBN_6traits8iterator8Iteratorp4ItemNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEL_EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(176) %i.h) #56
          to label %.body30 unwind label %bb.aw, !dbg !35904

bb.ay:                                            ; preds = %bb.au
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body30, !dbg !35905

.body30:                                          ; preds = %bb.av, %bb.ax, %bb.ay
  %eh.lpad-body31 = phi { ptr, i32 } [ %i.fx, %bb.ay ], [ %lpad.loopexit.split-lp80, %bb.ax ], [ %i.fv, %bb.av ]
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.bc, !dbg !35906

bb.az:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !35907, !noalias !35674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !35902, !noalias !35641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !35904, !noalias !35641
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECs2g09Ig8GZd6_13polars_stream.exit32 unwind label %bb.ba, !dbg !35908

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %.body30, %bb.ba
  %.pn = phi { ptr, i32 } [ %i.fy, %bb.ba ], [ %eh.lpad-body31, %.body30 ]
  invoke void @_RNvXs5_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %bb.bd unwind label %bb.bc, !dbg !35909

bb.ba:                                            ; preds = %bb.az
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECs2g09Ig8GZd6_13polars_stream.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECs2g09Ig8GZd6_13polars_stream.exit32: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !35905
  invoke void @_RNvXs5_NtNtCsgZ49sUHp3tW_5alloc3vec5drainINtB5_5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec5drain5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECs2g09Ig8GZd6_13polars_stream.exit33 unwind label %bb.y, !dbg !35910

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec5drain5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECs2g09Ig8GZd6_13polars_stream.exit33: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECs2g09Ig8GZd6_13polars_stream.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !35905
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04), !dbg !35911
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !35912
  %i.fz = load i64, ptr %i.n, align 8, !dbg !35913, !noundef !1881 ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(48) %0)
          to label %bb.bb unwind label %.thread58, !dbg !35761

bb.bb:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec5drain5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECs2g09Ig8GZd6_13polars_stream.exit33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04, i64 24, i1 false), !dbg !35761
  store i64 %i.fz, ptr %i.o, align 8, !dbg !35761
  store i32 3, ptr %i.bl, align 8, !dbg !35761
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04), !dbg !35914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !35915
  br label %.sink.split, !dbg !35916

bb.bc:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECs2g09Ig8GZd6_13polars_stream.exit, %.body30, %bb.bk, %bb.bd
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #51, !dbg !35917
  unreachable, !dbg !35917

bb.bd:                                            ; preds = %bb.x, %bb.y, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.09.1.ph = phi i1 [ true, %bb.x ], [ %.sroa.09.2, %bb.y ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECs2g09Ig8GZd6_13polars_stream.exit ]
  %.pn24.ph = phi { ptr, i32 } [ %i.bp, %bb.x ], [ %i.br, %bb.y ], [ %.pn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECs2g09Ig8GZd6_13polars_stream.exit ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.k) #56
          to label %bb.f unwind label %bb.bc, !dbg !35915

.thread79:                                        ; preds = %bb.o, %bb.r
  %i.gb = load i64, ptr %i.n, align 8, !dbg !35918, !noundef !1881
  store i64 %i.gb, ptr %i.o, align 8, !dbg !35918
  br label %bb.be, !dbg !35919

bb.be:                                            ; preds = %bb.r, %.thread79
  %i.gc = load ptr, ptr %i.u, align 8, !dbg !35920, !nonnull !1881, !noundef !1881
  %i.gd = load i64, ptr %i.w, align 8, !dbg !35921, !noundef !1881
  %i.ge = invoke noundef nonnull align 8 ptr @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10horizontalNtNtB4_9dataframe9DataFrame20hstack_mut_unchecked(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 16 %i.gc, i64 noundef %i.gd)
          to label %bb.bf unwind label %.thread, !dbg !35922 ; 0 uses

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.bi unwind label %bb.bg, !dbg !35923

bb.bg:                                            ; preds = %bb.bf
  %i.gf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.m, align 8, !dbg !35923, !alias.scope !35689 ; 2 uses
  %i.gg = icmp eq i64 %.val2.i, 0
  br i1 %i.gg, label %common.resume, label %bb.bh, !dbg !35924

bb.bh:                                            ; preds = %bb.bg
  %.val3.i = load ptr, ptr %i.u, align 8, !dbg !35923, !alias.scope !35690, !nonnull !1881, !noundef !1881
  %i.gh = mul nuw i64 %.val2.i, 160, !dbg !35925
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.gh, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !dbg !35926, !noalias !35691
  br label %common.resume, !dbg !35927

bb.bi:                                            ; preds = %bb.bf
  %.val.i = load i64, ptr %i.m, align 8, !dbg !35923, !alias.scope !35689 ; 2 uses
  %i.gi = icmp eq i64 %.val.i, 0
  br i1 %i.gi, label %.sink.split, label %bb.bj, !dbg !35928

bb.bj:                                            ; preds = %bb.bi
  %.val1.i = load ptr, ptr %i.u, align 8, !dbg !35923, !alias.scope !35690, !nonnull !1881, !noundef !1881
  %i.gj = mul nuw i64 %.val.i, 160, !dbg !35929
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.gj, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !dbg !35930, !noalias !35692
  br label %.sink.split, !dbg !35931

common.resume:                                    ; preds = %bb.f, %bb.bk, %.thread58, %bb.bg, %bb.bh
  %common.resume.op = phi { ptr, i32 } [ %i.gf, %bb.bg ], [ %i.gf, %bb.bh ], [ %.pn2646, %bb.bk ], [ %.pn24.ph, %bb.f ], [ %i.bq, %.thread58 ]
  resume { ptr, i32 } %common.resume.op, !dbg !35932

bb.bk:                                            ; preds = %.thread, %bb.f
  %.pn2646 = phi { ptr, i32 } [ %i.z, %.thread ], [ %.pn24.ph, %bb.f ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.m) #56
          to label %common.resume unwind label %bb.bc, !dbg !35696
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvNtNtCscgRAwXFJnXP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs2g09Ig8GZd6_13polars_stream(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !35933 !guid !35938 {
bb.a:
  %i.a = icmp ugt i64 %1, %2, !dbg !35940
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !35940, !prof !2010

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #57, !dbg !35941, !noalias !35939
  unreachable, !dbg !35941

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %0, %1, !dbg !35942
  br i1 %i.b, label %bb.d, label %_RNvNtNtCscgRAwXFJnXP_4core5slice5index16into_slice_range.exit, !dbg !35942, !prof !2010

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #57, !dbg !35943, !noalias !35939
  unreachable, !dbg !35943

_RNvNtNtCscgRAwXFJnXP_4core5slice5index16into_slice_range.exit: ; preds = %bb.c
  %i.c = insertvalue { i64, i64 } poison, i64 %0, 0, !dbg !35944
  %i.d = insertvalue { i64, i64 } %i.c, i64 %1, 1, !dbg !35944
  ret { i64, i64 } %i.d, !dbg !35945
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvNtNtCscgRAwXFJnXP_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs2g09Ig8GZd6_13polars_stream(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !35946 !guid !35951 {
bb.a:
  %i.a = icmp ugt i64 %0, %1, !dbg !35953
  br i1 %i.a, label %bb.b, label %_RNvNtNtCscgRAwXFJnXP_4core5slice5index16into_slice_range.exit, !dbg !35953, !prof !2010

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #57, !dbg !35954, !noalias !35952
  unreachable, !dbg !35954

_RNvNtNtCscgRAwXFJnXP_4core5slice5index16into_slice_range.exit: ; preds = %bb.a
  %i.b = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %0, 1, !dbg !35955
  ret { i64, i64 } %i.b, !dbg !35956
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvNtNtCscgRAwXFJnXP_4core5slice5index5rangeINtNtNtB6_3ops5range9RangeFromjEECs2g09Ig8GZd6_13polars_stream(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !35957 !guid !35962 {
bb.a:
  %i.a = icmp ugt i64 %0, %1, !dbg !35964
  br i1 %i.a, label %bb.b, label %_RNvNtNtCscgRAwXFJnXP_4core5slice5index16into_slice_range.exit, !dbg !35964, !prof !2010

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %0, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #57, !dbg !35965, !noalias !35963
  unreachable, !dbg !35965

_RNvNtNtCscgRAwXFJnXP_4core5slice5index16into_slice_range.exit: ; preds = %bb.a
  %i.b = insertvalue { i64, i64 } poison, i64 %0, 0, !dbg !35966
  %i.c = insertvalue { i64, i64 } %i.b, i64 %1, 1, !dbg !35966
  ret { i64, i64 } %i.c, !dbg !35967
}

end_hunk_0
