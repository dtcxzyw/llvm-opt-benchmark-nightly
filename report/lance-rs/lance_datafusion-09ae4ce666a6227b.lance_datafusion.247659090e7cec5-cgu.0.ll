Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_datafusion-09ae4ce666a6227b.lance_datafusion.247659090e7cec5-cgu.0?download=true
inline.NumInlined: 35549
inline.NumDeleted: 12223
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE26convert_data_type_to_fieldB12_:bb.a
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.675.i = alloca [24 x i8], align 8        ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 8 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [8 x i8], align 8                ; 12 uses
  %i.ae = alloca [40 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 2 uses
  %i.ag = alloca [40 x i8], align 8               ; 44 uses
  %.sroa.655 = alloca [24 x i8], align 8          ; 8 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %i.aj = alloca [24 x i8], align 8               ; 8 uses
  %i.ak = alloca [24 x i8], align 8               ; 2 uses
  %i.al = alloca [8 x i8], align 8                ; 5 uses
  %i.am = alloca [40 x i8], align 8               ; 7 uses
  %i.an = alloca [8 x i8], align 8                ; 6 uses
  %i.ao = alloca [40 x i8], align 8               ; 7 uses
  %i.ap = load i8, ptr %2, align 8, !range !540, !noundef !321 ; 2 uses
  %i.aq = icmp eq i8 %i.ap, 100
  br i1 %i.aq, label %bb.d, label %bb.e

bb.b:                                             ; preds = %bb.dc, %bb.db, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc85D0lJ81Z_16lance_datafusion.exit, %bb.cw, %bb.cp, %bb.co, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit143
  ret void

bb.c:                                             ; preds = %bb.da
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

common.resume:                                    ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit252.i, %bb.ab, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit265.i, %bb.an, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit278.i, %bb.av, %bb.bl, %bb.bm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit291.i, %bb.bo, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit304.i, %bb.by, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit137, %bb.ci, %bb.da, %bb.cz
  %common.resume.op = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.da ], [ %lpad.thr_comm.split-lp, %bb.cz ], [ %i.gd, %bb.ci ], [ %i.gd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit137 ], [ %i.eq, %bb.bm ], [ %i.cv, %bb.ab ], [ %i.ev, %bb.bo ], [ %i.dk, %bb.an ], [ %i.dv, %bb.av ], [ %i.fh, %bb.by ], [ %i.cv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit252.i ], [ %i.dk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit265.i ], [ %i.dv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit278.i ], [ %i.fh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit304.i ], [ %i.eq, %bb.bl ], [ %i.ev, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit291.i ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !500, !noundef !321 ; 4 uses
  %i.au = icmp ne i64 %i.at, 4
  tail call void @llvm.assume(i1 %i.au)
  %i.av = add nsw i64 %i.at, -2
  %.inv = icmp samesign ult i64 %i.at, 2
  %i.aw = select i1 %.inv, i64 2, i64 %i.av
  switch i64 %i.aw, label %bb.ce [
    i64 0, label %.split126
    i64 1, label %bb.cg
    i64 2, label %bb.ch
    i64 3, label %.thread
  ]

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.655)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr %2, ptr %i.ad, align 8, !noalias !85646
  br label %bb.bz

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.655)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85649)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr %2, ptr %i.ad, align 8, !noalias !85650
  switch i8 %i.ap, label %default.unreachable.a [
    i8 0, label %bb.bz
    i8 1, label %bb.bz
    i8 2, label %bb.bz
    i8 3, label %bb.f
    i8 4, label %bb.bz
    i8 5, label %bb.bz
    i8 6, label %bb.g
    i8 7, label %bb.bz
    i8 8, label %bb.bz
    i8 9, label %bb.bz
    i8 10, label %bb.bz
    i8 11, label %bb.bz
    i8 12, label %bb.bz
    i8 13, label %bb.bz
    i8 14, label %bb.bz
    i8 15, label %bb.bz
    i8 16, label %bb.bz
    i8 17, label %bb.bz
    i8 18, label %bb.bz
    i8 19, label %bb.ak
    i8 20, label %bb.ak
    i8 21, label %bb.bz
    i8 22, label %bb.bz
    i8 23, label %bb.bz
    i8 24, label %bb.bz
    i8 25, label %bb.bz
    i8 26, label %bb.h
    i8 27, label %bb.bz
    i8 28, label %bb.i
    i8 29, label %bb.j
    i8 30, label %bb.bz
    i8 31, label %bb.k
    i8 32, label %bb.l
    i8 33, label %bb.k
    i8 34, label %bb.l
    i8 35, label %bb.bz
    i8 36, label %bb.bz
    i8 37, label %bb.bz
    i8 38, label %bb.m
    i8 39, label %bb.m
    i8 40, label %bb.n
    i8 41, label %bb.bz
    i8 42, label %bb.bz
    i8 43, label %bb.bz
    i8 44, label %bb.bz
    i8 45, label %bb.bz
    i8 46, label %bb.m
    i8 47, label %bb.o
    i8 48, label %bb.o
    i8 49, label %bb.o
    i8 50, label %bb.bz
    i8 51, label %bb.bz
    i8 52, label %bb.bz
    i8 53, label %bb.bz
    i8 54, label %bb.bz
    i8 55, label %bb.bz
    i8 56, label %bb.bz
    i8 57, label %bb.bz
    i8 58, label %bb.n
    i8 59, label %bb.p
    i8 60, label %bb.bz
    i8 61, label %bb.p
    i8 62, label %bb.bz
    i8 63, label %bb.bz
    i8 64, label %bb.bz
    i8 65, label %bb.bz
    i8 66, label %bb.q
    i8 67, label %bb.bz
    i8 68, label %bb.bz
    i8 69, label %bb.q
    i8 70, label %bb.bz
    i8 71, label %bb.r
    i8 72, label %bb.s
    i8 73, label %bb.bz
    i8 74, label %bb.r
    i8 75, label %bb.bz
    i8 76, label %bb.t
    i8 77, label %bb.t
    i8 78, label %bb.u
    i8 79, label %bb.bz
    i8 80, label %bb.v
    i8 81, label %bb.bz
    i8 82, label %bb.bz
    i8 83, label %bb.w
    i8 84, label %bb.bz
    i8 85, label %bb.x
    i8 86, label %bb.bz
    i8 87, label %bb.bz
    i8 88, label %bb.bz
    i8 89, label %bb.f
    i8 90, label %bb.bz
    i8 91, label %bb.bz
    i8 92, label %bb.bz
    i8 93, label %bb.f
    i8 94, label %bb.bz
    i8 95, label %bb.y
    i8 96, label %bb.bz
    i8 97, label %bb.bz
    i8 98, label %bb.bz
    i8 99, label %bb.bz
    i8 100, label %bb.bz
    i8 101, label %bb.bz
    i8 102, label %bb.bz
    i8 103, label %bb.bz
    i8 104, label %bb.bz
    i8 105, label %bb.bz
    i8 106, label %bb.z
    i8 107, label %bb.bz
    i8 108, label %bb.bz
    i8 109, label %bb.bz
    i8 110, label %bb.bz
    i8 111, label %bb.bz
    i8 112, label %bb.bz
    i8 113, label %bb.bz
    i8 114, label %bb.bz
    i8 115, label %bb.bz
  ]

default.unreachable.a:                            ; preds = %bb.ak, %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.ay = load i8, ptr %i.ax, align 1, !range !333, !alias.scope !85648, !noundef !321
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  br i1 %i.az, label %bb.bv, label %bb.bu

bb.g:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bc = load i8, ptr %i.bb, align 2, !range !333, !alias.scope !85648, !noundef !321
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load i8, ptr %i.be, align 8, !range !397, !alias.scope !85649, !noundef !321
  %.not223.i = icmp eq i8 %i.bf, 2
  %brmerge.i = or i1 %.not223.i, %i.bd
  br i1 %brmerge.i, label %bb.aa, label %bb.ac

bb.h:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i8 11, ptr %i.bg, align 8, !alias.scope !85647
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread

bb.i:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i8 2, ptr %i.bh, align 8, !alias.scope !85647
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i8 6, ptr %i.bi, align 8, !alias.scope !85647
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread

bb.k:                                             ; preds = %bb.e, %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i8 3, ptr %i.bj, align 8, !alias.scope !85647
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread

bb.l:                                             ; preds = %bb.e, %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i8 7, ptr %i.bk, align 8, !alias.scope !85647
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread

bb.m:                                             ; preds = %bb.e, %bb.e, %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i8 4, ptr %i.bl, align 8, !alias.scope !85647
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread

bb.n:                                             ; preds = %bb.e, %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i8 5, ptr %i.bm, align 8, !alias.scope !85647
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread

bb.o:                                             ; preds = %bb.e, %bb.e, %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i8 8, ptr %i.bn, align 8, !alias.scope !85647
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread

bb.p:                                             ; preds = %bb.e, %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i8 9, ptr %i.bo, align 8, !alias.scope !85647
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread

bb.q:                                             ; preds = %bb.e, %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i8 11, ptr %i.bp, align 8, !alias.scope !85647
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread

bb.r:                                             ; preds = %bb.s, %bb.e, %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i8 12, ptr %i.bq, align 8, !alias.scope !85647
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread

bb.s:                                             ; preds = %bb.e
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !range !345, !alias.scope !85649, !noundef !321
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.r, label %bb.ao

bb.t:                                             ; preds = %bb.e, %bb.e
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i8 1, ptr %i.bu, align 8, !alias.scope !85647
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread

bb.u:                                             ; preds = %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i8 14, ptr %i.bv, align 8, !alias.scope !85647
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread

bb.v:                                             ; preds = %bb.e
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !range !332, !alias.scope !85649, !noundef !321
  %i.by = trunc nuw i64 %i.bx to i1
  br i1 %i.by, label %bb.bz, label %bb.at

bb.w:                                             ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !range !332, !alias.scope !85649, !noundef !321 ; 2 uses
  %.not216.i = icmp eq i64 %i.ca, 0
  br i1 %.not216.i, label %bb.bc, label %bb.bb

bb.x:                                             ; preds = %bb.e
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !range !578, !alias.scope !85649, !noundef !321
  %.not213.i = icmp eq i8 %i.cc, -1
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !range !332, !alias.scope !85649
  %.not214.i = icmp eq i64 %i.ce, 0
  %or.cond.i = select i1 %.not213.i, i1 %.not214.i, i1 false
  br i1 %or.cond.i, label %bb.bn, label %bb.bp

bb.y:                                             ; preds = %bb.e
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i8 20, ptr %i.cf, align 8, !alias.scope !85647
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread

bb.z:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.675.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !85650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !85650
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !85649, !nonnull !321, !noundef !321 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !85649, !noundef !321
  %i.ck = getelementptr inbounds nuw [144 x i8], ptr %i.ch, i64 %i.cj
  store ptr %i.ch, ptr %i.i, align 8, !noalias !85650
  %.sroa.480.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ck, ptr %.sroa.480.0..sroa_idx.i, align 8, !noalias !85650
  %.sroa.581.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.581.0..sroa_idx.i, align 8, !noalias !85650
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %1, ptr %i.cl, align 8, !noalias !85650
  call fastcc void @_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtB6_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast11StructFieldEENCNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB2R_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_types_0ENtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENCINvXso_B64_IB62_INtNtCs40k4W9msRzi_5alloc3vec3VecB5j_EB6O_EINtNtNtB4_6traits7collect12FromIteratorIB62_B5j_B6O_EE9from_iterBQ_E0B85_EB3P_(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.j, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %i.i), !noalias !85647, !inline_history !85570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !85650
  %i.cm = load i64, ptr %i.j, align 8, !range !326, !noalias !85650, !noundef !321 ; 2 uses
  %.not212.i = icmp eq i64 %i.cm, -1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.675.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false), !noalias !85650
  br i1 %.not212.i, label %bb.bx, label %bb.bw

bb.aa:                                            ; preds = %bb.g
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.cp = load i8, ptr %i.co, align 1, !range !333, !alias.scope !85648, !noundef !321
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  br i1 %i.cq, label %bb.aj, label %bb.ai

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit252.i: ; preds = %bb.ae, %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !85651)
  %.val.i.i = load i64, ptr %i.ab, align 8, !alias.scope !85651, !noalias !85650 ; 2 uses
  %i.cs = icmp eq i64 %.val.i.i, 0
  br i1 %i.cs, label %common.resume, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit252.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val1.i.i = load ptr, ptr %i.ct, align 8, !alias.scope !85651, !noalias !85650, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !85652, !inline_history !85570
  br label %common.resume

bb.ac:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !85650
  call fastcc void @_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @701, i64 89, ptr nonnull @701, ptr nonnull inttoptr (i64 179 to ptr)), !noalias !85653, !inline_history !85570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !85650
  store i64 0, ptr %i.aa, align 8, !noalias !85650
  %.sroa.4104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4104.0..sroa_idx.i, align 8, !noalias !85650
  %.sroa.5105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 0, ptr %.sroa.5105.0..sroa_idx.i, align 8, !noalias !85650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !85650
  store ptr %i.ab, ptr %i.z, align 8, !noalias !85650
  %.sroa.4109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.4109.0..sroa_idx.i, align 8, !noalias !85650
  %i.cu = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.aa, ptr %i.cu, align 8, !noalias !85650
  %.sroa.4113.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.4113.0..sroa_idx.i, align 8, !noalias !85650
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noundef nonnull @184, ptr noundef nonnull %i.z)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %bb.ad, !noalias !85653, !inline_history !85570

bb.ad:                                            ; preds = %bb.ac
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85654)
  %.val.i250.i = load i64, ptr %i.aa, align 8, !alias.scope !85654, !noalias !85650 ; 2 uses
  %i.cw = icmp eq i64 %.val.i250.i, 0
  br i1 %i.cw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit252.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.val1.i251.i = load ptr, ptr %.sroa.4104.0..sroa_idx.i, align 8, !alias.scope !85654, !noalias !85650, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i251.i, i64 noundef %.val.i250.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !85655, !inline_history !85570
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit252.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !85650
  call void @llvm.experimental.noalias.scope.decl(metadata !85656)
  %.val.i253.i = load i64, ptr %i.aa, align 8, !alias.scope !85656, !noalias !85650 ; 2 uses
  %i.cx = icmp eq i64 %.val.i253.i, 0
  br i1 %i.cx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit255.i, label %bb.af

bb.af:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit.i
  %.val1.i254.i = load ptr, ptr %.sroa.4104.0..sroa_idx.i, align 8, !alias.scope !85656, !noalias !85650, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i254.i, i64 noundef %.val.i253.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !85657, !inline_history !85570
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit255.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit255.i: ; preds = %bb.af, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !85650
  call void @llvm.experimental.noalias.scope.decl(metadata !85658)
  %.val.i256.i = load i64, ptr %i.ab, align 8, !alias.scope !85658, !noalias !85650 ; 2 uses
  %i.cy = icmp eq i64 %.val.i256.i, 0
  br i1 %i.cy, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit258.i, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit255.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val1.i257.i = load ptr, ptr %i.cz, align 8, !alias.scope !85658, !noalias !85650, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i257.i, i64 noundef %.val.i256.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !85659, !inline_history !85570
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit258.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit258.i: ; preds = %bb.ag, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit255.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !85650
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !85660
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread165

bb.ah:                                            ; preds = %bb.bh
  unreachable

bb.ai:                                            ; preds = %bb.aa
  store i8 24, ptr %i.cr, align 8, !alias.scope !85647
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread

bb.aj:                                            ; preds = %bb.aa
  store i8 26, ptr %i.cr, align 8, !alias.scope !85647
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread

bb.ak:                                            ; preds = %bb.e, %bb.e
  %.sroa.055.0.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.da = load i64, ptr %.sroa.055.0.i, align 8, !range !345, !alias.scope !85649, !noundef !321 ; 3 uses
  switch i64 %i.da, label %default.unreachable.a [
    i64 0, label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit
    i64 1, label %bb.al
    i64 2, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !85649, !noundef !321
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit

bb.am:                                            ; preds = %bb.ak
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !85649, !noundef !321
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !85649, !noundef !321
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit265.i: ; preds = %bb.aq, %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !85661)
  %.val.i259.i = load i64, ptr %i.x, align 8, !alias.scope !85661, !noalias !85650 ; 2 uses
  %i.dh = icmp eq i64 %.val.i259.i, 0
  br i1 %i.dh, label %common.resume, label %bb.an

bb.an:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit265.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val1.i260.i = load ptr, ptr %i.di, align 8, !alias.scope !85661, !noalias !85650, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i260.i, i64 noundef %.val.i259.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !85662, !inline_history !85570
  br label %common.resume

bb.ao:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !85650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !85650
  store ptr %i.ad, ptr %i.w, align 8, !noalias !85650
  %.sroa.4100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.4100.0..sroa_idx.i, align 8, !noalias !85650
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noundef nonnull @702, ptr noundef nonnull %i.w), !noalias !85653, !inline_history !85570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !85650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !85650
  store i64 0, ptr %i.v, align 8, !noalias !85650
  %.sroa.4119.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4119.0..sroa_idx.i, align 8, !noalias !85650
  %.sroa.5120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 0, ptr %.sroa.5120.0..sroa_idx.i, align 8, !noalias !85650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !85650
  store ptr %i.x, ptr %i.u, align 8, !noalias !85650
  %.sroa.4124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.4124.0..sroa_idx.i, align 8, !noalias !85650
  %i.dj = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.v, ptr %i.dj, align 8, !noalias !85650
  %.sroa.4128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.4128.0..sroa_idx.i, align 8, !noalias !85650
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull @184, ptr noundef nonnull %i.u)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit262.i unwind label %bb.ap, !noalias !85653, !inline_history !85570

bb.ap:                                            ; preds = %bb.ao
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85663)
  %.val.i263.i = load i64, ptr %i.v, align 8, !alias.scope !85663, !noalias !85650 ; 2 uses
  %i.dl = icmp eq i64 %.val.i263.i, 0
  br i1 %i.dl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit265.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.val1.i264.i = load ptr, ptr %.sroa.4119.0..sroa_idx.i, align 8, !alias.scope !85663, !noalias !85650, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i264.i, i64 noundef %.val.i263.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !85664, !inline_history !85570
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit265.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit262.i: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !85650
  call void @llvm.experimental.noalias.scope.decl(metadata !85665)
  %.val.i266.i = load i64, ptr %i.v, align 8, !alias.scope !85665, !noalias !85650 ; 2 uses
  %i.dm = icmp eq i64 %.val.i266.i, 0
  br i1 %i.dm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit268.i, label %bb.ar

bb.ar:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit262.i
  %.val1.i267.i = load ptr, ptr %.sroa.4119.0..sroa_idx.i, align 8, !alias.scope !85665, !noalias !85650, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i267.i, i64 noundef %.val.i266.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !85666, !inline_history !85570
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit268.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit268.i: ; preds = %bb.ar, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit262.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !85650
  call void @llvm.experimental.noalias.scope.decl(metadata !85667)
  %.val.i269.i = load i64, ptr %i.x, align 8, !alias.scope !85667, !noalias !85650 ; 2 uses
  %i.dn = icmp eq i64 %.val.i269.i, 0
  br i1 %i.dn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit271.i, label %bb.as

bb.as:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit268.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val1.i270.i = load ptr, ptr %i.do, align 8, !alias.scope !85667, !noalias !85650, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i270.i, i64 noundef %.val.i269.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !85668, !inline_history !85570
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit271.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit271.i: ; preds = %bb.as, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit268.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !85650
  %.sroa.229.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.229.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !85660
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread165

bb.at:                                            ; preds = %bb.v
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.dq = load i8, ptr %i.dp, align 1, !range !363, !alias.scope !85649, !noundef !321
  switch i8 %i.dq, label %bb.aw [
    i8 0, label %bb.au
    i8 2, label %bb.au
  ]

bb.au:                                            ; preds = %bb.at, %bb.at
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i8 17, ptr %i.dr, align 8, !alias.scope !85647
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 9
  store i8 3, ptr %.sroa.450.0..sroa_idx.i, align 1, !alias.scope !85647
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit278.i: ; preds = %bb.ay, %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !85669)
  %.val.i272.i = load i64, ptr %i.s, align 8, !alias.scope !85669, !noalias !85650 ; 2 uses
  %i.ds = icmp eq i64 %.val.i272.i, 0
  br i1 %i.ds, label %common.resume, label %bb.av

bb.av:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit278.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val1.i273.i = load ptr, ptr %i.dt, align 8, !alias.scope !85669, !noalias !85650, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i273.i, i64 noundef %.val.i272.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !85670, !inline_history !85570
  br label %common.resume

bb.aw:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !85650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !85650
  store ptr %i.ad, ptr %i.r, align 8, !noalias !85650
  %.sroa.4134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.4134.0..sroa_idx.i, align 8, !noalias !85650
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noundef nonnull @703, ptr noundef nonnull %i.r), !noalias !85653, !inline_history !85570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !85650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !85650
  store i64 0, ptr %i.q, align 8, !noalias !85650
  %.sroa.4138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4138.0..sroa_idx.i, align 8, !noalias !85650
  %.sroa.5139.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %.sroa.5139.0..sroa_idx.i, align 8, !noalias !85650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !85650
  store ptr %i.s, ptr %i.p, align 8, !noalias !85650
  %.sroa.4143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.4143.0..sroa_idx.i, align 8, !noalias !85650
  %i.du = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.q, ptr %i.du, align 8, !noalias !85650
  %.sroa.4147.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.4147.0..sroa_idx.i, align 8, !noalias !85650
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull @184, ptr noundef nonnull %i.p)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit275.i unwind label %bb.ax, !noalias !85653, !inline_history !85570

bb.ax:                                            ; preds = %bb.aw
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85671)
  %.val.i276.i = load i64, ptr %i.q, align 8, !alias.scope !85671, !noalias !85650 ; 2 uses
  %i.dw = icmp eq i64 %.val.i276.i, 0
  br i1 %i.dw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit278.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.val1.i277.i = load ptr, ptr %.sroa.4138.0..sroa_idx.i, align 8, !alias.scope !85671, !noalias !85650, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i277.i, i64 noundef %.val.i276.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !85672, !inline_history !85570
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit278.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit275.i: ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !85650
  call void @llvm.experimental.noalias.scope.decl(metadata !85673)
  %.val.i279.i = load i64, ptr %i.q, align 8, !alias.scope !85673, !noalias !85650 ; 2 uses
  %i.dx = icmp eq i64 %.val.i279.i, 0
  br i1 %i.dx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit281.i, label %bb.az

bb.az:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit275.i
  %.val1.i280.i = load ptr, ptr %.sroa.4138.0..sroa_idx.i, align 8, !alias.scope !85673, !noalias !85650, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i280.i, i64 noundef %.val.i279.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !85674, !inline_history !85570
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit281.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit281.i: ; preds = %bb.az, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit275.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !85650
  call void @llvm.experimental.noalias.scope.decl(metadata !85675)
  %.val.i282.i = load i64, ptr %i.s, align 8, !alias.scope !85675, !noalias !85650 ; 2 uses
  %i.dy = icmp eq i64 %.val.i282.i, 0
  br i1 %i.dy, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit284.i, label %bb.ba

bb.ba:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit281.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val1.i283.i = load ptr, ptr %i.dz, align 8, !alias.scope !85675, !noalias !85650, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i283.i, i64 noundef %.val.i282.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !85676, !inline_history !85570
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit284.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit284.i: ; preds = %bb.ba, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit281.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !85650
  %.sroa.253.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.253.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !85660
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread165

bb.bb:                                            ; preds = %bb.w
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !alias.scope !85649
  switch i64 %i.eb, label %bb.bz [
    i64 0, label %bb.bc
    i64 3, label %bb.bc
end_hunk_0
begin_hunk_1_@_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE26convert_data_type_to_fieldB12_:bb.a
  %i.eh = trunc nuw i64 %i.ca to i1
  br i1 %i.eh, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.ei = load ptr, ptr %i.ad, align 8, !noalias !85650, !nonnull !321, !align !330, !noundef !321
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !noalias !85653, !noundef !321 ; 3 uses
  %i.el = icmp ult i64 %i.ek, 10
  %switch.maskindex = trunc i64 %i.ek to i16
  %switch.shifted = lshr i16 585, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.el, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @704) #72
          to label %bb.ah unwind label %bb.bl, !noalias !85653, !inline_history !85570

switch.lookup:                                    ; preds = %bb.bg
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE26convert_data_type_to_fieldB12_, i64 %i.ek
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.bi

bb.bi:                                            ; preds = %switch.lookup, %bb.bf
  %.sroa.037.0.i = phi i8 [ 3, %bb.bf ], [ %switch.load, %switch.lookup ]
  %.not218.i = icmp eq i64 %.sroa.0318.0.i, -1
  br i1 %.not218.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85650
  store i64 %.sroa.0318.0.i, ptr %i.a, align 8, !noalias !85650
  %.sroa.545.0..sroa_idx46.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.7.0.i, ptr %.sroa.545.0..sroa_idx46.i, align 8, !noalias !85650
  %.sroa.545.sroa.4.0..sroa.545.0..sroa_idx46.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.9.0.i, ptr %.sroa.545.sroa.4.0..sroa.545.0..sroa_idx46.sroa_idx.i, align 8, !noalias !85650
  %i.em = call fastcc { ptr, i64 } @_RNvXs19_NtCs40k4W9msRzi_5alloc4syncINtB6_3ArceEINtNtCscI6d9CVNmLh_4core7convert4FromNtNtB8_6string6StringE4from(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !85653, !inline_history !85570 ; 2 uses
  %i.en = extractvalue { ptr, i64 } %i.em, 0
  %i.eo = extractvalue { ptr, i64 } %i.em, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85650
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.sroa.542.0.i = phi i64 [ %i.eo, %bb.bj ], [ undef, %bb.bi ]
  %.sroa.041.0.i = phi ptr [ %i.en, %bb.bj ], [ null, %bb.bi ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i8 13, ptr %i.ep, align 8, !alias.scope !85647
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 9
  store i8 %.sroa.037.0.i, ptr %.sroa.439.0..sroa_idx.i, align 1, !alias.scope !85647
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %.sroa.041.0.i, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !85647
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i64 %.sroa.542.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !85647
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread

bb.bl:                                            ; preds = %bb.bh
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.0318.0.off.i = add i64 %.sroa.0318.0.i, -1
  %switch.i = icmp ult i64 %.sroa.0318.0.off.i, -2
  br i1 %switch.i, label %bb.bm, label %common.resume

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.i, i64 noundef %.sroa.0318.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !85677, !inline_history !85570
  br label %common.resume

bb.bn:                                            ; preds = %bb.x
  %i.er = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i8 19, ptr %i.er, align 8, !alias.scope !85647
  %.sroa.471.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 9
  store i8 2, ptr %.sroa.471.0..sroa_idx.i, align 1, !alias.scope !85647
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit291.i: ; preds = %bb.br, %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !85678)
  %.val.i285.i = load i64, ptr %i.n, align 8, !alias.scope !85678, !noalias !85650 ; 2 uses
  %i.es = icmp eq i64 %.val.i285.i, 0
  br i1 %i.es, label %common.resume, label %bb.bo

bb.bo:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit291.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val1.i286.i = load ptr, ptr %i.et, align 8, !alias.scope !85678, !noalias !85650, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i286.i, i64 noundef %.val.i285.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !85679, !inline_history !85570
  br label %common.resume

bb.bp:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !85650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !85650
  store ptr %i.ad, ptr %i.m, align 8, !noalias !85650
  %.sroa.4153.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.4153.0..sroa_idx.i, align 8, !noalias !85650
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @703, ptr noundef nonnull %i.m), !noalias !85653, !inline_history !85570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !85650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !85650
  store i64 0, ptr %i.l, align 8, !noalias !85650
  %.sroa.4157.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4157.0..sroa_idx.i, align 8, !noalias !85650
  %.sroa.5158.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.5158.0..sroa_idx.i, align 8, !noalias !85650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !85650
  store ptr %i.n, ptr %i.k, align 8, !noalias !85650
  %.sroa.4162.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.4162.0..sroa_idx.i, align 8, !noalias !85650
  %i.eu = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.eu, align 8, !noalias !85650
  %.sroa.4166.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.4166.0..sroa_idx.i, align 8, !noalias !85650
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @184, ptr noundef nonnull %i.k)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit288.i unwind label %bb.bq, !noalias !85653, !inline_history !85570

bb.bq:                                            ; preds = %bb.bp
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85680)
  %.val.i289.i = load i64, ptr %i.l, align 8, !alias.scope !85680, !noalias !85650 ; 2 uses
  %i.ew = icmp eq i64 %.val.i289.i, 0
  br i1 %i.ew, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit291.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.val1.i290.i = load ptr, ptr %.sroa.4157.0..sroa_idx.i, align 8, !alias.scope !85680, !noalias !85650, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i290.i, i64 noundef %.val.i289.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !85681, !inline_history !85570
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit291.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit288.i: ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !85650
  call void @llvm.experimental.noalias.scope.decl(metadata !85682)
  %.val.i292.i = load i64, ptr %i.l, align 8, !alias.scope !85682, !noalias !85650 ; 2 uses
  %i.ex = icmp eq i64 %.val.i292.i, 0
  br i1 %i.ex, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit294.i, label %bb.bs

bb.bs:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit288.i
  %.val1.i293.i = load ptr, ptr %.sroa.4157.0..sroa_idx.i, align 8, !alias.scope !85682, !noalias !85650, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i293.i, i64 noundef %.val.i292.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !85683, !inline_history !85570
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit294.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit294.i: ; preds = %bb.bs, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit288.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !85650
  call void @llvm.experimental.noalias.scope.decl(metadata !85684)
  %.val.i295.i = load i64, ptr %i.n, align 8, !alias.scope !85684, !noalias !85650 ; 2 uses
  %i.ey = icmp eq i64 %.val.i295.i, 0
  br i1 %i.ey, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit297.i, label %bb.bt

bb.bt:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit294.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val1.i296.i = load ptr, ptr %i.ez, align 8, !alias.scope !85684, !noalias !85650, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i296.i, i64 noundef %.val.i295.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !85685, !inline_history !85570
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit297.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit297.i: ; preds = %bb.bt, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit294.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !85650
  %.sroa.268.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.268.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !85660
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread165

bb.bu:                                            ; preds = %bb.f
  store i8 24, ptr %i.ba, align 8, !alias.scope !85647
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread

bb.bv:                                            ; preds = %bb.f
  store i8 26, ptr %i.ba, align 8, !alias.scope !85647
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread

bb.bw:                                            ; preds = %bb.z
  %.sroa.5174.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.5174.0.copyload.i = load i64, ptr %.sroa.5174.0..sroa_idx.i, align 8, !noalias !85650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !85650
  %.sroa.4176.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4176.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.675.i, i64 24, i1 false), !noalias !85660
  %.sroa.5177.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i64 %.sroa.5174.0.copyload.i, ptr %.sroa.5177.0..sroa_idx.i, align 8, !alias.scope !85647
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.675.i)
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread165

bb.bx:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !85650
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.675.i, i64 24, i1 false), !noalias !85650
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.675.i)
  %i.fa = call { ptr, i64 } @_RNvXs3_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB7_5field5FieldEE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h), !noalias !85647, !inline_history !85570 ; 2 uses
  %i.fb = extractvalue { ptr, i64 } %i.fa, 0
  %i.fc = extractvalue { ptr, i64 } %i.fa, 1
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i8 32, ptr %i.fd, align 8, !alias.scope !85647
  %.sroa.487.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.fb, ptr %.sroa.487.0..sroa_idx.i, align 8, !alias.scope !85647
  %.sroa.588.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i64 %i.fc, ptr %.sroa.588.0..sroa_idx.i, align 8, !alias.scope !85647
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit304.i: ; preds = %bb.cb, %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !85686)
  %.val.i298.i = load i64, ptr %i.f, align 8, !alias.scope !85686, !noalias !85650 ; 2 uses
  %i.fe = icmp eq i64 %.val.i298.i, 0
  br i1 %i.fe, label %common.resume, label %bb.by

bb.by:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit304.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i299.i = load ptr, ptr %i.ff, align 8, !alias.scope !85686, !noalias !85650, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i299.i, i64 noundef %.val.i298.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !85687, !inline_history !85570
  br label %common.resume

bb.bz:                                            ; preds = %.thread, %bb.bb, %bb.v, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !85650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !85650
  store ptr %i.ad, ptr %i.e, align 8, !noalias !85650
  %.sroa.496.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.496.0..sroa_idx.i, align 8, !noalias !85650
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @703, ptr noundef nonnull %i.e), !noalias !85653, !inline_history !85570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !85650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !85650
  store i64 0, ptr %i.d, align 8, !noalias !85650
  %.sroa.4181.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4181.0..sroa_idx.i, align 8, !noalias !85650
  %.sroa.5182.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5182.0..sroa_idx.i, align 8, !noalias !85650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !85650
  store ptr %i.f, ptr %i.c, align 8, !noalias !85650
  %.sroa.4186.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.4186.0..sroa_idx.i, align 8, !noalias !85650
  %i.fg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.fg, align 8, !noalias !85650
  %.sroa.4190.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.4190.0..sroa_idx.i, align 8, !noalias !85650
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @184, ptr noundef nonnull %i.c)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit301.i unwind label %bb.ca, !noalias !85653, !inline_history !85570

bb.ca:                                            ; preds = %bb.bz
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85688)
  %.val.i302.i = load i64, ptr %i.d, align 8, !alias.scope !85688, !noalias !85650 ; 2 uses
  %i.fi = icmp eq i64 %.val.i302.i, 0
  br i1 %i.fi, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit304.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.val1.i303.i = load ptr, ptr %.sroa.4181.0..sroa_idx.i, align 8, !alias.scope !85688, !noalias !85650, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i303.i, i64 noundef %.val.i302.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !85689, !inline_history !85570
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit304.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit301.i: ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !85650
  call void @llvm.experimental.noalias.scope.decl(metadata !85690)
  %.val.i305.i = load i64, ptr %i.d, align 8, !alias.scope !85690, !noalias !85650 ; 2 uses
  %i.fj = icmp eq i64 %.val.i305.i, 0
  br i1 %i.fj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit307.i, label %bb.cc

bb.cc:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit301.i
  %.val1.i306.i = load ptr, ptr %.sroa.4181.0..sroa_idx.i, align 8, !alias.scope !85690, !noalias !85650, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i306.i, i64 noundef %.val.i305.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !85691, !inline_history !85570
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit307.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit307.i: ; preds = %bb.cc, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit301.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !85650
  call void @llvm.experimental.noalias.scope.decl(metadata !85692)
  %.val.i308.i = load i64, ptr %i.f, align 8, !alias.scope !85692, !noalias !85650 ; 2 uses
  %i.fk = icmp eq i64 %.val.i308.i, 0
  br i1 %i.fk, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit310.i, label %bb.cd

bb.cd:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit307.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i309.i = load ptr, ptr %i.fl, align 8, !alias.scope !85692, !noalias !85650, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i309.i, i64 noundef %.val.i308.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !85693, !inline_history !85570
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit310.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit310.i: ; preds = %bb.cd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit307.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !85650
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.290.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !85660
  br label %_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread165

_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread: ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.t, %bb.u, %bb.y, %bb.ai, %bb.aj, %bb.au, %bb.bk, %bb.bn, %bb.bu, %bb.bv, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  br label %bb.dc

_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit.thread165: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit258.i, %bb.bw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit310.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit271.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit297.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit284.i
  %.ph = phi i64 [ 4, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit284.i ], [ 4, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit297.i ], [ 4, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit271.i ], [ 4, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit310.i ], [ %i.cm, %bb.bw ], [ 6, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit258.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  br label %bb.db

_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24convert_simple_data_typeB12_.exit: ; preds = %bb.ak, %bb.al, %bb.am
  %.sroa.664.0.i = phi i64 [ %i.dg, %bb.am ], [ undef, %bb.ak ], [ undef, %bb.al ]
  %.sroa.063.0.i = phi i64 [ 1, %bb.am ], [ %i.da, %bb.ak ], [ 0, %bb.al ]
  %.sroa.460.1.i = phi i64 [ %i.de, %bb.am ], [ undef, %bb.ak ], [ %i.dc, %bb.al ]
  %.sroa.059.1.i = phi i64 [ 1, %bb.am ], [ %i.da, %bb.ak ], [ 1, %bb.al ]
  call void @_RNvNtCsf6gb3FOA7sv_14datafusion_sql5utils17make_decimal_type(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ag, i64 noundef %.sroa.059.1.i, i64 %.sroa.460.1.i, i64 noundef %.sroa.063.0.i, i64 %.sroa.664.0.i), !noalias !85648, !inline_history !85570
  %.pre = load i64, ptr %i.ag, align 8, !range !326 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.not = icmp eq i64 %.pre, -1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  br i1 %.not, label %bb.dc, label %bb.db

bb.ce:                                            ; preds = %bb.d
  unreachable

.split126:                                        ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !85694
  %i.fp = tail call noundef dereferenceable_or_null(45) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 45, i64 noundef range(i64 1, 17) 1) #71, !noalias !85694 ; 3 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %bb.cf, label %bb.cj

bb.cf:                                            ; preds = %.split126
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) 45) #72, !noalias !85695
  unreachable

bb.cg:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !nonnull !321, !noundef !321
  call fastcc void @_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE26convert_data_type_to_fieldB12_(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs)
  %i.ft = load i64, ptr %i.ao, align 8, !range !326, !noundef !321 ; 2 uses
  %.not128 = icmp eq i64 %i.ft, -1
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8            ; 2 uses
  br i1 %.not128, label %bb.cp, label %bb.co

bb.ch:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !nonnull !321, !noundef !321
  call fastcc void @_RNvMs8_NtCsf6gb3FOA7sv_14datafusion_sql7plannerINtB5_8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE26convert_data_type_to_fieldB12_(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fx)
  %i.fy = load i64, ptr %i.am, align 8, !range !326, !noundef !321 ; 2 uses
  %.not127 = icmp eq i64 %i.fy, -1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8            ; 6 uses
  br i1 %.not127, label %bb.cr, label %bb.cq

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit137: ; preds = %bb.cl, %bb.ck
  call void @llvm.experimental.noalias.scope.decl(metadata !85696)
  %.val.i = load i64, ptr %i.aj, align 8, !alias.scope !85696 ; 2 uses
  %i.gb = icmp eq i64 %.val.i, 0
  br i1 %i.gb, label %common.resume, label %bb.ci

bb.ci:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit137
  %.val1.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !85696, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !85696
  br label %common.resume

bb.cj:                                            ; preds = %.split126
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.fp, ptr noundef nonnull readonly align 1 dereferenceable(45) @705, i64 range(i64 0, -9223372036854775808) 45, i1 false), !noalias !85697
  store i64 45, ptr %i.aj, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  store ptr %i.fp, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 45, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store i64 0, ptr %i.ai, align 8
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4103.0..sroa_idx, align 8
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %.sroa.5104.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %i.aj, ptr %i.ah, align 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.4108.0..sroa_idx, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.ai, ptr %i.gc, align 8
  %.sroa.4112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.4112.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noundef nonnull @184, ptr noundef nonnull %i.ah)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit134 unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.gd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85698)
  %.val.i135 = load i64, ptr %i.ai, align 8, !alias.scope !85698 ; 2 uses
  %i.ge = icmp eq i64 %.val.i135, 0
  br i1 %i.ge, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit137, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %.val1.i136 = load ptr, ptr %.sroa.4103.0..sroa_idx, align 8, !alias.scope !85698, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i136, i64 noundef %.val.i135, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !85698
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit137

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit134: ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.experimental.noalias.scope.decl(metadata !85699)
  %.val.i138 = load i64, ptr %i.ai, align 8, !alias.scope !85699 ; 2 uses
  %i.gf = icmp eq i64 %.val.i138, 0
  br i1 %i.gf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit140, label %bb.cm
end_hunk_1
