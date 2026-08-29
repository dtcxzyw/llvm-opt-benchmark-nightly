Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.14?download=true
inline.NumInlined: 10276
inline.NumDeleted: 5308
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown4hive12rewrite_hive:bb.a
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans4hive16HivePartitionsDfEBM_.exit458thread-pre-split unwind label %bb.np, !dbg !115853

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans4hive16HivePartitionsDfEBM_.exit458thread-pre-split: ; preds = %bb.no
  %.pr = load i64, ptr %i.lk, align 8, !dbg !114368
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans4hive16HivePartitionsDfEBM_.exit458, !dbg !114368

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans4hive16HivePartitionsDfEBM_.exit458: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans4hive16HivePartitionsDfEBM_.exit458thread-pre-split, %bb.dv
  %i.zr = phi i64 [ %.pr, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans4hive16HivePartitionsDfEBM_.exit458thread-pre-split ], [ %i.lo, %bb.dv ], !dbg !114368
  %.not185 = icmp eq i64 %i.zr, -9223372036854775808, !dbg !114368
  br i1 %.not185, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans4hive16HivePartitionsDfEBM_.exit462, label %bb.nr, !dbg !114368

bb.np:                                            ; preds = %bb.no
  %i.zs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zt = load i64, ptr %i.lk, align 8, !dbg !114368, !range !134, !noundef !11
  %.not184 = icmp eq i64 %i.zt, -9223372036854775808, !dbg !114368
  br i1 %.not184, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans4hive16HivePartitionsDfEEB18_.exit, label %bb.nq, !dbg !114368

bb.nq:                                            ; preds = %bb.np
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.lk)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans4hive16HivePartitionsDfEEB18_.exit unwind label %bb.ay, !dbg !115855

bb.nr:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans4hive16HivePartitionsDfEBM_.exit458
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.lk)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans4hive16HivePartitionsDfEBM_.exit462 unwind label %bb.h, !dbg !115857

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans4hive16HivePartitionsDfEBM_.exit462: ; preds = %bb.nr, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans4hive16HivePartitionsDfEBM_.exit458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !dbg !114368
  br label %bb.d, !dbg !115859

bb.ns:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans4hive16HivePartitionsDfEEB18_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREBM_(ptr noalias noundef align 16 dereferenceable(368) %1) #46
          to label %.critedge281 unwind label %bb.ay, !dbg !113640

bb.nt:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans4hive16HivePartitionsDfEEB18_.exit
  br i1 %.sroa.0143.0, label %bb.nv, label %.critedge281, !dbg !113640

bb.nu:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans4hive16HivePartitionsDfEEB18_.exit
  br i1 %.sroa.0138.0, label %bb.nz, label %.critedge281, !dbg !113640

bb.nv:                                            ; preds = %bb.nt
  %i.zu = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !113640
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.zu) #46
          to label %bb.nw unwind label %bb.ay, !dbg !113640

bb.nw:                                            ; preds = %bb.nv
  %i.zv = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !113640
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.zv) #46
          to label %.critedge278 unwind label %bb.ay, !dbg !113640

.critedge278:                                     ; preds = %bb.nw
  %i.zw = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !113640 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !115860), !dbg !113640
  call void @llvm.experimental.noalias.scope.decl(metadata !115863), !dbg !115866
  %i.zx = load ptr, ptr %i.zw, align 16, !dbg !115868, !alias.scope !115872, !nonnull !11, !noundef !11
  %i.zy = atomicrmw sub ptr %i.zx, i64 1 release, align 8, !dbg !115873, !noalias !115872
  %i.zz = icmp eq i64 %i.zy, 1, !dbg !115876
  br i1 %i.zz, label %bb.nx, label %.critedge279, !dbg !115876

bb.nx:                                            ; preds = %.critedge278
  fence acquire, !dbg !115877
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.zw) #49
          to label %.critedge279 unwind label %bb.ay, !dbg !115879

.critedge279:                                     ; preds = %bb.nx, %.critedge278
  %i.aaa = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !113640 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !115880), !dbg !113640
  call void @llvm.experimental.noalias.scope.decl(metadata !115883), !dbg !115886
  %i.aab = load ptr, ptr %i.aaa, align 8, !dbg !115888, !alias.scope !115892, !nonnull !11, !noundef !11
  %i.aac = atomicrmw sub ptr %i.aab, i64 1 release, align 8, !dbg !115893, !noalias !115892
  %i.aad = icmp eq i64 %i.aac, 1, !dbg !115896
  br i1 %i.aad, label %bb.ny, label %.critedge280, !dbg !115896

bb.ny:                                            ; preds = %.critedge279
  fence acquire, !dbg !115897
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options14GroupbyOptionsE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aaa) #49
          to label %.critedge280 unwind label %bb.ay, !dbg !115899

.critedge281:                                     ; preds = %.critedge284, %bb.ob, %bb.nu, %bb.nt, %.critedge280, %bb.ns
  resume { ptr, i32 } %.pn271, !dbg !113977

.critedge280:                                     ; preds = %bb.ny, %.critedge279
  %i.aae = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !113640
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1V_EEEB17_(ptr noalias noundef align 8 dereferenceable(24) %i.aae) #46
          to label %.critedge281 unwind label %bb.ay, !dbg !113640

bb.nz:                                            ; preds = %bb.nu
  %i.aaf = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !113640 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !115900), !dbg !113640
  call void @llvm.experimental.noalias.scope.decl(metadata !115903), !dbg !115906
  %i.aag = load ptr, ptr %i.aaf, align 8, !dbg !115908, !alias.scope !115912, !nonnull !11, !noundef !11
  %i.aah = atomicrmw sub ptr %i.aag, i64 1 release, align 8, !dbg !115913, !noalias !115912
  %i.aai = icmp eq i64 %i.aah, 1, !dbg !115916
  br i1 %i.aai, label %bb.oa, label %.noexc467, !dbg !115916

bb.oa:                                            ; preds = %bb.nz
  fence acquire, !dbg !115917
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aaf) #49
          to label %.noexc467 unwind label %bb.ay, !dbg !115919

.noexc467:                                        ; preds = %bb.oa, %bb.nz
  %i.aaj = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !113640
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.aaj) #46
          to label %.critedge283 unwind label %bb.ay, !dbg !113640

.critedge283:                                     ; preds = %.noexc467
  %i.aak = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !113640
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.aak) #46
          to label %.critedge284 unwind label %bb.ay, !dbg !113640

.critedge284:                                     ; preds = %.critedge283
  %i.aal = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !113640 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !115920), !dbg !113640
  call void @llvm.experimental.noalias.scope.decl(metadata !115923), !dbg !115926
  %i.aam = load ptr, ptr %i.aal, align 16, !dbg !115928, !alias.scope !115932, !nonnull !11, !noundef !11
  %i.aan = atomicrmw sub ptr %i.aam, i64 1 release, align 8, !dbg !115933, !noalias !115932
  %i.aao = icmp eq i64 %i.aan, 1, !dbg !115936
  br i1 %i.aao, label %bb.ob, label %.critedge281, !dbg !115936

bb.ob:                                            ; preds = %.critedge284
  fence acquire, !dbg !115937
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options13JoinOptionsIRE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aal) #49
          to label %.critedge281 unwind label %bb.ay, !dbg !115939
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown4hive14get_partitions(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !115940 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7), !dbg !115941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !115941
  call void @_RINvNtCsh8eZTKRCwoO_3std3env3varReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @446, i64 noundef 22), !dbg !115941
  %i.c = load i64, ptr %i.b, align 8, !dbg !115942, !range !13, !noundef !11
  %i.d = trunc nuw i64 %i.c to i1, !dbg !115945
  br i1 %i.d, label %.thread13, label %bb.b, !dbg !115945

.thread13:                                        ; preds = %bb.a
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(32) %i.b), !dbg !115946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !115947
  br label %bb.j, !dbg !115948

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !115951
  %.sroa.06.0.copyload = load i64, ptr %i.e, align 8, !dbg !115951 ; 2 uses
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !115951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.0..sroa_idx, i64 16, i1 false), !dbg !115951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !115947
  %.not = icmp eq i64 %.sroa.06.0.copyload, -9223372036854775808, !dbg !115952
  br i1 %.not, label %bb.j, label %bb.c, !dbg !115948

bb.c:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !115953 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !115953
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false), !dbg !115955
  store i64 %.sroa.06.0.copyload, ptr %i.a, align 8, !dbg !115953
  call void @llvm.experimental.noalias.scope.decl(metadata !115956), !dbg !115953
  %i.f = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !115959, !alias.scope !115956, !nonnull !11, !noundef !11 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !115977
  %i.h = load i64, ptr %i.g, align 8, !dbg !115977, !alias.scope !115956, !noundef !11 ; 2 uses
  switch i64 %i.h, label %thread-pre-split.i.i [
    i64 0, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i
    i64 1, label %bb.d
  ], !dbg !115978

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr %i.f, align 1, !dbg !115989, !alias.scope !115991, !noalias !115994, !noundef !11 ; 2 uses
  switch i8 %i.i, label %bb.e [
    i8 43, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i
    i8 45, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i
  ], !dbg !115989

thread-pre-split.i.i:                             ; preds = %bb.c
  %.pr.i.i = load i8, ptr %i.f, align 1, !dbg !115989, !alias.scope !115991, !noalias !115994
  br label %bb.e, !dbg !115989

bb.e:                                             ; preds = %thread-pre-split.i.i, %bb.d
  %i.j = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.i, %bb.d ], !dbg !115989
  %cond.i.i = icmp eq i8 %i.j, 43, !dbg !115989   ; 2 uses
  %i.k = sext i1 %cond.i.i to i64, !dbg !115989
  %.sroa.15.0.i.i = add nsw i64 %i.h, %i.k, !dbg !115989 ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64, !dbg !115989
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.0.idx.i.i, !dbg !115989 ; 2 uses
  %i.l = icmp samesign ult i64 %.sroa.15.0.i.i, 17
  br i1 %i.l, label %.preheader.i.i, label %.preheader56.i.i.preheader, !dbg !115996

.preheader.i.i:                                   ; preds = %bb.e
  %.not5366.i.i = icmp eq i64 %.sroa.15.0.i.i, 0, !dbg !116001
  br i1 %.not5366.i.i, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i, label %.lr.ph.i.i, !dbg !116001

.preheader56.i.i:                                 ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i28, i64 1, !dbg !116003
  %i.n = add nsw i64 %.sroa.15.1.i.i27, -1, !dbg !116003 ; 2 uses
  %.not52.i.not.i = icmp eq i64 %i.n, 0, !dbg !116005
  br i1 %.not52.i.not.i, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i, label %.preheader56.i.i.preheader, !dbg !116005

.preheader56.i.i.preheader:                       ; preds = %bb.e, %.preheader56.i.i
  %.sroa.0.1.i.i28 = phi ptr [ %i.m, %.preheader56.i.i ], [ %.sroa.0.0.i.i, %bb.e ] ; 2 uses
  %.sroa.15.1.i.i27 = phi i64 [ %i.n, %.preheader56.i.i ], [ %.sroa.15.0.i.i, %bb.e ]
  %.sroa.042.0.i.i26 = phi i64 [ %i.t, %.preheader56.i.i ], [ 0, %bb.e ] ; 2 uses
  %2 = icmp ugt i64 %.sroa.042.0.i.i26, 1844674407370955161, !dbg !116006
  br i1 %2, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i, label %bb.f, !dbg !116011, !prof !135

bb.f:                                             ; preds = %.preheader56.i.i.preheader
  %3 = mul nuw i64 %.sroa.042.0.i.i26, 10, !dbg !116006 ; 2 uses
  %i.o = load i8, ptr %.sroa.0.1.i.i28, align 1, !dbg !116015, !alias.scope !115991, !noalias !115994, !noundef !11
  %i.p = zext i8 %i.o to i32, !dbg !116017
  %i.q = add nsw i32 %i.p, -48, !dbg !116018      ; 2 uses
  %i.r = icmp ugt i32 %i.q, 9, !dbg !116027
  %i.s = zext nneg i32 %i.q to i64
  %i.t = add i64 %3, %i.s                         ; 3 uses
  %i.u = icmp ult i64 %i.t, %3
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.u, !dbg !116029, !prof !116030
  br i1 %or.cond.i, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i, label %.preheader56.i.i, !dbg !116029, !prof !116030

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.g
  %.sroa.0.269.i.i = phi ptr [ %i.ab, %bb.g ], [ %.sroa.0.0.i.i, %.preheader.i.i ] ; 2 uses
  %.sroa.15.268.i.i = phi i64 [ %i.aa, %bb.g ], [ %.sroa.15.0.i.i, %.preheader.i.i ]
  %.sroa.042.267.i.i = phi i64 [ %i.ad, %bb.g ], [ 0, %.preheader.i.i ]
  %i.v = load i8, ptr %.sroa.0.269.i.i, align 1, !dbg !116031, !alias.scope !115991, !noalias !115994, !noundef !11
  %i.w = zext i8 %i.v to i32, !dbg !116032
  %i.x = add nsw i32 %i.w, -48, !dbg !116033      ; 2 uses
  %i.y = icmp ugt i32 %i.x, 9, !dbg !116036
  br i1 %i.y, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i, label %bb.g, !dbg !116037

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.z = mul i64 %.sroa.042.267.i.i, 10, !dbg !116038
  %i.aa = add nsw i64 %.sroa.15.268.i.i, -1, !dbg !116039 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i, i64 1, !dbg !116039
  %i.ac = zext nneg i32 %i.x to i64, !dbg !116040
  %i.ad = add i64 %i.z, %i.ac, !dbg !116042       ; 2 uses
  %.not53.i.i = icmp eq i64 %i.aa, 0, !dbg !116001
  br i1 %.not53.i.i, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i, label %.lr.ph.i.i, !dbg !116001

_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i: ; preds = %bb.f, %.preheader56.i.i.preheader, %.preheader56.i.i, %bb.g, %.lr.ph.i.i, %.preheader.i.i, %bb.d, %bb.d, %bb.c
  %.sink.i.i = phi i64 [ 64, %bb.d ], [ 0, %.preheader.i.i ], [ 64, %bb.c ], [ 64, %bb.d ], [ 64, %.lr.ph.i.i ], [ %i.ad, %bb.g ], [ 64, %bb.f ], [ 64, %.preheader56.i.i.preheader ], [ %i.t, %.preheader56.i.i ]
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown4hive14get_partitions0Bb_.exit unwind label %bb.h, !dbg !116043

bb.h:                                             ; preds = %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %bb.i, !dbg !116046

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !116043
  unreachable, !dbg !116043

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.h
  resume { ptr, i32 } %i.ae, !dbg !116043

_RNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown4hive14get_partitions0Bb_.exit: ; preds = %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !116048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !116050
  br label %bb.j, !dbg !116051

bb.j:                                             ; preds = %bb.b, %.thread13, %_RNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown4hive14get_partitions0Bb_.exit
  %.sroa.0.0 = phi i64 [ %.sink.i.i, %_RNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown4hive14get_partitions0Bb_.exit ], [ 64, %.thread13 ], [ 64, %bb.b ], !dbg !116054
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7), !dbg !116055
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !116056
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !116056, !noundef !11
  %.sroa.0.0.i9 = call noundef i64 @llvm.umin.i64(i64 %i.ah, i64 %.sroa.0.0), !dbg !116060
  call void @_RNvNtCs1LHh8CLbVkQ_11polars_core5utils15split_df_as_ref(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef %.sroa.0.0.i9, i1 noundef zeroext false), !dbg !116064
  ret void, !dbg !116065
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown4hive14make_predicate(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %3, ptr noalias noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !116066 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 6 uses
  %i.g = alloca [56 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !116067
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !116068
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !116068
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !116068
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 23, !dbg !116069 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !dbg !116069, !range !1228, !alias.scope !116080, !noundef !11 ; 2 uses
  %i.k = icmp ugt i8 %i.j, -41, !dbg !116083
  br i1 %i.k, label %bb.c, label %bb.b, !dbg !116083

bb.b:                                             ; preds = %bb.a
  %i.l = add i8 %i.j, 64, !dbg !116084
  %i.m = tail call i8 @llvm.umin.i8(i8 %i.l, i8 24), !dbg !116086
  %.sroa.0.0.i.i = zext nneg i8 %i.m to i64, !dbg !116086
  br label %bb.e, !dbg !116089

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !dbg !116090, !alias.scope !116080, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !116091
  %i.p = load i64, ptr %i.o, align 8, !dbg !116091, !alias.scope !116080, !noundef !11
  br label %bb.e, !dbg !116092

bb.d:                                             ; preds = %bb.t, %bb.n, %bb.l, %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body6

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i = phi i64 [ %i.p, %bb.c ], [ %.sroa.0.0.i.i, %bb.b ], !dbg !116093
  %.sroa.0.0.i = phi ptr [ %i.n, %bb.c ], [ %2, %bb.b ], !dbg !116094
  invoke void @_RNvMNtCs1LHh8CLbVkQ_11polars_core5frameNtNtB2_9dataframe9DataFrame6column(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.01.0.i)
          to label %bb.f unwind label %bb.d, !dbg !116095

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116096), !dbg !116099
  %i.r = load i64, ptr %i.e, align 8, !dbg !116100, !range !517, !alias.scope !116096, !noundef !11
  %.not.i5 = icmp eq i64 %i.r, 18, !dbg !116100
  br i1 %.not.i5, label %bb.k, label %bb.g, !dbg !116103, !prof !15

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !116104, !noalias !116096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.e, i64 72, i1 false), !dbg !116104
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @318, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @447) #48
          to label %bb.i unwind label %bb.h, !dbg !116105, !noalias !116096

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #46
          to label %.body6 unwind label %bb.j, !dbg !116107, !noalias !116096

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !116108, !noalias !116096
  unreachable, !dbg !116108

bb.k:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !116109
  %i.v = load ptr, ptr %i.u, align 8, !dbg !116109, !alias.scope !116096, !nonnull !11, !align !45344, !noundef !11 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !116110
  %i.w = load i8, ptr %i.v, align 16, !dbg !116111, !range !32, !noundef !11
  %.not = icmp eq i8 %i.w, 31, !dbg !116111
  br i1 %.not, label %bb.m, label %bb.l, !dbg !116114

bb.l:                                             ; preds = %bb.k
  %i.x = invoke noundef nonnull align 8 ptr @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn22as_materialized_series(ptr noundef nonnull align 16 %i.v)
          to label %bb.n unwind label %bb.d, !dbg !116115

bb.m:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !116117
  br label %bb.n, !dbg !116121

bb.n:                                             ; preds = %bb.l, %bb.m
  %.sroa.0.0 = phi ptr [ %i.y, %bb.m ], [ %i.x, %bb.l ], !dbg !116122
  invoke void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core6series3ops7reshapeNtB6_6Series7implode(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.0)
          to label %bb.o unwind label %bb.d, !dbg !116123

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116124), !dbg !116127
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116128), !dbg !116127
  %i.z = load i64, ptr %i.f, align 8, !dbg !116130, !range !517, !alias.scope !116128, !noalias !116124, !noundef !11
  %.not.i = icmp eq i64 %i.z, 18, !dbg !116130
  br i1 %.not.i, label %bb.t, label %bb.p, !dbg !116133, !prof !15

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !116134, !noalias !116135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.f, i64 72, i1 false), !dbg !116134, !noalias !116124
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @318, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @448) #48
          to label %bb.r unwind label %bb.q, !dbg !116136, !noalias !116135

bb.q:                                             ; preds = %bb.p
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b) #46
          to label %.body6 unwind label %bb.s, !dbg !116138, !noalias !116135

bb.r:                                             ; preds = %bb.p
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !116139, !noalias !116135
  unreachable, !dbg !116139

bb.t:                                             ; preds = %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !116140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.ac, i64 56, i1 false), !dbg !116140, !alias.scope !116135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !116141
  %i.ad = invoke { ptr, ptr } @_RNvXs_NtCs1LHh8CLbVkQ_11polars_core9datatypesNtB4_8ListTypeNtB4_18PolarsPhysicalType14ca_into_series(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.g)
          to label %bb.u unwind label %bb.d, !dbg !116142 ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.ae = extractvalue { ptr, ptr } %i.ad, 0, !dbg !116142 ; 3 uses
  %i.af = extractvalue { ptr, ptr } %i.ad, 1, !dbg !116142 ; 2 uses
  store ptr %i.ae, ptr %i.h, align 8, !dbg !116142
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !116142
  store ptr %i.af, ptr %i.ag, align 8, !dbg !116142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !116148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !116149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !dbg !116149
  %i.ah = invoke noundef i64 @_RINvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr7builderNtB3_12AExprBuilder3colNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEB9_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.v unwind label %bb.z, !dbg !116151

.thread16:                                        ; preds = %bb.w, %bb.v
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit11, !dbg !116152

end_hunk_0
begin_hunk_1_@_RINvYNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7visitor4expr9AexprNodeNtNtB7_8visitors10TreeWalker5visitNtNtNtNtB9_9optimizer3cse4csee15NaiveExprMergerEBb_
declare hidden void @_RINvYNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7visitor4expr9AexprNodeNtNtB7_8visitors10TreeWalker5visitNtNtNtNtB9_9optimizer3cse4csee15NaiveExprMergerEBb_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(176), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6inputsNtB4_2IR6inputs(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noundef nonnull align 16) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs0_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6inputsNtB5_6InputsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3nth(ptr noalias noundef align 8 dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6inputsNtB4_2IR10inputs_mut(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef align 16 dereferenceable(368)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6inputsNtB5_9InputsMutNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3nth(ptr noalias noundef align 8 dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRRxECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRxECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string5inferNtNtB4_8patterns7Pattern12is_inferable(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr6schemaNtB6_5AExpr7to_name(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsfcROwRM8ZtH_11polars_plan9constants19get_pl_element_name(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsfcROwRM8ZtH_11polars_plan9constants16get_literal_name(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr14IRFunctionExprNtB6_7Display3fmtBE_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtCsfcROwRM8ZtH_11polars_plan9constants12get_len_name(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathE8from_vecCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragelE8from_vecCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragexE8from_vecCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7visitor4expr9AexprNodeNtNtB7_8visitors10TreeWalker5visitNtNtNtNtB9_9optimizer3cse4csee21ExprIdentifierVisitorEBb_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7visitor4expr9AexprNodeNtNtB7_8visitors10TreeWalker7rewriteNtNtNtNtB9_9optimizer3cse4csee21CommonSubExprRewriterEBb_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), i64 noundef, ptr noalias noundef align 8 dereferenceable(56), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed() unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() unnamed_addr #35

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs2mZqlW55729_12polars_utils3vecINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtB5_16CapacityByFactor23with_capacity_by_factorB1g_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 4) i8 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr17projection_height27aexpr_projection_height_rec(i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans7visitor4exprNtB4_9AexprNode8to_field(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 16 captures(address) dereferenceable(80), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 4 ptr @_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapymNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3getyECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs1LHh8CLbVkQ_11polars_core6config7verbose() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsh8eZTKRCwoO_3std2io5stdio7__eprint(ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEE8grow_oneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #39

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer9stack_opt16OptimizationRuleEL_EE8grow_oneB1d_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #39

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer3cse4csee10IdentifierEE8grow_oneB1y_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #39

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE8grow_oneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #39

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE8grow_oneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #39

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRE8grow_oneBS_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #39

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprE8grow_oneBS_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #39

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE8grow_oneBS_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #39

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer3cse4csee11VisitRecordE8grow_oneBW_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #39

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8grow_oneB1a_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #39

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTNtNtCs2mZqlW55729_12polars_utils5arena4NodeBN_EE8grow_oneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #39

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTNtNtCs2mZqlW55729_12polars_utils5arena4NodeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEE8grow_oneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #39

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTNtNtCs2mZqlW55729_12polars_utils5arena4NodejEE8grow_oneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #39

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTjNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREE8grow_oneBU_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #39

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTjNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer3cse4csee10IdentifierEE8grow_oneBY_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #39

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs39HECPMKlmJ_7ndarray(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #39

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs2xBDrd9T7Le_3url(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #39

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr8traverseNtB5_5AExpr17inputs_rev_strictNtNtNtB7_10conversion9stack_opt9ExtendVecEB9_(ptr noundef nonnull align 16, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion10type_checkNtB2_13TypeCheckRuleNtNtNtB6_9optimizer9stack_opt16OptimizationRule13optimize_plan(ptr dead_on_unwind noalias noundef writable sret([368 x i8]) align 16 captures(none) dereferenceable(368), ptr noalias noundef nonnull, ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCsfcROwRM8ZtH_11polars_plan3dsl4exprNtB5_11EvalVariant13element_dtype(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_exprNtB4_16SimplifyExprRuleNtNtB6_9stack_opt16OptimizationRule13optimize_expr(ptr dead_on_unwind noalias noundef writable sret([144 x i8]) align 16 captures(address) dereferenceable(144), ptr noalias noundef nonnull, ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion13type_coercionNtB2_16TypeCoercionRuleNtNtNtB6_9optimizer9stack_opt16OptimizationRule13optimize_expr(ptr dead_on_unwind noalias noundef writable sret([144 x i8]) align 16 captures(address) dereferenceable(144), ptr noalias noundef nonnull, ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i48 @_RINvMs1_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB6_15FunctionOptions10with_flagsNCNvMs_NtNtNtB8_5aexpr13function_expr4listNtB1u_14IRListFunction16function_options0EBa_(i48) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i8 @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core5utils9supertypeNtB2_14SuperTypeFlagsNtNtCscgRAwXFJnXP_4core7default7Default7default() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i48 @_RINvMs1_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB6_15FunctionOptions10with_flagsNCNvMs_NtNtNtB8_5aexpr13function_expr4listNtB1u_14IRListFunction16function_optionss_0EBa_(i48) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr6schemaNtB4_12FieldsMapper21map_to_list_supertype(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 16 captures(address) dereferenceable(80), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr4listNtNtB4_6schema12FieldsMapper14ensure_is_list(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr6schemaNtB4_12FieldsMapper15with_same_dtype(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 16 captures(address) dereferenceable(80), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr6schemaNtB4_12FieldsMapper33map_to_list_and_array_inner_dtype(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 16 captures(none) dereferenceable(80), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr6schemaNtB4_12FieldsMapper15nested_sum_type(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 16 captures(none) dereferenceable(80), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr6schemaNtB4_12FieldsMapper23nested_mean_median_type(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 16 captures(none) dereferenceable(80), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr6schemaNtB4_12FieldsMapper12moment_dtype(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 16 captures(address) dereferenceable(80), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr6schemaNtB4_12FieldsMapper9var_dtype(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 16 captures(address) dereferenceable(80), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr6schemaNtB5_12FieldsMapper13try_map_dtypeNCNvMs_NtB7_4listNtB1R_14IRListFunction9get_field0EBd_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 16 captures(none) dereferenceable(80), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr6schemaNtB5_12FieldsMapper13try_map_dtypeNCNvMs_NtB7_4listNtB1R_14IRListFunction9get_fields_0EBd_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 16 captures(none) dereferenceable(80), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr6schemaNtB5_12FieldsMapper13try_map_dtypeNCNvMs_NtB7_4listNtB1R_14IRListFunction9get_fields0_0EBd_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 16 captures(none) dereferenceable(80), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr6schemaNtB5_12FieldsMapper13try_map_dtypeNCNvMs_NtB7_4listNtB1R_14IRListFunction9get_fields1_0EBd_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 16 captures(none) dereferenceable(80), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 16 ptr @_RNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans7visitor4exprNtB4_9AexprNode8to_aexpr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEB1J_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 16) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCscgRAwXFJnXP_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans7visitor4exprNtB5_10AExprArenaNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #38

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvNtNtNtCs7VARH73bmU_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsh8eZTKRCwoO_3std3env3varReECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer5fusedNtB2_15FusedArithmeticNtNtB4_9stack_opt16OptimizationRule13optimize_expr(ptr dead_on_unwind noalias noundef writable sret([144 x i8]) align 16 captures(none) dereferenceable(144), ptr noalias noundef nonnull, ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvCshZ4kA9mlxmz_13polars_config6config() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer3cse4cspe26common_subplan_elimination(i64 noundef, ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17slice_pushdown_lpNtB2_13SlicePushDown3new(ptr dead_on_unwind noalias noundef writable sret([200 x i8]) align 8 captures(none) dereferenceable(200)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17slice_pushdown_lpNtB5_13SlicePushDown8optimize(ptr dead_on_unwind noalias noundef writable sret([368 x i8]) align 16 captures(address) dereferenceable(368), ptr noalias noundef align 8 dereferenceable(200), i64 noundef, ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdownNtB4_17PredicatePushDown8optimize(ptr dead_on_unwind noalias noundef writable sret([368 x i8]) align 16 captures(address) dereferenceable(368), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(368), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer3cse12cache_states16set_cache_states(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i64 noundef, ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24), i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sortNtB2_12CollapseSortNtNtB4_9stack_opt16OptimizationRule13optimize_plan(ptr dead_on_unwind noalias noundef writable sret([368 x i8]) align 16 captures(none) dereferenceable(368), ptr noalias noundef nonnull, ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdown19projection_pushdown(i64 noundef, ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer20collapse_and_projectNtB4_27SimpleProjectionAndCollapseNtNtB6_9stack_opt16OptimizationRule13optimize_plan(ptr dead_on_unwind noalias noundef writable sret([368 x i8]) align 16 captures(none) dereferenceable(368), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17filter_constraintNtB2_20FilterConstraintRuleNtNtB4_9stack_opt16OptimizationRule13optimize_plan(ptr dead_on_unwind noalias noundef writable sret([368 x i8]) align 16 captures(none) dereferenceable(368), ptr noalias noundef dereferenceable(1), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_exprNtB2_19SimplifyBooleanRuleNtNtB4_9stack_opt16OptimizationRule13optimize_plan(ptr dead_on_unwind noalias noundef writable sret([368 x i8]) align 16 captures(none) dereferenceable(368), ptr noalias noundef dereferenceable(1), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_exprNtB2_19SimplifyBooleanRuleNtNtB4_9stack_opt16OptimizationRule13optimize_expr(ptr dead_on_unwind noalias noundef writable sret([144 x i8]) align 16 captures(none) dereferenceable(144), ptr noalias noundef dereferenceable(1), ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13flatten_unionNtB2_16FlattenUnionRuleNtNtB4_9stack_opt16OptimizationRule13optimize_plan(ptr dead_on_unwind noalias noundef writable sret([368 x i8]) align 16 captures(none) dereferenceable(368), ptr noalias noundef nonnull, ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer20cluster_with_columns8optimize(i64 noundef, ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7visitor2lp17try_with_ir_arenaNCNvNtB6_9optimizer8optimize0NtNtCs2mZqlW55729_12polars_utils5arena4NodeEB8_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(320)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering28simplify_and_fetch_orderings(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasets(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i64 noundef, ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer22parquet_metadata_prune22prune_parquet_metadata(i64 noundef, ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMsq_NtCsgZ49sUHp3tW_5alloc4syncINtB6_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE15from_iter_exactINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6cloned6ClonedINtNtNtB1Y_5slice4iter4IterBI_EEECsfcROwRM8ZtH_11polars_plan(ptr noundef nonnull, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB5_14SlicePartialEqBC_E17equal_same_lengthCsfcROwRM8ZtH_11polars_plan(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i1 } @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtCs2mZqlW55729_12polars_utils5arena4NodeuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11insert_fullCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(64), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion13type_coercion18get_aexpr_and_type(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 16 captures(none) dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion13type_coercion11materialize(ptr dead_on_unwind noalias noundef writable sret([144 x i8]) align 16 captures(none) dereferenceable(144), ptr noundef nonnull align 16) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs7_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValue11materialize(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion13type_coercion12early_escape(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i48 @_RNvMs0_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_exprNtB5_14IRFunctionExpr16function_options(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs1LHh8CLbVkQ_11polars_core5utils9supertype13get_supertype(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 16 captures(address) dereferenceable(48), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion13type_coercion16modify_supertype(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 16 captures(none) dereferenceable(48), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(48), ptr noundef nonnull align 16, ptr noundef nonnull align 16, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.sadd.sat.i64(i64, i64) #37

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core6series10arithmetic4listNtB4_13NumericListOp22try_get_leaf_supertype(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 16 captures(address) dereferenceable(80), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtB6_5Debug3fmtCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB2_12DataTypeExpr13into_datatype(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 16 captures(address) dereferenceable(80), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCsfcROwRM8ZtH_11polars_plan3dsl8selectorNtB5_16DataTypeSelector7matches(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #42

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsY_NtCs1LHh8CLbVkQ_11polars_core10named_fromNtNtB7_6series6SeriesINtB5_9NamedFromINtNtCsgZ49sUHp3tW_5alloc3vec3VecmESmE3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir17datatype_fn_to_ir20datatype_fn_to_aexpr0EE9from_iterB3V_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs0_NtCs1LHh8CLbVkQ_11polars_core10named_fromNtNtB7_6series6SeriesINtB5_9NamedFromINtNtCsgZ49sUHp3tW_5alloc3vec3VecReESB1S_E3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtCsgjwxzEoLG5s_12polars_error7warning20get_warning_function() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsc_NtNtNtCsePnBjWcsLF5_10polars_ops5frame4join4argsNtB5_14JoinValidation13is_valid_join(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl25validate_columns_in_inputRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1l_EEB8_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCscgRAwXFJnXP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENCNvNtNtNtNtB20_5plans10conversion9dsl_to_ir4join12resolve_joins1_0ENtNtB2Q_7expr_ir6ExprIRINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXso_B4c_IB4a_INtB1b_3VecB3M_EB4W_EINtNtNtB4_6traits7collect12FromIteratorIB4a_B3M_B4W_EE9from_iterBQ_E0B5W_EB20_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCscgRAwXFJnXP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENCNvNtNtNtNtB20_5plans10conversion9dsl_to_ir4join12resolve_joins2_0ENtNtB2Q_7expr_ir6ExprIRINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXso_B4c_IB4a_INtB1b_3VecB3M_EB4W_EINtNtNtB4_6traits7collect12FromIteratorIB4a_B3M_B4W_EE9from_iterBQ_E0B5W_EB20_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs5_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetTRNtNtB7_6pl_str10PlSmallStrB1n_ENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps3newCsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCshe0pyuXM1S4_13polars_schema6schemaINtB2_6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join4argsNtB2_8JoinArgs15should_coalesce(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr10properties7general15all_elementwiseNtNtB8_7expr_ir6ExprIREBa_(ptr noundef nonnull align 16, i64 noundef range(i64 0, 82351536043346213), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtNtCs2Aa799EbAFJ_11polars_time7windows8durationNtB5_8Duration9try_parse(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysB11_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir4join12resolve_joins8_0EE9from_iterB5i_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType13pretty_format(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i1 } @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBO_EuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11insert_fullCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtCsfcROwRM8ZtH_11polars_plan5utils8has_exprNCNvNtNtNtNtB4_5plans10conversion9dsl_to_ir4join12resolve_joins0_0EB4_(ptr noundef nonnull align 16) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtCsfcROwRM8ZtH_11polars_plan5utils8has_exprNCNvNtNtNtNtB4_5plans10conversion9dsl_to_ir4join15check_join_keys0EB4_(ptr noundef nonnull align 16) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir10expr_to_ir27to_expr_ir_materialized_lit(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 16 captures(none) dereferenceable(112), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(144), ptr noalias noundef align 8 dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvCseW9CSxMs6pk_9recursive22get_minimum_stack_size() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvCseW9CSxMs6pk_9recursive25get_stack_allocation_size() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTNtNtCs2mZqlW55729_12polars_utils5arena4NodeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEE5drainNtNtNtCscgRAwXFJnXP_4core3ops5range9RangeFullECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs1_NtCs2mZqlW55729_12polars_utils5arenaINtB5_5ArenaNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprE9duplicateBX_(ptr noalias noundef align 8 dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsfcROwRM8ZtH_11polars_plan5utils13merge_schemas(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCs1LHh8CLbVkQ_11polars_core6schemaINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtB4_9datatypes5dtype8DataTypeuENtB2_9SchemaExt12to_supertype(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprE16extend_desugaredINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1P_3zip3ZipINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEINtB30_6ValuesB3F_B4u_EEINtNtB1T_6option6OptionBG_ENCNvNtNtNtNtBM_5plans10conversion9dsl_to_ir6concat16convert_st_union0EEBM_(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(336)) unnamed_addr #0
end_hunk_1
