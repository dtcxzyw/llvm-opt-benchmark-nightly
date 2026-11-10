Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.01?download=true
inline.NumInlined: 11461
inline.NumDeleted: 4051
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE26convert_data_type_to_fieldB14_:bb.a
  %i.n = alloca [32 x i8], align 8                ; 10 uses
  %i.o = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.675.i = alloca [24 x i8], align 8        ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 8 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [24 x i8], align 8               ; 8 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [8 x i8], align 8                ; 12 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [40 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 2 uses
  %i.an = alloca [40 x i8], align 8               ; 43 uses
  %.sroa.658 = alloca [24 x i8], align 8          ; 8 uses
  %i.ao = alloca [32 x i8], align 8               ; 7 uses
  %i.ap = alloca [24 x i8], align 8               ; 10 uses
  %i.aq = alloca [24 x i8], align 8               ; 10 uses
  %i.ar = alloca [24 x i8], align 8               ; 2 uses
  %i.as = alloca [8 x i8], align 8                ; 5 uses
  %i.at = alloca [40 x i8], align 8               ; 7 uses
  %i.au = alloca [8 x i8], align 8                ; 6 uses
  %i.av = alloca [40 x i8], align 8               ; 7 uses
  %i.aw = load i8, ptr %2, align 8, !range !128, !noundef !40 ; 2 uses
  %i.ax = icmp eq i8 %i.aw, 100
  br i1 %i.ax, label %bb.d, label %bb.e

bb.b:                                             ; preds = %bb.do, %bb.dn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit, %bb.di, %bb.db, %bb.da, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit144
  ret void

bb.c:                                             ; preds = %bb.dm, %bb.cu, %.body
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

common.resume:                                    ; preds = %bb.cx, %bb.ab, %bb.ap, %bb.ay, %bb.br, %bb.bt, %.body.i, %bb.cl, %.body, %bb.dm, %bb.dl
  %common.resume.op = phi { ptr, i32 } [ %i.gi, %bb.cl ], [ %lpad.thr_comm.split-lp, %bb.dl ], [ %i.ho, %bb.cx ], [ %.pn, %.body ], [ %lpad.thr_comm.split-lp, %bb.dm ], [ %.pn.i, %bb.bt ], [ %.pn224.i, %bb.ab ], [ %.pn221.i, %bb.ap ], [ %.pn226.i, %.body.i ], [ %.pn219.i, %bb.ay ], [ %i.fg, %bb.br ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !67, !noundef !40 ; 4 uses
  %i.bb = icmp ne i64 %i.ba, 4
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = add nsw i64 %i.ba, -2
  %.inv = icmp samesign ult i64 %i.ba, 2
  %i.bd = select i1 %.inv, i64 2, i64 %i.bc
  switch i64 %i.bd, label %.thread [
    i64 0, label %.split132
    i64 1, label %bb.co
    i64 2, label %bb.cp
  ]

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.658)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr %2, ptr %i.aj, align 8, !noalias !31304
  br label %.split209.i

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.658)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31307)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr %2, ptr %i.aj, align 8, !noalias !31308
  switch i8 %i.aw, label %default.unreachable.a [
    i8 0, label %.split209.i
    i8 1, label %.split209.i
    i8 2, label %.split209.i
    i8 3, label %bb.f
    i8 4, label %.split209.i
    i8 5, label %.split209.i
    i8 6, label %bb.g
    i8 7, label %.split209.i
    i8 8, label %.split209.i
    i8 9, label %.split209.i
    i8 10, label %.split209.i
    i8 11, label %.split209.i
    i8 12, label %.split209.i
    i8 13, label %.split209.i
    i8 14, label %.split209.i
    i8 15, label %.split209.i
    i8 16, label %.split209.i
    i8 17, label %.split209.i
    i8 18, label %.split209.i
    i8 19, label %bb.am
    i8 20, label %bb.am
    i8 21, label %.split209.i
    i8 22, label %.split209.i
    i8 23, label %.split209.i
    i8 24, label %.split209.i
    i8 25, label %.split209.i
    i8 26, label %bb.h
    i8 27, label %.split209.i
    i8 28, label %bb.i
    i8 29, label %bb.j
    i8 30, label %.split209.i
    i8 31, label %bb.k
    i8 32, label %bb.l
    i8 33, label %bb.k
    i8 34, label %bb.l
    i8 35, label %.split209.i
    i8 36, label %.split209.i
    i8 37, label %.split209.i
    i8 38, label %bb.m
    i8 39, label %bb.m
    i8 40, label %bb.n
    i8 41, label %.split209.i
    i8 42, label %.split209.i
    i8 43, label %.split209.i
    i8 44, label %.split209.i
    i8 45, label %.split209.i
    i8 46, label %bb.m
    i8 47, label %bb.o
    i8 48, label %bb.o
    i8 49, label %bb.o
    i8 50, label %.split209.i
    i8 51, label %.split209.i
    i8 52, label %.split209.i
    i8 53, label %.split209.i
    i8 54, label %.split209.i
    i8 55, label %.split209.i
    i8 56, label %.split209.i
    i8 57, label %.split209.i
    i8 58, label %bb.n
    i8 59, label %bb.p
    i8 60, label %.split209.i
    i8 61, label %bb.p
    i8 62, label %.split209.i
    i8 63, label %.split209.i
    i8 64, label %.split209.i
    i8 65, label %.split209.i
    i8 66, label %bb.q
    i8 67, label %.split209.i
    i8 68, label %.split209.i
    i8 69, label %bb.q
    i8 70, label %.split209.i
    i8 71, label %bb.r
    i8 72, label %bb.s
    i8 73, label %.split209.i
    i8 74, label %bb.r
    i8 75, label %.split209.i
    i8 76, label %bb.t
    i8 77, label %bb.t
    i8 78, label %bb.u
    i8 79, label %.split209.i
    i8 80, label %bb.v
    i8 81, label %.split209.i
    i8 82, label %.split209.i
    i8 83, label %bb.w
    i8 84, label %.split209.i
    i8 85, label %bb.x
    i8 86, label %.split209.i
    i8 87, label %.split209.i
    i8 88, label %.split209.i
    i8 89, label %bb.f
    i8 90, label %.split209.i
    i8 91, label %.split209.i
    i8 92, label %.split209.i
    i8 93, label %bb.f
    i8 94, label %.split209.i
    i8 95, label %bb.y
    i8 96, label %.split209.i
    i8 97, label %.split209.i
    i8 98, label %.split209.i
    i8 99, label %.split209.i
    i8 115, label %.split209.i
    i8 101, label %.split209.i
    i8 102, label %.split209.i
    i8 103, label %.split209.i
    i8 104, label %.split209.i
    i8 105, label %.split209.i
    i8 106, label %bb.z
    i8 107, label %.split209.i
    i8 108, label %.split209.i
    i8 109, label %.split209.i
    i8 110, label %.split209.i
    i8 111, label %.split209.i
    i8 112, label %.split209.i
    i8 113, label %.split209.i
    i8 114, label %.split209.i
  ]

default.unreachable:                              ; preds = %bb.am
  unreachable

default.unreachable.a:                            ; preds = %bb.e
  unreachable

.split209.i:                                      ; preds = %bb.e, %.thread, %bb.bf, %bb.v, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !31308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !31308
  store ptr %i.aj, ptr %i.j, align 8, !noalias !31308
  %.sroa.496.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.496.0..sroa_idx.i, align 8, !noalias !31308
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noundef nonnull @650, ptr noundef nonnull %i.j), !noalias !31309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !31308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !31308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31308
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.cf unwind label %bb.ce, !noalias !31309

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.bf = load i8, ptr %i.be, align 1, !range !47, !alias.scope !31306, !noundef !40
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  br i1 %i.bg, label %bb.cb, label %bb.ca

bb.g:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bj = load i8, ptr %i.bi, align 2, !range !47, !alias.scope !31306, !noundef !40
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = load i8, ptr %i.bl, align 8, !range !54, !alias.scope !31307, !noundef !40
  %.not223.i = icmp eq i8 %i.bm, 2
  %brmerge.i = or i1 %.not223.i, %i.bk
  br i1 %brmerge.i, label %bb.aa, label %.split195.i

bb.h:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 11, ptr %i.bn, align 8, !alias.scope !31305
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.i:                                             ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 2, ptr %i.bo, align 8, !alias.scope !31305
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 6, ptr %i.bp, align 8, !alias.scope !31305
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.k:                                             ; preds = %bb.e, %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 3, ptr %i.bq, align 8, !alias.scope !31305
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.l:                                             ; preds = %bb.e, %bb.e
  %i.br = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 7, ptr %i.br, align 8, !alias.scope !31305
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.m:                                             ; preds = %bb.e, %bb.e, %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 4, ptr %i.bs, align 8, !alias.scope !31305
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.n:                                             ; preds = %bb.e, %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 5, ptr %i.bt, align 8, !alias.scope !31305
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.o:                                             ; preds = %bb.e, %bb.e, %bb.e
  %i.bu = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 8, ptr %i.bu, align 8, !alias.scope !31305
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.p:                                             ; preds = %bb.e, %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 9, ptr %i.bv, align 8, !alias.scope !31305
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.q:                                             ; preds = %bb.e, %bb.e
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 11, ptr %i.bw, align 8, !alias.scope !31305
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.r:                                             ; preds = %bb.s, %bb.e, %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 12, ptr %i.bx, align 8, !alias.scope !31305
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.s:                                             ; preds = %bb.e
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !range !61, !alias.scope !31307, !noundef !40
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.r, label %.split197.i

bb.t:                                             ; preds = %bb.e, %bb.e
  %i.cb = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 1, ptr %i.cb, align 8, !alias.scope !31305
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.u:                                             ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 14, ptr %i.cc, align 8, !alias.scope !31305
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.v:                                             ; preds = %bb.e
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !range !44, !alias.scope !31307, !noundef !40
  %i.cf = trunc nuw i64 %i.ce to i1
  br i1 %i.cf, label %.split209.i, label %bb.aw

bb.w:                                             ; preds = %bb.e
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !range !44, !alias.scope !31307, !noundef !40 ; 2 uses
  %.not216.i = icmp eq i64 %i.ch, 0
  br i1 %.not216.i, label %bb.bg, label %bb.bf

bb.x:                                             ; preds = %bb.e
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !range !155, !alias.scope !31307, !noundef !40
  %.not213.i = icmp eq i8 %i.cj, 13
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !range !44, !alias.scope !31307
  %.not214.i = icmp eq i64 %i.cl, 0
  %or.cond.i = select i1 %.not213.i, i1 %.not214.i, i1 false
  br i1 %or.cond.i, label %bb.bs, label %.split205.i

bb.y:                                             ; preds = %bb.e
  %i.cm = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 20, ptr %i.cm, align 8, !alias.scope !31305
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.z:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.675.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !31308
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !31307, !nonnull !40, !noundef !40 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !31307, !noundef !40
  %i.cr = getelementptr inbounds nuw [144 x i8], ptr %i.co, i64 %i.cq
  store ptr %i.co, ptr %i.n, align 8, !noalias !31308
  %.sroa.480.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.cr, ptr %.sroa.480.0..sroa_idx.i, align 8, !noalias !31308
  %.sroa.581.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 0, ptr %.sroa.581.0..sroa_idx.i, align 8, !noalias !31308
  %i.cs = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %1, ptr %i.cs, align 8, !noalias !31308
  call void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtB6_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB2R_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0ENtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B6k_IB6i_INtNtCs6Po7BT7Nknu_5alloc3vec3VecB5z_EB74_EINtNtNtB4_6traits7collect12FromIteratorIB6i_B5z_B74_EE9from_iterBQ_E0B8l_EB3R_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.n), !noalias !31305
  %i.ct = load i64, ptr %i.o, align 8, !range !43, !noalias !31308, !noundef !40 ; 2 uses
  %.not212.i = icmp eq i64 %i.ct, 20
  %i.cu = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.675.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false), !noalias !31308
  br i1 %.not212.i, label %bb.cd, label %bb.cc

bb.aa:                                            ; preds = %bb.g
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.cw = load i8, ptr %i.cv, align 1, !range !47, !alias.scope !31306, !noundef !40
  %i.cx = trunc nuw i8 %i.cw to i1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  br i1 %i.cx, label %bb.al, label %bb.ak

.split195.i:                                      ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !31308
  call fastcc void @_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias noundef nonnull readonly captures(address, read_provenance) @648, i64 89, ptr nonnull @648, ptr nonnull inttoptr (i64 179 to ptr)) #44, !noalias !31309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !31308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !31308
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ad unwind label %bb.ac, !noalias !31309

bb.ab:                                            ; preds = %bb.ag, %bb.ac
  %.pn224.i = phi { ptr, i32 } [ %i.cz, %bb.ac ], [ %i.di, %bb.ag ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah) #42
          to label %common.resume unwind label %bb.ai, !noalias !31309

bb.ac:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.ae, %.split195.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ad:                                            ; preds = %.split195.i
  %i.da = load i64, ptr %i.g, align 8, !range !44, !noalias !31308, !noundef !40
  %i.db = trunc nuw i64 %i.da to i1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !range !45, !noalias !31308, !noundef !40 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.db, label %bb.ae, label %bb.af, !prof !38

bb.ae:                                            ; preds = %bb.ad
  %i.df = load i64, ptr %i.de, align 8, !noalias !31308
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.dd, i64 %i.df) #41
          to label %bb.aj unwind label %bb.ac, !noalias !31309

bb.af:                                            ; preds = %bb.ad
  %i.dg = load ptr, ptr %i.de, align 8, !noalias !31308, !nonnull !40, !noundef !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !31308
  store i64 %i.dd, ptr %i.ag, align 8, !noalias !31308
  %.sroa.4104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.dg, ptr %.sroa.4104.0..sroa_idx.i, align 8, !noalias !31308
  %.sroa.5105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 0, ptr %.sroa.5105.0..sroa_idx.i, align 8, !noalias !31308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !31308
  store ptr %i.ah, ptr %i.af, align 8, !noalias !31308
  %.sroa.4109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4109.0..sroa_idx.i, align 8, !noalias !31308
  %i.dh = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.ag, ptr %i.dh, align 8, !noalias !31308
  %.sroa.4113.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4113.0..sroa_idx.i, align 8, !noalias !31308
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noundef nonnull @52, ptr noundef nonnull %i.af)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ag, !noalias !31309

bb.ag:                                            ; preds = %bb.af
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag) #42
          to label %bb.ab unwind label %bb.ai, !noalias !31309

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !31308
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.ah unwind label %bb.ac, !noalias !31309

bb.ah:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !31308
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah), !noalias !31309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !31308
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !31310
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread159

bb.ai:                                            ; preds = %bb.ci, %.body.i, %bb.by, %bb.bt, %bb.br, %bb.bd, %bb.ay, %bb.au, %bb.ap, %bb.ag, %bb.ab
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !31309
  unreachable

bb.aj:                                            ; preds = %bb.cg, %bb.bw, %bb.bn, %bb.bb, %bb.as, %bb.ae
  unreachable

bb.ak:                                            ; preds = %bb.aa
  store i8 24, ptr %i.cy, align 8, !alias.scope !31305
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.al:                                            ; preds = %bb.aa
  store i8 26, ptr %i.cy, align 8, !alias.scope !31305
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

bb.am:                                            ; preds = %bb.e, %bb.e
  %.sroa.055.0.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dk = load i64, ptr %.sroa.055.0.i, align 8, !range !61, !alias.scope !31307, !noundef !40 ; 3 uses
  switch i64 %i.dk, label %default.unreachable [
    i64 0, label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit
    i64 1, label %bb.an
    i64 2, label %bb.ao
  ]

bb.an:                                            ; preds = %bb.am
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !31307, !noundef !40
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit

bb.ao:                                            ; preds = %bb.am
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !31307, !noundef !40
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !31307, !noundef !40
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit

.split197.i:                                      ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !31308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !31308
  store ptr %i.aj, ptr %i.ac, align 8, !noalias !31308
  %.sroa.4100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.4100.0..sroa_idx.i, align 8, !noalias !31308
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noundef nonnull @649, ptr noundef nonnull %i.ac), !noalias !31309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !31308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !31308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !31308
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ar unwind label %bb.aq, !noalias !31309

bb.ap:                                            ; preds = %bb.au, %bb.aq
  %.pn221.i = phi { ptr, i32 } [ %i.dr, %bb.aq ], [ %i.ea, %bb.au ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad) #42
          to label %common.resume unwind label %bb.ai, !noalias !31309

bb.aq:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit250.i, %bb.as, %.split197.i
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ar:                                            ; preds = %.split197.i
  %i.ds = load i64, ptr %i.f, align 8, !range !44, !noalias !31308, !noundef !40
  %i.dt = trunc nuw i64 %i.ds to i1
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !range !45, !noalias !31308, !noundef !40 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.dt, label %bb.as, label %bb.at, !prof !38

bb.as:                                            ; preds = %bb.ar
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !31308
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.dv, i64 %i.dx) #41
          to label %bb.aj unwind label %bb.aq, !noalias !31309

bb.at:                                            ; preds = %bb.ar
  %i.dy = load ptr, ptr %i.dw, align 8, !noalias !31308, !nonnull !40, !noundef !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !31308
  store i64 %i.dv, ptr %i.ab, align 8, !noalias !31308
  %.sroa.4119.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.dy, ptr %.sroa.4119.0..sroa_idx.i, align 8, !noalias !31308
  %.sroa.5120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %.sroa.5120.0..sroa_idx.i, align 8, !noalias !31308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !31308
  store ptr %i.ad, ptr %i.aa, align 8, !noalias !31308
  %.sroa.4124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4124.0..sroa_idx.i, align 8, !noalias !31308
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.ab, ptr %i.dz, align 8, !noalias !31308
  %.sroa.4128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4128.0..sroa_idx.i, align 8, !noalias !31308
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noundef nonnull @52, ptr noundef nonnull %i.aa)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit250.i unwind label %bb.au, !noalias !31309

bb.au:                                            ; preds = %bb.at
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab) #42
          to label %bb.ap unwind label %bb.ai, !noalias !31309

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit250.i: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !31308
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.av unwind label %bb.aq, !noalias !31309

bb.av:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit250.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !31308
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad), !noalias !31309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !31308
  %.sroa.229.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.229.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !31310
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread159

bb.aw:                                            ; preds = %bb.v
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ec = load i8, ptr %i.eb, align 1, !range !83, !alias.scope !31307, !noundef !40
  switch i8 %i.ec, label %.split201.i [
    i8 0, label %bb.ax
    i8 2, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw, %bb.aw
  %i.ed = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 17, ptr %i.ed, align 8, !alias.scope !31305
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 9
  store i8 3, ptr %.sroa.450.0..sroa_idx.i, align 1, !alias.scope !31305
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread

.split201.i:                                      ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !31308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !31308
  store ptr %i.aj, ptr %i.w, align 8, !noalias !31308
  %.sroa.4134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.4134.0..sroa_idx.i, align 8, !noalias !31308
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noundef nonnull @650, ptr noundef nonnull %i.w), !noalias !31309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !31308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !31308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !31308
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ba unwind label %bb.az, !noalias !31309

bb.ay:                                            ; preds = %bb.bd, %bb.az
  %.pn219.i = phi { ptr, i32 } [ %i.ee, %bb.az ], [ %i.en, %bb.bd ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x) #42
          to label %common.resume unwind label %bb.ai, !noalias !31309

bb.az:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit251.i, %bb.bb, %.split201.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ba:                                            ; preds = %.split201.i
  %i.ef = load i64, ptr %i.d, align 8, !range !44, !noalias !31308, !noundef !40
  %i.eg = trunc nuw i64 %i.ef to i1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !range !45, !noalias !31308, !noundef !40 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.eg, label %bb.bb, label %bb.bc, !prof !38

bb.bb:                                            ; preds = %bb.ba
  %i.ek = load i64, ptr %i.ej, align 8, !noalias !31308
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ei, i64 %i.ek) #41
          to label %bb.aj unwind label %bb.az, !noalias !31309

bb.bc:                                            ; preds = %bb.ba
  %i.el = load ptr, ptr %i.ej, align 8, !noalias !31308, !nonnull !40, !noundef !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !31308
  store i64 %i.ei, ptr %i.v, align 8, !noalias !31308
  %.sroa.4138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.el, ptr %.sroa.4138.0..sroa_idx.i, align 8, !noalias !31308
  %.sroa.5139.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 0, ptr %.sroa.5139.0..sroa_idx.i, align 8, !noalias !31308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !31308
  store ptr %i.x, ptr %i.u, align 8, !noalias !31308
  %.sroa.4143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4143.0..sroa_idx.i, align 8, !noalias !31308
  %i.em = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.v, ptr %i.em, align 8, !noalias !31308
  %.sroa.4147.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4147.0..sroa_idx.i, align 8, !noalias !31308
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull @52, ptr noundef nonnull %i.u)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit251.i unwind label %bb.bd, !noalias !31309

bb.bd:                                            ; preds = %bb.bc
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v) #42
          to label %bb.ay unwind label %bb.ai, !noalias !31309

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit251.i: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !31308
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.be unwind label %bb.az, !noalias !31309

bb.be:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit251.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !31308
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x), !noalias !31309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !31308
  %.sroa.253.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.253.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !31310
  br label %_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_typeB14_.exit.thread159

bb.bf:                                            ; preds = %bb.w
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !31307
  switch i64 %i.ep, label %.split209.i [
    i64 0, label %bb.bg
    i64 3, label %bb.bg
    i64 6, label %bb.bg
    i64 9, label %bb.bg
  ]

bb.bg:                                            ; preds = %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !31308
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !range !83, !alias.scope !31307, !noundef !40
  switch i8 %i.er, label %bb.bi [
    i8 3, label %bb.bh
    i8 1, label %bb.bh
  ]

bb.bh:                                            ; preds = %bb.bg, %bb.bg
end_hunk_0
