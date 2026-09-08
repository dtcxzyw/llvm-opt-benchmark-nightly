Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_dircolors-d6365822c283ca99.uu_dircolors.ca3c2937c13f3240-cgu.0?download=true
inline.NumInlined: 415
inline.NumDeleted: 238
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvCshmuvWokFoRg_12uu_dircolors12append_entry:bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.m

bb.f:                                             ; preds = %_RNvYINtNtNtCs6JMX4GRUq9U_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCshmuvWokFoRg_12uu_dircolors.exit.thread
  %i.bn = load i32, ptr %5, align 1
  %i.bo = xor i32 %i.bn, 1869377379
  %i.bp = getelementptr i8, ptr %5, i64 4
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = zext i8 %i.bq to i32
  %i.bs = xor i32 %i.br, 114
  %i.bt = or i32 %i.bo, %i.bs
  %i.bu = icmp ne i32 %i.bt, 0
  %i.bv = zext i1 %i.bu to i32
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.e, label %bb.h

bb.g:                                             ; preds = %_RNvYINtNtNtCs6JMX4GRUq9U_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCshmuvWokFoRg_12uu_dircolors.exit.thread
  %i.bx = load i64, ptr %5, align 1
  %i.by = icmp ne i64 %i.bx, 8388344033061595493
  %i.bz = zext i1 %i.by to i32
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.e, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %_RNvYINtNtNtCs6JMX4GRUq9U_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCshmuvWokFoRg_12uu_dircolors.exit.thread, %bb.g
  %i.cb = load ptr, ptr @_RNvNtNtCsh036I4OHgIr_6uucore8features6colors20FILE_ATTRIBUTE_CODES, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.cc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsh036I4OHgIr_6uucore8features6colors20FILE_ATTRIBUTE_CODES, i64 8), align 8, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.cc, 5
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx
  %i.ce = icmp eq i64 %i.cc, 0
  br i1 %i.ce, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %_RNCNvCshmuvWokFoRg_12uu_dircolors12append_entry0B3_.exit.thread.i
  %i.cf = phi ptr [ %i.cg, %_RNCNvCshmuvWokFoRg_12uu_dircolors12append_entry0B3_.exit.thread.i ], [ %i.cb, %bb.h ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !229, !noundef !5
  %i.cj = icmp eq i64 %i.ci, %6
  br i1 %i.cj, label %_RNCNvCshmuvWokFoRg_12uu_dircolors12append_entry0B3_.exit.i, label %_RNCNvCshmuvWokFoRg_12uu_dircolors12append_entry0B3_.exit.thread.i

_RNCNvCshmuvWokFoRg_12uu_dircolors12append_entry0B3_.exit.i: ; preds = %.lr.ph.i
  %i.ck = load ptr, ptr %i.cf, align 8, !noalias !229, !nonnull !5, !noundef !5
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.ck, ptr nonnull %5, i64 %6), !noalias !229
  %i.cl = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.cl, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterTReBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvCshmuvWokFoRg_12uu_dircolors12append_entry0EB1M_.exit, label %_RNCNvCshmuvWokFoRg_12uu_dircolors12append_entry0B3_.exit.thread.i

_RNCNvCshmuvWokFoRg_12uu_dircolors12append_entry0B3_.exit.thread.i: ; preds = %_RNCNvCshmuvWokFoRg_12uu_dircolors12append_entry0B3_.exit.i, %.lr.ph.i
  %i.cm = icmp eq ptr %i.cg, %i.cd
  br i1 %i.cm, label %.loopexit, label %.lr.ph.i

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterTReBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvCshmuvWokFoRg_12uu_dircolors12append_entry0EB1M_.exit: ; preds = %_RNCNvCshmuvWokFoRg_12uu_dircolors12append_entry0B3_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store ptr %i.cn, ptr %i.i, align 8
  %i.co = load i8, ptr %2, align 1, !range !13, !noundef !5
  %i.cp = icmp eq i8 %i.co, 2
  br i1 %i.cp, label %.split63, label %.split

.loopexit:                                        ; preds = %_RNCNvCshmuvWokFoRg_12uu_dircolors12append_entry0B3_.exit.thread.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.453.0..sroa_idx, align 8
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  store i64 0, ptr %.sroa.554.0..sroa_idx, align 8
  %.not.i94 = icmp slt i64 %4, 0
  br i1 %.not.i94, label %bb.n, label %bb.i, !prof !9

bb.i:                                             ; preds = %.loopexit
  br i1 %i.t, label %.thread, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !230
  %i.cq = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 1, 9) 1) #19, !noalias !230 ; 18 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.n, label %bb.o

.split:                                           ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterTReBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvCshmuvWokFoRg_12uu_dircolors12append_entry0EB1M_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.i, ptr %i.e, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRReNtB6_7Display3fmtCshmuvWokFoRg_12uu_dircolors, ptr %.sroa.445.0..sroa_idx, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.p, ptr %i.cs, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCshmuvWokFoRg_12uu_dircolors, ptr %.sroa.449.0..sroa_idx, align 8
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @10, ptr noundef nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.0193.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.5195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5195.0.copyload = load ptr, ptr %.sroa.5195.0..sroa_idx, align 8
  %.sroa.7198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.7198.0.copyload = load i64, ptr %.sroa.7198.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.j

.split63:                                         ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterTReBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvCshmuvWokFoRg_12uu_dircolors12append_entry0EB1M_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.p, ptr %i.g, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCshmuvWokFoRg_12uu_dircolors, ptr %.sroa.435.0..sroa_idx, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.i, ptr %i.ct, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRReNtB6_7Display3fmtCshmuvWokFoRg_12uu_dircolors, ptr %.sroa.439.0..sroa_idx, align 8
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @11, ptr noundef nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.0193.0.copyload194 = load i64, ptr %i.h, align 8
  %.sroa.5195.0..sroa_idx196 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5195.0.copyload197 = load ptr, ptr %.sroa.5195.0..sroa_idx196, align 8
  %.sroa.7198.0..sroa_idx199 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.7198.0.copyload200 = load i64, ptr %.sroa.7198.0..sroa_idx199, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.j

bb.j:                                             ; preds = %.split63, %.split
  %.sroa.7198.0 = phi i64 [ %.sroa.7198.0.copyload200, %.split63 ], [ %.sroa.7198.0.copyload, %.split ] ; 5 uses
  %.sroa.5195.0 = phi ptr [ %.sroa.5195.0.copyload197, %.split63 ], [ %.sroa.5195.0.copyload, %.split ] ; 3 uses
  %.sroa.0193.0 = phi i64 [ %.sroa.0193.0.copyload194, %.split63 ], [ %.sroa.0193.0.copyload, %.split ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5195.0) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !232, !noundef !5 ; 5 uses
  %i.cw = load i64, ptr %1, align 8, !range !4, !alias.scope !232, !noundef !5
  %i.cx = sub i64 %i.cw, %i.cv
  %i.cy = icmp ugt i64 %.sroa.7198.0, %i.cx
  br i1 %i.cy, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i, !prof !10

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i: ; preds = %bb.j
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshmuvWokFoRg_12uu_dircolors(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.cv, i64 noundef %.sroa.7198.0, i64 noundef 1, i64 noundef 1) #19
  %i.cz = load i64, ptr %i.cu, align 8, !alias.scope !231, !noundef !5 ; 2 uses
  %i.da = icmp sgt i64 %i.cz, -1
  call void @llvm.assume(i1 %i.da)
  br label %bb.k

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i: ; preds = %bb.j
  %i.db = icmp sgt i64 %i.cv, -1
  call void @llvm.assume(i1 %i.db)
  %.not.i95 = icmp eq i64 %.sroa.7198.0, 0
  br i1 %.not.i95, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit, label %bb.k

bb.k:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i
  %i.dc = phi i64 [ %i.cz, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i ], [ %i.cv, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !alias.scope !231, !nonnull !5, !noundef !5
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.df, ptr nonnull readonly align 1 %.sroa.5195.0, i64 %.sroa.7198.0, i1 false), !noalias !231
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i, %bb.k
  %i.dg = phi i64 [ %i.dc, %bb.k ], [ %i.cv, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i ]
  %i.dh = add i64 %i.dg, %.sroa.7198.0
  store i64 %i.dh, ptr %i.cu, align 8, !alias.scope !231
  store i64 -1, ptr %0, align 8
  %i.di = icmp eq i64 %.sroa.0193.0, 0
  br i1 %i.di, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshmuvWokFoRg_12uu_dircolors.exit, label %bb.l

bb.l:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5195.0, i64 noundef %.sroa.0193.0, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !233
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshmuvWokFoRg_12uu_dircolors.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshmuvWokFoRg_12uu_dircolors.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.m

bb.m:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshmuvWokFoRg_12uu_dircolors.exit180, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshmuvWokFoRg_12uu_dircolors.exit101, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshmuvWokFoRg_12uu_dircolors.exit, %bb.e
  ret void

bb.n:                                             ; preds = %.loopexit, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4219.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %.loopexit ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4219.0.ph, i64 %4) #21
  unreachable

bb.o:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cq, ptr nonnull align 1 %3, i64 %4, i1 false)
  %cond = icmp eq i64 %4, 1
  %i.dj = load i8, ptr %i.cq, align 1, !alias.scope !234, !noalias !235 ; 2 uses
  br i1 %cond, label %bb.p, label %thread-pre-split.i

bb.p:                                             ; preds = %bb.o
  switch i8 %i.dj, label %bb.w [
    i8 43, label %.thread
    i8 45, label %.thread
  ]

thread-pre-split.i:                               ; preds = %bb.o
  switch i8 %i.dj, label %bb.w [
    i8 43, label %bb.q
    i8 45, label %bb.r
  ]

bb.q:                                             ; preds = %thread-pre-split.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  %i.dl = add nsw i64 %4, -1
  br label %bb.w

bb.r:                                             ; preds = %thread-pre-split.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 2 uses
  %i.dn = add nsw i64 %4, -1                      ; 2 uses
  %i.do = icmp samesign ult i64 %4, 17
  br i1 %i.do, label %.lr.ph141.i, label %.lr.ph.i97

.lr.ph.i97:                                       ; preds = %bb.r, %bb.u
  %.sroa.0.1136.i = phi ptr [ %i.dp, %bb.u ], [ %i.dm, %bb.r ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.dq, %bb.u ], [ %i.dn, %bb.r ]
  %.sroa.084.0134.i = phi i64 [ %i.eb, %bb.u ], [ 0, %bb.r ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.dq = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.dr = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.ds = extractvalue { i64, i1 } %i.dr, 0
  %i.dt = extractvalue { i64, i1 } %i.dr, 1
  br i1 %i.dt, label %.thread, label %bb.s, !prof !10

bb.s:                                             ; preds = %.lr.ph.i97
  %i.du = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !234, !noalias !235, !noundef !5
  %i.dv = zext i8 %i.du to i32
  %i.dw = add nsw i32 %i.dv, -48                  ; 2 uses
  %i.dx = icmp ult i32 %i.dw, 10
  br i1 %i.dx, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.dy = zext nneg i32 %i.dw to i64
  %i.dz = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ds, i64 %i.dy) ; 2 uses
  %i.ea = extractvalue { i64, i1 } %i.dz, 1
  br i1 %i.ea, label %.thread, label %bb.u, !prof !10

bb.u:                                             ; preds = %bb.t
  %i.eb = extractvalue { i64, i1 } %i.dz, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.dq, 0
  br i1 %.not102.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCshmuvWokFoRg_12uu_dircolors.exit.i, label %.lr.ph.i97

.lr.ph141.i:                                      ; preds = %bb.r, %bb.v
  %.sroa.0.2140.i = phi ptr [ %i.ei, %bb.v ], [ %i.dm, %bb.r ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.eh, %bb.v ], [ %i.dn, %bb.r ]
  %.sroa.084.2138.i = phi i64 [ %i.ek, %bb.v ], [ 0, %bb.r ]
  %i.ec = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !234, !noalias !235, !noundef !5
  %i.ed = zext i8 %i.ec to i32
  %i.ee = add nsw i32 %i.ed, -48                  ; 2 uses
  %i.ef = icmp ult i32 %i.ee, 10
  br i1 %i.ef, label %bb.v, label %.thread

bb.v:                                             ; preds = %.lr.ph141.i
  %i.eg = mul i64 %.sroa.084.2138.i, 10
  %i.eh = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.ej = zext nneg i32 %i.ee to i64
  %i.ek = sub i64 %i.eg, %i.ej                    ; 2 uses
  %.not103.i = icmp eq i64 %i.eh, 0
  br i1 %.not103.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCshmuvWokFoRg_12uu_dircolors.exit.i, label %.lr.ph141.i

bb.w:                                             ; preds = %bb.p, %bb.q, %thread-pre-split.i
  %.sroa.26.0.i = phi i64 [ %i.dl, %bb.q ], [ %4, %thread-pre-split.i ], [ %4, %bb.p ] ; 4 uses
  %.sroa.0.0.i98 = phi ptr [ %i.dk, %bb.q ], [ %i.cq, %thread-pre-split.i ], [ %i.cq, %bb.p ] ; 2 uses
  %i.el = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.el, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.w
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCshmuvWokFoRg_12uu_dircolors.exit.i, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.w, %bb.z
  %.sroa.0.3145.i = phi ptr [ %i.em, %bb.z ], [ %.sroa.0.0.i98, %bb.w ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.en, %bb.z ], [ %.sroa.26.0.i, %bb.w ]
  %.sroa.084.3143.i = phi i64 [ %i.ey, %bb.z ], [ 0, %bb.w ]
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.en = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.eo = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.ep = extractvalue { i64, i1 } %i.eo, 0
  %i.eq = extractvalue { i64, i1 } %i.eo, 1
  br i1 %i.eq, label %.thread, label %bb.x, !prof !10

bb.x:                                             ; preds = %.preheader111.i
  %i.er = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !234, !noalias !235, !noundef !5
  %i.es = zext i8 %i.er to i32
  %i.et = add nsw i32 %i.es, -48                  ; 2 uses
  %i.eu = icmp ult i32 %i.et, 10
  br i1 %i.eu, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.ev = zext nneg i32 %i.et to i64
  %i.ew = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ep, i64 %i.ev) ; 2 uses
  %i.ex = extractvalue { i64, i1 } %i.ew, 1
  br i1 %i.ex, label %.thread, label %bb.z, !prof !10

bb.z:                                             ; preds = %bb.y
  %i.ey = extractvalue { i64, i1 } %i.ew, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.en, 0
  br i1 %.not104.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCshmuvWokFoRg_12uu_dircolors.exit.i, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.aa
  %.sroa.0.4149.i = phi ptr [ %i.ff, %bb.aa ], [ %.sroa.0.0.i98, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.fe, %bb.aa ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.fh, %bb.aa ], [ 0, %.preheader.i ]
  %i.ez = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !234, !noalias !235, !noundef !5
  %i.fa = zext i8 %i.ez to i32
  %i.fb = add nsw i32 %i.fa, -48                  ; 2 uses
  %i.fc = icmp ult i32 %i.fb, 10
  br i1 %i.fc, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %.lr.ph150.i
  %i.fd = mul i64 %.sroa.084.4147.i, 10
  %i.fe = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.fg = zext nneg i32 %i.fb to i64
  %i.fh = add i64 %i.fd, %i.fg                    ; 2 uses
  %.not105.i = icmp eq i64 %i.fe, 0
  br i1 %.not105.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCshmuvWokFoRg_12uu_dircolors.exit.i, label %.lr.ph150.i

.thread:                                          ; preds = %.lr.ph.i97, %bb.t, %bb.s, %.lr.ph141.i, %.preheader111.i, %bb.x, %bb.y, %.lr.ph150.i, %bb.p, %bb.p, %bb.i
  %.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.i ], [ %i.cq, %.preheader111.i ], [ %i.cq, %.lr.ph150.i ], [ %i.cq, %bb.p ], [ %i.cq, %.lr.ph141.i ], [ %i.cq, %bb.p ], [ %i.cq, %bb.y ], [ %i.cq, %bb.x ], [ %i.cq, %bb.s ], [ %i.cq, %bb.t ], [ %i.cq, %.lr.ph.i97 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %4) #23
  %i.fi = load i8, ptr %i.b, align 8, !range !236, !noundef !5
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.ac, label %bb.al

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCshmuvWokFoRg_12uu_dircolors.exit.i: ; preds = %bb.u, %bb.v, %bb.z, %bb.aa, %.preheader.i
  %.sroa.15209.0 = phi i64 [ %i.ey, %bb.z ], [ %i.ek, %bb.v ], [ %i.fh, %bb.aa ], [ 0, %.preheader.i ], [ %i.eb, %bb.u ]
  %i.fk = sitofp i64 %.sroa.15209.0 to double
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #23, !noalias !237
  %.pre.i = load ptr, ptr %.sroa.453.0..sroa_idx, align 8, !alias.scope !238, !noalias !237 ; 11 uses
  store i64 -1, ptr %.pre.i, align 8
  %.sroa.027.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  store ptr @12, ptr %.sroa.027.sroa.4.0..sroa_idx.i, align 8
  %.sroa.027.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  store i64 7, ptr %.sroa.027.sroa.5.0..sroa_idx.i, align 8
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  store i64 0, ptr %.sroa.428.0..sroa_idx.i, align 8
  %.sroa.630.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 40
  store i64 0, ptr %.sroa.630.0..sroa_idx.i, align 8
  %.sroa.832.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 56
  store i64 0, ptr %.sroa.832.0..sroa_idx.i, align 8
  %.sroa.1034.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 72
  store i64 0, ptr %.sroa.1034.0..sroa_idx.i, align 8
  %.sroa.1236.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 88
  store i64 0, ptr %.sroa.1236.0..sroa_idx.i, align 8
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 104
  store i64 -1, ptr %.sroa.14.0..sroa_idx.i, align 8
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.16.0..sroa_idx.i, align 8
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 136
  store double %i.fk, ptr %.sroa.21.0..sroa_idx.i, align 8
  store i64 1, ptr %.sroa.554.0..sroa_idx, align 8, !alias.scope !238, !noalias !237
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECshmuvWokFoRg_12uu_dircolors.exit

_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECshmuvWokFoRg_12uu_dircolors.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCshmuvWokFoRg_12uu_dircolors.exit.i, %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECshmuvWokFoRg_12uu_dircolors.exit
  %i.fl = phi ptr [ %.ph, %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECshmuvWokFoRg_12uu_dircolors.exit ], [ %i.cq, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCshmuvWokFoRg_12uu_dircolors.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 36, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fm = icmp eq i64 %4, 0
  br i1 %i.fm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshmuvWokFoRg_12uu_dircolors.exit101, label %bb.ab

bb.ab:                                            ; preds = %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECshmuvWokFoRg_12uu_dircolors.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fl, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !239
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshmuvWokFoRg_12uu_dircolors.exit101

bb.ac:                                            ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.fn = load ptr, ptr %.sroa.453.0..sroa_idx, align 8, !alias.scope !240, !noalias !241, !nonnull !5, !noundef !5 ; 3 uses
  %i.fo = load i64, ptr %.sroa.554.0..sroa_idx, align 8, !alias.scope !240, !noalias !241, !noundef !5 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  switch i64 %i.fo, label %.lr.ph.i.i.i113 [
    i64 0, label %bb.ae
    i64 1, label %._crit_edge.i.i.i102
  ]

._crit_edge.i.i.i102:                             ; preds = %.lr.ph.i.i.i113, %bb.ac
  %.sroa.05.0.lcssa.i.i.i103 = phi i64 [ 0, %bb.ac ], [ %i.ge, %.lr.ph.i.i.i113 ] ; 4 uses
  %i.fp = getelementptr inbounds nuw [144 x i8], ptr %i.fn, i64 %.sroa.05.0.lcssa.i.i.i103 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %.sroa.0.0.in.i.i.i.i.i.i104 = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i105 = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i.i104, align 8, !alias.scope !246, !noalias !247, !nonnull !5, !noundef !5
  %.sroa.3.0.in.i.i.i.i.i.i106 = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i.i107 = load i64, ptr %.sroa.3.0.in.i.i.i.i.i.i106, align 8, !alias.scope !246, !noalias !247, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i108 = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i.i107, i64 7)
  %i.fq = call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i.i105, ptr nonnull readonly @12, i64 %spec.store.select.i.i.i.i.i.i.i108), !alias.scope !248, !noalias !249 ; 2 uses
  %i.fr = sext i32 %i.fq to i64
  %i.fs = icmp eq i32 %i.fq, 0
  %i.ft = add i64 %.sroa.3.0.i.i.i.i.i.i107, -7
  %spec.select.i.i.i.i.i.i.i109 = select i1 %i.fs, i64 %i.ft, i64 %i.fr ; 2 uses
  %i.fu = icmp eq i64 %spec.select.i.i.i.i.i.i.i109, 0
  br i1 %i.fu, label %bb.ai, label %bb.ad

.lr.ph.i.i.i113:                                  ; preds = %bb.ac, %.lr.ph.i.i.i113
  %.sroa.01.025.i.i.i114 = phi i64 [ %i.gf, %.lr.ph.i.i.i113 ], [ %i.fo, %bb.ac ] ; 2 uses
  %.sroa.05.024.i.i.i115 = phi i64 [ %i.ge, %.lr.ph.i.i.i113 ], [ 0, %bb.ac ] ; 2 uses
  %i.fv = lshr i64 %.sroa.01.025.i.i.i114, 1      ; 2 uses
  %i.fw = add nuw nsw i64 %i.fv, %.sroa.05.024.i.i.i115 ; 3 uses
  %i.fx = icmp ult i64 %i.fw, %i.fo
  call void @llvm.assume(i1 %i.fx)
  %i.fy = getelementptr inbounds nuw [144 x i8], ptr %i.fn, i64 %i.fw ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %.sroa.0.0.in.i.i.i14.i.i.i116 = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %.sroa.0.0.i.i.i15.i.i.i117 = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i.i116, align 8, !alias.scope !252, !noalias !253, !nonnull !5, !noundef !5
  %.sroa.3.0.in.i.i.i16.i.i.i118 = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %.sroa.3.0.i.i.i17.i.i.i119 = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i.i118, align 8, !alias.scope !252, !noalias !253, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i.i120 = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i.i119, i64 7)
  %i.fz = call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i.i117, ptr nonnull readonly @12, i64 %spec.store.select.i.i.i.i22.i.i.i120), !alias.scope !254, !noalias !255 ; 2 uses
  %i.ga = sext i32 %i.fz to i64
  %i.gb = icmp eq i32 %i.fz, 0
  %i.gc = add i64 %.sroa.3.0.i.i.i17.i.i.i119, -7
  %spec.select.i.i.i.i23.i.i.i121 = select i1 %i.gb, i64 %i.gc, i64 %i.ga
  %i.gd = icmp sgt i64 %spec.select.i.i.i.i23.i.i.i121, 0
  %i.ge = select i1 %i.gd, i64 %.sroa.05.024.i.i.i115, i64 %i.fw, !unpredictable !5 ; 2 uses
  %i.gf = sub nuw nsw i64 %.sroa.01.025.i.i.i114, %i.fv ; 2 uses
  %i.gg = icmp ugt i64 %i.gf, 1
  br i1 %i.gg, label %.lr.ph.i.i.i113, label %._crit_edge.i.i.i102

bb.ad:                                            ; preds = %._crit_edge.i.i.i102
  %spec.select.i.i.i.i.lobit.i.i.i110 = lshr i64 %spec.select.i.i.i.i.i.i.i109, 63
  %i.gh = add nuw nsw i64 %spec.select.i.i.i.i.lobit.i.i.i110, %.sroa.05.0.lcssa.i.i.i103 ; 2 uses
  %i.gi = icmp ule i64 %i.gh, %i.fo
  call void @llvm.assume(i1 %i.gi)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.4.0.i.i.ph.i = phi i64 [ %i.gh, %bb.ad ], [ %i.fo, %bb.ac ] ; 3 uses
  %i.gj = icmp ult i64 %i.fo, 64051194700380388
  call void @llvm.assume(i1 %i.gj)
  %i.gk = load i64, ptr %i.c, align 8, !range !4, !alias.scope !256, !noalias !257, !noundef !5
  %i.gl = icmp eq i64 %i.fo, %i.gk
  br i1 %i.gl, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #23, !noalias !257
  %.pre.i112 = load ptr, ptr %.sroa.453.0..sroa_idx, align 8, !alias.scope !256, !noalias !257
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.gm = phi ptr [ %.pre.i112, %bb.af ], [ %i.fn, %bb.ae ]
  %i.gn = getelementptr inbounds nuw [144 x i8], ptr %i.gm, i64 %.sroa.4.0.i.i.ph.i ; 9 uses
  %i.go = icmp samesign ult i64 %.sroa.4.0.i.i.ph.i, %i.fo
  br i1 %i.go, label %bb.ah, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCshmuvWokFoRg_12uu_dircolors.exit.i111

bb.ah:                                            ; preds = %bb.ag
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 144
  %i.gq = sub nuw nsw i64 %i.fo, %.sroa.4.0.i.i.ph.i
  %i.gr = mul nuw nsw i64 %i.gq, 144
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gp, ptr nonnull align 8 %i.gn, i64 %i.gr, i1 false), !noalias !257
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCshmuvWokFoRg_12uu_dircolors.exit.i111

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCshmuvWokFoRg_12uu_dircolors.exit.i111: ; preds = %bb.ah, %bb.ag
  store i64 -1, ptr %i.gn, align 8, !noalias !241
  %.sroa.05.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store ptr @12, ptr %.sroa.05.sroa.4.0..sroa_idx.i, align 8, !noalias !241
  %.sroa.05.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store i64 7, ptr %.sroa.05.sroa.5.0..sroa_idx.i, align 8, !noalias !241
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  store i64 2, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !241
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  store i64 %4, ptr %.sroa.57.0..sroa_idx.i, align 8
  %.sroa.5212.0..sroa.57.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 40
  store ptr %.ph, ptr %.sroa.5212.0..sroa.57.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.6214.0..sroa.57.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 48
  store i64 %4, ptr %.sroa.6214.0..sroa.57.0..sroa_idx.i.sroa_idx, align 8
  %i.gs = add nuw nsw i64 %i.fo, 1
  store i64 %i.gs, ptr %.sroa.554.0..sroa_idx, align 8, !alias.scope !256, !noalias !257
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECshmuvWokFoRg_12uu_dircolors.exit

bb.ai:                                            ; preds = %._crit_edge.i.i.i102
  %i.gt = icmp ult i64 %.sroa.05.0.lcssa.i.i.i103, %i.fo
  br i1 %i.gt, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECshmuvWokFoRg_12uu_dircolors(ptr noalias nofree noundef align 8 dereferenceable(144) %i.fp) #19, !noalias !258
  store i64 -1, ptr %i.fp, align 8, !noalias !258
  store ptr @12, ptr %.sroa.0.0.in.i.i.i.i.i.i104, align 8, !noalias !258
  store i64 7, ptr %.sroa.3.0.in.i.i.i.i.i.i106, align 8, !noalias !258
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  store i64 2, ptr %i.gu, align 8, !noalias !258
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  store i64 %4, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !240
  %.sroa.5212.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  store ptr %.ph, ptr %.sroa.5212.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !240
  %.sroa.6214.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  store i64 %4, ptr %.sroa.6214.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !240
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECshmuvWokFoRg_12uu_dircolors.exit

bb.ak:                                            ; preds = %bb.ai
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i.i103, i64 noundef %i.fo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22, !noalias !258
  unreachable

_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECshmuvWokFoRg_12uu_dircolors.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCshmuvWokFoRg_12uu_dircolors.exit.i111, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 36, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshmuvWokFoRg_12uu_dircolors.exit101

bb.al:                                            ; preds = %.thread
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gw = load double, ptr %i.gv, align 8, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %i.gx = load ptr, ptr %.sroa.453.0..sroa_idx, align 8, !alias.scope !259, !nonnull !5, !noundef !5 ; 3 uses
  %i.gy = load i64, ptr %.sroa.554.0..sroa_idx, align 8, !alias.scope !259, !noundef !5 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !260)
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  switch i64 %i.gy, label %.lr.ph.i.i.i158 [
    i64 0, label %.thread.i131
    i64 1, label %._crit_edge.i.i.i122
  ]

._crit_edge.i.i.i122:                             ; preds = %.lr.ph.i.i.i158, %bb.al
  %.sroa.05.0.lcssa.i.i.i123 = phi i64 [ 0, %bb.al ], [ %i.ho, %.lr.ph.i.i.i158 ] ; 4 uses
  %i.gz = getelementptr inbounds nuw [144 x i8], ptr %i.gx, i64 %.sroa.05.0.lcssa.i.i.i123 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %.sroa.0.0.in.i.i.i.i.i.i124 = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i125 = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i.i124, align 8, !alias.scope !264, !noalias !265, !nonnull !5, !noundef !5
  %.sroa.3.0.in.i.i.i.i.i.i126 = getelementptr inbounds nuw i8, ptr %i.gz, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i.i127 = load i64, ptr %.sroa.3.0.in.i.i.i.i.i.i126, align 8, !alias.scope !264, !noalias !265, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i128 = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i.i127, i64 7)
end_hunk_0
