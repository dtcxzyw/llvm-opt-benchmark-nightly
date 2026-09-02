Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.03?download=true
inline.NumInlined: 8906
inline.NumDeleted: 2976
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python7pyarrow14anyvalue_to_py:bb.a
    i8 25, label %bb.p
    i8 26, label %bb.p
    i8 29, label %bb.p
    i8 32, label %bb.p
  ], !dbg !118962

_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit._crit_edge119: ; preds = %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit
  %.phi.trans.insert120 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.pre121 = load ptr, ptr %.phi.trans.insert120, align 8, !dbg !118979
  %.phi.trans.insert122 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.pre123 = load i64, ptr %.phi.trans.insert122, align 16, !dbg !118979
  br label %bb.m, !dbg !118962

_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit._crit_edge: ; preds = %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !118980
  %.phi.trans.insert115 = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.pre116 = load i8, ptr %.phi.trans.insert115, align 1, !dbg !118981, !range !4211
  %.phi.trans.insert117 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.pre118 = load ptr, ptr %.phi.trans.insert117, align 16, !dbg !118982
  br label %bb.o, !dbg !118962

_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread.sink.split: ; preds = %bb.d, %bb.f
  %.sink = phi i8 [ 23, %bb.f ], [ 21, %bb.d ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !118983
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !118983
  %i.au = load i32, ptr %i.at, align 4, !dbg !118983, !alias.scope !118849, !noalias !118848, !noundef !3885
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 4, !dbg !118983
  store i32 %i.au, ptr %i.av, align 4, !dbg !118983, !alias.scope !118848, !noalias !118849
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !118983
  store ptr %i.as, ptr %i.aw, align 8, !dbg !118983, !alias.scope !118848, !noalias !118849
  store i8 %.sink, ptr %i.m, align 16, !dbg !118983, !alias.scope !118848, !noalias !118849
  br label %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread, !dbg !118984

_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread: ; preds = %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread.sink.split, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !118984
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, ptr noundef nonnull align 16 dereferenceable(48) %i.m, i64 48, i1 false), !dbg !118984
  %i.ax = load i8, ptr %i.n, align 16, !dbg !118985, !range !4377, !noundef !3885
  switch i8 %i.ax, label %bb.bw [
    i8 11, label %bb.br
    i8 12, label %bb.br
    i8 13, label %bb.br
    i8 30, label %bb.bq
    i8 1, label %bb.bx
    i8 2, label %bb.bx
    i8 3, label %bb.bx
    i8 4, label %bb.bx
    i8 5, label %bb.bx
    i8 6, label %bb.bx
    i8 7, label %bb.bx
    i8 8, label %bb.bx
    i8 9, label %bb.bx
    i8 10, label %bb.bx
  ], !dbg !118986

bb.k:                                             ; preds = %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit
  tail call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #49, !dbg !118987
  br label %bb.p, !dbg !118988

bb.l:                                             ; preds = %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !118989
  %i.az = load i8, ptr %i.ay, align 1, !dbg !118989, !range !4073, !noundef !3885
  %i.ba = trunc nuw i8 %i.az to i1, !dbg !118989
  %_Py_TrueStruct._Py_FalseStruct.i.i = select i1 %i.ba, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct, !dbg !118990
  %i.bb = invoke noundef nonnull ptr @_RNvXsk_NtCsbm5zPlkZccl_4pyo38instanceINtB5_8BorrowedNtNtNtB7_5types3any5PyAnyEINtB5_11BoundObjectBO_E10into_boundCsfcROwRM8ZtH_11polars_plan(ptr noundef nonnull %_Py_TrueStruct._Py_FalseStruct.i.i)
          to label %bb.p unwind label %.thread104, !dbg !118991

bb.m:                                             ; preds = %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit._crit_edge119, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread94
  %i.bc = phi i64 [ %.pre123, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit._crit_edge119 ], [ %.sroa.01.0.i.i, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread94 ], !dbg !118979
  %i.bd = phi ptr [ %.pre121, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit._crit_edge119 ], [ %.sroa.0.0.i.i, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread94 ], !dbg !118979
  %i.be = invoke noundef nonnull ptr @_RNvMNtNtCsbm5zPlkZccl_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %i.bc)
          to label %bb.p unwind label %.thread104, !dbg !118992

bb.n:                                             ; preds = %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 4, !dbg !118993
  %i.bg = load i32, ptr %i.bf, align 4, !dbg !118993, !noundef !3885
  %i.bh = invoke noundef i32 @_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate12from_ymd_opt(i32 noundef 1970, i32 noundef 1, i32 noundef 1)
          to label %bb.r unwind label %.thread104, !dbg !118863 ; 2 uses

bb.o:                                             ; preds = %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit._crit_edge, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread95
  %i.bi = phi ptr [ %.pre118, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit._crit_edge ], [ %.sroa.0.0.i, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread95 ], !dbg !118982 ; 2 uses
  %i.bj = phi i8 [ %.pre116, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit._crit_edge ], [ %i.t, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread95 ], !dbg !118981
  %i.bk = phi i64 [ %.pre, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit._crit_edge ], [ %i.r, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread95 ], !dbg !118980 ; 4 uses
  switch i8 %i.bj, label %default.unreachable132 [
    i8 0, label %bb.ad
    i8 1, label %bb.af
    i8 2, label %bb.ae
  ], !dbg !118994

bb.p:                                             ; preds = %bb.l, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread96, %bb.m, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types8datetime8PyTzInfoEEECsfcROwRM8ZtH_11polars_plan.exit86, %bb.ac, %bb.k
  %.sroa.0.0 = phi ptr [ @_Py_NoneStruct, %bb.k ], [ null, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread96 ], [ null, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit ], [ %..sroa.08.0, %bb.ac ], [ %..sroa.030.0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types8datetime8PyTzInfoEEECsfcROwRM8ZtH_11polars_plan.exit86 ], [ null, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit ], [ null, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit ], [ null, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit ], [ %i.be, %bb.m ], [ %i.bb, %bb.l ], !dbg !118995
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 16 dereferenceable(48) %i.m)
          to label %bb.bp unwind label %bb.j, !dbg !118996

.thread104:                                       ; preds = %bb.l, %bb.m, %bb.ab, %bb.x, %bb.y, %bb.t, %bb.s, %bb.n, %bb.ak, %bb.ah, %bb.af
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread, !dbg !118996

bb.q:                                             ; preds = %bb.bv, %bb.bw
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread100, !dbg !118996

bb.r:                                             ; preds = %bb.n
  %.not62 = icmp eq i32 %i.bh, 0, !dbg !118997
  br i1 %.not62, label %bb.w, label %bb.s, !dbg !118998

bb.s:                                             ; preds = %bb.r
  %i.bl = sext i32 %i.bg to i64, !dbg !118999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !118869
  %i.bm = mul nsw i64 %i.bl, 86400, !dbg !119000
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !119001
  store i64 %i.bm, ptr %i.bn, align 8, !dbg !119001
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !119001
  store i32 0, ptr %i.bo, align 8, !dbg !119001
  store i64 1, ptr %i.a, align 8, !dbg !119001
  %i.bp = invoke { i64, i32 } @_RINvCs9o5SvTbM2BP_6chrono6expectNtNtB2_10time_delta9TimeDeltaECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @703, i64 noundef 29)
          to label %bb.t unwind label %.thread104, !dbg !119002 ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.bq = extractvalue { i64, i32 } %i.bp, 0, !dbg !119002
  %i.br = extractvalue { i64, i32 } %i.bp, 1, !dbg !119002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !119003
  %i.bs = invoke noundef i32 @_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate18checked_add_signed(i32 noundef %i.bh, i64 noundef %i.bq, i32 noundef %i.br)
          to label %bb.u unwind label %.thread104, !dbg !119004 ; 3 uses

bb.u:                                             ; preds = %bb.t
  %.not63 = icmp eq i32 %i.bs, 0, !dbg !119005
  br i1 %.not63, label %bb.w, label %bb.v, !dbg !119006

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !119007
  %i.bt = lshr i32 %i.bs, 3, !dbg !119008
  %i.bu = and i32 %i.bt, 1023, !dbg !119008       ; 3 uses
  %i.bv = zext nneg i32 %i.bu to i64, !dbg !119009 ; 2 uses
  %i.bw = icmp samesign ult i32 %i.bu, 733, !dbg !119010
  br i1 %i.bw, label %bb.x, label %bb.y, !dbg !119010

bb.w:                                             ; preds = %.noexc85, %bb.am, %bb.ad, %bb.u, %bb.r
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 16 dereferenceable(48) %i.m)
          to label %bb.bd unwind label %bb.j, !dbg !118996

bb.x:                                             ; preds = %bb.v
  %i.bx = ashr i32 %i.bs, 13, !dbg !119011
  %i.by = getelementptr inbounds nuw i8, ptr @704, i64 %i.bv, !dbg !119010
  %i.bz = load i8, ptr %i.by, align 1, !dbg !119010, !noundef !3885
  %i.ca = zext i8 %i.bz to i32, !dbg !119010
  %i.cb = add nuw nsw i32 %i.bu, %i.ca, !dbg !119012 ; 2 uses
  %i.cc = lshr i32 %i.cb, 6, !dbg !119013
  %i.cd = trunc nuw nsw i32 %i.cc to i8, !dbg !119014
  %i.ce = trunc i32 %i.cb to i8, !dbg !119015
  %i.cf = lshr i8 %i.ce, 1, !dbg !119015
  %i.cg = and i8 %i.cf, 31, !dbg !119015
  invoke void @_RNvMNtNtCsbm5zPlkZccl_4pyo35types8datetimeNtB2_6PyDate3new(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.l, i32 noundef %i.bx, i8 noundef %i.cd, i8 noundef %i.cg)
          to label %bb.aa unwind label %.thread104, !dbg !119007

bb.y:                                             ; preds = %bb.v
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bv, i64 noundef 733, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @706) #44
          to label %bb.z unwind label %.thread104, !dbg !119010

bb.z:                                             ; preds = %bb.bi, %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.ch = load i64, ptr %i.l, align 8, !dbg !119016, !range !4017, !noundef !3885
  %i.ci = trunc nuw i64 %i.ch to i1, !dbg !119017
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !119017
  %i.ck = load ptr, ptr %i.cj, align 8, !dbg !119017, !nonnull !3885
  br i1 %i.ci, label %bb.ab, label %bb.ac, !dbg !119018

bb.ab:                                            ; preds = %bb.aa
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types8datetime6PyDateENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(72) %i.l)
          to label %bb.ac unwind label %.thread104, !dbg !119018

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %..sroa.08.0 = phi ptr [ null, %bb.ab ], [ %i.ck, %bb.aa ], !dbg !119019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !119019
  br label %bb.p, !dbg !119020

default.unreachable132:                           ; preds = %bb.o
  unreachable

bb.ad:                                            ; preds = %bb.o
  %i.cl = srem i64 %i.bk, 1000, !dbg !119021
  %i.cm = sdiv i64 %i.bk, 1000, !dbg !119022
  %i.cn = icmp eq i64 %i.cl, 0, !dbg !119023
  br i1 %i.cn, label %bb.af, label %bb.w, !dbg !119024

bb.ae:                                            ; preds = %bb.o
  %i.co = mul i64 %i.bk, 1000, !dbg !119025
  br label %bb.af, !dbg !119026

bb.af:                                            ; preds = %bb.ad, %bb.o, %bb.ae
  %.sroa.015.0 = phi i64 [ %i.bk, %bb.o ], [ %i.co, %bb.ae ], [ %i.cm, %bb.ad ], !dbg !119027 ; 2 uses
  %i.cp = sdiv i64 %.sroa.015.0, 1000000, !dbg !119028
  %i.cq = srem i64 %.sroa.015.0, 1000000, !dbg !119029 ; 3 uses
  %.lobit.i = ashr i64 %i.cq, 63, !dbg !119029
  %.sroa.0.0.i82 = add nsw i64 %.lobit.i, %i.cp, !dbg !119029 ; 2 uses
  %i.cr = icmp slt i64 %i.cq, 0, !dbg !119030
  %1 = select i1 %i.cr, i64 1000000, i64 0, !dbg !119030
  %spec.select.i = add nsw i64 %1, %i.cq, !dbg !119030
  %2 = trunc nuw nsw i64 %spec.select.i to i32, !dbg !119031
  %i.cs = sdiv i64 %.sroa.0.0.i82, 86400, !dbg !119032
  %i.ct = srem i64 %.sroa.0.0.i82, 86400, !dbg !119033 ; 3 uses
  %.lobit.i.i = ashr i64 %i.ct, 63, !dbg !119033
  %.sroa.0.0.i.i83 = add nsw i64 %.lobit.i.i, %i.cs, !dbg !119033
  %i.cu = trunc nsw i64 %.sroa.0.0.i.i83 to i32, !dbg !119034
  %i.cv = add nsw i32 %i.cu, 719163, !dbg !119034
  %i.cw = invoke noundef i32 @_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef %i.cv)
          to label %.noexc85 unwind label %.thread104, !dbg !119035 ; 3 uses

.noexc85:                                         ; preds = %bb.af
  %.not.i84 = icmp eq i32 %i.cw, 0, !dbg !119035
  br i1 %.not.i84, label %bb.w, label %bb.ag, !dbg !119036

bb.ag:                                            ; preds = %.noexc85
  %i.cx = icmp slt i64 %i.ct, 0, !dbg !119037
  %3 = select i1 %i.cx, i64 86400, i64 0, !dbg !119037
  %spec.select.i.i = add nsw i64 %3, %i.ct, !dbg !119037
  %4 = trunc nuw nsw i64 %spec.select.i.i to i32, !dbg !119038 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !119039
  %.not52 = icmp eq ptr %i.bi, null, !dbg !119040
  br i1 %.not52, label %bb.ai, label %bb.ah, !dbg !119041

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !119042
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !118901
  invoke void @_RINvMNtNtCsbm5zPlkZccl_4pyo35types6moduleNtB3_8PyModule6importReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @707, i64 noundef 8)
          to label %bb.aj unwind label %.thread104, !dbg !119043

bb.ai:                                            ; preds = %bb.ag
  store ptr null, ptr %i.k, align 8, !dbg !119044
  br label %bb.bf, !dbg !119045

bb.aj:                                            ; preds = %bb.ah
  %i.cy = load i64, ptr %i.i, align 8, !dbg !119046, !range !4017, !noundef !3885
  %i.cz = trunc nuw i64 %i.cy to i1, !dbg !119047
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !119047
  %i.db = load ptr, ptr %i.da, align 8, !dbg !119047, !nonnull !3885 ; 4 uses
  br i1 %i.cz, label %bb.ak, label %bb.al, !dbg !119048

bb.ak:                                            ; preds = %bb.aj
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types6module8PyModuleENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(72) %i.i)
          to label %.thread111 unwind label %.thread104, !dbg !119048

.thread111:                                       ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !119049
  br label %bb.am, !dbg !119050

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !119049
  store ptr %i.db, ptr %i.j, align 8, !dbg !119051
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !119052
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !119052
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @708, i64 noundef 8)
          to label %bb.ap unwind label %bb.ao, !dbg !119053

bb.am:                                            ; preds = %.thread111, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !119054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !119055
  br label %bb.w, !dbg !119056

bb.an:                                            ; preds = %bb.az, %bb.at, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.dh, %bb.at ], [ %i.dk, %bb.az ], [ %i.dc, %bb.ao ]
  call void @_Py_DecRef(ptr noundef nonnull %i.db) #49, !dbg !119057
  br label %.thread, !dbg !119058

bb.ao:                                            ; preds = %bb.aq, %bb.al
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ap:                                            ; preds = %bb.al
  %i.dd = load i64, ptr %i.g, align 8, !dbg !119059, !range !4017, !noundef !3885
  %i.de = trunc nuw i64 %i.dd to i1, !dbg !119060
  %i.df = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !119060
  %i.dg = load ptr, ptr %i.df, align 8, !dbg !119060, !nonnull !3885 ; 4 uses
  br i1 %i.de, label %bb.aq, label %bb.ar, !dbg !119061

bb.aq:                                            ; preds = %bb.ap
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(72) %i.g)
          to label %bb.as unwind label %bb.ao, !dbg !119061

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !119062
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !119063
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !119064
  invoke fastcc void @_RNvXsC_NtCsgZ49sUHp3tW_5alloc6stringNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneNtB5_12SpecToString14spec_to_stringCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bi)
          to label %bb.au unwind label %bb.at, !dbg !119065

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !119062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !119066
  br label %bb.ay, !dbg !119067

bb.at:                                            ; preds = %bb.aw, %bb.au, %bb.ar
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %i.dg) #49, !dbg !119068
  br label %bb.an, !dbg !119069

bb.au:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !119063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !119070
  invoke void @_RNvXsj_NtNtCsbm5zPlkZccl_4pyo35types5tupleTNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB9_4call10PyCallArgs15call_positionalCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull %i.dg)
          to label %bb.av unwind label %bb.at, !dbg !119071

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !119072
  %i.di = load i64, ptr %i.h, align 8, !dbg !119073, !range !4017, !noundef !3885
  %i.dj = trunc nuw i64 %i.di to i1, !dbg !119074
  br i1 %i.dj, label %bb.aw, label %bb.ba, !dbg !119075

bb.aw:                                            ; preds = %bb.av
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(72) %i.h)
          to label %bb.ax unwind label %bb.at, !dbg !119075

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !119066
  call void @_Py_DecRef(ptr noundef nonnull %i.dg) #49, !dbg !119076
  br label %bb.ay, !dbg !119077

bb.ay:                                            ; preds = %bb.as, %bb.ax, %bb.bc
  call void @_Py_DecRef(ptr noundef nonnull %i.db) #49, !dbg !119078
  br label %bb.am, !dbg !119079

bb.az:                                            ; preds = %bb.ba
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.an, !dbg !119080

bb.ba:                                            ; preds = %bb.av
  %i.dl = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !119074
  %i.dm = load ptr, ptr %i.dl, align 8, !dbg !119074, !nonnull !3885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !119066
  call void @_Py_DecRef(ptr noundef nonnull %i.dg) #49, !dbg !119081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !118910
  invoke fastcc void @_RINvNvMs_NtCsbm5zPlkZccl_4pyo38instanceINtB7_5BoundpE9cast_into5innerNtNtNtB9_5types8datetime8PyTzInfoECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noundef nonnull %i.dm)
          to label %bb.bb unwind label %bb.az, !dbg !119082

bb.bb:                                            ; preds = %bb.ba
  %i.dn = load ptr, ptr %i.d, align 8, !dbg !119083, !noundef !3885 ; 2 uses
  %.not56 = icmp eq ptr %i.dn, null, !dbg !119083 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !119084
  %i.dp = load ptr, ptr %i.do, align 8, !dbg !119084 ; 4 uses
  %.sroa.028.0 = select i1 %.not56, ptr %i.dp, ptr null, !dbg !119084 ; 2 uses
  br i1 %.not56, label %bb.bc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types8datetime8PyTzInfoENtNtNtB17_3err10cast_error13CastIntoErrorEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !119085

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types8datetime8PyTzInfoENtNtNtB17_3err10cast_error13CastIntoErrorEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.bb
  call void @_Py_DecRef(ptr noundef nonnull %i.dn) #49, !dbg !119086
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dp) ]
  call void @_Py_DecRef(ptr noundef nonnull %i.dp) #49, !dbg !119087
  br label %bb.bc, !dbg !119087

bb.bc:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types8datetime8PyTzInfoENtNtNtB17_3err10cast_error13CastIntoErrorEECsfcROwRM8ZtH_11polars_plan.exit, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !119088
  %.not59 = icmp eq ptr %.sroa.028.0, null, !dbg !119089
  br i1 %.not59, label %bb.ay, label %bb.be, !dbg !119090

bb.bd:                                            ; preds = %bb.ca, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !118996
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 16 dereferenceable(48) %i.n)
          to label %bb.cb unwind label %bb.c, !dbg !118951

bb.be:                                            ; preds = %bb.bc
  store ptr %.sroa.028.0, ptr %i.k, align 8, !dbg !119091
  call void @_Py_DecRef(ptr noundef nonnull %i.db) #49, !dbg !119092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !119054
  br label %bb.bf, !dbg !119045

bb.bf:                                            ; preds = %bb.be, %bb.ai
  %.val79 = phi ptr [ %i.dp, %bb.be ], [ null, %bb.ai ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !119093
  %i.dq = lshr i32 %i.cw, 3, !dbg !119094
  %i.dr = and i32 %i.dq, 1023, !dbg !119094       ; 3 uses
  %i.ds = zext nneg i32 %i.dr to i64, !dbg !119095 ; 2 uses
  %i.dt = icmp samesign ult i32 %i.dr, 733, !dbg !119096
  br i1 %i.dt, label %bb.bh, label %bb.bi, !dbg !119096

bb.bg:                                            ; preds = %.thread, %bb.bs, %.thread100, %bb.b
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #45, !dbg !119097
  unreachable, !dbg !119097

bb.bh:                                            ; preds = %bb.bf
  %i.dv = ashr i32 %i.cw, 13, !dbg !119098
  %i.dw = getelementptr inbounds nuw i8, ptr @704, i64 %i.ds, !dbg !119096
  %i.dx = load i8, ptr %i.dw, align 1, !dbg !119096, !noundef !3885
  %i.dy = zext i8 %i.dx to i32, !dbg !119096
  %i.dz = add nuw nsw i32 %i.dr, %i.dy, !dbg !119099 ; 2 uses
  %i.ea = lshr i32 %i.dz, 6, !dbg !119100
  %i.eb = trunc nuw nsw i32 %i.ea to i8, !dbg !119101
  %i.ec = trunc i32 %i.dz to i8, !dbg !119102
  %i.ed = lshr i8 %i.ec, 1, !dbg !119102
  %i.ee = and i8 %i.ed, 31, !dbg !119102
  %i.ef = udiv i32 %4, 60, !dbg !119103
  %i.eg = udiv i32 %4, 3600, !dbg !119104
  %i.eh = trunc nuw nsw i32 %i.eg to i8, !dbg !119105
  %.lhs.trunc = trunc nuw nsw i32 %i.ef to i16, !dbg !119106
  %5 = urem i16 %.lhs.trunc, 60, !dbg !119106
  %i.ei = trunc nuw nsw i16 %5 to i8, !dbg !119107
  %i.ej = urem i32 %4, 60, !dbg !119108
  %i.ek = trunc nuw nsw i32 %i.ej to i8, !dbg !119109
  %.not60 = icmp eq ptr %.val79, null, !dbg !119110 ; 2 uses
  %. = select i1 %.not60, ptr null, ptr %i.k, !dbg !119111
  invoke void @_RNvMs_NtNtCsbm5zPlkZccl_4pyo35types8datetimeNtB4_10PyDateTime3new(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, i32 noundef %i.dv, i8 noundef %i.eb, i8 noundef %i.ee, i8 noundef %i.eh, i8 noundef %i.ei, i8 noundef %i.ek, i32 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %.)
          to label %bb.bl unwind label %bb.bj, !dbg !119093

bb.bi:                                            ; preds = %bb.bf
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ds, i64 noundef 733, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @706) #44
          to label %bb.z unwind label %bb.bj, !dbg !119096

bb.bj:                                            ; preds = %bb.bm, %bb.bh, %bb.bi
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.em = icmp eq ptr %.val79, null, !dbg !119112
  br i1 %i.em, label %.thread, label %bb.bk, !dbg !119112

bb.bk:                                            ; preds = %bb.bj
  call void @_Py_DecRef(ptr noundef nonnull %.val79) #49, !dbg !119113
  br label %.thread, !dbg !119112

bb.bl:                                            ; preds = %bb.bh
  %i.en = load i64, ptr %i.c, align 8, !dbg !119114, !range !4017, !noundef !3885
  %i.eo = trunc nuw i64 %i.en to i1, !dbg !119115
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !119115
  %i.eq = load ptr, ptr %i.ep, align 8, !dbg !119115, !nonnull !3885
  br i1 %i.eo, label %bb.bm, label %bb.bn, !dbg !119116

bb.bm:                                            ; preds = %bb.bl
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types8datetime10PyDateTimeENtNtB17_3err5PyErrEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(72) %i.c)
          to label %bb.bn unwind label %bb.bj, !dbg !119116

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %..sroa.030.0 = phi ptr [ null, %bb.bm ], [ %i.eq, %bb.bl ], !dbg !119117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !119117
  br i1 %.not60, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types8datetime8PyTzInfoEEECsfcROwRM8ZtH_11polars_plan.exit86, label %bb.bo, !dbg !119118

bb.bo:                                            ; preds = %bb.bn
  call void @_Py_DecRef(ptr noundef nonnull %.val79) #49, !dbg !119119
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types8datetime8PyTzInfoEEECsfcROwRM8ZtH_11polars_plan.exit86, !dbg !119118

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtB17_5types8datetime8PyTzInfoEEECsfcROwRM8ZtH_11polars_plan.exit86: ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !119055
  br label %bb.p, !dbg !119120

bb.bp:                                            ; preds = %bb.cc, %bb.p
  %.sroa.0.11 = phi ptr [ %.sroa.0.14, %bb.cc ], [ %.sroa.0.0, %bb.p ], !dbg !118995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !118996
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 16 dereferenceable(48) %i.n)
          to label %bb.cb unwind label %bb.c, !dbg !118951

bb.bq:                                            ; preds = %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread
  %i.er = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !118985
  %i.es = load i128, ptr %i.er, align 16, !dbg !118985, !range !4645, !noundef !3885
  %trunc = trunc nuw i128 %i.es to i2, !dbg !119121
  switch i2 %trunc, label %bb.bw [
    i2 1, label %bb.br
    i2 0, label %bb.bx
  ], !dbg !119121

bb.br:                                            ; preds = %bb.bq, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread
  %i.et = invoke fastcc { i64, double } @_RINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB6_8AnyValue7extractdECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.b)
          to label %bb.bt unwind label %bb.bs, !dbg !119122 ; 2 uses

bb.bs:                                            ; preds = %bb.bz, %bb.bu, %bb.bx, %bb.br
  %i.eu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 16 dereferenceable(48) %i.b) #43
          to label %.thread100 unwind label %bb.bg, !dbg !119123

bb.bt:                                            ; preds = %bb.br
  %i.ev = extractvalue { i64, double } %i.et, 0, !dbg !118943
  %i.ew = trunc nuw i64 %i.ev to i1, !dbg !119124
  br i1 %i.ew, label %bb.bu, label %bb.bv, !dbg !119124

bb.bu:                                            ; preds = %bb.bt
  %i.ex = extractvalue { i64, double } %i.et, 1, !dbg !118943
  %i.ey = invoke noundef nonnull ptr @_RNvMNtNtCsbm5zPlkZccl_4pyo35types5floatNtB2_7PyFloat3new(double noundef %i.ex)
          to label %bb.bw unwind label %bb.bs, !dbg !119125

bb.bv:                                            ; preds = %bb.by, %bb.bt
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 16 dereferenceable(48) %i.b)
          to label %bb.ca unwind label %bb.q, !dbg !119123

bb.bw:                                            ; preds = %bb.bq, %bb.bz, %bb.bu, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread
  %.sroa.0.14 = phi ptr [ null, %bb.bq ], [ %i.ey, %bb.bu ], [ null, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread ], [ %i.fd, %bb.bz ], !dbg !119126
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 16 dereferenceable(48) %i.b)
          to label %bb.cc unwind label %bb.q, !dbg !119123

bb.bx:                                            ; preds = %bb.bq, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread, %_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11as_borrowed.exit.thread
  %i.ez = invoke fastcc { i64, i64 } @_RINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB6_8AnyValue7extractxECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.b)
          to label %bb.by unwind label %bb.bs, !dbg !119127 ; 2 uses

bb.by:                                            ; preds = %bb.bx
  %i.fa = extractvalue { i64, i64 } %i.ez, 0, !dbg !118947
  %i.fb = trunc nuw i64 %i.fa to i1, !dbg !119128
  br i1 %i.fb, label %bb.bz, label %bb.bv, !dbg !119128

bb.bz:                                            ; preds = %bb.by
  %i.fc = extractvalue { i64, i64 } %i.ez, 1, !dbg !118947
  %i.fd = invoke noundef nonnull ptr @_RNvXsi_NtNtNtCsbm5zPlkZccl_4pyo311conversions3std3numxNtNtBb_10conversion12IntoPyObject13into_pyobject(i64 noundef %i.fc)
          to label %bb.bw unwind label %bb.bs, !dbg !119129

bb.ca:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !119123
  br label %bb.bd, !dbg !119130

bb.cb:                                            ; preds = %bb.bd, %bb.bp
  %.sroa.0.15 = phi ptr [ %.sroa.0.11, %bb.bp ], [ null, %bb.bd ], !dbg !119126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !118951
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 16 dereferenceable(48) %0), !dbg !118951
  ret ptr %.sroa.0.15, !dbg !119131

bb.cc:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !119123
  br label %bb.bp, !dbg !119123

.thread:                                          ; preds = %bb.bk, %bb.bj, %bb.an, %.thread104
  %.pn6599 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread104 ], [ %.pn, %bb.an ], [ %i.el, %bb.bj ], [ %i.el, %bb.bk ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 16 dereferenceable(48) %i.m) #43
          to label %.thread100 unwind label %bb.bg, !dbg !118996

bb.cd:                                            ; preds = %bb.b
  resume { ptr, i32 } %.pn68, !dbg !119097
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python7pyarrow14to_py_datetime(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i8 %.0.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2232 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %1, ptr %i.f, align 8
  %.not = icmp eq ptr %2, null, !dbg !119140
  br i1 %.not, label %switch.lookup3, label %switch.lookup, !dbg !119141

switch.lookup:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !119142
  store ptr %2, ptr %i.c, align 8, !dbg !119142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !119143
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !119144
  %i.h = zext nneg i8 %.0.val to i64, !dbg !119145
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python7pyarrow21predicate_to_pa_inner.732, i64 %i.h, !dbg !119145
  %switch.load = load ptr, ptr %switch.gep, align 8, !dbg !119145
  store ptr %switch.load, ptr %i.b, align 8, !dbg !119144
  store i64 2, ptr %i.g, align 8, !dbg !119144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !119146
  store ptr %i.f, ptr %i.a, align 8, !dbg !119146
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !119146
  store ptr @_RNvXse_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.413.0..sroa_idx, align 8, !dbg !119146
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !119146
  store ptr %i.b, ptr %i.i, align 8, !dbg !119146
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !119146
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.417.0..sroa_idx, align 8, !dbg !119146
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !119146
  store ptr %i.c, ptr %i.j, align 8, !dbg !119146
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !119146
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.421.0..sroa_idx, align 8, !dbg !119146
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @713, ptr noundef nonnull %i.a), !dbg !119147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !119148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !119148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !119149
  br label %bb.b, !dbg !119149

switch.lookup3:                                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !119150
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !119151
  %i.l = zext nneg i8 %.0.val to i64, !dbg !119152
  %switch.gep4 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python7pyarrow21predicate_to_pa_inner.732, i64 %i.l, !dbg !119152
  %switch.load5 = load ptr, ptr %switch.gep4, align 8, !dbg !119152
  store ptr %switch.load5, ptr %i.e, align 8, !dbg !119151
  store i64 2, ptr %i.k, align 8, !dbg !119151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !119153
  store ptr %i.f, ptr %i.d, align 8, !dbg !119153
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !119153
  store ptr @_RNvXse_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !119153
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !119153
  store ptr %i.e, ptr %i.m, align 8, !dbg !119153
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !119153
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !119153
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @712, ptr noundef nonnull %i.d), !dbg !119154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !119155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !119155
  br label %bb.b, !dbg !119155

bb.b:                                             ; preds = %switch.lookup, %switch.lookup3
  ret void, !dbg !119156
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python7pyarrow15predicate_to_pa(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #1 !dbg !119157 {
bb.a:
  tail call fastcc void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python7pyarrow21predicate_to_pa_inner(ptr noalias noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i1 noundef zeroext false), !dbg !119158
  ret void, !dbg !119159
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python7pyarrow16aexpr_to_pyarrow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !119160 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 6 uses
end_hunk_0
