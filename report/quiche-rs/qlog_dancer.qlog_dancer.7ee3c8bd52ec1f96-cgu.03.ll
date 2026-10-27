Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.7ee3c8bd52ec1f96-cgu.03?download=true
inline.NumInlined: 1671
inline.NumDeleted: 535
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE13parse_decimalCsaTqK2fWTXJW_11qlog_dancer:bb.a

.thread106:                                       ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !48120, !noalias !48086
    #dbg_value(i8 -48, !48046, !DIExpression(), !48088)
  br label %.loopexit, !dbg !48121

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !48122
  %i.n = load ptr, ptr %i.m, align 8, !dbg !48122, !noalias !48086, !nonnull !2044, !noundef !2044
    #dbg_value(ptr %i.n, !4247, !DIExpression(), !47980)
  %i.o = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.n), !dbg !48123, !noalias !48087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !48120, !noalias !48086
    #dbg_value(ptr %i.o, !48045, !DIExpression(), !48089)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !48124
  store ptr %i.o, ptr %i.p, align 8, !dbg !48124
  store i64 1, ptr %0, align 8, !dbg !48124
  br label %bb.w, !dbg !48125

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.k, align 1, !dbg !48126, !noalias !48086, !noundef !2044 ; 2 uses
    #dbg_value(i8 %i.q, !4248, !DIExpression(), !47981)
  store i8 1, ptr %i.i, align 8, !dbg !48127, !alias.scope !48085
  store i8 %i.q, ptr %i.j, align 1, !dbg !48127, !alias.scope !48085
  %i.r = add i8 %i.q, -48, !dbg !48121            ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !48120, !noalias !48086
    #dbg_value(i8 %i.r, !48046, !DIExpression(), !48088)
  %or.cond = icmp ult i8 %i.r, 10, !dbg !48121
  br i1 %or.cond, label %bb.e, label %.loopexit, !dbg !48121

.loopexit:                                        ; preds = %bb.d, %.thread106
  %i.s = icmp eq i32 %.sroa.07.0, 0, !dbg !48128
  br i1 %i.s, label %bb.f, label %bb.h, !dbg !48128

bb.e:                                             ; preds = %bb.d
  %i.t = zext nneg i8 %i.r to i64, !dbg !48129
    #dbg_value(i64 %i.t, !48047, !DIExpression(), !48091)
  %i.u = icmp ugt i64 %.sroa.0.0, 1844674407370955160, !dbg !48130
  br i1 %i.u, label %bb.x, label %bb.y, !dbg !48130

bb.f:                                             ; preds = %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !48092), !dbg !48131
    #dbg_value(ptr %i.h, !4245, !DIExpression(), !47985)
  %i.v = load i8, ptr %i.i, align 8, !dbg !48132, !range !4239, !alias.scope !48092, !noundef !2044
  %i.w = trunc nuw i8 %i.v to i1, !dbg !48132
  br i1 %i.w, label %.thread, label %bb.g, !dbg !48133

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !48134, !noalias !48093
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.h), !dbg !48135, !noalias !48094
  %i.x = load i8, ptr %i.d, align 8, !dbg !48134, !range !4251, !noalias !48093, !noundef !2044
  switch i8 %i.x, label %bb.k [
    i8 2, label %bb.l
    i8 0, label %.thread87
  ], !dbg !48136, !prof !4252

.thread87:                                        ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 1, !dbg !48137
  %i.z = load i8, ptr %i.y, align 1, !dbg !48137, !noalias !48093, !noundef !2044
    #dbg_value(i8 %i.z, !4248, !DIExpression(), !47987)
  store i8 1, ptr %i.i, align 8, !dbg !48138, !alias.scope !48092
  store i8 %i.z, ptr %i.j, align 1, !dbg !48138, !alias.scope !48092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !48139, !noalias !48093
  br label %.thread, !dbg !48140

bb.h:                                             ; preds = %.loopexit
  %i.aa = add i32 %.sroa.07.0, %4, !dbg !48141    ; 4 uses
    #dbg_value(i32 %i.aa, !48052, !DIExpression(), !48096)
  call void @llvm.experimental.noalias.scope.decl(metadata !48097), !dbg !48142
    #dbg_value(ptr %i.h, !4245, !DIExpression(), !47991)
  %i.ab = load i8, ptr %i.i, align 8, !dbg !48143, !range !4239, !alias.scope !48097, !noundef !2044
  %i.ac = trunc nuw i8 %i.ab to i1, !dbg !48143
  br i1 %i.ac, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit44.thread, label %bb.i, !dbg !48144

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit44.thread: ; preds = %bb.h
  %i.ad = load i8, ptr %i.j, align 1, !dbg !48145, !alias.scope !48097, !noundef !2044
  br label %bb.n, !dbg !48146

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !48147, !noalias !48099
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.h), !dbg !48148, !noalias !48100
  %i.ae = load i8, ptr %i.c, align 8, !dbg !48147, !range !4251, !noalias !48099, !noundef !2044
  switch i8 %i.ae, label %bb.m [
    i8 2, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit44.thread81
    i8 0, label %bb.j
  ], !dbg !48149, !prof !4252

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 1, !dbg !48150
  %i.ag = load i8, ptr %i.af, align 1, !dbg !48150, !noalias !48099, !noundef !2044 ; 2 uses
    #dbg_value(i8 %i.ag, !4248, !DIExpression(), !47993)
  store i8 1, ptr %i.i, align 8, !dbg !48151, !alias.scope !48097
  store i8 %i.ag, ptr %i.j, align 1, !dbg !48151, !alias.scope !48097
  br label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit44.thread81, !dbg !48152

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit44.thread81: ; preds = %bb.j, %bb.i
  %.sroa.651.0.ph = phi i8 [ 0, %bb.i ], [ %i.ag, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !48153, !noalias !48099
  br label %bb.n, !dbg !48146

bb.k:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !48154
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !48154, !noalias !48093, !nonnull !2044, !noundef !2044
    #dbg_value(ptr %i.ai, !4247, !DIExpression(), !47994)
  %i.aj = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.ai), !dbg !48155, !noalias !48094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !48139, !noalias !48093
    #dbg_value(ptr %i.aj, !48051, !DIExpression(), !48101)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !48156
  store ptr %i.aj, ptr %i.ak, align 8, !dbg !48156
  store i64 1, ptr %0, align 8, !dbg !48156
  br label %bb.w, !dbg !48157

.thread:                                          ; preds = %bb.f, %.thread87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !48158
  store i64 13, ptr %i.g, align 8, !dbg !48158
  call void @llvm.experimental.noalias.scope.decl(metadata !48103), !dbg !48159
    #dbg_value(ptr %1, !4260, !DIExpression(), !47998)
    #dbg_declare(ptr %i.g, !4264, !DIExpression(), !47999)
  %.val.i = load i64, ptr %i.h, align 8, !dbg !48160, !alias.scope !48103, !noundef !2044
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !48160
  %.val4.i = load i64, ptr %i.al, align 8, !dbg !48160, !alias.scope !48103, !noundef !2044
    #dbg_value(i64 %.val.i, !4265, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48000)
    #dbg_value(i64 %.val4.i, !4265, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48000)
  %i.am = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %.val.i, i64 noundef %.val4.i), !dbg !48161, !noalias !48103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !48162
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !48163
  store ptr %i.am, ptr %i.an, align 8, !dbg !48163
  store i64 1, ptr %0, align 8, !dbg !48163
  br label %bb.w, !dbg !48164

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !48139, !noalias !48093
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !48165
  store i64 5, ptr %i.f, align 8, !dbg !48165
  call void @llvm.experimental.noalias.scope.decl(metadata !48104), !dbg !48166
    #dbg_value(ptr %1, !4260, !DIExpression(), !48004)
    #dbg_declare(ptr %i.f, !4264, !DIExpression(), !48005)
  %.val.i45 = load i64, ptr %i.h, align 8, !dbg !48167, !alias.scope !48104, !noundef !2044
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !48167
  %.val4.i46 = load i64, ptr %i.ao, align 8, !dbg !48167, !alias.scope !48104, !noundef !2044
    #dbg_value(i64 %.val.i45, !4265, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48006)
    #dbg_value(i64 %.val4.i46, !4265, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48006)
  %i.ap = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %.val.i45, i64 noundef %.val4.i46), !dbg !48168, !noalias !48104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !48169
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !48170
  store ptr %i.ap, ptr %i.aq, align 8, !dbg !48170
  store i64 1, ptr %0, align 8, !dbg !48170
  br label %bb.w, !dbg !48171

bb.m:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !48172
  %i.as = load ptr, ptr %i.ar, align 8, !dbg !48172, !noalias !48099, !nonnull !2044, !noundef !2044
    #dbg_value(ptr %i.as, !4247, !DIExpression(), !48007)
  %i.at = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.as), !dbg !48173, !noalias !48100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !48153, !noalias !48099
    #dbg_value(ptr %i.at, !48054, !DIExpression(), !48105)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !48174
  store ptr %i.at, ptr %i.au, align 8, !dbg !48174
  store i64 1, ptr %0, align 8, !dbg !48174
  br label %bb.w, !dbg !48175

bb.n:                                             ; preds = %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit44.thread81, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit44.thread
  %.sroa.651.179 = phi i8 [ %i.ad, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit44.thread ], [ %.sroa.651.0.ph, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit44.thread81 ]
  switch i8 %.sroa.651.179, label %bb.o [
    i8 101, label %bb.v
    i8 69, label %bb.v
  ], !dbg !48176

bb.o:                                             ; preds = %bb.n
  %.val = load i64, ptr %i.h, align 8, !dbg !48177 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !48177
  %.val40 = load i64, ptr %i.av, align 8, !dbg !48177 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48108), !dbg !48177
    #dbg_value(i32 %i.aa, !6980, !DIExpression(), !48011)
    #dbg_value(ptr poison, !6983, !DIExpression(), !48011)
    #dbg_value(i1 %2, !6984, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !48011)
    #dbg_value(i64 %.sroa.0.0, !6985, !DIExpression(), !48011)
  %i.aw = uitofp i64 %.sroa.0.0 to double, !dbg !48178 ; 2 uses
    #dbg_value(double %i.aw, !6986, !DIExpression(), !48012)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48014)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48016)
    #dbg_value(i64 309, !6989, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48014)
    #dbg_value(i64 309, !7011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48016)
    #dbg_value(i32 %i.aa, !7018, !DIExpression(), !48018)
  %.sroa.012.07.i = call i32 @llvm.abs.i32(i32 %i.aa, i1 false), !dbg !48179 ; 2 uses
  %i.ax = icmp ult i32 %.sroa.012.07.i, 309, !dbg !48180
  br i1 %i.ax, label %._crit_edge.i, label %.lr.ph.i, !dbg !48180

.lr.ph.i:                                         ; preds = %bb.o, %bb.q
  %.sroa.0.09.i = phi i32 [ %i.bf, %bb.q ], [ %i.aa, %bb.o ] ; 2 uses
  %.sroa.04.08.i = phi double [ %i.be, %bb.q ], [ %i.aw, %bb.o ] ; 3 uses
    #dbg_value(i32 %.sroa.0.09.i, !6980, !DIExpression(), !48011)
    #dbg_value(double %.sroa.04.08.i, !6986, !DIExpression(), !48012)
  %i.ay = fcmp oeq double %.sroa.04.08.i, 0.000000e+00, !dbg !48181
  br i1 %i.ay, label %.loopexit.i, label %bb.p, !dbg !48181

._crit_edge.i:                                    ; preds = %bb.q, %bb.o
  %.sroa.04.0.lcssa.i = phi double [ %i.aw, %bb.o ], [ %i.be, %bb.q ], !dbg !48182 ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %i.aa, %bb.o ], [ %i.bf, %bb.q ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.07.i, %bb.o ], [ %.sroa.012.0.i, %bb.q ], !dbg !48179
  %i.az = zext nneg i32 %.sroa.012.0.lcssa.i to i64, !dbg !48183
    #dbg_value(i64 %i.az, !7006, !DIExpression(), !48014)
    #dbg_value(i64 %i.az, !7016, !DIExpression(), !48016)
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, i64 %i.az, !dbg !48184
  %i.bb = load double, ptr %i.ba, align 8, !dbg !48185, !noalias !48108, !noundef !2044 ; 2 uses
    #dbg_value(double %i.bb, !6987, !DIExpression(), !48019)
  %i.bc = icmp sgt i32 %.sroa.0.0.lcssa.i, -1, !dbg !48186
  br i1 %i.bc, label %bb.t, label %bb.s, !dbg !48186

bb.p:                                             ; preds = %.lr.ph.i
  %i.bd = icmp sgt i32 %.sroa.0.09.i, -1, !dbg !48187
  br i1 %i.bd, label %bb.r, label %bb.q, !dbg !48187, !prof !5512

bb.q:                                             ; preds = %bb.p
  %i.be = fdiv double %.sroa.04.08.i, 1.000000e+308, !dbg !48188 ; 2 uses
    #dbg_value(double %i.be, !6986, !DIExpression(), !48012)
  %i.bf = add nsw i32 %.sroa.0.09.i, 308, !dbg !48189 ; 3 uses
    #dbg_value(i32 %i.bf, !6980, !DIExpression(), !48011)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48014)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48016)
    #dbg_value(i64 309, !6989, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48014)
    #dbg_value(i64 309, !7011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48016)
    #dbg_value(i32 %i.bf, !7018, !DIExpression(), !48018)
  %.sroa.012.0.i = call i32 @llvm.abs.i32(i32 %i.bf, i1 true), !dbg !48179 ; 2 uses
    #dbg_value(i32 %.sroa.012.0.i, !7006, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !48014)
    #dbg_value(i32 %.sroa.012.0.i, !7016, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !48016)
  %i.bg = icmp samesign ult i32 %.sroa.012.0.i, 309, !dbg !48180
  br i1 %i.bg, label %._crit_edge.i, label %.lr.ph.i, !dbg !48180

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !48190, !noalias !48108
  store i64 14, ptr %i.a, align 8, !dbg !48190, !noalias !48108
    #dbg_value(ptr poison, !6954, !DIExpression(), !48021)
    #dbg_declare(ptr %i.a, !6956, !DIExpression(), !48022)
    #dbg_value(i64 %.val, !6957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48023)
    #dbg_value(i64 %.val40, !6957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48023)
  %i.bh = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val, i64 noundef %.val40), !dbg !48191, !noalias !48109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !48192, !noalias !48108
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !48193
  store ptr %i.bh, ptr %i.bi, align 8, !dbg !48193, !alias.scope !48108
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !48194

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.t, %bb.s
  %.sroa.04.1.i = phi double [ %i.bm, %bb.t ], [ %i.bl, %bb.s ], [ %.sroa.04.08.i, %.lr.ph.i ], !dbg !48182 ; 2 uses
    #dbg_value(double %.sroa.04.1.i, !6986, !DIExpression(), !48012)
  %i.bj = fneg double %.sroa.04.1.i, !dbg !48195
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.bj, !dbg !48195
    #dbg_value(double %.sroa.04.2.i, !6986, !DIExpression(), !48012)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !48196
  store double %.sroa.04.2.i, ptr %i.bk, align 8, !dbg !48196, !alias.scope !48108
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !48197

bb.s:                                             ; preds = %._crit_edge.i
  %i.bl = fdiv double %.sroa.04.0.lcssa.i, %i.bb, !dbg !48198
    #dbg_value(double %i.bl, !6986, !DIExpression(), !48012)
  br label %.loopexit.i, !dbg !48199

bb.t:                                             ; preds = %._crit_edge.i
  %i.bm = fmul double %.sroa.04.0.lcssa.i, %i.bb, !dbg !48200 ; 2 uses
    #dbg_value(double %i.bm, !6986, !DIExpression(), !48012)
    #dbg_value(double %i.bm, !7025, !DIExpression(), !48027)
  %i.bn = call double @llvm.fabs.f64(double %i.bm), !dbg !48201
  %i.bo = fcmp oeq double %i.bn, +inf, !dbg !48201
  br i1 %i.bo, label %bb.u, label %.loopexit.i, !dbg !48202, !prof !5512

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !48203, !noalias !48108
  store i64 14, ptr %i.b, align 8, !dbg !48203, !noalias !48108
    #dbg_value(ptr poison, !6954, !DIExpression(), !48029)
    #dbg_declare(ptr %i.b, !6956, !DIExpression(), !48030)
    #dbg_value(i64 %.val, !6957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48031)
    #dbg_value(i64 %.val40, !6957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48031)
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val, i64 noundef %.val40), !dbg !48204, !noalias !48110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !48205, !noalias !48108
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !48206
  store ptr %i.bp, ptr %i.bq, align 8, !dbg !48206, !alias.scope !48108
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !48194

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.r, %.loopexit.i, %bb.u
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.u ], [ 1, %bb.r ], !dbg !48207
  store i64 %storemerge.i, ptr %0, align 8, !dbg !48207, !alias.scope !48108
  br label %bb.w, !dbg !48208

bb.v:                                             ; preds = %bb.n, %bb.n
  call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14parse_exponentCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.0, i32 noundef %i.aa), !dbg !48209
  br label %bb.w, !dbg !48210

bb.w:                                             ; preds = %bb.k, %.thread, %bb.l, %bb.c, %bb.z, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, %bb.v, %bb.m
  ret void, !dbg !48211

bb.x:                                             ; preds = %bb.e
  %i.br = icmp ne i64 %.sroa.0.0, 1844674407370955161, !dbg !48212
  %i.bs = icmp samesign ugt i8 %i.r, 5
  %or.cond1 = or i1 %i.br, %i.bs, !dbg !48212
  br i1 %or.cond1, label %bb.z, label %bb.y, !dbg !48212, !prof !5517

bb.y:                                             ; preds = %bb.x, %bb.e
    #dbg_value(ptr %i.h, !4256, !DIExpression(), !48035)
  store i8 0, ptr %i.i, align 8, !dbg !48213, !alias.scope !48111
  %i.bt = mul nuw i64 %.sroa.0.0, 10, !dbg !48214
  %i.bu = add i64 %i.bt, %i.t, !dbg !48215
    #dbg_value(i64 %i.bu, !48041, !DIExpression(), !48056)
  %i.bv = add i32 %.sroa.07.0, -1, !dbg !48216
    #dbg_value(i32 %i.bv, !48043, !DIExpression(), !48084)
  br label %bb.b, !dbg !48115

bb.z:                                             ; preds = %bb.x
  %i.bw = add i32 %.sroa.07.0, %4, !dbg !48217
    #dbg_value(i32 %i.bw, !48049, !DIExpression(), !48112)
  call void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE22parse_decimal_overflowCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.0, i32 noundef %i.bw) #23, !dbg !48218
  br label %bb.w, !dbg !48157
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE13parse_integerCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !48234 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 11 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %1, !48296, !DIExpression(), !48314)
    #dbg_value(ptr %1, !48315, !DIExpression(), !48318)
    #dbg_value(ptr %1, !48319, !DIExpression(), !48326)
    #dbg_value(ptr %1, !48327, !DIExpression(), !48330)
    #dbg_value(ptr %1, !48319, !DIExpression(), !48332)
    #dbg_value(ptr %1, !48327, !DIExpression(), !48335)
    #dbg_value(ptr %1, !48336, !DIExpression(), !48339)
    #dbg_value(i1 %2, !48297, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !48314)
    #dbg_value(i64 -1, !48310, !DIExpression(), !48340)
    #dbg_value(i8 0, !48341, !DIExpression(), !48347)
    #dbg_value(i8 0, !48341, !DIExpression(), !48349)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !48381 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48350), !dbg !48382
    #dbg_value(ptr %i.h, !6936, !DIExpression(), !48249)
    #dbg_value(ptr %i.h, !6943, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !48251)
    #dbg_value(ptr %i.h, !6949, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !48253)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !48383 ; 9 uses
  %i.j = load i8, ptr %i.i, align 8, !dbg !48383, !range !4239, !alias.scope !48350, !noundef !2044
  %i.k = trunc nuw i8 %i.j to i1, !dbg !48383
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 97, !dbg !48383 ; 6 uses
  %i.m = load i8, ptr %i.l, align 1, !dbg !48383, !alias.scope !48350
  store i8 0, ptr %i.i, align 8, !dbg !48384, !alias.scope !48350
  br i1 %i.k, label %.thread, label %bb.b, !dbg !48385

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !48386, !noalias !48351
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.h), !dbg !48387, !noalias !48352
  %i.n = load i8, ptr %i.c, align 8, !dbg !48386, !range !4251, !noalias !48351, !noundef !2044
  switch i8 %i.n, label %bb.c [
    i8 2, label %bb.d
    i8 0, label %.thread74
  ], !dbg !48388, !prof !4252

.thread74:                                        ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 1, !dbg !48389
  %i.p = load i8, ptr %i.o, align 1, !dbg !48389, !noalias !48351, !noundef !2044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !48390, !noalias !48351
  br label %.thread, !dbg !48391

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !48392
  %i.r = load ptr, ptr %i.q, align 8, !dbg !48392, !noalias !48351, !nonnull !2044, !noundef !2044
    #dbg_value(ptr %i.r, !6938, !DIExpression(), !48255)
  %i.s = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.r), !dbg !48393, !noalias !48352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !48390, !noalias !48351
    #dbg_value(ptr %i.s, !48300, !DIExpression(), !48354)
  br label %bb.e, !dbg !48394

.thread:                                          ; preds = %bb.a, %.thread74
  %.sroa.10.16473 = phi i8 [ %i.p, %.thread74 ], [ %i.m, %bb.a ] ; 3 uses
    #dbg_value(i8 %.sroa.10.16473, !48298, !DIExpression(), !48356)
    #dbg_value(i8 %.sroa.10.16473, !48304, !DIExpression(), !48357)
  %i.t = icmp eq i8 %.sroa.10.16473, 48, !dbg !48395
  br i1 %i.t, label %bb.f, label %bb.i, !dbg !48395

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !48390, !noalias !48351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !48396
  store i64 5, ptr %i.g, align 8, !dbg !48396
  call void @llvm.experimental.noalias.scope.decl(metadata !48358), !dbg !48397
    #dbg_value(ptr %1, !6954, !DIExpression(), !48259)
    #dbg_declare(ptr %i.g, !6956, !DIExpression(), !48260)
  %.val.i = load i64, ptr %i.h, align 8, !dbg !48398, !alias.scope !48358, !noundef !2044
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !48398
  %.val4.i = load i64, ptr %i.u, align 8, !dbg !48398, !alias.scope !48358, !noundef !2044
    #dbg_value(i64 %.val.i, !6957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48261)
    #dbg_value(i64 %.val4.i, !6957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48261)
  %i.v = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %.val.i, i64 noundef %.val4.i), !dbg !48399, !noalias !48358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !48400
  br label %bb.e, !dbg !48401

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink105 = phi ptr [ %i.v, %bb.d ], [ %i.s, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !48402
  store ptr %.sink105, ptr %i.w, align 8, !dbg !48402
  store i64 -1, ptr %0, align 8, !dbg !48402
  br label %bb.r, !dbg !48394

bb.f:                                             ; preds = %.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !48359), !dbg !48403
end_hunk_0
begin_hunk_1_@_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14parse_exponentCsaTqK2fWTXJW_11qlog_dancer:bb.a

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !49088, !noalias !49037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !49094
  store i64 5, ptr %i.g, align 8, !dbg !49094
  call void @llvm.experimental.noalias.scope.decl(metadata !49044), !dbg !49095
    #dbg_value(ptr %1, !6954, !DIExpression(), !48912)
    #dbg_declare(ptr %i.g, !6956, !DIExpression(), !48913)
  %.val.i = load i64, ptr %i.h, align 8, !dbg !49096, !alias.scope !49044, !noundef !2044
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !49096
  %.val4.i = load i64, ptr %i.z, align 8, !dbg !49096, !alias.scope !49044, !noundef !2044
    #dbg_value(i64 %.val.i, !6957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48914)
    #dbg_value(i64 %.val4.i, !6957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48914)
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %.val.i, i64 noundef %.val4.i), !dbg !49097, !noalias !49044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !49098
  br label %bb.i, !dbg !49099

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink = phi ptr [ %i.aa, %bb.h ], [ %i.x, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !49100
  store ptr %.sink, ptr %i.ab, align 8, !dbg !49100
  store i64 1, ptr %0, align 8, !dbg !49100
  br label %bb.z, !dbg !49092

bb.j:                                             ; preds = %.thread79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !49101
  store i64 13, ptr %i.f, align 8, !dbg !49101
  call void @llvm.experimental.noalias.scope.decl(metadata !49045), !dbg !49102
    #dbg_value(ptr %1, !6954, !DIExpression(), !48918)
    #dbg_declare(ptr %i.f, !6956, !DIExpression(), !48919)
  %.val.i43 = load i64, ptr %i.h, align 8, !dbg !49103, !alias.scope !49045, !noundef !2044
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !49103
  %.val4.i44 = load i64, ptr %i.ac, align 8, !dbg !49103, !alias.scope !49045, !noundef !2044
    #dbg_value(i64 %.val.i43, !6957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48920)
    #dbg_value(i64 %.val4.i44, !6957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48920)
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %.val.i43, i64 noundef %.val4.i44), !dbg !49104, !noalias !49045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !49105
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !49106
  store ptr %i.ad, ptr %i.ae, align 8, !dbg !49106
  store i64 1, ptr %0, align 8, !dbg !49106
  br label %bb.z, !dbg !49107

.peel.begin:                                      ; preds = %.thread79
  %i.af = zext nneg i8 %i.y to i32, !dbg !49108   ; 2 uses
    #dbg_value(i32 %i.af, !48973, !DIExpression(), !49046)
    #dbg_value(i32 %i.af, !49016, !DIExpression(), !49019)
    #dbg_value(i32 %i.af, !49021, !DIExpression(), !49024)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %.pre108 = load i8, ptr %i.i, align 8, !dbg !49109, !range !4239, !alias.scope !49047
  %i.ah = trunc nuw i8 %.pre108 to i1, !dbg !49109
    #dbg_value(i32 %i.af, !49021, !DIExpression(), !49024)
    #dbg_value(i32 %i.af, !49016, !DIExpression(), !49019)
    #dbg_value(i32 %i.af, !48973, !DIExpression(), !49046)
  call void @llvm.experimental.noalias.scope.decl(metadata !49048), !dbg !49110
    #dbg_value(ptr %i.h, !4245, !DIExpression(), !48926)
  br i1 %i.ah, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread.peel, label %bb.k, !dbg !49111

bb.k:                                             ; preds = %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !49112, !noalias !49049
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.h), !dbg !49113, !noalias !49050
  %i.ai = load i8, ptr %i.c, align 8, !dbg !49112, !range !4251, !noalias !49049, !noundef !2044
  switch i8 %i.ai, label %.loopexit [
    i8 2, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread92.peel
    i8 0, label %bb.l
  ], !dbg !49114, !prof !4252

bb.l:                                             ; preds = %bb.k
  %i.aj = load i8, ptr %i.ag, align 1, !dbg !49115, !noalias !49049, !noundef !2044 ; 2 uses
    #dbg_value(i8 %i.aj, !4248, !DIExpression(), !48928)
  store i8 1, ptr %i.i, align 8, !dbg !49116, !alias.scope !49048
  store i8 %i.aj, ptr %i.j, align 1, !dbg !49116, !alias.scope !49048
  br label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread92.peel, !dbg !49117

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread92.peel: ; preds = %bb.l, %bb.k
  %.sroa.654.0.ph.peel = phi i8 [ 0, %bb.k ], [ %i.aj, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !49118, !noalias !49049
  br label %bb.m, !dbg !49119

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread.peel: ; preds = %.peel.begin
  %i.ak = load i8, ptr %i.j, align 1, !dbg !49120, !alias.scope !49048, !noundef !2044
  br label %bb.m, !dbg !49119

bb.m:                                             ; preds = %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread.peel, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread92.peel
  %.sroa.654.190.peel = phi i8 [ %i.ak, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread.peel ], [ %.sroa.654.0.ph.peel, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread92.peel ]
    #dbg_value(i8 %.sroa.654.190.peel, !48977, !DIExpression(), !49052)
  %i.al = add i8 %.sroa.654.190.peel, -48, !dbg !49121 ; 2 uses
  %or.cond1.peel = icmp ult i8 %i.al, 10, !dbg !49121
  br i1 %or.cond1.peel, label %.peel.next, label %.loopexit133, !dbg !49121

.peel.next:                                       ; preds = %bb.m
    #dbg_value(ptr %i.h, !4256, !DIExpression(), !48930)
  store i8 0, ptr %i.i, align 8, !dbg !49122, !alias.scope !49053
  %i.am = zext nneg i8 %i.al to i32, !dbg !49123
    #dbg_value(i32 %i.am, !48978, !DIExpression(), !49054)
  %i.an = mul nuw nsw i32 %i.af, 10, !dbg !49124
  %i.ao = add nuw nsw i32 %i.an, %i.am, !dbg !49125
    #dbg_value(i32 %i.ao, !48973, !DIExpression(), !49046)
    #dbg_value(i32 %i.ao, !49016, !DIExpression(), !49019)
    #dbg_value(i32 %i.ao, !49021, !DIExpression(), !49024)
  br label %bb.n, !dbg !49126

bb.n:                                             ; preds = %bb.ab, %.peel.next
  %.sroa.08.0 = phi i32 [ %i.ao, %.peel.next ], [ %i.bz, %bb.ab ], !dbg !49042 ; 4 uses
    #dbg_value(i32 %.sroa.08.0, !49021, !DIExpression(), !49024)
    #dbg_value(i32 %.sroa.08.0, !49016, !DIExpression(), !49019)
    #dbg_value(i32 %.sroa.08.0, !48973, !DIExpression(), !49046)
  call void @llvm.experimental.noalias.scope.decl(metadata !49047), !dbg !49110
    #dbg_value(ptr %i.h, !4245, !DIExpression(), !48926)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !49112, !noalias !49055
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.h), !dbg !49113, !noalias !49050
  %i.ap = load i8, ptr %i.c, align 8, !dbg !49112, !range !4251, !noalias !49055, !noundef !2044
  switch i8 %i.ap, label %.loopexit [
    i8 2, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread92
    i8 0, label %bb.o
  ], !dbg !49114, !prof !4252

bb.o:                                             ; preds = %bb.n
  %i.aq = load i8, ptr %i.ag, align 1, !dbg !49115, !noalias !49055, !noundef !2044 ; 2 uses
    #dbg_value(i8 %i.aq, !4248, !DIExpression(), !48928)
  store i8 1, ptr %i.i, align 8, !dbg !49116, !alias.scope !49047
  store i8 %i.aq, ptr %i.j, align 1, !dbg !49116, !alias.scope !49047
  %i.ar = add i8 %i.aq, -48, !dbg !49121
  br label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread92, !dbg !49117

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread92: ; preds = %bb.o, %bb.n
  %.sroa.654.0.ph = phi i8 [ -48, %bb.n ], [ %i.ar, %bb.o ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !49118, !noalias !49055
    #dbg_value(i8 %.sroa.654.0.ph, !48977, !DIExpression(), !49052)
  %or.cond1 = icmp ult i8 %.sroa.654.0.ph, 10, !dbg !49121
  br i1 %or.cond1, label %bb.p, label %.loopexit133, !dbg !49121

.loopexit:                                        ; preds = %bb.n, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !49127
  %i.at = load ptr, ptr %i.as, align 8, !dbg !49127, !noalias !49055, !nonnull !2044, !noundef !2044
    #dbg_value(ptr %i.at, !4247, !DIExpression(), !48933)
  %i.au = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.at), !dbg !49128, !noalias !49050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !49118, !noalias !49055
    #dbg_value(ptr %i.au, !48976, !DIExpression(), !49056)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !49129
  store ptr %i.au, ptr %i.av, align 8, !dbg !49129
  store i64 1, ptr %0, align 8, !dbg !49129
  br label %bb.z, !dbg !49130

.loopexit133:                                     ; preds = %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread92, %bb.m
  %.sroa.08.0.lcssa130 = phi i32 [ %i.af, %bb.m ], [ %.sroa.08.0, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread92 ], !dbg !49042 ; 2 uses
  br i1 %.sroa.0.0113, label %bb.r, label %bb.q, !dbg !49131

bb.p:                                             ; preds = %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit46.thread92
    #dbg_value(ptr %i.h, !4256, !DIExpression(), !48930)
  store i8 0, ptr %i.i, align 8, !dbg !49122, !alias.scope !49053
  %i.aw = zext nneg i8 %.sroa.654.0.ph to i32, !dbg !49123
    #dbg_value(i32 %i.aw, !48978, !DIExpression(), !49054)
  %i.ax = icmp sgt i32 %.sroa.08.0, 214748363, !dbg !49132
  br i1 %i.ax, label %bb.aa, label %bb.ab, !dbg !49132

bb.q:                                             ; preds = %.loopexit133
  %i.ay = call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa130), !dbg !49133
    #dbg_value(i32 %i.ay, !48981, !DIExpression(), !49058)
  br label %bb.s, !dbg !49134

bb.r:                                             ; preds = %.loopexit133
  %i.az = call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa130), !dbg !49135
    #dbg_value(i32 %i.az, !48981, !DIExpression(), !49058)
  br label %bb.s, !dbg !49134

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.015.0 = phi i32 [ %i.az, %bb.r ], [ %i.ay, %bb.q ], !dbg !49046 ; 3 uses
    #dbg_value(i32 %.sroa.015.0, !48981, !DIExpression(), !49058)
  %.val = load i64, ptr %i.h, align 8, !dbg !49136 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !49136
  %.val41 = load i64, ptr %i.ba, align 8, !dbg !49136 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49059), !dbg !49136
    #dbg_value(i32 %.sroa.015.0, !6980, !DIExpression(), !48937)
    #dbg_value(ptr poison, !6983, !DIExpression(), !48937)
    #dbg_value(i1 %2, !6984, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !48937)
    #dbg_value(i64 %3, !6985, !DIExpression(), !48937)
  %i.bb = uitofp i64 %3 to double, !dbg !49137    ; 2 uses
    #dbg_value(double %i.bb, !6986, !DIExpression(), !48938)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48940)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48942)
    #dbg_value(i64 309, !6989, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48940)
    #dbg_value(i64 309, !7011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48942)
    #dbg_value(i32 %.sroa.015.0, !7018, !DIExpression(), !48944)
  %.sroa.012.07.i = call i32 @llvm.abs.i32(i32 %.sroa.015.0, i1 false), !dbg !49138 ; 2 uses
  %i.bc = icmp ult i32 %.sroa.012.07.i, 309, !dbg !49139
  br i1 %i.bc, label %._crit_edge.i, label %.lr.ph.i, !dbg !49139

.lr.ph.i:                                         ; preds = %bb.s, %bb.u
  %.sroa.0.09.i = phi i32 [ %i.bk, %bb.u ], [ %.sroa.015.0, %bb.s ] ; 2 uses
  %.sroa.04.08.i = phi double [ %i.bj, %bb.u ], [ %i.bb, %bb.s ] ; 3 uses
    #dbg_value(i32 %.sroa.0.09.i, !6980, !DIExpression(), !48937)
    #dbg_value(double %.sroa.04.08.i, !6986, !DIExpression(), !48938)
  %i.bd = fcmp oeq double %.sroa.04.08.i, 0.000000e+00, !dbg !49140
  br i1 %i.bd, label %.loopexit.i, label %bb.t, !dbg !49140

._crit_edge.i:                                    ; preds = %bb.u, %bb.s
  %.sroa.04.0.lcssa.i = phi double [ %i.bb, %bb.s ], [ %i.bj, %bb.u ], !dbg !49141 ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.015.0, %bb.s ], [ %i.bk, %bb.u ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.07.i, %bb.s ], [ %.sroa.012.0.i, %bb.u ], !dbg !49138
  %i.be = zext nneg i32 %.sroa.012.0.lcssa.i to i64, !dbg !49142
    #dbg_value(i64 %i.be, !7006, !DIExpression(), !48940)
    #dbg_value(i64 %i.be, !7016, !DIExpression(), !48942)
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, i64 %i.be, !dbg !49143
  %i.bg = load double, ptr %i.bf, align 8, !dbg !49144, !noalias !49059, !noundef !2044 ; 2 uses
    #dbg_value(double %i.bg, !6987, !DIExpression(), !48945)
  %i.bh = icmp sgt i32 %.sroa.0.0.lcssa.i, -1, !dbg !49145
  br i1 %i.bh, label %bb.x, label %bb.w, !dbg !49145

bb.t:                                             ; preds = %.lr.ph.i
  %i.bi = icmp sgt i32 %.sroa.0.09.i, -1, !dbg !49146
  br i1 %i.bi, label %bb.v, label %bb.u, !dbg !49146, !prof !5512

bb.u:                                             ; preds = %bb.t
  %i.bj = fdiv double %.sroa.04.08.i, 1.000000e+308, !dbg !49147 ; 2 uses
    #dbg_value(double %i.bj, !6986, !DIExpression(), !48938)
  %i.bk = add nsw i32 %.sroa.0.09.i, 308, !dbg !49148 ; 3 uses
    #dbg_value(i32 %i.bk, !6980, !DIExpression(), !48937)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48940)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48942)
    #dbg_value(i64 309, !6989, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48940)
    #dbg_value(i64 309, !7011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48942)
    #dbg_value(i32 %i.bk, !7018, !DIExpression(), !48944)
  %.sroa.012.0.i = call i32 @llvm.abs.i32(i32 %i.bk, i1 true), !dbg !49138 ; 2 uses
    #dbg_value(i32 %.sroa.012.0.i, !7006, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !48940)
    #dbg_value(i32 %.sroa.012.0.i, !7016, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !48942)
  %i.bl = icmp samesign ult i32 %.sroa.012.0.i, 309, !dbg !49139
  br i1 %i.bl, label %._crit_edge.i, label %.lr.ph.i, !dbg !49139

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !49149, !noalias !49059
  store i64 14, ptr %i.a, align 8, !dbg !49149, !noalias !49059
    #dbg_value(ptr poison, !6954, !DIExpression(), !48947)
    #dbg_declare(ptr %i.a, !6956, !DIExpression(), !48948)
    #dbg_value(i64 %.val, !6957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48949)
    #dbg_value(i64 %.val41, !6957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48949)
  %i.bm = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val, i64 noundef %.val41), !dbg !49150, !noalias !49060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !49151, !noalias !49059
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !49152
  store ptr %i.bm, ptr %i.bn, align 8, !dbg !49152, !alias.scope !49059
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !49153

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.x, %bb.w
  %.sroa.04.1.i = phi double [ %i.br, %bb.x ], [ %i.bq, %bb.w ], [ %.sroa.04.08.i, %.lr.ph.i ], !dbg !49141 ; 2 uses
    #dbg_value(double %.sroa.04.1.i, !6986, !DIExpression(), !48938)
  %i.bo = fneg double %.sroa.04.1.i, !dbg !49154
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.bo, !dbg !49154
    #dbg_value(double %.sroa.04.2.i, !6986, !DIExpression(), !48938)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !49155
  store double %.sroa.04.2.i, ptr %i.bp, align 8, !dbg !49155, !alias.scope !49059
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !49156

bb.w:                                             ; preds = %._crit_edge.i
  %i.bq = fdiv double %.sroa.04.0.lcssa.i, %i.bg, !dbg !49157
    #dbg_value(double %i.bq, !6986, !DIExpression(), !48938)
  br label %.loopexit.i, !dbg !49158

bb.x:                                             ; preds = %._crit_edge.i
  %i.br = fmul double %.sroa.04.0.lcssa.i, %i.bg, !dbg !49159 ; 2 uses
    #dbg_value(double %i.br, !6986, !DIExpression(), !48938)
    #dbg_value(double %i.br, !7025, !DIExpression(), !48953)
  %i.bs = call double @llvm.fabs.f64(double %i.br), !dbg !49160
  %i.bt = fcmp oeq double %i.bs, +inf, !dbg !49160
  br i1 %i.bt, label %bb.y, label %.loopexit.i, !dbg !49161, !prof !5512

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !49162, !noalias !49059
  store i64 14, ptr %i.b, align 8, !dbg !49162, !noalias !49059
    #dbg_value(ptr poison, !6954, !DIExpression(), !48955)
    #dbg_declare(ptr %i.b, !6956, !DIExpression(), !48956)
    #dbg_value(i64 %.val, !6957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48957)
    #dbg_value(i64 %.val41, !6957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48957)
  %i.bu = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val, i64 noundef %.val41), !dbg !49163, !noalias !49061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !49164, !noalias !49059
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !49165
  store ptr %i.bu, ptr %i.bv, align 8, !dbg !49165, !alias.scope !49059
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !49153

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.v, %.loopexit.i, %bb.y
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.y ], [ 1, %bb.v ], !dbg !49166
  store i64 %storemerge.i, ptr %0, align 8, !dbg !49166, !alias.scope !49059
  br label %bb.z, !dbg !49167

bb.z:                                             ; preds = %.loopexit, %.loopexit134, %bb.b, %bb.j, %bb.i, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit
  ret void, !dbg !49167

bb.aa:                                            ; preds = %bb.p
  %i.bw = icmp ne i32 %.sroa.08.0, 214748364, !dbg !49168
  %i.bx = icmp samesign ugt i8 %.sroa.654.0.ph, 7
  %or.cond2 = or i1 %i.bw, %i.bx, !dbg !49168
  br i1 %or.cond2, label %.loopexit134, label %bb.ab, !dbg !49168, !prof !5517

bb.ab:                                            ; preds = %bb.aa, %bb.p
  %i.by = mul i32 %.sroa.08.0, 10, !dbg !49124
  %i.bz = add i32 %i.by, %i.aw, !dbg !49125
    #dbg_value(i32 %i.bz, !48973, !DIExpression(), !49046)
    #dbg_value(i32 %i.bz, !49016, !DIExpression(), !49019)
    #dbg_value(i32 %i.bz, !49021, !DIExpression(), !49024)
  br label %bb.n, !dbg !49126, !llvm.loop !48960

.loopexit134:                                     ; preds = %bb.aa
  %i.ca = icmp eq i64 %3, 0, !dbg !49169
    #dbg_value(i1 %i.ca, !48980, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !49062)
  call void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE23parse_exponent_overflowCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.ca, i1 noundef zeroext %.sroa.0.0113) #23, !dbg !49170
  br label %bb.z, !dbg !49171
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE15ignore_exponentCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) initializes((96, 97)) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !49178 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !49233, !DIExpression(), !49241)
    #dbg_value(ptr %0, !49242, !DIExpression(), !49245)
    #dbg_value(ptr %0, !49246, !DIExpression(), !49253)
    #dbg_value(ptr %0, !49254, !DIExpression(), !49257)
    #dbg_value(ptr %0, !49242, !DIExpression(), !49259)
    #dbg_value(ptr %0, !49260, !DIExpression(), !49265)
    #dbg_value(ptr %0, !49266, !DIExpression(), !49269)
    #dbg_value(ptr %0, !49246, !DIExpression(), !49271)
    #dbg_value(ptr %0, !49254, !DIExpression(), !49274)
    #dbg_value(ptr %0, !49242, !DIExpression(), !49276)
    #dbg_value(i8 0, !49277, !DIExpression(), !49284)
    #dbg_value(i8 0, !49277, !DIExpression(), !49286)
    #dbg_value(i8 0, !49277, !DIExpression(), !49288)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !49305 ; 4 uses
    #dbg_value(ptr %i.e, !4256, !DIExpression(), !49195)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !49306 ; 7 uses
  store i8 0, ptr %i.f, align 8, !dbg !49306, !alias.scope !49289
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49290), !dbg !49307
    #dbg_value(ptr %i.e, !4245, !DIExpression(), !49201)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 97, !dbg !49308 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !49309, !noalias !49291
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.e), !dbg !49310, !noalias !49292
  %i.h = load i8, ptr %i.c, align 8, !dbg !49309, !range !4251, !noalias !49291, !noundef !2044
  switch i8 %i.h, label %bb.b [
    i8 2, label %bb.d
    i8 0, label %bb.c
  ], !dbg !49311, !prof !4252

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !49312
  %i.j = load ptr, ptr %i.i, align 8, !dbg !49312, !noalias !49291, !nonnull !2044, !noundef !2044
    #dbg_value(ptr %i.j, !4247, !DIExpression(), !49203)
  %i.k = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.j), !dbg !49313, !noalias !49292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !49314, !noalias !49291
  br label %.loopexit, !dbg !49315

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 1, !dbg !49316
  %i.m = load i8, ptr %i.l, align 1, !dbg !49316, !noalias !49291, !noundef !2044 ; 3 uses
    #dbg_value(i8 %i.m, !4248, !DIExpression(), !49204)
  store i8 %i.m, ptr %i.g, align 1, !dbg !49317, !alias.scope !49290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !49314, !noalias !49291
    #dbg_value(i8 1, !49278, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !49284)
    #dbg_value(i8 poison, !49278, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !49284)
  store i8 0, ptr %i.f, align 8, !dbg !49318
  switch i8 %i.m, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4nextCsaTqK2fWTXJW_11qlog_dancer.exit.thread [
    i8 43, label %.thread83
    i8 45, label %.thread83
  ], !dbg !49319

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !49314, !noalias !49291
    #dbg_value(i8 0, !49278, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !49284)
    #dbg_value(i8 poison, !49278, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !49284)
  %.pre = load i8, ptr %i.f, align 8, !dbg !49320, !range !4239, !alias.scope !49295
  %.pre80 = load i8, ptr %i.g, align 1, !dbg !49320, !alias.scope !49295
  %i.n = trunc nuw i8 %.pre to i1, !dbg !49320
  call void @llvm.experimental.noalias.scope.decl(metadata !49295), !dbg !49321
    #dbg_value(ptr %i.e, !6936, !DIExpression(), !49210)
    #dbg_value(ptr %i.e, !6943, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !49211)
    #dbg_value(ptr %i.e, !6949, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !49212)
  store i8 0, ptr %i.f, align 8, !dbg !49318, !alias.scope !49295
  br i1 %i.n, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4nextCsaTqK2fWTXJW_11qlog_dancer.exit.thread, label %.thread83, !dbg !49322

.thread83:                                        ; preds = %bb.c, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !49323, !noalias !49296
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.e), !dbg !49324, !noalias !49297
  %i.o = load i8, ptr %i.b, align 8, !dbg !49323, !range !4251, !noalias !49296, !noundef !2044
  switch i8 %i.o, label %bb.f [
    i8 2, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4nextCsaTqK2fWTXJW_11qlog_dancer.exit.thread64
    i8 0, label %bb.e
  ], !dbg !49325, !prof !4252

bb.e:                                             ; preds = %.thread83
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !49326
  %i.q = load i8, ptr %i.p, align 1, !dbg !49326, !noalias !49296, !noundef !2044
  br label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4nextCsaTqK2fWTXJW_11qlog_dancer.exit.thread64, !dbg !49327

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4nextCsaTqK2fWTXJW_11qlog_dancer.exit.thread64: ; preds = %bb.e, %.thread83
  %.sroa.1041.0.ph = phi i8 [ undef, %.thread83 ], [ %i.q, %bb.e ]
  %.sroa.640.0.ph = phi i1 [ false, %.thread83 ], [ true, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !49328, !noalias !49296
  br label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4nextCsaTqK2fWTXJW_11qlog_dancer.exit.thread, !dbg !49329

bb.f:                                             ; preds = %.thread83
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !49330
  %i.s = load ptr, ptr %i.r, align 8, !dbg !49330, !noalias !49296, !nonnull !2044, !noundef !2044
    #dbg_value(ptr %i.s, !6938, !DIExpression(), !49214)
  %i.t = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.s), !dbg !49331, !noalias !49297
end_hunk_1
begin_hunk_2_@_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE17peek_invalid_typeCsaTqK2fWTXJW_11qlog_dancer:bb.a
  store i64 %.sroa.6.0.copyload, ptr %i.au, align 8, !dbg !49620
  store i8 5, ptr %i.e, align 8, !dbg !49620
  %i.av = call noundef nonnull align 8 ptr @_RNvXs6_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !49621
    #dbg_value(ptr %i.av, !49471, !DIExpression(), !49550)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !49622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !49618
  br label %bb.n, !dbg !49618

bb.u:                                             ; preds = %.thread59, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !49623
  store i64 10, ptr %i.b, align 8, !dbg !49623
  call void @llvm.experimental.noalias.scope.decl(metadata !49556), !dbg !49624
    #dbg_value(ptr %0, !4260, !DIExpression(), !49463)
    #dbg_declare(ptr %i.b, !4264, !DIExpression(), !49464)
  %.val.i = load i64, ptr %i.l, align 8, !dbg !49625, !alias.scope !49556, !noundef !2044
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !49625
  %.val4.i = load i64, ptr %i.aw, align 8, !dbg !49625, !alias.scope !49556, !noundef !2044
    #dbg_value(i64 %.val.i, !4265, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49465)
    #dbg_value(i64 %.val4.i, !4265, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49465)
  %i.ax = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val.i, i64 noundef %.val4.i), !dbg !49626, !noalias !49556
    #dbg_value(ptr %i.ax, !49471, !DIExpression(), !49550)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !49627
  br label %bb.n, !dbg !49627

bb.v:                                             ; preds = %bb.e
  call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE13parse_integerCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef align 8 dereferenceable(112) %0, i1 noundef zeroext true), !dbg !49628
  %i.ay = load i64, ptr %i.g, align 8, !dbg !49629, !range !5459, !noundef !2044
  %i.az = icmp eq i64 %i.ay, -1, !dbg !49629
  br i1 %i.az, label %bb.w, label %bb.x, !dbg !49630, !prof !5413

bb.w:                                             ; preds = %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !49631
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !49631, !nonnull !2044, !align !5087, !noundef !2044
    #dbg_value(ptr %i.bb, !49472, !DIExpression(), !49551)
    #dbg_value(ptr %i.bb, !49473, !DIExpression(), !49552)
    #dbg_value(ptr %i.bb, !49474, !DIExpression(), !49553)
  br label %bb.y, !dbg !49615

bb.x:                                             ; preds = %bb.v
  %i.bc = call noundef nonnull align 8 ptr @_RNvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.g, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !49632
    #dbg_value(ptr %i.bc, !49471, !DIExpression(), !49550)
  br label %bb.n, !dbg !49633

bb.y:                                             ; preds = %bb.h, %bb.g, %bb.q, %bb.s, %bb.w, %bb.f, %bb.n
  %.sroa.0.1 = phi ptr [ %i.al, %bb.n ], [ %i.bb, %bb.w ], [ %i.ah, %bb.s ], [ %i.y, %bb.f ], [ %i.z, %bb.g ], [ %i.ar, %bb.q ], [ %i.aa, %bb.h ], !dbg !49491
    #dbg_value(ptr %.sroa.0.1, !49474, !DIExpression(), !49553)
    #dbg_value(ptr %.sroa.0.1, !49473, !DIExpression(), !49552)
    #dbg_value(ptr %.sroa.0.1, !49472, !DIExpression(), !49551)
  ret ptr %.sroa.0.1, !dbg !49607
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE18parse_long_integerCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !49637 {
.peel.begin:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 11 uses
    #dbg_value(ptr %1, !49686, !DIExpression(), !49693)
    #dbg_value(ptr %1, !49694, !DIExpression(), !49699)
    #dbg_value(ptr %1, !49700, !DIExpression(), !49703)
    #dbg_value(ptr %1, !49704, !DIExpression(), !49707)
    #dbg_value(i1 %2, !49687, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !49693)
    #dbg_value(i64 %3, !49688, !DIExpression(), !49693)
    #dbg_value(i32 0, !49689, !DIExpression(), !49708)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 97 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.e, align 8, !dbg !49722, !range !4239, !alias.scope !49709
  %i.h = trunc nuw i8 %.pre to i1, !dbg !49722
    #dbg_value(i32 0, !49689, !DIExpression(), !49708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49710), !dbg !49723
    #dbg_value(ptr %i.d, !4245, !DIExpression(), !49648)
  br i1 %i.h, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread.peel, label %bb.a, !dbg !49724

bb.a:                                             ; preds = %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !49725, !noalias !49711
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d), !dbg !49726, !noalias !49712
  %i.i = load i8, ptr %i.c, align 8, !dbg !49725, !range !4251, !noalias !49711, !noundef !2044
  switch i8 %i.i, label %.loopexit [
    i8 2, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread26.peel
    i8 0, label %bb.b
  ], !dbg !49727, !prof !4252

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.g, align 1, !dbg !49728, !noalias !49711, !noundef !2044 ; 2 uses
    #dbg_value(i8 %i.j, !4248, !DIExpression(), !49650)
  store i8 1, ptr %i.e, align 8, !dbg !49729, !alias.scope !49710
  store i8 %i.j, ptr %i.f, align 1, !dbg !49729, !alias.scope !49710
  br label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread26.peel, !dbg !49730

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread26.peel: ; preds = %bb.b, %bb.a
  %.sroa.6.0.ph.peel = phi i8 [ 0, %bb.a ], [ %i.j, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !49731, !noalias !49711
  br label %bb.c, !dbg !49732

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread.peel: ; preds = %.peel.begin
  %i.k = load i8, ptr %i.f, align 1, !dbg !49733, !alias.scope !49710, !noundef !2044
  br label %bb.c, !dbg !49732

bb.c:                                             ; preds = %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread.peel, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread26.peel
  %.sroa.6.125.peel = phi i8 [ %i.k, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread.peel ], [ %.sroa.6.0.ph.peel, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread26.peel ] ; 2 uses
  %i.l = add i8 %.sroa.6.125.peel, -48, !dbg !49734
  %or.cond.peel = icmp ult i8 %i.l, 10, !dbg !49734
  br i1 %or.cond.peel, label %.peel.next, label %.loopexit54, !dbg !49734

.peel.next:                                       ; preds = %bb.c
    #dbg_value(ptr %i.d, !4256, !DIExpression(), !49652)
  store i8 0, ptr %i.e, align 8, !dbg !49735, !alias.scope !49714
    #dbg_value(i32 1, !49689, !DIExpression(), !49708)
  br label %bb.d, !dbg !49736

bb.d:                                             ; preds = %bb.f, %.peel.next
  %.sroa.0.0 = phi i32 [ 1, %.peel.next ], [ %i.t, %bb.f ], !dbg !49693 ; 2 uses
    #dbg_value(i32 %.sroa.0.0, !49689, !DIExpression(), !49708)
  call void @llvm.experimental.noalias.scope.decl(metadata !49709), !dbg !49723
    #dbg_value(ptr %i.d, !4245, !DIExpression(), !49648)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !49725, !noalias !49715
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d), !dbg !49726, !noalias !49712
  %i.m = load i8, ptr %i.c, align 8, !dbg !49725, !range !4251, !noalias !49715, !noundef !2044
  switch i8 %i.m, label %.loopexit [
    i8 2, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread26
    i8 0, label %bb.e
  ], !dbg !49727, !prof !4252

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %i.g, align 1, !dbg !49728, !noalias !49715, !noundef !2044 ; 2 uses
    #dbg_value(i8 %i.n, !4248, !DIExpression(), !49650)
  store i8 1, ptr %i.e, align 8, !dbg !49729, !alias.scope !49709
  store i8 %i.n, ptr %i.f, align 1, !dbg !49729, !alias.scope !49709
  br label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread26, !dbg !49730

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread26: ; preds = %bb.e, %bb.d
  %.sroa.6.0.ph = phi i8 [ 0, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !49731, !noalias !49715
  %i.o = add i8 %.sroa.6.0.ph, -48, !dbg !49734
  %or.cond = icmp ult i8 %i.o, 10, !dbg !49734
  br i1 %or.cond, label %bb.f, label %.loopexit54, !dbg !49734

.loopexit:                                        ; preds = %bb.d, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !49737
  %i.q = load ptr, ptr %i.p, align 8, !dbg !49737, !noalias !49715, !nonnull !2044, !noundef !2044
    #dbg_value(ptr %i.q, !4247, !DIExpression(), !49655)
  %i.r = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.q), !dbg !49738, !noalias !49712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !49731, !noalias !49715
    #dbg_value(ptr %i.r, !49691, !DIExpression(), !49716)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !49739
  store ptr %i.r, ptr %i.s, align 8, !dbg !49739
  store i64 1, ptr %0, align 8, !dbg !49739
  br label %bb.p, !dbg !49740

.loopexit54:                                      ; preds = %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread26, %bb.c
  %.sroa.6.125.lcssa = phi i8 [ %.sroa.6.125.peel, %bb.c ], [ %.sroa.6.0.ph, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread26 ]
  %.sroa.0.0.lcssa52 = phi i32 [ 0, %bb.c ], [ %.sroa.0.0, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread26 ], !dbg !49693 ; 5 uses
  switch i8 %.sroa.6.125.lcssa, label %bb.g [
    i8 46, label %bb.n
    i8 101, label %bb.o
    i8 69, label %bb.o
  ], !dbg !49741

bb.f:                                             ; preds = %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread26
    #dbg_value(ptr %i.d, !4256, !DIExpression(), !49652)
  store i8 0, ptr %i.e, align 8, !dbg !49735, !alias.scope !49714
  %i.t = add i32 %.sroa.0.0, 1, !dbg !49742
    #dbg_value(i32 %i.t, !49689, !DIExpression(), !49708)
  br label %bb.d, !dbg !49736, !llvm.loop !49656

bb.g:                                             ; preds = %.loopexit54
  %.val = load i64, ptr %i.d, align 8, !dbg !49743 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !49743
  %.val17 = load i64, ptr %i.u, align 8, !dbg !49743 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49719), !dbg !49743
    #dbg_value(i32 %.sroa.0.0.lcssa52, !6980, !DIExpression(), !49660)
    #dbg_value(ptr poison, !6983, !DIExpression(), !49660)
    #dbg_value(i1 %2, !6984, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !49660)
    #dbg_value(i64 %3, !6985, !DIExpression(), !49660)
  %i.v = uitofp i64 %3 to double, !dbg !49744     ; 2 uses
    #dbg_value(double %i.v, !6986, !DIExpression(), !49661)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49663)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49665)
    #dbg_value(i64 309, !6989, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49663)
    #dbg_value(i64 309, !7011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49665)
    #dbg_value(i32 %.sroa.0.0.lcssa52, !7018, !DIExpression(), !49667)
  %.sroa.012.07.i = call i32 @llvm.abs.i32(i32 %.sroa.0.0.lcssa52, i1 false), !dbg !49745 ; 2 uses
  %i.w = icmp ult i32 %.sroa.012.07.i, 309, !dbg !49746
  br i1 %i.w, label %._crit_edge.i, label %.lr.ph.i, !dbg !49746

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %.sroa.0.09.i = phi i32 [ %i.ae, %bb.i ], [ %.sroa.0.0.lcssa52, %bb.g ] ; 2 uses
  %.sroa.04.08.i = phi double [ %i.ad, %bb.i ], [ %i.v, %bb.g ] ; 3 uses
    #dbg_value(i32 %.sroa.0.09.i, !6980, !DIExpression(), !49660)
    #dbg_value(double %.sroa.04.08.i, !6986, !DIExpression(), !49661)
  %i.x = fcmp oeq double %.sroa.04.08.i, 0.000000e+00, !dbg !49747
  br i1 %i.x, label %.loopexit.i, label %bb.h, !dbg !49747

._crit_edge.i:                                    ; preds = %bb.i, %bb.g
  %.sroa.04.0.lcssa.i = phi double [ %i.v, %bb.g ], [ %i.ad, %bb.i ], !dbg !49748 ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.0.0.lcssa52, %bb.g ], [ %i.ae, %bb.i ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.07.i, %bb.g ], [ %.sroa.012.0.i, %bb.i ], !dbg !49745
  %i.y = zext nneg i32 %.sroa.012.0.lcssa.i to i64, !dbg !49749
    #dbg_value(i64 %i.y, !7006, !DIExpression(), !49663)
    #dbg_value(i64 %i.y, !7016, !DIExpression(), !49665)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, i64 %i.y, !dbg !49750
  %i.aa = load double, ptr %i.z, align 8, !dbg !49751, !noalias !49719, !noundef !2044 ; 2 uses
    #dbg_value(double %i.aa, !6987, !DIExpression(), !49668)
  %i.ab = icmp sgt i32 %.sroa.0.0.lcssa.i, -1, !dbg !49752
  br i1 %i.ab, label %bb.l, label %bb.k, !dbg !49752

bb.h:                                             ; preds = %.lr.ph.i
  %i.ac = icmp sgt i32 %.sroa.0.09.i, -1, !dbg !49753
  br i1 %i.ac, label %bb.j, label %bb.i, !dbg !49753, !prof !5512

bb.i:                                             ; preds = %bb.h
  %i.ad = fdiv double %.sroa.04.08.i, 1.000000e+308, !dbg !49754 ; 2 uses
    #dbg_value(double %i.ad, !6986, !DIExpression(), !49661)
  %i.ae = add nsw i32 %.sroa.0.09.i, 308, !dbg !49755 ; 3 uses
    #dbg_value(i32 %i.ae, !6980, !DIExpression(), !49660)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49663)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49665)
    #dbg_value(i64 309, !6989, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49663)
    #dbg_value(i64 309, !7011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49665)
    #dbg_value(i32 %i.ae, !7018, !DIExpression(), !49667)
  %.sroa.012.0.i = call i32 @llvm.abs.i32(i32 %i.ae, i1 true), !dbg !49745 ; 2 uses
    #dbg_value(i32 %.sroa.012.0.i, !7006, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !49663)
    #dbg_value(i32 %.sroa.012.0.i, !7016, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !49665)
  %i.af = icmp samesign ult i32 %.sroa.012.0.i, 309, !dbg !49746
  br i1 %i.af, label %._crit_edge.i, label %.lr.ph.i, !dbg !49746

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !49756, !noalias !49719
  store i64 14, ptr %i.a, align 8, !dbg !49756, !noalias !49719
    #dbg_value(ptr poison, !6954, !DIExpression(), !49670)
    #dbg_declare(ptr %i.a, !6956, !DIExpression(), !49671)
    #dbg_value(i64 %.val, !6957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49672)
    #dbg_value(i64 %.val17, !6957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49672)
  %i.ag = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val, i64 noundef %.val17), !dbg !49757, !noalias !49720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !49758, !noalias !49719
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !49759
  store ptr %i.ag, ptr %i.ah, align 8, !dbg !49759, !alias.scope !49719
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !49760

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.l, %bb.k
  %.sroa.04.1.i = phi double [ %i.al, %bb.l ], [ %i.ak, %bb.k ], [ %.sroa.04.08.i, %.lr.ph.i ], !dbg !49748 ; 2 uses
    #dbg_value(double %.sroa.04.1.i, !6986, !DIExpression(), !49661)
  %i.ai = fneg double %.sroa.04.1.i, !dbg !49761
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ai, !dbg !49761
    #dbg_value(double %.sroa.04.2.i, !6986, !DIExpression(), !49661)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !49762
  store double %.sroa.04.2.i, ptr %i.aj, align 8, !dbg !49762, !alias.scope !49719
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !49763

bb.k:                                             ; preds = %._crit_edge.i
  %i.ak = fdiv double %.sroa.04.0.lcssa.i, %i.aa, !dbg !49764
    #dbg_value(double %i.ak, !6986, !DIExpression(), !49661)
  br label %.loopexit.i, !dbg !49765

bb.l:                                             ; preds = %._crit_edge.i
  %i.al = fmul double %.sroa.04.0.lcssa.i, %i.aa, !dbg !49766 ; 2 uses
    #dbg_value(double %i.al, !6986, !DIExpression(), !49661)
    #dbg_value(double %i.al, !7025, !DIExpression(), !49676)
  %i.am = call double @llvm.fabs.f64(double %i.al), !dbg !49767
  %i.an = fcmp oeq double %i.am, +inf, !dbg !49767
  br i1 %i.an, label %bb.m, label %.loopexit.i, !dbg !49768, !prof !5512

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !49769, !noalias !49719
  store i64 14, ptr %i.b, align 8, !dbg !49769, !noalias !49719
    #dbg_value(ptr poison, !6954, !DIExpression(), !49678)
    #dbg_declare(ptr %i.b, !6956, !DIExpression(), !49679)
    #dbg_value(i64 %.val, !6957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49680)
    #dbg_value(i64 %.val17, !6957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49680)
  %i.ao = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val, i64 noundef %.val17), !dbg !49770, !noalias !49721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !49771, !noalias !49719
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !49772
  store ptr %i.ao, ptr %i.ap, align 8, !dbg !49772, !alias.scope !49719
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !49760

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.j, %.loopexit.i, %bb.m
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.m ], [ 1, %bb.j ], !dbg !49773
  store i64 %storemerge.i, ptr %0, align 8, !dbg !49773, !alias.scope !49719
  br label %bb.p, !dbg !49774

bb.n:                                             ; preds = %.loopexit54
  call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE13parse_decimalCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %.sroa.0.0.lcssa52), !dbg !49775
  br label %bb.p, !dbg !49776

bb.o:                                             ; preds = %.loopexit54, %.loopexit54
  call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14parse_exponentCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %.sroa.0.0.lcssa52), !dbg !49777
  br label %bb.p, !dbg !49778

bb.p:                                             ; preds = %bb.o, %bb.n, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, %.loopexit
  ret void, !dbg !49779
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE18parse_object_colonCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !49782 {
.peel.begin:
  %i.a = alloca [16 x i8], align 8                ; 12 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !49823, !DIExpression(), !49827)
    #dbg_value(ptr %0, !49828, !DIExpression(), !49831)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49832), !dbg !49845
    #dbg_value(ptr %0, !4212, !DIExpression(), !49787)
    #dbg_value(ptr %0, !4231, !DIExpression(), !49789)
    #dbg_value(ptr %0, !4234, !DIExpression(), !49791)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 97 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.pre.i = load i8, ptr %i.d, align 8, !dbg !49846, !range !4239, !alias.scope !49833
  %i.i = trunc nuw i8 %.pre.i to i1, !dbg !49846
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49834), !dbg !49847
    #dbg_value(ptr %0, !4245, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !49797)
  br i1 %i.i, label %bb.e, label %bb.a, !dbg !49848

bb.a:                                             ; preds = %.peel.begin
    #dbg_value(ptr %i.f, !4245, !DIExpression(), !49797)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !49849, !noalias !49835
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.f), !dbg !49850, !noalias !49836
  %i.j = load i8, ptr %i.a, align 8, !dbg !49849, !range !4251, !noalias !49835, !noundef !2044
  switch i8 %i.j, label %bb.c [
    i8 2, label %bb.d
    i8 0, label %bb.b
  ], !dbg !49851, !prof !4252

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.g, align 1, !dbg !49852, !noalias !49835, !noundef !2044 ; 2 uses
    #dbg_value(i8 %i.k, !4248, !DIExpression(), !49800)
  store i8 1, ptr %i.d, align 8, !dbg !49853, !alias.scope !49837
  store i8 %i.k, ptr %i.e, align 1, !dbg !49853, !alias.scope !49837
  br label %bb.d, !dbg !49854

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !dbg !49855, !noalias !49835, !nonnull !2044, !noundef !2044
    #dbg_value(ptr %i.l, !4247, !DIExpression(), !49801)
  %i.m = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.l), !dbg !49856, !noalias !49836
  br label %bb.d, !dbg !49857

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.n = phi ptr [ undef, %bb.b ], [ %i.m, %bb.c ], [ undef, %bb.a ]
  %i.o = phi i8 [ %i.k, %bb.b ], [ undef, %bb.c ], [ undef, %bb.a ]
  %i.p = phi i1 [ true, %bb.b ], [ true, %bb.c ], [ false, %bb.a ]
  %.sink.i.i.peel = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !49857, !noalias !49835
  br label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.i.peel, !dbg !49857

bb.e:                                             ; preds = %.peel.begin
  %i.q = load i8, ptr %i.e, align 1, !dbg !49858, !alias.scope !49837, !noundef !2044
  br label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.i.peel, !dbg !49859

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.i.peel: ; preds = %bb.e, %bb.d
  %i.r = phi ptr [ undef, %bb.e ], [ %i.n, %bb.d ]
  %i.s = phi i8 [ %i.q, %bb.e ], [ %i.o, %bb.d ]  ; 2 uses
  %i.t = phi i1 [ true, %bb.e ], [ %i.p, %bb.d ]  ; 2 uses
  %i.u = phi i1 [ false, %bb.e ], [ %.sink.i.i.peel, %bb.d ] ; 2 uses
  %.not.i.peel = xor i1 %i.u, true, !dbg !49860
  %or.cond.i.peel = and i1 %i.t, %.not.i.peel, !dbg !49860
  br i1 %or.cond.i.peel, label %bb.f, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE16parse_whitespaceCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !49860

bb.f:                                             ; preds = %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.i.peel
  switch i8 %i.s, label %.loopexit [
    i8 32, label %.peel.next.preheader
    i8 10, label %.peel.next.preheader
    i8 9, label %.peel.next.preheader
    i8 13, label %.peel.next.preheader
    i8 58, label %.loopexit13
  ], !dbg !49860, !prof !5998

.peel.next.preheader:                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  br label %.peel.next, !dbg !49851

.peel.next:                                       ; preds = %.peel.next.backedge, %.peel.next.preheader
  store i8 0, ptr %i.d, align 8, !dbg !49861, !alias.scope !49838
  call void @llvm.experimental.noalias.scope.decl(metadata !49839), !dbg !49847
    #dbg_value(ptr %i.f, !4245, !DIExpression(), !49797)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !49849, !noalias !49840
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.f), !dbg !49850, !noalias !49836
  %i.v = load i8, ptr %i.a, align 8, !dbg !49849, !range !4251, !noalias !49840, !noundef !2044
  switch i8 %i.v, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.i.thread.thread [
    i8 2, label %.thread56
    i8 0, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.i
  ], !dbg !49851, !prof !4252

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.i.thread.thread: ; preds = %.peel.next
  %i.w = load ptr, ptr %i.h, align 8, !dbg !49855, !noalias !49840, !nonnull !2044, !noundef !2044
    #dbg_value(ptr %i.w, !4247, !DIExpression(), !49801)
  %i.x = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.w), !dbg !49856, !noalias !49836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !49857, !noalias !49840
  br label %bb.g, !dbg !49862

.thread56:                                        ; preds = %.peel.next
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !49857, !noalias !49840
  br label %bb.i, !dbg !49862

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.i: ; preds = %.peel.next
  %i.y = load i8, ptr %i.g, align 1, !dbg !49852, !noalias !49840, !noundef !2044 ; 2 uses
    #dbg_value(i8 %i.y, !4248, !DIExpression(), !49800)
  store i8 1, ptr %i.d, align 8, !dbg !49853, !alias.scope !49833
  store i8 %i.y, ptr %i.e, align 1, !dbg !49853, !alias.scope !49833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !49857, !noalias !49840
end_hunk_2
begin_hunk_3_@_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE18parse_object_colonCsaTqK2fWTXJW_11qlog_dancer:.peel.begin
    #dbg_value(i64 %.val4.i, !4265, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49811)
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val.i, i64 noundef %.val4.i), !dbg !49867, !noalias !49842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !49868
  br label %bb.j, !dbg !49869

.loopexit13:                                      ; preds = %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.i, %bb.f, %.thread
    #dbg_value(ptr %i.f, !4256, !DIExpression(), !49813)
  store i8 0, ptr %i.d, align 8, !dbg !49870, !alias.scope !49843
  br label %bb.j, !dbg !49871

.loopexit:                                        ; preds = %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.i, %bb.f, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !49872
  store i64 6, ptr %i.c, align 8, !dbg !49872
  call void @llvm.experimental.noalias.scope.decl(metadata !49844), !dbg !49873
    #dbg_value(ptr %0, !4260, !DIExpression(), !49819)
    #dbg_declare(ptr %i.c, !4264, !DIExpression(), !49820)
  %.val.i5 = load i64, ptr %i.f, align 8, !dbg !49874, !alias.scope !49844, !noundef !2044
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !49874
  %.val4.i6 = load i64, ptr %i.ac, align 8, !dbg !49874, !alias.scope !49844, !noundef !2044
    #dbg_value(i64 %.val.i5, !4265, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49821)
    #dbg_value(i64 %.val4.i6, !4265, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49821)
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.val.i5, i64 noundef %.val4.i6), !dbg !49875, !noalias !49844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !49876
  br label %bb.j, !dbg !49877

bb.j:                                             ; preds = %bb.i, %.loopexit13, %.loopexit, %bb.g
  %.sroa.0.1 = phi ptr [ %.lcssa3348, %bb.g ], [ null, %.loopexit13 ], [ %i.ad, %.loopexit ], [ %i.ab, %bb.i ], !dbg !49878
  ret ptr %.sroa.0.1, !dbg !49863
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE22parse_decimal_overflowCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !49883 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !49939, !DIExpression(), !49948)
    #dbg_value(ptr %1, !49949, !DIExpression(), !49956)
    #dbg_value(ptr %1, !49957, !DIExpression(), !49960)
    #dbg_value(ptr %1, !49949, !DIExpression(), !49962)
    #dbg_value(ptr %1, !49957, !DIExpression(), !49965)
    #dbg_value(ptr %1, !49966, !DIExpression(), !49969)
    #dbg_value(i1 %2, !49940, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !49948)
    #dbg_value(i64 %3, !49941, !DIExpression(), !49948)
    #dbg_value(i32 %4, !49942, !DIExpression(), !49948)
    #dbg_value(i8 0, !49970, !DIExpression(), !49976)
    #dbg_value(i8 0, !49970, !DIExpression(), !49978)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 97 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.pre = load i8, ptr %i.f, align 8, !dbg !49994, !range !4239, !alias.scope !49979
  %i.i = trunc nuw i8 %.pre to i1, !dbg !49994
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49979), !dbg !49995
    #dbg_value(ptr %i.e, !4245, !DIExpression(), !49897)
  br i1 %i.i, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread, label %bb.b, !dbg !49996

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread: ; preds = %bb.a
  %i.j = load i8, ptr %i.g, align 1, !dbg !49997, !alias.scope !49979, !noundef !2044
  br label %bb.e, !dbg !49998

bb.b:                                             ; preds = %.critedge, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !49999, !noalias !49981
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.e), !dbg !50000, !noalias !49982
  %i.k = load i8, ptr %i.d, align 8, !dbg !49999, !range !4251, !noalias !49981, !noundef !2044
  switch i8 %i.k, label %bb.d [
    i8 2, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread39
    i8 0, label %bb.c
  ], !dbg !50001, !prof !4252

bb.c:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.h, align 1, !dbg !50002, !noalias !49981, !noundef !2044 ; 2 uses
    #dbg_value(i8 %i.l, !4248, !DIExpression(), !49899)
  store i8 1, ptr %i.f, align 8, !dbg !50003, !alias.scope !49979
  store i8 %i.l, ptr %i.g, align 1, !dbg !50003, !alias.scope !49979
  br label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread39, !dbg !50004

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread39: ; preds = %bb.c, %bb.b
  %.sroa.10.0.ph = phi i8 [ undef, %bb.b ], [ %i.l, %bb.c ]
  %.sroa.6.0.ph = phi i1 [ false, %bb.b ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !50005, !noalias !49981
  br label %bb.e, !dbg !49998

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !50006
  %i.n = load ptr, ptr %i.m, align 8, !dbg !50006, !noalias !49981, !nonnull !2044, !noundef !2044
    #dbg_value(ptr %i.n, !4247, !DIExpression(), !49900)
  %i.o = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.n), !dbg !50007, !noalias !49982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !50005, !noalias !49981
    #dbg_value(ptr %i.o, !49944, !DIExpression(), !49983)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50008
  store ptr %i.o, ptr %i.p, align 8, !dbg !50008
  store i64 1, ptr %0, align 8, !dbg !50008
  br label %bb.s, !dbg !50009

bb.e:                                             ; preds = %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread39, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread
  %.sroa.6.138 = phi i1 [ true, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread ], [ %.sroa.6.0.ph, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread39 ]
  %.sroa.10.137 = phi i8 [ %i.j, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread ], [ %.sroa.10.0.ph, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread39 ]
    #dbg_value(i8 poison, !49971, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !49976)
    #dbg_value(i8 poison, !49971, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !49976)
  %i.q = add i8 %.sroa.10.137, -48, !dbg !50010
  %i.r = icmp ult i8 %i.q, 10, !dbg !50010
  %.sroa.04.0 = and i1 %.sroa.6.138, %i.r, !dbg !50010
  br i1 %.sroa.04.0, label %.critedge, label %bb.f, !dbg !50011

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !49985), !dbg !50012
    #dbg_value(ptr %i.e, !4245, !DIExpression(), !49904)
  %i.s = load i8, ptr %i.f, align 8, !dbg !50013, !range !4239, !alias.scope !49985, !noundef !2044
  %i.t = trunc nuw i8 %i.s to i1, !dbg !50013
  br i1 %i.t, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit26.thread, label %bb.g, !dbg !50014

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit26.thread: ; preds = %bb.f
  %i.u = load i8, ptr %i.g, align 1, !dbg !50015, !alias.scope !49985, !noundef !2044
  br label %bb.j, !dbg !50016

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !50017, !noalias !49986
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.e), !dbg !50018, !noalias !49987
  %i.v = load i8, ptr %i.c, align 8, !dbg !50017, !range !4251, !noalias !49986, !noundef !2044
  switch i8 %i.v, label %bb.i [
    i8 2, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit26.thread50
    i8 0, label %bb.h
  ], !dbg !50019, !prof !4252

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 1, !dbg !50020
  %i.x = load i8, ptr %i.w, align 1, !dbg !50020, !noalias !49986, !noundef !2044 ; 2 uses
    #dbg_value(i8 %i.x, !4248, !DIExpression(), !49906)
  store i8 1, ptr %i.f, align 8, !dbg !50021, !alias.scope !49985
  store i8 %i.x, ptr %i.g, align 1, !dbg !50021, !alias.scope !49985
  br label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit26.thread50, !dbg !50022

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit26.thread50: ; preds = %bb.h, %bb.g
  %.sroa.629.0.ph = phi i8 [ 0, %bb.g ], [ %i.x, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !50023, !noalias !49986
  br label %bb.j, !dbg !50016

.critedge:                                        ; preds = %bb.e
    #dbg_value(ptr %i.e, !4256, !DIExpression(), !49908)
  store i8 0, ptr %i.f, align 8, !dbg !50024, !alias.scope !49988
  call void @llvm.experimental.noalias.scope.decl(metadata !49979), !dbg !49995
    #dbg_value(ptr %i.e, !4245, !DIExpression(), !49897)
  br label %bb.b, !dbg !49996

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !50025
  %i.z = load ptr, ptr %i.y, align 8, !dbg !50025, !noalias !49986, !nonnull !2044, !noundef !2044
    #dbg_value(ptr %i.z, !4247, !DIExpression(), !49911)
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.z), !dbg !50026, !noalias !49987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !50023, !noalias !49986
    #dbg_value(ptr %i.aa, !49946, !DIExpression(), !49989)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50027
  store ptr %i.aa, ptr %i.ab, align 8, !dbg !50027
  store i64 1, ptr %0, align 8, !dbg !50027
  br label %bb.s, !dbg !50009

bb.j:                                             ; preds = %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit26.thread50, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit26.thread
  %.sroa.629.149 = phi i8 [ %i.u, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit26.thread ], [ %.sroa.629.0.ph, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit26.thread50 ]
    #dbg_value(i8 poison, !49971, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !49978)
    #dbg_value(i8 poison, !49971, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !49978)
  switch i8 %.sroa.629.149, label %bb.k [
    i8 101, label %bb.r
    i8 69, label %bb.r
  ], !dbg !50028

bb.k:                                             ; preds = %bb.j
  %.val = load i64, ptr %i.e, align 8, !dbg !50029 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !50029
  %.val24 = load i64, ptr %i.ac, align 8, !dbg !50029 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49991), !dbg !50029
    #dbg_value(i32 %4, !6980, !DIExpression(), !49915)
    #dbg_value(ptr poison, !6983, !DIExpression(), !49915)
    #dbg_value(i1 %2, !6984, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !49915)
    #dbg_value(i64 %3, !6985, !DIExpression(), !49915)
  %i.ad = uitofp i64 %3 to double, !dbg !50030    ; 2 uses
    #dbg_value(double %i.ad, !6986, !DIExpression(), !49916)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49918)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49920)
    #dbg_value(i64 309, !6989, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49918)
    #dbg_value(i64 309, !7011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49920)
    #dbg_value(i32 %4, !7018, !DIExpression(), !49922)
  %.sroa.012.07.i = call i32 @llvm.abs.i32(i32 %4, i1 false), !dbg !50031 ; 2 uses
  %i.ae = icmp ult i32 %.sroa.012.07.i, 309, !dbg !50032
  br i1 %i.ae, label %._crit_edge.i, label %.lr.ph.i, !dbg !50032

.lr.ph.i:                                         ; preds = %bb.k, %bb.m
  %.sroa.0.09.i = phi i32 [ %i.am, %bb.m ], [ %4, %bb.k ] ; 2 uses
  %.sroa.04.08.i = phi double [ %i.al, %bb.m ], [ %i.ad, %bb.k ] ; 3 uses
    #dbg_value(i32 %.sroa.0.09.i, !6980, !DIExpression(), !49915)
    #dbg_value(double %.sroa.04.08.i, !6986, !DIExpression(), !49916)
  %i.af = fcmp oeq double %.sroa.04.08.i, 0.000000e+00, !dbg !50033
  br i1 %i.af, label %.loopexit.i, label %bb.l, !dbg !50033

._crit_edge.i:                                    ; preds = %bb.m, %bb.k
  %.sroa.04.0.lcssa.i = phi double [ %i.ad, %bb.k ], [ %i.al, %bb.m ], !dbg !50034 ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %4, %bb.k ], [ %i.am, %bb.m ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.07.i, %bb.k ], [ %.sroa.012.0.i, %bb.m ], !dbg !50031
  %i.ag = zext nneg i32 %.sroa.012.0.lcssa.i to i64, !dbg !50035
    #dbg_value(i64 %i.ag, !7006, !DIExpression(), !49918)
    #dbg_value(i64 %i.ag, !7016, !DIExpression(), !49920)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, i64 %i.ag, !dbg !50036
  %i.ai = load double, ptr %i.ah, align 8, !dbg !50037, !noalias !49991, !noundef !2044 ; 2 uses
    #dbg_value(double %i.ai, !6987, !DIExpression(), !49923)
  %i.aj = icmp sgt i32 %.sroa.0.0.lcssa.i, -1, !dbg !50038
  br i1 %i.aj, label %bb.p, label %bb.o, !dbg !50038

bb.l:                                             ; preds = %.lr.ph.i
  %i.ak = icmp sgt i32 %.sroa.0.09.i, -1, !dbg !50039
  br i1 %i.ak, label %bb.n, label %bb.m, !dbg !50039, !prof !5512

bb.m:                                             ; preds = %bb.l
  %i.al = fdiv double %.sroa.04.08.i, 1.000000e+308, !dbg !50040 ; 2 uses
    #dbg_value(double %i.al, !6986, !DIExpression(), !49916)
  %i.am = add nsw i32 %.sroa.0.09.i, 308, !dbg !50041 ; 3 uses
    #dbg_value(i32 %i.am, !6980, !DIExpression(), !49915)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49918)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49920)
    #dbg_value(i64 309, !6989, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49918)
    #dbg_value(i64 309, !7011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49920)
    #dbg_value(i32 %i.am, !7018, !DIExpression(), !49922)
  %.sroa.012.0.i = call i32 @llvm.abs.i32(i32 %i.am, i1 true), !dbg !50031 ; 2 uses
    #dbg_value(i32 %.sroa.012.0.i, !7006, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !49918)
    #dbg_value(i32 %.sroa.012.0.i, !7016, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !49920)
  %i.an = icmp samesign ult i32 %.sroa.012.0.i, 309, !dbg !50032
  br i1 %i.an, label %._crit_edge.i, label %.lr.ph.i, !dbg !50032

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !50042, !noalias !49991
  store i64 14, ptr %i.a, align 8, !dbg !50042, !noalias !49991
    #dbg_value(ptr poison, !6954, !DIExpression(), !49925)
    #dbg_declare(ptr %i.a, !6956, !DIExpression(), !49926)
    #dbg_value(i64 %.val, !6957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49927)
    #dbg_value(i64 %.val24, !6957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49927)
  %i.ao = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val, i64 noundef %.val24), !dbg !50043, !noalias !49992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !50044, !noalias !49991
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50045
  store ptr %i.ao, ptr %i.ap, align 8, !dbg !50045, !alias.scope !49991
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !50046

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.p, %bb.o
  %.sroa.04.1.i = phi double [ %i.at, %bb.p ], [ %i.as, %bb.o ], [ %.sroa.04.08.i, %.lr.ph.i ], !dbg !50034 ; 2 uses
    #dbg_value(double %.sroa.04.1.i, !6986, !DIExpression(), !49916)
  %i.aq = fneg double %.sroa.04.1.i, !dbg !50047
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.aq, !dbg !50047
    #dbg_value(double %.sroa.04.2.i, !6986, !DIExpression(), !49916)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50048
  store double %.sroa.04.2.i, ptr %i.ar, align 8, !dbg !50048, !alias.scope !49991
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !50049

bb.o:                                             ; preds = %._crit_edge.i
  %i.as = fdiv double %.sroa.04.0.lcssa.i, %i.ai, !dbg !50050
    #dbg_value(double %i.as, !6986, !DIExpression(), !49916)
  br label %.loopexit.i, !dbg !50051

bb.p:                                             ; preds = %._crit_edge.i
  %i.at = fmul double %.sroa.04.0.lcssa.i, %i.ai, !dbg !50052 ; 2 uses
    #dbg_value(double %i.at, !6986, !DIExpression(), !49916)
    #dbg_value(double %i.at, !7025, !DIExpression(), !49931)
  %i.au = call double @llvm.fabs.f64(double %i.at), !dbg !50053
  %i.av = fcmp oeq double %i.au, +inf, !dbg !50053
  br i1 %i.av, label %bb.q, label %.loopexit.i, !dbg !50054, !prof !5512

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !50055, !noalias !49991
  store i64 14, ptr %i.b, align 8, !dbg !50055, !noalias !49991
    #dbg_value(ptr poison, !6954, !DIExpression(), !49933)
    #dbg_declare(ptr %i.b, !6956, !DIExpression(), !49934)
    #dbg_value(i64 %.val, !6957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49935)
    #dbg_value(i64 %.val24, !6957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49935)
  %i.aw = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val, i64 noundef %.val24), !dbg !50056, !noalias !49993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !50057, !noalias !49991
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50058
  store ptr %i.aw, ptr %i.ax, align 8, !dbg !50058, !alias.scope !49991
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !50046

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.n, %.loopexit.i, %bb.q
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.q ], [ 1, %bb.n ], !dbg !50059
  store i64 %storemerge.i, ptr %0, align 8, !dbg !50059, !alias.scope !49991
  br label %bb.s, !dbg !50029

bb.r:                                             ; preds = %bb.j, %bb.j
  call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14parse_exponentCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4), !dbg !50060
  br label %bb.s, !dbg !50060

bb.s:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, %bb.r, %bb.i, %bb.d
  ret void, !dbg !50061
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEE23parse_exponent_overflowCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !50064 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %1, !50092, !DIExpression(), !50099)
    #dbg_value(ptr %1, !50100, !DIExpression(), !50105)
    #dbg_value(ptr %1, !50106, !DIExpression(), !50109)
    #dbg_value(ptr %1, !50110, !DIExpression(), !50113)
    #dbg_value(i1 %2, !50093, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !50099)
    #dbg_value(i1 %3, !50094, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !50099)
    #dbg_value(i1 %4, !50095, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !50099)
    #dbg_value(i8 0, !50114, !DIExpression(), !50119)
  %.not = xor i1 %4, true, !dbg !50129
  %brmerge = or i1 %3, %.not, !dbg !50129
  br i1 %brmerge, label %.preheader, label %bb.d, !dbg !50129, !prof !50120

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 97 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.pre = load i8, ptr %i.c, align 8, !dbg !50130, !range !4239, !alias.scope !50121
  %i.g = trunc nuw i8 %.pre to i1, !dbg !50130
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50121), !dbg !50131
    #dbg_value(ptr %1, !4245, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !50075)
  br i1 %i.g, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread, label %bb.b, !dbg !50132

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread: ; preds = %.preheader
  %i.h = load i8, ptr %i.d, align 1, !dbg !50133, !alias.scope !50121, !noundef !2044
  br label %bb.g, !dbg !50134

bb.b:                                             ; preds = %.critedge, %.preheader
    #dbg_value(ptr %i.e, !4245, !DIExpression(), !50075)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !50135, !noalias !50123
  call void @_RNvXs_NtCsenfyI6F4F2A_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsexYYUdYSQU6_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.e), !dbg !50136, !noalias !50124
  %i.i = load i8, ptr %i.a, align 8, !dbg !50135, !range !4251, !noalias !50123, !noundef !2044
  switch i8 %i.i, label %bb.f [
    i8 2, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread21
    i8 0, label %bb.c
  ], !dbg !50137, !prof !4252

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.f, align 1, !dbg !50138, !noalias !50123, !noundef !2044 ; 2 uses
    #dbg_value(i8 %i.j, !4248, !DIExpression(), !50077)
  store i8 1, ptr %i.c, align 8, !dbg !50139, !alias.scope !50121
  store i8 %i.j, ptr %i.d, align 1, !dbg !50139, !alias.scope !50121
  br label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread21, !dbg !50140

_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread21: ; preds = %bb.c, %bb.b
  %.sroa.10.0.ph = phi i8 [ undef, %bb.b ], [ %i.j, %bb.c ]
  %.sroa.6.0.ph = phi i1 [ false, %bb.b ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !50141, !noalias !50123
  br label %bb.g, !dbg !50134

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !50142
  store i64 14, ptr %i.b, align 8, !dbg !50142
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50125), !dbg !50143
    #dbg_value(ptr %1, !6954, !DIExpression(), !50081)
    #dbg_declare(ptr %i.b, !6956, !DIExpression(), !50082)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !50144
  %.val.i = load i64, ptr %i.k, align 8, !dbg !50145, !alias.scope !50125, !noundef !2044
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !50145
  %.val4.i = load i64, ptr %i.l, align 8, !dbg !50145, !alias.scope !50125, !noundef !2044
    #dbg_value(i64 %.val.i, !6957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50083)
    #dbg_value(i64 %.val4.i, !6957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50083)
  %i.m = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val.i, i64 noundef %.val4.i), !dbg !50146, !noalias !50125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !50147
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50148
  store ptr %i.m, ptr %i.n, align 8, !dbg !50148
  br label %bb.e, !dbg !50149

bb.e:                                             ; preds = %bb.h, %bb.f, %bb.d
  %.sink = phi i64 [ 0, %bb.h ], [ 1, %bb.f ], [ 1, %bb.d ]
  store i64 %.sink, ptr %0, align 8, !dbg !50099
  ret void, !dbg !50150

bb.f:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !50151
  %i.p = load ptr, ptr %i.o, align 8, !dbg !50151, !noalias !50123, !nonnull !2044, !noundef !2044
    #dbg_value(ptr %i.p, !4247, !DIExpression(), !50084)
  %i.q = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.p), !dbg !50152, !noalias !50124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !50141, !noalias !50123
    #dbg_value(ptr %i.q, !50097, !DIExpression(), !50127)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50153
  store ptr %i.q, ptr %i.r, align 8, !dbg !50153
  br label %bb.e, !dbg !50149

bb.g:                                             ; preds = %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread21, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread
  %.sroa.6.120 = phi i1 [ true, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread ], [ %.sroa.6.0.ph, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread21 ]
  %.sroa.10.119 = phi i8 [ %i.h, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread ], [ %.sroa.10.0.ph, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json4readINtB5_6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtB5_4Read4peekCsaTqK2fWTXJW_11qlog_dancer.exit.thread21 ]
    #dbg_value(i8 poison, !50115, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !50119)
    #dbg_value(i8 poison, !50115, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !50119)
  %i.s = add i8 %.sroa.10.119, -48, !dbg !50154
  %i.t = icmp ult i8 %i.s, 10, !dbg !50154
  %.sroa.03.0 = and i1 %.sroa.6.120, %i.t, !dbg !50154
  br i1 %.sroa.03.0, label %.critedge, label %bb.h, !dbg !50155

bb.h:                                             ; preds = %bb.g
  %. = select i1 %2, double 0.000000e+00, double -0.000000e+00, !dbg !50156
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50157
  store double %., ptr %i.u, align 8, !dbg !50157
  br label %bb.e, !dbg !50150

.critedge:                                        ; preds = %bb.g
    #dbg_value(ptr %1, !4256, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !50086)
  store i8 0, ptr %i.c, align 8, !dbg !50158, !alias.scope !50128
  call void @llvm.experimental.noalias.scope.decl(metadata !50121), !dbg !50131
    #dbg_value(ptr %1, !4245, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !50075)
  br label %bb.b, !dbg !50132
}
end_hunk_3
begin_hunk_4_@_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsaTqK2fWTXJW_11qlog_dancer:bb.a
  %i.l = phi i64 [ %i.o, %bb.b ], [ %.promoted, %bb.a ] ; 3 uses
    #dbg_value(ptr %.sroa.01.024, !6302, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50499)
    #dbg_value(ptr %.sroa.01.024, !6302, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !50499)
    #dbg_value(ptr %.sroa.01.024, !6304, !DIExpression(), !50508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50509), !dbg !50516
    #dbg_value(ptr %0, !6320, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !50458)
  %exitcond.not = icmp eq i64 %i.l, %umax, !dbg !50517
  br i1 %exitcond.not, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit, label %bb.c, !dbg !50517

bb.c:                                             ; preds = %.lr.ph
    #dbg_value(ptr %i.g, !6320, !DIExpression(), !50458)
    #dbg_value(ptr %.sroa.01.024, !6302, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !50499)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l, !dbg !50518
  %i.n = load i8, ptr %i.m, align 1, !dbg !50518, !noalias !50510, !noundef !2044
    #dbg_value(i8 %i.n, !6321, !DIExpression(), !50460)
  %i.o = add i64 %i.l, 1, !dbg !50519             ; 2 uses
  store i64 %i.o, ptr %i.d, align 8, !dbg !50519, !alias.scope !50509
    #dbg_value(i8 %i.n, !6307, !DIExpression(), !50511)
  %i.p = load i8, ptr %.sroa.01.024, align 1, !dbg !50520, !noundef !2044
  %.not = icmp eq i8 %i.n, %i.p, !dbg !50521
  br i1 %.not, label %bb.b, label %bb.d, !dbg !50521, !prof !5413

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !50522
  store i64 5, ptr %i.b, align 8, !dbg !50522
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !50523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !50524
  br label %.loopexit, !dbg !50525

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !50526
  store i64 9, ptr %i.a, align 8, !dbg !50526
  %i.r = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !50527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !50528
  br label %.loopexit, !dbg !50529

.loopexit:                                        ; preds = %bb.b, %bb.a, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit, %bb.d
  %.sroa.0.1 = phi ptr [ %i.r, %bb.d ], [ %i.q, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit ], [ null, %bb.a ], [ null, %bb.b ], !dbg !50530
  ret ptr %.sroa.0.1, !dbg !50531
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12parse_numberCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #0 !dbg !50539 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 15 uses
    #dbg_value(ptr %1, !50631, !DIExpression(), !50642)
    #dbg_value(ptr %1, !50643, !DIExpression(), !50648)
    #dbg_value(ptr %1, !50649, !DIExpression(), !50652)
    #dbg_value(i1 %2, !50632, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !50642)
    #dbg_value(i64 %3, !50633, !DIExpression(), !50642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50653), !dbg !50705
    #dbg_value(ptr %1, !4469, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !50547)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !50706 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !50706, !alias.scope !50653, !noundef !2044 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !50707
  %i.j = load i64, ptr %i.i, align 8, !dbg !50707, !alias.scope !50653, !noundef !2044 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j, !dbg !50706
  br i1 %i.k, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, !dbg !50706

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !50708
    #dbg_value(ptr %i.l, !4469, !DIExpression(), !50547)
  %i.m = load ptr, ptr %i.l, align 8, !dbg !50709, !alias.scope !50653, !nonnull !2044, !noundef !2044 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h, !dbg !50709
  %i.o = load i8, ptr %i.n, align 1, !dbg !50709, !noalias !50654, !noundef !2044
  switch i8 %i.o, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread [
    i8 46, label %bb.b
    i8 101, label %bb.p
    i8 69, label %bb.p
  ], !dbg !50710

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread: ; preds = %bb.a, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  br i1 %2, label %bb.s, label %bb.v, !dbg !50711

bb.b:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !50712
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50656), !dbg !50713
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50657), !dbg !50713
    #dbg_value(i64 %3, !50658, !DIExpression(), !50566)
    #dbg_value(ptr %1, !50660, !DIExpression(), !50566)
    #dbg_value(ptr %1, !50676, !DIExpression(), !50569)
    #dbg_value(ptr %1, !50678, !DIExpression(), !50576)
    #dbg_value(ptr %1, !50684, !DIExpression(), !50579)
    #dbg_value(ptr %1, !50676, !DIExpression(), !50581)
    #dbg_value(ptr %1, !50684, !DIExpression(), !50583)
    #dbg_value(ptr %1, !50678, !DIExpression(), !50585)
    #dbg_value(ptr %1, !50684, !DIExpression(), !50587)
    #dbg_value(i1 %2, !50661, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !50566)
    #dbg_value(i32 0, !50662, !DIExpression(), !50566)
    #dbg_value(i64 -1, !50668, !DIExpression(), !50588)
    #dbg_value(ptr %1, !4472, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !50590)
  %i.p = add nuw i64 %i.h, 1, !dbg !50714         ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !dbg !50714, !alias.scope !50687
    #dbg_value(i32 0, !50663, !DIExpression(), !50593)
  %i.q = icmp ult i64 %i.p, %i.j, !dbg !50715
  br i1 %i.q, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i, label %.thread.thread.i, !dbg !50715

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i: ; preds = %bb.b
    #dbg_value(ptr %1, !4472, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !50590)
  %i.r = trunc i64 %i.h to i32, !dbg !50715
  %i.s = add i32 %i.r, 1, !dbg !50715
  %i.t = trunc i64 %i.j to i32, !dbg !50715
  %i.u = sub i32 %i.s, %i.t, !dbg !50715          ; 2 uses
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i, !dbg !50715

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i: ; preds = %bb.n, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i
  %.sroa.0.078.i = phi i64 [ %3, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bg, %bb.n ] ; 6 uses
  %.sroa.07.077.i = phi i32 [ 0, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bh, %bb.n ] ; 5 uses
  %i.v = phi i64 [ %i.p, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.be, %bb.n ] ; 2 uses
    #dbg_value(i64 %.sroa.0.078.i, !50658, !DIExpression(), !50566)
    #dbg_value(i32 %.sroa.07.077.i, !50663, !DIExpression(), !50593)
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.v, !dbg !50716
  %i.x = load i8, ptr %i.w, align 1, !dbg !50716, !noalias !50688, !noundef !2044 ; 2 uses
    #dbg_value(i8 poison, !50666, !DIExpression(), !50598)
  %i.y = add i8 %i.x, -48, !dbg !50717            ; 3 uses
  %or.cond.i = icmp ult i8 %i.y, 10, !dbg !50717
  br i1 %or.cond.i, label %bb.d, label %bb.c, !dbg !50717

bb.c:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i
  %i.z = icmp eq i32 %.sroa.07.077.i, 0, !dbg !50718
  br i1 %i.z, label %bb.e, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.i, !dbg !50718

.thread.i:                                        ; preds = %bb.n
    #dbg_value(i8 poison, !50666, !DIExpression(), !50598)
  %i.aa = icmp eq i32 %i.u, 0, !dbg !50718
  br i1 %i.aa, label %.thread.thread.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i, !dbg !50718

bb.d:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i
  %i.ab = zext nneg i8 %i.y to i64, !dbg !50719
    #dbg_value(i64 %i.ab, !50667, !DIExpression(), !50599)
  %i.ac = icmp ugt i64 %.sroa.0.078.i, 1844674407370955160, !dbg !50720
  br i1 %i.ac, label %bb.m, label %bb.n, !dbg !50720

bb.e:                                             ; preds = %bb.c
    #dbg_value(ptr %1, !4469, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !50601)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !50721, !noalias !50689
  store i64 13, ptr %i.d, align 8, !dbg !50721, !noalias !50689
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !dbg !50722, !noalias !50656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !50723, !noalias !50689
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !50724
  store ptr %i.ad, ptr %i.ae, align 8, !dbg !50724, !alias.scope !50656
  store i64 1, ptr %i.f, align 8, !dbg !50724, !alias.scope !50656
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !50725

.thread.thread.i:                                 ; preds = %.thread.i, %bb.b
    #dbg_value(ptr %1, !4469, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !50601)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !50726, !noalias !50689
  store i64 5, ptr %i.c, align 8, !dbg !50726, !noalias !50689
  %i.af = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !50727, !noalias !50656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !50728, !noalias !50689
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !50729
  store ptr %i.af, ptr %i.ag, align 8, !dbg !50729, !alias.scope !50656
  store i64 1, ptr %i.f, align 8, !dbg !50729, !alias.scope !50656
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !50730

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.i: ; preds = %bb.c
    #dbg_value(i32 %.sroa.07.077.i, !50672, !DIExpression(), !50602)
    #dbg_value(ptr %1, !4469, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !50604)
  switch i8 %i.x, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ], !dbg !50731

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.i, %.thread.i
  %.sroa.07.076.i = phi i32 [ %i.u, %.thread.i ], [ %.sroa.07.077.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.i ] ; 3 uses
  %.sroa.0.073.i = phi i64 [ %i.bg, %.thread.i ], [ %.sroa.0.078.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50691), !dbg !50732
    #dbg_value(i32 %.sroa.07.076.i, !7050, !DIExpression(), !50608)
    #dbg_value(ptr %1, !7052, !DIExpression(), !50608)
    #dbg_value(i1 %2, !7053, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !50608)
    #dbg_value(i64 %.sroa.0.073.i, !7054, !DIExpression(), !50608)
  %i.ah = uitofp i64 %.sroa.0.073.i to double, !dbg !50733 ; 2 uses
    #dbg_value(double %i.ah, !7055, !DIExpression(), !50609)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7058, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50611)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7061, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50613)
    #dbg_value(i64 309, !7058, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50611)
    #dbg_value(i64 309, !7061, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50613)
    #dbg_value(i32 %.sroa.07.076.i, !7064, !DIExpression(), !50615)
  %.sroa.012.028.i.i = tail call i32 @llvm.abs.i32(i32 %.sroa.07.076.i, i1 false), !dbg !50734 ; 2 uses
  %i.ai = icmp ult i32 %.sroa.012.028.i.i, 309, !dbg !50735
  br i1 %i.ai, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !50735

.lr.ph.i.i:                                       ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i, %bb.g
  %.sroa.0.030.i.i = phi i32 [ %i.aq, %bb.g ], [ %.sroa.07.076.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i ] ; 2 uses
  %.sroa.04.029.i.i = phi double [ %i.ap, %bb.g ], [ %i.ah, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i ] ; 3 uses
    #dbg_value(i32 %.sroa.0.030.i.i, !7050, !DIExpression(), !50608)
    #dbg_value(double %.sroa.04.029.i.i, !7055, !DIExpression(), !50609)
  %i.aj = fcmp oeq double %.sroa.04.029.i.i, 0.000000e+00, !dbg !50736
  br i1 %i.aj, label %.loopexit.i.i, label %bb.f, !dbg !50736

._crit_edge.i.i:                                  ; preds = %bb.g, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i
  %.sroa.04.0.lcssa.i.i = phi double [ %i.ah, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i ], [ %i.ap, %bb.g ], !dbg !50737 ; 2 uses
  %.sroa.0.0.lcssa.i.i = phi i32 [ %.sroa.07.076.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i ], [ %i.aq, %bb.g ]
  %.sroa.012.0.lcssa.i.i = phi i32 [ %.sroa.012.028.i.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i ], [ %.sroa.012.0.i.i, %bb.g ], !dbg !50734
  %i.ak = zext nneg i32 %.sroa.012.0.lcssa.i.i to i64, !dbg !50738
    #dbg_value(i64 %i.ak, !7059, !DIExpression(), !50611)
    #dbg_value(i64 %i.ak, !7062, !DIExpression(), !50613)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, i64 %i.ak, !dbg !50739
  %i.am = load double, ptr %i.al, align 8, !dbg !50740, !noalias !50692, !noundef !2044 ; 2 uses
    #dbg_value(double %i.am, !7056, !DIExpression(), !50617)
  %i.an = icmp sgt i32 %.sroa.0.0.lcssa.i.i, -1, !dbg !50741
  br i1 %i.an, label %bb.j, label %bb.i, !dbg !50741

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = icmp sgt i32 %.sroa.0.030.i.i, -1, !dbg !50742
  br i1 %i.ao, label %bb.h, label %bb.g, !dbg !50742, !prof !5512

bb.g:                                             ; preds = %bb.f
  %i.ap = fdiv double %.sroa.04.029.i.i, 1.000000e+308, !dbg !50743 ; 2 uses
    #dbg_value(double %i.ap, !7055, !DIExpression(), !50609)
  %i.aq = add nsw i32 %.sroa.0.030.i.i, 308, !dbg !50744 ; 3 uses
    #dbg_value(i32 %i.aq, !7050, !DIExpression(), !50608)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7058, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50611)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7061, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50613)
    #dbg_value(i64 309, !7058, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50611)
    #dbg_value(i64 309, !7061, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50613)
    #dbg_value(i32 %i.aq, !7064, !DIExpression(), !50615)
  %.sroa.012.0.i.i = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true), !dbg !50734 ; 2 uses
    #dbg_value(i32 %.sroa.012.0.i.i, !7059, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !50611)
    #dbg_value(i32 %.sroa.012.0.i.i, !7062, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !50613)
  %i.ar = icmp samesign ult i32 %.sroa.012.0.i.i, 309, !dbg !50735
  br i1 %i.ar, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !50735

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !50745, !noalias !50692
  store i64 14, ptr %i.a, align 8, !dbg !50745, !noalias !50692
  %i.as = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !50746, !noalias !50693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !50747, !noalias !50692
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !50748
  store ptr %i.as, ptr %i.at, align 8, !dbg !50748, !alias.scope !50693
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit.i, !dbg !50749

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %bb.j, %bb.i
  %.sroa.04.1.i.i = phi double [ %i.ax, %bb.j ], [ %i.aw, %bb.i ], [ %.sroa.04.029.i.i, %.lr.ph.i.i ], !dbg !50737 ; 2 uses
    #dbg_value(double %.sroa.04.1.i.i, !7055, !DIExpression(), !50609)
  %i.au = fneg double %.sroa.04.1.i.i, !dbg !50750
  %.sroa.04.2.i.i = select i1 %2, double %.sroa.04.1.i.i, double %i.au, !dbg !50750
    #dbg_value(double %.sroa.04.2.i.i, !7055, !DIExpression(), !50609)
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !50751
  store double %.sroa.04.2.i.i, ptr %i.av, align 8, !dbg !50751, !alias.scope !50693
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit.i, !dbg !50752

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.aw = fdiv double %.sroa.04.0.lcssa.i.i, %i.am, !dbg !50753
    #dbg_value(double %i.aw, !7055, !DIExpression(), !50609)
  br label %.loopexit.i.i, !dbg !50754

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ax = fmul double %.sroa.04.0.lcssa.i.i, %i.am, !dbg !50755 ; 2 uses
    #dbg_value(double %i.ax, !7055, !DIExpression(), !50609)
    #dbg_value(double %i.ax, !7067, !DIExpression(), !50619)
  %i.ay = tail call double @llvm.fabs.f64(double %i.ax), !dbg !50756
  %i.az = fcmp oeq double %i.ay, +inf, !dbg !50756
  br i1 %i.az, label %bb.k, label %.loopexit.i.i, !dbg !50757, !prof !5512

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !50758, !noalias !50692
  store i64 14, ptr %i.b, align 8, !dbg !50758, !noalias !50692
  %i.ba = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !50759, !noalias !50693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !50760, !noalias !50692
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !50761
  store ptr %i.ba, ptr %i.bb, align 8, !dbg !50761, !alias.scope !50693
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit.i, !dbg !50749

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit.i: ; preds = %bb.k, %.loopexit.i.i, %bb.h
  %storemerge.i.i = phi i64 [ 0, %.loopexit.i.i ], [ 1, %bb.k ], [ 1, %bb.h ], !dbg !50762
  store i64 %storemerge.i.i, ptr %i.f, align 8, !dbg !50762, !alias.scope !50693
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !50763

bb.l:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.i
  call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.078.i, i32 noundef %.sroa.07.077.i), !dbg !50764
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !50765

bb.m:                                             ; preds = %bb.d
  %i.bc = icmp ne i64 %.sroa.0.078.i, 1844674407370955161, !dbg !50766
  %i.bd = icmp samesign ugt i8 %i.y, 5
  %or.cond1.i = or i1 %i.bc, %i.bd, !dbg !50766
  br i1 %or.cond1.i, label %bb.o, label %bb.n, !dbg !50766, !prof !5517

bb.n:                                             ; preds = %bb.m, %bb.d
    #dbg_value(ptr %1, !4472, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !50621)
  %i.be = add i64 %i.v, 1, !dbg !50767            ; 3 uses
  store i64 %i.be, ptr %i.g, align 8, !dbg !50767, !alias.scope !50694
  %i.bf = mul nuw i64 %.sroa.0.078.i, 10, !dbg !50768
  %i.bg = add i64 %i.bf, %i.ab, !dbg !50769       ; 2 uses
    #dbg_value(i64 %i.bg, !50658, !DIExpression(), !50566)
  %i.bh = add i32 %.sroa.07.077.i, -1, !dbg !50770
    #dbg_value(i32 %i.bh, !50663, !DIExpression(), !50593)
    #dbg_value(ptr %1, !4469, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !50624)
  %exitcond.not.i = icmp eq i64 %i.be, %i.j, !dbg !50715
  br i1 %exitcond.not.i, label %.thread.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i, !dbg !50715

bb.o:                                             ; preds = %bb.m
    #dbg_value(i32 %.sroa.07.077.i, !50669, !DIExpression(), !50625)
  call void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE22parse_decimal_overflowCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.078.i, i32 noundef %.sroa.07.077.i) #23, !dbg !50771
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !50772

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.e, %.thread.thread.i, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit.i, %bb.l, %bb.o
  %i.bi = load i64, ptr %i.f, align 8, !dbg !50712, !range !5968, !noundef !2044
  %i.bj = trunc nuw i64 %i.bi to i1, !dbg !50710
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !50773 ; 2 uses
  br i1 %i.bj, label %bb.q, label %bb.r, !dbg !50710

bb.p:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !50774
  call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef 0), !dbg !50775
  %i.bl = load i64, ptr %i.e, align 8, !dbg !50774, !range !5968, !noundef !2044
  %i.bm = trunc nuw i64 %i.bl to i1, !dbg !50710
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !50773 ; 2 uses
  br i1 %i.bm, label %bb.t, label %bb.u, !dbg !50710

bb.q:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsaTqK2fWTXJW_11qlog_dancer.exit
  %i.bo = load ptr, ptr %i.bk, align 8, !dbg !50776, !nonnull !2044, !align !5087, !noundef !2044
    #dbg_value(ptr %i.bo, !50637, !DIExpression(), !50696)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50777
  store ptr %i.bo, ptr %i.bp, align 8, !dbg !50777
  store i64 -1, ptr %0, align 8, !dbg !50777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !50778
  br label %bb.x, !dbg !50779

bb.r:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsaTqK2fWTXJW_11qlog_dancer.exit
  %i.bq = load i64, ptr %i.bk, align 8, !dbg !50780, !noundef !2044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !50778
  br label %bb.s, !dbg !50778

bb.s:                                             ; preds = %bb.v, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, %bb.w, %bb.u, %bb.r
  %.sroa.9.0 = phi i64 [ %i.bt, %bb.u ], [ %i.by, %bb.w ], [ %3, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread ], [ %i.bq, %bb.r ], [ %i.bu, %bb.v ], !dbg !50642
  %.sroa.0.0 = phi i64 [ 0, %bb.u ], [ 0, %bb.w ], [ 1, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread ], [ 0, %bb.r ], [ 2, %bb.v ], !dbg !50642
  store i64 %.sroa.0.0, ptr %0, align 8, !dbg !50781
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50781
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !50781
  br label %bb.x, !dbg !50782

bb.t:                                             ; preds = %bb.p
  %i.br = load ptr, ptr %i.bn, align 8, !dbg !50776, !nonnull !2044, !align !5087, !noundef !2044
    #dbg_value(ptr %i.br, !50639, !DIExpression(), !50698)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50783
  store ptr %i.br, ptr %i.bs, align 8, !dbg !50783
  store i64 -1, ptr %0, align 8, !dbg !50783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !50784
  br label %bb.x, !dbg !50779

bb.u:                                             ; preds = %bb.p
  %i.bt = load i64, ptr %i.bn, align 8, !dbg !50780, !noundef !2044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !50784
  br label %bb.s, !dbg !50784

bb.v:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread
    #dbg_value(i64 %3, !50699, !DIExpression(), !50702)
  %i.bu = sub i64 0, %3, !dbg !50785              ; 2 uses
    #dbg_value(i64 %i.bu, !50640, !DIExpression(), !50704)
  %i.bv = icmp sgt i64 %i.bu, -1, !dbg !50786
  br i1 %i.bv, label %bb.w, label %bb.s, !dbg !50786

bb.w:                                             ; preds = %bb.v
  %i.bw = uitofp i64 %3 to double, !dbg !50787
  %i.bx = fneg double %i.bw, !dbg !50788
  %i.by = bitcast double %i.bx to i64, !dbg !50789
  br label %bb.s, !dbg !50790

bb.x:                                             ; preds = %bb.q, %bb.t, %bb.s
  ret void, !dbg !50782
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) unnamed_addr #0 !dbg !50806 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %1, !50839, !DIExpression(), !50857)
    #dbg_value(ptr %1, !50858, !DIExpression(), !50861)
    #dbg_value(ptr %1, !50862, !DIExpression(), !50869)
    #dbg_value(ptr %1, !50870, !DIExpression(), !50873)
    #dbg_value(ptr %1, !50862, !DIExpression(), !50875)
    #dbg_value(ptr %1, !50870, !DIExpression(), !50878)
    #dbg_value(ptr %1, !50879, !DIExpression(), !50882)
    #dbg_value(i1 %2, !50840, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !50857)
    #dbg_value(i64 -1, !50853, !DIExpression(), !50883)
    #dbg_value(i8 0, !50884, !DIExpression(), !50890)
    #dbg_value(i8 0, !50884, !DIExpression(), !50892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50893), !dbg !50908
    #dbg_value(ptr %1, !6320, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !50821)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !50909 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !50909, !alias.scope !50893, !noundef !2044 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !50910
  %i.h = load i64, ptr %i.g, align 8, !dbg !50910, !alias.scope !50893, !noundef !2044 ; 4 uses
  %i.i = icmp ult i64 %i.f, %i.h, !dbg !50909
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !50909

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !50911
    #dbg_value(ptr %i.j, !6320, !DIExpression(), !50821)
  %i.k = load ptr, ptr %i.j, align 8, !dbg !50912, !alias.scope !50893, !nonnull !2044, !noundef !2044 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f, !dbg !50912
  %i.m = load i8, ptr %i.l, align 1, !dbg !50912, !noalias !50894, !noundef !2044 ; 3 uses
end_hunk_4
begin_hunk_5_@_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCsaTqK2fWTXJW_11qlog_dancer:bb.a

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i: ; preds = %.preheader.i, %bb.l
  %i.cc = phi i64 [ %i.ch, %bb.l ], [ %i.bx, %.preheader.i ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cc, !dbg !51432
  %i.ce = load i8, ptr %i.cd, align 1, !dbg !51432, !noalias !51352, !noundef !2044
    #dbg_value(i8 1, !51330, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !51171)
    #dbg_value(i8 poison, !51330, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !51171)
  %i.cf = add i8 %i.ce, -48, !dbg !51433
  %i.cg = icmp ult i8 %i.cf, 10, !dbg !51433
  br i1 %i.cg, label %bb.l, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !51434

bb.l:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i
    #dbg_value(ptr %0, !4472, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !51196)
  %i.ch = add i64 %i.cc, 1, !dbg !51435           ; 3 uses
  store i64 %i.ch, ptr %i.f, align 8, !dbg !51435, !alias.scope !51353
    #dbg_value(ptr %0, !4469, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !51199)
  %exitcond.not.i = icmp eq i64 %i.ch, %i.i, !dbg !51427
  br i1 %exitcond.not.i, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsaTqK2fWTXJW_11qlog_dancer.exit, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i, !dbg !51427

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsaTqK2fWTXJW_11qlog_dancer.exit.loopexit89: ; preds = %.peel.next.i, %.peel.next.i.preheader
  store i64 %i.i, ptr %i.f, align 8, !dbg !51382, !alias.scope !51273
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !51436

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.e, %bb.l, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i, %bb.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i.i, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsaTqK2fWTXJW_11qlog_dancer.exit.loopexit89, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i, %.preheader.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i.i, %.preheader.i.i, %.loopexit.i, %.thread.thread.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit56, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread, %bb.d
  %.sroa.0.3 = phi ptr [ %i.x, %bb.d ], [ null, %.preheader.i ], [ null, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit56 ], [ %i.aa, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread ], [ null, %bb.i ], [ null, %.loopexit.i ], [ null, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsaTqK2fWTXJW_11qlog_dancer.exit.loopexit89 ], [ %i.at, %.thread.thread.i ], [ %i.bh, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i.i ], [ null, %.preheader.i.i ], [ null, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread ], [ %i.cb, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i ], [ null, %bb.l ], [ null, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i.i ], [ null, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i ], [ null, %bb.e ], !dbg !51437
  ret ptr %.sroa.0.3, !dbg !51436
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 !dbg !51454 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %1, !51507, !DIExpression(), !51528)
    #dbg_value(ptr %1, !51529, !DIExpression(), !51532)
    #dbg_value(ptr %1, !51533, !DIExpression(), !51540)
    #dbg_value(ptr %1, !51541, !DIExpression(), !51544)
    #dbg_value(ptr %1, !51529, !DIExpression(), !51546)
    #dbg_value(ptr %1, !51529, !DIExpression(), !51548)
    #dbg_value(ptr %1, !51549, !DIExpression(), !51552)
    #dbg_value(ptr %1, !51533, !DIExpression(), !51554)
    #dbg_value(ptr %1, !51541, !DIExpression(), !51557)
    #dbg_value(ptr %1, !51529, !DIExpression(), !51559)
    #dbg_value(i1 %2, !51508, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !51528)
    #dbg_value(i64 %3, !51509, !DIExpression(), !51528)
    #dbg_value(i32 %4, !51510, !DIExpression(), !51528)
    #dbg_value(i32 %4, !51560, !DIExpression(), !51564)
    #dbg_value(i32 %4, !51565, !DIExpression(), !51569)
    #dbg_value(i32 2147483647, !51524, !DIExpression(), !51570)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !51592 ; 2 uses
    #dbg_value(ptr %i.e, !4472, !DIExpression(), !51466)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !51593 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !51593, !alias.scope !51571, !noundef !2044 ; 2 uses
  %i.h = add i64 %i.g, 1, !dbg !51593             ; 5 uses
  store i64 %i.h, ptr %i.f, align 8, !dbg !51593, !alias.scope !51571
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51572), !dbg !51594
    #dbg_value(ptr %i.e, !4469, !DIExpression(), !51472)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !51595
  %i.j = load i64, ptr %i.i, align 8, !dbg !51595, !alias.scope !51572, !noundef !2044 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j, !dbg !51596
  br i1 %i.k, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, !dbg !51596

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %i.e, align 8, !dbg !51597, !alias.scope !51572, !nonnull !2044, !noundef !2044
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h, !dbg !51597
  %i.n = load i8, ptr %i.m, align 1, !dbg !51597, !noalias !51573, !noundef !2044
  switch i8 %i.n, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread [
    i8 43, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split
    i8 45, label %bb.b
  ], !dbg !51598

bb.b:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
    #dbg_value(ptr %i.e, !4472, !DIExpression(), !51475)
    #dbg_value(i8 0, !51511, !DIExpression(), !51575)
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split, !dbg !51599

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, %bb.b
  %.sroa.0.0.ph = phi i1 [ false, %bb.b ], [ true, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit ]
  %i.o = add i64 %i.g, 2, !dbg !51600             ; 2 uses
  store i64 %i.o, ptr %i.f, align 8, !dbg !51600
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, !dbg !51601

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split, %bb.a, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  %i.p = phi i64 [ %i.h, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit ], [ %i.h, %bb.a ], [ %i.o, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split ], !dbg !51602 ; 3 uses
  %.sroa.0.0 = phi i1 [ true, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit ], [ true, %bb.a ], [ %.sroa.0.0.ph, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split ], !dbg !51528 ; 2 uses
    #dbg_value(i8 poison, !51511, !DIExpression(), !51575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51577), !dbg !51601
    #dbg_value(ptr %i.e, !6320, !DIExpression(), !51479)
  %i.q = icmp ult i64 %i.p, %i.j, !dbg !51602
  br i1 %i.q, label %bb.c, label %bb.d, !dbg !51602

bb.c:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread
  %i.r = load ptr, ptr %i.e, align 8, !dbg !51603, !alias.scope !51577, !nonnull !2044, !noundef !2044 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p, !dbg !51603
  %i.t = load i8, ptr %i.s, align 1, !dbg !51603, !noalias !51578, !noundef !2044
    #dbg_value(i8 %i.t, !6321, !DIExpression(), !51481)
  %i.u = add nuw i64 %i.p, 1, !dbg !51604         ; 3 uses
  store i64 %i.u, ptr %i.f, align 8, !dbg !51604, !alias.scope !51577
    #dbg_value(i8 %i.t, !51514, !DIExpression(), !51579)
    #dbg_value(i8 %i.t, !51519, !DIExpression(), !51580)
  %i.v = add i8 %i.t, -48, !dbg !51605            ; 2 uses
  %or.cond = icmp ult i8 %i.v, 10, !dbg !51605
  br i1 %or.cond, label %bb.f, label %bb.e, !dbg !51605, !prof !5460

bb.d:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !51606
  store i64 5, ptr %i.d, align 8, !dbg !51606
  %i.w = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !dbg !51607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !51608
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !51609
  store ptr %i.w, ptr %i.x, align 8, !dbg !51609
  store i64 1, ptr %0, align 8, !dbg !51610
  br label %bb.q, !dbg !51611

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !51612
  store i64 13, ptr %i.c, align 8, !dbg !51612
  %i.y = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !51613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !51614
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !51615
  store ptr %i.y, ptr %i.z, align 8, !dbg !51615
  store i64 1, ptr %0, align 8, !dbg !51615
  br label %bb.q, !dbg !51616

bb.f:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.v to i32, !dbg !51617   ; 2 uses
    #dbg_value(i32 %i.aa, !51566, !DIExpression(), !51569)
    #dbg_value(i32 %i.aa, !51561, !DIExpression(), !51564)
    #dbg_value(i32 %i.aa, !51518, !DIExpression(), !51582)
  %i.ab = icmp ult i64 %i.u, %i.j, !dbg !51618
  br i1 %i.ab, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread, !dbg !51618

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45: ; preds = %bb.f, %bb.s
  %.sroa.08.071 = phi i32 [ %i.bj, %bb.s ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ac = phi i64 [ %i.ag, %bb.s ], [ %i.u, %bb.f ] ; 2 uses
    #dbg_value(i32 %.sroa.08.071, !51566, !DIExpression(), !51569)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac, !dbg !51619
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !51619, !noalias !51583, !noundef !2044
    #dbg_value(i8 poison, !51522, !DIExpression(), !51584)
  %i.af = add i8 %i.ae, -48, !dbg !51620          ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10, !dbg !51620
  br i1 %or.cond1, label %bb.g, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread, !dbg !51620

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45, %bb.s, %bb.f
  %.sroa.08.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.08.071, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45 ], !dbg !51579 ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h, !dbg !51621

bb.g:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45
    #dbg_value(ptr %i.e, !4472, !DIExpression(), !51487)
  %i.ag = add i64 %i.ac, 1, !dbg !51622           ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !dbg !51622, !alias.scope !51585
  %i.ah = zext nneg i8 %i.af to i32, !dbg !51623
    #dbg_value(i32 %i.ah, !51523, !DIExpression(), !51586)
  %i.ai = icmp sgt i32 %.sroa.08.071, 214748363, !dbg !51624
  br i1 %i.ai, label %bb.r, label %bb.s, !dbg !51624

bb.h:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread
  %i.aj = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa), !dbg !51625
    #dbg_value(i32 %i.aj, !51526, !DIExpression(), !51587)
  br label %bb.j, !dbg !51626

bb.i:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread
  %i.ak = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa), !dbg !51627
    #dbg_value(i32 %i.ak, !51526, !DIExpression(), !51587)
  br label %bb.j, !dbg !51626

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.015.0 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ], !dbg !51582 ; 3 uses
    #dbg_value(i32 %.sroa.015.0, !51526, !DIExpression(), !51587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51588), !dbg !51628
    #dbg_value(i32 %.sroa.015.0, !7050, !DIExpression(), !51493)
    #dbg_value(ptr %1, !7052, !DIExpression(), !51493)
    #dbg_value(i1 %2, !7053, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !51493)
    #dbg_value(i64 %3, !7054, !DIExpression(), !51493)
  %i.al = uitofp i64 %3 to double, !dbg !51629    ; 2 uses
    #dbg_value(double %i.al, !7055, !DIExpression(), !51494)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7058, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51496)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7061, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51498)
    #dbg_value(i64 309, !7058, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51496)
    #dbg_value(i64 309, !7061, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51498)
    #dbg_value(i32 %.sroa.015.0, !7064, !DIExpression(), !51500)
  %.sroa.012.028.i = tail call i32 @llvm.abs.i32(i32 %.sroa.015.0, i1 false), !dbg !51630 ; 2 uses
  %i.am = icmp ult i32 %.sroa.012.028.i, 309, !dbg !51631
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i, !dbg !51631

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.030.i = phi i32 [ %i.au, %bb.l ], [ %.sroa.015.0, %bb.j ] ; 2 uses
  %.sroa.04.029.i = phi double [ %i.at, %bb.l ], [ %i.al, %bb.j ] ; 3 uses
    #dbg_value(i32 %.sroa.0.030.i, !7050, !DIExpression(), !51493)
    #dbg_value(double %.sroa.04.029.i, !7055, !DIExpression(), !51494)
  %i.an = fcmp oeq double %.sroa.04.029.i, 0.000000e+00, !dbg !51632
  br i1 %i.an, label %.loopexit.i, label %bb.k, !dbg !51632

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.al, %bb.j ], [ %i.at, %bb.l ], !dbg !51633 ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.015.0, %bb.j ], [ %i.au, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.028.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ], !dbg !51630
  %i.ao = zext nneg i32 %.sroa.012.0.lcssa.i to i64, !dbg !51634
    #dbg_value(i64 %i.ao, !7059, !DIExpression(), !51496)
    #dbg_value(i64 %i.ao, !7062, !DIExpression(), !51498)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, i64 %i.ao, !dbg !51635
  %i.aq = load double, ptr %i.ap, align 8, !dbg !51636, !noalias !51589, !noundef !2044 ; 2 uses
    #dbg_value(double %i.aq, !7056, !DIExpression(), !51502)
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1, !dbg !51637
  br i1 %i.ar, label %bb.o, label %bb.n, !dbg !51637

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.030.i, -1, !dbg !51638
  br i1 %i.as, label %bb.m, label %bb.l, !dbg !51638, !prof !5512

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.029.i, 1.000000e+308, !dbg !51639 ; 2 uses
    #dbg_value(double %i.at, !7055, !DIExpression(), !51494)
  %i.au = add nsw i32 %.sroa.0.030.i, 308, !dbg !51640 ; 3 uses
    #dbg_value(i32 %i.au, !7050, !DIExpression(), !51493)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7058, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51496)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !7061, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51498)
    #dbg_value(i64 309, !7058, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51496)
    #dbg_value(i64 309, !7061, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51498)
    #dbg_value(i32 %i.au, !7064, !DIExpression(), !51500)
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true), !dbg !51630 ; 2 uses
    #dbg_value(i32 %.sroa.012.0.i, !7059, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !51496)
    #dbg_value(i32 %.sroa.012.0.i, !7062, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !51498)
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309, !dbg !51631
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i, !dbg !51631

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !51641, !noalias !51589
  store i64 14, ptr %i.a, align 8, !dbg !51641, !noalias !51589
  %i.aw = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !51642, !noalias !51588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !51643, !noalias !51589
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !51644
  store ptr %i.aw, ptr %i.ax, align 8, !dbg !51644, !alias.scope !51588
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !51645

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.029.i, %.lr.ph.i ], !dbg !51633 ; 2 uses
    #dbg_value(double %.sroa.04.1.i, !7055, !DIExpression(), !51494)
  %i.ay = fneg double %.sroa.04.1.i, !dbg !51646
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay, !dbg !51646
    #dbg_value(double %.sroa.04.2.i, !7055, !DIExpression(), !51494)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !51647
  store double %.sroa.04.2.i, ptr %i.az, align 8, !dbg !51647, !alias.scope !51588
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !51648

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq, !dbg !51649
    #dbg_value(double %i.ba, !7055, !DIExpression(), !51494)
  br label %.loopexit.i, !dbg !51650

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq, !dbg !51651 ; 2 uses
    #dbg_value(double %i.bb, !7055, !DIExpression(), !51494)
    #dbg_value(double %i.bb, !7067, !DIExpression(), !51504)
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb), !dbg !51652
  %i.bd = fcmp oeq double %i.bc, +inf, !dbg !51652
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !dbg !51653, !prof !5512

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !51654, !noalias !51589
  store i64 14, ptr %i.b, align 8, !dbg !51654, !noalias !51589
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !51655, !noalias !51588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !51656, !noalias !51589
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !51657
  store ptr %i.be, ptr %i.bf, align 8, !dbg !51657, !alias.scope !51588
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !51645

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ], !dbg !51658
  store i64 %storemerge.i, ptr %0, align 8, !dbg !51658, !alias.scope !51588
  br label %bb.q, !dbg !51659

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsaTqK2fWTXJW_11qlog_dancer.exit
  ret void, !dbg !51659

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.071, 214748364, !dbg !51660
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh, !dbg !51660
  br i1 %or.cond2, label %bb.t, label %bb.s, !dbg !51660, !prof !5517

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.071, 10, !dbg !51661
  %i.bj = add i32 %i.bi, %i.ah, !dbg !51662       ; 2 uses
    #dbg_value(i32 %i.bj, !51566, !DIExpression(), !51569)
    #dbg_value(i32 %i.bj, !51561, !DIExpression(), !51564)
    #dbg_value(i32 %i.bj, !51518, !DIExpression(), !51582)
    #dbg_value(ptr %i.e, !4469, !DIExpression(), !51505)
  %exitcond.not = icmp eq i64 %i.ag, %i.j, !dbg !51618
  br i1 %exitcond.not, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45, !dbg !51618

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0, !dbg !51663
    #dbg_value(i1 %i.bk, !51525, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !51590)
  tail call void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE23parse_exponent_overflowCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0) #23, !dbg !51664
  br label %bb.q, !dbg !51665
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((1, 2)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #4 !dbg !769 {
bb.a:
    #dbg_value(ptr %1, !4449, !DIExpression(), !51675)
    #dbg_value(ptr %1, !4457, !DIExpression(), !51677)
    #dbg_value(ptr %1, !4460, !DIExpression(), !51679)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !51680, !noundef !2044 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.d = icmp ult i64 %.promoted, %i.c, !dbg !51684
  br i1 %i.d, label %.lr.ph, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !51684

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !51680, !nonnull !2044, !noundef !2044
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.g, align 1, !alias.scope !51681
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  br label %bb.b, !dbg !51684

._RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge: ; preds = %bb.c
  store i8 %i.l, ptr %i.h, align 2, !dbg !51685, !alias.scope !51681
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !51684

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %._RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !51685
  store i8 0, ptr %i.i, align 1, !dbg !51685, !alias.scope !51681
  br label %bb.d, !dbg !51686

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.j = phi i64 [ %.promoted, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51681), !dbg !51687
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51680), !dbg !51687
    #dbg_value(ptr %i.e, !4469, !DIExpression(), !51670)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j, !dbg !51688
  %i.l = load i8, ptr %i.k, align 1, !dbg !51688, !noalias !51682, !noundef !2044 ; 3 uses
  switch i8 %i.l, label %.loopexit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ], !dbg !51686

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
    #dbg_value(ptr %1, !4472, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !51672)
  %i.m = add i64 %i.j, 1, !dbg !51689             ; 3 uses
  store i64 %i.m, ptr %i.a, align 8, !dbg !51689, !alias.scope !51683
    #dbg_value(ptr %1, !4469, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !51670)
  %exitcond.not = icmp eq i64 %i.m, %i.c, !dbg !51684
  br i1 %exitcond.not, label %._RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge, label %bb.b, !dbg !51684

.loopexit:                                        ; preds = %bb.b
  store i8 %i.l, ptr %i.h, align 2, !dbg !51685, !alias.scope !51681
  br label %bb.d, !dbg !51690

bb.d:                                             ; preds = %.loopexit, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  store i8 0, ptr %0, align 8, !dbg !51685
  ret void, !dbg !51690
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #2 !dbg !51701 {
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
    #dbg_value(ptr %0, !51803, !DIExpression(), !51816)
    #dbg_value(ptr %0, !51817, !DIExpression(), !51822)
    #dbg_value(ptr %0, !51823, !DIExpression(), !51826)
    #dbg_value(ptr %0, !51827, !DIExpression(), !51831)
    #dbg_value(ptr %0, !51832, !DIExpression(), !51835)
    #dbg_value(ptr %0, !51832, !DIExpression(), !51837)
    #dbg_value(ptr %0, !51832, !DIExpression(), !51839)
    #dbg_value(ptr %0, !51832, !DIExpression(), !51841)
    #dbg_value(ptr %0, !51832, !DIExpression(), !51843)
    #dbg_value(ptr %0, !51827, !DIExpression(), !51845)
    #dbg_value(ptr %1, !51804, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51816)
    #dbg_value(ptr %2, !51804, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51816)
    #dbg_declare(ptr %i.m, !51809, !DIExpression(), !51846)
    #dbg_declare(ptr %i.l, !51811, !DIExpression(), !51847)
    #dbg_value(i8 1, !51828, !DIExpression(), !51831)
    #dbg_value(i8 0, !51828, !DIExpression(), !51845)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !51910 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51848), !dbg !51911
    #dbg_value(ptr %i.q, !4469, !DIExpression(), !51711)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !51912 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !dbg !51912, !alias.scope !51848, !noundef !2044 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !51913
end_hunk_5
