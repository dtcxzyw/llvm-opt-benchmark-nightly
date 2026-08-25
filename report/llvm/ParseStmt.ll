Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ParseStmt?download=true
begin_hunk_0_@_ZN5clang6Parser16ParseIfStatementEPNS_14SourceLocationE:bb.a
  %8 = alloca %"class.clang::Sema::ConditionResult", align 8 ; 5 uses
  %9 = alloca %"class.clang::SourceLocation", align 4 ; 6 uses
  %10 = alloca %"class.clang::SourceLocation", align 4 ; 6 uses
  %11 = alloca %"struct.(anonymous namespace)::MisleadingIndentationChecker", align 8 ; 10 uses
  %12 = alloca %"class.clang::SourceLocation", align 4 ; 6 uses
  %13 = alloca %"struct.(anonymous namespace)::MisleadingIndentationChecker", align 8 ; 9 uses
  %14 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 2 uses
  %15 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %16 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !358
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  store i32 %i.c, ptr %i.d, align 8, !tbaa !335
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101, !nonnull !102, !align !103
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.f, ptr noundef nonnull align 8 dereferenceable(20) %i.b) #15
  %.sroa.01.0.copyload.i = load i32, ptr %i.d, align 8, !tbaa !335 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 11 uses
  %i.h = load i16, ptr %i.g, align 8, !tbaa !100  ; 2 uses
  switch i16 %i.h, label %bb.e [
    i16 165, label %bb.b
    i16 41, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !101, !nonnull !102, !align !103
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !104, !nonnull !102, !align !103
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = and i64 %i.l, 4096
  %.not60 = icmp eq i64 %i.m, 0
  br i1 %.not60, label %.thread174.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = and i64 %i.l, 32768
  %.not61 = icmp eq i64 %i.n, 0
  %i.o = select i1 %.not61, i32 1969, i32 2097
  call void @_ZN5clang6Parser4DiagERKNS_5TokenEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::DiagnosticBuilder") align 8 %4, ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(20) %i.b, i32 noundef %i.o) #15
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %4) #15
  %i.p = load i32, ptr %i.b, align 8, !tbaa !358
  store i32 %i.p, ptr %i.d, align 8, !tbaa !335
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !101, !nonnull !102, !align !103
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.q, ptr noundef nonnull align 8 dereferenceable(20) %i.b) #15
  %.pre = load i16, ptr %i.g, align 8, !tbaa !100
  br label %.thread174

bb.d:                                             ; preds = %bb.a
  %i.r = load i32, ptr %i.b, align 8, !tbaa !358
  store i32 %i.r, ptr %i.d, align 8, !tbaa !335
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !101, !nonnull !102, !align !103
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.s, ptr noundef nonnull align 8 dereferenceable(20) %i.b) #15
  %.sroa.01.0.copyload.i68 = load i32, ptr %i.d, align 8, !tbaa !335
  %.pr = load i16, ptr %i.g, align 8, !tbaa !100
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.t = phi i16 [ %.pr, %bb.d ], [ %i.h, %bb.a ] ; 2 uses
  %.sroa.0150.0 = phi i32 [ %.sroa.01.0.copyload.i68, %bb.d ], [ 0, %bb.a ] ; 3 uses
  switch i16 %i.t, label %bb.i [
    i16 176, label %bb.h
    i16 3, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !101, !nonnull !102, !align !103 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 760
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !359
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZN5clang6Parser13cutOffParsingEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 944
  store i8 1, ptr %i.x, align 8, !tbaa !360
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !361
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  store i8 1, ptr %i.aa, align 2, !tbaa !362
  br label %_ZN5clang6Parser13cutOffParsingEv.exit

_ZN5clang6Parser13cutOffParsingEv.exit:           ; preds = %bb.f, %bb.g
  store i16 1, ptr %i.g, align 8, !tbaa !100
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !342, !nonnull !102, !align !103
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 728
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !398
  %i.af = icmp ne i32 %.sroa.0150.0, 0
  tail call void @_ZNK5clang18SemaCodeCompletion26CodeCompleteKeywordAfterIfEb(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i1 noundef zeroext %i.af) #15
  br label %_ZN5clang6Parser10ParseScopeD2Ev.exit117

bb.h:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !101, !nonnull !102, !align !103
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !104, !nonnull !102, !align !103
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = and i64 %i.aj, 131072
  %.not = icmp eq i64 %i.ak, 0
  %i.al = select i1 %.not, i32 1968, i32 2115
  call void @_ZN5clang6Parser4DiagERKNS_5TokenEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::DiagnosticBuilder") align 8 %5, ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(20) %i.b, i32 noundef %i.al) #15
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %5) #15
  %i.am = load i32, ptr %i.b, align 8, !tbaa !358
  store i32 %i.am, ptr %i.d, align 8, !tbaa !335
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !101, !nonnull !102, !align !103
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.an, ptr noundef nonnull align 8 dereferenceable(20) %i.b) #15
  %.sroa.01.0.copyload.i69 = load i32, ptr %i.d, align 8, !tbaa !335
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %.not211 = icmp eq i32 %.sroa.0150.0, 0
  br i1 %.not211, label %.thread174, label %.thread174.thread

.thread174:                                       ; preds = %bb.c, %bb.i
  %i.ao = phi i16 [ %i.t, %bb.i ], [ %.pre, %bb.c ]
  %.0.ph178 = phi i1 [ false, %bb.i ], [ true, %bb.c ]
  %.not212 = icmp eq i16 %i.ao, 22
  br i1 %.not212, label %bb.j, label %.thread174.thread

.thread174.thread:                                ; preds = %bb.b, %.thread174, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @_ZN5clang6Parser4DiagERKNS_5TokenEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::DiagnosticBuilder") align 8 %6, ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(20) %i.b, i32 noundef 1631) #15
  %i.ap = load ptr, ptr %6, align 8, !tbaa !336   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17DiagnosticBuilderlsIA3_cEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %.thread174.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !340
  %i.as = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ar) ; 2 uses
  store ptr %i.as, ptr %6, align 8, !tbaa !336
  br label %_ZNK5clang17DiagnosticBuilderlsIA3_cEERKS0_RKT_.exit

_ZNK5clang17DiagnosticBuilderlsIA3_cEERKS0_RKT_.exit: ; preds = %.thread174.thread, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.at = phi ptr [ %i.as, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.ap, %.thread174.thread ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.av = load i8, ptr %i.at, align 8, !tbaa !1049
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  store i8 1, ptr %i.ax, align 1, !tbaa !1061
  %i.ay = load ptr, ptr %6, align 8, !tbaa !336   ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i8, ptr %i.ay, align 8, !tbaa !1049 ; 2 uses
  %i.bb = add i8 %i.ba, 1
  store i8 %i.bb, ptr %i.ay, align 8, !tbaa !1049
  %i.bc = zext i8 %i.ba to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bc
  store i64 ptrtoint (ptr @.str.22 to i64), ptr %i.bd, align 8, !tbaa !1062
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 64, ptr %i.a, align 2, !tbaa !1034
  %i.be = call noundef zeroext i1 @_ZN5clang6Parser9SkipUntilEN4llvm8ArrayRefINS_3tok9TokenKindEEENS0_14SkipUntilFlagsE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr nonnull %i.a, i64 1, i32 noundef 0) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN5clang6Parser10ParseScopeD2Ev.exit117

bb.j:                                             ; preds = %bb.h, %.thread174
  %.0172 = phi i1 [ %.0.ph178, %.thread174 ], [ false, %bb.h ] ; 4 uses
  %.052170 = phi i1 [ false, %.thread174 ], [ true, %bb.h ] ; 6 uses
  %.sroa.0150.1168 = phi i32 [ 0, %.thread174 ], [ %.sroa.0150.0, %bb.h ] ; 2 uses
  %.sroa.0149.0166 = phi i32 [ 0, %.thread174 ], [ %.sroa.01.0.copyload.i69, %bb.h ]
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !101, !nonnull !102, !align !103
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !104, !nonnull !102, !align !103
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = and i64 %i.bi, 4097
  %or.cond218 = icmp eq i64 %i.bj, 0              ; 3 uses
  br i1 %or.cond218, label %_ZN5clang6Parser10ParseScopeC2EPS0_jbb.exit, label %.thread179

.thread179:                                       ; preds = %bb.j
  call void @_ZN5clang6Parser10EnterScopeEj(ptr noundef nonnull align 8 dereferenceable(2960) %0, i32 noundef 24) #15
  br label %_ZN5clang6Parser10ParseScopeC2EPS0_jbb.exit

_ZN5clang6Parser10ParseScopeC2EPS0_jbb.exit:      ; preds = %bb.j, %.thread179
  %.sroa.0147.2 = phi ptr [ %0, %.thread179 ], [ null, %bb.j ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store i64 0, ptr %7, align 8, !tbaa !1065
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 18
  store i8 0, ptr %i.bk, align 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %8, i8 0, i64 17, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  store i32 0, ptr %9, align 4, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  store i32 0, ptr %10, align 4, !tbaa !97
  br i1 %.052170, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN5clang6Parser10ParseScopeC2EPS0_jbb.exit
  %i.bl = zext i1 %.0172 to i32
  %i.bm = call noundef zeroext i1 @_ZN5clang6Parser25ParseParenExprOrConditionEPNS_12ActionResultIPNS_4StmtELb1EEERNS_4Sema15ConditionResultENS_14SourceLocationENS6_13ConditionKindERS9_SB_(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(19) %8, i32 %.sroa.01.0.copyload.i, i32 noundef %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10)
  br i1 %i.bm, label %_ZN5clang6Parser10ParseScopeD2Ev.exit115, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.0172, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 17
  %.sroa.0.0.copyload.i = load i16, ptr %i.bn, align 1 ; 2 uses
  %i.bo = and i16 %.sroa.0.0.copyload.i, 256
  %i.bp = icmp ne i16 %i.bo, 0
  %i.bq = trunc i16 %.sroa.0.0.copyload.i to i1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %_ZN5clang6Parser10ParseScopeC2EPS0_jbb.exit
  %.sroa.0144.0.a = phi i1 [ undef, %_ZN5clang6Parser10ParseScopeC2EPS0_jbb.exit ], [ %i.bq, %bb.m ], [ undef, %bb.l ] ; 2 uses
  %.sroa.5.0 = phi i1 [ false, %_ZN5clang6Parser10ParseScopeC2EPS0_jbb.exit ], [ %i.bp, %bb.m ], [ false, %bb.l ] ; 2 uses
  %i.br = load i16, ptr %i.g, align 8, !tbaa !100
  %i.bs = icmp eq i16 %i.br, 24                   ; 3 uses
  %or.cond.i = or i1 %or.cond218, %i.bs
  br i1 %or.cond.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang6Parser10EnterScopeEj(ptr noundef nonnull align 8 dereferenceable(2960) %0, i32 noundef 8) #15
  %.pre222 = load i16, ptr %i.g, align 8, !tbaa !100
  %i.bt = icmp eq i16 %.pre222, 24
  %i.bu = zext i1 %i.bt to i8
  br label %_ZN5clang6Parser10ParseScopeC2EPS0_jbb.exit72

bb.p:                                             ; preds = %bb.n
  br i1 %i.bs, label %bb.q, label %_ZN5clang6Parser10ParseScopeC2EPS0_jbb.exit72

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !342, !nonnull !102, !align !103
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 680
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !400 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1178 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i, label %_ZN5clang6Parser10ParseScopeC2EPS0_jbb.exit72, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 14 ; 2 uses
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !1179
  %i.cd = add i16 %i.cc, 1
  store i16 %i.cd, ptr %i.cb, align 2, !tbaa !1179
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.cf = load i16, ptr %i.ce, align 8, !tbaa !1180
  %i.cg = add i16 %i.cf, 1
  store i16 %i.cg, ptr %i.ce, align 8, !tbaa !1180
  br label %_ZN5clang6Parser10ParseScopeC2EPS0_jbb.exit72

_ZN5clang6Parser10ParseScopeC2EPS0_jbb.exit72:    ; preds = %bb.p, %bb.q, %bb.r, %bb.o
  %i.ch = phi i8 [ %i.bu, %bb.o ], [ 1, %bb.r ], [ 1, %bb.q ], [ 0, %bb.p ]
  %.sroa.0142.0 = phi ptr [ %0, %bb.o ], [ null, %bb.r ], [ null, %bb.q ], [ null, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  store ptr %0, ptr %11, align 8, !tbaa !1121
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i32 %.sroa.01.0.copyload.i, ptr %i.ci, align 8, !tbaa !335
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.ck = load i32, ptr %i.b, align 8, !tbaa !358 ; 2 uses
  store i32 %i.ck, ptr %i.cj, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cm = load ptr, ptr %i.e, align 8, !tbaa !101, !nonnull !102, !align !103
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 2312
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !1181
  store i32 %i.co, ptr %i.cl, align 8, !tbaa !1182
  %i.cp = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.cp, align 4, !tbaa !1184
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i8 %i.ch, ptr %i.cq, align 8, !tbaa !1185
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 2512 ; 5 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !97 ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %_ZN12_GLOBAL__N_128MisleadingIndentationCheckerC2ERN5clang6ParserENS_23MisleadingStatementKindENS1_14SourceLocationE.exit, label %bb.s

bb.s:                                             ; preds = %_ZN5clang6Parser10ParseScopeC2EPS0_jbb.exit72
  store i32 %i.cs, ptr %i.ci, align 8, !tbaa !335
  store i32 0, ptr %i.cr, align 8, !tbaa !335
  br label %_ZN12_GLOBAL__N_128MisleadingIndentationCheckerC2ERN5clang6ParserENS_23MisleadingStatementKindENS1_14SourceLocationE.exit

_ZN12_GLOBAL__N_128MisleadingIndentationCheckerC2ERN5clang6ParserENS_23MisleadingStatementKindENS1_14SourceLocationE.exit: ; preds = %_ZN5clang6Parser10ParseScopeC2EPS0_jbb.exit72, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  store i32 0, ptr %12, align 4, !tbaa !97
  %i.cu = icmp eq i32 %.sroa.0150.1168, 0         ; 2 uses
  %or.cond = and i1 %.052170, %i.cu               ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !342, !nonnull !102, !align !103 ; 2 uses
  %i.cx = xor i1 %.sroa.0144.0.a, true
  %i.cy = select i1 %.sroa.5.0, i1 %i.cx, i1 false
  %i.cz = select i1 %or.cond, i1 true, i1 %i.cy   ; 2 uses
  br i1 %i.cz, label %bb.t, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS1_27ExpressionEvaluationContextEPNS_4DeclENS1_33ExpressionEvaluationContextRecord14ExpressionKindEb.exit

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_128MisleadingIndentationCheckerC2ERN5clang6ParserENS_23MisleadingStatementKindENS1_14SourceLocationE.exit
  %spec.select = select i1 %or.cond, i32 5, i32 2
  call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %i.cw, i32 noundef %spec.select, ptr noundef null, i32 noundef 4) #15
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS1_27ExpressionEvaluationContextEPNS_4DeclENS1_33ExpressionEvaluationContextRecord14ExpressionKindEb.exit

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS1_27ExpressionEvaluationContextEPNS_4DeclENS1_33ExpressionEvaluationContextRecord14ExpressionKindEb.exit: ; preds = %_ZN12_GLOBAL__N_128MisleadingIndentationCheckerC2ERN5clang6ParserENS_23MisleadingStatementKindENS1_14SourceLocationE.exit, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.da, ptr %3, align 8, !tbaa !8
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.db, align 8, !tbaa !11
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 24, ptr %i.dc, align 4, !tbaa !12
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS1_27ExpressionEvaluationContextEPNS_4DeclENS1_33ExpressionEvaluationContextRecord14ExpressionKindEb.exit
  %i.dd = call i64 @_ZN5clang6Parser27ParseStatementOrDeclarationERN4llvm11SmallVectorIPNS_4StmtELj24EEENS0_17ParsedStmtContextEPNS_14SourceLocationEPNS_9LabelDeclE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef 0, ptr noundef nonnull %12, ptr noundef null), !inline_history !1086 ; 7 uses
  %or.cond204 = icmp eq i64 %i.dd, 0
  br i1 %or.cond204, label %bb.u, label %.critedge.i, !llvm.loop !13

.critedge.i:                                      ; preds = %bb.u
  %.not214.le = icmp eq i64 %i.dd, 1
  %i.de = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.da
  br i1 %i.df, label %_ZN5clang6Parser14ParseStatementEPNS_14SourceLocationENS0_17ParsedStmtContextEPNS_9LabelDeclE.exit, label %bb.v

bb.v:                                             ; preds = %.critedge.i
  call void @free(ptr noundef %i.de) #15, !inline_history !1086
  br label %_ZN5clang6Parser14ParseStatementEPNS_14SourceLocationENS0_17ParsedStmtContextEPNS_9LabelDeclE.exit

_ZN5clang6Parser14ParseStatementEPNS_14SourceLocationENS0_17ParsedStmtContextEPNS_9LabelDeclE.exit: ; preds = %.critedge.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br i1 %i.cz, label %bb.w, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.w:                                             ; preds = %_ZN5clang6Parser14ParseStatementEPNS_14SourceLocationENS0_17ParsedStmtContextEPNS_9LabelDeclE.exit
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.cw) #15
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %_ZN5clang6Parser14ParseStatementEPNS_14SourceLocationENS0_17ParsedStmtContextEPNS_9LabelDeclE.exit, %bb.w
  %i.dg = load i16, ptr %i.g, align 8, !tbaa !100
  %.not215 = icmp eq i16 %i.dg, 86
  br i1 %.not215, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  call fastcc void @_ZN12_GLOBAL__N_128MisleadingIndentationChecker5CheckEv(ptr noundef nonnull align 8 dereferenceable(25) %11)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  %.not.i74 = icmp eq ptr %.sroa.0142.0, null
  br i1 %.not.i74, label %_ZN5clang6Parser10ParseScope4ExitEv.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN5clang6Parser9ExitScopeEv(ptr noundef nonnull align 8 dereferenceable(2960) %.sroa.0142.0) #15
  br label %_ZN5clang6Parser10ParseScope4ExitEv.exit

_ZN5clang6Parser10ParseScope4ExitEv.exit:         ; preds = %bb.y, %bb.z
  %i.dh = load i16, ptr %i.g, align 8, !tbaa !100
  switch i16 %i.dh, label %bb.at [
    i16 86, label %bb.aa
    i16 3, label %bb.ar
  ]

bb.aa:                                            ; preds = %_ZN5clang6Parser10ParseScope4ExitEv.exit
  %.not63 = icmp eq ptr %1, null
  %.pre223 = load i32, ptr %i.b, align 8, !tbaa !358 ; 2 uses
  br i1 %.not63, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 %.pre223, ptr %1, align 4, !tbaa !335
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  store i32 %.pre223, ptr %i.d, align 8, !tbaa !335
  %i.di = load ptr, ptr %i.e, align 8, !tbaa !101, !nonnull !102, !align !103
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.di, ptr noundef nonnull align 8 dereferenceable(20) %i.b) #15
  %.sroa.01.0.copyload.i75 = load i32, ptr %i.d, align 8, !tbaa !335 ; 3 uses
  %i.dj = load i32, ptr %i.b, align 8, !tbaa !358 ; 4 uses
  %i.dk = load i16, ptr %i.g, align 8, !tbaa !100
  %i.dl = icmp eq i16 %i.dk, 24                   ; 2 uses
  %or.cond.i77 = or i1 %or.cond218, %i.dl
  br i1 %or.cond.i77, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5clang6Parser10EnterScopeEj(ptr noundef nonnull align 8 dereferenceable(2960) %0, i32 noundef 8) #15
  %.pre224 = load i32, ptr %i.b, align 8, !tbaa !358
  %.pre225 = load i16, ptr %i.g, align 8, !tbaa !100
  %i.dm = icmp eq i16 %.pre225, 24
  br label %_ZN5clang6Parser10ParseScopeC2EPS0_jbb.exit80

bb.ae:                                            ; preds = %bb.ac
  br i1 %i.dl, label %bb.af, label %_ZN5clang6Parser10ParseScopeC2EPS0_jbb.exit80

bb.af:                                            ; preds = %bb.ae
  %i.dn = load ptr, ptr %i.cv, align 8, !tbaa !342, !nonnull !102, !align !103
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 680
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !400 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1178 ; 2 uses
  %.not.i.i.i.i79 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i79, label %_ZN5clang6Parser10ParseScopeC2EPS0_jbb.exit80, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 14 ; 2 uses
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !1179
  %i.du = add i16 %i.dt, 1
  store i16 %i.du, ptr %i.ds, align 2, !tbaa !1179
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %i.dw = load i16, ptr %i.dv, align 8, !tbaa !1180
  %i.dx = add i16 %i.dw, 1
  store i16 %i.dx, ptr %i.dv, align 8, !tbaa !1180
  br label %_ZN5clang6Parser10ParseScopeC2EPS0_jbb.exit80

_ZN5clang6Parser10ParseScopeC2EPS0_jbb.exit80:    ; preds = %bb.ae, %bb.af, %bb.ag, %bb.ad
  %i.dy = phi i1 [ %i.dm, %bb.ad ], [ true, %bb.ag ], [ true, %bb.af ], [ false, %bb.ae ] ; 2 uses
  %i.dz = phi i32 [ %.pre224, %bb.ad ], [ %i.dj, %bb.ag ], [ %i.dj, %bb.af ], [ %i.dj, %bb.ae ]
  %.sroa.0119.0 = phi ptr [ %0, %bb.ad ], [ null, %bb.ag ], [ null, %bb.af ], [ null, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  store ptr %0, ptr %13, align 8, !tbaa !1121
  %i.ea = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i32 %.sroa.01.0.copyload.i75, ptr %i.ea, align 8, !tbaa !335
  %i.eb = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 %i.dz, ptr %i.eb, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ed = load ptr, ptr %i.e, align 8, !tbaa !101, !nonnull !102, !align !103
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 2312
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !1181
  store i32 %i.ef, ptr %i.ec, align 8, !tbaa !1182
  %i.eg = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 1, ptr %i.eg, align 4, !tbaa !1184
  %i.eh = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ei = zext i1 %i.dy to i8
  store i8 %i.ei, ptr %i.eh, align 8, !tbaa !1185
  %i.ej = load i32, ptr %i.cr, align 8, !tbaa !97 ; 2 uses
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN5clang6Parser10ParseScopeC2EPS0_jbb.exit80
  store i32 %i.ej, ptr %i.ea, align 8, !tbaa !335
  store i32 0, ptr %i.cr, align 8, !tbaa !335
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZN5clang6Parser10ParseScopeC2EPS0_jbb.exit80
  br i1 %i.dy, label %_ZN12_GLOBAL__N_128MisleadingIndentationCheckerC2ERN5clang6ParserENS_23MisleadingStatementKindENS1_14SourceLocationE.exit81, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 %.sroa.01.0.copyload.i75, ptr %i.cr, align 8, !tbaa !335
  br label %_ZN12_GLOBAL__N_128MisleadingIndentationCheckerC2ERN5clang6ParserENS_23MisleadingStatementKindENS1_14SourceLocationE.exit81

_ZN12_GLOBAL__N_128MisleadingIndentationCheckerC2ERN5clang6ParserENS_23MisleadingStatementKindENS1_14SourceLocationE.exit81: ; preds = %bb.ai, %bb.aj
  %i.el = icmp ne i32 %.sroa.0150.1168, 0
  %or.cond3 = and i1 %.052170, %i.el              ; 2 uses
  %i.em = load ptr, ptr %i.cv, align 8, !tbaa !342, !nonnull !102, !align !103 ; 2 uses
  %i.en = select i1 %.sroa.5.0, i1 %.sroa.0144.0.a, i1 false
  %i.eo = select i1 %or.cond3, i1 true, i1 %i.en  ; 2 uses
  br i1 %i.eo, label %bb.ak, label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS1_27ExpressionEvaluationContextEPNS_4DeclENS1_33ExpressionEvaluationContextRecord14ExpressionKindEb.exit82

bb.ak:                                            ; preds = %_ZN12_GLOBAL__N_128MisleadingIndentationCheckerC2ERN5clang6ParserENS_23MisleadingStatementKindENS1_14SourceLocationE.exit81
  %spec.select65 = select i1 %or.cond3, i32 5, i32 2
  call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %i.em, i32 noundef %spec.select65, ptr noundef null, i32 noundef 4) #15
  br label %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS1_27ExpressionEvaluationContextEPNS_4DeclENS1_33ExpressionEvaluationContextRecord14ExpressionKindEb.exit82

_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS1_27ExpressionEvaluationContextEPNS_4DeclENS1_33ExpressionEvaluationContextRecord14ExpressionKindEb.exit82: ; preds = %_ZN12_GLOBAL__N_128MisleadingIndentationCheckerC2ERN5clang6ParserENS_23MisleadingStatementKindENS1_14SourceLocationE.exit81, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.ep, ptr %2, align 8, !tbaa !8
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.eq, align 8, !tbaa !11
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 24, ptr %i.er, align 4, !tbaa !12
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS1_27ExpressionEvaluationContextEPNS_4DeclENS1_33ExpressionEvaluationContextRecord14ExpressionKindEb.exit82
  %i.es = call i64 @_ZN5clang6Parser27ParseStatementOrDeclarationERN4llvm11SmallVectorIPNS_4StmtELj24EEENS0_17ParsedStmtContextEPNS_14SourceLocationEPNS_9LabelDeclE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !1086 ; 3 uses
  %or.cond207 = icmp eq i64 %i.es, 0
  br i1 %or.cond207, label %bb.al, label %.critedge.i84, !llvm.loop !13

.critedge.i84:                                    ; preds = %bb.al
  %i.et = load ptr, ptr %2, align 8, !tbaa !8     ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.ep
  br i1 %i.eu, label %_ZN5clang6Parser14ParseStatementEPNS_14SourceLocationENS0_17ParsedStmtContextEPNS_9LabelDeclE.exit85, label %bb.am

bb.am:                                            ; preds = %.critedge.i84
  call void @free(ptr noundef %i.et) #15, !inline_history !1086
  br label %_ZN5clang6Parser14ParseStatementEPNS_14SourceLocationENS0_17ParsedStmtContextEPNS_9LabelDeclE.exit85

_ZN5clang6Parser14ParseStatementEPNS_14SourceLocationENS0_17ParsedStmtContextEPNS_9LabelDeclE.exit85: ; preds = %.critedge.i84, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %spec.select.i.not = icmp eq i64 %i.es, 1
  br i1 %spec.select.i.not, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN5clang6Parser14ParseStatementEPNS_14SourceLocationENS0_17ParsedStmtContextEPNS_9LabelDeclE.exit85
  call fastcc void @_ZN12_GLOBAL__N_128MisleadingIndentationChecker5CheckEv(ptr noundef nonnull align 8 dereferenceable(25) %13)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZN5clang6Parser14ParseStatementEPNS_14SourceLocationENS0_17ParsedStmtContextEPNS_9LabelDeclE.exit85
  %.not.i86 = icmp eq ptr %.sroa.0119.0, null
  br i1 %.not.i86, label %_ZN5clang6Parser10ParseScope4ExitEv.exit87, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN5clang6Parser9ExitScopeEv(ptr noundef nonnull align 8 dereferenceable(2960) %.sroa.0119.0) #15
  br label %_ZN5clang6Parser10ParseScope4ExitEv.exit87

_ZN5clang6Parser10ParseScope4ExitEv.exit87:       ; preds = %bb.ao, %bb.ap
  br i1 %i.eo, label %bb.aq, label %_ZN5clang6Parser10ParseScopeD2Ev.exit

bb.aq:                                            ; preds = %_ZN5clang6Parser10ParseScope4ExitEv.exit87
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.em) #15
  br label %_ZN5clang6Parser10ParseScopeD2Ev.exit

_ZN5clang6Parser10ParseScopeD2Ev.exit:            ; preds = %bb.aq, %_ZN5clang6Parser10ParseScope4ExitEv.exit87
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %bb.av

bb.ar:                                            ; preds = %_ZN5clang6Parser10ParseScope4ExitEv.exit
  %i.ev = load ptr, ptr %i.e, align 8, !tbaa !101, !nonnull !102, !align !103 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 760
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !359
  %.not.i89 = icmp eq ptr %i.ex, null
  br i1 %.not.i89, label %.thread191, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 944
  store i8 1, ptr %i.ey, align 8, !tbaa !360
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 56
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !361
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 6
  store i8 1, ptr %i.fb, align 2, !tbaa !362
  br label %.thread191

.thread191:                                       ; preds = %bb.as, %bb.ar
  store i16 1, ptr %i.g, align 8, !tbaa !100
  %i.fc = load ptr, ptr %i.cv, align 8, !tbaa !342, !nonnull !102, !align !103 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 728
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !398
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 680
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !400
  call void @_ZN5clang18SemaCodeCompletion19CodeCompleteAfterIfEPNS_5ScopeEb(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, ptr noundef %i.fg, i1 noundef zeroext %i.bs) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %_ZN5clang6Parser10ParseScopeD2Ev.exit115

bb.at:                                            ; preds = %_ZN5clang6Parser10ParseScope4ExitEv.exit
  %i.fh = load i32, ptr %12, align 4, !tbaa !97   ; 2 uses
  %.not216 = icmp eq i32 %i.fh, 0
  br i1 %.not216, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZN5clang6Parser4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::DiagnosticBuilder") align 8 %14, ptr noundef nonnull align 8 dereferenceable(2960) %0, i32 %i.fh, i32 noundef 2150) #15
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %14) #15
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %_ZN5clang6Parser10ParseScopeD2Ev.exit
  %.sroa.0130.0 = phi i32 [ %.sroa.01.0.copyload.i75, %_ZN5clang6Parser10ParseScopeD2Ev.exit ], [ 0, %bb.au ], [ 0, %bb.at ] ; 2 uses
  %.sroa.0129.0 = phi i32 [ %i.dj, %_ZN5clang6Parser10ParseScopeD2Ev.exit ], [ 0, %bb.au ], [ 0, %bb.at ]
  %.sroa.0121.0 = phi i64 [ %i.es, %_ZN5clang6Parser10ParseScopeD2Ev.exit ], [ 0, %bb.au ], [ 0, %bb.at ] ; 7 uses
  %.not.i91 = icmp eq ptr %.sroa.0147.2, null
  br i1 %.not.i91, label %_ZN5clang6Parser10ParseScope4ExitEv.exit92, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZN5clang6Parser9ExitScopeEv(ptr noundef nonnull align 8 dereferenceable(2960) %.sroa.0147.2) #15
  br label %_ZN5clang6Parser10ParseScope4ExitEv.exit92

_ZN5clang6Parser10ParseScope4ExitEv.exit92:       ; preds = %bb.av, %bb.aw
  br i1 %.not214.le, label %bb.ax, label %.thread185.thread

bb.ax:                                            ; preds = %_ZN5clang6Parser10ParseScope4ExitEv.exit92
  %i.fi = icmp ult i64 %.sroa.0121.0, 2
  br i1 %i.fi, label %_ZN5clang6Parser10ParseScopeD2Ev.exit115.thread, label %.thread185

.thread185:                                       ; preds = %bb.ax
  br i1 %.052170, label %"_ZZN5clang6Parser16ParseIfStatementEPNS_14SourceLocationEENK3$_0clEPKNS_4StmtE.exit.thread", label %.thread246

.thread185.thread:                                ; preds = %_ZN5clang6Parser10ParseScope4ExitEv.exit92
  %i.fj = and i64 %i.dd, -2
  %i.fk = inttoptr i64 %i.fj to ptr               ; 2 uses
  br i1 %.052170, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %.thread185.thread
  %i.fl = load i16, ptr %i.fk, align 8
  %i.fm = and i16 %i.fl, 511                      ; 2 uses
  %i.fn = icmp eq i16 %i.fm, 134
  br i1 %i.fn, label %_ZN4llvm19dyn_cast_if_presentIN5clang14AttributedStmtEKNS1_4StmtEEEDaPT0_.exit.thread.i, label %"_ZZN5clang6Parser16ParseIfStatementEPNS_14SourceLocationEENK3$_0clEPKNS_4StmtE.exit"

_ZN4llvm19dyn_cast_if_presentIN5clang14AttributedStmtEKNS1_4StmtEEEDaPT0_.exit.thread.i: ; preds = %bb.ay
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !1235 ; 2 uses
  %.not.i.i.i94 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i94, label %"_ZZN5clang6Parser16ParseIfStatementEPNS_14SourceLocationEENK3$_0clEPKNS_4StmtE.exit.thread", label %_ZN4llvm19dyn_cast_if_presentIN5clang14AttributedStmtEKNS1_4StmtEEEDaPT0_.exit.thread._ZN4llvm19dyn_cast_if_presentIN5clang14AttributedStmtEKNS1_4StmtEEEDaPT0_.exit.thread.thread5_crit_edge.i

_ZN4llvm19dyn_cast_if_presentIN5clang14AttributedStmtEKNS1_4StmtEEEDaPT0_.exit.thread._ZN4llvm19dyn_cast_if_presentIN5clang14AttributedStmtEKNS1_4StmtEEEDaPT0_.exit.thread.thread5_crit_edge.i: ; preds = %_ZN4llvm19dyn_cast_if_presentIN5clang14AttributedStmtEKNS1_4StmtEEEDaPT0_.exit.thread.i
  %.pre.i = load i16, ptr %i.fp, align 8
  %.pre9.i = and i16 %.pre.i, 511
  br label %"_ZZN5clang6Parser16ParseIfStatementEPNS_14SourceLocationEENK3$_0clEPKNS_4StmtE.exit"

"_ZZN5clang6Parser16ParseIfStatementEPNS_14SourceLocationEENK3$_0clEPKNS_4StmtE.exit": ; preds = %bb.ay, %_ZN4llvm19dyn_cast_if_presentIN5clang14AttributedStmtEKNS1_4StmtEEEDaPT0_.exit.thread._ZN4llvm19dyn_cast_if_presentIN5clang14AttributedStmtEKNS1_4StmtEEEDaPT0_.exit.thread.thread5_crit_edge.i
  %.pre-phi.i = phi i16 [ %.pre9.i, %_ZN4llvm19dyn_cast_if_presentIN5clang14AttributedStmtEKNS1_4StmtEEEDaPT0_.exit.thread._ZN4llvm19dyn_cast_if_presentIN5clang14AttributedStmtEKNS1_4StmtEEEDaPT0_.exit.thread.thread5_crit_edge.i ], [ %i.fm, %bb.ay ]
  %i.fq = icmp eq i16 %.pre-phi.i, 258
  br i1 %i.fq, label %bb.az, label %"_ZZN5clang6Parser16ParseIfStatementEPNS_14SourceLocationEENK3$_0clEPKNS_4StmtE.exit.thread"

"_ZZN5clang6Parser16ParseIfStatementEPNS_14SourceLocationEENK3$_0clEPKNS_4StmtE.exit.thread": ; preds = %.thread185, %_ZN4llvm19dyn_cast_if_presentIN5clang14AttributedStmtEKNS1_4StmtEEEDaPT0_.exit.thread.i, %"_ZZN5clang6Parser16ParseIfStatementEPNS_14SourceLocationEENK3$_0clEPKNS_4StmtE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  call void @_ZN5clang6Parser4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::DiagnosticBuilder") align 8 %15, ptr noundef nonnull align 8 dereferenceable(2960) %0, i32 %.sroa.0149.0166, i32 noundef 15) #15
  %i.fr = load ptr, ptr %15, align 8, !tbaa !336  ; 2 uses
  %.not.i.i.i95 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i95, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i96, label %_ZNK5clang17DiagnosticBuilderlsIA2_cEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i96: ; preds = %"_ZZN5clang6Parser16ParseIfStatementEPNS_14SourceLocationEENK3$_0clEPKNS_4StmtE.exit.thread"
  %i.fs = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !340
  %i.fu = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ft) ; 2 uses
  store ptr %i.fu, ptr %15, align 8, !tbaa !336
  br label %_ZNK5clang17DiagnosticBuilderlsIA2_cEERKS0_RKT_.exit

_ZNK5clang17DiagnosticBuilderlsIA2_cEERKS0_RKT_.exit: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i96, %"_ZZN5clang6Parser16ParseIfStatementEPNS_14SourceLocationEENK3$_0clEPKNS_4StmtE.exit.thread"
  %i.fv = phi ptr [ %i.fu, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i96 ], [ %i.fr, %"_ZZN5clang6Parser16ParseIfStatementEPNS_14SourceLocationEENK3$_0clEPKNS_4StmtE.exit.thread" ] ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 1
  %i.fx = load i8, ptr %i.fv, align 8, !tbaa !1049
  %i.fy = zext i8 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fy
  store i8 1, ptr %i.fz, align 1, !tbaa !1061
  %i.ga = load ptr, ptr %15, align 8, !tbaa !336  ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load i8, ptr %i.ga, align 8, !tbaa !1049 ; 2 uses
  %i.gd = add i8 %i.gc, 1                         ; 2 uses
  store i8 %i.gd, ptr %i.ga, align 8, !tbaa !1049
  %i.ge = zext i8 %i.gc to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.ge
  store i64 ptrtoint (ptr @.str.23 to i64), ptr %i.gf, align 8, !tbaa !1062
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  %i.gh = zext i8 %i.gd to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gh
  store i8 1, ptr %i.gi, align 1, !tbaa !1061
  %i.gj = load ptr, ptr %15, align 8, !tbaa !336  ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load i8, ptr %i.gj, align 8, !tbaa !1049 ; 2 uses
  %i.gm = add i8 %i.gl, 1
  store i8 %i.gm, ptr %i.gj, align 8, !tbaa !1049
  %i.gn = zext i8 %i.gl to i64
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gn
  store i64 ptrtoint (ptr @.str.24 to i64), ptr %i.go, align 8, !tbaa !1062
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %15) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %_ZN5clang6Parser10ParseScopeD2Ev.exit115.thread

bb.az:                                            ; preds = %"_ZZN5clang6Parser16ParseIfStatementEPNS_14SourceLocationEENK3$_0clEPKNS_4StmtE.exit"
  %i.gp = icmp eq i64 %.sroa.0121.0, 0
  br i1 %i.gp, label %.thread249, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gq = and i64 %.sroa.0121.0, -2               ; 2 uses
  %i.gr = inttoptr i64 %i.gq to ptr               ; 2 uses
  %.not.i.i99 = icmp eq i64 %i.gq, 0
  br i1 %.not.i.i99, label %"_ZZN5clang6Parser16ParseIfStatementEPNS_14SourceLocationEENK3$_0clEPKNS_4StmtE.exit108.thread", label %bb.bb
end_hunk_0
