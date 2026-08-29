Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.7ee3c8bd52ec1f96-cgu.03?download=true
inline.NumInlined: 1671
inline.NumDeleted: 535
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2s_5ValueNtB1l_11Deserialize11deserialize12ValueVisitorECsaTqK2fWTXJW_11qlog_dancer:bb.a
    #dbg_value(i8 %i.bf, !22821, !DIExpression(), !22884)
  %i.bg = add i64 %i.ah, 3, !dbg !22885           ; 3 uses
  store i64 %i.bg, ptr %i.ab, align 8, !dbg !22885, !alias.scope !22893, !noalias !22887
    #dbg_value(i8 %i.bf, !22801, !DIExpression(), !22888)
  %.not.i63.1 = icmp eq i8 %i.bf, 117, !dbg !22889
  br i1 %.not.i63.1, label %bb.p, label %bb.r, !dbg !22889, !prof !22836

bb.p:                                             ; preds = %bb.o
    #dbg_value(ptr poison, !22783, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22870)
    #dbg_value(ptr poison, !22795, !DIExpression(), !22872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22894), !dbg !22876
    #dbg_value(ptr %1, !22818, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22877)
  %exitcond.not.i62.2 = icmp eq i64 %i.bg, %umax.i60, !dbg !22879
  br i1 %exitcond.not.i62.2, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i66, label %bb.q, !dbg !22879

bb.q:                                             ; preds = %bb.p
    #dbg_value(ptr %i.af, !22818, !DIExpression(), !22877)
    #dbg_value(!DIArgList(ptr @100, i64 3), !22783, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22870)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg, !dbg !22880
  %i.bi = load i8, ptr %i.bh, align 1, !dbg !22880, !noalias !22896, !noundef !18
    #dbg_value(i8 %i.bi, !22821, !DIExpression(), !22884)
  %i.bj = add i64 %i.ah, 4, !dbg !22885
  store i64 %i.bj, ptr %i.ab, align 8, !dbg !22885, !alias.scope !22897, !noalias !22887
    #dbg_value(i8 %i.bi, !22801, !DIExpression(), !22888)
  %.not.i63.2 = icmp eq i8 %i.bi, 101, !dbg !22889
  br i1 %.not.i63.2, label %.thread, label %bb.r, !dbg !22889, !prof !22836

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i66: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !22898, !noalias !22899
  store i64 5, ptr %i.m, align 8, !dbg !22898, !noalias !22899
  %i.bk = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m), !dbg !22900, !noalias !22901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !22902, !noalias !22899
  br label %bb.ai, !dbg !22903

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !22904, !noalias !22899
  store i64 9, ptr %i.l, align 8, !dbg !22904, !noalias !22899
  %i.bl = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l), !dbg !22905, !noalias !22901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !22906, !noalias !22899
  br label %bb.ai, !dbg !22907

bb.s:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsaTqK2fWTXJW_11qlog_dancer.exit
    #dbg_value(ptr %i.af, !4105, !DIExpression(), !22908)
  %i.bm = add i64 %i.ah, 1, !dbg !22910           ; 4 uses
  store i64 %i.bm, ptr %i.ab, align 8, !dbg !22910, !alias.scope !22911
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22914), !dbg !22917
    #dbg_value(ptr %1, !22776, !DIExpression(), !22918)
    #dbg_value(ptr %1, !22805, !DIExpression(), !22920)
    #dbg_value(ptr @101, !22782, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22918)
    #dbg_value(i64 4, !22782, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22918)
    #dbg_value(ptr @101, !22783, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22922)
    #dbg_value(ptr poison, !22783, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22922)
  %umax.i69 = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %i.ad), !dbg !22923 ; 3 uses
    #dbg_value(ptr @101, !22783, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22922)
    #dbg_value(ptr @101, !22795, !DIExpression(), !22924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22925), !dbg !22928
    #dbg_value(ptr %1, !22818, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22929)
  %exitcond.not.i71.not = icmp ult i64 %i.bm, %i.ad, !dbg !22931
  br i1 %exitcond.not.i71.not, label %bb.t, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i75, !dbg !22931

bb.t:                                             ; preds = %bb.s
    #dbg_value(ptr %i.af, !22818, !DIExpression(), !22929)
    #dbg_value(!DIArgList(ptr @101, i64 1), !22783, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22922)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm, !dbg !22932
  %i.bo = load i8, ptr %i.bn, align 1, !dbg !22932, !noalias !22933, !noundef !18
    #dbg_value(i8 %i.bo, !22821, !DIExpression(), !22936)
  %i.bp = add i64 %i.ah, 2, !dbg !22937           ; 3 uses
  store i64 %i.bp, ptr %i.ab, align 8, !dbg !22937, !alias.scope !22938, !noalias !22939
    #dbg_value(i8 %i.bo, !22801, !DIExpression(), !22940)
  %.not.i72 = icmp eq i8 %i.bo, 97, !dbg !22941
  br i1 %.not.i72, label %bb.u, label %bb.aa, !dbg !22941, !prof !22836

bb.u:                                             ; preds = %bb.t
    #dbg_value(ptr poison, !22783, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22922)
    #dbg_value(ptr poison, !22795, !DIExpression(), !22924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22942), !dbg !22928
    #dbg_value(ptr %1, !22818, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22929)
  %exitcond.not.i71.1 = icmp eq i64 %i.bp, %umax.i69, !dbg !22931
  br i1 %exitcond.not.i71.1, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i75, label %bb.v, !dbg !22931

bb.v:                                             ; preds = %bb.u
    #dbg_value(ptr %i.af, !22818, !DIExpression(), !22929)
    #dbg_value(!DIArgList(ptr @101, i64 2), !22783, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22922)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp, !dbg !22932
  %i.br = load i8, ptr %i.bq, align 1, !dbg !22932, !noalias !22944, !noundef !18
    #dbg_value(i8 %i.br, !22821, !DIExpression(), !22936)
  %i.bs = add i64 %i.ah, 3, !dbg !22937           ; 3 uses
  store i64 %i.bs, ptr %i.ab, align 8, !dbg !22937, !alias.scope !22945, !noalias !22939
    #dbg_value(i8 %i.br, !22801, !DIExpression(), !22940)
  %.not.i72.1 = icmp eq i8 %i.br, 108, !dbg !22941
  br i1 %.not.i72.1, label %bb.w, label %bb.aa, !dbg !22941, !prof !22836

bb.w:                                             ; preds = %bb.v
    #dbg_value(ptr poison, !22783, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22922)
    #dbg_value(ptr poison, !22795, !DIExpression(), !22924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22946), !dbg !22928
    #dbg_value(ptr %1, !22818, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22929)
  %exitcond.not.i71.2 = icmp eq i64 %i.bs, %umax.i69, !dbg !22931
  br i1 %exitcond.not.i71.2, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i75, label %bb.x, !dbg !22931

bb.x:                                             ; preds = %bb.w
    #dbg_value(ptr %i.af, !22818, !DIExpression(), !22929)
    #dbg_value(!DIArgList(ptr @101, i64 3), !22783, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22922)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs, !dbg !22932
  %i.bu = load i8, ptr %i.bt, align 1, !dbg !22932, !noalias !22948, !noundef !18
    #dbg_value(i8 %i.bu, !22821, !DIExpression(), !22936)
  %i.bv = add i64 %i.ah, 4, !dbg !22937           ; 3 uses
  store i64 %i.bv, ptr %i.ab, align 8, !dbg !22937, !alias.scope !22949, !noalias !22939
    #dbg_value(i8 %i.bu, !22801, !DIExpression(), !22940)
  %.not.i72.2 = icmp eq i8 %i.bu, 115, !dbg !22941
  br i1 %.not.i72.2, label %bb.y, label %bb.aa, !dbg !22941, !prof !22836

bb.y:                                             ; preds = %bb.x
    #dbg_value(ptr poison, !22783, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22922)
    #dbg_value(ptr poison, !22795, !DIExpression(), !22924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22950), !dbg !22928
    #dbg_value(ptr %1, !22818, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22929)
  %exitcond.not.i71.3 = icmp eq i64 %i.bv, %umax.i69, !dbg !22931
  br i1 %exitcond.not.i71.3, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i75, label %bb.z, !dbg !22931

bb.z:                                             ; preds = %bb.y
    #dbg_value(ptr %i.af, !22818, !DIExpression(), !22929)
    #dbg_value(!DIArgList(ptr @101, i64 4), !22783, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22922)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv, !dbg !22932
  %i.bx = load i8, ptr %i.bw, align 1, !dbg !22932, !noalias !22952, !noundef !18
    #dbg_value(i8 %i.bx, !22821, !DIExpression(), !22936)
  %i.by = add i64 %i.ah, 5, !dbg !22937
  store i64 %i.by, ptr %i.ab, align 8, !dbg !22937, !alias.scope !22953, !noalias !22939
    #dbg_value(i8 %i.bx, !22801, !DIExpression(), !22940)
  %.not.i72.3 = icmp eq i8 %i.bx, 101, !dbg !22941
  br i1 %.not.i72.3, label %.thread, label %bb.aa, !dbg !22941, !prof !22836

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i75: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !22954, !noalias !22955
  store i64 5, ptr %i.k, align 8, !dbg !22954, !noalias !22955
  %i.bz = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !dbg !22956, !noalias !22957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !22958, !noalias !22955
  br label %bb.aj, !dbg !22959

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !22960, !noalias !22955
  store i64 9, ptr %i.j, align 8, !dbg !22960, !noalias !22955
  %i.ca = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !dbg !22961, !noalias !22957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !22962, !noalias !22955
  br label %bb.aj, !dbg !22963

bb.ab:                                            ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsaTqK2fWTXJW_11qlog_dancer.exit
    #dbg_value(ptr %1, !4105, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22964)
  %i.cb = add i64 %i.ah, 1, !dbg !22966
  store i64 %i.cb, ptr %i.ab, align 8, !dbg !22966, !alias.scope !22967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !22970
  call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.z, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext false), !dbg !22971
  %i.cc = load i64, ptr %i.z, align 8, !dbg !22970, !range !11349, !noundef !18 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, -1, !dbg !22970
  %i.ce = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !22972 ; 2 uses
  br i1 %i.cd, label %bb.ak, label %bb.al, !dbg !22974

bb.ac:                                            ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsaTqK2fWTXJW_11qlog_dancer.exit
    #dbg_value(ptr %i.af, !4105, !DIExpression(), !22975)
  %i.cf = add i64 %i.ah, 1, !dbg !22977
  store i64 %i.cf, ptr %i.ab, align 8, !dbg !22977, !alias.scope !22978
    #dbg_value(ptr %1, !22981, !DIExpression(), !22986)
    #dbg_value(ptr %1, !22988, !DIExpression(), !22991)
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !22993
    #dbg_value(ptr poison, !22984, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22994)
    #dbg_value(i64 poison, !22984, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22994)
  store i64 0, ptr %i.cg, align 8, !dbg !22995
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !22996
  call void @_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !22997
  %i.ch = load i64, ptr %i.x, align 8, !dbg !22996, !range !6870, !noundef !18 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 2, !dbg !22996
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !22972
  %i.ck = load ptr, ptr %i.cj, align 8, !dbg !22972 ; 3 uses
  br i1 %i.ci, label %bb.aq, label %bb.ar, !dbg !22974

bb.ad:                                            ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsaTqK2fWTXJW_11qlog_dancer.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !22998 ; 4 uses
  %i.cm = load i8, ptr %i.cl, align 8, !dbg !22998, !noundef !18
  %i.cn = add i8 %i.cm, -1, !dbg !22998           ; 2 uses
  store i8 %i.cn, ptr %i.cl, align 8, !dbg !22998
  %i.co = icmp eq i8 %i.cn, 0, !dbg !22999
  br i1 %i.co, label %bb.ay, label %bb.az, !dbg !22999, !prof !11722

bb.ae:                                            ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsaTqK2fWTXJW_11qlog_dancer.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !22998 ; 4 uses
  %i.cq = load i8, ptr %i.cp, align 8, !dbg !22998, !noundef !18
  %i.cr = add i8 %i.cq, -1, !dbg !22998           ; 2 uses
  store i8 %i.cr, ptr %i.cp, align 8, !dbg !22998
  %i.cs = icmp eq i8 %i.cr, 0, !dbg !22999
  br i1 %i.cs, label %bb.bx, label %bb.by, !dbg !22999, !prof !11722

bb.af:                                            ; preds = %bb.k, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i
  %.sroa.0.1.i.ph = phi ptr [ %i.ay, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i ], [ %i.az, %bb.k ]
    #dbg_value(ptr %.sroa.0.1.i.ph, !22632, !DIExpression(), !23000)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23001
  store ptr %.sroa.0.1.i.ph, ptr %i.ct, align 8, !dbg !23001
  store i64 -1, ptr %0, align 8, !dbg !23001
  br label %bb.ah, !dbg !23002

bb.ag:                                            ; preds = %.thread144, %.thread141
  %.sroa.22.sroa.21.sroa.0.0.in.in = phi i64 [ %.sroa.22.sroa.21.sroa.0.4.in.in, %.thread144 ], [ %.sroa.22.sroa.21.sroa.0.3.in.in, %.thread141 ], !dbg !22755
  %.sroa.45.0 = phi i64 [ %.sroa.45.3, %.thread144 ], [ %.sroa.45.2, %.thread141 ], !dbg !22755
  %.sroa.37.0 = phi i64 [ %.sroa.37.4, %.thread144 ], [ %.sroa.37.3, %.thread141 ], !dbg !22755 ; 2 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.4, %.thread144 ], [ %.sroa.0.3, %.thread141 ], !dbg !22755 ; 2 uses
    #dbg_value(i64 %.sroa.0.0, !22628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23004)
    #dbg_value(i64 %.sroa.37.0, !22628, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23004)
    #dbg_value(i64 %.sroa.45.0, !22628, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23004)
    #dbg_value(i64 %.sroa.22.sroa.21.sroa.0.0.in.in, !22628, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !23004)
  %i.cu = icmp eq i64 %.sroa.0.0, -1, !dbg !23005
  br i1 %i.cu, label %._crit_edge, label %.thread, !dbg !23006, !prof !23007

._crit_edge:                                      ; preds = %bb.ag
  %i.cv = inttoptr i64 %.sroa.37.0 to ptr, !dbg !23008
  br label %bb.ch, !dbg !23006

bb.ah:                                            ; preds = %bb.ci, %bb.bx, %bb.ay, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.47), !dbg !23009
  br label %bb.cp, !dbg !23002

bb.ai:                                            ; preds = %bb.r, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i66
  %.sroa.0.1.i65.ph = phi ptr [ %i.bk, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i66 ], [ %i.bl, %bb.r ]
    #dbg_value(ptr %.sroa.0.1.i65.ph, !22636, !DIExpression(), !23010)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23011
  store ptr %.sroa.0.1.i65.ph, ptr %i.cw, align 8, !dbg !23011
  store i64 -1, ptr %0, align 8, !dbg !23011
  br label %bb.ah, !dbg !23002

bb.aj:                                            ; preds = %bb.aa, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i75
  %.sroa.0.1.i74.ph = phi ptr [ %i.bz, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i75 ], [ %i.ca, %bb.aa ]
    #dbg_value(ptr %.sroa.0.1.i74.ph, !22640, !DIExpression(), !23012)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23013
  store ptr %.sroa.0.1.i74.ph, ptr %i.cx, align 8, !dbg !23013
  store i64 -1, ptr %0, align 8, !dbg !23013
  br label %bb.ah, !dbg !23002

bb.ak:                                            ; preds = %bb.ab
  %i.cy = load ptr, ptr %i.ce, align 8, !dbg !23014, !nonnull !18, !align !6802, !noundef !18
    #dbg_value(ptr %i.cy, !22644, !DIExpression(), !23015)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23016
  store ptr %i.cy, ptr %i.cz, align 8, !dbg !23016
  store i64 -1, ptr %0, align 8, !dbg !23016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !23017
  br label %bb.ah, !dbg !23002

bb.al:                                            ; preds = %bb.ab
    #dbg_value(i64 %i.cc, !23018, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23032)
  %.sroa.2.0.copyload = load i64, ptr %i.ce, align 8, !dbg !23034 ; 5 uses
    #dbg_value(i64 %.sroa.2.0.copyload, !23018, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23032)
    #dbg_declare(ptr poison, !23025, !DIExpression(), !23035)
  switch i64 %i.cc, label %default.unreachable273 [
    i64 0, label %bb.am
    i64 1, label %_RINvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserialize12ValueVisitorECsaTqK2fWTXJW_11qlog_dancer.exit
    i64 2, label %bb.ap
  ], !dbg !23036

default.unreachable273:                           ; preds = %bb.cj, %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.da = bitcast i64 %.sroa.2.0.copyload to double, !dbg !23037
    #dbg_value(double %i.da, !23026, !DIExpression(), !23038)
    #dbg_declare(ptr poison, !23039, !DIExpression(), !23048)
    #dbg_value(double %i.da, !23047, !DIExpression(), !23050)
    #dbg_value(double %i.da, !23051, !DIExpression(), !23073)
    #dbg_value(double %i.da, !23075, !DIExpression(), !23083)
    #dbg_value(double %i.da, !23085, !DIExpression(), !23090)
    #dbg_declare(ptr poison, !23046, !DIExpression(), !23048)
  %i.db = tail call double @llvm.fabs.f64(double %i.da), !dbg !23092
  %i.dc = fcmp ueq double %i.db, +inf, !dbg !23093
    #dbg_value(double %i.da, !23094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23110)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !23112, !noalias !23113
  br i1 %i.dc, label %bb.an, label %bb.ao, !dbg !23119

bb.an:                                            ; preds = %bb.am
    #dbg_value(i64 -1, !23094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23110)
    #dbg_declare(ptr %i.i, !23106, !DIExpression(), !23120)
    #dbg_declare(ptr poison, !23107, !DIExpression(), !23121)
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !23122
  %.sroa.5.sroa.0.0.copyload9.i.i = load i64, ptr %.sroa.5.0..sroa_idx5.i.i, align 8, !dbg !23122, !alias.scope !23123, !noalias !23127
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !23122
  %.sroa.5.sroa.5.0.copyload10.i.i240 = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.sroa_idx.i.i, align 8, !dbg !23122, !alias.scope !23123, !noalias !23127
  br label %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit.i, !dbg !23129

bb.ao:                                            ; preds = %bb.am
    #dbg_value(i64 2, !23094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23110)
  store i64 -9223372036854775808, ptr %i.i, align 8, !dbg !23112, !noalias !23113
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23130), !dbg !23131
    #dbg_declare(ptr %i.i, !23106, !DIExpression(), !23120)
    #dbg_declare(ptr poison, !23107, !DIExpression(), !23121)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5value5ValueECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i), !dbg !23129, !noalias !23132
  br label %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit.i, !dbg !23129

_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit.i: ; preds = %bb.ao, %bb.an
  %i.dd = phi i64 [ %.sroa.5.sroa.5.0.copyload10.i.i240, %bb.an ], [ %.sroa.2.0.copyload, %bb.ao ], !dbg !23110
  %.sroa.5.sroa.0.0.i.i = phi i64 [ %.sroa.5.sroa.0.0.copyload9.i.i, %bb.an ], [ 2, %bb.ao ], !dbg !23110
  %.sroa.0.0.i.i = phi i64 [ -9223372036854775808, %bb.an ], [ -9223372036854775806, %bb.ao ], !dbg !23110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !23133, !noalias !23113
    #dbg_value(i64 %.sroa.0.0.i.i, !22628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23004)
    #dbg_value(i64 %.sroa.5.sroa.0.0.i.i, !22628, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23004)
    #dbg_value(i64 %i.dd, !22628, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23004)
  br label %_RINvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserialize12ValueVisitorECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !23134

bb.ap:                                            ; preds = %bb.al
    #dbg_value(i64 %.sroa.2.0.copyload, !23030, !DIExpression(), !23135)
    #dbg_declare(ptr poison, !23136, !DIExpression(), !23143)
    #dbg_value(i64 %.sroa.2.0.copyload, !23142, !DIExpression(), !23145)
    #dbg_value(i64 %.sroa.2.0.copyload, !23146, !DIExpression(), !23155)
    #dbg_value(i64 %.sroa.2.0.copyload, !23157, !DIExpression(), !23165)
    #dbg_declare(ptr poison, !23141, !DIExpression(), !23143)
  %.lobit.i.i = lshr i64 %.sroa.2.0.copyload, 63, !dbg !23167
    #dbg_value(i64 -9223372036854775806, !22628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23004)
    #dbg_value(i64 %.lobit.i.i, !22628, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23004)
    #dbg_value(i64 %.sroa.2.0.copyload, !22628, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23004)
  br label %_RINvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserialize12ValueVisitorECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !23168

_RINvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserialize12ValueVisitorECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.al, %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit.i, %bb.ap
  %.sroa.22.sroa.21.sroa.0.1 = phi i64 [ %i.dd, %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit.i ], [ %.sroa.2.0.copyload, %bb.ap ], [ %.sroa.2.0.copyload, %bb.al ], !dbg !23032
  %.sroa.22.sroa.0.1 = phi i64 [ %.sroa.5.sroa.0.0.i.i, %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit.i ], [ %.lobit.i.i, %bb.ap ], [ 0, %bb.al ], !dbg !23032
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.i.i, %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit.i ], [ -9223372036854775806, %bb.ap ], [ -9223372036854775806, %bb.al ], !dbg !23032
    #dbg_value(i64 %.sroa.0.1, !22628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23004)
    #dbg_value(i64 %.sroa.22.sroa.0.1, !22628, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23004)
    #dbg_value(i64 %.sroa.22.sroa.21.sroa.0.1, !22628, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23004)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !23017
  br label %.thread, !dbg !23017

bb.aq:                                            ; preds = %bb.ac
    #dbg_value(ptr %i.ck, !22652, !DIExpression(), !23169)
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23170
  store ptr %i.ck, ptr %i.de, align 8, !dbg !23170
  store i64 -1, ptr %0, align 8, !dbg !23170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !23171
  br label %bb.ah, !dbg !23002

bb.ar:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16, !dbg !23034
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !23034 ; 8 uses
  %i.df = trunc nuw i64 %i.ch to i1, !dbg !22974
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ck) ]
  br i1 %i.df, label %bb.as, label %bb.av, !dbg !22974

bb.as:                                            ; preds = %bb.ar
    #dbg_value(ptr %i.ck, !22656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23172)
    #dbg_value(i64 %.sroa.4.0.copyload, !22656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23172)
    #dbg_declare(ptr poison, !23173, !DIExpression(), !23180)
    #dbg_value(ptr %i.ck, !23179, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23182)
    #dbg_value(ptr %i.ck, !23183, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23190)
    #dbg_value(ptr %i.ck, !23192, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23198)
    #dbg_value(i64 %.sroa.4.0.copyload, !23179, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23182)
    #dbg_value(i64 %.sroa.4.0.copyload, !23183, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23190)
    #dbg_value(i64 %.sroa.4.0.copyload, !23192, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23198)
    #dbg_declare(ptr poison, !23178, !DIExpression(), !23180)
    #dbg_declare(ptr poison, !23200, !DIExpression(), !23209)
    #dbg_declare(ptr poison, !23222, !DIExpression(), !23232)
    #dbg_declare(ptr poison, !23234, !DIExpression(), !23241)
    #dbg_declare(ptr poison, !23243, !DIExpression(), !23250)
    #dbg_declare(ptr poison, !23252, !DIExpression(), !23279)
    #dbg_value(i64 0, !23281, !DIExpression(), !23290)
    #dbg_value(ptr %i.ck, !23220, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23292)
    #dbg_value(ptr %i.ck, !23215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23293)
    #dbg_value(ptr %i.ck, !23208, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23294)
    #dbg_value(ptr %i.ck, !23227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23295)
    #dbg_value(i64 %.sroa.4.0.copyload, !23220, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23292)
    #dbg_value(i64 %.sroa.4.0.copyload, !23215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23293)
    #dbg_value(i64 %.sroa.4.0.copyload, !23208, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23294)
    #dbg_value(i64 %.sroa.4.0.copyload, !23227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23295)
    #dbg_value(i64 %.sroa.4.0.copyload, !23228, !DIExpression(), !23296)
    #dbg_value(i64 %.sroa.4.0.copyload, !23240, !DIExpression(), !23297)
    #dbg_value(i64 %.sroa.4.0.copyload, !23249, !DIExpression(), !23298)
    #dbg_value(i64 %.sroa.4.0.copyload, !23299, !DIExpression(), !23309)
    #dbg_value(i64 %.sroa.4.0.copyload, !23311, !DIExpression(), !23318)
    #dbg_value(i64 %.sroa.4.0.copyload, !23258, !DIExpression(), !23320)
    #dbg_value(i64 %.sroa.4.0.copyload, !23288, !DIExpression(), !23290)
    #dbg_value(i64 1, !23259, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23320)
    #dbg_value(i64 1, !23289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23290)
    #dbg_value(i64 1, !23259, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23320)
    #dbg_value(i64 1, !23289, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23290)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !23321, !noalias !23322
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.4.0.copyload, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !23321, !noalias !23322
  %i.dg = load i64, ptr %i.b, align 8, !dbg !23321, !range !13918, !noalias !23322, !noundef !18
  %i.dh = trunc nuw i64 %i.dg to i1, !dbg !23326
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !23320
  %i.dj = load i64, ptr %i.di, align 8, !dbg !23320, !range !23327, !noalias !23322, !noundef !18 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !23320 ; 2 uses
  br i1 %i.dh, label %bb.at, label %bb.au, !dbg !23326, !prof !11722

bb.at:                                            ; preds = %bb.as
  %i.dl = load i64, ptr %i.dk, align 8, !dbg !23328, !noalias !23322
    #dbg_value(i64 %i.dj, !23262, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23329)
    #dbg_value(i64 %i.dl, !23262, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23329)
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.dj, i64 %i.dl) #20, !dbg !23330, !noalias !23322
  unreachable, !dbg !23330

bb.au:                                            ; preds = %bb.as
  %i.dm = load ptr, ptr %i.dk, align 8, !dbg !23331, !noalias !23322, !nonnull !18, !noundef !18 ; 2 uses
    #dbg_value(i64 %i.dj, !23260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23332)
    #dbg_value(ptr %i.dm, !23260, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23332)
    #dbg_value(ptr poison, !23287, !DIExpression(), !23333)
  %i.dn = icmp ule i64 %.sroa.4.0.copyload, %i.dj, !dbg !23334
    #dbg_value(i1 true, !23335, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !23342)
  call void @llvm.assume(i1 %i.dn), !dbg !23344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !23345, !noalias !23322
    #dbg_value(i64 %i.dj, !23230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23346)
    #dbg_value(ptr %i.dm, !23230, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23346)
    #dbg_value(i64 0, !23230, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23346)
  %.not.i176 = icmp eq i64 %.sroa.4.0.copyload, 0, !dbg !23347
  br i1 %.not.i176, label %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit, label %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit.sink.split, !dbg !23347

bb.av:                                            ; preds = %bb.ar
    #dbg_value(ptr %i.ck, !22654, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23348)
    #dbg_value(i64 %.sroa.4.0.copyload, !22654, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23348)
    #dbg_declare(ptr poison, !23349, !DIExpression(), !23355)
    #dbg_value(ptr %i.ck, !23352, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23357)
    #dbg_value(i64 %.sroa.4.0.copyload, !23352, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23357)
    #dbg_declare(ptr poison, !23173, !DIExpression(), !23358)
    #dbg_value(ptr %i.ck, !23179, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23360)
    #dbg_value(ptr %i.ck, !23183, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23361)
    #dbg_value(ptr %i.ck, !23192, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23363)
    #dbg_value(i64 %.sroa.4.0.copyload, !23179, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23360)
    #dbg_value(i64 %.sroa.4.0.copyload, !23183, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23361)
    #dbg_value(i64 %.sroa.4.0.copyload, !23192, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23363)
    #dbg_declare(ptr poison, !23178, !DIExpression(), !23358)
    #dbg_declare(ptr poison, !23200, !DIExpression(), !23365)
    #dbg_declare(ptr poison, !23222, !DIExpression(), !23369)
    #dbg_declare(ptr poison, !23234, !DIExpression(), !23371)
    #dbg_declare(ptr poison, !23243, !DIExpression(), !23373)
    #dbg_declare(ptr poison, !23252, !DIExpression(), !23375)
    #dbg_value(i64 0, !23281, !DIExpression(), !23377)
    #dbg_value(ptr %i.ck, !23220, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23379)
    #dbg_value(ptr %i.ck, !23215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23380)
    #dbg_value(ptr %i.ck, !23208, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23381)
    #dbg_value(ptr %i.ck, !23227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23382)
    #dbg_value(i64 %.sroa.4.0.copyload, !23220, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23379)
    #dbg_value(i64 %.sroa.4.0.copyload, !23215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23380)
    #dbg_value(i64 %.sroa.4.0.copyload, !23208, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23381)
    #dbg_value(i64 %.sroa.4.0.copyload, !23227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23382)
    #dbg_value(i64 %.sroa.4.0.copyload, !23228, !DIExpression(), !23383)
    #dbg_value(i64 %.sroa.4.0.copyload, !23240, !DIExpression(), !23384)
    #dbg_value(i64 %.sroa.4.0.copyload, !23249, !DIExpression(), !23385)
    #dbg_value(i64 %.sroa.4.0.copyload, !23299, !DIExpression(), !23386)
    #dbg_value(i64 %.sroa.4.0.copyload, !23311, !DIExpression(), !23388)
    #dbg_value(i64 %.sroa.4.0.copyload, !23258, !DIExpression(), !23390)
    #dbg_value(i64 %.sroa.4.0.copyload, !23288, !DIExpression(), !23377)
    #dbg_value(i64 1, !23259, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23390)
    #dbg_value(i64 1, !23289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23377)
    #dbg_value(i64 1, !23259, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23390)
    #dbg_value(i64 1, !23289, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23377)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23391, !noalias !23392
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.4.0.copyload, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !23391, !noalias !23392
  %i.do = load i64, ptr %i.a, align 8, !dbg !23391, !range !13918, !noalias !23392, !noundef !18
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !23399
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !23390
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !23390, !range !23327, !noalias !23392, !noundef !18 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !23390 ; 2 uses
  br i1 %i.dp, label %bb.aw, label %bb.ax, !dbg !23399, !prof !11722

bb.aw:                                            ; preds = %bb.av
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !23400, !noalias !23392
    #dbg_value(i64 %i.dr, !23262, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23401)
    #dbg_value(i64 %i.dt, !23262, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23401)
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #20, !dbg !23402, !noalias !23392
  unreachable, !dbg !23402

bb.ax:                                            ; preds = %bb.av
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !23403, !noalias !23392, !nonnull !18, !noundef !18 ; 2 uses
    #dbg_value(i64 %i.dr, !23260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23404)
    #dbg_value(ptr %i.du, !23260, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23404)
    #dbg_value(ptr poison, !23287, !DIExpression(), !23405)
  %i.dv = icmp ule i64 %.sroa.4.0.copyload, %i.dr, !dbg !23406
    #dbg_value(i1 true, !23335, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !23407)
  call void @llvm.assume(i1 %i.dv), !dbg !23409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23410, !noalias !23392
    #dbg_value(i64 %i.dr, !23230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23411)
    #dbg_value(ptr %i.du, !23230, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23411)
    #dbg_value(i64 0, !23230, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23411)
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload, 0, !dbg !23412
  br i1 %.not.i.i, label %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit, label %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit.sink.split, !dbg !23412

_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit.sink.split: ; preds = %bb.ax, %bb.au
  %.sink = phi ptr [ %i.dm, %bb.au ], [ %i.du, %bb.ax ] ; 2 uses
  %.sroa.22.sroa.21.sroa.0.2.in.in.ph = phi i64 [ %i.dj, %bb.au ], [ %i.dr, %bb.ax ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink, ptr nonnull readonly align 1 %i.ck, i64 %.sroa.4.0.copyload, i1 false), !dbg !22755, !noalias !18
  br label %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !22755

_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit.sink.split, %bb.ax, %bb.au
  %.sroa.37.2.in = phi ptr [ %i.du, %bb.ax ], [ %i.dm, %bb.au ], [ %.sink, %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit.sink.split ]
  %.sroa.22.2 = phi i64 [ %i.dr, %bb.ax ], [ %i.dj, %bb.au ], [ %.sroa.22.sroa.21.sroa.0.2.in.in.ph, %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit.sink.split ], !dbg !22755
  %.sroa.37.2 = ptrtoint ptr %.sroa.37.2.in to i64, !dbg !22755
    #dbg_value(i64 -9223372036854775805, !22628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23004)
    #dbg_value(i64 %.sroa.22.2, !22628, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23004)
    #dbg_value(i64 %.sroa.37.2, !22628, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23004)
    #dbg_value(i64 %.sroa.4.0.copyload, !22628, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !23004)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !23171
  br label %.thread, !dbg !23171

bb.ay:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !23413
  store i64 24, ptr %i.w, align 8, !dbg !23413
  %i.dw = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.w), !dbg !23414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !23415
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23416
  store ptr %i.dw, ptr %i.dx, align 8, !dbg !23416
  store i64 -1, ptr %0, align 8, !dbg !23416
  br label %bb.ah, !dbg !23002

bb.az:                                            ; preds = %bb.ad
    #dbg_value(ptr %1, !4105, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !23417)
  %i.dy = add i64 %i.ah, 1, !dbg !23419
  store i64 %i.dy, ptr %i.ab, align 8, !dbg !23419, !alias.scope !23420
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8), !dbg !23423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %1, ptr %i.h, align 8, !noalias !23424
  %i.dz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i8 1, ptr %i.dz, align 8, !noalias !23424
    #dbg_declare(ptr poison, !23428, !DIExpression(), !23456)
    #dbg_declare(ptr %i.h, !23434, !DIExpression(), !23458)
    #dbg_declare(ptr %i.g, !23435, !DIExpression(), !23459)
    #dbg_declare(ptr %i.f, !23453, !DIExpression(), !23460)
    #dbg_declare(ptr %i.f, !23461, !DIExpression(), !23468)
    #dbg_declare(ptr poison, !23433, !DIExpression(), !23456)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !23470, !noalias !23424
  store i64 0, ptr %i.g, align 8, !dbg !23471, !noalias !23424
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !23471 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ea, align 8, !dbg !23471, !noalias !23424
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !23471 ; 3 uses
  store i64 0, ptr %i.eb, align 8, !dbg !23471, !noalias !23424
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.ba, !dbg !23477

bb.ba:                                            ; preds = %bb.bo, %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !23478), !dbg !23481
    #dbg_value(ptr %i.h, !23482, !DIExpression(), !23504)
  call void @llvm.experimental.noalias.scope.decl(metadata !23506), !dbg !23509, !noalias !23510
    #dbg_value(ptr %i.h, !23511, !DIExpression(), !23527)
    #dbg_declare(ptr poison, !23516, !DIExpression(), !23529)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !23530, !noalias !23531
  invoke fastcc void @_RINvNvXs7_NtCsenfyI6F4F2A_10serde_json2deINtB8_9SeqAccesspENtNtCs9xKKqPmwf7Y_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %.noexc unwind label %bb.bf, !dbg !23530, !inline_history !23534

.noexc:                                           ; preds = %bb.ba
  %i.ed = load i8, ptr %i.d, align 8, !dbg !23530, !range !3575, !noalias !23531, !noundef !18
  %i.ee = trunc nuw i8 %i.ed to i1, !dbg !23530
  br i1 %i.ee, label %bb.bb, label %bb.bc, !dbg !23535

bb.bb:                                            ; preds = %.noexc
  %i.ef = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !23537
  %i.eg = load ptr, ptr %i.ef, align 8, !dbg !23537, !noalias !23531, !nonnull !18, !align !6802, !noundef !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !23538, !noalias !23531
  br label %bb.bg, !dbg !23539

bb.bc:                                            ; preds = %.noexc
  %i.eh = load i8, ptr %i.ec, align 1, !dbg !23540, !range !3575, !noalias !23531, !noundef !18
  %i.ei = trunc nuw i8 %i.eh to i1, !dbg !23540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !23538, !noalias !23531
  br i1 %i.ei, label %bb.bd, label %bb.bn, !dbg !23535

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !23541, !noalias !23531
  %i.ej = load ptr, ptr %i.h, align 8, !dbg !23542, !alias.scope !23543, !noalias !23544, !nonnull !18, !align !6802, !noundef !18
    #dbg_declare(ptr poison, !23545, !DIExpression(), !23553)
    #dbg_value(ptr %i.ej, !23551, !DIExpression(), !23555)
    #dbg_declare(ptr poison, !23550, !DIExpression(), !23553)
    #dbg_value(ptr %i.ej, !23556, !DIExpression(), !23561)
  invoke fastcc void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2s_5ValueNtB1l_11Deserialize11deserialize12ValueVisitorECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ej) #21
          to label %.noexc97 unwind label %bb.bf, !dbg !23563, !inline_history !23534

.noexc97:                                         ; preds = %bb.bd
  %i.ek = load i64, ptr %i.c, align 8, !dbg !23541, !range !5784, !noalias !23531, !noundef !18 ; 2 uses
  %i.el = icmp eq i64 %i.ek, -1, !dbg !23541
  %i.em = load ptr, ptr %.sroa.4113.0..sroa_idx, align 8, !dbg !23564, !noalias !23531 ; 2 uses
  br i1 %i.el, label %bb.be, label %bb.bj, !dbg !23535

bb.be:                                            ; preds = %.noexc97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !23565, !noalias !23531
  br label %bb.bg, !dbg !23566

bb.bf:                                            ; preds = %bb.bd, %bb.ba
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !23568

.body:                                            ; preds = %bb.bl, %bb.bf
  %eh.lpad-body = phi { ptr, i32 } [ %i.en, %bb.bf ], [ %i.et, %bb.bl ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsenfyI6F4F2A_10serde_json5value5ValueEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #17
          to label %common.resume unwind label %bb.bp, !dbg !23568, !noalias !23510, !inline_history !23569

bb.bg:                                            ; preds = %bb.bb, %bb.be
  %.sroa.9107.0.ph = phi ptr [ %i.em, %bb.be ], [ %i.eg, %bb.bb ]
    #dbg_value(ptr %.sroa.9107.0.ph, !22658, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23570)
    #dbg_value(i64 -1, !22658, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23570)
    #dbg_value(ptr %i.g, !6108, !DIExpression(), !23571)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsenfyI6F4F2A_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsenfyI6F4F2A_10serde_json5value5ValueEECsaTqK2fWTXJW_11qlog_dancer.exit unwind label %bb.bh, !dbg !23573, !noalias !23510

bb.bh:                                            ; preds = %bb.bg
  %i.eo = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.g, !6113, !DIExpression(), !23574)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsenfyI6F4F2A_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.bi, !dbg !23576, !noalias !23510

bb.bi:                                            ; preds = %bb.bh
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !23573, !noalias !23510
  unreachable, !dbg !23573

common.resume:                                    ; preds = %bb.bz, %bb.bq, %.body, %bb.bh
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.eo, %bb.bh ], [ %i.fr, %bb.bz ], [ %i.fc, %bb.bq ]
  resume { ptr, i32 } %common.resume.op, !dbg !22678

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsenfyI6F4F2A_10serde_json5value5ValueEECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.bg
    #dbg_value(ptr %i.g, !6113, !DIExpression(), !23577)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsenfyI6F4F2A_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !dbg !23579, !noalias !23510
  br label %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read9SliceReadEECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !23568

bb.bj:                                            ; preds = %.noexc97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !23460, !noalias !23424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5114.0..sroa_idx, i64 56, i1 false), !dbg !23540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !23565, !noalias !23531
  store i64 %i.ek, ptr %i.f, align 8, !dbg !23460, !noalias !23424
  store ptr %i.em, ptr %.sroa.3.0..sroa_idx2.i, align 8, !dbg !23460, !noalias !23424
    #dbg_value(ptr %i.g, !23467, !DIExpression(), !23580)
    #dbg_value(ptr %i.g, !23581, !DIExpression(), !23593)
    #dbg_value(ptr %i.g, !23595, !DIExpression(), !23601)
    #dbg_declare(ptr %i.f, !23587, !DIExpression(), !23603)
    #dbg_value(i64 72, !23604, !DIExpression(), !23608)
  %i.eq = load i64, ptr %i.eb, align 8, !dbg !23618, !alias.scope !23619, !noalias !23622, !noundef !18 ; 3 uses
    #dbg_value(i64 %i.eq, !23588, !DIExpression(), !23624)
    #dbg_value(i64 %i.eq, !23625, !DIExpression(), !23631)
    #dbg_value(ptr %i.g, !23616, !DIExpression(), !23633)
  %i.er = load i64, ptr %i.g, align 8, !dbg !23634, !range !13883, !alias.scope !23619, !noalias !23622, !noundef !18
  %i.es = icmp eq i64 %i.eq, %i.er, !dbg !23635
  br i1 %i.es, label %bb.bk, label %bb.bo, !dbg !23635

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsenfyI6F4F2A_10serde_json5value5ValueE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.bo unwind label %bb.bl, !dbg !23636, !noalias !23622

bb.bl:                                            ; preds = %bb.bk
  %i.et = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5value5ValueECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f) #17
          to label %.body unwind label %bb.bm, !dbg !23637, !noalias !23510

bb.bm:                                            ; preds = %bb.bl
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !23638, !noalias !23510
  unreachable, !dbg !23638

bb.bn:                                            ; preds = %bb.bc
  %.sroa.0108.0.copyload = load ptr, ptr %i.g, align 8, !dbg !23639, !noalias !23424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %i.ea, i64 16, i1 false), !dbg !23639, !noalias !23640
    #dbg_value(i64 -9223372036854775804, !22658, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23570)
    #dbg_value(ptr %.sroa.0108.0.copyload, !22658, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23570)
  br label %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read9SliceReadEECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !23568

bb.bo:                                            ; preds = %bb.bk, %bb.bj
  %i.ev = load ptr, ptr %i.ea, align 8, !dbg !23641, !alias.scope !23619, !noalias !23622, !nonnull !18, !noundef !18
    #dbg_value(ptr %i.ev, !23630, !DIExpression(), !23631)
  %i.ew = getelementptr inbounds nuw [72 x i8], ptr %i.ev, i64 %i.eq, !dbg !23662
    #dbg_value(ptr %i.ew, !23590, !DIExpression(), !23663)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ew, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false), !dbg !23664, !noalias !23510
  %i.ex = add i64 %i.eq, 1, !dbg !23665
  store i64 %i.ex, ptr %i.eb, align 8, !dbg !23665, !alias.scope !23619, !noalias !23622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !23666, !noalias !23424
  br label %bb.ba, !dbg !23477

bb.bp:                                            ; preds = %.body
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !23667, !noalias !23510, !inline_history !23569
  unreachable, !dbg !23667

_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read9SliceReadEECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsenfyI6F4F2A_10serde_json5value5ValueEECsaTqK2fWTXJW_11qlog_dancer.exit, %bb.bn
  %.sroa.6105.0 = phi ptr [ %.sroa.9107.0.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsenfyI6F4F2A_10serde_json5value5ValueEECsaTqK2fWTXJW_11qlog_dancer.exit ], [ %.sroa.0108.0.copyload, %bb.bn ], !dbg !23668
  %.sroa.0104.0 = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsenfyI6F4F2A_10serde_json5value5ValueEECsaTqK2fWTXJW_11qlog_dancer.exit ], [ -9223372036854775804, %bb.bn ], !dbg !23668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !23568, !noalias !23424
    #dbg_value(i64 %.sroa.0104.0, !22658, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23570)
    #dbg_value(ptr %.sroa.6105.0, !22658, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23570)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !23669
  %i.ez = load i8, ptr %i.cl, align 8, !dbg !23670, !noundef !18
  %i.fa = add i8 %i.ez, 1, !dbg !23670
  store i8 %i.fa, ptr %i.cl, align 8, !dbg !23670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !23671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !23672
  store i64 %.sroa.0104.0, ptr %i.u, align 8, !dbg !23672
  %.sroa.6105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !23672
  store ptr %.sroa.6105.0, ptr %.sroa.6105.0..sroa_idx, align 8, !dbg !23672
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !23672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8, i64 56, i1 false), !dbg !23672
  %i.fb = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.br unwind label %bb.bq, !dbg !23673 ; 5 uses

bb.bq:                                            ; preds = %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read9SliceReadEECsaTqK2fWTXJW_11qlog_dancer.exit
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsenfyI6F4F2A_10serde_json5value5ValueNtNtB11_5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(72) %i.u) #17
          to label %common.resume unwind label %bb.bv, !dbg !23674

bb.br:                                            ; preds = %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read9SliceReadEECsaTqK2fWTXJW_11qlog_dancer.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.v, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false), !dbg !23671
  %i.fd = getelementptr inbounds nuw i8, ptr %i.v, i64 72, !dbg !23671
  store ptr %i.fb, ptr %i.fd, align 8, !dbg !23671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !23674
  %i.fe = load i64, ptr %i.v, align 8, !dbg !23671, !range !5784, !noundef !18 ; 2 uses
  %i.ff = icmp eq i64 %i.fe, -1, !dbg !23671
  br i1 %i.ff, label %bb.bt, label %bb.bs, !dbg !23675

bb.bs:                                            ; preds = %bb.br
  %.not48 = icmp eq ptr %i.fb, null, !dbg !23671
  br i1 %.not48, label %.thread169, label %bb.bu, !dbg !23675

.thread169:                                       ; preds = %bb.bs
    #dbg_value(i64 %i.fe, !22628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23004)
  %.sroa.22.0..sroa_idx179 = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !23676
  %.sroa.22.0.copyload180 = load i64, ptr %.sroa.22.0..sroa_idx179, align 8, !dbg !23676
    #dbg_value(i64 %.sroa.22.0.copyload180, !22628, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23004)
  %.sroa.37.0..sroa_idx183 = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !23676
  %.sroa.37.0.copyload184 = load i64, ptr %.sroa.37.0..sroa_idx183, align 8, !dbg !23676
    #dbg_value(i64 %.sroa.37.0.copyload184, !22628, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23004)
  %.sroa.45.0..sroa_idx187 = getelementptr inbounds nuw i8, ptr %i.v, i64 24, !dbg !23676
  %.sroa.45.0.copyload188 = load i64, ptr %.sroa.45.0..sroa_idx187, align 8, !dbg !23676
    #dbg_value(i64 %.sroa.45.0.copyload188, !22628, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !23004)
  %.sroa.47.0..sroa_idx191 = getelementptr inbounds nuw i8, ptr %i.v, i64 32, !dbg !23676
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47.0..sroa_idx191, i64 40, i1 false), !dbg !23676
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8), !dbg !23677
  br label %.thread141, !dbg !23677

bb.bt:                                            ; preds = %bb.br
  %i.fg = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !23678
  %i.fh = load ptr, ptr %i.fg, align 8, !dbg !23678, !nonnull !18, !align !6802, !noundef !18
    #dbg_value(ptr %i.fh, !22662, !DIExpression(), !23679)
  %i.fi = ptrtoint ptr %i.fh to i64, !dbg !23680  ; 2 uses
    #dbg_value(i64 %i.fi, !22628, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23004)
    #dbg_value(i64 -1, !22628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23004)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8), !dbg !23677
  %.not148 = icmp eq ptr %i.fb, null, !dbg !23677
  br i1 %.not148, label %.thread141, label %bb.bw, !dbg !23677

bb.bu:                                            ; preds = %bb.bs
    #dbg_value(ptr %i.fb, !22662, !DIExpression(), !23679)
  %i.fj = ptrtoint ptr %i.fb to i64, !dbg !23680
    #dbg_value(i64 %i.fj, !22628, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23004)
    #dbg_value(i64 -1, !22628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23004)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8), !dbg !23677
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5value5ValueECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(72) %i.v), !dbg !23677
  br label %.thread141, !dbg !23677

bb.bv:                                            ; preds = %bb.bz, %bb.bq
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !23681
  unreachable, !dbg !23681

.thread141:                                       ; preds = %.thread169, %bb.bu, %bb.bw, %bb.bt
  %.sroa.22.sroa.21.sroa.0.3.in.in = phi i64 [ undef, %bb.bt ], [ undef, %bb.bw ], [ %.sroa.45.0.copyload188, %.thread169 ], [ undef, %bb.bu ], !dbg !22755
  %.sroa.45.2 = phi i64 [ undef, %bb.bt ], [ undef, %bb.bw ], [ %.sroa.37.0.copyload184, %.thread169 ], [ undef, %bb.bu ], !dbg !22755
  %.sroa.37.3 = phi i64 [ %i.fi, %bb.bt ], [ %i.fi, %bb.bw ], [ %.sroa.22.0.copyload180, %.thread169 ], [ %i.fj, %bb.bu ], !dbg !23570
  %.sroa.0.3 = phi i64 [ -1, %bb.bt ], [ -1, %bb.bw ], [ %i.fe, %.thread169 ], [ -1, %bb.bu ], !dbg !23570
    #dbg_value(i64 %.sroa.0.3, !22628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23004)
    #dbg_value(i64 %.sroa.37.3, !22628, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23004)
    #dbg_value(i64 %.sroa.45.2, !22628, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23004)
    #dbg_value(i64 %.sroa.22.sroa.21.sroa.0.3.in.in, !22628, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !23004)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !23677
  br label %bb.ag, !dbg !23677

bb.bw:                                            ; preds = %bb.bt
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5error5ErrorECsaTqK2fWTXJW_11qlog_dancer(ptr nonnull %i.fb), !dbg !23677
  br label %.thread141, !dbg !23677

bb.bx:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !23413
  store i64 24, ptr %i.t, align 8, !dbg !23413
  %i.fl = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.t), !dbg !23414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !23415
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23416
  store ptr %i.fl, ptr %i.fm, align 8, !dbg !23416
  store i64 -1, ptr %0, align 8, !dbg !23416
  br label %bb.ah, !dbg !23002

bb.by:                                            ; preds = %bb.ae
    #dbg_value(ptr %1, !4105, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !23682)
  %i.fn = add i64 %i.ah, 1, !dbg !23684
  store i64 %i.fn, ptr %i.ab, align 8, !dbg !23684, !alias.scope !23685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !23688
  call void @_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read9SliceReadEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !dbg !23689
  %i.fo = load i8, ptr %i.cp, align 8, !dbg !23690, !noundef !18
  %i.fp = add i8 %i.fo, 1, !dbg !23690
  store i8 %i.fp, ptr %i.cp, align 8, !dbg !23690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !23691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !23692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %i.s, i64 72, i1 false), !dbg !23692
  %i.fq = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.ca unwind label %bb.bz, !dbg !23693 ; 5 uses

bb.bz:                                            ; preds = %bb.by
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsenfyI6F4F2A_10serde_json5value5ValueNtNtB11_5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(72) %i.q) #17
          to label %common.resume unwind label %bb.bv, !dbg !23694

bb.ca:                                            ; preds = %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %i.s, i64 72, i1 false), !dbg !23691
  %i.fs = getelementptr inbounds nuw i8, ptr %i.r, i64 72, !dbg !23691
  store ptr %i.fq, ptr %i.fs, align 8, !dbg !23691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !23694
  %i.ft = load i64, ptr %i.r, align 8, !dbg !23691, !range !5784, !noundef !18
  %i.fu = icmp eq i64 %i.ft, -1, !dbg !23691
  br i1 %i.fu, label %bb.cc, label %bb.cb, !dbg !23695

bb.cb:                                            ; preds = %bb.ca
  %.not = icmp eq ptr %i.fq, null, !dbg !23691
  br i1 %.not, label %.thread171, label %bb.cd, !dbg !23695

.thread171:                                       ; preds = %bb.cb
  %.sroa.0.0.copyload178 = load i64, ptr %i.s, align 8, !dbg !23696
    #dbg_value(i64 %.sroa.0.0.copyload178, !22628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23004)
  %.sroa.22.0..sroa_idx181 = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !23696
  %.sroa.22.0.copyload182 = load i64, ptr %.sroa.22.0..sroa_idx181, align 8, !dbg !23696
    #dbg_value(i64 %.sroa.22.0.copyload182, !22628, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23004)
  %.sroa.37.0..sroa_idx185 = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !23696
  %.sroa.37.0.copyload186 = load i64, ptr %.sroa.37.0..sroa_idx185, align 8, !dbg !23696
    #dbg_value(i64 %.sroa.37.0.copyload186, !22628, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23004)
  %.sroa.45.0..sroa_idx189 = getelementptr inbounds nuw i8, ptr %i.s, i64 24, !dbg !23696
  %.sroa.45.0.copyload190 = load i64, ptr %.sroa.45.0..sroa_idx189, align 8, !dbg !23696
    #dbg_value(i64 %.sroa.45.0.copyload190, !22628, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !23004)
  %.sroa.47.0..sroa_idx192 = getelementptr inbounds nuw i8, ptr %i.s, i64 32, !dbg !23696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47.0..sroa_idx192, i64 40, i1 false), !dbg !23696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !23697
  br label %.thread144, !dbg !23697

bb.cc:                                            ; preds = %bb.ca
  %i.fv = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !23698
  %i.fw = load ptr, ptr %i.fv, align 8, !dbg !23698, !nonnull !18, !align !6802, !noundef !18
    #dbg_value(ptr %i.fw, !22668, !DIExpression(), !23699)
  %i.fx = ptrtoint ptr %i.fw to i64, !dbg !23700  ; 2 uses
    #dbg_value(i64 %i.fx, !22628, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23004)
    #dbg_value(i64 -1, !22628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23004)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !23697
  %.not147 = icmp eq ptr %i.fq, null, !dbg !23697
  br i1 %.not147, label %.thread144, label %bb.ce, !dbg !23697

bb.cd:                                            ; preds = %bb.cb
    #dbg_value(ptr %i.fq, !22668, !DIExpression(), !23699)
  %i.fy = ptrtoint ptr %i.fq to i64, !dbg !23700
    #dbg_value(i64 %i.fy, !22628, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23004)
    #dbg_value(i64 -1, !22628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23004)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !23697
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5value5ValueECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(72) %i.r), !dbg !23697
  br label %.thread144, !dbg !23697

.thread144:                                       ; preds = %.thread171, %bb.cd, %bb.ce, %bb.cc
  %.sroa.22.sroa.21.sroa.0.4.in.in = phi i64 [ undef, %bb.cc ], [ undef, %bb.ce ], [ %.sroa.45.0.copyload190, %.thread171 ], [ undef, %bb.cd ], !dbg !22755
  %.sroa.45.3 = phi i64 [ undef, %bb.cc ], [ undef, %bb.ce ], [ %.sroa.37.0.copyload186, %.thread171 ], [ undef, %bb.cd ], !dbg !22755
  %.sroa.37.4 = phi i64 [ %i.fx, %bb.cc ], [ %i.fx, %bb.ce ], [ %.sroa.22.0.copyload182, %.thread171 ], [ %i.fy, %bb.cd ], !dbg !23701
  %.sroa.0.4 = phi i64 [ -1, %bb.cc ], [ -1, %bb.ce ], [ %.sroa.0.0.copyload178, %.thread171 ], [ -1, %bb.cd ], !dbg !23701
    #dbg_value(i64 %.sroa.0.4, !22628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23004)
    #dbg_value(i64 %.sroa.37.4, !22628, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23004)
    #dbg_value(i64 %.sroa.45.3, !22628, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23004)
    #dbg_value(i64 %.sroa.22.sroa.21.sroa.0.4.in.in, !22628, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !23004)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !23697
  br label %bb.ag, !dbg !23697

bb.ce:                                            ; preds = %bb.cc
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5error5ErrorECsaTqK2fWTXJW_11qlog_dancer(ptr nonnull %i.fq), !dbg !23697
  br label %.thread144, !dbg !23697

bb.cf:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !23702
  store i64 10, ptr %i.p, align 8, !dbg !23702
  %i.fz = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p), !dbg !23703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !23704
  br label %bb.ch, !dbg !23006

bb.cg:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !23705
  call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.y, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext true), !dbg !23706
  %i.ga = load i64, ptr %i.y, align 8, !dbg !23705, !range !11349, !noundef !18 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, -1, !dbg !23705
  %i.gc = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !22972 ; 2 uses
  br i1 %i.gb, label %bb.ci, label %bb.cj, !dbg !22974

bb.ch:                                            ; preds = %._crit_edge, %bb.cf
  %i.gd = phi ptr [ %i.cv, %._crit_edge ], [ %i.fz, %bb.cf ], !dbg !23008
    #dbg_value(ptr %i.gd, !22672, !DIExpression(), !23707)
    #dbg_value(ptr %1, !11415, !DIExpression(), !23708)
    #dbg_value(ptr %i.gd, !11422, !DIExpression(), !23708)
  %i.ge = call noundef nonnull align 8 ptr @_RINvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsaTqK2fWTXJW_11qlog_dancer(ptr noalias noundef nonnull align 8 %i.gd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !dbg !23710
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23711
  store ptr %i.ge, ptr %i.gf, align 8, !dbg !23711
  store i64 -1, ptr %0, align 8, !dbg !23711
  br label %bb.co, !dbg !23712

bb.ci:                                            ; preds = %bb.cg
  %i.gg = load ptr, ptr %i.gc, align 8, !dbg !23014, !nonnull !18, !align !6802, !noundef !18
    #dbg_value(ptr %i.gg, !22648, !DIExpression(), !23713)
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23714
  store ptr %i.gg, ptr %i.gh, align 8, !dbg !23714
  store i64 -1, ptr %0, align 8, !dbg !23714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !23715
  br label %bb.ah, !dbg !23002

bb.cj:                                            ; preds = %bb.cg
    #dbg_value(i64 %i.ga, !23018, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23716)
  %.sroa.2102.0.copyload = load i64, ptr %i.gc, align 8, !dbg !23034 ; 5 uses
    #dbg_value(i64 %.sroa.2102.0.copyload, !23018, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23716)
    #dbg_declare(ptr poison, !23025, !DIExpression(), !23718)
  switch i64 %i.ga, label %default.unreachable273 [
    i64 0, label %bb.ck
    i64 1, label %_RINvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserialize12ValueVisitorECsaTqK2fWTXJW_11qlog_dancer.exit96
    i64 2, label %bb.cn
  ], !dbg !23719

bb.ck:                                            ; preds = %bb.cj
  %i.gi = bitcast i64 %.sroa.2102.0.copyload to double, !dbg !23720
    #dbg_value(double %i.gi, !23026, !DIExpression(), !23721)
    #dbg_declare(ptr poison, !23039, !DIExpression(), !23722)
    #dbg_value(double %i.gi, !23047, !DIExpression(), !23724)
    #dbg_value(double %i.gi, !23051, !DIExpression(), !23725)
    #dbg_value(double %i.gi, !23075, !DIExpression(), !23727)
    #dbg_value(double %i.gi, !23085, !DIExpression(), !23729)
    #dbg_declare(ptr poison, !23046, !DIExpression(), !23722)
  %i.gj = tail call double @llvm.fabs.f64(double %i.gi), !dbg !23731
  %i.gk = fcmp ueq double %i.gj, +inf, !dbg !23732
    #dbg_value(double %i.gi, !23094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23733)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !23735, !noalias !23736
  br i1 %i.gk, label %bb.cl, label %bb.cm, !dbg !23742

bb.cl:                                            ; preds = %bb.ck
    #dbg_value(i64 -1, !23094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23733)
    #dbg_declare(ptr %i.e, !23106, !DIExpression(), !23743)
    #dbg_declare(ptr poison, !23107, !DIExpression(), !23744)
  %.sroa.5.0..sroa_idx5.i.i91 = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !23745
  %.sroa.5.sroa.0.0.copyload9.i.i92 = load i64, ptr %.sroa.5.0..sroa_idx5.i.i91, align 8, !dbg !23745, !alias.scope !23746, !noalias !23750
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.sroa_idx.i.i93 = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !23745
  %.sroa.5.sroa.5.0.copyload10.i.i94241 = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.sroa_idx.i.i93, align 8, !dbg !23745, !alias.scope !23746, !noalias !23750
  br label %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit.i85, !dbg !23752

bb.cm:                                            ; preds = %bb.ck
    #dbg_value(i64 2, !23094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23733)
  store i64 -9223372036854775808, ptr %i.e, align 8, !dbg !23735, !noalias !23736
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23753), !dbg !23754
    #dbg_declare(ptr %i.e, !23106, !DIExpression(), !23743)
    #dbg_declare(ptr poison, !23107, !DIExpression(), !23744)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5value5ValueECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e), !dbg !23752, !noalias !23755
  br label %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit.i85, !dbg !23752

_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit.i85: ; preds = %bb.cm, %bb.cl
  %i.gl = phi i64 [ %.sroa.5.sroa.5.0.copyload10.i.i94241, %bb.cl ], [ %.sroa.2102.0.copyload, %bb.cm ], !dbg !23733
  %.sroa.5.sroa.0.0.i.i87 = phi i64 [ %.sroa.5.sroa.0.0.copyload9.i.i92, %bb.cl ], [ 2, %bb.cm ], !dbg !23733
  %.sroa.0.0.i.i88 = phi i64 [ -9223372036854775808, %bb.cl ], [ -9223372036854775806, %bb.cm ], !dbg !23733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !23756, !noalias !23736
    #dbg_value(i64 %.sroa.0.0.i.i88, !22628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23004)
    #dbg_value(i64 %.sroa.5.sroa.0.0.i.i87, !22628, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23004)
    #dbg_value(i64 %i.gl, !22628, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23004)
  br label %_RINvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserialize12ValueVisitorECsaTqK2fWTXJW_11qlog_dancer.exit96, !dbg !23757

bb.cn:                                            ; preds = %bb.cj
    #dbg_value(i64 %.sroa.2102.0.copyload, !23030, !DIExpression(), !23758)
    #dbg_declare(ptr poison, !23136, !DIExpression(), !23759)
    #dbg_value(i64 %.sroa.2102.0.copyload, !23142, !DIExpression(), !23761)
    #dbg_value(i64 %.sroa.2102.0.copyload, !23146, !DIExpression(), !23762)
    #dbg_value(i64 %.sroa.2102.0.copyload, !23157, !DIExpression(), !23764)
    #dbg_declare(ptr poison, !23141, !DIExpression(), !23759)
  %.lobit.i.i80 = lshr i64 %.sroa.2102.0.copyload, 63, !dbg !23766
    #dbg_value(i64 -9223372036854775806, !22628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23004)
    #dbg_value(i64 %.lobit.i.i80, !22628, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23004)
    #dbg_value(i64 %.sroa.2102.0.copyload, !22628, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23004)
  br label %_RINvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserialize12ValueVisitorECsaTqK2fWTXJW_11qlog_dancer.exit96, !dbg !23767

_RINvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserialize12ValueVisitorECsaTqK2fWTXJW_11qlog_dancer.exit96: ; preds = %bb.cj, %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit.i85, %bb.cn
  %.sroa.22.sroa.21.sroa.0.5 = phi i64 [ %i.gl, %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit.i85 ], [ %.sroa.2102.0.copyload, %bb.cn ], [ %.sroa.2102.0.copyload, %bb.cj ], !dbg !23716
  %.sroa.22.sroa.0.5 = phi i64 [ %.sroa.5.sroa.0.0.i.i87, %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit.i85 ], [ %.lobit.i.i80, %bb.cn ], [ 0, %bb.cj ], !dbg !23716
  %.sroa.0.5 = phi i64 [ %.sroa.0.0.i.i88, %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit.i85 ], [ -9223372036854775806, %bb.cn ], [ -9223372036854775806, %bb.cj ], !dbg !23716
    #dbg_value(i64 %.sroa.0.5, !22628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23004)
    #dbg_value(i64 %.sroa.22.sroa.0.5, !22628, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23004)
    #dbg_value(i64 %.sroa.22.sroa.21.sroa.0.5, !22628, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23004)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !23715
  br label %.thread, !dbg !23715

.thread:                                          ; preds = %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit, %_RINvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserialize12ValueVisitorECsaTqK2fWTXJW_11qlog_dancer.exit, %_RINvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserialize12ValueVisitorECsaTqK2fWTXJW_11qlog_dancer.exit96, %bb.z, %bb.q, %bb.j, %bb.ag
  %.sroa.22.sroa.0.6 = phi i64 [ %.sroa.22.sroa.21.sroa.0.0.in.in, %bb.ag ], [ undef, %bb.q ], [ undef, %bb.z ], [ undef, %bb.j ], [ %.sroa.4.0.copyload, %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit ], [ undef, %_RINvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserialize12ValueVisitorECsaTqK2fWTXJW_11qlog_dancer.exit ], [ undef, %_RINvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserialize12ValueVisitorECsaTqK2fWTXJW_11qlog_dancer.exit96 ], !dbg !22756
  %.sroa.45.4 = phi i64 [ %.sroa.45.0, %bb.ag ], [ undef, %bb.q ], [ undef, %bb.z ], [ undef, %bb.j ], [ %.sroa.37.2, %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit ], [ %.sroa.22.sroa.21.sroa.0.1, %_RINvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserialize12ValueVisitorECsaTqK2fWTXJW_11qlog_dancer.exit ], [ %.sroa.22.sroa.21.sroa.0.5, %_RINvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserialize12ValueVisitorECsaTqK2fWTXJW_11qlog_dancer.exit96 ], !dbg !22755
  %.sroa.37.6 = phi i64 [ %.sroa.37.0, %bb.ag ], [ 1, %bb.q ], [ 0, %bb.z ], [ undef, %bb.j ], [ %.sroa.22.2, %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit ], [ %.sroa.22.sroa.0.1, %_RINvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserialize12ValueVisitorECsaTqK2fWTXJW_11qlog_dancer.exit ], [ %.sroa.22.sroa.0.5, %_RINvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserialize12ValueVisitorECsaTqK2fWTXJW_11qlog_dancer.exit96 ], !dbg !22755
  %.sroa.0.6 = phi i64 [ %.sroa.0.0, %bb.ag ], [ -9223372036854775807, %bb.q ], [ -9223372036854775807, %bb.z ], [ -9223372036854775808, %bb.j ], [ -9223372036854775805, %_RINvXNvXNtNtCsenfyI6F4F2A_10serde_json5value2deNtB8_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit ], [ %.sroa.0.1, %_RINvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserialize12ValueVisitorECsaTqK2fWTXJW_11qlog_dancer.exit ], [ %.sroa.0.5, %_RINvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserialize12ValueVisitorECsaTqK2fWTXJW_11qlog_dancer.exit96 ], !dbg !22755
    #dbg_value(i64 %.sroa.0.6, !22628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23004)
    #dbg_value(i64 %.sroa.37.6, !22628, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23004)
    #dbg_value(i64 %.sroa.45.4, !22628, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23004)
    #dbg_value(i64 %.sroa.22.sroa.0.6, !22628, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !23004)
  store i64 %.sroa.0.6, ptr %0, align 8, !dbg !23768
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23768
  store i64 %.sroa.37.6, ptr %.sroa.22.0..sroa_idx, align 8, !dbg !23768
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23768
  store i64 %.sroa.45.4, ptr %.sroa.37.0..sroa_idx, align 8, !dbg !23768
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23768
  store i64 %.sroa.22.sroa.0.6, ptr %.sroa.45.0..sroa_idx, align 8, !dbg !23768
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !23768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47, i64 40, i1 false), !dbg !23768
  br label %bb.co, !dbg !23769

bb.co:                                            ; preds = %bb.ch, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.47), !dbg !23009
  br label %bb.cp, !dbg !23770

bb.cp:                                            ; preds = %bb.co, %.loopexit, %bb.ah
  ret void, !dbg !23771
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_mapINtNvXs3g_NtB1l_5implsINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMappppENtB1l_11Deserialize11deserialize10MapVisitorNtNtCsexYYUdYSQU6_5alloc6string6StringxNtNtNtB2Q_4hash6random11RandomStateEECsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23772 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 9 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !23794, !DIExpression(DW_OP_LLVM_fragment, 128, 256), !23800)
    #dbg_declare(ptr poison, !23790, !DIExpression(DW_OP_LLVM_fragment, 128, 256), !23801)
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [56 x i8], align 8                ; 11 uses
  %.sroa.7 = alloca [32 x i8], align 8            ; 6 uses
    #dbg_declare(ptr %.sroa.7, !23788, !DIExpression(DW_OP_LLVM_fragment, 128, 256), !23802)
  %i.l = alloca [24 x i8], align 8                ; 4 uses
    #dbg_declare(ptr poison, !23786, !DIExpression(DW_OP_LLVM_fragment, 128, 256), !23803)
  %i.m = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %1, !23776, !DIExpression(), !23804)
    #dbg_value(ptr %1, !23805, !DIExpression(), !23808)
    #dbg_declare(ptr %i.a, !23777, !DIExpression(), !23810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23811), !dbg !23814
    #dbg_value(ptr %1, !4053, !DIExpression(), !23815)
    #dbg_value(ptr %1, !4067, !DIExpression(), !23817)
    #dbg_value(ptr %1, !4073, !DIExpression(), !23819)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !23821, !noalias !23824, !noundef !18 ; 2 uses
  %.promoted.i = load i64, ptr %i.n, align 8, !alias.scope !23811, !noalias !23827 ; 2 uses
  %i.q = icmp ult i64 %.promoted.i, %i.p, !dbg !23828
  br i1 %i.q, label %.lr.ph.i, label %.loopexit, !dbg !23828

.lr.ph.i:                                         ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !23821, !noalias !23824, !nonnull !18, !noundef !18
  br label %bb.b, !dbg !23828

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.t = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.w, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23830), !dbg !23831
    #dbg_value(ptr %i.r, !4096, !DIExpression(), !23832)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t, !dbg !23833
  %i.v = load i8, ptr %i.u, align 1, !dbg !23833, !noalias !23834, !noundef !18
  switch i8 %i.v, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.d
  ], !dbg !23835, !prof !14201

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
    #dbg_value(ptr %1, !4105, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !23836)
  %i.w = add i64 %i.t, 1, !dbg !23838             ; 3 uses
  store i64 %i.w, ptr %i.n, align 8, !dbg !23838, !alias.scope !23839, !noalias !23827
    #dbg_value(ptr %1, !4096, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !23832)
  %exitcond.not.i = icmp eq i64 %i.w, %i.p, !dbg !23828
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b, !dbg !23828

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !23842
  store i64 5, ptr %i.m, align 8, !dbg !23842
  %i.x = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m), !dbg !23843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !23844
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23845
  store ptr %i.x, ptr %i.y, align 8, !dbg !23845
  store ptr null, ptr %0, align 8, !dbg !23846
  br label %bb.ah, !dbg !23847

bb.d:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !23849 ; 4 uses
  %i.aa = load i8, ptr %i.z, align 8, !dbg !23849, !noundef !18
  %i.ab = add i8 %i.aa, -1, !dbg !23849           ; 2 uses
  store i8 %i.ab, ptr %i.z, align 8, !dbg !23849
  %i.ac = icmp eq i8 %i.ab, 0, !dbg !23850
  br i1 %i.ac, label %bb.f, label %bb.g, !dbg !23850, !prof !11722

bb.e:                                             ; preds = %bb.b
  %i.ad = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115), !dbg !23851
    #dbg_value(ptr %i.ad, !23786, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23852)
    #dbg_value(ptr null, !23786, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23852)
  br label %bb.af, !dbg !23853

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !23854
  store i64 24, ptr %i.l, align 8, !dbg !23854
  %i.ae = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l), !dbg !23855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !23856
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23857
  store ptr %i.ae, ptr %i.af, align 8, !dbg !23857
  store ptr null, ptr %0, align 8, !dbg !23857
  br label %bb.ah, !dbg !23858

bb.g:                                             ; preds = %bb.d
    #dbg_value(ptr %1, !4105, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !23860)
  %i.ag = add i64 %i.t, 1, !dbg !23862
  store i64 %i.ag, ptr %i.n, align 8, !dbg !23862, !alias.scope !23863
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7), !dbg !23866
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %1, ptr %i.i, align 8, !noalias !23867
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 1, ptr %i.ah, align 8, !noalias !23867
    #dbg_declare(ptr poison, !23871, !DIExpression(), !23902)
    #dbg_declare(ptr %i.i, !23878, !DIExpression(), !23904)
    #dbg_declare(ptr %i.h, !23879, !DIExpression(), !23905)
    #dbg_declare(ptr %i.g, !23898, !DIExpression(), !23906)
    #dbg_declare(ptr %i.g, !23907, !DIExpression(), !23927)
    #dbg_declare(ptr poison, !23877, !DIExpression(), !23902)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !23929, !noalias !23867
    #dbg_value(i64 0, !23930, !DIExpression(), !23937)
  %i.ai = tail call { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @94), !dbg !23939, !noalias !23949 ; 2 uses
  %i.aj = extractvalue { i64, i64 } %i.ai, 0, !dbg !23950
  %i.ak = extractvalue { i64, i64 } %i.ai, 1, !dbg !23950
    #dbg_value(i64 %i.aj, !23936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23937)
    #dbg_value(i64 %i.ak, !23936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23937)
  call void @_RNvMs_NtCsjqcU1oJFKXj_9hashbrown3mapINtB4_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringxNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE24with_capacity_and_hasherCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, i64 noundef 0, i64 noundef %i.aj, i64 noundef %i.ak), !dbg !23951, !noalias !23949
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.3.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.3.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx5.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %bb.h, !dbg !23952

bb.h:                                             ; preds = %bb.y, %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !23953), !dbg !23956
    #dbg_value(ptr %i.i, !23957, !DIExpression(), !23979)
  call void @llvm.experimental.noalias.scope.decl(metadata !23981), !dbg !23984
    #dbg_value(ptr %i.i, !23985, !DIExpression(), !24007)
    #dbg_declare(ptr poison, !23990, !DIExpression(), !24009)
    #dbg_declare(ptr poison, !23991, !DIExpression(), !24010)
    #dbg_declare(ptr %i.f, !23996, !DIExpression(), !24011)
  call void @llvm.experimental.noalias.scope.decl(metadata !24012), !dbg !24015
    #dbg_value(ptr %i.i, !24016, !DIExpression(), !24031)
    #dbg_declare(ptr poison, !24021, !DIExpression(), !24033)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !24034, !noalias !24035
  invoke fastcc void @_RINvNvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB8_9MapAccesspENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %.noexc.i unwind label %.loopexit.i26, !dbg !24034, !noalias !23949

.noexc.i:                                         ; preds = %bb.h
  %i.an = load i8, ptr %i.e, align 8, !dbg !24034, !range !3575, !noalias !24035, !noundef !18
  %i.ao = trunc nuw i8 %i.an to i1, !dbg !24034
  br i1 %i.ao, label %bb.i, label %bb.j, !dbg !24039

bb.i:                                             ; preds = %.noexc.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !24041
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !24041, !noalias !24035, !nonnull !18, !align !6802, !noundef !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !24042, !noalias !24035
  br label %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_entryNtNtCsexYYUdYSQU6_5alloc6string6StringxECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i, !dbg !24043

bb.j:                                             ; preds = %.noexc.i
  %i.ar = load i8, ptr %i.al, align 1, !dbg !24044, !range !3575, !noalias !24035, !noundef !18
  %i.as = trunc nuw i8 %i.ar to i1, !dbg !24044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !24042, !noalias !24035
  br i1 %i.as, label %bb.k, label %.thread.i, !dbg !24039

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !24045, !noalias !24035
  %i.at = load ptr, ptr %i.i, align 8, !dbg !24046, !alias.scope !24047, !noalias !24048, !nonnull !18, !align !6802, !noundef !18 ; 7 uses
    #dbg_declare(ptr poison, !24049, !DIExpression(), !24061)
    #dbg_value(ptr %i.at, !24058, !DIExpression(), !24063)
    #dbg_declare(ptr poison, !24057, !DIExpression(), !24061)
  invoke void @_RINvXs6_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtCsenfyI6F4F2A_10serde_json2de6MapKeyNtNtB1V_4read9SliceReadEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.at)
          to label %.noexc15.i unwind label %.loopexit.i26, !dbg !24064, !noalias !23949

.noexc15.i:                                       ; preds = %bb.k
  %i.au = load i64, ptr %i.d, align 8, !dbg !24045, !range !3477, !noalias !24035, !noundef !18 ; 2 uses
  %i.av = icmp eq i64 %i.au, -1, !dbg !24045
  %i.aw = load ptr, ptr %i.am, align 8, !dbg !24065, !noalias !24066 ; 2 uses
  br i1 %i.av, label %bb.l, label %bb.m, !dbg !24039

bb.l:                                             ; preds = %.noexc15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !24067, !noalias !24035
  br label %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_entryNtNtCsexYYUdYSQU6_5alloc6string6StringxECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i, !dbg !24068

bb.m:                                             ; preds = %.noexc15.i
  %.sroa.14.0.copyload.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i, align 8, !dbg !24044, !noalias !24066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !24067, !noalias !24035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !24070, !noalias !24071
  store i64 %i.au, ptr %i.f, align 8, !dbg !24070, !noalias !24071
  store ptr %i.aw, ptr %.sroa.3.0..sroa_idx2.i.i.i, align 8, !dbg !24070, !noalias !24071
  store i64 %.sroa.14.0.copyload.i.i.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i, align 8, !dbg !24070, !noalias !24071
    #dbg_value(ptr poison, !24072, !DIExpression(), !24083)
    #dbg_declare(ptr poison, !24077, !DIExpression(), !24085)
end_hunk_0
