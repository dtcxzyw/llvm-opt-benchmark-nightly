Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.03?download=true
inline.NumInlined: 4272
inline.NumDeleted: 1863
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 29
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle8overlongNtB2_8Overlong13try_from_line:bb.a
  br label %_RNvMs6_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4Line11line_ending.exit.thread.i90

_RNvMs6_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4Line11line_ending.exit.thread.i90: ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.cj, %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsEhZmuQNqkz_11ruff_linter.exit
  %.not.i3.neg.i91 = phi i64 [ %spec.select.i94, %bb.cm ], [ -1, %bb.ck ], [ 0, %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsEhZmuQNqkz_11ruff_linter.exit ], [ 0, %bb.cj ], [ -1, %bb.cl ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.020.0.val) ]
  %i.jg = add i64 %.not.i3.neg.i91, %.sroa.020.0.val77 ; 6 uses
  %i.jh = icmp eq i64 %i.jg, 0
  br i1 %i.jh, label %_RNvMs6_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4Line6as_str.exit95, label %bb.cn

bb.cn:                                            ; preds = %_RNvMs6_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4Line11line_ending.exit.thread.i90
  %.not.i4.i92 = icmp ult i64 %i.jg, %.sroa.020.0.val77
  br i1 %.not.i4.i92, label %bb.co, label %.split.i.i93

.split.i.i93:                                     ; preds = %bb.cn
  %i.ji = icmp eq i64 %.not.i3.neg.i91, 0
  br i1 %i.ji, label %_RNvMs6_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4Line6as_str.exit95, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.020.0.val, i64 %i.jg
  %i.jk = load i8, ptr %i.jj, align 1, !alias.scope !5217, !noundef !8
  %i.jl = icmp sgt i8 %i.jk, -65
  br i1 %i.jl, label %_RNvMs6_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4Line6as_str.exit95, label %bb.cp

bb.cp:                                            ; preds = %bb.co, %.split.i.i93
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.020.0.val, i64 noundef %.sroa.020.0.val77, i64 noundef 0, i64 noundef %i.jg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #55
  unreachable

_RNvMs6_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4Line6as_str.exit95: ; preds = %_RNvMs6_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4Line11line_ending.exit.thread.i90, %.split.i.i93, %bb.co
  %i.jm = icmp ugt i64 %i.jg, 4294967295
  %i.jn = shl nuw i64 %i.jg, 32
  %.sroa.09.0.insert.insert.i = select i1 %i.jm, i64 513, i64 %i.jn ; 2 uses
  %i.jo = trunc i64 %.sroa.09.0.insert.insert.i to i1
  br i1 %i.jo, label %bb.cq, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit, !prof !11

bb.cq:                                            ; preds = %_RNvMs6_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4Line6as_str.exit95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5218
  store i8 2, ptr %i.a, align 1, !noalias !5218
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @139, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1587) #55
  unreachable

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit: ; preds = %_RNvMs6_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4Line6as_str.exit95
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.09.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i32
  %i.jp = add i32 %i.ix, %.sroa.6.0.extract.trunc.i.i ; 2 uses
  %.not76 = icmp ugt i32 %.sroa.057.1.lcssa, %i.jp
  br i1 %.not76, label %bb.cs, label %bb.ct, !prof !11

bb.cr:                                            ; preds = %bb.ci
  %i.jq = icmp samesign ult i32 %.sroa.4.0.i.ph, 128
  br i1 %i.jq, label %bb.cx, label %bb.cv

bb.cs:                                            ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #55
  unreachable

bb.ct:                                            ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.057.1.lcssa, ptr %i.jr, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.jp, ptr %.sroa.418.0..sroa_idx, align 4
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.022.0128, ptr %.sroa.519.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.j, %bb.dg, %bb.ct
  ret void

bb.cv:                                            ; preds = %bb.cr
  %i.js = icmp samesign ult i32 %.sroa.4.0.i.ph, 2048
  br i1 %i.js, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.jt = icmp samesign ult i32 %.sroa.4.0.i.ph, 65536
  %. = select i1 %i.jt, i32 3, i32 4
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cv, %bb.cw, %bb.cr
  %.sroa.056.0 = phi i32 [ 2, %bb.cv ], [ %., %bb.cw ], [ 1, %bb.cr ]
  %i.ju = add i32 %.sroa.056.0, %.sroa.057.1139   ; 2 uses
  switch i32 %.sroa.4.0.i.ph, label %bb.cz [
    i32 13, label %_RNvMsg_NtCsEhZmuQNqkz_11ruff_linter10line_widthNtB5_16LineWidthBuilder8add_char.exit
    i32 9, label %bb.cy
    i32 10, label %_RNvMsg_NtCsEhZmuQNqkz_11ruff_linter10line_widthNtB5_16LineWidthBuilder8add_char.exit
  ]

bb.cy:                                            ; preds = %bb.cx
  %i.jv = urem i64 %.sroa.5.1136, %i.n
  %i.jw = sub nuw nsw i64 %i.n, %i.jv             ; 2 uses
  %i.jx = add nuw nsw i64 %i.jw, %.sroa.0100.1137
  %i.jy = add i64 %i.jw, %.sroa.5.1136
  br label %_RNvMsg_NtCsEhZmuQNqkz_11ruff_linter10line_widthNtB5_16LineWidthBuilder8add_char.exit

bb.cz:                                            ; preds = %bb.cx
  %i.jz = icmp samesign ult i32 %.sroa.4.0.i.ph, 127
  br i1 %i.jz, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ka = icmp samesign ugt i32 %.sroa.4.0.i.ph, 159
  br i1 %i.ka, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  %i.kb = call fastcc i8 @_RNvNtCsly1OcjGFjsJ_13unicode_width6tables12lookup_width(i32 noundef range(i32 0, 1114112) %.sroa.4.0.i.ph)
  %i.kc = zext nneg i8 %i.kb to i64
  br label %bb.dd

bb.dc:                                            ; preds = %bb.cz
  %i.kd = icmp samesign ugt i32 %.sroa.4.0.i.ph, 31
  %spec.select.peel.i.i = zext i1 %i.kd to i64
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.da
  %.sroa.02.0.peel.i.i = phi i64 [ 0, %bb.da ], [ %spec.select.peel.i.i, %bb.dc ], [ %i.kc, %bb.db ]
  %i.ke = add nuw nsw i64 %.sroa.02.0.peel.i.i, %.sroa.0100.1137
  %i.kf = add i64 %.sroa.5.1136, 1
  br label %_RNvMsg_NtCsEhZmuQNqkz_11ruff_linter10line_widthNtB5_16LineWidthBuilder8add_char.exit

_RNvMsg_NtCsEhZmuQNqkz_11ruff_linter10line_widthNtB5_16LineWidthBuilder8add_char.exit: ; preds = %bb.cx, %bb.cx, %bb.cy, %bb.dd
  %.sroa.0107.0 = phi i64 [ %i.ke, %bb.dd ], [ %i.jx, %bb.cy ], [ 0, %bb.cx ], [ 0, %bb.cx ]
  %.sroa.8108.0 = phi i64 [ %i.kf, %bb.dd ], [ %i.jy, %bb.cy ], [ 0, %bb.cx ], [ 0, %bb.cx ]
  %i.kg = icmp eq ptr %.sroa.0.1.ph, %i.gs
  br i1 %i.kg, label %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

bb.de:                                            ; preds = %bb.cg, %bb.cf, %bb.ca, %bb.bv
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.cu
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB2_12LogicalLines11from_tokens(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !5242 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 13 uses
  %i.c = alloca [56 x i8], align 8                ; 13 uses
  %i.d = alloca [56 x i8], align 8                ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !8 ; 5 uses
  %i.g = icmp ugt i64 %i.f, 4294967295
  br i1 %i.g, label %bb.g, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5243)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5243
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 4294967296) %i.f, i1 noundef zeroext false, i64 noundef 4, i64 noundef 12), !noalias !5243
  %i.j = load i64, ptr %i.a, align 8, !range !9, !noalias !5243, !noundef !8
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !12, !noalias !5243, !noundef !8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.n, align 8, !noalias !5243
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #55, !noalias !5243
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.n, align 8, !noalias !5243, !nonnull !8, !noundef !8
  %i.q = icmp samesign ule i64 %i.f, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5243
  store i64 0, ptr %i.b, align 8, !noalias !5243
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !5243
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !5243
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !5243
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !5243
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 0, ptr %i.s, align 8, !noalias !5243
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i8 0, ptr %i.t, align 4, !noalias !5243
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !5243
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !5243
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !5243
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  store i32 0, ptr %i.v, align 8, !alias.scope !5243
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 52 ; 11 uses
  store i8 0, ptr %i.w, align 4, !alias.scope !5243
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNvMsa_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_19LogicalLinesBuilder13with_capacity.exit unwind label %bb.e, !noalias !5243

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.f, !noalias !5243

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !5243
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.z, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.e ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cb, %bb.z ]
  resume { ptr, i32 } %common.resume.op

_RNvMsa_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_19LogicalLinesBuilder13with_capacity.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !5243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5243
  %.idx = mul nuw nsw i64 %i.f, 12
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %i.aa = icmp eq i64 %i.f, 0
  br i1 %i.aa, label %_RNvXs7_NtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB5_20TokenIterWithContextNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_19LogicalLinesBuilder13with_capacity.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @202, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #55
  unreachable

bb.h:                                             ; preds = %.lr.ph, %_RNvMsa_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_19LogicalLinesBuilder11finish_line.exit
  %.sroa.0.028 = phi ptr [ %i.i, %.lr.ph ], [ %i.ad, %_RNvMsa_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_19LogicalLinesBuilder11finish_line.exit ] ; 4 uses
  %.sroa.7.027 = phi i32 [ 0, %.lr.ph ], [ %.sroa.7.1.ph48, %_RNvMsa_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_19LogicalLinesBuilder11finish_line.exit ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.028, i64 12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.028, i64 10
  %i.af = load i8, ptr %i.ae, align 2, !range !21, !noalias !5244, !noundef !8 ; 8 uses
  switch i8 %i.af, label %bb.k [
    i8 13, label %.thread55
    i8 20, label %bb.i
    i8 21, label %bb.j
    i8 22, label %bb.i
    i8 23, label %bb.j
    i8 38, label %bb.i
    i8 39, label %bb.j
  ]

.thread55:                                        ; preds = %bb.h
  %i.ag = load <2 x i32>, ptr %.sroa.0.028, align 4
  br label %bb.r

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.ah = add i32 %.sroa.7.027, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.ai = call i32 @llvm.usub.sat.i32(i32 %.sroa.7.027, i32 1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.7.1.ph = phi i32 [ %i.ai, %bb.j ], [ %i.ah, %bb.i ], [ %.sroa.7.027, %bb.h ] ; 3 uses
  %i.aj = load <2 x i32>, ptr %.sroa.0.028, align 4 ; 3 uses
  switch i8 %i.af, label %bb.n [
    i8 12, label %.thread11.i
    i8 20, label %bb.m
    i8 21, label %bb.m
    i8 22, label %bb.m
    i8 23, label %bb.m
    i8 24, label %bb.m
    i8 25, label %bb.m
    i8 26, label %bb.m
    i8 27, label %bb.m
    i8 28, label %bb.m
    i8 29, label %bb.m
    i8 30, label %bb.m
    i8 31, label %bb.m
    i8 32, label %bb.m
    i8 33, label %bb.m
    i8 34, label %bb.m
    i8 35, label %bb.m
    i8 36, label %bb.m
    i8 37, label %bb.m
    i8 38, label %bb.m
    i8 39, label %bb.m
    i8 40, label %bb.m
    i8 41, label %bb.m
    i8 42, label %bb.m
    i8 43, label %bb.m
    i8 44, label %bb.m
    i8 45, label %bb.m
    i8 46, label %bb.m
    i8 47, label %bb.m
    i8 48, label %bb.m
    i8 49, label %bb.m
    i8 50, label %bb.m
    i8 51, label %bb.m
    i8 52, label %bb.m
    i8 53, label %bb.m
    i8 54, label %bb.m
    i8 55, label %bb.m
    i8 56, label %bb.m
    i8 57, label %bb.m
    i8 58, label %bb.m
    i8 59, label %bb.m
    i8 60, label %bb.m
    i8 61, label %bb.m
    i8 62, label %bb.m
    i8 63, label %bb.m
    i8 64, label %bb.m
    i8 65, label %bb.m
    i8 66, label %bb.m
    i8 67, label %bb.m
    i8 87, label %bb.m
    i8 88, label %bb.m
    i8 92, label %bb.m
    i8 93, label %bb.m
  ]

.thread11.i:                                      ; preds = %bb.k
  %i.ak = load i8, ptr %i.w, align 4, !alias.scope !5245, !noundef !8
  %i.al = or i8 %i.ak, 16
  store i8 %i.al, ptr %i.w, align 4, !alias.scope !5245
  br label %bb.r

bb.l:                                             ; preds = %4, %bb.m
  %3 = phi i8 [ %i.an, %bb.m ], [ %5, %4 ]
  %.off.i = add nsw i8 %i.af, -24
  %switch.i = icmp ult i8 %.off.i, 3
  br i1 %switch.i, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  %i.am = load i8, ptr %i.w, align 4, !alias.scope !5245, !noundef !8 ; 2 uses
  %i.an = or i8 %i.am, 1                          ; 2 uses
  store i8 %i.an, ptr %i.w, align 4, !alias.scope !5245
  switch i8 %i.af, label %bb.l [
    i8 20, label %4
    i8 21, label %4
    i8 22, label %4
    i8 23, label %4
    i8 38, label %4
    i8 39, label %4
  ]

4:                                                ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %5 = or i8 %i.am, 3                             ; 2 uses
  store i8 %5, ptr %i.w, align 4, !alias.scope !5245
  br label %bb.l

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.ao = add nsw i8 %i.af, -67
  %or.cond.i = icmp ult i8 %i.ao, 39
  br i1 %or.cond.i, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.ap = or i8 %3, 4
  br label %.thread8.i

bb.p:                                             ; preds = %bb.n
  %.off2.i = add nsw i8 %i.af, -12
  %switch3.i = icmp ult i8 %.off2.i, 5
  br i1 %switch3.i, label %bb.r, label %..thread8_crit_edge.i

..thread8_crit_edge.i:                            ; preds = %bb.p
  %.pre.i = load i8, ptr %i.w, align 4, !alias.scope !5245
  br label %.thread8.i

bb.q:                                             ; preds = %bb.n
  %i.aq = load i8, ptr %i.w, align 4, !alias.scope !5245, !noundef !8
  %i.ar = or i8 %i.aq, 8
  br label %.thread8.i

bb.r:                                             ; preds = %.thread55, %.thread8.i, %bb.p, %.thread11.i
  %.sroa.7.1.ph48 = phi i32 [ %.sroa.7.1.ph, %.thread8.i ], [ %.sroa.7.1.ph, %bb.p ], [ %.sroa.7.1.ph, %.thread11.i ], [ 0, %.thread55 ] ; 2 uses
  %i.as = phi <2 x i32> [ %i.aj, %.thread8.i ], [ %i.aj, %bb.p ], [ %i.aj, %.thread11.i ], [ %i.ag, %.thread55 ]
  %i.at = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !5246, !noundef !8 ; 3 uses
  %i.au = load i64, ptr %i.d, align 8, !range !14, !alias.scope !5246, !noundef !8
  %i.av = icmp eq i64 %i.at, %i.au
  br i1 %i.av, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenE8grow_oneBV_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread8.i:                                       ; preds = %bb.q, %..thread8_crit_edge.i, %bb.o
  %6 = phi i8 [ %.pre.i, %..thread8_crit_edge.i ], [ %i.ap, %bb.o ], [ %i.ar, %bb.q ]
  %i.aw = or i8 %6, 32
  store i8 %i.aw, ptr %i.w, align 4, !alias.scope !5245
  br label %bb.r

_RNvXs7_NtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB5_20TokenIterWithContextNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %_RNvMsa_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_19LogicalLinesBuilder11finish_line.exit, %_RNvMsa_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_19LogicalLinesBuilder13with_capacity.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !5247)
  call void @llvm.experimental.noalias.scope.decl(metadata !5248)
  call void @llvm.experimental.noalias.scope.decl(metadata !5249)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !5250, !noundef !8 ; 4 uses
  %i.az = icmp ult i64 %i.ay, 768614336404564651
  call void @llvm.assume(i1 %i.az)
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bc = load i32, ptr %i.bb, align 8, !alias.scope !5250, !noundef !8 ; 3 uses
  %i.bd = icmp ult i32 %i.bc, %i.ba
  br i1 %i.bd, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %_RNvXs7_NtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB5_20TokenIterWithContextNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit
  %i.be = zext i32 %i.bc to i64                   ; 4 uses
  %i.bf = and i64 %i.ay, 4294967295               ; 4 uses
  %i.bg = icmp samesign ult i64 %i.bf, %i.be
  br i1 %i.bg, label %bb.u, label %bb.v, !prof !45

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.be, i64 noundef %i.bf, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @292) #55
          to label %.noexc.i unwind label %bb.z, !noalias !5251

.noexc.i:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !5250, !nonnull !8, !noundef !8 ; 2 uses
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %i.bi, i64 %i.bf
  %i.bk = icmp samesign eq i64 %i.bf, %i.be
  br i1 %i.bk, label %.loopexit, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %i.bi, i64 %i.be
  br label %bb.x

bb.w:                                             ; preds = %bb.x
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bo, i64 12 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.bj
  br i1 %i.bn, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %.lr.ph66, %bb.w
  %i.bo = phi ptr [ %i.bl, %.lr.ph66 ], [ %i.bm, %bb.w ] ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %.val.i.i.i = load i8, ptr %i.bp, align 4, !range !21, !noalias !5252, !noundef !8
  %.off.i.i.i.i = add nsw i8 %.val.i.i.i, -13
  %switch.i.i.i.i = icmp ult i8 %.off.i.i.i.i, 2
  br i1 %switch.i.i.i.i, label %bb.w, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMsa_BS_NtBS_19LogicalLinesBuilder11finish_line0EB10_.exit.i.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMsa_BS_NtBS_19LogicalLinesBuilder11finish_line0EB10_.exit.i.i: ; preds = %bb.x
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.bs = load i8, ptr %i.br, align 4, !alias.scope !5250, !noundef !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !5253, !noundef !8 ; 3 uses
  %i.bv = load i64, ptr %i.bq, align 8, !range !14, !alias.scope !5253, !noundef !8
  %i.bw = icmp eq i64 %i.bu, %i.bv
  br i1 %i.bw, label %bb.y, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines4LineE8push_mutBO_.exit.i.i

bb.y:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMsa_BS_NtBS_19LogicalLinesBuilder11finish_line0EB10_.exit.i.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines4LineE8grow_oneBV_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines4LineE8push_mutBO_.exit.i.i unwind label %bb.z, !noalias !5247

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines4LineE8push_mutBO_.exit.i.i: ; preds = %bb.y, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMsa_BS_NtBS_19LogicalLinesBuilder11finish_line0EB10_.exit.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !5253, !nonnull !8, !noundef !8
  %i.bz = getelementptr inbounds nuw [12 x i8], ptr %i.by, i64 %i.bu ; 3 uses
  store i32 %i.bc, ptr %i.bz, align 4, !noalias !5247
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i32 %i.ba, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !5247
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i8 %i.bs, ptr %.sroa.54.0..sroa_idx.i.i, align 4, !noalias !5247
  %i.ca = add i64 %i.bu, 1
  store i64 %i.ca, ptr %i.bt, align 8, !alias.scope !5253
  br label %.loopexit

bb.z:                                             ; preds = %bb.y, %bb.u
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines19LogicalLinesBuilderEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #57
          to label %common.resume unwind label %bb.aa, !noalias !5247

bb.aa:                                            ; preds = %bb.z
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !5247
  unreachable

bb.ab:                                            ; preds = %bb.r, %bb.s
  %i.cd = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !5246, !nonnull !8, !noundef !8
  %i.ce = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %i.at ; 2 uses
  store <2 x i32> %i.as, ptr %i.ce, align 4
  %.sroa.5.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i8 %i.af, ptr %.sroa.5.0..sroa_idx.i6, align 4
  %i.cf = add i64 %i.at, 1                        ; 5 uses
  store i64 %i.cf, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !5246
  %.off = add nsw i8 %i.af, -13
  %switch = icmp ult i8 %.off, 2
  %.not4 = icmp eq i32 %.sroa.7.1.ph48, 0
  %or.cond = select i1 %switch, i1 %.not4, i1 false
  br i1 %or.cond, label %bb.ac, label %_RNvMsa_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_19LogicalLinesBuilder11finish_line.exit

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !5254)
  %i.cg = icmp ult i64 %i.cf, 768614336404564651
  call void @llvm.assume(i1 %i.cg)
  %i.ch = trunc i64 %i.cf to i32                  ; 3 uses
  %i.ci = load i32, ptr %i.v, align 8, !alias.scope !5254, !noundef !8 ; 3 uses
  %i.cj = icmp ult i32 %i.ci, %i.ch
  br i1 %i.cj, label %bb.ad, label %_RNvMsa_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_19LogicalLinesBuilder11finish_line.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ck = zext i32 %i.ci to i64                   ; 4 uses
  %i.cl = and i64 %i.cf, 4294967295               ; 4 uses
  %i.cm = icmp samesign ult i64 %i.cl, %i.ck
  br i1 %i.cm, label %bb.ae, label %bb.af, !prof !45

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.ck, i64 noundef %i.cl, i64 noundef %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @292) #55
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !5254, !nonnull !8, !noundef !8 ; 2 uses
  %i.co = getelementptr inbounds nuw [12 x i8], ptr %i.cn, i64 %i.cl
  %i.cp = icmp samesign eq i64 %i.cl, %i.ck
  br i1 %i.cp, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMsa_BS_NtBS_19LogicalLinesBuilder11finish_line0EB10_.exit.thread.i, label %.lr.ph65

.lr.ph65:                                         ; preds = %bb.af
  %i.cq = getelementptr inbounds nuw [12 x i8], ptr %i.cn, i64 %i.ck
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ah
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ct, i64 12 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.co
  br i1 %i.cs, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMsa_BS_NtBS_19LogicalLinesBuilder11finish_line0EB10_.exit.thread.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph65, %bb.ag
  %i.ct = phi ptr [ %i.cq, %.lr.ph65 ], [ %i.cr, %bb.ag ] ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 8
  %.val.i.i = load i8, ptr %i.cu, align 4, !range !21, !noalias !5255, !noundef !8
  %.off.i.i.i = add nsw i8 %.val.i.i, -13
  %switch.i.i.i = icmp ult i8 %.off.i.i.i, 2
  br i1 %switch.i.i.i, label %bb.ag, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMsa_BS_NtBS_19LogicalLinesBuilder11finish_line0EB10_.exit.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMsa_BS_NtBS_19LogicalLinesBuilder11finish_line0EB10_.exit.i: ; preds = %bb.ah
  %i.cv = load i8, ptr %i.w, align 4, !alias.scope !5254, !noundef !8
  %i.cw = load i64, ptr %i.ab, align 8, !alias.scope !5256, !noundef !8 ; 3 uses
  %i.cx = load i64, ptr %i.u, align 8, !range !14, !alias.scope !5256, !noundef !8
  %i.cy = icmp eq i64 %i.cw, %i.cx
  br i1 %i.cy, label %bb.ai, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines4LineE8push_mutBO_.exit.i

bb.ai:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMsa_BS_NtBS_19LogicalLinesBuilder11finish_line0EB10_.exit.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines4LineE8grow_oneBV_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines4LineE8push_mutBO_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines4LineE8push_mutBO_.exit.i: ; preds = %bb.ai, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMsa_BS_NtBS_19LogicalLinesBuilder11finish_line0EB10_.exit.i
  %i.cz = load ptr, ptr %i.ac, align 8, !alias.scope !5256, !nonnull !8, !noundef !8
  %i.da = getelementptr inbounds nuw [12 x i8], ptr %i.cz, i64 %i.cw ; 3 uses
  store i32 %i.ci, ptr %i.da, align 4
  %.sroa.4.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store i32 %i.ch, ptr %.sroa.4.0..sroa_idx.i7, align 4
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i8 %i.cv, ptr %.sroa.54.0..sroa_idx.i, align 4
  %i.db = add i64 %i.cw, 1
  store i64 %i.db, ptr %i.ab, align 8, !alias.scope !5256
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMsa_BS_NtBS_19LogicalLinesBuilder11finish_line0EB10_.exit.thread.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMsa_BS_NtBS_19LogicalLinesBuilder11finish_line0EB10_.exit.thread.i: ; preds = %bb.ag, %bb.af, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines4LineE8push_mutBO_.exit.i
  store i32 %i.ch, ptr %i.v, align 8, !alias.scope !5254
  store i8 0, ptr %i.w, align 4, !alias.scope !5254
  br label %_RNvMsa_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_19LogicalLinesBuilder11finish_line.exit

_RNvMsa_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_19LogicalLinesBuilder11finish_line.exit: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMsa_BS_NtBS_19LogicalLinesBuilder11finish_line0EB10_.exit.thread.i, %bb.ac, %bb.ab
  %i.dc = icmp eq ptr %i.ad, %i.z
  br i1 %i.dc, label %_RNvXs7_NtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB5_20TokenIterWithContextNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit, label %bb.h

.loopexit:                                        ; preds = %bb.w, %bb.v, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines4LineE8push_mutBO_.exit.i.i, %_RNvXs7_NtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB5_20TokenIterWithContextNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 24, i1 false), !alias.scope !5251
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 24, i1 false), !alias.scope !5251
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.df, align 8, !alias.scope !5247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.s, %bb.ai, %bb.ae
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint7helpers14num_statements:bb.a
bb.k:                                             ; preds = %bb.h, %bb.j
  %.sroa.0.4 = phi i64 [ %i.bm, %bb.h ], [ %i.cu, %bb.j ] ; 2 uses
  %i.cv = load ptr, ptr %i.bg, align 8, !nonnull !8, !noundef !8
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !8
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cy = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bg)
  %i.cz = load ptr, ptr %i.bg, align 8, !nonnull !8, !noundef !8
  %i.da = load i64, ptr %i.cz, align 8, !noundef !8
  %i.db = tail call noundef i64 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint7helpers14num_statements(ptr noundef nonnull align 8 %i.cy, i64 noundef %i.da)
  %i.dc = add i64 %.sroa.0.4, 2
  %i.dd = add i64 %i.dc, %i.db
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sroa.0.5 = phi i64 [ %.sroa.0.4, %bb.k ], [ %i.dd, %bb.l ]
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.023.048, i64 16
  %i.df = load i64, ptr %i.de, align 8, !noundef !8 ; 4 uses
  %i.dg = icmp ult i64 %i.df, 144115188075855872
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = icmp samesign ugt i64 %i.df, 1
  %i.di = zext i1 %i.dh to i64
  %spec.select = add i64 %.sroa.0.5, %i.di        ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.023.048, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %.idx52 = shl nuw nsw i64 %i.df, 6
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.idx52
  %i.dm = icmp eq i64 %i.df, 0
  br i1 %i.dm, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %.lr.ph
  %.sroa.0.739 = phi i64 [ %i.du, %.lr.ph ], [ %spec.select, %bb.m ]
  %.sroa.031.038 = phi ptr [ %i.dn, %.lr.ph ], [ %i.dk, %bb.m ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.031.038, i64 64 ; 2 uses
  %i.do = add i64 %.sroa.0.739, 1
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.031.038, i64 16 ; 2 uses
  %i.dq = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dp)
  %i.dr = load ptr, ptr %i.dp, align 8, !nonnull !8, !noundef !8
  %i.ds = load i64, ptr %i.dr, align 8, !noundef !8
  %i.dt = tail call noundef i64 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint7helpers14num_statements(ptr noundef nonnull align 8 %i.dq, i64 noundef %i.ds)
  %i.du = add i64 %i.do, %i.dt                    ; 2 uses
  %i.dv = icmp eq ptr %i.dn, %i.dl
  br i1 %i.dv, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint7helpers15type_param_name(ptr noundef nonnull align 8 %0) unnamed_addr #2 !guid !6937 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RNvMs23_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9Arguments19find_argument_value(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 4, i64 noundef 0) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 8, !range !19, !noundef !8
  %i.c = icmp eq i32 %i.b, 19
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %bb.d
  %.sroa.4.0 = phi i64 [ %i.i, %bb.d ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ %i.h, %bb.d ], [ null, %bb.a ], [ null, %bb.b ]
  %i.d = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %i.e

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = tail call { ptr, i64 } @_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue6to_str(ptr noundef nonnull align 8 %i.f) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint7helpers16in_dunder_method(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(2432) %3) unnamed_addr #2 !guid !6944 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 440
  %i.d = load i32, ptr %i.c, align 8, !range !41, !noundef !8
  %i.e = add i32 %i.d, -1
  %i.f = zext i32 %i.e to i64                     ; 3 uses
  %i.g = icmp ugt i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.j = getelementptr inbounds nuw [120 x i8], ptr %i.i, i64 %i.f ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i8, ptr %i.k, align 8, !range !40, !noundef !8
  %i.m = icmp eq i8 %i.l, 2
  br i1 %i.m, label %bb.d, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @329) #55
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !8, !align !17, !noundef !8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 23
  %i.r = load i8, ptr %i.q, align 1, !range !25, !alias.scope !6945, !noundef !8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !6945, !noundef !8
  %i.u = and i64 %i.t, 72057594037927935
  %i.v = icmp ult i8 %i.r, -48
  %i.w = zext i8 %i.r to i64
  %i.x = add nsw i64 %i.w, -192
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 16)
  %.sroa.0.0.i.i = select i1 %i.v, i64 %spec.store.select.i.i, i64 %i.u
  %i.y = icmp eq i64 %.sroa.0.0.i.i, %1
  br i1 %i.y, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread

_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit: ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.aa = icmp ugt i8 %i.r, -49
  %i.ab = load ptr, ptr %i.z, align 8, !alias.scope !6945
  %.sroa.01.0.i.i = select i1 %i.aa, ptr %i.ab, ptr %i.z ; 2 uses
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.01.0.i.i, ptr nonnull readonly %0, i64 %1)
  %i.ac = icmp eq i32 %bcmp.i, 0
  br i1 %i.ac, label %bb.e, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread

bb.e:                                             ; preds = %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6946)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.ae = load i32, ptr %i.ad, align 8, !alias.scope !6946, !noundef !8 ; 2 uses
  %.not1.i = icmp eq i32 %i.ae, 0
  br i1 %.not1.i, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.h
  %i.af = phi i32 [ %i.an, %bb.h ], [ %i.ae, %bb.e ]
  %i.ag = add i32 %i.af, -1
  %i.ah = zext i32 %i.ag to i64                   ; 3 uses
  %i.ai = icmp ugt i64 %i.b, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw [120 x i8], ptr %i.i, i64 %i.ah ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i8, ptr %i.ak, align 8, !range !40, !noalias !6946, !noundef !8
  switch i8 %i.al, label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit [
    i8 1, label %bb.h
    i8 5, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ah, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #55, !noalias !6946
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  %i.an = load i32, ptr %i.am, align 8, !noalias !6946, !noundef !8 ; 2 uses
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread, label %.lr.ph.i

_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit: ; preds = %bb.f
  %i.ao = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p)
  %i.ap = load ptr, ptr %i.p, align 8, !nonnull !8, !noundef !8
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 1272
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !8, !noundef !8
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 1280
  %i.au = load i64, ptr %i.at, align 8, !noundef !8
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 1296
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !8, !noundef !8
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 1304
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !8
  %i.az = tail call noundef i8 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze13function_type8classify(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i.i, i64 noundef %1, ptr noundef nonnull align 8 %i.ao, i64 noundef %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.as, i64 noundef %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aw, i64 noundef %i.ay)
  %i.ba = icmp eq i8 %i.az, 1
  br label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread

_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread: ; preds = %bb.h, %bb.e, %bb.d, %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ false, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit ], [ %i.ba, %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27first_non_type_parent_scope.exit ], [ false, %bb.e ], [ false, %bb.h ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint7helpers22is_known_dunder_method(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #23 !guid !6947 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint7helpers25is_dunder_operator_method(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  br i1 %i.a, label %bb.cl, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i64 %1, label %bb.cl [
    i64 7, label %bb.c
    i64 10, label %bb.d
    i64 9, label %bb.e
    i64 14, label %bb.h
    i64 19, label %bb.i
    i64 18, label %bb.j
    i64 8, label %bb.l
    i64 17, label %bb.r
    i64 11, label %bb.s
    i64 12, label %bb.t
    i64 16, label %bb.al
    i64 15, label %bb.ba
    i64 13, label %bb.bi
    i64 6, label %bb.cf
    i64 21, label %bb.ck
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr %0, align 1
  %i.c = xor i32 %i.b, 1650548575
  %i.d = getelementptr i8, ptr %0, i64 3
  %i.e = load i32, ptr %i.d, align 1
  %i.f = xor i32 %i.e, 1600090978
  %i.g = or i32 %i.c, %i.f
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.cl, label %bb.w

bb.d:                                             ; preds = %bb.b
  %i.k = load i64, ptr %0, align 1
  %i.l = xor i64 %i.k, 8243122710467665759
  %i.m = getelementptr i8, ptr %0, i64 8
  %i.n = load i16, ptr %i.m, align 1
  %i.o = zext i16 %i.n to i64
  %i.p = xor i64 %i.o, 24415
  %i.q = or i64 %i.l, %i.p
  %i.r = icmp ne i64 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.cl, label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.u = load i64, ptr %0, align 1
  %i.v = xor i64 %i.u, 6878238496719462239
  %i.w = getelementptr i8, ptr %0, i64 8
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i64
  %i.z = xor i64 %i.y, 95
  %i.aa = or i64 %i.v, %i.z
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.cl, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load i64, ptr %0, align 1
  %i.af = xor i64 %i.ae, 6877671131606769503
  %i.ag = getelementptr i8, ptr %0, i64 8
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i64
  %i.aj = xor i64 %i.ai, 95
  %i.ak = or i64 %i.af, %i.aj
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.cl, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = load i64, ptr %0, align 1
  %i.ap = xor i64 %i.ao, 6878254907940495199
  %i.aq = getelementptr i8, ptr %0, i64 8
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i64
  %i.at = xor i64 %i.as, 95
  %i.au = or i64 %i.ap, %i.at
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.cl, label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.ay = load i64, ptr %0, align 1
  %i.az = xor i64 %i.ay, 6877966900419190623
  %i.ba = getelementptr i8, ptr %0, i64 6
  %i.bb = load i64, ptr %i.ba, align 1
  %i.bc = xor i64 %i.bb, 6872339552563453811
  %i.bd = or i64 %i.az, %i.bc
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.cl, label %bb.an

bb.i:                                             ; preds = %bb.b
  %i.bh = load i128, ptr %0, align 1
  %i.bi = xor i128 %i.bh, 140142229427578633838669293787384209247
  %i.bj = getelementptr i8, ptr %0, i64 3
  %i.bk = load i128, ptr %i.bj, align 1
  %i.bl = xor i128 %i.bk, 126772288913769643206460362462883640436
  %i.bm = or i128 %i.bi, %i.bl
  %i.bn = icmp ne i128 %i.bm, 0
  %i.bo = zext i1 %i.bn to i32
  %i.bp = icmp eq i32 %i.bo, 0
  br label %bb.cl

bb.j:                                             ; preds = %bb.b
  %i.bq = load i128, ptr %0, align 1
  %i.br = xor i128 %i.bq, 154737878094733581702840611997787184991
  %i.bs = getelementptr i8, ptr %0, i64 16
  %i.bt = load i16, ptr %i.bs, align 1
  %i.bu = zext i16 %i.bt to i128
  %i.bv = xor i128 %i.bu, 24415
  %i.bw = or i128 %i.br, %i.bv
  %i.bx = icmp ne i128 %i.bw, 0
  %i.by = zext i1 %i.bx to i32
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.cl, label %bb.bm

bb.k:                                             ; preds = %bb.g
  %i.ca = load i64, ptr %0, align 1
  %i.cb = xor i64 %i.ca, 6878238398237204319
  %i.cc = getelementptr i8, ptr %0, i64 8
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = zext i8 %i.cd to i64
  %i.cf = xor i64 %i.ce, 95
  %i.cg = or i64 %i.cb, %i.cf
  %i.ch = icmp ne i64 %i.cg, 0
  %i.ci = zext i1 %i.ch to i32
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.cl, label %bb.n

bb.l:                                             ; preds = %bb.b
  %i.ck = load i64, ptr %0, align 1
  %i.cl = icmp ne i64 %i.ck, 6872330782256553823
  %i.cm = zext i1 %i.cl to i32
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.cl, label %bb.o

bb.m:                                             ; preds = %bb.d
  %i.co = load i64, ptr %0, align 1
  %i.cp = xor i64 %i.co, 8243107283213639519
  %i.cq = getelementptr i8, ptr %0, i64 8
  %i.cr = load i16, ptr %i.cq, align 1
  %i.cs = zext i16 %i.cr to i64
  %i.ct = xor i64 %i.cs, 24415
  %i.cu = or i64 %i.cp, %i.ct
  %i.cv = icmp ne i64 %i.cu, 0
  %i.cw = zext i1 %i.cv to i32
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.cl, label %bb.y

bb.n:                                             ; preds = %bb.k
  %i.cy = load i64, ptr %0, align 1
  %i.cz = xor i64 %i.cy, 6877952606851981151
  %i.da = getelementptr i8, ptr %0, i64 8
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = zext i8 %i.db to i64
  %i.dd = xor i64 %i.dc, 95
  %i.de = or i64 %i.cz, %i.dd
  %i.df = icmp ne i64 %i.de, 0
  %i.dg = zext i1 %i.df to i32
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.cl, label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.di = load i64, ptr %0, align 1
  %i.dj = icmp ne i64 %i.di, 6872330769136836447
  %i.dk = zext i1 %i.dj to i32
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.cl, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dm = load i64, ptr %0, align 1
  %i.dn = icmp ne i64 %i.dm, 6872330756319043423
  %i.do = zext i1 %i.dn to i32
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.cl, label %bb.u

bb.q:                                             ; preds = %bb.n
  %i.dq = load i64, ptr %0, align 1
  %i.dr = xor i64 %i.dq, 6877967918192353119
  %i.ds = getelementptr i8, ptr %0, i64 8
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = zext i8 %i.dt to i64
  %i.dv = xor i64 %i.du, 95
  %i.dw = or i64 %i.dr, %i.dv
  %i.dx = icmp ne i64 %i.dw, 0
  %i.dy = zext i1 %i.dx to i32
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.cl, label %bb.ad

bb.r:                                             ; preds = %bb.b
  %i.ea = load i128, ptr %0, align 1
  %i.eb = xor i128 %i.ea, 126844677703620764902971380894806531935
  %i.ec = getelementptr i8, ptr %0, i64 16
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = zext i8 %i.ed to i128
  %i.ef = xor i128 %i.ee, 95
  %i.eg = or i128 %i.eb, %i.ef
  %i.eh = icmp ne i128 %i.eg, 0
  %i.ei = zext i1 %i.eh to i32
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.cl, label %bb.ao

bb.s:                                             ; preds = %bb.b
  %i.ek = load i64, ptr %0, align 1
  %i.el = xor i64 %i.ek, 7308339910638002015
  %i.em = getelementptr i8, ptr %0, i64 3
  %i.en = load i64, ptr %i.em, align 1
  %i.eo = xor i64 %i.en, 6872343933397003631
  %i.ep = or i64 %i.el, %i.eo
  %i.eq = icmp ne i64 %i.ep, 0
  %i.er = zext i1 %i.eq to i32
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.cl, label %bb.x

bb.t:                                             ; preds = %bb.b
  %i.et = load i64, ptr %0, align 1
  %i.eu = xor i64 %i.et, 7593478464387374943
  %i.ev = getelementptr i8, ptr %0, i64 8
  %i.ew = load i32, ptr %i.ev, align 1
  %i.ex = zext i32 %i.ew to i64
  %i.ey = xor i64 %i.ex, 1600090990
  %i.ez = or i64 %i.eu, %i.ey
  %i.fa = icmp ne i64 %i.ez, 0
  %i.fb = zext i1 %i.fa to i32
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.cl, label %bb.v

bb.u:                                             ; preds = %bb.p
  %i.fd = load i64, ptr %0, align 1
  %i.fe = icmp ne i64 %i.fd, 6872345080202747743
  %i.ff = zext i1 %i.fe to i32
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.cl, label %bb.aa

bb.v:                                             ; preds = %bb.t
  %i.fh = load i64, ptr %0, align 1
  %i.fi = xor i64 %i.fh, 8026382541699440479
  %i.fj = getelementptr i8, ptr %0, i64 8
  %i.fk = load i32, ptr %i.fj, align 1
  %i.fl = zext i32 %i.fk to i64
  %i.fm = xor i64 %i.fl, 1600092528
  %i.fn = or i64 %i.fi, %i.fm
  %i.fo = icmp ne i64 %i.fn, 0
  %i.fp = zext i1 %i.fo to i32
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.cl, label %bb.ap

bb.w:                                             ; preds = %bb.c
  %i.fr = load i32, ptr %0, align 1
  %i.fs = xor i32 %i.fr, 1701076831
  %i.ft = getelementptr i8, ptr %0, i64 3
  %i.fu = load i32, ptr %i.ft, align 1
  %i.fv = xor i32 %i.fu, 1600089189
  %i.fw = or i32 %i.fs, %i.fv
  %i.fx = icmp ne i32 %i.fw, 0
  %i.fy = zext i1 %i.fx to i32
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.cl, label %bb.ab

bb.x:                                             ; preds = %bb.s
  %i.ga = load i64, ptr %0, align 1
  %i.gb = xor i64 %i.ga, 8391439123883515743
  %i.gc = getelementptr i8, ptr %0, i64 3
  %i.gd = load i64, ptr %i.gc, align 1
  %i.ge = xor i64 %i.gd, 6872337400884980837
  %i.gf = or i64 %i.gb, %i.ge
  %i.gg = icmp ne i64 %i.gf, 0
  %i.gh = zext i1 %i.gg to i32
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.cl, label %bb.z

bb.y:                                             ; preds = %bb.m
  %i.gj = load i64, ptr %0, align 1
  %i.gk = xor i64 %i.gj, 7310579611361107807
  %i.gl = getelementptr i8, ptr %0, i64 8
  %i.gm = load i16, ptr %i.gl, align 1
  %i.gn = zext i16 %i.gm to i64
  %i.go = xor i64 %i.gn, 24415
  %i.gp = or i64 %i.gk, %i.go
  %i.gq = icmp ne i64 %i.gp, 0
  %i.gr = zext i1 %i.gq to i32
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %bb.cl, label %bb.ah

bb.z:                                             ; preds = %bb.x
  %i.gt = load i64, ptr %0, align 1
  %i.gu = xor i64 %i.gt, 7310584009407618911
  %i.gv = getelementptr i8, ptr %0, i64 3
  %i.gw = load i64, ptr %i.gv, align 1
  %i.gx = xor i64 %i.gw, 6872331838902856805
  %i.gy = or i64 %i.gu, %i.gx
  %i.gz = icmp ne i64 %i.gy, 0
  %i.ha = zext i1 %i.gz to i32
  %i.hb = icmp eq i32 %i.ha, 0
  br i1 %i.hb, label %bb.cl, label %bb.ak

bb.aa:                                            ; preds = %bb.u
  %i.hc = load i64, ptr %0, align 1
  %i.hd = icmp ne i64 %i.hc, 6872339526709436255
  %i.he = zext i1 %i.hd to i32
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %bb.cl, label %bb.ae
end_hunk_1
begin_hunk_2_@_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint7helpers22is_known_dunder_method:bb.a
  %i.kw = load i64, ptr %0, align 1
  %i.kx = xor i64 %i.kw, 7310584043767553887
  %i.ky = getelementptr i8, ptr %0, i64 3
  %i.kz = load i64, ptr %i.ky, align 1
  %i.la = xor i64 %i.kz, 6872331838902858853
  %i.lb = or i64 %i.kx, %i.la
  %i.lc = icmp ne i64 %i.lb, 0
  %i.ld = zext i1 %i.lc to i32
  %i.le = icmp eq i32 %i.ld, 0
  br i1 %i.le, label %bb.cl, label %bb.bb

bb.an:                                            ; preds = %bb.h
  %i.lf = load i64, ptr %0, align 1
  %i.lg = xor i64 %i.lf, 8603404109357735775
  %i.lh = getelementptr i8, ptr %0, i64 6
  %i.li = load i64, ptr %i.lh, align 1
  %i.lj = xor i64 %i.li, 6872338444528482149
  %i.lk = or i64 %i.lg, %i.lj
  %i.ll = icmp ne i64 %i.lk, 0
  %i.lm = zext i1 %i.ll to i32
  %i.ln = icmp eq i32 %i.lm, 0
  br i1 %i.ln, label %bb.cl, label %bb.bz

bb.ao:                                            ; preds = %bb.r
  %i.lo = load i128, ptr %0, align 1
  %i.lp = xor i128 %i.lo, 126901791308352430551701836452277477215
  %i.lq = getelementptr i8, ptr %0, i64 16
  %i.lr = load i8, ptr %i.lq, align 1
  %i.ls = zext i8 %i.lr to i128
  %i.lt = xor i128 %i.ls, 95
  %i.lu = or i128 %i.lp, %i.lt
  %i.lv = icmp ne i128 %i.lu, 0
  %i.lw = zext i1 %i.lv to i32
  %i.lx = icmp eq i32 %i.lw, 0
  br i1 %i.lx, label %bb.cl, label %bb.au

bb.ap:                                            ; preds = %bb.v
  %i.ly = load i64, ptr %0, align 1
  %i.lz = xor i64 %i.ly, 7022364662732119903
  %i.ma = getelementptr i8, ptr %0, i64 8
  %i.mb = load i32, ptr %i.ma, align 1
  %i.mc = zext i32 %i.mb to i64
  %i.md = xor i64 %i.mc, 1600087412
  %i.me = or i64 %i.lz, %i.md
  %i.mf = icmp ne i64 %i.me, 0
  %i.mg = zext i1 %i.mf to i32
  %i.mh = icmp eq i32 %i.mg, 0
  br i1 %i.mh, label %bb.cl, label %bb.bp

bb.aq:                                            ; preds = %bb.ae
  %i.mi = load i64, ptr %0, align 1
  %i.mj = icmp ne i64 %i.mi, 6872326401155424095
  %i.mk = zext i1 %i.mj to i32
  %i.ml = icmp eq i32 %i.mk, 0
  br i1 %i.ml, label %bb.cl, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.mm = load i64, ptr %0, align 1
  %i.mn = icmp ne i64 %i.mm, 6872330773750898527
  %i.mo = zext i1 %i.mn to i32
  %i.mp = icmp eq i32 %i.mo, 0
  br i1 %i.mp, label %bb.cl, label %bb.at

bb.as:                                            ; preds = %bb.ag
  %i.mq = load i64, ptr %0, align 1
  %i.mr = xor i64 %i.mq, 6879359912831967071
  %i.ms = getelementptr i8, ptr %0, i64 8
  %i.mt = load i8, ptr %i.ms, align 1
  %i.mu = zext i8 %i.mt to i64
  %i.mv = xor i64 %i.mu, 95
  %i.mw = or i64 %i.mr, %i.mv
  %i.mx = icmp ne i64 %i.mw, 0
  %i.my = zext i1 %i.mx to i32
  %i.mz = icmp eq i32 %i.my, 0
  br i1 %i.mz, label %bb.cl, label %bb.bq

bb.at:                                            ; preds = %bb.ar
  %i.na = load i64, ptr %0, align 1
  %i.nb = icmp ne i64 %i.na, 6872339552563453791
  %i.nc = zext i1 %i.nb to i32
  %i.nd = icmp eq i32 %i.nc, 0
  br i1 %i.nd, label %bb.cl, label %bb.ay

bb.au:                                            ; preds = %bb.ao
  %i.ne = load i128, ptr %0, align 1
  %i.nf = xor i128 %i.ne, 126876113934079226604227163305296879455
  %i.ng = getelementptr i8, ptr %0, i64 16
  %i.nh = load i8, ptr %i.ng, align 1
  %i.ni = zext i8 %i.nh to i128
  %i.nj = xor i128 %i.ni, 95
  %i.nk = or i128 %i.nf, %i.nj
  %i.nl = icmp ne i128 %i.nk, 0
  %i.nm = zext i1 %i.nl to i32
  %i.nn = icmp eq i32 %i.nm, 0
  br i1 %i.nn, label %bb.cl, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.no = load i128, ptr %0, align 1
  %i.np = xor i128 %i.no, 126834251356332013408942436582796386143
  %i.nq = getelementptr i8, ptr %0, i64 16
  %i.nr = load i8, ptr %i.nq, align 1
  %i.ns = zext i8 %i.nr to i128
  %i.nt = xor i128 %i.ns, 95
  %i.nu = or i128 %i.np, %i.nt
  %i.nv = icmp ne i128 %i.nu, 0
  %i.nw = zext i1 %i.nv to i32
  %i.nx = icmp eq i32 %i.nw, 0
  br i1 %i.nx, label %bb.cl, label %bb.by

bb.aw:                                            ; preds = %bb.aj
  %i.ny = load i32, ptr %0, align 1
  %i.nz = xor i32 %i.ny, 1852399455
  %i.oa = getelementptr i8, ptr %0, i64 3
  %i.ob = load i32, ptr %i.oa, align 1
  %i.oc = xor i32 %i.ob, 1600091246
  %i.od = or i32 %i.nz, %i.oc
  %i.oe = icmp ne i32 %i.od, 0
  %i.of = zext i1 %i.oe to i32
  %i.og = icmp eq i32 %i.of, 0
  br i1 %i.og, label %bb.cl, label %bb.az

bb.ax:                                            ; preds = %bb.ai
  %i.oh = load i64, ptr %0, align 1
  %i.oi = xor i64 %i.oh, 8390880615077601119
  %i.oj = getelementptr i8, ptr %0, i64 8
  %i.ok = load i16, ptr %i.oj, align 1
  %i.ol = zext i16 %i.ok to i64
  %i.om = xor i64 %i.ol, 24415
  %i.on = or i64 %i.oi, %i.om
  %i.oo = icmp ne i64 %i.on, 0
  %i.op = zext i1 %i.oo to i32
  %i.oq = icmp eq i32 %i.op, 0
  br i1 %i.oq, label %bb.cl, label %bb.bc

bb.ay:                                            ; preds = %bb.at
  %i.or = load i64, ptr %0, align 1
  %i.os = icmp ne i64 %i.or, 6872337336460992351
  %i.ot = zext i1 %i.os to i32
  %i.ou = icmp eq i32 %i.ot, 0
  br i1 %i.ou, label %bb.cl, label %bb.bg

bb.az:                                            ; preds = %bb.aw
  %i.ov = load i32, ptr %0, align 1
  %i.ow = xor i32 %i.ov, 1701601119
  %i.ox = getelementptr i8, ptr %0, i64 3
  %i.oy = load i32, ptr %i.ox, align 1
  %i.oz = xor i32 %i.oy, 1600089701
  %i.pa = or i32 %i.ow, %i.oz
  %i.pb = icmp ne i32 %i.pa, 0
  %i.pc = zext i1 %i.pb to i32
  %i.pd = icmp eq i32 %i.pc, 0
  br i1 %i.pd, label %bb.cl, label %bb.be

bb.ba:                                            ; preds = %bb.b
  %i.pe = load i64, ptr %0, align 1
  %i.pf = xor i64 %i.pe, 7526754601088606047
  %i.pg = getelementptr i8, ptr %0, i64 7
  %i.ph = load i64, ptr %i.pg, align 1
  %i.pi = xor i64 %i.ph, 6872339573954338664
  %i.pj = or i64 %i.pf, %i.pi
  %i.pk = icmp ne i64 %i.pj, 0
  %i.pl = zext i1 %i.pk to i32
  %i.pm = icmp eq i32 %i.pl, 0
  br i1 %i.pm, label %bb.cl, label %bb.bd

bb.bb:                                            ; preds = %bb.am
  %i.pn = load i64, ptr %0, align 1
  %i.po = xor i64 %i.pn, 7956017156253900639
  %i.pp = getelementptr i8, ptr %0, i64 3
  %i.pq = load i64, ptr %i.pp, align 1
  %i.pr = xor i64 %i.pq, 6872325280303903593
  %i.ps = or i64 %i.po, %i.pr
  %i.pt = icmp ne i64 %i.ps, 0
  %i.pu = zext i1 %i.pt to i32
  %i.pv = icmp eq i32 %i.pu, 0
  br i1 %i.pv, label %bb.cl, label %bb.bj

bb.bc:                                            ; preds = %bb.ax
  %i.pw = load i64, ptr %0, align 1
  %i.px = xor i64 %i.pw, 7308345369542090591
  %i.py = getelementptr i8, ptr %0, i64 8
  %i.pz = load i16, ptr %i.py, align 1
  %i.qa = zext i16 %i.pz to i64
  %i.qb = xor i64 %i.qa, 24415
  %i.qc = or i64 %i.px, %i.qb
  %i.qd = icmp ne i64 %i.qc, 0
  %i.qe = zext i1 %i.qd to i32
  %i.qf = icmp eq i32 %i.qe, 0
  br i1 %i.qf, label %bb.cl, label %bb.bk

bb.bd:                                            ; preds = %bb.ba
  %i.qg = load i64, ptr %0, align 1
  %i.qh = xor i64 %i.qg, 7954869249085628255
  %i.qi = getelementptr i8, ptr %0, i64 7
  %i.qj = load i64, ptr %i.qi, align 1
  %i.qk = xor i64 %i.qj, 6872338435788665966
  %i.ql = or i64 %i.qh, %i.qk
  %i.qm = icmp ne i64 %i.ql, 0
  %i.qn = zext i1 %i.qm to i32
  %i.qo = icmp eq i32 %i.qn, 0
  br label %bb.cl

bb.be:                                            ; preds = %bb.az
  %i.qp = load i32, ptr %0, align 1
  %i.qq = xor i32 %i.qp, 1701732191
  %i.qr = getelementptr i8, ptr %0, i64 3
  %i.qs = load i32, ptr %i.qr, align 1
  %i.qt = xor i32 %i.qs, 1600087909
  %i.qu = or i32 %i.qq, %i.qt
  %i.qv = icmp ne i32 %i.qu, 0
  %i.qw = zext i1 %i.qv to i32
  %i.qx = icmp eq i32 %i.qw, 0
  br i1 %i.qx, label %bb.cl, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.qy = load i32, ptr %0, align 1
  %i.qz = xor i32 %i.qy, 1701732191
  %i.ra = getelementptr i8, ptr %0, i64 3
  %i.rb = load i32, ptr %i.ra, align 1
  %i.rc = xor i32 %i.rb, 1600092005
  %i.rd = or i32 %i.qz, %i.rc
  %i.re = icmp ne i32 %i.rd, 0
  %i.rf = zext i1 %i.re to i32
  %i.rg = icmp eq i32 %i.rf, 0
  br i1 %i.rg, label %bb.cl, label %bb.bh

bb.bg:                                            ; preds = %bb.ay
  %i.rh = load i64, ptr %0, align 1
  %i.ri = icmp ne i64 %i.rh, 6872339616837295967
  %i.rj = zext i1 %i.ri to i32
  %i.rk = icmp eq i32 %i.rj, 0
  br i1 %i.rk, label %bb.cl, label %bb.bo

bb.bh:                                            ; preds = %bb.bf
  %i.rl = load i32, ptr %0, align 1
  %i.rm = xor i32 %i.rl, 1869635423
  %i.rn = getelementptr i8, ptr %0, i64 3
  %i.ro = load i32, ptr %i.rn, align 1
  %i.rp = xor i32 %i.ro, 1600090991
  %i.rq = or i32 %i.rm, %i.rp
  %i.rr = icmp ne i32 %i.rq, 0
  %i.rs = zext i1 %i.rr to i32
  %i.rt = icmp eq i32 %i.rs, 0
  br i1 %i.rt, label %bb.cl, label %bb.br

bb.bi:                                            ; preds = %bb.b
  %i.ru = load i64, ptr %0, align 1
  %i.rv = xor i64 %i.ru, 7592915535909642079
  %i.rw = getelementptr i8, ptr %0, i64 5
  %i.rx = load i64, ptr %i.rw, align 1
  %i.ry = xor i64 %i.rx, 6872339552563453812
  %i.rz = or i64 %i.rv, %i.ry
  %i.sa = icmp ne i64 %i.rz, 0
  %i.sb = zext i1 %i.sa to i32
  %i.sc = icmp eq i32 %i.sb, 0
  br i1 %i.sc, label %bb.cl, label %bb.bl

bb.bj:                                            ; preds = %bb.bb
  %i.sd = load i64, ptr %0, align 1
  %i.se = xor i64 %i.sd, 8241992374078693215
  %i.sf = getelementptr i8, ptr %0, i64 3
  %i.sg = load i64, ptr %i.sf, align 1
  %i.sh = xor i64 %i.sg, 6872323098326099314
  %i.si = or i64 %i.se, %i.sh
  %i.sj = icmp ne i64 %i.si, 0
  %i.sk = zext i1 %i.sj to i32
  %i.sl = icmp eq i32 %i.sk, 0
  br i1 %i.sl, label %bb.cl, label %bb.bn

bb.bk:                                            ; preds = %bb.bc
  %i.sm = load i64, ptr %0, align 1
  %i.sn = xor i64 %i.sm, 7305812094584250207
  %i.so = getelementptr i8, ptr %0, i64 8
  %i.sp = load i16, ptr %i.so, align 1
  %i.sq = zext i16 %i.sp to i64
  %i.sr = xor i64 %i.sq, 24415
  %i.ss = or i64 %i.sn, %i.sr
  %i.st = icmp ne i64 %i.ss, 0
  %i.su = zext i1 %i.st to i32
  %i.sv = icmp eq i32 %i.su, 0
  br i1 %i.sv, label %bb.cl, label %bb.bw

bb.bl:                                            ; preds = %bb.bi
  %i.sw = load i64, ptr %0, align 1
  %i.sx = xor i64 %i.sw, 7305812094584250207
  %i.sy = getelementptr i8, ptr %0, i64 5
  %i.sz = load i64, ptr %i.sy, align 1
  %i.ta = xor i64 %i.sz, 6872343933178176373
  %i.tb = or i64 %i.sx, %i.ta
  %i.tc = icmp ne i64 %i.tb, 0
  %i.td = zext i1 %i.tc to i32
  %i.te = icmp eq i32 %i.td, 0
  br label %bb.cl

bb.bm:                                            ; preds = %bb.j
  %i.tf = load i128, ptr %0, align 1
  %i.tg = xor i128 %i.tf, 152058490425573247402531930826540736351
  %i.th = getelementptr i8, ptr %0, i64 16
  %i.ti = load i16, ptr %i.th, align 1
  %i.tj = zext i16 %i.ti to i128
  %i.tk = xor i128 %i.tj, 24415
  %i.tl = or i128 %i.tg, %i.tk
  %i.tm = icmp ne i128 %i.tl, 0
  %i.tn = zext i1 %i.tm to i32
  %i.to = icmp eq i32 %i.tn, 0
  br label %bb.cl

bb.bn:                                            ; preds = %bb.bj
  %i.tp = load i64, ptr %0, align 1
  %i.tq = xor i64 %i.tp, 7161124112489930591
  %i.tr = getelementptr i8, ptr %0, i64 3
  %i.ts = load i64, ptr %i.tr, align 1
  %i.tt = xor i64 %i.ts, 6872323033901330533
  %i.tu = or i64 %i.tq, %i.tt
  %i.tv = icmp ne i64 %i.tu, 0
  %i.tw = zext i1 %i.tv to i32
  %i.tx = icmp eq i32 %i.tw, 0
  br i1 %i.tx, label %bb.cl, label %bb.bt

bb.bo:                                            ; preds = %bb.bg
  %i.ty = load i64, ptr %0, align 1
  %i.tz = icmp ne i64 %i.ty, 6872337383454564191
  %i.ua = zext i1 %i.tz to i32
  %i.ub = icmp eq i32 %i.ua, 0
  br i1 %i.ub, label %bb.cl, label %bb.ci

bb.bp:                                            ; preds = %bb.ap
  %i.uc = load i64, ptr %0, align 1
  %i.ud = xor i64 %i.uc, 8318823020889268063
  %i.ue = getelementptr i8, ptr %0, i64 8
  %i.uf = load i32, ptr %i.ue, align 1
  %i.ug = zext i32 %i.uf to i64
  %i.uh = xor i64 %i.ug, 1600087141
  %i.ui = or i64 %i.ud, %i.uh
  %i.uj = icmp ne i64 %i.ui, 0
  %i.uk = zext i1 %i.uj to i32
  %i.ul = icmp eq i32 %i.uk, 0
  br i1 %i.ul, label %bb.cl, label %bb.bs

bb.bq:                                            ; preds = %bb.as
  %i.um = load i64, ptr %0, align 1
  %i.un = xor i64 %i.um, 6873740381934215007
  %i.uo = getelementptr i8, ptr %0, i64 8
  %i.up = load i8, ptr %i.uo, align 1
  %i.uq = zext i8 %i.up to i64
  %i.ur = xor i64 %i.uq, 95
  %i.us = or i64 %i.un, %i.ur
  %i.ut = icmp ne i64 %i.us, 0
  %i.uu = zext i1 %i.ut to i32
  %i.uv = icmp eq i32 %i.uu, 0
  br i1 %i.uv, label %bb.cl, label %bb.cb

bb.br:                                            ; preds = %bb.bh
  %i.uw = load i32, ptr %0, align 1
  %i.ux = xor i32 %i.uw, 1702059871
  %i.uy = getelementptr i8, ptr %0, i64 3
  %i.uz = load i32, ptr %i.uy, align 1
  %i.va = xor i32 %i.uz, 1600091237
  %i.vb = or i32 %i.ux, %i.va
  %i.vc = icmp ne i32 %i.vb, 0
  %i.vd = zext i1 %i.vc to i32
  %i.ve = icmp eq i32 %i.vd, 0
  br i1 %i.ve, label %bb.cl, label %bb.bx

bb.bs:                                            ; preds = %bb.bp
  %i.vf = load i64, ptr %0, align 1
  %i.vg = xor i64 %i.vf, 7020653822640086879
  %i.vh = getelementptr i8, ptr %0, i64 8
  %i.vi = load i32, ptr %i.vh, align 1
  %i.vj = zext i32 %i.vi to i64
  %i.vk = xor i64 %i.vj, 1600087405
  %i.vl = or i64 %i.vg, %i.vk
  %i.vm = icmp ne i64 %i.vl, 0
  %i.vn = zext i1 %i.vm to i32
  %i.vo = icmp eq i32 %i.vn, 0
  br i1 %i.vo, label %bb.cl, label %bb.bv

bb.bt:                                            ; preds = %bb.bn
  %i.vp = load i64, ptr %0, align 1
  %i.vq = xor i64 %i.vp, 8391439158244237151
  %i.vr = getelementptr i8, ptr %0, i64 3
  %i.vs = load i64, ptr %i.vr, align 1
  %i.vt = xor i64 %i.vs, 6872337400884982885
  %i.vu = or i64 %i.vq, %i.vt
  %i.vv = icmp ne i64 %i.vu, 0
  %i.vw = zext i1 %i.vv to i32
  %i.vx = icmp eq i32 %i.vw, 0
  br i1 %i.vx, label %bb.cl, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.vy = load i64, ptr %0, align 1
  %i.vz = xor i64 %i.vy, 7310584043768340319
  %i.wa = getelementptr i8, ptr %0, i64 3
  %i.wb = load i64, ptr %i.wa, align 1
  %i.wc = xor i64 %i.wb, 6872331838902858853
  %i.wd = or i64 %i.vz, %i.wc
  %i.we = icmp ne i64 %i.wd, 0
  %i.wf = zext i1 %i.we to i32
  %i.wg = icmp eq i32 %i.wf, 0
  br i1 %i.wg, label %bb.cl, label %bb.cc

bb.bv:                                            ; preds = %bb.bs
  %i.wh = load i64, ptr %0, align 1
  %i.wi = xor i64 %i.wh, 7022364662732906335
  %i.wj = getelementptr i8, ptr %0, i64 8
  %i.wk = load i32, ptr %i.wj, align 1
  %i.wl = zext i32 %i.wk to i64
  %i.wm = xor i64 %i.wl, 1600087412
  %i.wn = or i64 %i.wi, %i.wm
  %i.wo = icmp ne i64 %i.wn, 0
  %i.wp = zext i1 %i.wo to i32
  %i.wq = icmp eq i32 %i.wp, 0
  br label %bb.cl

bb.bw:                                            ; preds = %bb.bk
  %i.wr = load i64, ptr %0, align 1
  %i.ws = xor i64 %i.wr, 7381229890713116511
  %i.wt = getelementptr i8, ptr %0, i64 8
  %i.wu = load i16, ptr %i.wt, align 1
  %i.wv = zext i16 %i.wu to i64
  %i.ww = xor i64 %i.wv, 24415
  %i.wx = or i64 %i.ws, %i.ww
  %i.wy = icmp ne i64 %i.wx, 0
  %i.wz = zext i1 %i.wy to i32
  %i.xa = icmp eq i32 %i.wz, 0
  br label %bb.cl

bb.bx:                                            ; preds = %bb.br
  %i.xb = load i32, ptr %0, align 1
  %i.xc = xor i32 %i.xb, 1953718111
  %i.xd = getelementptr i8, ptr %0, i64 3
  %i.xe = load i32, ptr %i.xd, align 1
  %i.xf = xor i32 %i.xe, 1600090740
  %i.xg = or i32 %i.xc, %i.xf
  %i.xh = icmp ne i32 %i.xg, 0
  %i.xi = zext i1 %i.xh to i32
  %i.xj = icmp eq i32 %i.xi, 0
  br i1 %i.xj, label %bb.cl, label %bb.cg

bb.by:                                            ; preds = %bb.av
  %i.xk = load i128, ptr %0, align 1
  %i.xl = xor i128 %i.xk, 126834251356332079816287430674838937439
  %i.xm = getelementptr i8, ptr %0, i64 16
  %i.xn = load i8, ptr %i.xm, align 1
  %i.xo = zext i8 %i.xn to i128
  %i.xp = xor i128 %i.xo, 95
  %i.xq = or i128 %i.xl, %i.xp
  %i.xr = icmp ne i128 %i.xq, 0
  %i.xs = zext i1 %i.xr to i32
  %i.xt = icmp eq i32 %i.xs, 0
  br i1 %i.xt, label %bb.cl, label %bb.ce

bb.bz:                                            ; preds = %bb.an
  %i.xu = load i64, ptr %0, align 1
  %i.xv = xor i64 %i.xu, 7020095193692200799
  %i.xw = getelementptr i8, ptr %0, i64 6
  %i.xx = load i64, ptr %i.xw, align 1
  %i.xy = xor i64 %i.xx, 6872338435956498796
  %i.xz = or i64 %i.xv, %i.xy
  %i.ya = icmp ne i64 %i.xz, 0
  %i.yb = zext i1 %i.ya to i32
  %i.yc = icmp eq i32 %i.yb, 0
  br label %bb.cl

bb.ca:                                            ; preds = %bb.al
  %i.yd = load i128, ptr %0, align 1
  %i.ye = icmp ne i128 %i.yd, 126772106847760555938599320859285086047
  %i.yf = zext i1 %i.ye to i32
  %i.yg = icmp eq i32 %i.yf, 0
  br label %bb.cl

bb.cb:                                            ; preds = %bb.bq
  %i.yh = load i64, ptr %0, align 1
  %i.yi = xor i64 %i.yh, 6873458907007967071
  %i.yj = getelementptr i8, ptr %0, i64 8
  %i.yk = load i8, ptr %i.yj, align 1
  %i.yl = zext i8 %i.yk to i64
  %i.ym = xor i64 %i.yl, 95
  %i.yn = or i64 %i.yi, %i.ym
  %i.yo = icmp ne i64 %i.yn, 0
  %i.yp = zext i1 %i.yo to i32
  %i.yq = icmp eq i32 %i.yp, 0
  br i1 %i.yq, label %bb.cl, label %bb.ch

bb.cc:                                            ; preds = %bb.bu
  %i.yr = load i64, ptr %0, align 1
  %i.ys = xor i64 %i.yr, 7310023211234058079
  %i.yt = getelementptr i8, ptr %0, i64 3
  %i.yu = load i64, ptr %i.yt, align 1
  %i.yv = xor i64 %i.yu, 6872324142288036197
  %i.yw = or i64 %i.ys, %i.yv
  %i.yx = icmp ne i64 %i.yw, 0
  %i.yy = zext i1 %i.yx to i32
  %i.yz = icmp eq i32 %i.yy, 0
  br i1 %i.yz, label %bb.cl, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.za = load i64, ptr %0, align 1
  %i.zb = xor i64 %i.za, 7596553733801271647
  %i.zc = getelementptr i8, ptr %0, i64 3
  %i.zd = load i64, ptr %i.zc, align 1
  %i.ze = xor i64 %i.zd, 6877948161342660452
  %i.zf = or i64 %i.zb, %i.ze
  %i.zg = icmp ne i64 %i.zf, 0
  %i.zh = zext i1 %i.zg to i32
  %i.zi = icmp eq i32 %i.zh, 0
  br label %bb.cl

bb.ce:                                            ; preds = %bb.by
  %i.zj = load i128, ptr %0, align 1
  %i.zk = xor i128 %i.zj, 153367010550328511660475585917306036575
  %i.zl = getelementptr i8, ptr %0, i64 16
  %i.zm = load i8, ptr %i.zl, align 1
  %i.zn = zext i8 %i.zm to i128
  %i.zo = xor i128 %i.zn, 95
  %i.zp = or i128 %i.zk, %i.zo
  %i.zq = icmp ne i128 %i.zp, 0
  %i.zr = zext i1 %i.zq to i32
  %i.zs = icmp eq i32 %i.zr, 0
  br label %bb.cl

bb.cf:                                            ; preds = %bb.b
  %i.zt = load i32, ptr %0, align 1
  %i.zu = xor i32 %i.zt, 1835101791
  %i.zv = getelementptr i8, ptr %0, i64 4
  %i.zw = load i16, ptr %i.zv, align 1
  %i.zx = zext i16 %i.zw to i32
  %i.zy = xor i32 %i.zx, 24421
  %i.zz = or i32 %i.zu, %i.zy
  %i.aaa = icmp ne i32 %i.zz, 0
  %i.aab = zext i1 %i.aaa to i32
  %i.aac = icmp eq i32 %i.aab, 0
  br label %bb.cl

bb.cg:                                            ; preds = %bb.bx
  %i.aad = load i32, ptr %0, align 1
  %i.aae = xor i32 %i.aad, 1818326623
  %i.aaf = getelementptr i8, ptr %0, i64 3
  %i.aag = load i32, ptr %i.aaf, align 1
  %i.aah = xor i32 %i.aag, 1600484716
  %i.aai = or i32 %i.aae, %i.aah
  %i.aaj = icmp ne i32 %i.aai, 0
  %i.aak = zext i1 %i.aaj to i32
  %i.aal = icmp eq i32 %i.aak, 0
  br i1 %i.aal, label %bb.cl, label %bb.cj

bb.ch:                                            ; preds = %bb.cb
  %i.aam = load i64, ptr %0, align 1
  %i.aan = xor i64 %i.aam, 7453010377923194207
  %i.aao = getelementptr i8, ptr %0, i64 8
  %i.aap = load i8, ptr %i.aao, align 1
  %i.aaq = zext i8 %i.aap to i64
  %i.aar = xor i64 %i.aaq, 95
  %i.aas = or i64 %i.aan, %i.aar
  %i.aat = icmp ne i64 %i.aas, 0
  %i.aau = zext i1 %i.aat to i32
  %i.aav = icmp eq i32 %i.aau, 0
  br label %bb.cl

bb.ci:                                            ; preds = %bb.bo
  %i.aaw = load i64, ptr %0, align 1
  %i.aax = icmp ne i64 %i.aaw, 6874026229170137439
  %i.aay = zext i1 %i.aax to i32
  %i.aaz = icmp eq i32 %i.aay, 0
  br label %bb.cl

bb.cj:                                            ; preds = %bb.cg
  %i.aba = load i32, ptr %0, align 1
  %i.abb = xor i32 %i.aba, 1685221215
  %i.abc = getelementptr i8, ptr %0, i64 3
  %i.abd = load i32, ptr %i.abc, align 1
  %i.abe = xor i32 %i.abd, 1601332580
  %i.abf = or i32 %i.abb, %i.abe
  %i.abg = icmp ne i32 %i.abf, 0
  %i.abh = zext i1 %i.abg to i32
  %i.abi = icmp eq i32 %i.abh, 0
  br label %bb.cl

bb.ck:                                            ; preds = %bb.b
  %i.abj = load i128, ptr %0, align 1
  %i.abk = xor i128 %i.abj, 157344534002465825261285914343270344543
  %i.abl = getelementptr i8, ptr %0, i64 5
  %i.abm = load i128, ptr %i.abl, align 1
  %i.abn = xor i128 %i.abm, 126803463211007354275029957475755647346
  %i.abo = or i128 %i.abk, %i.abn
  %i.abp = icmp ne i128 %i.abo, 0
  %i.abq = zext i1 %i.abp to i32
  %i.abr = icmp eq i32 %i.abq, 0
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ci, %bb.ch, %bb.cf, %bb.ce, %bb.ca, %bb.bz, %bb.bw, %bb.bv, %bb.bm, %bb.bl, %bb.bd, %bb.i, %bb.cd, %bb.ck, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bx, %bb.by, %bb.cb, %bb.cc, %bb.cg, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ true, %bb.c ], [ %i.qo, %bb.bd ], [ %i.yg, %bb.ca ], [ %i.zs, %bb.ce ], [ true, %bb.cg ], [ %i.yc, %bb.bz ], [ %i.aac, %bb.cf ], [ %i.zi, %bb.cd ], [ true, %bb.cc ], [ true, %bb.cb ], [ %i.wq, %bb.bv ], [ %i.aaz, %bb.ci ], [ true, %bb.by ], [ true, %bb.bx ], [ false, %bb.b ], [ %i.bp, %bb.i ], [ true, %bb.bu ], [ true, %bb.bt ], [ true, %bb.bs ], [ true, %bb.br ], [ true, %bb.bq ], [ true, %bb.bp ], [ true, %bb.bo ], [ true, %bb.bn ], [ %i.te, %bb.bl ], [ %i.xa, %bb.bw ], [ true, %bb.bk ], [ true, %bb.bj ], [ true, %bb.bi ], [ true, %bb.bh ], [ true, %bb.bg ], [ true, %bb.bf ], [ true, %bb.be ], [ %i.to, %bb.bm ], [ true, %bb.bc ], [ true, %bb.bb ], [ true, %bb.ba ], [ true, %bb.az ], [ true, %bb.ay ], [ true, %bb.ax ], [ true, %bb.aw ], [ true, %bb.av ], [ true, %bb.au ], [ true, %bb.at ], [ true, %bb.as ], [ true, %bb.ar ], [ true, %bb.aq ], [ true, %bb.ap ], [ true, %bb.ao ], [ true, %bb.an ], [ true, %bb.am ], [ true, %bb.al ], [ true, %bb.ak ], [ true, %bb.aj ], [ true, %bb.ai ], [ true, %bb.ah ], [ true, %bb.ag ], [ true, %bb.af ], [ true, %bb.ae ], [ true, %bb.ad ], [ true, %bb.ac ], [ true, %bb.ab ], [ true, %bb.aa ], [ true, %bb.z ], [ true, %bb.y ], [ true, %bb.x ], [ true, %bb.w ], [ true, %bb.v ], [ true, %bb.u ], [ true, %bb.t ], [ true, %bb.s ], [ true, %bb.r ], [ true, %bb.q ], [ true, %bb.p ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.m ], [ true, %bb.l ], [ true, %bb.k ], [ true, %bb.j ], [ %i.abi, %bb.cj ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.e ], [ true, %bb.d ], [ %i.abr, %bb.ck ], [ %i.aav, %bb.ch ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint7helpers25is_dunder_operator_method(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #23 !guid !6948 {
bb.a:
  switch i64 %1, label %bb.aw [
    i64 6, label %bb.b
    i64 7, label %bb.h
    i64 10, label %bb.k
    i64 11, label %bb.l
    i64 12, label %bb.m
    i64 8, label %bb.v
    i64 13, label %bb.aa
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = xor i32 %i.a, 1953259359
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i16, ptr %i.c, align 1
  %i.e = zext i16 %i.d to i32
  %i.f = xor i32 %i.e, 24415
  %i.g = or i32 %i.b, %i.f
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.ax, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %0, align 1
  %i.l = xor i32 %i.k, 1701601119
  %i.m = getelementptr i8, ptr %0, i64 4
  %i.n = load i16, ptr %i.m, align 1
  %i.o = zext i16 %i.n to i32
  %i.p = xor i32 %i.o, 24415
  %i.q = or i32 %i.l, %i.p
  %i.r = icmp ne i32 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.ax, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %0, align 1
  %i.v = xor i32 %i.u, 1902468959
  %i.w = getelementptr i8, ptr %0, i64 4
  %i.x = load i16, ptr %i.w, align 1
  %i.y = zext i16 %i.x to i32
  %i.z = xor i32 %i.y, 24415
  %i.aa = or i32 %i.v, %i.z
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.ax, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = load i32, ptr %0, align 1
  %i.af = xor i32 %i.ae, 1701732191
  %i.ag = getelementptr i8, ptr %0, i64 4
  %i.ah = load i16, ptr %i.ag, align 1
  %i.ai = zext i16 %i.ah to i32
  %i.aj = xor i32 %i.ai, 24415
  %i.ak = or i32 %i.af, %i.aj
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.ax, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load i32, ptr %0, align 1
  %i.ap = xor i32 %i.ao, 1952931679
  %i.aq = getelementptr i8, ptr %0, i64 4
  %i.ar = load i16, ptr %i.aq, align 1
  %i.as = zext i16 %i.ar to i32
  %i.at = xor i32 %i.as, 24415
  %i.au = or i32 %i.ap, %i.at
  %i.av = icmp ne i32 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.ax, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = load i32, ptr %0, align 1
  %i.az = xor i32 %i.ay, 1701273439
  %i.ba = getelementptr i8, ptr %0, i64 4
  %i.bb = load i16, ptr %i.ba, align 1
  %i.bc = zext i16 %i.bb to i32
  %i.bd = xor i32 %i.bc, 24415
  %i.be = or i32 %i.az, %i.bd
  %i.bf = icmp ne i32 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.ax, label %bb.u

bb.h:                                             ; preds = %bb.a
  %i.bi = load i32, ptr %0, align 1
  %i.bj = xor i32 %i.bi, 1684103007
  %i.bk = getelementptr i8, ptr %0, i64 3
  %i.bl = load i32, ptr %i.bk, align 1
  %i.bm = xor i32 %i.bl, 1600087140
  %i.bn = or i32 %i.bj, %i.bm
  %i.bo = icmp ne i32 %i.bn, 0
  %i.bp = zext i1 %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.ax, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = load i32, ptr %0, align 1
  %i.bs = xor i32 %i.br, 1970495327
  %i.bt = getelementptr i8, ptr %0, i64 3
  %i.bu = load i32, ptr %i.bt, align 1
  %i.bv = xor i32 %i.bu, 1600086645
  %i.bw = or i32 %i.bs, %i.bv
  %i.bx = icmp ne i32 %i.bw, 0
  %i.by = zext i1 %i.bx to i32
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.ax, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = load i32, ptr %0, align 1
  %i.cb = xor i32 %i.ca, 1970102111
  %i.cc = getelementptr i8, ptr %0, i64 3
  %i.cd = load i32, ptr %i.cc, align 1
  %i.ce = xor i32 %i.cd, 1600089205
  %i.cf = or i32 %i.cb, %i.ce
  %i.cg = icmp ne i32 %i.cf, 0
  %i.ch = zext i1 %i.cg to i32
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.ax, label %bb.n

bb.k:                                             ; preds = %bb.a
  %i.cj = load i64, ptr %0, align 1
  %i.ck = xor i64 %i.cj, 7815273074989555551
  %i.cl = getelementptr i8, ptr %0, i64 8
  %i.cm = load i16, ptr %i.cl, align 1
  %i.cn = zext i16 %i.cm to i64
  %i.co = xor i64 %i.cn, 24415
  %i.cp = or i64 %i.ck, %i.co
  %i.cq = icmp ne i64 %i.cp, 0
  %i.cr = zext i1 %i.cq to i32
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.ax, label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.ct = load i64, ptr %0, align 1
  %i.cu = xor i64 %i.ct, 7594306426759307103
  %i.cv = getelementptr i8, ptr %0, i64 3
  %i.cw = load i64, ptr %i.cv, align 1
  %i.cx = xor i64 %i.cw, 6872341751418680690
  %i.cy = or i64 %i.cu, %i.cx
  %i.cz = icmp ne i64 %i.cy, 0
  %i.da = zext i1 %i.cz to i32
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.ax, label %bb.y

bb.m:                                             ; preds = %bb.a
  %i.dc = load i64, ptr %0, align 1
  %i.dd = xor i64 %i.dc, 7237970075488509791
  %i.de = getelementptr i8, ptr %0, i64 8
  %i.df = load i32, ptr %i.de, align 1
  %i.dg = zext i32 %i.df to i64
  %i.dh = xor i64 %i.dg, 1600091753
  %i.di = or i64 %i.dd, %i.dh
  %i.dj = icmp ne i64 %i.di, 0
  %i.dk = zext i1 %i.dj to i32
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.ax, label %bb.z

bb.n:                                             ; preds = %bb.j
  %i.dm = load i32, ptr %0, align 1
  %i.dn = xor i32 %i.dm, 1869438815
  %i.do = getelementptr i8, ptr %0, i64 3
  %i.dp = load i32, ptr %i.do, align 1
  %i.dq = xor i32 %i.dp, 1600087151
  %i.dr = or i32 %i.dn, %i.dq
  %i.ds = icmp ne i32 %i.dr, 0
  %i.dt = zext i1 %i.ds to i32
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.ax, label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.dv = load i64, ptr %0, align 1
  %i.dw = xor i64 %i.dv, 7237123481549430623
  %i.dx = getelementptr i8, ptr %0, i64 8
  %i.dy = load i16, ptr %i.dx, align 1
  %i.dz = zext i16 %i.dy to i64
  %i.ea = xor i64 %i.dz, 24415
  %i.eb = or i64 %i.dw, %i.ea
  %i.ec = icmp ne i64 %i.eb, 0
  %i.ed = zext i1 %i.ec to i32
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.ax, label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ef = load i32, ptr %0, align 1
  %i.eg = xor i32 %i.ef, 1869635423
  %i.eh = getelementptr i8, ptr %0, i64 3
  %i.ei = load i32, ptr %i.eh, align 1
  %i.ej = xor i32 %i.ei, 1600092015
  %i.ek = or i32 %i.eg, %i.ej
end_hunk_2
