Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.02?download=true
inline.NumInlined: 6474
inline.NumDeleted: 3263
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb5rules9bit_count9bit_count:bb.a
bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1137
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.0.copyload.fr = freeze i8 %.sroa.4.0.copyload ; 2 uses
  %i.p = icmp eq i8 %.sroa.4.0.copyload.fr, 3
  %i.q = icmp ult i8 %.sroa.5.0.copyload, 10
  %i.r = icmp ult i8 %.sroa.4.0.copyload.fr, 3
  %i.s = select i1 %i.p, i1 %i.q, i1 %i.r
  br i1 %i.s, label %bb.d, label %.thread53

.thread53:                                        ; preds = %bb.a, %bb.b
  %i.t = load ptr, ptr %1, align 8, !nonnull !20, !noundef !20 ; 5 uses
  %i.u = load i32, ptr %i.t, align 8, !range !29, !noundef !20
  %i.v = icmp eq i32 %i.u, 25
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread53
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 31
  %i.x = load i8, ptr %i.w, align 1, !range !35, !alias.scope !11741, !noundef !20 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !11741, !noundef !20
  %i.aa = and i64 %i.z, 72057594037927935
  %i.ab = icmp ult i8 %i.x, -48
  %i.ac = zext i8 %i.x to i64
  %i.ad = add nsw i64 %i.ac, -192
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 16)
  %.sroa.0.0.i = select i1 %i.ab, i64 %spec.store.select.i, i64 %i.aa
  %i.ae = icmp eq i64 %.sroa.0.0.i, 5
  br i1 %i.ae, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.j, %bb.l, %bb.i, %bb.f, %bb.e, %bb.c, %bb.b, %bb.ai, %bb.h, %bb.g, %.thread53
  ret void

bb.e:                                             ; preds = %bb.c
  %i.af = icmp ugt i8 %i.x, -49
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !11741
  %.sroa.01.0.i = select i1 %i.af, ptr %i.ah, ptr %i.ag ; 2 uses
  %i.ai = load i32, ptr %.sroa.01.0.i, align 1
  %i.aj = xor i32 %i.ai, 1853189987
  %i.ak = getelementptr i8, ptr %.sroa.01.0.i, i64 4
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i32
  %i.an = xor i32 %i.am, 116
  %i.ao = or i32 %i.aj, %i.an
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = zext i1 %i.ap to i32
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !20, !noundef !20
  %i.at = load i64, ptr %i.as, align 8, !noundef !20
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.g, label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !20
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.h, label %bb.d

bb.h:                                             ; preds = %bb.g
  %i.ba = load i32, ptr %i.aw, align 8, !range !29, !noundef !20
  %i.bb = icmp eq i32 %i.ba, 19
  br i1 %i.bb, label %bb.i, label %bb.d

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bd = tail call noundef zeroext i1 @_RNvXsS_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValueINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqeE2eq(ptr noundef nonnull align 8 %i.bc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @419, i64 noundef 1)
  br i1 %i.bd, label %bb.j, label %bb.d

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !20, !noundef !20 ; 5 uses
  %i.bg = load i32, ptr %i.bf, align 8, !range !29, !noundef !20
  %i.bh = icmp eq i32 %i.bg, 16
  br i1 %i.bh, label %bb.k, label %bb.d

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !20, !noundef !20
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !20
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.l, label %bb.d

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !20, !noundef !20 ; 8 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !20
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.m, label %bb.d

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bt = load ptr, ptr %i.bi, align 8, !nonnull !20, !noundef !20
  %i.bu = tail call noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel18match_builtin_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.bs, ptr noundef nonnull align 8 %i.bt, ptr noalias noundef nonnull readonly captures(address, read_provenance) @420, i64 noundef 3)
  br i1 %i.bu, label %bb.n, label %bb.d

bb.n:                                             ; preds = %bb.m
  %i.bv = load i32, ptr %i.bo, align 8, !range !29, !noundef !20
  %i.bw = icmp eq i32 %i.bv, 27
  br i1 %i.bw, label %bb.d, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !20, !align !27, !noundef !20 ; 2 uses
  %.val45 = load ptr, ptr %i.by, align 8, !nonnull !20, !noundef !20
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %.val46 = load i64, ptr %i.bz, align 8, !noundef !20
  %i.ca = tail call fastcc { ptr, i64 } @_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB5_(ptr nonnull %.val45, i64 %.val46, ptr noundef nonnull align 8 %i.bo) ; 2 uses
  %i.cb = extractvalue { ptr, i64 } %i.ca, 0      ; 3 uses
  %i.cc = extractvalue { ptr, i64 } %i.ca, 1      ; 2 uses
  store ptr %i.cb, ptr %i.m, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store i64 %i.cc, ptr %i.cd, align 8
  %i.ce = load i32, ptr %i.bo, align 8, !range !29, !noundef !20
  switch i32 %i.ce, label %default.unreachable74 [
    i32 0, label %bb.v
    i32 1, label %bb.v
    i32 2, label %bb.v
    i32 3, label %bb.v
    i32 4, label %bb.v
    i32 5, label %bb.v
    i32 6, label %bb.p
    i32 7, label %bb.p
    i32 8, label %bb.p
    i32 9, label %bb.p
    i32 10, label %bb.p
    i32 11, label %bb.v
    i32 12, label %bb.v
    i32 13, label %bb.v
    i32 14, label %bb.v
    i32 15, label %bb.v
    i32 16, label %bb.p
    i32 17, label %bb.q
    i32 18, label %bb.r
    i32 19, label %bb.s
    i32 20, label %bb.t
    i32 21, label %bb.u
    i32 22, label %bb.p
    i32 23, label %bb.p
    i32 24, label %bb.p
    i32 25, label %bb.p
    i32 26, label %bb.p
    i32 27, label %bb.v
    i32 28, label %bb.v
    i32 29, label %bb.v
    i32 30, label %bb.v
    i32 31, label %bb.v
    i32 32, label %bb.v
  ]

default.unreachable74:                            ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !range !31, !noundef !20
  %i.ch = icmp eq i64 %i.cg, -2
  br label %bb.v

bb.r:                                             ; preds = %bb.o
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !range !23, !noundef !20
  %i.ck = icmp eq i64 %i.cj, -1
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !range !23, !noundef !20
  %i.cn = icmp ne i64 %i.cm, -1
  br label %bb.v

bb.t:                                             ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !noundef !20
  %i.cq = icmp eq ptr %i.cp, null
  br label %bb.v

bb.u:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cc
  store ptr %i.cb, ptr %i.l, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.cr, ptr %i.cs, align 8
  %i.ct = call fastcc { i32, i32 } @_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(16) %i.l) ; 2 uses
  %i.cu = extractvalue { i32, i32 } %i.ct, 0
  %i.cv = trunc i32 %i.cu to i1
  br i1 %i.cv, label %bb.w, label %.thread54

bb.v:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %.thread57, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0 = phi i1 [ %i.ch, %bb.q ], [ %i.ck, %bb.r ], [ %i.cn, %bb.s ], [ %i.cq, %bb.t ], [ %7, %.thread57 ], [ false, %bb.p ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs_NtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inferenceNtB4_18ResolvedPythonTypeINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.k, ptr noundef nonnull align 8 %i.bo)
  %i.cw = load i8, ptr %i.k, align 8, !range !69, !noundef !20
  switch i8 %i.cw, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeECsEhZmuQNqkz_11ruff_linter.exit [
    i8 0, label %.thread59
    i8 1, label %bb.z
  ]

bb.w:                                             ; preds = %bb.u
  %i.cx = extractvalue { i32, i32 } %i.ct, 1      ; 2 uses
  %i.cy = icmp ult i32 %i.cx, 1114112
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = call fastcc { i32, i32 } @_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(16) %i.l) ; 2 uses
  %i.da = extractvalue { i32, i32 } %i.cz, 0
  %i.db = extractvalue { i32, i32 } %i.cz, 1      ; 2 uses
  %i.dc = trunc i32 %i.da to i1
  br i1 %i.dc, label %bb.x, label %.thread57

.thread54:                                        ; preds = %bb.u
  %2 = call fastcc { i32, i32 } @_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(16) %i.l) ; 2 uses
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = trunc i32 %3 to i1
  br i1 %4, label %.thread54.a, label %.thread57

.thread54.a:                                      ; preds = %.thread54
  %5 = extractvalue { i32, i32 } %2, 1
  %6 = icmp ult i32 %5, 1114112
  tail call void @llvm.assume(i1 %6)
  br label %.thread57

bb.x:                                             ; preds = %bb.w
  %i.dd = icmp eq i32 %i.cx, 48
  %i.de = icmp ult i32 %i.db, 1114112
  tail call void @llvm.assume(i1 %i.de)
  br i1 %i.dd, label %bb.y, label %.thread57

bb.y:                                             ; preds = %bb.x
  %switch.tableidx = add nsw i32 %i.db, -66       ; 2 uses
  %i.df = icmp ult i32 %switch.tableidx, 55
  br i1 %i.df, label %switch.lookup, label %.thread57

switch.lookup:                                    ; preds = %bb.y
  %switch.cast = zext nneg i32 %switch.tableidx to i55
  %switch.downshift = lshr i55 17979209838223358, %switch.cast
  %switch.masked = trunc i55 %switch.downshift to i1
  br label %.thread57

.thread57:                                        ; preds = %switch.lookup, %bb.y, %.thread54.a, %.thread54, %bb.x, %bb.w
  %7 = phi i1 [ %switch.masked, %switch.lookup ], [ true, %bb.w ], [ true, %bb.y ], [ true, %bb.x ], [ true, %.thread54 ], [ true, %.thread54.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.v

.thread59:                                        ; preds = %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !range !71, !noundef !20 ; 3 uses
  %i.di = icmp ne i8 %i.dh, 6
  call void @llvm.assume(i1 %i.di)
  %switch.selectcmp.case1 = icmp eq i8 %i.dh, 0
  %switch.selectcmp.case2 = icmp eq i8 %i.dh, 3
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %.sroa.08.0.ph = select i1 %switch.selectcmp, i8 2, i8 1
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeECsEhZmuQNqkz_11ruff_linter.exit

bb.z:                                             ; preds = %bb.v
  %i.dj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dj)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.v, %.thread59, %bb.z
  %.sroa.08.061 = phi i8 [ %.sroa.08.0.ph, %.thread59 ], [ 1, %bb.v ], [ 1, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  br i1 %.sroa.0.0, label %.split37, label %.split

.split:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeECsEhZmuQNqkz_11ruff_linter.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.m, ptr %i.h, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.427.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @421, ptr noundef nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.aa

.split37:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference18ResolvedPythonTypeECsEhZmuQNqkz_11ruff_linter.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.m, ptr %i.i, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.421.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @422, ptr noundef nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.aa

bb.aa:                                            ; preds = %.split37, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.dk = load ptr, ptr %i.m, align 8, !nonnull !20, !noundef !20
  %i.dl = load i64, ptr %i.cd, align 8, !noundef !20
  invoke void @_RNvMNtNtCsEhZmuQNqkz_11ruff_linter3fix7snippetNtB2_17SourceCodeSnippet8from_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dk, i64 noundef %i.dl)
          to label %bb.ab unwind label %.thread71

.thread71:                                        ; preds = %bb.ad, %bb.aa
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread62

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter3fix7snippet17SourceCodeSnippetEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.e) #48
          to label %.thread62 unwind label %bb.aj

bb.ad:                                            ; preds = %bb.ab
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !noundef !20
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !noundef !20
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !20, !align !27, !noundef !20
  invoke void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules6refurb5rules9bit_count8BitCountEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull align 8 %i.dt, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.f, i32 noundef %i.dp, i32 noundef %i.dr)
          to label %bb.ae unwind label %.thread71

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.du = load i32, ptr %i.do, align 8, !noundef !20
  %i.dv = load i32, ptr %i.dq, align 4, !noundef !20
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB2_4Edit17range_replacement(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %i.du, i32 noundef %i.dv)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.g) #48
          to label %.thread67 unwind label %bb.aj

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix15applicable_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i8 noundef %.sroa.08.061)
          to label %bb.ah unwind label %bb.af

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.ai unwind label %bb.af

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.d

bb.aj:                                            ; preds = %.thread62, %bb.af, %bb.ac
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #49
  unreachable

.thread67:                                        ; preds = %bb.af, %.thread62
  %.pn65 = phi { ptr, i32 } [ %.pn66, %.thread62 ], [ %i.dw, %bb.af ]
  resume { ptr, i32 } %.pn65

.thread62:                                        ; preds = %bb.ac, %.thread71
  %.pn66 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread71 ], [ %i.dm, %bb.ac ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #48
          to label %.thread67 unwind label %bb.aj
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7airflow5rules28runtime_value_in_dag_or_task25find_runtime_varying_call(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !11967 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [48 x i8], align 8                ; 9 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [144 x i8], align 8              ; 24 uses
  %i.ac = alloca [144 x i8], align 8              ; 6 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr292 = phi ptr [ %1, %bb.a ], [ %.tr292.be, %tailrecurse.backedge ] ; 39 uses
  %i.ad = load i32, ptr %.tr292, align 8, !range !29, !noundef !20
  switch i32 %i.ad, label %default.unreachable [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.g
    i32 3, label %tailrecurse.backedge.sink.split
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.p
    i32 7, label %bb.av
    i32 8, label %bb.ax
    i32 9, label %bb.ax
    i32 10, label %bb.t
    i32 11, label %bb.ax
    i32 12, label %tailrecurse.backedge.sink.split
    i32 13, label %bb.u
    i32 14, label %tailrecurse.backedge.sink.split
    i32 15, label %bb.v
    i32 16, label %bb.z
    i32 17, label %bb.aa
    i32 18, label %bb.am
    i32 19, label %bb.ap
    i32 20, label %bb.ap
    i32 21, label %bb.ap
    i32 22, label %bb.ap
    i32 23, label %bb.ap
    i32 24, label %bb.ap
    i32 25, label %bb.aq
    i32 26, label %bb.ar
end_hunk_0
