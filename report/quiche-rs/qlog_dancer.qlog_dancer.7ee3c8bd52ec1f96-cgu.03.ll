Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.7ee3c8bd52ec1f96-cgu.03?download=true
inline.NumInlined: 1671
inline.NumDeleted: 535
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE13parse_decimalCsaTqK2fWTXJW_11qlog_dancer:bb.a

.thread106:                                       ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !48114, !noalias !48080
    #dbg_value(i8 -48, !48040, !DIExpression(), !48082)
  br label %.loopexit, !dbg !48115

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !48116
  %i.n = load ptr, ptr %i.m, align 8, !dbg !48116, !noalias !48080, !nonnull !2044, !noundef !2044
    #dbg_value(ptr %i.n, !4247, !DIExpression(), !47974)
  %i.o = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.n), !dbg !48117, !noalias !48081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !48114, !noalias !48080
    #dbg_value(ptr %i.o, !48039, !DIExpression(), !48083)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !48118
  store ptr %i.o, ptr %i.p, align 8, !dbg !48118
  store i64 1, ptr %0, align 8, !dbg !48118
  br label %bb.w, !dbg !48119

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.k, align 1, !dbg !48120, !noalias !48080, !noundef !2044 ; 2 uses
    #dbg_value(i8 %i.q, !4248, !DIExpression(), !47975)
  store i8 1, ptr %i.i, align 8, !dbg !48121, !alias.scope !48079
  store i8 %i.q, ptr %i.j, align 1, !dbg !48121, !alias.scope !48079
  %i.r = add i8 %i.q, -48, !dbg !48115            ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !48114, !noalias !48080
    #dbg_value(i8 %i.r, !48040, !DIExpression(), !48082)
  %or.cond = icmp ult i8 %i.r, 10, !dbg !48115
  br i1 %or.cond, label %bb.e, label %.loopexit, !dbg !48115

.loopexit:                                        ; preds = %bb.d, %.thread106
  %i.s = icmp eq i32 %.sroa.07.0, 0, !dbg !48122
  br i1 %i.s, label %bb.f, label %bb.h, !dbg !48122

bb.e:                                             ; preds = %bb.d
  %i.t = zext nneg i8 %i.r to i64, !dbg !48123
    #dbg_value(i64 %i.t, !48041, !DIExpression(), !48085)
  %i.u = icmp ugt i64 %.sroa.0.0, 1844674407370955160, !dbg !48124
  br i1 %i.u, label %bb.x, label %bb.y, !dbg !48124

bb.f:                                             ; preds = %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !48086), !dbg !48125
    #dbg_value(ptr %i.h, !4245, !DIExpression(), !47979)
  %i.v = load i8, ptr %i.i, align 8, !dbg !48126, !range !4239, !alias.scope !48086, !noundef !2044
  %i.w = trunc nuw i8 %i.v to i1, !dbg !48126
  br i1 %i.w, label %.thread, label %bb.g, !dbg !48127

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !48128, !noalias !48087
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.h), !dbg !48129, !noalias !48088
  %i.x = load i8, ptr %i.d, align 8, !dbg !48128, !range !4251, !noalias !48087, !noundef !2044
  switch i8 %i.x, label %bb.k [
    i8 2, label %bb.l
    i8 0, label %.thread87
  ], !dbg !48130, !prof !4252

.thread87:                                        ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 1, !dbg !48131
  %i.z = load i8, ptr %i.y, align 1, !dbg !48131, !noalias !48087, !noundef !2044
    #dbg_value(i8 %i.z, !4248, !DIExpression(), !47981)
  store i8 1, ptr %i.i, align 8, !dbg !48132, !alias.scope !48086
  store i8 %i.z, ptr %i.j, align 1, !dbg !48132, !alias.scope !48086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !48133, !noalias !48087
  br label %.thread, !dbg !48134

bb.h:                                             ; preds = %.loopexit
  %i.aa = add i32 %.sroa.07.0, %4, !dbg !48135    ; 4 uses
    #dbg_value(i32 %i.aa, !48046, !DIExpression(), !48090)
  call void @llvm.experimental.noalias.scope.decl(metadata !48091), !dbg !48136
    #dbg_value(ptr %i.h, !4245, !DIExpression(), !47985)
  %i.ab = load i8, ptr %i.i, align 8, !dbg !48137, !range !4239, !alias.scope !48091, !noundef !2044
  %i.ac = trunc nuw i8 %i.ab to i1, !dbg !48137
  br i1 %i.ac, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit44.thread, label %bb.i, !dbg !48138

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit44.thread: ; preds = %bb.h
  %i.ad = load i8, ptr %i.j, align 1, !dbg !48139, !alias.scope !48091, !noundef !2044
  br label %bb.n, !dbg !48140

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !48141, !noalias !48093
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.h), !dbg !48142, !noalias !48094
  %i.ae = load i8, ptr %i.c, align 8, !dbg !48141, !range !4251, !noalias !48093, !noundef !2044
  switch i8 %i.ae, label %bb.m [
    i8 2, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit44.thread81
    i8 0, label %bb.j
  ], !dbg !48143, !prof !4252

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 1, !dbg !48144
  %i.ag = load i8, ptr %i.af, align 1, !dbg !48144, !noalias !48093, !noundef !2044 ; 2 uses
    #dbg_value(i8 %i.ag, !4248, !DIExpression(), !47987)
  store i8 1, ptr %i.i, align 8, !dbg !48145, !alias.scope !48091
  store i8 %i.ag, ptr %i.j, align 1, !dbg !48145, !alias.scope !48091
  br label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit44.thread81, !dbg !48146

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit44.thread81: ; preds = %bb.j, %bb.i
  %.sroa.651.0.ph = phi i8 [ 0, %bb.i ], [ %i.ag, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !48147, !noalias !48093
  br label %bb.n, !dbg !48140

bb.k:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !48148
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !48148, !noalias !48087, !nonnull !2044, !noundef !2044
    #dbg_value(ptr %i.ai, !4247, !DIExpression(), !47988)
  %i.aj = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.ai), !dbg !48149, !noalias !48088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !48133, !noalias !48087
    #dbg_value(ptr %i.aj, !48045, !DIExpression(), !48095)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !48150
  store ptr %i.aj, ptr %i.ak, align 8, !dbg !48150
  store i64 1, ptr %0, align 8, !dbg !48150
  br label %bb.w, !dbg !48151

.thread:                                          ; preds = %bb.f, %.thread87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !48152
  store i64 13, ptr %i.g, align 8, !dbg !48152
  call void @llvm.experimental.noalias.scope.decl(metadata !48097), !dbg !48153
    #dbg_value(ptr %1, !4260, !DIExpression(), !47992)
    #dbg_declare(ptr %i.g, !4264, !DIExpression(), !47993)
  %.val.i = load i64, ptr %i.h, align 8, !dbg !48154, !alias.scope !48097, !noundef !2044
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !48154
  %.val4.i = load i64, ptr %i.al, align 8, !dbg !48154, !alias.scope !48097, !noundef !2044
    #dbg_value(i64 %.val.i, !4265, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !47994)
    #dbg_value(i64 %.val4.i, !4265, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !47994)
  %i.am = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %.val.i, i64 noundef %.val4.i), !dbg !48155, !noalias !48097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !48156
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !48157
  store ptr %i.am, ptr %i.an, align 8, !dbg !48157
  store i64 1, ptr %0, align 8, !dbg !48157
  br label %bb.w, !dbg !48158

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !48133, !noalias !48087
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !48159
  store i64 5, ptr %i.f, align 8, !dbg !48159
  call void @llvm.experimental.noalias.scope.decl(metadata !48098), !dbg !48160
    #dbg_value(ptr %1, !4260, !DIExpression(), !47998)
    #dbg_declare(ptr %i.f, !4264, !DIExpression(), !47999)
  %.val.i45 = load i64, ptr %i.h, align 8, !dbg !48161, !alias.scope !48098, !noundef !2044
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !48161
  %.val4.i46 = load i64, ptr %i.ao, align 8, !dbg !48161, !alias.scope !48098, !noundef !2044
    #dbg_value(i64 %.val.i45, !4265, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48000)
    #dbg_value(i64 %.val4.i46, !4265, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48000)
  %i.ap = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %.val.i45, i64 noundef %.val4.i46), !dbg !48162, !noalias !48098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !48163
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !48164
  store ptr %i.ap, ptr %i.aq, align 8, !dbg !48164
  store i64 1, ptr %0, align 8, !dbg !48164
  br label %bb.w, !dbg !48165

bb.m:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !48166
  %i.as = load ptr, ptr %i.ar, align 8, !dbg !48166, !noalias !48093, !nonnull !2044, !noundef !2044
    #dbg_value(ptr %i.as, !4247, !DIExpression(), !48001)
  %i.at = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.as), !dbg !48167, !noalias !48094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !48147, !noalias !48093
    #dbg_value(ptr %i.at, !48048, !DIExpression(), !48099)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !48168
  store ptr %i.at, ptr %i.au, align 8, !dbg !48168
  store i64 1, ptr %0, align 8, !dbg !48168
  br label %bb.w, !dbg !48169

bb.n:                                             ; preds = %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit44.thread81, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit44.thread
  %.sroa.651.179 = phi i8 [ %i.ad, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit44.thread ], [ %.sroa.651.0.ph, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit44.thread81 ]
  switch i8 %.sroa.651.179, label %bb.o [
    i8 101, label %bb.v
    i8 69, label %bb.v
  ], !dbg !48170

bb.o:                                             ; preds = %bb.n
  %.val = load i64, ptr %i.h, align 8, !dbg !48171 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !48171
  %.val40 = load i64, ptr %i.av, align 8, !dbg !48171 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48102), !dbg !48171
    #dbg_value(i32 %i.aa, !6980, !DIExpression(), !48005)
    #dbg_value(ptr poison, !6983, !DIExpression(), !48005)
    #dbg_value(i1 %2, !6984, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !48005)
    #dbg_value(i64 %.sroa.0.0, !6985, !DIExpression(), !48005)
  %i.aw = uitofp i64 %.sroa.0.0 to double, !dbg !48172 ; 2 uses
    #dbg_value(double %i.aw, !6986, !DIExpression(), !48006)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48008)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48010)
    #dbg_value(i64 309, !6989, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48008)
    #dbg_value(i64 309, !7011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48010)
    #dbg_value(i32 %i.aa, !7018, !DIExpression(), !48012)
  %.sroa.012.07.i = call i32 @llvm.abs.i32(i32 %i.aa, i1 false), !dbg !48173 ; 2 uses
  %i.ax = icmp ult i32 %.sroa.012.07.i, 309, !dbg !48174
  br i1 %i.ax, label %._crit_edge.i, label %.lr.ph.i, !dbg !48174

.lr.ph.i:                                         ; preds = %bb.o, %bb.q
  %.sroa.0.09.i = phi i32 [ %i.bf, %bb.q ], [ %i.aa, %bb.o ] ; 2 uses
  %.sroa.04.08.i = phi double [ %i.be, %bb.q ], [ %i.aw, %bb.o ] ; 3 uses
    #dbg_value(i32 %.sroa.0.09.i, !6980, !DIExpression(), !48005)
    #dbg_value(double %.sroa.04.08.i, !6986, !DIExpression(), !48006)
  %i.ay = fcmp oeq double %.sroa.04.08.i, 0.000000e+00, !dbg !48175
  br i1 %i.ay, label %.loopexit.i, label %bb.p, !dbg !48175

._crit_edge.i:                                    ; preds = %bb.q, %bb.o
  %.sroa.04.0.lcssa.i = phi double [ %i.aw, %bb.o ], [ %i.be, %bb.q ], !dbg !48176 ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %i.aa, %bb.o ], [ %i.bf, %bb.q ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.07.i, %bb.o ], [ %.sroa.012.0.i, %bb.q ], !dbg !48173
  %i.az = zext nneg i32 %.sroa.012.0.lcssa.i to i64, !dbg !48177
    #dbg_value(i32 %.sroa.012.0.lcssa.i, !7006, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !48008)
    #dbg_value(i32 %.sroa.012.0.lcssa.i, !7016, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !48010)
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, i64 %i.az, !dbg !48178
  %i.bb = load double, ptr %i.ba, align 8, !dbg !48179, !noalias !48102, !noundef !2044 ; 2 uses
    #dbg_value(double %i.bb, !6987, !DIExpression(), !48013)
  %i.bc = icmp sgt i32 %.sroa.0.0.lcssa.i, -1, !dbg !48180
  br i1 %i.bc, label %bb.t, label %bb.s, !dbg !48180

bb.p:                                             ; preds = %.lr.ph.i
  %i.bd = icmp sgt i32 %.sroa.0.09.i, -1, !dbg !48181
  br i1 %i.bd, label %bb.r, label %bb.q, !dbg !48181, !prof !5512

bb.q:                                             ; preds = %bb.p
  %i.be = fdiv double %.sroa.04.08.i, 1.000000e+308, !dbg !48182 ; 2 uses
    #dbg_value(double %i.be, !6986, !DIExpression(), !48006)
  %i.bf = add nsw i32 %.sroa.0.09.i, 308, !dbg !48183 ; 3 uses
    #dbg_value(i32 %i.bf, !6980, !DIExpression(), !48005)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48008)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48010)
    #dbg_value(i64 309, !6989, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48008)
    #dbg_value(i64 309, !7011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48010)
    #dbg_value(i32 %i.bf, !7018, !DIExpression(), !48012)
  %.sroa.012.0.i = call i32 @llvm.abs.i32(i32 %i.bf, i1 true), !dbg !48173 ; 2 uses
    #dbg_value(i32 %.sroa.012.0.i, !7006, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !48008)
    #dbg_value(i32 %.sroa.012.0.i, !7016, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !48010)
  %i.bg = icmp samesign ult i32 %.sroa.012.0.i, 309, !dbg !48174
  br i1 %i.bg, label %._crit_edge.i, label %.lr.ph.i, !dbg !48174

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !48184, !noalias !48102
  store i64 14, ptr %i.a, align 8, !dbg !48184, !noalias !48102
    #dbg_value(ptr poison, !6954, !DIExpression(), !48015)
    #dbg_declare(ptr %i.a, !6956, !DIExpression(), !48016)
    #dbg_value(i64 %.val, !6957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48017)
    #dbg_value(i64 %.val40, !6957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48017)
  %i.bh = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val, i64 noundef %.val40), !dbg !48185, !noalias !48103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !48186, !noalias !48102
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !48187
  store ptr %i.bh, ptr %i.bi, align 8, !dbg !48187, !alias.scope !48102
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !48188

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.t, %bb.s
  %.sroa.04.1.i = phi double [ %i.bm, %bb.t ], [ %i.bl, %bb.s ], [ %.sroa.04.08.i, %.lr.ph.i ], !dbg !48176 ; 2 uses
    #dbg_value(double %.sroa.04.1.i, !6986, !DIExpression(), !48006)
  %i.bj = fneg double %.sroa.04.1.i, !dbg !48189
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.bj, !dbg !48189
    #dbg_value(double %.sroa.04.2.i, !6986, !DIExpression(), !48006)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !48190
  store double %.sroa.04.2.i, ptr %i.bk, align 8, !dbg !48190, !alias.scope !48102
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !48191

bb.s:                                             ; preds = %._crit_edge.i
  %i.bl = fdiv double %.sroa.04.0.lcssa.i, %i.bb, !dbg !48192
    #dbg_value(double %i.bl, !6986, !DIExpression(), !48006)
  br label %.loopexit.i, !dbg !48193

bb.t:                                             ; preds = %._crit_edge.i
  %i.bm = fmul double %.sroa.04.0.lcssa.i, %i.bb, !dbg !48194 ; 2 uses
    #dbg_value(double %i.bm, !6986, !DIExpression(), !48006)
    #dbg_value(double %i.bm, !7025, !DIExpression(), !48021)
  %i.bn = call double @llvm.fabs.f64(double %i.bm), !dbg !48195
  %i.bo = fcmp oeq double %i.bn, +inf, !dbg !48195
  br i1 %i.bo, label %bb.u, label %.loopexit.i, !dbg !48196, !prof !5512

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !48197, !noalias !48102
  store i64 14, ptr %i.b, align 8, !dbg !48197, !noalias !48102
    #dbg_value(ptr poison, !6954, !DIExpression(), !48023)
    #dbg_declare(ptr %i.b, !6956, !DIExpression(), !48024)
    #dbg_value(i64 %.val, !6957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48025)
    #dbg_value(i64 %.val40, !6957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48025)
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val, i64 noundef %.val40), !dbg !48198, !noalias !48104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !48199, !noalias !48102
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !48200
  store ptr %i.bp, ptr %i.bq, align 8, !dbg !48200, !alias.scope !48102
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !48188

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.r, %.loopexit.i, %bb.u
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.u ], [ 1, %bb.r ], !dbg !48201
  store i64 %storemerge.i, ptr %0, align 8, !dbg !48201, !alias.scope !48102
  br label %bb.w, !dbg !48202

bb.v:                                             ; preds = %bb.n, %bb.n
  call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14parse_exponentCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.0, i32 noundef %i.aa), !dbg !48203
  br label %bb.w, !dbg !48204

bb.w:                                             ; preds = %bb.k, %.thread, %bb.l, %bb.c, %bb.z, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, %bb.v, %bb.m
  ret void, !dbg !48205

bb.x:                                             ; preds = %bb.e
  %i.br = icmp ne i64 %.sroa.0.0, 1844674407370955161, !dbg !48206
  %i.bs = icmp samesign ugt i8 %i.r, 5
  %or.cond1 = or i1 %i.br, %i.bs, !dbg !48206
  br i1 %or.cond1, label %bb.z, label %bb.y, !dbg !48206, !prof !5517

bb.y:                                             ; preds = %bb.x, %bb.e
    #dbg_value(ptr %i.h, !4256, !DIExpression(), !48029)
  store i8 0, ptr %i.i, align 8, !dbg !48207, !alias.scope !48105
  %i.bt = mul nuw i64 %.sroa.0.0, 10, !dbg !48208
  %i.bu = add i64 %i.bt, %i.t, !dbg !48209
    #dbg_value(i64 %i.bu, !48035, !DIExpression(), !48050)
  %i.bv = add i32 %.sroa.07.0, -1, !dbg !48210
    #dbg_value(i32 %i.bv, !48037, !DIExpression(), !48078)
  br label %bb.b, !dbg !48109

bb.z:                                             ; preds = %bb.x
  %i.bw = add i32 %.sroa.07.0, %4, !dbg !48211
    #dbg_value(i32 %i.bw, !48043, !DIExpression(), !48106)
  call void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE22parse_decimal_overflowCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.0, i32 noundef %i.bw) #23, !dbg !48212
  br label %bb.w, !dbg !48151
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE13parse_integerCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !48228 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 11 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %1, !48290, !DIExpression(), !48308)
    #dbg_value(ptr %1, !48309, !DIExpression(), !48312)
    #dbg_value(ptr %1, !48313, !DIExpression(), !48320)
    #dbg_value(ptr %1, !48321, !DIExpression(), !48324)
    #dbg_value(ptr %1, !48313, !DIExpression(), !48326)
    #dbg_value(ptr %1, !48321, !DIExpression(), !48329)
    #dbg_value(ptr %1, !48330, !DIExpression(), !48333)
    #dbg_value(i1 %2, !48291, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !48308)
    #dbg_value(i64 -1, !48304, !DIExpression(), !48334)
    #dbg_value(i8 0, !48335, !DIExpression(), !48341)
    #dbg_value(i8 0, !48335, !DIExpression(), !48343)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !48375 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48344), !dbg !48376
    #dbg_value(ptr %i.h, !6936, !DIExpression(), !48243)
    #dbg_value(ptr %i.h, !6943, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !48245)
    #dbg_value(ptr %i.h, !6949, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !48247)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !48377 ; 9 uses
  %i.j = load i8, ptr %i.i, align 8, !dbg !48377, !range !4239, !alias.scope !48344, !noundef !2044
  %i.k = trunc nuw i8 %i.j to i1, !dbg !48377
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 97, !dbg !48377 ; 6 uses
  %i.m = load i8, ptr %i.l, align 1, !dbg !48377, !alias.scope !48344
  store i8 0, ptr %i.i, align 8, !dbg !48378, !alias.scope !48344
  br i1 %i.k, label %.thread, label %bb.b, !dbg !48379

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !48380, !noalias !48345
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.h), !dbg !48381, !noalias !48346
  %i.n = load i8, ptr %i.c, align 8, !dbg !48380, !range !4251, !noalias !48345, !noundef !2044
  switch i8 %i.n, label %bb.c [
    i8 2, label %bb.d
    i8 0, label %.thread74
  ], !dbg !48382, !prof !4252

.thread74:                                        ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 1, !dbg !48383
  %i.p = load i8, ptr %i.o, align 1, !dbg !48383, !noalias !48345, !noundef !2044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !48384, !noalias !48345
  br label %.thread, !dbg !48385

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !48386
  %i.r = load ptr, ptr %i.q, align 8, !dbg !48386, !noalias !48345, !nonnull !2044, !noundef !2044
    #dbg_value(ptr %i.r, !6938, !DIExpression(), !48249)
  %i.s = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.r), !dbg !48387, !noalias !48346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !48384, !noalias !48345
    #dbg_value(ptr %i.s, !48294, !DIExpression(), !48348)
  br label %bb.e, !dbg !48388

.thread:                                          ; preds = %bb.a, %.thread74
  %.sroa.10.16473 = phi i8 [ %i.p, %.thread74 ], [ %i.m, %bb.a ] ; 3 uses
    #dbg_value(i8 %.sroa.10.16473, !48292, !DIExpression(), !48350)
    #dbg_value(i8 %.sroa.10.16473, !48298, !DIExpression(), !48351)
  %i.t = icmp eq i8 %.sroa.10.16473, 48, !dbg !48389
  br i1 %i.t, label %bb.f, label %bb.i, !dbg !48389

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !48384, !noalias !48345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !48390
  store i64 5, ptr %i.g, align 8, !dbg !48390
  call void @llvm.experimental.noalias.scope.decl(metadata !48352), !dbg !48391
    #dbg_value(ptr %1, !6954, !DIExpression(), !48253)
    #dbg_declare(ptr %i.g, !6956, !DIExpression(), !48254)
  %.val.i = load i64, ptr %i.h, align 8, !dbg !48392, !alias.scope !48352, !noundef !2044
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !48392
  %.val4.i = load i64, ptr %i.u, align 8, !dbg !48392, !alias.scope !48352, !noundef !2044
    #dbg_value(i64 %.val.i, !6957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48255)
    #dbg_value(i64 %.val4.i, !6957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48255)
  %i.v = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %.val.i, i64 noundef %.val4.i), !dbg !48393, !noalias !48352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !48394
  br label %bb.e, !dbg !48395

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink105 = phi ptr [ %i.v, %bb.d ], [ %i.s, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !48396
  store ptr %.sink105, ptr %i.w, align 8, !dbg !48396
  store i64 -1, ptr %0, align 8, !dbg !48396
  br label %bb.r, !dbg !48388

bb.f:                                             ; preds = %.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !48353), !dbg !48397
end_hunk_0
begin_hunk_1_@_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14parse_exponentCsaTqK2fWTXJW_11qlog_dancer:bb.a

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !49082, !noalias !49031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !49088
  store i64 5, ptr %i.g, align 8, !dbg !49088
  call void @llvm.experimental.noalias.scope.decl(metadata !49038), !dbg !49089
    #dbg_value(ptr %1, !6954, !DIExpression(), !48906)
    #dbg_declare(ptr %i.g, !6956, !DIExpression(), !48907)
  %.val.i = load i64, ptr %i.h, align 8, !dbg !49090, !alias.scope !49038, !noundef !2044
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !49090
  %.val4.i = load i64, ptr %i.z, align 8, !dbg !49090, !alias.scope !49038, !noundef !2044
    #dbg_value(i64 %.val.i, !6957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48908)
    #dbg_value(i64 %.val4.i, !6957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48908)
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %.val.i, i64 noundef %.val4.i), !dbg !49091, !noalias !49038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !49092
  br label %bb.i, !dbg !49093

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink = phi ptr [ %i.aa, %bb.h ], [ %i.x, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !49094
  store ptr %.sink, ptr %i.ab, align 8, !dbg !49094
  store i64 1, ptr %0, align 8, !dbg !49094
  br label %bb.z, !dbg !49086

bb.j:                                             ; preds = %.thread79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !49095
  store i64 13, ptr %i.f, align 8, !dbg !49095
  call void @llvm.experimental.noalias.scope.decl(metadata !49039), !dbg !49096
    #dbg_value(ptr %1, !6954, !DIExpression(), !48912)
    #dbg_declare(ptr %i.f, !6956, !DIExpression(), !48913)
  %.val.i43 = load i64, ptr %i.h, align 8, !dbg !49097, !alias.scope !49039, !noundef !2044
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !49097
  %.val4.i44 = load i64, ptr %i.ac, align 8, !dbg !49097, !alias.scope !49039, !noundef !2044
    #dbg_value(i64 %.val.i43, !6957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48914)
    #dbg_value(i64 %.val4.i44, !6957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48914)
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %.val.i43, i64 noundef %.val4.i44), !dbg !49098, !noalias !49039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !49099
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !49100
  store ptr %i.ad, ptr %i.ae, align 8, !dbg !49100
  store i64 1, ptr %0, align 8, !dbg !49100
  br label %bb.z, !dbg !49101

.peel.begin:                                      ; preds = %.thread79
  %i.af = zext nneg i8 %i.y to i32, !dbg !49102   ; 2 uses
    #dbg_value(i32 %i.af, !48967, !DIExpression(), !49040)
    #dbg_value(i32 %i.af, !49010, !DIExpression(), !49013)
    #dbg_value(i32 %i.af, !49015, !DIExpression(), !49018)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %.pre108 = load i8, ptr %i.i, align 8, !dbg !49103, !range !4239, !alias.scope !49041
  %i.ah = trunc nuw i8 %.pre108 to i1, !dbg !49103
    #dbg_value(i32 %i.af, !49015, !DIExpression(), !49018)
    #dbg_value(i32 %i.af, !49010, !DIExpression(), !49013)
    #dbg_value(i32 %i.af, !48967, !DIExpression(), !49040)
  call void @llvm.experimental.noalias.scope.decl(metadata !49042), !dbg !49104
    #dbg_value(ptr %i.h, !4245, !DIExpression(), !48920)
  br i1 %i.ah, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread.peel, label %bb.k, !dbg !49105

bb.k:                                             ; preds = %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !49106, !noalias !49043
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.h), !dbg !49107, !noalias !49044
  %i.ai = load i8, ptr %i.c, align 8, !dbg !49106, !range !4251, !noalias !49043, !noundef !2044
  switch i8 %i.ai, label %.loopexit [
    i8 2, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread92.peel
    i8 0, label %bb.l
  ], !dbg !49108, !prof !4252

bb.l:                                             ; preds = %bb.k
  %i.aj = load i8, ptr %i.ag, align 1, !dbg !49109, !noalias !49043, !noundef !2044 ; 2 uses
    #dbg_value(i8 %i.aj, !4248, !DIExpression(), !48922)
  store i8 1, ptr %i.i, align 8, !dbg !49110, !alias.scope !49042
  store i8 %i.aj, ptr %i.j, align 1, !dbg !49110, !alias.scope !49042
  br label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread92.peel, !dbg !49111

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread92.peel: ; preds = %bb.l, %bb.k
  %.sroa.654.0.ph.peel = phi i8 [ 0, %bb.k ], [ %i.aj, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !49112, !noalias !49043
  br label %bb.m, !dbg !49113

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread.peel: ; preds = %.peel.begin
  %i.ak = load i8, ptr %i.j, align 1, !dbg !49114, !alias.scope !49042, !noundef !2044
  br label %bb.m, !dbg !49113

bb.m:                                             ; preds = %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread.peel, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread92.peel
  %.sroa.654.190.peel = phi i8 [ %i.ak, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread.peel ], [ %.sroa.654.0.ph.peel, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread92.peel ]
    #dbg_value(i8 %.sroa.654.190.peel, !48971, !DIExpression(), !49046)
  %i.al = add i8 %.sroa.654.190.peel, -48, !dbg !49115 ; 2 uses
  %or.cond1.peel = icmp ult i8 %i.al, 10, !dbg !49115
  br i1 %or.cond1.peel, label %.peel.next, label %.loopexit133, !dbg !49115

.peel.next:                                       ; preds = %bb.m
    #dbg_value(ptr %i.h, !4256, !DIExpression(), !48924)
  store i8 0, ptr %i.i, align 8, !dbg !49116, !alias.scope !49047
  %i.am = zext nneg i8 %i.al to i32, !dbg !49117
    #dbg_value(i32 %i.am, !48972, !DIExpression(), !49048)
  %i.an = mul nuw nsw i32 %i.af, 10, !dbg !49118
  %i.ao = add nuw nsw i32 %i.an, %i.am, !dbg !49119
    #dbg_value(i32 %i.ao, !48967, !DIExpression(), !49040)
    #dbg_value(i32 %i.ao, !49010, !DIExpression(), !49013)
    #dbg_value(i32 %i.ao, !49015, !DIExpression(), !49018)
  br label %bb.n, !dbg !49120

bb.n:                                             ; preds = %bb.ab, %.peel.next
  %.sroa.08.0 = phi i32 [ %i.ao, %.peel.next ], [ %i.bz, %bb.ab ], !dbg !49036 ; 4 uses
    #dbg_value(i32 %.sroa.08.0, !49015, !DIExpression(), !49018)
    #dbg_value(i32 %.sroa.08.0, !49010, !DIExpression(), !49013)
    #dbg_value(i32 %.sroa.08.0, !48967, !DIExpression(), !49040)
  call void @llvm.experimental.noalias.scope.decl(metadata !49041), !dbg !49104
    #dbg_value(ptr %i.h, !4245, !DIExpression(), !48920)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !49106, !noalias !49049
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.h), !dbg !49107, !noalias !49044
  %i.ap = load i8, ptr %i.c, align 8, !dbg !49106, !range !4251, !noalias !49049, !noundef !2044
  switch i8 %i.ap, label %.loopexit [
    i8 2, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread92
    i8 0, label %bb.o
  ], !dbg !49108, !prof !4252

bb.o:                                             ; preds = %bb.n
  %i.aq = load i8, ptr %i.ag, align 1, !dbg !49109, !noalias !49049, !noundef !2044 ; 2 uses
    #dbg_value(i8 %i.aq, !4248, !DIExpression(), !48922)
  store i8 1, ptr %i.i, align 8, !dbg !49110, !alias.scope !49041
  store i8 %i.aq, ptr %i.j, align 1, !dbg !49110, !alias.scope !49041
  %i.ar = add i8 %i.aq, -48, !dbg !49115
  br label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread92, !dbg !49111

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread92: ; preds = %bb.o, %bb.n
  %.sroa.654.0.ph = phi i8 [ -48, %bb.n ], [ %i.ar, %bb.o ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !49112, !noalias !49049
    #dbg_value(i8 %.sroa.654.0.ph, !48971, !DIExpression(), !49046)
  %or.cond1 = icmp ult i8 %.sroa.654.0.ph, 10, !dbg !49115
  br i1 %or.cond1, label %bb.p, label %.loopexit133, !dbg !49115

.loopexit:                                        ; preds = %bb.n, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !49121
  %i.at = load ptr, ptr %i.as, align 8, !dbg !49121, !noalias !49049, !nonnull !2044, !noundef !2044
    #dbg_value(ptr %i.at, !4247, !DIExpression(), !48927)
  %i.au = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.at), !dbg !49122, !noalias !49044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !49112, !noalias !49049
    #dbg_value(ptr %i.au, !48970, !DIExpression(), !49050)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !49123
  store ptr %i.au, ptr %i.av, align 8, !dbg !49123
  store i64 1, ptr %0, align 8, !dbg !49123
  br label %bb.z, !dbg !49124

.loopexit133:                                     ; preds = %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread92, %bb.m
  %.sroa.08.0.lcssa130 = phi i32 [ %i.af, %bb.m ], [ %.sroa.08.0, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread92 ], !dbg !49036 ; 2 uses
  br i1 %.sroa.0.0113, label %bb.r, label %bb.q, !dbg !49125

bb.p:                                             ; preds = %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread92
    #dbg_value(ptr %i.h, !4256, !DIExpression(), !48924)
  store i8 0, ptr %i.i, align 8, !dbg !49116, !alias.scope !49047
  %i.aw = zext nneg i8 %.sroa.654.0.ph to i32, !dbg !49117
    #dbg_value(i32 %i.aw, !48972, !DIExpression(), !49048)
  %i.ax = icmp sgt i32 %.sroa.08.0, 214748363, !dbg !49126
  br i1 %i.ax, label %bb.aa, label %bb.ab, !dbg !49126

bb.q:                                             ; preds = %.loopexit133
  %i.ay = call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa130), !dbg !49127
    #dbg_value(i32 %i.ay, !48975, !DIExpression(), !49052)
  br label %bb.s, !dbg !49128

bb.r:                                             ; preds = %.loopexit133
  %i.az = call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa130), !dbg !49129
    #dbg_value(i32 %i.az, !48975, !DIExpression(), !49052)
  br label %bb.s, !dbg !49128

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.015.0 = phi i32 [ %i.az, %bb.r ], [ %i.ay, %bb.q ], !dbg !49040 ; 3 uses
    #dbg_value(i32 %.sroa.015.0, !48975, !DIExpression(), !49052)
  %.val = load i64, ptr %i.h, align 8, !dbg !49130 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !49130
  %.val41 = load i64, ptr %i.ba, align 8, !dbg !49130 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49053), !dbg !49130
    #dbg_value(i32 %.sroa.015.0, !6980, !DIExpression(), !48931)
    #dbg_value(ptr poison, !6983, !DIExpression(), !48931)
    #dbg_value(i1 %2, !6984, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !48931)
    #dbg_value(i64 %3, !6985, !DIExpression(), !48931)
  %i.bb = uitofp i64 %3 to double, !dbg !49131    ; 2 uses
    #dbg_value(double %i.bb, !6986, !DIExpression(), !48932)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48934)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48936)
    #dbg_value(i64 309, !6989, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48934)
    #dbg_value(i64 309, !7011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48936)
    #dbg_value(i32 %.sroa.015.0, !7018, !DIExpression(), !48938)
  %.sroa.012.07.i = call i32 @llvm.abs.i32(i32 %.sroa.015.0, i1 false), !dbg !49132 ; 2 uses
  %i.bc = icmp ult i32 %.sroa.012.07.i, 309, !dbg !49133
  br i1 %i.bc, label %._crit_edge.i, label %.lr.ph.i, !dbg !49133

.lr.ph.i:                                         ; preds = %bb.s, %bb.u
  %.sroa.0.09.i = phi i32 [ %i.bk, %bb.u ], [ %.sroa.015.0, %bb.s ] ; 2 uses
  %.sroa.04.08.i = phi double [ %i.bj, %bb.u ], [ %i.bb, %bb.s ] ; 3 uses
    #dbg_value(i32 %.sroa.0.09.i, !6980, !DIExpression(), !48931)
    #dbg_value(double %.sroa.04.08.i, !6986, !DIExpression(), !48932)
  %i.bd = fcmp oeq double %.sroa.04.08.i, 0.000000e+00, !dbg !49134
  br i1 %i.bd, label %.loopexit.i, label %bb.t, !dbg !49134

._crit_edge.i:                                    ; preds = %bb.u, %bb.s
  %.sroa.04.0.lcssa.i = phi double [ %i.bb, %bb.s ], [ %i.bj, %bb.u ], !dbg !49135 ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.015.0, %bb.s ], [ %i.bk, %bb.u ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.07.i, %bb.s ], [ %.sroa.012.0.i, %bb.u ], !dbg !49132
  %i.be = zext nneg i32 %.sroa.012.0.lcssa.i to i64, !dbg !49136
    #dbg_value(i32 %.sroa.012.0.lcssa.i, !7006, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !48934)
    #dbg_value(i32 %.sroa.012.0.lcssa.i, !7016, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !48936)
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, i64 %i.be, !dbg !49137
  %i.bg = load double, ptr %i.bf, align 8, !dbg !49138, !noalias !49053, !noundef !2044 ; 2 uses
    #dbg_value(double %i.bg, !6987, !DIExpression(), !48939)
  %i.bh = icmp sgt i32 %.sroa.0.0.lcssa.i, -1, !dbg !49139
  br i1 %i.bh, label %bb.x, label %bb.w, !dbg !49139

bb.t:                                             ; preds = %.lr.ph.i
  %i.bi = icmp sgt i32 %.sroa.0.09.i, -1, !dbg !49140
  br i1 %i.bi, label %bb.v, label %bb.u, !dbg !49140, !prof !5512

bb.u:                                             ; preds = %bb.t
  %i.bj = fdiv double %.sroa.04.08.i, 1.000000e+308, !dbg !49141 ; 2 uses
    #dbg_value(double %i.bj, !6986, !DIExpression(), !48932)
  %i.bk = add nsw i32 %.sroa.0.09.i, 308, !dbg !49142 ; 3 uses
    #dbg_value(i32 %i.bk, !6980, !DIExpression(), !48931)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48934)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48936)
    #dbg_value(i64 309, !6989, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48934)
    #dbg_value(i64 309, !7011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48936)
    #dbg_value(i32 %i.bk, !7018, !DIExpression(), !48938)
  %.sroa.012.0.i = call i32 @llvm.abs.i32(i32 %i.bk, i1 true), !dbg !49132 ; 2 uses
    #dbg_value(i32 %.sroa.012.0.i, !7006, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !48934)
    #dbg_value(i32 %.sroa.012.0.i, !7016, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !48936)
  %i.bl = icmp samesign ult i32 %.sroa.012.0.i, 309, !dbg !49133
  br i1 %i.bl, label %._crit_edge.i, label %.lr.ph.i, !dbg !49133

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !49143, !noalias !49053
  store i64 14, ptr %i.a, align 8, !dbg !49143, !noalias !49053
    #dbg_value(ptr poison, !6954, !DIExpression(), !48941)
    #dbg_declare(ptr %i.a, !6956, !DIExpression(), !48942)
    #dbg_value(i64 %.val, !6957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48943)
    #dbg_value(i64 %.val41, !6957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48943)
  %i.bm = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val, i64 noundef %.val41), !dbg !49144, !noalias !49054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !49145, !noalias !49053
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !49146
  store ptr %i.bm, ptr %i.bn, align 8, !dbg !49146, !alias.scope !49053
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !49147

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.x, %bb.w
  %.sroa.04.1.i = phi double [ %i.br, %bb.x ], [ %i.bq, %bb.w ], [ %.sroa.04.08.i, %.lr.ph.i ], !dbg !49135 ; 2 uses
    #dbg_value(double %.sroa.04.1.i, !6986, !DIExpression(), !48932)
  %i.bo = fneg double %.sroa.04.1.i, !dbg !49148
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.bo, !dbg !49148
    #dbg_value(double %.sroa.04.2.i, !6986, !DIExpression(), !48932)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !49149
  store double %.sroa.04.2.i, ptr %i.bp, align 8, !dbg !49149, !alias.scope !49053
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !49150

bb.w:                                             ; preds = %._crit_edge.i
  %i.bq = fdiv double %.sroa.04.0.lcssa.i, %i.bg, !dbg !49151
    #dbg_value(double %i.bq, !6986, !DIExpression(), !48932)
  br label %.loopexit.i, !dbg !49152

bb.x:                                             ; preds = %._crit_edge.i
  %i.br = fmul double %.sroa.04.0.lcssa.i, %i.bg, !dbg !49153 ; 2 uses
    #dbg_value(double %i.br, !6986, !DIExpression(), !48932)
    #dbg_value(double %i.br, !7025, !DIExpression(), !48947)
  %i.bs = call double @llvm.fabs.f64(double %i.br), !dbg !49154
  %i.bt = fcmp oeq double %i.bs, +inf, !dbg !49154
  br i1 %i.bt, label %bb.y, label %.loopexit.i, !dbg !49155, !prof !5512

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !49156, !noalias !49053
  store i64 14, ptr %i.b, align 8, !dbg !49156, !noalias !49053
    #dbg_value(ptr poison, !6954, !DIExpression(), !48949)
    #dbg_declare(ptr %i.b, !6956, !DIExpression(), !48950)
    #dbg_value(i64 %.val, !6957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48951)
    #dbg_value(i64 %.val41, !6957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48951)
  %i.bu = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val, i64 noundef %.val41), !dbg !49157, !noalias !49055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !49158, !noalias !49053
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !49159
  store ptr %i.bu, ptr %i.bv, align 8, !dbg !49159, !alias.scope !49053
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !49147

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.v, %.loopexit.i, %bb.y
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.y ], [ 1, %bb.v ], !dbg !49160
  store i64 %storemerge.i, ptr %0, align 8, !dbg !49160, !alias.scope !49053
  br label %bb.z, !dbg !49161

bb.z:                                             ; preds = %.loopexit, %.loopexit134, %bb.b, %bb.j, %bb.i, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit
  ret void, !dbg !49161

bb.aa:                                            ; preds = %bb.p
  %i.bw = icmp ne i32 %.sroa.08.0, 214748364, !dbg !49162
  %i.bx = icmp samesign ugt i8 %.sroa.654.0.ph, 7
  %or.cond2 = or i1 %i.bw, %i.bx, !dbg !49162
  br i1 %or.cond2, label %.loopexit134, label %bb.ab, !dbg !49162, !prof !5517

bb.ab:                                            ; preds = %bb.aa, %bb.p
  %i.by = mul i32 %.sroa.08.0, 10, !dbg !49118
  %i.bz = add i32 %i.by, %i.aw, !dbg !49119
    #dbg_value(i32 %i.bz, !48967, !DIExpression(), !49040)
    #dbg_value(i32 %i.bz, !49010, !DIExpression(), !49013)
    #dbg_value(i32 %i.bz, !49015, !DIExpression(), !49018)
  br label %bb.n, !dbg !49120, !llvm.loop !48954

.loopexit134:                                     ; preds = %bb.aa
  %i.ca = icmp eq i64 %3, 0, !dbg !49163
    #dbg_value(i1 %i.ca, !48974, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !49056)
  call void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE23parse_exponent_overflowCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.ca, i1 noundef zeroext %.sroa.0.0113) #23, !dbg !49164
  br label %bb.z, !dbg !49165
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE15ignore_exponentCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) initializes((96, 97)) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !49172 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !49227, !DIExpression(), !49235)
    #dbg_value(ptr %0, !49236, !DIExpression(), !49239)
    #dbg_value(ptr %0, !49240, !DIExpression(), !49247)
    #dbg_value(ptr %0, !49248, !DIExpression(), !49251)
    #dbg_value(ptr %0, !49236, !DIExpression(), !49253)
    #dbg_value(ptr %0, !49254, !DIExpression(), !49259)
    #dbg_value(ptr %0, !49260, !DIExpression(), !49263)
    #dbg_value(ptr %0, !49240, !DIExpression(), !49265)
    #dbg_value(ptr %0, !49248, !DIExpression(), !49268)
    #dbg_value(ptr %0, !49236, !DIExpression(), !49270)
    #dbg_value(i8 0, !49271, !DIExpression(), !49278)
    #dbg_value(i8 0, !49271, !DIExpression(), !49280)
    #dbg_value(i8 0, !49271, !DIExpression(), !49282)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !49299 ; 4 uses
    #dbg_value(ptr %i.e, !4256, !DIExpression(), !49189)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !49300 ; 7 uses
  store i8 0, ptr %i.f, align 8, !dbg !49300, !alias.scope !49283
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49284), !dbg !49301
    #dbg_value(ptr %i.e, !4245, !DIExpression(), !49195)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 97, !dbg !49302 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !49303, !noalias !49285
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.e), !dbg !49304, !noalias !49286
  %i.h = load i8, ptr %i.c, align 8, !dbg !49303, !range !4251, !noalias !49285, !noundef !2044
  switch i8 %i.h, label %bb.b [
    i8 2, label %bb.d
    i8 0, label %bb.c
  ], !dbg !49305, !prof !4252

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !49306
  %i.j = load ptr, ptr %i.i, align 8, !dbg !49306, !noalias !49285, !nonnull !2044, !noundef !2044
    #dbg_value(ptr %i.j, !4247, !DIExpression(), !49197)
  %i.k = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.j), !dbg !49307, !noalias !49286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !49308, !noalias !49285
  br label %.loopexit, !dbg !49309

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 1, !dbg !49310
  %i.m = load i8, ptr %i.l, align 1, !dbg !49310, !noalias !49285, !noundef !2044 ; 3 uses
    #dbg_value(i8 %i.m, !4248, !DIExpression(), !49198)
  store i8 %i.m, ptr %i.g, align 1, !dbg !49311, !alias.scope !49284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !49308, !noalias !49285
    #dbg_value(i8 1, !49272, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !49278)
    #dbg_value(i8 poison, !49272, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !49278)
  store i8 0, ptr %i.f, align 8, !dbg !49312
  switch i8 %i.m, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4nextCsaTqK2fWTXJW_11qlog_dancer.exit.thread [
    i8 43, label %.thread83
    i8 45, label %.thread83
  ], !dbg !49313

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !49308, !noalias !49285
    #dbg_value(i8 0, !49272, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !49278)
    #dbg_value(i8 poison, !49272, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !49278)
  %.pre = load i8, ptr %i.f, align 8, !dbg !49314, !range !4239, !alias.scope !49289
  %.pre80 = load i8, ptr %i.g, align 1, !dbg !49314, !alias.scope !49289
  %i.n = trunc nuw i8 %.pre to i1, !dbg !49314
  call void @llvm.experimental.noalias.scope.decl(metadata !49289), !dbg !49315
    #dbg_value(ptr %i.e, !6936, !DIExpression(), !49204)
    #dbg_value(ptr %i.e, !6943, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !49205)
    #dbg_value(ptr %i.e, !6949, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !49206)
  store i8 0, ptr %i.f, align 8, !dbg !49312, !alias.scope !49289
  br i1 %i.n, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4nextCsaTqK2fWTXJW_11qlog_dancer.exit.thread, label %.thread83, !dbg !49316

.thread83:                                        ; preds = %bb.c, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !49317, !noalias !49290
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.e), !dbg !49318, !noalias !49291
  %i.o = load i8, ptr %i.b, align 8, !dbg !49317, !range !4251, !noalias !49290, !noundef !2044
  switch i8 %i.o, label %bb.f [
    i8 2, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4nextCsaTqK2fWTXJW_11qlog_dancer.exit.thread64
    i8 0, label %bb.e
  ], !dbg !49319, !prof !4252

bb.e:                                             ; preds = %.thread83
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !49320
  %i.q = load i8, ptr %i.p, align 1, !dbg !49320, !noalias !49290, !noundef !2044
  br label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4nextCsaTqK2fWTXJW_11qlog_dancer.exit.thread64, !dbg !49321

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4nextCsaTqK2fWTXJW_11qlog_dancer.exit.thread64: ; preds = %bb.e, %.thread83
  %.sroa.1041.0.ph = phi i8 [ undef, %.thread83 ], [ %i.q, %bb.e ]
  %.sroa.640.0.ph = phi i1 [ false, %.thread83 ], [ true, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !49322, !noalias !49290
  br label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4nextCsaTqK2fWTXJW_11qlog_dancer.exit.thread, !dbg !49323

bb.f:                                             ; preds = %.thread83
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !49324
  %i.s = load ptr, ptr %i.r, align 8, !dbg !49324, !noalias !49290, !nonnull !2044, !noundef !2044
    #dbg_value(ptr %i.s, !6938, !DIExpression(), !49208)
  %i.t = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.s), !dbg !49325, !noalias !49291
end_hunk_1
begin_hunk_2_@_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE17peek_invalid_typeCsaTqK2fWTXJW_11qlog_dancer:bb.a
  store i64 %.sroa.6.0.copyload, ptr %i.au, align 8, !dbg !49614
  store i8 5, ptr %i.e, align 8, !dbg !49614
  %i.av = call noundef nonnull align 8 ptr @_RNvXs6_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !49615
    #dbg_value(ptr %i.av, !49465, !DIExpression(), !49544)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !49616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !49612
  br label %bb.n, !dbg !49612

bb.u:                                             ; preds = %.thread59, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !49617
  store i64 10, ptr %i.b, align 8, !dbg !49617
  call void @llvm.experimental.noalias.scope.decl(metadata !49550), !dbg !49618
    #dbg_value(ptr %0, !4260, !DIExpression(), !49457)
    #dbg_declare(ptr %i.b, !4264, !DIExpression(), !49458)
  %.val.i = load i64, ptr %i.l, align 8, !dbg !49619, !alias.scope !49550, !noundef !2044
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !49619
  %.val4.i = load i64, ptr %i.aw, align 8, !dbg !49619, !alias.scope !49550, !noundef !2044
    #dbg_value(i64 %.val.i, !4265, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49459)
    #dbg_value(i64 %.val4.i, !4265, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49459)
  %i.ax = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val.i, i64 noundef %.val4.i), !dbg !49620, !noalias !49550
    #dbg_value(ptr %i.ax, !49465, !DIExpression(), !49544)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !49621
  br label %bb.n, !dbg !49621

bb.v:                                             ; preds = %bb.e
  call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE13parse_integerCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef align 8 dereferenceable(112) %0, i1 noundef zeroext true), !dbg !49622
  %i.ay = load i64, ptr %i.g, align 8, !dbg !49623, !range !5459, !noundef !2044
  %i.az = icmp eq i64 %i.ay, -1, !dbg !49623
  br i1 %i.az, label %bb.w, label %bb.x, !dbg !49624, !prof !5413

bb.w:                                             ; preds = %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !49625
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !49625, !nonnull !2044, !align !5087, !noundef !2044
    #dbg_value(ptr %i.bb, !49466, !DIExpression(), !49545)
    #dbg_value(ptr %i.bb, !49467, !DIExpression(), !49546)
    #dbg_value(ptr %i.bb, !49468, !DIExpression(), !49547)
  br label %bb.y, !dbg !49609

bb.x:                                             ; preds = %bb.v
  %i.bc = call noundef nonnull align 8 ptr @_RNvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.g, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !49626
    #dbg_value(ptr %i.bc, !49465, !DIExpression(), !49544)
  br label %bb.n, !dbg !49627

bb.y:                                             ; preds = %bb.h, %bb.g, %bb.q, %bb.s, %bb.w, %bb.f, %bb.n
  %.sroa.0.1 = phi ptr [ %i.al, %bb.n ], [ %i.bb, %bb.w ], [ %i.ah, %bb.s ], [ %i.y, %bb.f ], [ %i.z, %bb.g ], [ %i.ar, %bb.q ], [ %i.aa, %bb.h ], !dbg !49485
    #dbg_value(ptr %.sroa.0.1, !49468, !DIExpression(), !49547)
    #dbg_value(ptr %.sroa.0.1, !49467, !DIExpression(), !49546)
    #dbg_value(ptr %.sroa.0.1, !49466, !DIExpression(), !49545)
  ret ptr %.sroa.0.1, !dbg !49601
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE18parse_long_integerCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !49631 {
.peel.begin:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 11 uses
    #dbg_value(ptr %1, !49680, !DIExpression(), !49687)
    #dbg_value(ptr %1, !49688, !DIExpression(), !49693)
    #dbg_value(ptr %1, !49694, !DIExpression(), !49697)
    #dbg_value(ptr %1, !49698, !DIExpression(), !49701)
    #dbg_value(i1 %2, !49681, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !49687)
    #dbg_value(i64 %3, !49682, !DIExpression(), !49687)
    #dbg_value(i32 0, !49683, !DIExpression(), !49702)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 97 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.e, align 8, !dbg !49716, !range !4239, !alias.scope !49703
  %i.h = trunc nuw i8 %.pre to i1, !dbg !49716
    #dbg_value(i32 0, !49683, !DIExpression(), !49702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49704), !dbg !49717
    #dbg_value(ptr %i.d, !4245, !DIExpression(), !49642)
  br i1 %i.h, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread.peel, label %bb.a, !dbg !49718

bb.a:                                             ; preds = %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !49719, !noalias !49705
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d), !dbg !49720, !noalias !49706
  %i.i = load i8, ptr %i.c, align 8, !dbg !49719, !range !4251, !noalias !49705, !noundef !2044
  switch i8 %i.i, label %.loopexit [
    i8 2, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread26.peel
    i8 0, label %bb.b
  ], !dbg !49721, !prof !4252

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.g, align 1, !dbg !49722, !noalias !49705, !noundef !2044 ; 2 uses
    #dbg_value(i8 %i.j, !4248, !DIExpression(), !49644)
  store i8 1, ptr %i.e, align 8, !dbg !49723, !alias.scope !49704
  store i8 %i.j, ptr %i.f, align 1, !dbg !49723, !alias.scope !49704
  br label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread26.peel, !dbg !49724

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread26.peel: ; preds = %bb.b, %bb.a
  %.sroa.6.0.ph.peel = phi i8 [ 0, %bb.a ], [ %i.j, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !49725, !noalias !49705
  br label %bb.c, !dbg !49726

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread.peel: ; preds = %.peel.begin
  %i.k = load i8, ptr %i.f, align 1, !dbg !49727, !alias.scope !49704, !noundef !2044
  br label %bb.c, !dbg !49726

bb.c:                                             ; preds = %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread.peel, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread26.peel
  %.sroa.6.125.peel = phi i8 [ %i.k, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread.peel ], [ %.sroa.6.0.ph.peel, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread26.peel ] ; 2 uses
  %i.l = add i8 %.sroa.6.125.peel, -48, !dbg !49728
  %or.cond.peel = icmp ult i8 %i.l, 10, !dbg !49728
  br i1 %or.cond.peel, label %.peel.next, label %.loopexit54, !dbg !49728

.peel.next:                                       ; preds = %bb.c
    #dbg_value(ptr %i.d, !4256, !DIExpression(), !49646)
  store i8 0, ptr %i.e, align 8, !dbg !49729, !alias.scope !49708
    #dbg_value(i32 1, !49683, !DIExpression(), !49702)
  br label %bb.d, !dbg !49730

bb.d:                                             ; preds = %bb.f, %.peel.next
  %.sroa.0.0 = phi i32 [ 1, %.peel.next ], [ %i.t, %bb.f ], !dbg !49687 ; 2 uses
    #dbg_value(i32 %.sroa.0.0, !49683, !DIExpression(), !49702)
  call void @llvm.experimental.noalias.scope.decl(metadata !49703), !dbg !49717
    #dbg_value(ptr %i.d, !4245, !DIExpression(), !49642)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !49719, !noalias !49709
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d), !dbg !49720, !noalias !49706
  %i.m = load i8, ptr %i.c, align 8, !dbg !49719, !range !4251, !noalias !49709, !noundef !2044
  switch i8 %i.m, label %.loopexit [
    i8 2, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread26
    i8 0, label %bb.e
  ], !dbg !49721, !prof !4252

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %i.g, align 1, !dbg !49722, !noalias !49709, !noundef !2044 ; 2 uses
    #dbg_value(i8 %i.n, !4248, !DIExpression(), !49644)
  store i8 1, ptr %i.e, align 8, !dbg !49723, !alias.scope !49703
  store i8 %i.n, ptr %i.f, align 1, !dbg !49723, !alias.scope !49703
  br label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread26, !dbg !49724

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread26: ; preds = %bb.e, %bb.d
  %.sroa.6.0.ph = phi i8 [ 0, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !49725, !noalias !49709
  %i.o = add i8 %.sroa.6.0.ph, -48, !dbg !49728
  %or.cond = icmp ult i8 %i.o, 10, !dbg !49728
  br i1 %or.cond, label %bb.f, label %.loopexit54, !dbg !49728

.loopexit:                                        ; preds = %bb.d, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !49731
  %i.q = load ptr, ptr %i.p, align 8, !dbg !49731, !noalias !49709, !nonnull !2044, !noundef !2044
    #dbg_value(ptr %i.q, !4247, !DIExpression(), !49649)
  %i.r = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.q), !dbg !49732, !noalias !49706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !49725, !noalias !49709
    #dbg_value(ptr %i.r, !49685, !DIExpression(), !49710)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !49733
  store ptr %i.r, ptr %i.s, align 8, !dbg !49733
  store i64 1, ptr %0, align 8, !dbg !49733
  br label %bb.p, !dbg !49734

.loopexit54:                                      ; preds = %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread26, %bb.c
  %.sroa.6.125.lcssa = phi i8 [ %.sroa.6.125.peel, %bb.c ], [ %.sroa.6.0.ph, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread26 ]
  %.sroa.0.0.lcssa52 = phi i32 [ 0, %bb.c ], [ %.sroa.0.0, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread26 ], !dbg !49687 ; 5 uses
  switch i8 %.sroa.6.125.lcssa, label %bb.g [
    i8 46, label %bb.n
    i8 101, label %bb.o
    i8 69, label %bb.o
  ], !dbg !49735

bb.f:                                             ; preds = %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread26
    #dbg_value(ptr %i.d, !4256, !DIExpression(), !49646)
  store i8 0, ptr %i.e, align 8, !dbg !49729, !alias.scope !49708
  %i.t = add i32 %.sroa.0.0, 1, !dbg !49736
    #dbg_value(i32 %i.t, !49683, !DIExpression(), !49702)
  br label %bb.d, !dbg !49730, !llvm.loop !49650

bb.g:                                             ; preds = %.loopexit54
  %.val = load i64, ptr %i.d, align 8, !dbg !49737 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !49737
  %.val17 = load i64, ptr %i.u, align 8, !dbg !49737 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49713), !dbg !49737
    #dbg_value(i32 %.sroa.0.0.lcssa52, !6980, !DIExpression(), !49654)
    #dbg_value(ptr poison, !6983, !DIExpression(), !49654)
    #dbg_value(i1 %2, !6984, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !49654)
    #dbg_value(i64 %3, !6985, !DIExpression(), !49654)
  %i.v = uitofp i64 %3 to double, !dbg !49738     ; 2 uses
    #dbg_value(double %i.v, !6986, !DIExpression(), !49655)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49657)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49659)
    #dbg_value(i64 309, !6989, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49657)
    #dbg_value(i64 309, !7011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49659)
    #dbg_value(i32 %.sroa.0.0.lcssa52, !7018, !DIExpression(), !49661)
  %.sroa.012.07.i = call i32 @llvm.abs.i32(i32 %.sroa.0.0.lcssa52, i1 false), !dbg !49739 ; 2 uses
  %i.w = icmp ult i32 %.sroa.012.07.i, 309, !dbg !49740
  br i1 %i.w, label %._crit_edge.i, label %.lr.ph.i, !dbg !49740

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %.sroa.0.09.i = phi i32 [ %i.ae, %bb.i ], [ %.sroa.0.0.lcssa52, %bb.g ] ; 2 uses
  %.sroa.04.08.i = phi double [ %i.ad, %bb.i ], [ %i.v, %bb.g ] ; 3 uses
    #dbg_value(i32 %.sroa.0.09.i, !6980, !DIExpression(), !49654)
    #dbg_value(double %.sroa.04.08.i, !6986, !DIExpression(), !49655)
  %i.x = fcmp oeq double %.sroa.04.08.i, 0.000000e+00, !dbg !49741
  br i1 %i.x, label %.loopexit.i, label %bb.h, !dbg !49741

._crit_edge.i:                                    ; preds = %bb.i, %bb.g
  %.sroa.04.0.lcssa.i = phi double [ %i.v, %bb.g ], [ %i.ad, %bb.i ], !dbg !49742 ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.0.0.lcssa52, %bb.g ], [ %i.ae, %bb.i ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.07.i, %bb.g ], [ %.sroa.012.0.i, %bb.i ], !dbg !49739
  %i.y = zext nneg i32 %.sroa.012.0.lcssa.i to i64, !dbg !49743
    #dbg_value(i32 %.sroa.012.0.lcssa.i, !7006, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !49657)
    #dbg_value(i32 %.sroa.012.0.lcssa.i, !7016, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !49659)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, i64 %i.y, !dbg !49744
  %i.aa = load double, ptr %i.z, align 8, !dbg !49745, !noalias !49713, !noundef !2044 ; 2 uses
    #dbg_value(double %i.aa, !6987, !DIExpression(), !49662)
  %i.ab = icmp sgt i32 %.sroa.0.0.lcssa.i, -1, !dbg !49746
  br i1 %i.ab, label %bb.l, label %bb.k, !dbg !49746

bb.h:                                             ; preds = %.lr.ph.i
  %i.ac = icmp sgt i32 %.sroa.0.09.i, -1, !dbg !49747
  br i1 %i.ac, label %bb.j, label %bb.i, !dbg !49747, !prof !5512

bb.i:                                             ; preds = %bb.h
  %i.ad = fdiv double %.sroa.04.08.i, 1.000000e+308, !dbg !49748 ; 2 uses
    #dbg_value(double %i.ad, !6986, !DIExpression(), !49655)
  %i.ae = add nsw i32 %.sroa.0.09.i, 308, !dbg !49749 ; 3 uses
    #dbg_value(i32 %i.ae, !6980, !DIExpression(), !49654)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49657)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49659)
    #dbg_value(i64 309, !6989, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49657)
    #dbg_value(i64 309, !7011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49659)
    #dbg_value(i32 %i.ae, !7018, !DIExpression(), !49661)
  %.sroa.012.0.i = call i32 @llvm.abs.i32(i32 %i.ae, i1 true), !dbg !49739 ; 2 uses
    #dbg_value(i32 %.sroa.012.0.i, !7006, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !49657)
    #dbg_value(i32 %.sroa.012.0.i, !7016, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !49659)
  %i.af = icmp samesign ult i32 %.sroa.012.0.i, 309, !dbg !49740
  br i1 %i.af, label %._crit_edge.i, label %.lr.ph.i, !dbg !49740

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !49750, !noalias !49713
  store i64 14, ptr %i.a, align 8, !dbg !49750, !noalias !49713
    #dbg_value(ptr poison, !6954, !DIExpression(), !49664)
    #dbg_declare(ptr %i.a, !6956, !DIExpression(), !49665)
    #dbg_value(i64 %.val, !6957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49666)
    #dbg_value(i64 %.val17, !6957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49666)
  %i.ag = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val, i64 noundef %.val17), !dbg !49751, !noalias !49714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !49752, !noalias !49713
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !49753
  store ptr %i.ag, ptr %i.ah, align 8, !dbg !49753, !alias.scope !49713
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !49754

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.l, %bb.k
  %.sroa.04.1.i = phi double [ %i.al, %bb.l ], [ %i.ak, %bb.k ], [ %.sroa.04.08.i, %.lr.ph.i ], !dbg !49742 ; 2 uses
    #dbg_value(double %.sroa.04.1.i, !6986, !DIExpression(), !49655)
  %i.ai = fneg double %.sroa.04.1.i, !dbg !49755
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ai, !dbg !49755
    #dbg_value(double %.sroa.04.2.i, !6986, !DIExpression(), !49655)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !49756
  store double %.sroa.04.2.i, ptr %i.aj, align 8, !dbg !49756, !alias.scope !49713
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !49757

bb.k:                                             ; preds = %._crit_edge.i
  %i.ak = fdiv double %.sroa.04.0.lcssa.i, %i.aa, !dbg !49758
    #dbg_value(double %i.ak, !6986, !DIExpression(), !49655)
  br label %.loopexit.i, !dbg !49759

bb.l:                                             ; preds = %._crit_edge.i
  %i.al = fmul double %.sroa.04.0.lcssa.i, %i.aa, !dbg !49760 ; 2 uses
    #dbg_value(double %i.al, !6986, !DIExpression(), !49655)
    #dbg_value(double %i.al, !7025, !DIExpression(), !49670)
  %i.am = call double @llvm.fabs.f64(double %i.al), !dbg !49761
  %i.an = fcmp oeq double %i.am, +inf, !dbg !49761
  br i1 %i.an, label %bb.m, label %.loopexit.i, !dbg !49762, !prof !5512

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !49763, !noalias !49713
  store i64 14, ptr %i.b, align 8, !dbg !49763, !noalias !49713
    #dbg_value(ptr poison, !6954, !DIExpression(), !49672)
    #dbg_declare(ptr %i.b, !6956, !DIExpression(), !49673)
    #dbg_value(i64 %.val, !6957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49674)
    #dbg_value(i64 %.val17, !6957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49674)
  %i.ao = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val, i64 noundef %.val17), !dbg !49764, !noalias !49715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !49765, !noalias !49713
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !49766
  store ptr %i.ao, ptr %i.ap, align 8, !dbg !49766, !alias.scope !49713
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !49754

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.j, %.loopexit.i, %bb.m
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.m ], [ 1, %bb.j ], !dbg !49767
  store i64 %storemerge.i, ptr %0, align 8, !dbg !49767, !alias.scope !49713
  br label %bb.p, !dbg !49768

bb.n:                                             ; preds = %.loopexit54
  call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE13parse_decimalCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %.sroa.0.0.lcssa52), !dbg !49769
  br label %bb.p, !dbg !49770

bb.o:                                             ; preds = %.loopexit54, %.loopexit54
  call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14parse_exponentCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %.sroa.0.0.lcssa52), !dbg !49771
  br label %bb.p, !dbg !49772

bb.p:                                             ; preds = %bb.o, %bb.n, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, %.loopexit
  ret void, !dbg !49773
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE18parse_object_colonCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !49776 {
.peel.begin:
  %i.a = alloca [16 x i8], align 8                ; 12 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !49817, !DIExpression(), !49821)
    #dbg_value(ptr %0, !49822, !DIExpression(), !49825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49826), !dbg !49839
    #dbg_value(ptr %0, !4212, !DIExpression(), !49781)
    #dbg_value(ptr %0, !4231, !DIExpression(), !49783)
    #dbg_value(ptr %0, !4234, !DIExpression(), !49785)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 97 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.pre.i = load i8, ptr %i.d, align 8, !dbg !49840, !range !4239, !alias.scope !49827
  %i.i = trunc nuw i8 %.pre.i to i1, !dbg !49840
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49828), !dbg !49841
    #dbg_value(ptr %0, !4245, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !49791)
  br i1 %i.i, label %bb.e, label %bb.a, !dbg !49842

bb.a:                                             ; preds = %.peel.begin
    #dbg_value(ptr %i.f, !4245, !DIExpression(), !49791)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !49843, !noalias !49829
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.f), !dbg !49844, !noalias !49830
  %i.j = load i8, ptr %i.a, align 8, !dbg !49843, !range !4251, !noalias !49829, !noundef !2044
  switch i8 %i.j, label %bb.c [
    i8 2, label %bb.d
    i8 0, label %bb.b
  ], !dbg !49845, !prof !4252

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.g, align 1, !dbg !49846, !noalias !49829, !noundef !2044 ; 2 uses
    #dbg_value(i8 %i.k, !4248, !DIExpression(), !49794)
  store i8 1, ptr %i.d, align 8, !dbg !49847, !alias.scope !49831
  store i8 %i.k, ptr %i.e, align 1, !dbg !49847, !alias.scope !49831
  br label %bb.d, !dbg !49848

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !dbg !49849, !noalias !49829, !nonnull !2044, !noundef !2044
    #dbg_value(ptr %i.l, !4247, !DIExpression(), !49795)
  %i.m = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.l), !dbg !49850, !noalias !49830
  br label %bb.d, !dbg !49851

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.n = phi ptr [ undef, %bb.b ], [ %i.m, %bb.c ], [ undef, %bb.a ]
  %i.o = phi i8 [ %i.k, %bb.b ], [ undef, %bb.c ], [ undef, %bb.a ]
  %i.p = phi i1 [ true, %bb.b ], [ true, %bb.c ], [ false, %bb.a ]
  %.sink.i.i.peel = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !49851, !noalias !49829
  br label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.i.peel, !dbg !49851

bb.e:                                             ; preds = %.peel.begin
  %i.q = load i8, ptr %i.e, align 1, !dbg !49852, !alias.scope !49831, !noundef !2044
  br label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.i.peel, !dbg !49853

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.i.peel: ; preds = %bb.e, %bb.d
  %i.r = phi ptr [ undef, %bb.e ], [ %i.n, %bb.d ]
  %i.s = phi i8 [ %i.q, %bb.e ], [ %i.o, %bb.d ]  ; 2 uses
  %i.t = phi i1 [ true, %bb.e ], [ %i.p, %bb.d ]  ; 2 uses
  %i.u = phi i1 [ false, %bb.e ], [ %.sink.i.i.peel, %bb.d ] ; 2 uses
  %.not.i.peel = xor i1 %i.u, true, !dbg !49854
  %or.cond.i.peel = and i1 %i.t, %.not.i.peel, !dbg !49854
  br i1 %or.cond.i.peel, label %bb.f, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE16parse_whitespaceCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !49854

bb.f:                                             ; preds = %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.i.peel
  switch i8 %i.s, label %.loopexit [
    i8 32, label %.peel.next.preheader
    i8 10, label %.peel.next.preheader
    i8 9, label %.peel.next.preheader
    i8 13, label %.peel.next.preheader
    i8 58, label %.loopexit13
  ], !dbg !49854, !prof !5998

.peel.next.preheader:                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  br label %.peel.next, !dbg !49845

.peel.next:                                       ; preds = %.peel.next.backedge, %.peel.next.preheader
  store i8 0, ptr %i.d, align 8, !dbg !49855, !alias.scope !49832
  call void @llvm.experimental.noalias.scope.decl(metadata !49833), !dbg !49841
    #dbg_value(ptr %i.f, !4245, !DIExpression(), !49791)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !49843, !noalias !49834
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.f), !dbg !49844, !noalias !49830
  %i.v = load i8, ptr %i.a, align 8, !dbg !49843, !range !4251, !noalias !49834, !noundef !2044
  switch i8 %i.v, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.i.thread.thread [
    i8 2, label %.thread56
    i8 0, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.i
  ], !dbg !49845, !prof !4252

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.i.thread.thread: ; preds = %.peel.next
  %i.w = load ptr, ptr %i.h, align 8, !dbg !49849, !noalias !49834, !nonnull !2044, !noundef !2044
    #dbg_value(ptr %i.w, !4247, !DIExpression(), !49795)
  %i.x = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.w), !dbg !49850, !noalias !49830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !49851, !noalias !49834
  br label %bb.g, !dbg !49856

.thread56:                                        ; preds = %.peel.next
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !49851, !noalias !49834
  br label %bb.i, !dbg !49856

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.i: ; preds = %.peel.next
  %i.y = load i8, ptr %i.g, align 1, !dbg !49846, !noalias !49834, !noundef !2044 ; 2 uses
    #dbg_value(i8 %i.y, !4248, !DIExpression(), !49794)
  store i8 1, ptr %i.d, align 8, !dbg !49847, !alias.scope !49827
  store i8 %i.y, ptr %i.e, align 1, !dbg !49847, !alias.scope !49827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !49851, !noalias !49834
end_hunk_2
begin_hunk_3_@_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE18parse_object_colonCsaTqK2fWTXJW_11qlog_dancer:.peel.begin
    #dbg_value(i64 %.val4.i, !4265, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49805)
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val.i, i64 noundef %.val4.i), !dbg !49861, !noalias !49836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !49862
  br label %bb.j, !dbg !49863

.loopexit13:                                      ; preds = %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.i, %bb.f, %.thread
    #dbg_value(ptr %i.f, !4256, !DIExpression(), !49807)
  store i8 0, ptr %i.d, align 8, !dbg !49864, !alias.scope !49837
  br label %bb.j, !dbg !49865

.loopexit:                                        ; preds = %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.i, %bb.f, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !49866
  store i64 6, ptr %i.c, align 8, !dbg !49866
  call void @llvm.experimental.noalias.scope.decl(metadata !49838), !dbg !49867
    #dbg_value(ptr %0, !4260, !DIExpression(), !49813)
    #dbg_declare(ptr %i.c, !4264, !DIExpression(), !49814)
  %.val.i5 = load i64, ptr %i.f, align 8, !dbg !49868, !alias.scope !49838, !noundef !2044
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !49868
  %.val4.i6 = load i64, ptr %i.ac, align 8, !dbg !49868, !alias.scope !49838, !noundef !2044
    #dbg_value(i64 %.val.i5, !4265, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49815)
    #dbg_value(i64 %.val4.i6, !4265, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49815)
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.val.i5, i64 noundef %.val4.i6), !dbg !49869, !noalias !49838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !49870
  br label %bb.j, !dbg !49871

bb.j:                                             ; preds = %bb.i, %.loopexit13, %.loopexit, %bb.g
  %.sroa.0.1 = phi ptr [ %.lcssa3348, %bb.g ], [ null, %.loopexit13 ], [ %i.ad, %.loopexit ], [ %i.ab, %bb.i ], !dbg !49872
  ret ptr %.sroa.0.1, !dbg !49857
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE22parse_decimal_overflowCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !49877 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !49933, !DIExpression(), !49942)
    #dbg_value(ptr %1, !49943, !DIExpression(), !49950)
    #dbg_value(ptr %1, !49951, !DIExpression(), !49954)
    #dbg_value(ptr %1, !49943, !DIExpression(), !49956)
    #dbg_value(ptr %1, !49951, !DIExpression(), !49959)
    #dbg_value(ptr %1, !49960, !DIExpression(), !49963)
    #dbg_value(i1 %2, !49934, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !49942)
    #dbg_value(i64 %3, !49935, !DIExpression(), !49942)
    #dbg_value(i32 %4, !49936, !DIExpression(), !49942)
    #dbg_value(i8 0, !49964, !DIExpression(), !49970)
    #dbg_value(i8 0, !49964, !DIExpression(), !49972)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 97 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.pre = load i8, ptr %i.f, align 8, !dbg !49988, !range !4239, !alias.scope !49973
  %i.i = trunc nuw i8 %.pre to i1, !dbg !49988
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49973), !dbg !49989
    #dbg_value(ptr %i.e, !4245, !DIExpression(), !49891)
  br i1 %i.i, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread, label %bb.b, !dbg !49990

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread: ; preds = %bb.a
  %i.j = load i8, ptr %i.g, align 1, !dbg !49991, !alias.scope !49973, !noundef !2044
  br label %bb.e, !dbg !49992

bb.b:                                             ; preds = %.critedge, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !49993, !noalias !49975
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.e), !dbg !49994, !noalias !49976
  %i.k = load i8, ptr %i.d, align 8, !dbg !49993, !range !4251, !noalias !49975, !noundef !2044
  switch i8 %i.k, label %bb.d [
    i8 2, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread39
    i8 0, label %bb.c
  ], !dbg !49995, !prof !4252

bb.c:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.h, align 1, !dbg !49996, !noalias !49975, !noundef !2044 ; 2 uses
    #dbg_value(i8 %i.l, !4248, !DIExpression(), !49893)
  store i8 1, ptr %i.f, align 8, !dbg !49997, !alias.scope !49973
  store i8 %i.l, ptr %i.g, align 1, !dbg !49997, !alias.scope !49973
  br label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread39, !dbg !49998

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread39: ; preds = %bb.c, %bb.b
  %.sroa.10.0.ph = phi i8 [ undef, %bb.b ], [ %i.l, %bb.c ]
  %.sroa.6.0.ph = phi i1 [ false, %bb.b ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !49999, !noalias !49975
  br label %bb.e, !dbg !49992

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !50000
  %i.n = load ptr, ptr %i.m, align 8, !dbg !50000, !noalias !49975, !nonnull !2044, !noundef !2044
    #dbg_value(ptr %i.n, !4247, !DIExpression(), !49894)
  %i.o = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.n), !dbg !50001, !noalias !49976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !49999, !noalias !49975
    #dbg_value(ptr %i.o, !49938, !DIExpression(), !49977)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50002
  store ptr %i.o, ptr %i.p, align 8, !dbg !50002
  store i64 1, ptr %0, align 8, !dbg !50002
  br label %bb.s, !dbg !50003

bb.e:                                             ; preds = %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread39, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread
  %.sroa.6.138 = phi i1 [ true, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread ], [ %.sroa.6.0.ph, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread39 ]
  %.sroa.10.137 = phi i8 [ %i.j, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread ], [ %.sroa.10.0.ph, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread39 ]
    #dbg_value(i8 poison, !49965, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !49970)
    #dbg_value(i8 poison, !49965, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !49970)
  %i.q = add i8 %.sroa.10.137, -48, !dbg !50004
  %i.r = icmp ult i8 %i.q, 10, !dbg !50004
  %.sroa.04.0 = and i1 %.sroa.6.138, %i.r, !dbg !50004
  br i1 %.sroa.04.0, label %.critedge, label %bb.f, !dbg !50005

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !49979), !dbg !50006
    #dbg_value(ptr %i.e, !4245, !DIExpression(), !49898)
  %i.s = load i8, ptr %i.f, align 8, !dbg !50007, !range !4239, !alias.scope !49979, !noundef !2044
  %i.t = trunc nuw i8 %i.s to i1, !dbg !50007
  br i1 %i.t, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit26.thread, label %bb.g, !dbg !50008

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit26.thread: ; preds = %bb.f
  %i.u = load i8, ptr %i.g, align 1, !dbg !50009, !alias.scope !49979, !noundef !2044
  br label %bb.j, !dbg !50010

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !50011, !noalias !49980
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.e), !dbg !50012, !noalias !49981
  %i.v = load i8, ptr %i.c, align 8, !dbg !50011, !range !4251, !noalias !49980, !noundef !2044
  switch i8 %i.v, label %bb.i [
    i8 2, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit26.thread50
    i8 0, label %bb.h
  ], !dbg !50013, !prof !4252

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 1, !dbg !50014
  %i.x = load i8, ptr %i.w, align 1, !dbg !50014, !noalias !49980, !noundef !2044 ; 2 uses
    #dbg_value(i8 %i.x, !4248, !DIExpression(), !49900)
  store i8 1, ptr %i.f, align 8, !dbg !50015, !alias.scope !49979
  store i8 %i.x, ptr %i.g, align 1, !dbg !50015, !alias.scope !49979
  br label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit26.thread50, !dbg !50016

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit26.thread50: ; preds = %bb.h, %bb.g
  %.sroa.629.0.ph = phi i8 [ 0, %bb.g ], [ %i.x, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !50017, !noalias !49980
  br label %bb.j, !dbg !50010

.critedge:                                        ; preds = %bb.e
    #dbg_value(ptr %i.e, !4256, !DIExpression(), !49902)
  store i8 0, ptr %i.f, align 8, !dbg !50018, !alias.scope !49982
  call void @llvm.experimental.noalias.scope.decl(metadata !49973), !dbg !49989
    #dbg_value(ptr %i.e, !4245, !DIExpression(), !49891)
  br label %bb.b, !dbg !49990

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !50019
  %i.z = load ptr, ptr %i.y, align 8, !dbg !50019, !noalias !49980, !nonnull !2044, !noundef !2044
    #dbg_value(ptr %i.z, !4247, !DIExpression(), !49905)
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.z), !dbg !50020, !noalias !49981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !50017, !noalias !49980
    #dbg_value(ptr %i.aa, !49940, !DIExpression(), !49983)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50021
  store ptr %i.aa, ptr %i.ab, align 8, !dbg !50021
  store i64 1, ptr %0, align 8, !dbg !50021
  br label %bb.s, !dbg !50003

bb.j:                                             ; preds = %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit26.thread50, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit26.thread
  %.sroa.629.149 = phi i8 [ %i.u, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit26.thread ], [ %.sroa.629.0.ph, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit26.thread50 ]
    #dbg_value(i8 poison, !49965, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !49972)
    #dbg_value(i8 poison, !49965, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !49972)
  switch i8 %.sroa.629.149, label %bb.k [
    i8 101, label %bb.r
    i8 69, label %bb.r
  ], !dbg !50022

bb.k:                                             ; preds = %bb.j
  %.val = load i64, ptr %i.e, align 8, !dbg !50023 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !50023
  %.val24 = load i64, ptr %i.ac, align 8, !dbg !50023 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49985), !dbg !50023
    #dbg_value(i32 %4, !6980, !DIExpression(), !49909)
    #dbg_value(ptr poison, !6983, !DIExpression(), !49909)
    #dbg_value(i1 %2, !6984, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !49909)
    #dbg_value(i64 %3, !6985, !DIExpression(), !49909)
  %i.ad = uitofp i64 %3 to double, !dbg !50024    ; 2 uses
    #dbg_value(double %i.ad, !6986, !DIExpression(), !49910)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49912)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49914)
    #dbg_value(i64 309, !6989, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49912)
    #dbg_value(i64 309, !7011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49914)
    #dbg_value(i32 %4, !7018, !DIExpression(), !49916)
  %.sroa.012.07.i = call i32 @llvm.abs.i32(i32 %4, i1 false), !dbg !50025 ; 2 uses
  %i.ae = icmp ult i32 %.sroa.012.07.i, 309, !dbg !50026
  br i1 %i.ae, label %._crit_edge.i, label %.lr.ph.i, !dbg !50026

.lr.ph.i:                                         ; preds = %bb.k, %bb.m
  %.sroa.0.09.i = phi i32 [ %i.am, %bb.m ], [ %4, %bb.k ] ; 2 uses
  %.sroa.04.08.i = phi double [ %i.al, %bb.m ], [ %i.ad, %bb.k ] ; 3 uses
    #dbg_value(i32 %.sroa.0.09.i, !6980, !DIExpression(), !49909)
    #dbg_value(double %.sroa.04.08.i, !6986, !DIExpression(), !49910)
  %i.af = fcmp oeq double %.sroa.04.08.i, 0.000000e+00, !dbg !50027
  br i1 %i.af, label %.loopexit.i, label %bb.l, !dbg !50027

._crit_edge.i:                                    ; preds = %bb.m, %bb.k
  %.sroa.04.0.lcssa.i = phi double [ %i.ad, %bb.k ], [ %i.al, %bb.m ], !dbg !50028 ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %4, %bb.k ], [ %i.am, %bb.m ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.07.i, %bb.k ], [ %.sroa.012.0.i, %bb.m ], !dbg !50025
  %i.ag = zext nneg i32 %.sroa.012.0.lcssa.i to i64, !dbg !50029
    #dbg_value(i32 %.sroa.012.0.lcssa.i, !7006, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !49912)
    #dbg_value(i32 %.sroa.012.0.lcssa.i, !7016, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !49914)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, i64 %i.ag, !dbg !50030
  %i.ai = load double, ptr %i.ah, align 8, !dbg !50031, !noalias !49985, !noundef !2044 ; 2 uses
    #dbg_value(double %i.ai, !6987, !DIExpression(), !49917)
  %i.aj = icmp sgt i32 %.sroa.0.0.lcssa.i, -1, !dbg !50032
  br i1 %i.aj, label %bb.p, label %bb.o, !dbg !50032

bb.l:                                             ; preds = %.lr.ph.i
  %i.ak = icmp sgt i32 %.sroa.0.09.i, -1, !dbg !50033
  br i1 %i.ak, label %bb.n, label %bb.m, !dbg !50033, !prof !5512

bb.m:                                             ; preds = %bb.l
  %i.al = fdiv double %.sroa.04.08.i, 1.000000e+308, !dbg !50034 ; 2 uses
    #dbg_value(double %i.al, !6986, !DIExpression(), !49910)
  %i.am = add nsw i32 %.sroa.0.09.i, 308, !dbg !50035 ; 3 uses
    #dbg_value(i32 %i.am, !6980, !DIExpression(), !49909)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49912)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49914)
    #dbg_value(i64 309, !6989, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49912)
    #dbg_value(i64 309, !7011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49914)
    #dbg_value(i32 %i.am, !7018, !DIExpression(), !49916)
  %.sroa.012.0.i = call i32 @llvm.abs.i32(i32 %i.am, i1 true), !dbg !50025 ; 2 uses
    #dbg_value(i32 %.sroa.012.0.i, !7006, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !49912)
    #dbg_value(i32 %.sroa.012.0.i, !7016, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !49914)
  %i.an = icmp samesign ult i32 %.sroa.012.0.i, 309, !dbg !50026
  br i1 %i.an, label %._crit_edge.i, label %.lr.ph.i, !dbg !50026

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !50036, !noalias !49985
  store i64 14, ptr %i.a, align 8, !dbg !50036, !noalias !49985
    #dbg_value(ptr poison, !6954, !DIExpression(), !49919)
    #dbg_declare(ptr %i.a, !6956, !DIExpression(), !49920)
    #dbg_value(i64 %.val, !6957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49921)
    #dbg_value(i64 %.val24, !6957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49921)
  %i.ao = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val, i64 noundef %.val24), !dbg !50037, !noalias !49986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !50038, !noalias !49985
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50039
  store ptr %i.ao, ptr %i.ap, align 8, !dbg !50039, !alias.scope !49985
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !50040

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.p, %bb.o
  %.sroa.04.1.i = phi double [ %i.at, %bb.p ], [ %i.as, %bb.o ], [ %.sroa.04.08.i, %.lr.ph.i ], !dbg !50028 ; 2 uses
    #dbg_value(double %.sroa.04.1.i, !6986, !DIExpression(), !49910)
  %i.aq = fneg double %.sroa.04.1.i, !dbg !50041
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.aq, !dbg !50041
    #dbg_value(double %.sroa.04.2.i, !6986, !DIExpression(), !49910)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50042
  store double %.sroa.04.2.i, ptr %i.ar, align 8, !dbg !50042, !alias.scope !49985
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !50043

bb.o:                                             ; preds = %._crit_edge.i
  %i.as = fdiv double %.sroa.04.0.lcssa.i, %i.ai, !dbg !50044
    #dbg_value(double %i.as, !6986, !DIExpression(), !49910)
  br label %.loopexit.i, !dbg !50045

bb.p:                                             ; preds = %._crit_edge.i
  %i.at = fmul double %.sroa.04.0.lcssa.i, %i.ai, !dbg !50046 ; 2 uses
    #dbg_value(double %i.at, !6986, !DIExpression(), !49910)
    #dbg_value(double %i.at, !7025, !DIExpression(), !49925)
  %i.au = call double @llvm.fabs.f64(double %i.at), !dbg !50047
  %i.av = fcmp oeq double %i.au, +inf, !dbg !50047
  br i1 %i.av, label %bb.q, label %.loopexit.i, !dbg !50048, !prof !5512

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !50049, !noalias !49985
  store i64 14, ptr %i.b, align 8, !dbg !50049, !noalias !49985
    #dbg_value(ptr poison, !6954, !DIExpression(), !49927)
    #dbg_declare(ptr %i.b, !6956, !DIExpression(), !49928)
    #dbg_value(i64 %.val, !6957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49929)
    #dbg_value(i64 %.val24, !6957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49929)
  %i.aw = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val, i64 noundef %.val24), !dbg !50050, !noalias !49987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !50051, !noalias !49985
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50052
  store ptr %i.aw, ptr %i.ax, align 8, !dbg !50052, !alias.scope !49985
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !50040

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.n, %.loopexit.i, %bb.q
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.q ], [ 1, %bb.n ], !dbg !50053
  store i64 %storemerge.i, ptr %0, align 8, !dbg !50053, !alias.scope !49985
  br label %bb.s, !dbg !50023

bb.r:                                             ; preds = %bb.j, %bb.j
  call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14parse_exponentCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4), !dbg !50054
  br label %bb.s, !dbg !50054

bb.s:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, %bb.r, %bb.i, %bb.d
  ret void, !dbg !50055
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE23parse_exponent_overflowCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !50058 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %1, !50086, !DIExpression(), !50093)
    #dbg_value(ptr %1, !50094, !DIExpression(), !50099)
    #dbg_value(ptr %1, !50100, !DIExpression(), !50103)
    #dbg_value(ptr %1, !50104, !DIExpression(), !50107)
    #dbg_value(i1 %2, !50087, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !50093)
    #dbg_value(i1 %3, !50088, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !50093)
    #dbg_value(i1 %4, !50089, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !50093)
    #dbg_value(i8 0, !50108, !DIExpression(), !50113)
  %.not = xor i1 %4, true, !dbg !50123
  %brmerge = or i1 %3, %.not, !dbg !50123
  br i1 %brmerge, label %.preheader, label %bb.d, !dbg !50123, !prof !50114

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 97 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.pre = load i8, ptr %i.c, align 8, !dbg !50124, !range !4239, !alias.scope !50115
  %i.g = trunc nuw i8 %.pre to i1, !dbg !50124
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50115), !dbg !50125
    #dbg_value(ptr %1, !4245, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !50069)
  br i1 %i.g, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread, label %bb.b, !dbg !50126

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread: ; preds = %.preheader
  %i.h = load i8, ptr %i.d, align 1, !dbg !50127, !alias.scope !50115, !noundef !2044
  br label %bb.g, !dbg !50128

bb.b:                                             ; preds = %.critedge, %.preheader
    #dbg_value(ptr %i.e, !4245, !DIExpression(), !50069)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !50129, !noalias !50117
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.e), !dbg !50130, !noalias !50118
  %i.i = load i8, ptr %i.a, align 8, !dbg !50129, !range !4251, !noalias !50117, !noundef !2044
  switch i8 %i.i, label %bb.f [
    i8 2, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread21
    i8 0, label %bb.c
  ], !dbg !50131, !prof !4252

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.f, align 1, !dbg !50132, !noalias !50117, !noundef !2044 ; 2 uses
    #dbg_value(i8 %i.j, !4248, !DIExpression(), !50071)
  store i8 1, ptr %i.c, align 8, !dbg !50133, !alias.scope !50115
  store i8 %i.j, ptr %i.d, align 1, !dbg !50133, !alias.scope !50115
  br label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread21, !dbg !50134

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread21: ; preds = %bb.c, %bb.b
  %.sroa.10.0.ph = phi i8 [ undef, %bb.b ], [ %i.j, %bb.c ]
  %.sroa.6.0.ph = phi i1 [ false, %bb.b ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !50135, !noalias !50117
  br label %bb.g, !dbg !50128

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !50136
  store i64 14, ptr %i.b, align 8, !dbg !50136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50119), !dbg !50137
    #dbg_value(ptr %1, !6954, !DIExpression(), !50075)
    #dbg_declare(ptr %i.b, !6956, !DIExpression(), !50076)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !50138
  %.val.i = load i64, ptr %i.k, align 8, !dbg !50139, !alias.scope !50119, !noundef !2044
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !50139
  %.val4.i = load i64, ptr %i.l, align 8, !dbg !50139, !alias.scope !50119, !noundef !2044
    #dbg_value(i64 %.val.i, !6957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50077)
    #dbg_value(i64 %.val4.i, !6957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50077)
  %i.m = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val.i, i64 noundef %.val4.i), !dbg !50140, !noalias !50119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !50141
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50142
  store ptr %i.m, ptr %i.n, align 8, !dbg !50142
  br label %bb.e, !dbg !50143

bb.e:                                             ; preds = %bb.h, %bb.f, %bb.d
  %.sink = phi i64 [ 0, %bb.h ], [ 1, %bb.f ], [ 1, %bb.d ]
  store i64 %.sink, ptr %0, align 8, !dbg !50093
  ret void, !dbg !50144

bb.f:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !50145
  %i.p = load ptr, ptr %i.o, align 8, !dbg !50145, !noalias !50117, !nonnull !2044, !noundef !2044
    #dbg_value(ptr %i.p, !4247, !DIExpression(), !50078)
  %i.q = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.p), !dbg !50146, !noalias !50118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !50135, !noalias !50117
    #dbg_value(ptr %i.q, !50091, !DIExpression(), !50121)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50147
  store ptr %i.q, ptr %i.r, align 8, !dbg !50147
  br label %bb.e, !dbg !50143

bb.g:                                             ; preds = %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread21, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread
  %.sroa.6.120 = phi i1 [ true, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread ], [ %.sroa.6.0.ph, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread21 ]
  %.sroa.10.119 = phi i8 [ %i.h, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread ], [ %.sroa.10.0.ph, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread21 ]
    #dbg_value(i8 poison, !50109, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !50113)
    #dbg_value(i8 poison, !50109, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !50113)
  %i.s = add i8 %.sroa.10.119, -48, !dbg !50148
  %i.t = icmp ult i8 %i.s, 10, !dbg !50148
  %.sroa.03.0 = and i1 %.sroa.6.120, %i.t, !dbg !50148
  br i1 %.sroa.03.0, label %.critedge, label %bb.h, !dbg !50149

bb.h:                                             ; preds = %bb.g
  %. = select i1 %2, double 0.000000e+00, double -0.000000e+00, !dbg !50150
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50151
  store double %., ptr %i.u, align 8, !dbg !50151
  br label %bb.e, !dbg !50144

.critedge:                                        ; preds = %bb.g
    #dbg_value(ptr %1, !4256, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !50080)
  store i8 0, ptr %i.c, align 8, !dbg !50152, !alias.scope !50122
  call void @llvm.experimental.noalias.scope.decl(metadata !50115), !dbg !50125
    #dbg_value(ptr %1, !4245, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !50069)
  br label %bb.b, !dbg !50126
}
end_hunk_3
begin_hunk_4_@_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsaTqK2fWTXJW_11qlog_dancer:bb.a
  %i.l = phi i64 [ %i.o, %bb.b ], [ %.promoted, %bb.a ] ; 3 uses
    #dbg_value(ptr %.sroa.01.024, !6302, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50493)
    #dbg_value(ptr %.sroa.01.024, !6302, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !50493)
    #dbg_value(ptr %.sroa.01.024, !6304, !DIExpression(), !50502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50503), !dbg !50510
    #dbg_value(ptr %0, !6320, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !50452)
  %exitcond.not = icmp eq i64 %i.l, %umax, !dbg !50511
  br i1 %exitcond.not, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit, label %bb.c, !dbg !50511

bb.c:                                             ; preds = %.lr.ph
    #dbg_value(ptr %i.g, !6320, !DIExpression(), !50452)
    #dbg_value(ptr %.sroa.01.024, !6302, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !50493)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l, !dbg !50512
  %i.n = load i8, ptr %i.m, align 1, !dbg !50512, !noalias !50504, !noundef !2044
    #dbg_value(i8 %i.n, !6321, !DIExpression(), !50454)
  %i.o = add i64 %i.l, 1, !dbg !50513             ; 2 uses
  store i64 %i.o, ptr %i.d, align 8, !dbg !50513, !alias.scope !50503
    #dbg_value(i8 %i.n, !6307, !DIExpression(), !50505)
  %i.p = load i8, ptr %.sroa.01.024, align 1, !dbg !50514, !noundef !2044
  %.not = icmp eq i8 %i.n, %i.p, !dbg !50515
  br i1 %.not, label %bb.b, label %bb.d, !dbg !50515, !prof !5413

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !50516
  store i64 5, ptr %i.b, align 8, !dbg !50516
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !50517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !50518
  br label %.loopexit, !dbg !50519

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !50520
  store i64 9, ptr %i.a, align 8, !dbg !50520
  %i.r = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !50521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !50522
  br label %.loopexit, !dbg !50523

.loopexit:                                        ; preds = %bb.b, %bb.a, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit, %bb.d
  %.sroa.0.1 = phi ptr [ %i.r, %bb.d ], [ %i.q, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit ], [ null, %bb.a ], [ null, %bb.b ], !dbg !50524
  ret ptr %.sroa.0.1, !dbg !50525
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12parse_numberCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #0 !dbg !50533 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 15 uses
    #dbg_value(ptr %1, !50625, !DIExpression(), !50636)
    #dbg_value(ptr %1, !50637, !DIExpression(), !50642)
    #dbg_value(ptr %1, !50643, !DIExpression(), !50646)
    #dbg_value(i1 %2, !50626, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !50636)
    #dbg_value(i64 %3, !50627, !DIExpression(), !50636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50647), !dbg !50699
    #dbg_value(ptr %1, !4469, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !50541)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !50700 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !50700, !alias.scope !50647, !noundef !2044 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !50701
  %i.j = load i64, ptr %i.i, align 8, !dbg !50701, !alias.scope !50647, !noundef !2044 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j, !dbg !50700
  br i1 %i.k, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, !dbg !50700

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !50702
    #dbg_value(ptr %i.l, !4469, !DIExpression(), !50541)
  %i.m = load ptr, ptr %i.l, align 8, !dbg !50703, !alias.scope !50647, !nonnull !2044, !noundef !2044 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h, !dbg !50703
  %i.o = load i8, ptr %i.n, align 1, !dbg !50703, !noalias !50648, !noundef !2044
  switch i8 %i.o, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread [
    i8 46, label %bb.b
    i8 101, label %bb.p
    i8 69, label %bb.p
  ], !dbg !50704

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread: ; preds = %bb.a, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  br i1 %2, label %bb.s, label %bb.v, !dbg !50705

bb.b:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !50706
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50650), !dbg !50707
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50651), !dbg !50707
    #dbg_value(i64 %3, !50652, !DIExpression(), !50560)
    #dbg_value(ptr %1, !50654, !DIExpression(), !50560)
    #dbg_value(ptr %1, !50670, !DIExpression(), !50563)
    #dbg_value(ptr %1, !50672, !DIExpression(), !50570)
    #dbg_value(ptr %1, !50678, !DIExpression(), !50573)
    #dbg_value(ptr %1, !50670, !DIExpression(), !50575)
    #dbg_value(ptr %1, !50678, !DIExpression(), !50577)
    #dbg_value(ptr %1, !50672, !DIExpression(), !50579)
    #dbg_value(ptr %1, !50678, !DIExpression(), !50581)
    #dbg_value(i1 %2, !50655, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !50560)
    #dbg_value(i32 0, !50656, !DIExpression(), !50560)
    #dbg_value(i64 -1, !50662, !DIExpression(), !50582)
    #dbg_value(ptr %1, !4472, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !50584)
  %i.p = add nuw i64 %i.h, 1, !dbg !50708         ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !dbg !50708, !alias.scope !50681
    #dbg_value(i32 0, !50657, !DIExpression(), !50587)
  %i.q = icmp ult i64 %i.p, %i.j, !dbg !50709
  br i1 %i.q, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i, label %.thread.thread.i, !dbg !50709

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i: ; preds = %bb.b
    #dbg_value(ptr %1, !4472, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !50584)
  %i.r = trunc i64 %i.h to i32, !dbg !50709
  %i.s = add i32 %i.r, 1, !dbg !50709
  %i.t = trunc i64 %i.j to i32, !dbg !50709
  %i.u = sub i32 %i.s, %i.t, !dbg !50709          ; 2 uses
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i, !dbg !50709

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i: ; preds = %bb.n, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i
  %.sroa.0.078.i = phi i64 [ %3, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bg, %bb.n ] ; 6 uses
  %.sroa.07.077.i = phi i32 [ 0, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bh, %bb.n ] ; 5 uses
  %i.v = phi i64 [ %i.p, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.be, %bb.n ] ; 2 uses
    #dbg_value(i64 %.sroa.0.078.i, !50652, !DIExpression(), !50560)
    #dbg_value(i32 %.sroa.07.077.i, !50657, !DIExpression(), !50587)
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.v, !dbg !50710
  %i.x = load i8, ptr %i.w, align 1, !dbg !50710, !noalias !50682, !noundef !2044 ; 2 uses
    #dbg_value(i8 poison, !50660, !DIExpression(), !50592)
  %i.y = add i8 %i.x, -48, !dbg !50711            ; 3 uses
  %or.cond.i = icmp ult i8 %i.y, 10, !dbg !50711
  br i1 %or.cond.i, label %bb.d, label %bb.c, !dbg !50711

bb.c:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i
  %i.z = icmp eq i32 %.sroa.07.077.i, 0, !dbg !50712
  br i1 %i.z, label %bb.e, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.i, !dbg !50712

.thread.i:                                        ; preds = %bb.n
    #dbg_value(i8 poison, !50660, !DIExpression(), !50592)
  %i.aa = icmp eq i32 %i.u, 0, !dbg !50712
  br i1 %i.aa, label %.thread.thread.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i, !dbg !50712

bb.d:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i
  %i.ab = zext nneg i8 %i.y to i64, !dbg !50713
    #dbg_value(i64 %i.ab, !50661, !DIExpression(), !50593)
  %i.ac = icmp ugt i64 %.sroa.0.078.i, 1844674407370955160, !dbg !50714
  br i1 %i.ac, label %bb.m, label %bb.n, !dbg !50714

bb.e:                                             ; preds = %bb.c
    #dbg_value(ptr %1, !4469, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !50595)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !50715, !noalias !50683
  store i64 13, ptr %i.d, align 8, !dbg !50715, !noalias !50683
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !dbg !50716, !noalias !50650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !50717, !noalias !50683
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !50718
  store ptr %i.ad, ptr %i.ae, align 8, !dbg !50718, !alias.scope !50650
  store i64 1, ptr %i.f, align 8, !dbg !50718, !alias.scope !50650
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !50719

.thread.thread.i:                                 ; preds = %.thread.i, %bb.b
    #dbg_value(ptr %1, !4469, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !50595)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !50720, !noalias !50683
  store i64 5, ptr %i.c, align 8, !dbg !50720, !noalias !50683
  %i.af = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !50721, !noalias !50650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !50722, !noalias !50683
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !50723
  store ptr %i.af, ptr %i.ag, align 8, !dbg !50723, !alias.scope !50650
  store i64 1, ptr %i.f, align 8, !dbg !50723, !alias.scope !50650
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !50724

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.i: ; preds = %bb.c
    #dbg_value(i32 %.sroa.07.077.i, !50666, !DIExpression(), !50596)
    #dbg_value(ptr %1, !4469, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !50598)
  switch i8 %i.x, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ], !dbg !50725

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.i, %.thread.i
  %.sroa.07.076.i = phi i32 [ %i.u, %.thread.i ], [ %.sroa.07.077.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.i ] ; 3 uses
  %.sroa.0.073.i = phi i64 [ %i.bg, %.thread.i ], [ %.sroa.0.078.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50685), !dbg !50726
    #dbg_value(i32 %.sroa.07.076.i, !7050, !DIExpression(), !50602)
    #dbg_value(ptr %1, !7052, !DIExpression(), !50602)
    #dbg_value(i1 %2, !7053, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !50602)
    #dbg_value(i64 %.sroa.0.073.i, !7054, !DIExpression(), !50602)
  %i.ah = uitofp i64 %.sroa.0.073.i to double, !dbg !50727 ; 2 uses
    #dbg_value(double %i.ah, !7055, !DIExpression(), !50603)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7058, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50605)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7061, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50607)
    #dbg_value(i64 309, !7058, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50605)
    #dbg_value(i64 309, !7061, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50607)
    #dbg_value(i32 %.sroa.07.076.i, !7064, !DIExpression(), !50609)
  %.sroa.012.028.i.i = tail call i32 @llvm.abs.i32(i32 %.sroa.07.076.i, i1 false), !dbg !50728 ; 2 uses
  %i.ai = icmp ult i32 %.sroa.012.028.i.i, 309, !dbg !50729
  br i1 %i.ai, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !50729

.lr.ph.i.i:                                       ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i, %bb.g
  %.sroa.0.030.i.i = phi i32 [ %i.aq, %bb.g ], [ %.sroa.07.076.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i ] ; 2 uses
  %.sroa.04.029.i.i = phi double [ %i.ap, %bb.g ], [ %i.ah, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i ] ; 3 uses
    #dbg_value(i32 %.sroa.0.030.i.i, !7050, !DIExpression(), !50602)
    #dbg_value(double %.sroa.04.029.i.i, !7055, !DIExpression(), !50603)
  %i.aj = fcmp oeq double %.sroa.04.029.i.i, 0.000000e+00, !dbg !50730
  br i1 %i.aj, label %.loopexit.i.i, label %bb.f, !dbg !50730

._crit_edge.i.i:                                  ; preds = %bb.g, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i
  %.sroa.04.0.lcssa.i.i = phi double [ %i.ah, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i ], [ %i.ap, %bb.g ], !dbg !50731 ; 2 uses
  %.sroa.0.0.lcssa.i.i = phi i32 [ %.sroa.07.076.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i ], [ %i.aq, %bb.g ]
  %.sroa.012.0.lcssa.i.i = phi i32 [ %.sroa.012.028.i.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i ], [ %.sroa.012.0.i.i, %bb.g ], !dbg !50728
  %i.ak = zext nneg i32 %.sroa.012.0.lcssa.i.i to i64, !dbg !50732
    #dbg_value(i32 %.sroa.012.0.lcssa.i.i, !7059, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !50605)
    #dbg_value(i32 %.sroa.012.0.lcssa.i.i, !7062, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !50607)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, i64 %i.ak, !dbg !50733
  %i.am = load double, ptr %i.al, align 8, !dbg !50734, !noalias !50686, !noundef !2044 ; 2 uses
    #dbg_value(double %i.am, !7056, !DIExpression(), !50611)
  %i.an = icmp sgt i32 %.sroa.0.0.lcssa.i.i, -1, !dbg !50735
  br i1 %i.an, label %bb.j, label %bb.i, !dbg !50735

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = icmp sgt i32 %.sroa.0.030.i.i, -1, !dbg !50736
  br i1 %i.ao, label %bb.h, label %bb.g, !dbg !50736, !prof !5512

bb.g:                                             ; preds = %bb.f
  %i.ap = fdiv double %.sroa.04.029.i.i, 1.000000e+308, !dbg !50737 ; 2 uses
    #dbg_value(double %i.ap, !7055, !DIExpression(), !50603)
  %i.aq = add nsw i32 %.sroa.0.030.i.i, 308, !dbg !50738 ; 3 uses
    #dbg_value(i32 %i.aq, !7050, !DIExpression(), !50602)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7058, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50605)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7061, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50607)
    #dbg_value(i64 309, !7058, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50605)
    #dbg_value(i64 309, !7061, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50607)
    #dbg_value(i32 %i.aq, !7064, !DIExpression(), !50609)
  %.sroa.012.0.i.i = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true), !dbg !50728 ; 2 uses
    #dbg_value(i32 %.sroa.012.0.i.i, !7059, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !50605)
    #dbg_value(i32 %.sroa.012.0.i.i, !7062, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !50607)
  %i.ar = icmp samesign ult i32 %.sroa.012.0.i.i, 309, !dbg !50729
  br i1 %i.ar, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !50729

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !50739, !noalias !50686
  store i64 14, ptr %i.a, align 8, !dbg !50739, !noalias !50686
  %i.as = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !50740, !noalias !50687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !50741, !noalias !50686
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !50742
  store ptr %i.as, ptr %i.at, align 8, !dbg !50742, !alias.scope !50687
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit.i, !dbg !50743

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %bb.j, %bb.i
  %.sroa.04.1.i.i = phi double [ %i.ax, %bb.j ], [ %i.aw, %bb.i ], [ %.sroa.04.029.i.i, %.lr.ph.i.i ], !dbg !50731 ; 2 uses
    #dbg_value(double %.sroa.04.1.i.i, !7055, !DIExpression(), !50603)
  %i.au = fneg double %.sroa.04.1.i.i, !dbg !50744
  %.sroa.04.2.i.i = select i1 %2, double %.sroa.04.1.i.i, double %i.au, !dbg !50744
    #dbg_value(double %.sroa.04.2.i.i, !7055, !DIExpression(), !50603)
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !50745
  store double %.sroa.04.2.i.i, ptr %i.av, align 8, !dbg !50745, !alias.scope !50687
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit.i, !dbg !50746

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.aw = fdiv double %.sroa.04.0.lcssa.i.i, %i.am, !dbg !50747
    #dbg_value(double %i.aw, !7055, !DIExpression(), !50603)
  br label %.loopexit.i.i, !dbg !50748

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ax = fmul double %.sroa.04.0.lcssa.i.i, %i.am, !dbg !50749 ; 2 uses
    #dbg_value(double %i.ax, !7055, !DIExpression(), !50603)
    #dbg_value(double %i.ax, !7067, !DIExpression(), !50613)
  %i.ay = tail call double @llvm.fabs.f64(double %i.ax), !dbg !50750
  %i.az = fcmp oeq double %i.ay, +inf, !dbg !50750
  br i1 %i.az, label %bb.k, label %.loopexit.i.i, !dbg !50751, !prof !5512

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !50752, !noalias !50686
  store i64 14, ptr %i.b, align 8, !dbg !50752, !noalias !50686
  %i.ba = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !50753, !noalias !50687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !50754, !noalias !50686
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !50755
  store ptr %i.ba, ptr %i.bb, align 8, !dbg !50755, !alias.scope !50687
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit.i, !dbg !50743

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit.i: ; preds = %bb.k, %.loopexit.i.i, %bb.h
  %storemerge.i.i = phi i64 [ 0, %.loopexit.i.i ], [ 1, %bb.k ], [ 1, %bb.h ], !dbg !50756
  store i64 %storemerge.i.i, ptr %i.f, align 8, !dbg !50756, !alias.scope !50687
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !50757

bb.l:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.i
  call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.078.i, i32 noundef %.sroa.07.077.i), !dbg !50758
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !50759

bb.m:                                             ; preds = %bb.d
  %i.bc = icmp ne i64 %.sroa.0.078.i, 1844674407370955161, !dbg !50760
  %i.bd = icmp samesign ugt i8 %i.y, 5
  %or.cond1.i = or i1 %i.bc, %i.bd, !dbg !50760
  br i1 %or.cond1.i, label %bb.o, label %bb.n, !dbg !50760, !prof !5517

bb.n:                                             ; preds = %bb.m, %bb.d
    #dbg_value(ptr %1, !4472, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !50615)
  %i.be = add nuw i64 %i.v, 1, !dbg !50761        ; 3 uses
  store i64 %i.be, ptr %i.g, align 8, !dbg !50761, !alias.scope !50688
  %i.bf = mul nuw i64 %.sroa.0.078.i, 10, !dbg !50762
  %i.bg = add i64 %i.bf, %i.ab, !dbg !50763       ; 2 uses
    #dbg_value(i64 %i.bg, !50652, !DIExpression(), !50560)
  %i.bh = add i32 %.sroa.07.077.i, -1, !dbg !50764
    #dbg_value(i32 %i.bh, !50657, !DIExpression(), !50587)
    #dbg_value(ptr %1, !4469, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !50618)
  %exitcond.not.i = icmp eq i64 %i.be, %i.j, !dbg !50709
  br i1 %exitcond.not.i, label %.thread.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i, !dbg !50709

bb.o:                                             ; preds = %bb.m
    #dbg_value(i32 %.sroa.07.077.i, !50663, !DIExpression(), !50619)
  call void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE22parse_decimal_overflowCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.078.i, i32 noundef %.sroa.07.077.i) #23, !dbg !50765
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !50766

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.e, %.thread.thread.i, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit.i, %bb.l, %bb.o
  %i.bi = load i64, ptr %i.f, align 8, !dbg !50706, !range !5968, !noundef !2044
  %i.bj = trunc nuw i64 %i.bi to i1, !dbg !50704
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !50767 ; 2 uses
  br i1 %i.bj, label %bb.q, label %bb.r, !dbg !50704

bb.p:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !50768
  call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef 0), !dbg !50769
  %i.bl = load i64, ptr %i.e, align 8, !dbg !50768, !range !5968, !noundef !2044
  %i.bm = trunc nuw i64 %i.bl to i1, !dbg !50704
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !50767 ; 2 uses
  br i1 %i.bm, label %bb.t, label %bb.u, !dbg !50704

bb.q:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsaTqK2fWTXJW_11qlog_dancer.exit
  %i.bo = load ptr, ptr %i.bk, align 8, !dbg !50770, !nonnull !2044, !align !5087, !noundef !2044
    #dbg_value(ptr %i.bo, !50631, !DIExpression(), !50690)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50771
  store ptr %i.bo, ptr %i.bp, align 8, !dbg !50771
  store i64 -1, ptr %0, align 8, !dbg !50771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !50772
  br label %bb.x, !dbg !50773

bb.r:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsaTqK2fWTXJW_11qlog_dancer.exit
  %i.bq = load i64, ptr %i.bk, align 8, !dbg !50774, !noundef !2044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !50772
  br label %bb.s, !dbg !50772

bb.s:                                             ; preds = %bb.v, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, %bb.w, %bb.u, %bb.r
  %.sroa.9.0 = phi i64 [ %i.bt, %bb.u ], [ %i.by, %bb.w ], [ %3, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread ], [ %i.bq, %bb.r ], [ %i.bu, %bb.v ], !dbg !50636
  %.sroa.0.0 = phi i64 [ 0, %bb.u ], [ 0, %bb.w ], [ 1, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread ], [ 0, %bb.r ], [ 2, %bb.v ], !dbg !50636
  store i64 %.sroa.0.0, ptr %0, align 8, !dbg !50775
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50775
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !50775
  br label %bb.x, !dbg !50776

bb.t:                                             ; preds = %bb.p
  %i.br = load ptr, ptr %i.bn, align 8, !dbg !50770, !nonnull !2044, !align !5087, !noundef !2044
    #dbg_value(ptr %i.br, !50633, !DIExpression(), !50692)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50777
  store ptr %i.br, ptr %i.bs, align 8, !dbg !50777
  store i64 -1, ptr %0, align 8, !dbg !50777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !50778
  br label %bb.x, !dbg !50773

bb.u:                                             ; preds = %bb.p
  %i.bt = load i64, ptr %i.bn, align 8, !dbg !50774, !noundef !2044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !50778
  br label %bb.s, !dbg !50778

bb.v:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread
    #dbg_value(i64 %3, !50693, !DIExpression(), !50696)
  %i.bu = sub i64 0, %3, !dbg !50779              ; 2 uses
    #dbg_value(i64 %i.bu, !50634, !DIExpression(), !50698)
  %i.bv = icmp sgt i64 %i.bu, -1, !dbg !50780
  br i1 %i.bv, label %bb.w, label %bb.s, !dbg !50780

bb.w:                                             ; preds = %bb.v
  %i.bw = uitofp i64 %3 to double, !dbg !50781
  %i.bx = fneg double %i.bw, !dbg !50782
  %i.by = bitcast double %i.bx to i64, !dbg !50783
  br label %bb.s, !dbg !50784

bb.x:                                             ; preds = %bb.q, %bb.t, %bb.s
  ret void, !dbg !50776
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) unnamed_addr #0 !dbg !50800 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %1, !50833, !DIExpression(), !50851)
    #dbg_value(ptr %1, !50852, !DIExpression(), !50855)
    #dbg_value(ptr %1, !50856, !DIExpression(), !50863)
    #dbg_value(ptr %1, !50864, !DIExpression(), !50867)
    #dbg_value(ptr %1, !50856, !DIExpression(), !50869)
    #dbg_value(ptr %1, !50864, !DIExpression(), !50872)
    #dbg_value(ptr %1, !50873, !DIExpression(), !50876)
    #dbg_value(i1 %2, !50834, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !50851)
    #dbg_value(i64 -1, !50847, !DIExpression(), !50877)
    #dbg_value(i8 0, !50878, !DIExpression(), !50884)
    #dbg_value(i8 0, !50878, !DIExpression(), !50886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50887), !dbg !50902
    #dbg_value(ptr %1, !6320, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !50815)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !50903 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !50903, !alias.scope !50887, !noundef !2044 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !50904
  %i.h = load i64, ptr %i.g, align 8, !dbg !50904, !alias.scope !50887, !noundef !2044 ; 4 uses
  %i.i = icmp ult i64 %i.f, %i.h, !dbg !50903
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !50903

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !50905
    #dbg_value(ptr %i.j, !6320, !DIExpression(), !50815)
  %i.k = load ptr, ptr %i.j, align 8, !dbg !50906, !alias.scope !50887, !nonnull !2044, !noundef !2044 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f, !dbg !50906
  %i.m = load i8, ptr %i.l, align 1, !dbg !50906, !noalias !50888, !noundef !2044 ; 3 uses
end_hunk_4
begin_hunk_5_@_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCsaTqK2fWTXJW_11qlog_dancer:bb.a

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i: ; preds = %.preheader.i, %bb.l
  %i.cc = phi i64 [ %i.ch, %bb.l ], [ %i.bx, %.preheader.i ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cc, !dbg !51426
  %i.ce = load i8, ptr %i.cd, align 1, !dbg !51426, !noalias !51346, !noundef !2044
    #dbg_value(i8 1, !51324, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !51165)
    #dbg_value(i8 poison, !51324, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !51165)
  %i.cf = add i8 %i.ce, -48, !dbg !51427
  %i.cg = icmp ult i8 %i.cf, 10, !dbg !51427
  br i1 %i.cg, label %bb.l, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !51428

bb.l:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i
    #dbg_value(ptr %0, !4472, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !51190)
  %i.ch = add nuw i64 %i.cc, 1, !dbg !51429       ; 3 uses
  store i64 %i.ch, ptr %i.f, align 8, !dbg !51429, !alias.scope !51347
    #dbg_value(ptr %0, !4469, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !51193)
  %exitcond.not.i = icmp eq i64 %i.ch, %i.i, !dbg !51421
  br i1 %exitcond.not.i, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsaTqK2fWTXJW_11qlog_dancer.exit, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i, !dbg !51421

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsaTqK2fWTXJW_11qlog_dancer.exit.loopexit89: ; preds = %.peel.next.i, %.peel.next.i.preheader
  store i64 %i.i, ptr %i.f, align 8, !dbg !51376, !alias.scope !51267
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !51430

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.e, %bb.l, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i, %bb.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i.i, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsaTqK2fWTXJW_11qlog_dancer.exit.loopexit89, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i, %.preheader.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i.i, %.preheader.i.i, %.loopexit.i, %.thread.thread.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit56, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread, %bb.d
  %.sroa.0.3 = phi ptr [ %i.x, %bb.d ], [ null, %.preheader.i ], [ null, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit56 ], [ %i.aa, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread ], [ null, %bb.i ], [ null, %.loopexit.i ], [ null, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsaTqK2fWTXJW_11qlog_dancer.exit.loopexit89 ], [ %i.at, %.thread.thread.i ], [ %i.bh, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i.i ], [ null, %.preheader.i.i ], [ null, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread ], [ %i.cb, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i ], [ null, %bb.l ], [ null, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i.i ], [ null, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i ], [ null, %bb.e ], !dbg !51431
  ret ptr %.sroa.0.3, !dbg !51430
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 !dbg !51448 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %1, !51501, !DIExpression(), !51522)
    #dbg_value(ptr %1, !51523, !DIExpression(), !51526)
    #dbg_value(ptr %1, !51527, !DIExpression(), !51534)
    #dbg_value(ptr %1, !51535, !DIExpression(), !51538)
    #dbg_value(ptr %1, !51523, !DIExpression(), !51540)
    #dbg_value(ptr %1, !51523, !DIExpression(), !51542)
    #dbg_value(ptr %1, !51543, !DIExpression(), !51546)
    #dbg_value(ptr %1, !51527, !DIExpression(), !51548)
    #dbg_value(ptr %1, !51535, !DIExpression(), !51551)
    #dbg_value(ptr %1, !51523, !DIExpression(), !51553)
    #dbg_value(i1 %2, !51502, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !51522)
    #dbg_value(i64 %3, !51503, !DIExpression(), !51522)
    #dbg_value(i32 %4, !51504, !DIExpression(), !51522)
    #dbg_value(i32 %4, !51554, !DIExpression(), !51558)
    #dbg_value(i32 %4, !51559, !DIExpression(), !51563)
    #dbg_value(i32 2147483647, !51518, !DIExpression(), !51564)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !51586 ; 2 uses
    #dbg_value(ptr %i.e, !4472, !DIExpression(), !51460)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !51587 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !51587, !alias.scope !51565, !noundef !2044 ; 2 uses
  %i.h = add i64 %i.g, 1, !dbg !51587             ; 5 uses
  store i64 %i.h, ptr %i.f, align 8, !dbg !51587, !alias.scope !51565
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51566), !dbg !51588
    #dbg_value(ptr %i.e, !4469, !DIExpression(), !51466)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !51589
  %i.j = load i64, ptr %i.i, align 8, !dbg !51589, !alias.scope !51566, !noundef !2044 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j, !dbg !51590
  br i1 %i.k, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, !dbg !51590

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %i.e, align 8, !dbg !51591, !alias.scope !51566, !nonnull !2044, !noundef !2044
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h, !dbg !51591
  %i.n = load i8, ptr %i.m, align 1, !dbg !51591, !noalias !51567, !noundef !2044
  switch i8 %i.n, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread [
    i8 43, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split
    i8 45, label %bb.b
  ], !dbg !51592

bb.b:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
    #dbg_value(ptr %i.e, !4472, !DIExpression(), !51469)
    #dbg_value(i8 0, !51505, !DIExpression(), !51569)
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split, !dbg !51593

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, %bb.b
  %.sroa.0.0.ph = phi i1 [ false, %bb.b ], [ true, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit ]
  %i.o = add i64 %i.g, 2, !dbg !51594             ; 2 uses
  store i64 %i.o, ptr %i.f, align 8, !dbg !51594
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, !dbg !51595

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split, %bb.a, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  %i.p = phi i64 [ %i.h, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit ], [ %i.h, %bb.a ], [ %i.o, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split ], !dbg !51596 ; 3 uses
  %.sroa.0.0 = phi i1 [ true, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit ], [ true, %bb.a ], [ %.sroa.0.0.ph, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split ], !dbg !51522 ; 2 uses
    #dbg_value(i8 poison, !51505, !DIExpression(), !51569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51571), !dbg !51595
    #dbg_value(ptr %i.e, !6320, !DIExpression(), !51473)
  %i.q = icmp ult i64 %i.p, %i.j, !dbg !51596
  br i1 %i.q, label %bb.c, label %bb.d, !dbg !51596

bb.c:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread
  %i.r = load ptr, ptr %i.e, align 8, !dbg !51597, !alias.scope !51571, !nonnull !2044, !noundef !2044 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p, !dbg !51597
  %i.t = load i8, ptr %i.s, align 1, !dbg !51597, !noalias !51572, !noundef !2044
    #dbg_value(i8 %i.t, !6321, !DIExpression(), !51475)
  %i.u = add nuw i64 %i.p, 1, !dbg !51598         ; 3 uses
  store i64 %i.u, ptr %i.f, align 8, !dbg !51598, !alias.scope !51571
    #dbg_value(i8 %i.t, !51508, !DIExpression(), !51573)
    #dbg_value(i8 %i.t, !51513, !DIExpression(), !51574)
  %i.v = add i8 %i.t, -48, !dbg !51599            ; 2 uses
  %or.cond = icmp ult i8 %i.v, 10, !dbg !51599
  br i1 %or.cond, label %bb.f, label %bb.e, !dbg !51599, !prof !5460

bb.d:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !51600
  store i64 5, ptr %i.d, align 8, !dbg !51600
  %i.w = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !dbg !51601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !51602
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !51603
  store ptr %i.w, ptr %i.x, align 8, !dbg !51603
  store i64 1, ptr %0, align 8, !dbg !51604
  br label %bb.q, !dbg !51605

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !51606
  store i64 13, ptr %i.c, align 8, !dbg !51606
  %i.y = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !51607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !51608
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !51609
  store ptr %i.y, ptr %i.z, align 8, !dbg !51609
  store i64 1, ptr %0, align 8, !dbg !51609
  br label %bb.q, !dbg !51610

bb.f:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.v to i32, !dbg !51611   ; 2 uses
    #dbg_value(i32 %i.aa, !51560, !DIExpression(), !51563)
    #dbg_value(i32 %i.aa, !51555, !DIExpression(), !51558)
    #dbg_value(i32 %i.aa, !51512, !DIExpression(), !51576)
  %i.ab = icmp ult i64 %i.u, %i.j, !dbg !51612
  br i1 %i.ab, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread, !dbg !51612

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45: ; preds = %bb.f, %bb.s
  %.sroa.08.071 = phi i32 [ %i.bj, %bb.s ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ac = phi i64 [ %i.ag, %bb.s ], [ %i.u, %bb.f ] ; 2 uses
    #dbg_value(i32 %.sroa.08.071, !51560, !DIExpression(), !51563)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac, !dbg !51613
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !51613, !noalias !51577, !noundef !2044
    #dbg_value(i8 poison, !51516, !DIExpression(), !51578)
  %i.af = add i8 %i.ae, -48, !dbg !51614          ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10, !dbg !51614
  br i1 %or.cond1, label %bb.g, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread, !dbg !51614

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45, %bb.s, %bb.f
  %.sroa.08.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.08.071, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45 ], !dbg !51573 ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h, !dbg !51615

bb.g:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45
    #dbg_value(ptr %i.e, !4472, !DIExpression(), !51481)
  %i.ag = add i64 %i.ac, 1, !dbg !51616           ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !dbg !51616, !alias.scope !51579
  %i.ah = zext nneg i8 %i.af to i32, !dbg !51617
    #dbg_value(i32 %i.ah, !51517, !DIExpression(), !51580)
  %i.ai = icmp sgt i32 %.sroa.08.071, 214748363, !dbg !51618
  br i1 %i.ai, label %bb.r, label %bb.s, !dbg !51618

bb.h:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread
  %i.aj = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa), !dbg !51619
    #dbg_value(i32 %i.aj, !51520, !DIExpression(), !51581)
  br label %bb.j, !dbg !51620

bb.i:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread
  %i.ak = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa), !dbg !51621
    #dbg_value(i32 %i.ak, !51520, !DIExpression(), !51581)
  br label %bb.j, !dbg !51620

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.015.0 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ], !dbg !51576 ; 3 uses
    #dbg_value(i32 %.sroa.015.0, !51520, !DIExpression(), !51581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51582), !dbg !51622
    #dbg_value(i32 %.sroa.015.0, !7050, !DIExpression(), !51487)
    #dbg_value(ptr %1, !7052, !DIExpression(), !51487)
    #dbg_value(i1 %2, !7053, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !51487)
    #dbg_value(i64 %3, !7054, !DIExpression(), !51487)
  %i.al = uitofp i64 %3 to double, !dbg !51623    ; 2 uses
    #dbg_value(double %i.al, !7055, !DIExpression(), !51488)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7058, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51490)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7061, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51492)
    #dbg_value(i64 309, !7058, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51490)
    #dbg_value(i64 309, !7061, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51492)
    #dbg_value(i32 %.sroa.015.0, !7064, !DIExpression(), !51494)
  %.sroa.012.028.i = tail call i32 @llvm.abs.i32(i32 %.sroa.015.0, i1 false), !dbg !51624 ; 2 uses
  %i.am = icmp ult i32 %.sroa.012.028.i, 309, !dbg !51625
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i, !dbg !51625

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.030.i = phi i32 [ %i.au, %bb.l ], [ %.sroa.015.0, %bb.j ] ; 2 uses
  %.sroa.04.029.i = phi double [ %i.at, %bb.l ], [ %i.al, %bb.j ] ; 3 uses
    #dbg_value(i32 %.sroa.0.030.i, !7050, !DIExpression(), !51487)
    #dbg_value(double %.sroa.04.029.i, !7055, !DIExpression(), !51488)
  %i.an = fcmp oeq double %.sroa.04.029.i, 0.000000e+00, !dbg !51626
  br i1 %i.an, label %.loopexit.i, label %bb.k, !dbg !51626

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.al, %bb.j ], [ %i.at, %bb.l ], !dbg !51627 ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.015.0, %bb.j ], [ %i.au, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.028.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ], !dbg !51624
  %i.ao = zext nneg i32 %.sroa.012.0.lcssa.i to i64, !dbg !51628
    #dbg_value(i32 %.sroa.012.0.lcssa.i, !7059, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !51490)
    #dbg_value(i32 %.sroa.012.0.lcssa.i, !7062, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !51492)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, i64 %i.ao, !dbg !51629
  %i.aq = load double, ptr %i.ap, align 8, !dbg !51630, !noalias !51583, !noundef !2044 ; 2 uses
    #dbg_value(double %i.aq, !7056, !DIExpression(), !51496)
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1, !dbg !51631
  br i1 %i.ar, label %bb.o, label %bb.n, !dbg !51631

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.030.i, -1, !dbg !51632
  br i1 %i.as, label %bb.m, label %bb.l, !dbg !51632, !prof !5512

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.029.i, 1.000000e+308, !dbg !51633 ; 2 uses
    #dbg_value(double %i.at, !7055, !DIExpression(), !51488)
  %i.au = add nsw i32 %.sroa.0.030.i, 308, !dbg !51634 ; 3 uses
    #dbg_value(i32 %i.au, !7050, !DIExpression(), !51487)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7058, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51490)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7061, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51492)
    #dbg_value(i64 309, !7058, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51490)
    #dbg_value(i64 309, !7061, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51492)
    #dbg_value(i32 %i.au, !7064, !DIExpression(), !51494)
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true), !dbg !51624 ; 2 uses
    #dbg_value(i32 %.sroa.012.0.i, !7059, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !51490)
    #dbg_value(i32 %.sroa.012.0.i, !7062, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !51492)
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309, !dbg !51625
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i, !dbg !51625

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !51635, !noalias !51583
  store i64 14, ptr %i.a, align 8, !dbg !51635, !noalias !51583
  %i.aw = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !51636, !noalias !51582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !51637, !noalias !51583
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !51638
  store ptr %i.aw, ptr %i.ax, align 8, !dbg !51638, !alias.scope !51582
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !51639

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.029.i, %.lr.ph.i ], !dbg !51627 ; 2 uses
    #dbg_value(double %.sroa.04.1.i, !7055, !DIExpression(), !51488)
  %i.ay = fneg double %.sroa.04.1.i, !dbg !51640
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay, !dbg !51640
    #dbg_value(double %.sroa.04.2.i, !7055, !DIExpression(), !51488)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !51641
  store double %.sroa.04.2.i, ptr %i.az, align 8, !dbg !51641, !alias.scope !51582
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !51642

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq, !dbg !51643
    #dbg_value(double %i.ba, !7055, !DIExpression(), !51488)
  br label %.loopexit.i, !dbg !51644

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq, !dbg !51645 ; 2 uses
    #dbg_value(double %i.bb, !7055, !DIExpression(), !51488)
    #dbg_value(double %i.bb, !7067, !DIExpression(), !51498)
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb), !dbg !51646
  %i.bd = fcmp oeq double %i.bc, +inf, !dbg !51646
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !dbg !51647, !prof !5512

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !51648, !noalias !51583
  store i64 14, ptr %i.b, align 8, !dbg !51648, !noalias !51583
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !51649, !noalias !51582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !51650, !noalias !51583
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !51651
  store ptr %i.be, ptr %i.bf, align 8, !dbg !51651, !alias.scope !51582
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !51639

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ], !dbg !51652
  store i64 %storemerge.i, ptr %0, align 8, !dbg !51652, !alias.scope !51582
  br label %bb.q, !dbg !51653

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit
  ret void, !dbg !51653

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.071, 214748364, !dbg !51654
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh, !dbg !51654
  br i1 %or.cond2, label %bb.t, label %bb.s, !dbg !51654, !prof !5517

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.071, 10, !dbg !51655
  %i.bj = add i32 %i.bi, %i.ah, !dbg !51656       ; 2 uses
    #dbg_value(i32 %i.bj, !51560, !DIExpression(), !51563)
    #dbg_value(i32 %i.bj, !51555, !DIExpression(), !51558)
    #dbg_value(i32 %i.bj, !51512, !DIExpression(), !51576)
    #dbg_value(ptr %i.e, !4469, !DIExpression(), !51499)
  %exitcond.not = icmp eq i64 %i.ag, %i.j, !dbg !51612
  br i1 %exitcond.not, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45, !dbg !51612

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0, !dbg !51657
    #dbg_value(i1 %i.bk, !51519, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !51584)
  tail call void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE23parse_exponent_overflowCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0) #23, !dbg !51658
  br label %bb.q, !dbg !51659
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((1, 2)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #4 !dbg !769 {
bb.a:
    #dbg_value(ptr %1, !4449, !DIExpression(), !51669)
    #dbg_value(ptr %1, !4457, !DIExpression(), !51671)
    #dbg_value(ptr %1, !4460, !DIExpression(), !51673)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !51674, !noundef !2044 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.d = icmp ult i64 %.promoted, %i.c, !dbg !51678
  br i1 %i.d, label %.lr.ph, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !51678

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !51674, !nonnull !2044, !noundef !2044
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.g, align 1, !alias.scope !51675
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  br label %bb.b, !dbg !51678

._RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge: ; preds = %bb.c
  store i8 %i.l, ptr %i.h, align 2, !dbg !51679, !alias.scope !51675
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !51678

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %._RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !51679
  store i8 0, ptr %i.i, align 1, !dbg !51679, !alias.scope !51675
  br label %bb.d, !dbg !51680

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.j = phi i64 [ %.promoted, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51675), !dbg !51681
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51674), !dbg !51681
    #dbg_value(ptr %i.e, !4469, !DIExpression(), !51664)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j, !dbg !51682
  %i.l = load i8, ptr %i.k, align 1, !dbg !51682, !noalias !51676, !noundef !2044 ; 3 uses
  switch i8 %i.l, label %.loopexit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ], !dbg !51680

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
    #dbg_value(ptr %1, !4472, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !51666)
  %i.m = add i64 %i.j, 1, !dbg !51683             ; 3 uses
  store i64 %i.m, ptr %i.a, align 8, !dbg !51683, !alias.scope !51677
    #dbg_value(ptr %1, !4469, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !51664)
  %exitcond.not = icmp eq i64 %i.m, %i.c, !dbg !51678
  br i1 %exitcond.not, label %._RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge, label %bb.b, !dbg !51678

.loopexit:                                        ; preds = %bb.b
  store i8 %i.l, ptr %i.h, align 2, !dbg !51679, !alias.scope !51675
  br label %bb.d, !dbg !51684

bb.d:                                             ; preds = %.loopexit, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  store i8 0, ptr %0, align 8, !dbg !51679
  ret void, !dbg !51684
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #2 !dbg !51695 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !51797, !DIExpression(), !51810)
    #dbg_value(ptr %0, !51811, !DIExpression(), !51816)
    #dbg_value(ptr %0, !51817, !DIExpression(), !51820)
    #dbg_value(ptr %0, !51821, !DIExpression(), !51825)
    #dbg_value(ptr %0, !51826, !DIExpression(), !51829)
    #dbg_value(ptr %0, !51826, !DIExpression(), !51831)
    #dbg_value(ptr %0, !51826, !DIExpression(), !51833)
    #dbg_value(ptr %0, !51826, !DIExpression(), !51835)
    #dbg_value(ptr %0, !51826, !DIExpression(), !51837)
    #dbg_value(ptr %0, !51821, !DIExpression(), !51839)
    #dbg_value(ptr %1, !51798, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51810)
    #dbg_value(ptr %2, !51798, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51810)
    #dbg_declare(ptr %i.m, !51803, !DIExpression(), !51840)
    #dbg_declare(ptr %i.l, !51805, !DIExpression(), !51841)
    #dbg_value(i8 1, !51822, !DIExpression(), !51825)
    #dbg_value(i8 0, !51822, !DIExpression(), !51839)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !51904 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51842), !dbg !51905
    #dbg_value(ptr %i.q, !4469, !DIExpression(), !51705)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !51906 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !dbg !51906, !alias.scope !51842, !noundef !2044 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !51907
end_hunk_5
