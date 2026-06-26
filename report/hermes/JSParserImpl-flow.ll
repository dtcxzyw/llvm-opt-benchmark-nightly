inline.NumInlined: 4027
inline.NumDeleted: 716
begin_hunk_0
@.str.136 = private unnamed_addr constant [25 x i8] c"start of type parameters\00", align 1
@.str.137 = private unnamed_addr constant [23 x i8] c"at start of parameters\00", align 1
@.str.138 = private unnamed_addr constant [40 x i8] c"hooks do not support 'this' constraints\00", align 1
@.str.139 = private unnamed_addr constant [46 x i8] c"'this' constraint must be the first parameter\00", align 1
@.str.140 = private unnamed_addr constant [38 x i8] c"in function parameter type annotation\00", align 1
@.str.141 = private unnamed_addr constant [31 x i8] c"in qualified generic type name\00", align 1
@.str.142 = private unnamed_addr constant [19 x i8] c"start of type name\00", align 1
@.str.143 = private unnamed_addr constant [22 x i8] c"in declared predicate\00", align 1
@.str.144 = private unnamed_addr constant [19 x i8] c"start of predicate\00", align 1
@.str.145 = private unnamed_addr constant [20 x i8] c"identifier expected\00", align 1
@.str.146 = private unnamed_addr constant [20 x i8] c"in enum declaration\00", align 1
@.str.147 = private unnamed_addr constant [81 x i8] c"The `...` must come after all enum members. Move it to the end of the enum body.\00", align 1
@.str.148 = private unnamed_addr constant [12 x i8] c"cannot use \00", align 1
@.str.149 = private unnamed_addr constant [17 x i8] c" initializer in \00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c" enum\00", align 1
@.str.151 = private unnamed_addr constant [19 x i8] c"start of enum body\00", align 1
@.str.152 = private unnamed_addr constant [86 x i8] c"enum members need to consistently either all use initializers, or use no initializers\00", align 1
@.str.153 = private unnamed_addr constant [18 x i8] c"first enum member\00", align 1
@.str.154 = private unnamed_addr constant [47 x i8] c"number and boolean enums must use initializers\00", align 1
@.str.155 = private unnamed_addr constant [13 x i8] c"in enum body\00", align 1
@.str.156 = private unnamed_addr constant [14 x i8] c"start of body\00", align 1
@.str.157 = private unnamed_addr constant [35 x i8] c"in negated enum member initializer\00", align 1
@.str.158 = private unnamed_addr constant [29 x i8] c"start of negated enum member\00", align 1
@constinit.159 = private unnamed_addr constant [5 x i32] [i32 14, i32 15, i32 112, i32 111, i32 115], align 4
@.str.160 = private unnamed_addr constant [27 x i8] c"in enum member initializer\00", align 1
@.str.161 = private unnamed_addr constant [21 x i8] c"start of enum member\00", align 1
@.str.163 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.164 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.165 = private unnamed_addr constant [7 x i8] c"bigint\00", align 1
@.str.166 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@.str.167 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@switch.table._ZN6hermes6parser6detail12JSParserImpl17parseEnumBodyFlowENS_8OptValueINS2_8EnumKindEEEN4llvh8OptionalINS6_5SMLocEEE.2 = private unnamed_addr constant [5 x i8] c"\06\06\06\07\06", align 8
@switch.table._ZN6hermes6parser6detail12JSParserImpl17parseEnumBodyFlowENS_8OptValueINS2_8EnumKindEEEN4llvh8OptionalINS6_5SMLocEEE.3 = private unnamed_addr constant [5 x ptr] [ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167], align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl20parseFlowDeclarationEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !58 ; 7 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.f = load i8, ptr %i.e, align 8, !tbaa !62, !range !123, !noundef !60
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN6hermes6parser6detail12JSParserImpl24checkHookDeclarationFlowEv.exit.threadthread-pre-split

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !124  ; 2 uses
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit, label %_ZN6hermes6parser6detail12JSParserImpl24checkHookDeclarationFlowEv.exit.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !125
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !126
  %i.n = icmp eq ptr %i.m, %i.k
  br i1 %i.n, label %bb.c, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread.thread

bb.c:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit
  %i.o = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl23checkAsyncComponentFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0)
  br i1 %i.o, label %bb.d, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.p, i32 noundef 0) #9
  store ptr %i.q, ptr %i.a, align 8, !tbaa !7
  %i.r = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl29parseComponentDeclarationFlowEN4llvh5SMLocEbb(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr %.sroa.0.0.copyload.i, i1 noundef zeroext false, i1 noundef zeroext true) ; 2 uses
  %i.s = extractvalue { i64, i8 } %i.r, 0
  %i.t = extractvalue { i64, i8 } %i.r, 1
  br label %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJNS0_9TokenKindEEEEbT_DpT0_.exit.thread52

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread: ; preds = %bb.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !59
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 184
  %.pre63 = load i8, ptr %.phi.trans.insert, align 8, !tbaa !62, !range !123
  %.pre71.pre72.pre74.pre = load ptr, ptr %i.a, align 8, !tbaa !7 ; 2 uses
  %i.u = trunc nuw i8 %.pre63 to i1
  br i1 %i.u, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread.thread, label %_ZN6hermes6parser6detail12JSParserImpl24checkHookDeclarationFlowEv.exit.threadthread-pre-split

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread.thread: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread
  %.pre71.pre72.pre7478.ph = phi ptr [ %i.b, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit ], [ %.pre71.pre72.pre74.pre, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread ] ; 3 uses
  %.pr91 = load i32, ptr %.pre71.pre72.pre7478.ph, align 8, !tbaa !124 ; 2 uses
  %i.v = icmp eq i32 %.pr91, 1
  br i1 %i.v, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit16, label %_ZN6hermes6parser6detail12JSParserImpl24checkHookDeclarationFlowEv.exit.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit16: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread.thread
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !125
  %i.y = getelementptr inbounds nuw i8, ptr %.pre71.pre72.pre7478.ph, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !126
  %i.aa = icmp eq ptr %i.z, %i.x
  br i1 %i.aa, label %bb.e, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit16.thread.thread

bb.e:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit16
  %i.ab = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl18checkAsyncHookFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0)
  br i1 %i.ab, label %bb.f, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit16.thread

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.ac, i32 noundef 0) #9
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !7
  %i.ae = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl24parseHookDeclarationFlowEN4llvh5SMLocEb(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr %.sroa.0.0.copyload.i, i1 noundef zeroext true) ; 2 uses
  %i.af = extractvalue { i64, i8 } %i.ae, 0
  %i.ag = extractvalue { i64, i8 } %i.ae, 1
  br label %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJNS0_9TokenKindEEEEbT_DpT0_.exit.thread52

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit16.thread: ; preds = %bb.e
  %.pre64 = load ptr, ptr %0, align 8, !tbaa !59
  %.phi.trans.insert65 = getelementptr inbounds nuw i8, ptr %.pre64, i64 184
  %.pre66 = load i8, ptr %.phi.trans.insert65, align 8, !tbaa !62, !range !123
  %.pre71.pre72.pre = load ptr, ptr %i.a, align 8, !tbaa !7 ; 2 uses
  %i.ah = trunc nuw i8 %.pre66 to i1
  br i1 %i.ah, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit16.thread.thread, label %_ZN6hermes6parser6detail12JSParserImpl24checkHookDeclarationFlowEv.exit.threadthread-pre-split

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit16.thread.thread: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit16, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit16.thread
  %.pre71.pre7282.ph = phi ptr [ %.pre71.pre72.pre7478.ph, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit16 ], [ %.pre71.pre72.pre, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit16.thread ] ; 3 uses
  %.pr94 = load i32, ptr %.pre71.pre7282.ph, align 8, !tbaa !124 ; 2 uses
  %i.ai = icmp eq i32 %.pr94, 1
  br i1 %i.ai, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i, label %_ZN6hermes6parser6detail12JSParserImpl24checkHookDeclarationFlowEv.exit.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit16.thread.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1728
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !127
  %i.al = getelementptr inbounds nuw i8, ptr %.pre71.pre7282.ph, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !126
  %i.an = icmp eq ptr %i.am, %i.ak
  br i1 %i.an, label %bb.g, label %_ZN6hermes6parser6detail12JSParserImpl29checkComponentDeclarationFlowEv.exit.thread.thread

bb.g:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = tail call i64 @_ZN6hermes6parser7JSLexer10lookahead1ILb1EEENS_8OptValueINS0_9TokenKindEEES5_(ptr noundef nonnull align 8 dereferenceable(1160) %i.ao, i64 0) #9
  %i.aq = and i64 %i.ap, 8589934591
  %or.cond = icmp eq i64 %i.aq, 4294967297
  br i1 %or.cond, label %bb.h, label %_ZN6hermes6parser6detail12JSParserImpl29checkComponentDeclarationFlowEv.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ar = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl29parseComponentDeclarationFlowEN4llvh5SMLocEbb(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr %.sroa.0.0.copyload.i, i1 noundef zeroext false, i1 noundef zeroext false) ; 2 uses
  %i.as = extractvalue { i64, i8 } %i.ar, 0
  %i.at = extractvalue { i64, i8 } %i.ar, 1
  br label %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJNS0_9TokenKindEEEEbT_DpT0_.exit.thread52

_ZN6hermes6parser6detail12JSParserImpl29checkComponentDeclarationFlowEv.exit.thread: ; preds = %bb.g
  %.pre67 = load ptr, ptr %0, align 8, !tbaa !59
  %.phi.trans.insert68 = getelementptr inbounds nuw i8, ptr %.pre67, i64 184
  %.pre69 = load i8, ptr %.phi.trans.insert68, align 8, !tbaa !62, !range !123
  %.pre71.pre = load ptr, ptr %i.a, align 8, !tbaa !7 ; 2 uses
  %i.au = trunc nuw i8 %.pre69 to i1
  br i1 %i.au, label %_ZN6hermes6parser6detail12JSParserImpl29checkComponentDeclarationFlowEv.exit.thread.thread, label %_ZN6hermes6parser6detail12JSParserImpl24checkHookDeclarationFlowEv.exit.threadthread-pre-split

_ZN6hermes6parser6detail12JSParserImpl29checkComponentDeclarationFlowEv.exit.thread.thread: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i, %_ZN6hermes6parser6detail12JSParserImpl29checkComponentDeclarationFlowEv.exit.thread
  %.pre7187.ph.ph = phi ptr [ %.pre71.pre, %_ZN6hermes6parser6detail12JSParserImpl29checkComponentDeclarationFlowEv.exit.thread ], [ %.pre71.pre7282.ph, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i ] ; 3 uses
  %.pr99.pr = load i32, ptr %.pre7187.ph.ph, align 8, !tbaa !124 ; 2 uses
  %i.av = icmp eq i32 %.pr99.pr, 1
  br i1 %i.av, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i23, label %_ZN6hermes6parser6detail12JSParserImpl24checkHookDeclarationFlowEv.exit.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i23: ; preds = %_ZN6hermes6parser6detail12JSParserImpl29checkComponentDeclarationFlowEv.exit.thread.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !128
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre7187.ph.ph, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !126
  %i.ba = icmp eq ptr %i.az, %i.ax
  br i1 %i.ba, label %bb.i, label %_ZN6hermes6parser6detail12JSParserImpl24checkHookDeclarationFlowEv.exit.threadthread-pre-split

bb.i:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i23
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = tail call i64 @_ZN6hermes6parser7JSLexer10lookahead1ILb1EEENS_8OptValueINS0_9TokenKindEEES5_(ptr noundef nonnull align 8 dereferenceable(1160) %i.bb, i64 0) #9
  %i.bd = and i64 %i.bc, 8589934591
  %or.cond55 = icmp eq i64 %i.bd, 4294967297
  br i1 %or.cond55, label %bb.j, label %._ZN6hermes6parser6detail12JSParserImpl24checkHookDeclarationFlowEv.exit.thread_crit_edge

._ZN6hermes6parser6detail12JSParserImpl24checkHookDeclarationFlowEv.exit.thread_crit_edge: ; preds = %bb.i
  %.pre70 = load ptr, ptr %i.a, align 8, !tbaa !7
  br label %_ZN6hermes6parser6detail12JSParserImpl24checkHookDeclarationFlowEv.exit.threadthread-pre-split

bb.j:                                             ; preds = %bb.i
  %i.be = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl24parseHookDeclarationFlowEN4llvh5SMLocEb(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr %.sroa.0.0.copyload.i, i1 noundef zeroext false) ; 2 uses
  %i.bf = extractvalue { i64, i8 } %i.be, 0
  %i.bg = extractvalue { i64, i8 } %i.be, 1
  br label %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJNS0_9TokenKindEEEEbT_DpT0_.exit.thread52

_ZN6hermes6parser6detail12JSParserImpl24checkHookDeclarationFlowEv.exit.threadthread-pre-split: ; preds = %bb.a, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit16.thread, %_ZN6hermes6parser6detail12JSParserImpl29checkComponentDeclarationFlowEv.exit.thread, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i23, %._ZN6hermes6parser6detail12JSParserImpl24checkHookDeclarationFlowEv.exit.thread_crit_edge
  %.ph = phi ptr [ %.pre70, %._ZN6hermes6parser6detail12JSParserImpl24checkHookDeclarationFlowEv.exit.thread_crit_edge ], [ %.pre71.pre, %_ZN6hermes6parser6detail12JSParserImpl29checkComponentDeclarationFlowEv.exit.thread ], [ %.pre7187.ph.ph, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i23 ], [ %.pre71.pre72.pre, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit16.thread ], [ %.pre71.pre72.pre74.pre, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread ], [ %i.b, %bb.a ]
  %.pr = load i32, ptr %.ph, align 8, !tbaa !124
  br label %_ZN6hermes6parser6detail12JSParserImpl24checkHookDeclarationFlowEv.exit.thread

_ZN6hermes6parser6detail12JSParserImpl24checkHookDeclarationFlowEv.exit.thread: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread.thread, %bb.b, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit16.thread.thread, %_ZN6hermes6parser6detail12JSParserImpl24checkHookDeclarationFlowEv.exit.threadthread-pre-split, %_ZN6hermes6parser6detail12JSParserImpl29checkComponentDeclarationFlowEv.exit.thread.thread
  %i.bh = phi i32 [ %.pr, %_ZN6hermes6parser6detail12JSParserImpl24checkHookDeclarationFlowEv.exit.threadthread-pre-split ], [ %.pr99.pr, %_ZN6hermes6parser6detail12JSParserImpl29checkComponentDeclarationFlowEv.exit.thread.thread ], [ %.pr94, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit16.thread.thread ], [ %.pr91, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread.thread ], [ %i.h, %bb.b ]
  %i.bi = icmp eq i32 %i.bh, 40
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl24checkHookDeclarationFlowEv.exit.thread
  %i.bj = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl24parseEnumDeclarationFlowEN4llvh5SMLocEb(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr %.sroa.0.0.copyload.i, i1 noundef zeroext false) ; 2 uses
  %i.bk = extractvalue { i64, i8 } %i.bj, 0
  %i.bl = extractvalue { i64, i8 } %i.bj, 1       ; 2 uses
  %i.bm = trunc nuw i8 %i.bl to i1
  %spec.select = select i1 %i.bm, i64 %i.bk, i64 undef
  br label %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJNS0_9TokenKindEEEEbT_DpT0_.exit.thread52

bb.l:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl24checkHookDeclarationFlowEv.exit.thread
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !129
  %i.bp = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl11checkAndEatEPNS_12UniqueStringENS0_7JSLexer14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr noundef %i.bo, i32 noundef 0) #9 ; 3 uses
  br i1 %i.bp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !7   ; 4 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !124
  switch i32 %i.br, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJS5_NS0_9TokenKindEEEEbT_DpT0_.exit.thread48 [
    i32 1, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i25
    i32 42, label %.thread49
  ]

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i25: ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !130
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !131
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !126 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bv
  %i.bz = icmp eq ptr %i.bx, %i.bt
  %or.cond.i = or i1 %i.by, %i.bz
  br i1 %or.cond.i, label %.thread49, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJS5_NS0_9TokenKindEEEEbT_DpT0_.exit.thread48

_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJS5_NS0_9TokenKindEEEEbT_DpT0_.exit.thread48: ; preds = %bb.m, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i25
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.0.0.copyload.i26 = load ptr, ptr %i.ca, align 8, !tbaa !58
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 1, ptr %i.cc, align 1, !tbaa !132
  store ptr @.str, ptr %1, align 8, !tbaa !135
  store i8 3, ptr %i.cb, align 8, !tbaa !136
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !137, !nonnull !60, !align !61
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ce, i32 noundef 0, ptr %.sroa.0.0.copyload.i26, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(18) %1, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJNS0_9TokenKindEEEEbT_DpT0_.exit.thread52

bb.n:                                             ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !138
  %i.ch = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl11checkAndEatEPNS_12UniqueStringENS0_7JSLexer14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr noundef %i.cg, i32 noundef 0) #9
  br i1 %i.ch, label %bb.o, label %.thread49

bb.o:                                             ; preds = %bb.n
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !7   ; 4 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !124
  %i.ck = icmp eq i32 %i.cj, 1
  br i1 %i.ck, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit27, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit27.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit27: ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !131
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !126
  %i.cp = icmp eq ptr %i.co, %i.cm
  br i1 %i.cp, label %.thread49, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit27.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit27.thread: ; preds = %bb.o, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit27
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.sroa.0.0.copyload.i28 = load ptr, ptr %i.cq, align 8, !tbaa !58
  %.sroa.2.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %.sroa.2.0.copyload.i30 = load ptr, ptr %.sroa.2.0..sroa_idx.i29, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.cs, align 1, !tbaa !132
  store ptr @.str.1, ptr %2, align 8, !tbaa !135
  store i8 3, ptr %i.cr, align 8, !tbaa !136
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !137, !nonnull !60, !align !61
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.cu, i32 noundef 0, ptr %.sroa.0.0.copyload.i28, ptr %.sroa.2.0.copyload.i30, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJNS0_9TokenKindEEEEbT_DpT0_.exit.thread52

.thread49:                                        ; preds = %bb.m, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i25, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit27, %bb.n
  %.04651 = phi i32 [ 0, %bb.n ], [ 2, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit27 ], [ 1, %bb.m ], [ 1, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i25 ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !131
  %i.cx = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl11checkAndEatEPNS_12UniqueStringENS0_7JSLexer14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr noundef %i.cw, i32 noundef 0) #9
  br i1 %i.cx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread49
  %i.cy = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl18parseTypeAliasFlowEN4llvh5SMLocENS2_13TypeAliasKindE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr %.sroa.0.0.copyload.i, i32 noundef %.04651) ; 2 uses
  %i.cz = extractvalue { i64, i8 } %i.cy, 0
  %i.da = extractvalue { i64, i8 } %i.cy, 1       ; 2 uses
  %i.db = trunc nuw i8 %i.da to i1
  %spec.select57 = select i1 %i.db, i64 %i.cz, i64 undef
  br label %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJNS0_9TokenKindEEEEbT_DpT0_.exit.thread52

bb.q:                                             ; preds = %.thread49
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !124
  switch i32 %i.dd, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJNS0_9TokenKindEEEEbT_DpT0_.exit.thread52 [
    i32 1, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i33
    i32 42, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJNS0_9TokenKindEEEEbT_DpT0_.exit.thread
  ]

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i33: ; preds = %bb.q
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !130
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !126
  %i.di = icmp eq ptr %i.dh, %i.df
  br i1 %i.di, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJNS0_9TokenKindEEEEbT_DpT0_.exit.thread, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJNS0_9TokenKindEEEEbT_DpT0_.exit.thread52

_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJNS0_9TokenKindEEEEbT_DpT0_.exit.thread: ; preds = %bb.q, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i33
  %i.dj = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %spec.select59 = zext i1 %i.bp to i8
  %spec.select60 = select i1 %i.bp, i64 %i.dj, i64 undef
  %i.dk = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl29parseInterfaceDeclarationFlowEN4llvh8OptionalINS3_5SMLocEEE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i64 %spec.select60, i8 %spec.select59) ; 2 uses
  %i.dl = extractvalue { i64, i8 } %i.dk, 0
  %i.dm = extractvalue { i64, i8 } %i.dk, 1       ; 2 uses
  %i.dn = trunc nuw i8 %i.dm to i1
  %spec.select61 = select i1 %i.dn, i64 %i.dl, i64 undef
  br label %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJNS0_9TokenKindEEEEbT_DpT0_.exit.thread52

_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJNS0_9TokenKindEEEEbT_DpT0_.exit.thread52: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJNS0_9TokenKindEEEEbT_DpT0_.exit.thread, %bb.p, %bb.k, %bb.q, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i33, %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJS5_NS0_9TokenKindEEEEbT_DpT0_.exit.thread48, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit27.thread, %bb.j, %bb.h, %bb.f, %bb.d
  %.sroa.042.3 = phi i64 [ %i.s, %bb.d ], [ %i.af, %bb.f ], [ %i.as, %bb.h ], [ %i.bf, %bb.j ], [ undef, %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJS5_NS0_9TokenKindEEEEbT_DpT0_.exit.thread48 ], [ undef, %bb.q ], [ %spec.select57, %bb.p ], [ %spec.select61, %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJNS0_9TokenKindEEEEbT_DpT0_.exit.thread ], [ undef, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit27.thread ], [ undef, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i33 ], [ %spec.select, %bb.k ]
  %.sroa.8.3 = phi i8 [ %i.t, %bb.d ], [ %i.ag, %bb.f ], [ %i.at, %bb.h ], [ %i.bg, %bb.j ], [ 0, %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJS5_NS0_9TokenKindEEEEbT_DpT0_.exit.thread48 ], [ 0, %bb.q ], [ %i.da, %bb.p ], [ %i.dm, %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJNS0_9TokenKindEEEEbT_DpT0_.exit.thread ], [ 0, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit27.thread ], [ 0, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i33 ], [ %i.bl, %bb.k ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.042.3, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.8.3, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl23checkAsyncComponentFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) local_unnamed_addr #0 align 2 {
_ZN6hermes6parser7JSLexer9SavePointC2EPS1_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !124  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !139
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %.sroa.0.0.copyload.i4.i = load ptr, ptr %i.j, align 8, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !140
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !141
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !142
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !143
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.z = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.a, i32 noundef 0) #9 ; 3 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !144, !range !123, !noundef !60
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN6hermes6parser6detail12JSParserImpl29checkComponentDeclarationFlowEv.exit, label %bb.a

bb.a:                                             ; preds = %_ZN6hermes6parser7JSLexer9SavePointC2EPS1_.exit
  %i.ad = load i32, ptr %i.z, align 8, !tbaa !124
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i, label %_ZN6hermes6parser6detail12JSParserImpl29checkComponentDeclarationFlowEv.exit

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i: ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1728
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !127
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !126
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %bb.b, label %_ZN6hermes6parser6detail12JSParserImpl29checkComponentDeclarationFlowEv.exit

bb.b:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i
  %i.ak = tail call i64 @_ZN6hermes6parser7JSLexer10lookahead1ILb1EEENS_8OptValueINS0_9TokenKindEEES5_(ptr noundef nonnull align 8 dereferenceable(1160) %i.a, i64 0) #9 ; 2 uses
  %i.al = and i64 %i.ak, 4294967296
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %_ZN6hermes6parser6detail12JSParserImpl29checkComponentDeclarationFlowEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = and i64 %i.ak, 4294967295
  %i.an = icmp eq i64 %i.am, 1
  br label %_ZN6hermes6parser6detail12JSParserImpl29checkComponentDeclarationFlowEv.exit

_ZN6hermes6parser6detail12JSParserImpl29checkComponentDeclarationFlowEv.exit: ; preds = %bb.c, %bb.b, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i, %bb.a, %_ZN6hermes6parser7JSLexer9SavePointC2EPS1_.exit
  %i.ao = phi i1 [ false, %_ZN6hermes6parser7JSLexer9SavePointC2EPS1_.exit ], [ %i.an, %bb.c ], [ false, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i ], [ false, %bb.b ], [ false, %bb.a ]
  switch i32 %i.c, label %bb.f [
    i32 1, label %bb.d
    i32 38, label %bb.e
  ]

bb.d:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl29checkComponentDeclarationFlowEv.exit
  store i32 1, ptr %i.b, align 8, !tbaa !124
  store ptr %i.e, ptr %i.d, align 8, !tbaa !126
  br label %bb.g

bb.e:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl29checkComponentDeclarationFlowEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !145
  store i32 38, ptr %i.b, align 8, !tbaa !124
  store ptr %i.aq, ptr %i.d, align 8, !tbaa !126
  br label %bb.g

bb.f:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl29checkComponentDeclarationFlowEv.exit
  store i32 %i.c, ptr %i.b, align 8, !tbaa !124
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  store <2 x ptr> %i.i, ptr %i.h, align 8, !tbaa !58
  store ptr %i.g, ptr %i.f, align 8, !tbaa !139
  %i.ar = ptrtoint ptr %.sroa.0.0.copyload.i4.i to i64
  store i64 %i.ar, ptr %i.j, align 8, !tbaa !58
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.at = load i8, ptr %i.as, align 1, !tbaa !146, !range !123, !noundef !60
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.h, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %i.m, align 8, !tbaa !141 ; 2 uses
  %i.aw = load ptr, ptr %i.k, align 8, !tbaa !140 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ult i64 %i.q, %i.az
  br i1 %i.ba, label %bb.i, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds i8, ptr %i.aw, i64 %i.q ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bb, %i.av
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6hermes6parser13StoredCommentESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6hermes6parser13StoredCommentESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i: ; preds = %bb.i
  store ptr %i.bb, ptr %i.m, align 8, !tbaa !141
  br label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit.i

_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6hermes6parser13StoredCommentESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i, %bb.i, %bb.h, %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !147, !range !123, !noundef !60
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.j, label %_ZN6hermes6parser7JSLexer9SavePoint7restoreEv.exit, !prof !148

bb.j:                                             ; preds = %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit.i
  %i.bf = load ptr, ptr %i.r, align 8, !tbaa !149
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %i.x
  %i.bh = load ptr, ptr %i.t, align 8, !tbaa !149
  %i.bi = tail call ptr @_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr %i.bg, ptr %i.bh) ; 0 uses
  br label %_ZN6hermes6parser7JSLexer9SavePoint7restoreEv.exit

_ZN6hermes6parser7JSLexer9SavePoint7restoreEv.exit: ; preds = %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit.i, %bb.j
  ret i1 %i.ao
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl29parseComponentDeclarationFlowEN4llvh5SMLocEbb(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.llvh::simple_ilist", align 8 ; 13 uses
  %5 = alloca %"class.hermes::parser::detail::JSParserImpl::SaveStrictModeAndSeenDirectives", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.c, i32 noundef 0) #9
  store ptr %i.d, ptr %i.b, align 8, !tbaa !7
  %i.e = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl22parseBindingIdentifierENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 0) #9 ; 2 uses
  %i.f = extractvalue { i64, i8 } %i.e, 0         ; 2 uses
  %i.g = extractvalue { i64, i8 } %i.e, 1
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 1, ptr %i.a, align 4, !tbaa !150
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr nonnull %i.a, i64 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.j = load i32, ptr %i.i, align 8, !tbaa !124
  %i.k = icmp eq i32 %i.j, 74
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseTypeParamsFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.m = extractvalue { i64, i8 } %i.l, 1
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.thread, label %bb.s

.thread:                                          ; preds = %bb.d
  %i.o = extractvalue { i64, i8 } %i.l, 0
  %i.p = inttoptr i64 %i.o to ptr
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.c
  %.124 = phi ptr [ %i.p, %.thread ], [ null, %bb.c ] ; 2 uses
  %i.q = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl4needENS0_9TokenKindEPKcS5_N4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 53, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr %1) #9
  br i1 %i.q, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr %4, ptr %4, align 8, !tbaa !151
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %4, ptr %i.r, align 8, !tbaa !154
  br i1 %2, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl32parseComponentTypeParametersFlowENS1_5ParamERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 0, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.t = extractvalue { i64, i8 } %i.s, 1
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %.thread48, label %bb.r

.thread48:                                        ; preds = %bb.g
  %i.v = extractvalue { i64, i8 } %i.s, 0
  %i.w = inttoptr i64 %i.v to ptr
  br label %bb.i

bb.h:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@_ZN6hermes6parser6detail12JSParserImpl19parseTypeParamsFlowEv:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ao, i8 0, i64 28, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48 ; 7 uses
  store ptr %i.ap, ptr %i.ap, align 8, !tbaa !151
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !154
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !154 ; 4 uses
  %i.as = icmp eq ptr %i.ap, %1
  %i.at = icmp eq ptr %i.ar, %1
  %or.cond.i.i.i.i.i.i = or i1 %i.as, %i.at
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN6hermes6ESTree28TypeParameterDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %i.au = load ptr, ptr %1, align 8, !tbaa !151   ; 2 uses
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !151
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %1, ptr %i.aw, align 8, !tbaa !154
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.ap, ptr %i.ax, align 8, !tbaa !154
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !151
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !154
  store ptr %i.au, ptr %i.ap, align 8, !tbaa !151
  br label %_ZN6hermes6ESTree28TypeParameterDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit

_ZN6hermes6ESTree28TypeParameterDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit, %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.ay, align 8, !tbaa !58
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i, ptr %i.az, align 8, !tbaa !58
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.ba, align 8, !tbaa !58
  %i.bb = ptrtoint ptr %.0.i.i.i to i64
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.e, %_ZN6hermes6ESTree28TypeParameterDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit
  %.sroa.06.0 = phi i64 [ undef, %bb.e ], [ %i.bb, %_ZN6hermes6ESTree28TypeParameterDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ undef, %bb.b ]
  %.sroa.2.2 = phi i8 [ 0, %bb.e ], [ 1, %_ZN6hermes6ESTree28TypeParameterDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.06.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.2, 1
  ret { i64, i8 } %.fca.1.insert
}

declare noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl4needENS0_9TokenKindEPKcS5_N4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824), i32 noundef, ptr noundef, ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl32parseComponentTypeParametersFlowENS1_5ParamERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.d, i32 noundef 3) #9
  store ptr %i.e, ptr %i.a, align 8, !tbaa !7
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.g = load i32, ptr %i.f, align 8, !tbaa !124
  switch i32 %i.g, label %bb.d [
    i32 54, label %.thread19
    i32 59, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl35parseComponentTypeRestParameterFlowENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 poison) ; 2 uses
  %i.i = extractvalue { i64, i8 } %i.h, 1
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.thread, label %.thread16

.thread:                                          ; preds = %bb.c
  %i.k = extractvalue { i64, i8 } %i.h, 0
  br label %.thread19

bb.d:                                             ; preds = %bb.b
  %i.l = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl31parseComponentTypeParameterFlowENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 poison) ; 2 uses
  %i.m = extractvalue { i64, i8 } %i.l, 1
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %.thread16

bb.e:                                             ; preds = %bb.d
  %i.o = extractvalue { i64, i8 } %i.l, 0
  %i.p = inttoptr i64 %i.o to ptr                 ; 4 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !151    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %2, ptr %i.r, align 8, !tbaa !154
  store ptr %i.q, ptr %i.p, align 8, !tbaa !151
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.p, ptr %i.s, align 8, !tbaa !154
  store ptr %i.p, ptr %2, align 8, !tbaa !151
  %i.t = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 61, i32 noundef 3) #9
  br i1 %i.t, label %bb.b, label %.thread19

.thread19:                                        ; preds = %bb.b, %bb.e, %.thread
  %.113 = phi i64 [ %i.k, %.thread ], [ 0, %bb.e ], [ 0, %bb.b ]
  %i.u = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl3eatENS0_9TokenKindENS0_7JSLexer14GrammarContextEPKcS7_N4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 54, i32 noundef 3, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr %.sroa.0.0.copyload.i.i) #9 ; 2 uses
  %spec.select = select i1 %i.u, i64 %.113, i64 undef
  %spec.select22 = zext i1 %i.u to i8
  br label %.thread16

.thread16:                                        ; preds = %bb.d, %.thread19, %bb.c
  %.sroa.012.0 = phi i64 [ %spec.select, %.thread19 ], [ undef, %bb.c ], [ undef, %bb.d ]
  %.sroa.2.3 = phi i8 [ %spec.select22, %.thread19 ], [ 0, %bb.c ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.012.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.3, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl28parseComponentParametersFlowENS1_5ParamERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.d, i32 noundef 0) #9
  store ptr %i.e, ptr %i.a, align 8, !tbaa !7
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.g = load i32, ptr %i.f, align 8, !tbaa !124
  switch i32 %i.g, label %bb.e [
    i32 54, label %.thread16
    i32 59, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl23parseBindingRestElementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1) #9 ; 2 uses
  %i.i = extractvalue { i64, i8 } %i.h, 1
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.k = extractvalue { i64, i8 } %i.h, 0
  %i.l = inttoptr i64 %i.k to ptr                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !151    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %2, ptr %i.n, align 8, !tbaa !154
  store ptr %i.m, ptr %i.l, align 8, !tbaa !151
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %i.o, align 8, !tbaa !154
  store ptr %i.l, ptr %2, align 8, !tbaa !151
  %i.p = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 61, i32 noundef 3) #9 ; 0 uses
  br label %.thread16

bb.e:                                             ; preds = %bb.b
  %i.q = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl27parseComponentParameterFlowENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1) ; 2 uses
  %i.r = extractvalue { i64, i8 } %i.q, 1
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.t = extractvalue { i64, i8 } %i.q, 0
  %i.u = inttoptr i64 %i.t to ptr                 ; 4 uses
  %i.v = load ptr, ptr %2, align 8, !tbaa !151    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %2, ptr %i.w, align 8, !tbaa !154
  store ptr %i.v, ptr %i.u, align 8, !tbaa !151
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.u, ptr %i.x, align 8, !tbaa !154
  store ptr %i.u, ptr %2, align 8, !tbaa !151
  %i.y = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 61, i32 noundef 0) #9
  br i1 %i.y, label %bb.b, label %.thread16

.thread16:                                        ; preds = %bb.b, %bb.f, %bb.d
  %i.z = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl3eatENS0_9TokenKindENS0_7JSLexer14GrammarContextEPKcS7_N4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 54, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr %.sroa.0.0.copyload.i.i) #9
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.c, %.thread16
  %.3 = phi i1 [ false, %bb.c ], [ %i.z, %.thread16 ], [ false, %bb.e ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl28parseComponentRenderTypeFlowEb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !58 ; 2 uses
  %i.d = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl23parseRenderTypeOperatorEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.e = extractvalue { i64, i8 } %i.d, 0
  %i.f = extractvalue { i64, i8 } %i.d, 1
  br i1 %1, label %bb.b, label %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl29parsePrefixTypeAnnotationFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0)
  br label %bb.c

_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1236 ; 3 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !177, !range !123, !noundef !60
  store i8 1, ptr %i.h, align 4, !tbaa !177
  %i.j = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl34parseConditionalTypeAnnotationFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0), !inline_history !208 ; 2 uses
  %i.k = extractvalue { i64, i8 } %i.j, 0
  %i.l = extractvalue { i64, i8 } %i.j, 1         ; 2 uses
  %i.m = trunc nuw i8 %i.l to i1
  %spec.select = select i1 %i.m, i64 %i.k, i64 undef
  store i8 %i.i, ptr %i.h, align 4, !tbaa !177
  %.fca.0.insert.i = insertvalue { i64, i8 } poison, i64 %spec.select, 0
  %.fca.1.insert.i = insertvalue { i64, i8 } %.fca.0.insert.i, i8 %i.l, 1
  br label %bb.c

bb.c:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit, %bb.b
  %.pn = phi { i64, i8 } [ %i.g, %bb.b ], [ %.fca.1.insert.i, %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit ] ; 2 uses
  %.sroa.5.0 = extractvalue { i64, i8 } %.pn, 1
  %.sroa.07.0 = extractvalue { i64, i8 } %.pn, 0
  %i.n = trunc nuw i8 %.sroa.5.0 to i1
  %i.o = trunc nuw i8 %i.f to i1
  %or.cond = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.q = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !181  ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !182
  %i.u = zext i32 %i.t to i64
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !188
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !189
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !191
  %i.ab = add i64 %i.aa, 7                        ; 2 uses
  %i.ac = add i64 %i.ab, %i.y
  %i.ad = and i64 %i.ac, 7
  %i.ae = sub i64 %i.ab, %i.ad                    ; 3 uses
  store i64 %i.ae, ptr %i.z, align 8, !tbaa !191
  %i.af = add i64 %i.ae, 64                       ; 2 uses
  %i.ag = icmp ugt i64 %i.af, 262144
  br i1 %i.ag, label %.critedge.i.i.i, label %bb.e, !prof !148

.critedge.i.i.i:                                  ; preds = %bb.d
  %i.ah = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.q, i64 noundef 64, i64 noundef 8) #9
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.e:                                             ; preds = %bb.d
  %i.ai = add i64 %i.ae, %i.y
  %i.aj = inttoptr i64 %i.ai to ptr
  store i64 %i.af, ptr %i.z, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.e
  %.0.i.i.i = phi ptr [ %i.ah, %.critedge.i.i.i ], [ %i.aj, %bb.e ] ; 9 uses
  %i.ak = inttoptr i64 %i.e to ptr
  %i.al = inttoptr i64 %.sroa.07.0 to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 159, ptr %i.am, align 8, !tbaa !156
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  store i32 0, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store ptr %i.ak, ptr %i.ao, align 8, !tbaa !285
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56
  store ptr %i.al, ptr %i.ap, align 8, !tbaa !287
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.aq, align 8, !tbaa !58
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.ar, align 8, !tbaa !58
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.as, align 8, !tbaa !58
  %i.at = ptrtoint ptr %.0.i.i.i to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %.sroa.09.0 = phi i64 [ %i.at, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ undef, %bb.c ]
  %.sroa.2.0 = phi i8 [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.09.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.0, 1
  ret { i64, i8 } %.fca.1.insert
}

declare { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl17parseFunctionBodyENS1_5ParamEbbbNS0_7JSLexer14GrammarContextEb(ptr noundef nonnull align 8 dereferenceable(2824), i32, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes6ESTree24ComponentDeclarationNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_S3_S3_b(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext %6) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 7, ptr %i.a, align 8, !tbaa !156
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(45) %i.b, i8 0, i64 45, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.c, align 8, !tbaa !288
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  store ptr %i.d, ptr %i.d, align 8, !tbaa !151
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.d, ptr %i.e, align 8, !tbaa !154
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !154  ; 4 uses
  %i.h = icmp eq ptr %i.d, %2
  %i.i = icmp eq ptr %i.g, %2
  %or.cond.i.i.i.i.i = or i1 %i.h, %i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZN4llvh12simple_ilistIN6hermes6ESTree4NodeEJEEC2EOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %2, align 8, !tbaa !151    ; 2 uses
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !151  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %2, ptr %i.l, align 8, !tbaa !154
  store ptr %i.k, ptr %2, align 8, !tbaa !151
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !151  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.d, ptr %i.n, align 8, !tbaa !154
  store ptr %i.m, ptr %i.g, align 8, !tbaa !151
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.g, ptr %i.o, align 8, !tbaa !154
  store ptr %i.j, ptr %i.d, align 8, !tbaa !151
  br label %_ZN4llvh12simple_ilistIN6hermes6ESTree4NodeEJEEC2EOS4_.exit

_ZN4llvh12simple_ilistIN6hermes6ESTree4NodeEJEEC2EOS4_.exit: ; preds = %bb.a, %bb.b
  %i.p = zext i1 %6 to i8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %3, ptr %i.q, align 8, !tbaa !295
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %4, ptr %i.r, align 8, !tbaa !296
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %5, ptr %i.s, align 8, !tbaa !297
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %i.p, ptr %i.t, align 8, !tbaa !298
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes6parser6detail12JSParserImpl31SaveStrictModeAndSeenDirectivesD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !170    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !174, !range !123, !noundef !60
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 %i.c, ptr %i.d, align 8, !tbaa !173
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1208 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !176  ; 6 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1216 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !175  ; 3 uses
  %i.k = icmp ult i32 %i.g, %i.j
  br i1 %i.k, label %.sink.split.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i32 %i.g, %i.j
  br i1 %i.l, label %bb.c, label %_ZN4llvh15SmallVectorImplIPN6hermes12UniqueStringEE6resizeEm.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1220
  %i.n = load i32, ptr %i.m, align 4, !tbaa !179
  %i.o = icmp ugt i32 %i.g, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1224
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull %i.p, i64 noundef %i.h, i64 noundef 8) #9
  %.pre.i = load i32, ptr %i.i, align 8, !tbaa !175
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi.i.in = phi i32 [ %.pre.i, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %.not13.i = icmp eq i32 %i.g, %.pre-phi.i.in
  br i1 %.not13.i, label %.sink.split.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %.pre-phi.i = zext i32 %.pre-phi.i.in to i64    ; 2 uses
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !180
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %.pre-phi.i
  %i.s = sub nsw i64 %i.h, %.pre-phi.i
  %i.t = shl nsw i64 %i.s, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %i.t, i1 false), !tbaa !145
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.preheader.i, %bb.e, %bb.a
  store i32 %i.g, ptr %i.i, align 8, !tbaa !175
  br label %_ZN4llvh15SmallVectorImplIPN6hermes12UniqueStringEE6resizeEm.exit

_ZN4llvh15SmallVectorImplIPN6hermes12UniqueStringEE6resizeEm.exit: ; preds = %bb.b, %.sink.split.i
  ret void
}

declare { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl23parseBindingRestElementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824), i32) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(2824), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl27parseComponentParameterFlowENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !58 ; 13 uses
  %i.d = load i32, ptr %i.b, align 8, !tbaa !124  ; 3 uses
  switch i32 %i.d, label %bb.h [
    i32 112, label %bb.b
    i32 1, label %bb.i
  ]

end_hunk_1
begin_hunk_2_@_ZN6hermes6parser6detail12JSParserImpl35parseComponentTypeRestParameterFlowENS1_5ParamE:bb.a
.critedge:                                        ; preds = %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit, %bb.c, %bb.d, %bb.a, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %.sroa.022.0 = phi i64 [ %i.bg, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ undef, %bb.a ], [ undef, %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit ], [ undef, %bb.d ], [ undef, %bb.c ]
  %.sroa.2.2 = phi i8 [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ 0, %bb.a ], [ 0, %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit ], [ 0, %bb.d ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.022.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.2, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl31parseComponentTypeParameterFlowENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !58 ; 4 uses
  %i.d = load i32, ptr %i.b, align 8, !tbaa !124  ; 2 uses
  switch i32 %i.d, label %bb.d [
    i32 112, label %bb.b
    i32 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !181  ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !182
  %i.i = zext i32 %i.h to i64
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !188
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !189
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !191
  %i.p = add i64 %i.o, 7                          ; 2 uses
  %i.q = add i64 %i.p, %i.m
  %i.r = and i64 %i.q, 7
  %i.s = sub i64 %i.p, %i.r                       ; 3 uses
  store i64 %i.s, ptr %i.n, align 8, !tbaa !191
  %i.t = add i64 %i.s, 56                         ; 2 uses
  %i.u = icmp ugt i64 %i.t, 262144
  br i1 %i.u, label %.critedge.i.i.i, label %bb.c, !prof !148

.critedge.i.i.i:                                  ; preds = %bb.b
  %i.v = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.e, i64 noundef 56, i64 noundef 8) #9
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !7
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.c:                                             ; preds = %bb.b
  %i.w = add i64 %i.s, %i.m
  %i.x = inttoptr i64 %i.w to ptr
  store i64 %i.t, ptr %i.n, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.c
  %i.y = phi ptr [ %.pre, %.critedge.i.i.i ], [ %i.b, %bb.c ]
  %.0.i.i.i = phi ptr [ %i.v, %.critedge.i.i.i ], [ %i.x, %bb.c ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !255
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 36, ptr %i.ab, align 8, !tbaa !156
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ac, i8 0, i64 28, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !256
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.ae = add i32 %i.d, -4
  %spec.select.i = icmp ult i32 %i.ae, 44
  br i1 %spec.select.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.af = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !181 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !182
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !188
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !189
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !191
  %i.aq = add i64 %i.ap, 7                        ; 2 uses
  %i.ar = add i64 %i.aq, %i.an
  %i.as = and i64 %i.ar, 7
  %i.at = sub i64 %i.aq, %i.as                    ; 3 uses
  store i64 %i.at, ptr %i.ao, align 8, !tbaa !191
  %i.au = add i64 %i.at, 72                       ; 2 uses
  %i.av = icmp ugt i64 %i.au, 262144
  br i1 %i.av, label %.critedge.i.i.i13, label %bb.f, !prof !148

.critedge.i.i.i13:                                ; preds = %bb.e
  %i.aw = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.af, i64 noundef 72, i64 noundef 8) #9
  %.pre39 = load ptr, ptr %i.a, align 8, !tbaa !7
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit14

bb.f:                                             ; preds = %bb.e
  %i.ax = add i64 %i.at, %i.an
  %i.ay = inttoptr i64 %i.ax to ptr
  store i64 %i.au, ptr %i.ao, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit14

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit14:  ; preds = %.critedge.i.i.i13, %bb.f
  %i.az = phi ptr [ %.pre39, %.critedge.i.i.i13 ], [ %i.b, %bb.f ]
  %.0.i.i.i12 = phi ptr [ %i.aw, %.critedge.i.i.i13 ], [ %i.ay, %bb.f ] ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !126
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %.0.i.i.i12, i8 0, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i12, i64 16
  store i32 66, ptr %i.bc, align 8, !tbaa !156
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i.i12, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bd, i8 0, i64 28, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i.i12, i64 48
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !192
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i.i12, i64 56
  store ptr null, ptr %i.bf, align 8, !tbaa !194
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i.i12, i64 64
  store i8 0, ptr %i.bg, align 8, !tbaa !195
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.bi, align 1, !tbaa !132
  store ptr @.str.29, ptr %2, align 8, !tbaa !135
  store i8 3, ptr %i.bh, align 8, !tbaa !136
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !137, !nonnull !60, !align !61
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.bk, i32 noundef 0, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.n

bb.h:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit14, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %.0.i.i.i12.sink44 = phi ptr [ %.0.i.i.i12, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit14 ], [ %.0.i.i.i, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ] ; 4 uses
  %.sroa.0.0.copyload.i.i.i15 = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i.i12.sink44, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i15, ptr %i.bl, align 8, !tbaa !58
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0.0.copyload.i.i9.i16 = load ptr, ptr %i.bm, align 8, !tbaa !58
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i.i12.sink44, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i16, ptr %i.bn, align 8, !tbaa !58
  %.sroa.0.0.copyload.i.i10.i17 = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i12.sink44, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i17, ptr %i.bo, align 8, !tbaa !58
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.bp, i32 noundef 3) #9 ; 4 uses
  store ptr %i.bq, ptr %i.a, align 8, !tbaa !7
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !124
  %i.bs = icmp eq i32 %i.br, 1
  br i1 %i.bs, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit: ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !299
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !126
  %i.bx = icmp eq ptr %i.bw, %i.bu
  br i1 %i.bx, label %bb.i, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread

bb.i:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.0.0.copyload.i24 = load ptr, ptr %i.by, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %i.ca, align 1, !tbaa !132
  store ptr @.str.30, ptr %3, align 8, !tbaa !135
  store i8 3, ptr %i.bz, align 8, !tbaa !136
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !137, !nonnull !60, !align !61
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.cc, i32 noundef 0, ptr %.sroa.0.0.copyload.i24, ptr noundef nonnull align 8 dereferenceable(18) %3, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.n

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread: ; preds = %bb.h, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit
  %i.cd = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 91, i32 noundef 3) #9
  %i.ce = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl3eatENS0_9TokenKindENS0_7JSLexer14GrammarContextEPKcS7_N4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 92, i32 noundef 3, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.28, ptr %.sroa.0.0.copyload.i) #9
  br i1 %i.ce, label %bb.j, label %bb.n

bb.j:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread
  %i.cf = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 188
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !304
  %.not = icmp eq i32 %i.ch, 0
  br i1 %.not, label %bb.k, label %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit

_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit: ; preds = %bb.j
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1236 ; 3 uses
  %i.cj = load i8, ptr %i.ci, align 4, !tbaa !177, !range !123, !noundef !60
  store i8 1, ptr %i.ci, align 4, !tbaa !177
  %i.ck = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl34parseConditionalTypeAnnotationFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0), !inline_history !320 ; 2 uses
  %i.cl = extractvalue { i64, i8 } %i.ck, 0
  %i.cm = extractvalue { i64, i8 } %i.ck, 1       ; 2 uses
  %i.cn = trunc nuw i8 %i.cm to i1
  %spec.select = select i1 %i.cn, i64 %i.cl, i64 undef
  store i8 %i.cj, ptr %i.ci, align 4, !tbaa !177
  %.fca.0.insert.i = insertvalue { i64, i8 } poison, i64 %spec.select, 0
  %.fca.1.insert.i = insertvalue { i64, i8 } %.fca.0.insert.i, i8 %i.cm, 1
  br label %_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit

bb.k:                                             ; preds = %bb.j
  %i.co = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl21parseTypeAnnotationTSEN4llvh8OptionalINS3_5SMLocEEE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i64 undef, i8 0) #9, !inline_history !306
  br label %_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit

_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit: ; preds = %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit, %bb.k
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i, %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit ], [ %i.co, %bb.k ] ; 2 uses
  %i.cp = extractvalue { i64, i8 } %.pn.i, 0
  %i.cq = extractvalue { i64, i8 } %.pn.i, 1
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i25 = load ptr, ptr %i.cs, align 8, !tbaa !58
  %i.ct = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !181 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !182
  %i.cx = zext i32 %i.cw to i64
  %i.cy = load ptr, ptr %i.ct, align 8, !tbaa !188
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cx
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !189
  %i.db = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 3 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !191
  %i.de = add i64 %i.dd, 7                        ; 2 uses
  %i.df = add i64 %i.de, %i.db
  %i.dg = and i64 %i.df, 7
  %i.dh = sub i64 %i.de, %i.dg                    ; 3 uses
  store i64 %i.dh, ptr %i.dc, align 8, !tbaa !191
  %i.di = add i64 %i.dh, 72                       ; 2 uses
  %i.dj = icmp ugt i64 %i.di, 262144
  br i1 %i.dj, label %.critedge.i.i.i27, label %bb.m, !prof !148

.critedge.i.i.i27:                                ; preds = %bb.l
  %i.dk = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.ct, i64 noundef 72, i64 noundef 8) #9
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit28

bb.m:                                             ; preds = %bb.l
  %i.dl = add i64 %i.dh, %i.db
  %i.dm = inttoptr i64 %i.dl to ptr
  store i64 %i.di, ptr %i.dc, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit28

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit28:  ; preds = %.critedge.i.i.i27, %bb.m
  %.0.i.i.i26 = phi ptr [ %i.dk, %.critedge.i.i.i27 ], [ %i.dm, %bb.m ] ; 10 uses
  %i.dn = inttoptr i64 %i.cp to ptr
  %i.do = zext i1 %i.cd to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %.0.i.i.i26, i8 0, i64 16, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i.i.i26, i64 16
  store i32 154, ptr %i.dp, align 8, !tbaa !156
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i.i.i26, i64 20
  store i32 0, ptr %i.dq, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i.i.i26, i64 48
  store ptr %.0.i.i.i12.sink44, ptr %i.dr, align 8, !tbaa !316
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i.i.i26, i64 56
  store ptr %i.dn, ptr %i.ds, align 8, !tbaa !318
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i.i.i26, i64 64
  store i8 %i.do, ptr %i.dt, align 8, !tbaa !319
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i.i.i26, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.du, align 8, !tbaa !58
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i.i.i26, i64 32
  store ptr %.sroa.0.0.copyload.i.i25, ptr %i.dv, align 8, !tbaa !58
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i.i.i26, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.dw, align 8, !tbaa !58
  %i.dx = ptrtoint ptr %.0.i.i.i26 to i64
  br label %bb.n

bb.n:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit28, %_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread, %bb.i, %bb.g
  %.sroa.030.1 = phi i64 [ undef, %bb.i ], [ undef, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread ], [ undef, %bb.g ], [ %i.dx, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit28 ], [ undef, %_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit ]
  %.sroa.2.1 = phi i8 [ 0, %bb.i ], [ 0, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread ], [ 0, %bb.g ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit28 ], [ 0, %_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.030.1, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.1, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl34parseTypeAnnotationBeforeColonFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !124
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.g = load i8, ptr %i.f, align 8, !tbaa !62, !range !123, !noundef !60
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !126  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1728
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !127
  %i.m = icmp eq ptr %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.j, %i.o
  %or.cond = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1744
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !155
  %i.s = icmp eq ptr %i.j, %i.r
  br i1 %i.s, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.t, align 8, !tbaa !58
  %i.u = load i8, ptr %.sroa.0.0.copyload.i.i, align 1, !tbaa !135
  %i.v = icmp eq i8 %i.u, 63
  br i1 %i.v, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = tail call i64 @_ZN6hermes6parser7JSLexer10lookahead1ILb1EEENS_8OptValueINS0_9TokenKindEEES5_(ptr noundef nonnull align 8 dereferenceable(1160) %i.w, i64 0) #9 ; 2 uses
  %i.y = and i64 %i.x, 4294967296
  %i.z = icmp ne i64 %i.y, 0
  %.sroa.041.0.extract.trunc = trunc i64 %i.x to i32
  %.sroa.041.0.extract.trunc.off = add i32 %.sroa.041.0.extract.trunc, -91
  %switch = icmp ult i32 %.sroa.041.0.extract.trunc.off, 2
  %or.cond53 = and i1 %i.z, %switch
  br i1 %or.cond53, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !7   ; 3 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !181 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !182
  %i.af = zext i32 %i.ae to i64
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !188
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !189
  %i.aj = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !191 ; 2 uses
  %i.am = add i64 %i.aj, 7                        ; 2 uses
  %i.an = add i64 %i.am, %i.al
  %i.ao = and i64 %i.an, 7
  %.neg57 = add i64 %i.al, 7
  %i.ap = sub i64 %.neg57, %i.ao                  ; 3 uses
  store i64 %i.ap, ptr %i.ak, align 8, !tbaa !191
  %i.aq = add i64 %i.ap, 64                       ; 3 uses
  %i.ar = icmp ugt i64 %i.aq, 262144
  br i1 %i.ar, label %.critedge.i.i.i, label %bb.h, !prof !148

.critedge.i.i.i:                                  ; preds = %bb.g
  %i.as = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.ab, i64 noundef 64, i64 noundef 8) #9
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !7
  %.pre61 = load ptr, ptr %0, align 8, !tbaa !59  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre61, i64 24
  %.pre62 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !181 ; 3 uses
  %.pre63 = load i32, ptr %.pre62, align 8, !tbaa !182
  %.pre64 = load ptr, ptr %.pre61, align 8, !tbaa !188
  %.phi.trans.insert65 = zext i32 %.pre63 to i64
  %.phi.trans.insert66 = getelementptr inbounds nuw [8 x i8], ptr %.pre64, i64 %.phi.trans.insert65
  %.pre67 = load ptr, ptr %.phi.trans.insert66, align 8, !tbaa !189
  %.phi.trans.insert68 = getelementptr inbounds nuw i8, ptr %.pre62, i64 8
  %.pre69 = load i64, ptr %.phi.trans.insert68, align 8, !tbaa !191
  %.pre71 = ptrtoint ptr %.pre67 to i64           ; 2 uses
  %.pre73 = add i64 %.pre71, 7
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.h:                                             ; preds = %bb.g
  %i.at = add i64 %i.ap, %i.aj
  %i.au = inttoptr i64 %i.at to ptr
  store i64 %i.aq, ptr %i.ak, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.h
  %.pre-phi74 = phi i64 [ %.pre73, %.critedge.i.i.i ], [ %i.am, %bb.h ]
  %.pre-phi72 = phi i64 [ %.pre71, %.critedge.i.i.i ], [ %i.aj, %bb.h ]
  %i.av = phi i64 [ %.pre69, %.critedge.i.i.i ], [ %i.aq, %bb.h ] ; 2 uses
  %i.aw = phi ptr [ %.pre62, %.critedge.i.i.i ], [ %i.ad, %bb.h ]
  %i.ax = phi ptr [ %.pre61, %.critedge.i.i.i ], [ %i.ab, %bb.h ]
  %i.ay = phi ptr [ %.pre, %.critedge.i.i.i ], [ %i.aa, %bb.h ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.as, %.critedge.i.i.i ], [ %i.au, %bb.h ] ; 9 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ba = add i64 %i.av, %.pre-phi74
  %i.bb = and i64 %i.ba, 7
  %.neg60 = add i64 %i.av, 7
  %i.bc = sub i64 %.neg60, %i.bb                  ; 3 uses
  store i64 %i.bc, ptr %i.az, align 8, !tbaa !191
  %i.bd = add i64 %i.bc, 72                       ; 2 uses
  %i.be = icmp ugt i64 %i.bd, 262144
  br i1 %i.be, label %.critedge.i.i.i10, label %bb.i, !prof !148

.critedge.i.i.i10:                                ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %i.bf = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.ax, i64 noundef 72, i64 noundef 8) #9
  %.pre70 = load ptr, ptr %i.a, align 8, !tbaa !7
  br label %bb.j

bb.i:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
end_hunk_2
begin_hunk_3_@_ZN6hermes6parser6detail12JSParserImpl34parseTypeAnnotationBeforeColonFlowEv:bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bw, i8 0, i64 28, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store ptr %.0.i.i.i9, ptr %i.bx, align 8, !tbaa !321
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56
  store ptr null, ptr %i.by, align 8, !tbaa !323
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i12 = load ptr, ptr %i.bz, align 8, !tbaa !58
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i12, ptr %i.ca, align 8, !tbaa !58
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.0.0.copyload.i.i9.i13 = load ptr, ptr %i.cb, align 8, !tbaa !58
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i13, ptr %i.cc, align 8, !tbaa !58
  %.sroa.0.0.copyload.i.i10.i14 = load ptr, ptr %i.bz, align 8, !tbaa !58
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i14, ptr %i.cd, align 8, !tbaa !58
  %i.ce = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.w, i32 noundef 3) #9
  store ptr %i.ce, ptr %i.a, align 8, !tbaa !7
  %i.cf = ptrtoint ptr %.0.i.i.i to i64
  br label %bb.r

bb.k:                                             ; preds = %bb.e
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.cg, align 8, !tbaa !58 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !181 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !182
  %i.ck = zext i32 %i.cj to i64
  %i.cl = load ptr, ptr %i.e, align 8, !tbaa !188
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ck
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !189
  %i.co = ptrtoint ptr %i.cn to i64               ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 3 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !191 ; 2 uses
  %i.cr = add i64 %i.co, 7                        ; 2 uses
  %i.cs = add i64 %i.cr, %i.cq
  %i.ct = and i64 %i.cs, 7
  %.neg85 = add i64 %i.cq, 7
  %i.cu = sub i64 %.neg85, %i.ct                  ; 3 uses
  store i64 %i.cu, ptr %i.cp, align 8, !tbaa !191
  %i.cv = add i64 %i.cu, 64                       ; 3 uses
  %i.cw = icmp ugt i64 %i.cv, 262144
  br i1 %i.cw, label %.critedge.i.i.i78, label %bb.l, !prof !148

.critedge.i.i.i78:                                ; preds = %bb.k
  %i.cx = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.e, i64 noundef 64, i64 noundef 8) #9
  %.pre91 = load ptr, ptr %i.a, align 8, !tbaa !7
  %.pre92 = load ptr, ptr %0, align 8, !tbaa !59  ; 3 uses
  %.phi.trans.insert93 = getelementptr inbounds nuw i8, ptr %.pre92, i64 24
  %.pre94 = load ptr, ptr %.phi.trans.insert93, align 8, !tbaa !181 ; 3 uses
  %.pre95 = load i32, ptr %.pre94, align 8, !tbaa !182
  %.pre96 = load ptr, ptr %.pre92, align 8, !tbaa !188
  %.phi.trans.insert97 = zext i32 %.pre95 to i64
  %.phi.trans.insert98 = getelementptr inbounds nuw [8 x i8], ptr %.pre96, i64 %.phi.trans.insert97
  %.pre99 = load ptr, ptr %.phi.trans.insert98, align 8, !tbaa !189
  %.phi.trans.insert100 = getelementptr inbounds nuw i8, ptr %.pre94, i64 8
  %.pre101 = load i64, ptr %.phi.trans.insert100, align 8, !tbaa !191
  %.pre103 = ptrtoint ptr %.pre99 to i64          ; 2 uses
  %.pre105 = add i64 %.pre103, 7
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit79

bb.l:                                             ; preds = %bb.k
  %i.cy = add i64 %i.cu, %i.co
  %i.cz = inttoptr i64 %i.cy to ptr
  store i64 %i.cv, ptr %i.cp, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit79

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit79:  ; preds = %.critedge.i.i.i78, %bb.l
  %.pre-phi106 = phi i64 [ %.pre105, %.critedge.i.i.i78 ], [ %i.cr, %bb.l ]
  %.pre-phi104 = phi i64 [ %.pre103, %.critedge.i.i.i78 ], [ %i.co, %bb.l ]
  %i.da = phi i64 [ %.pre101, %.critedge.i.i.i78 ], [ %i.cv, %bb.l ] ; 2 uses
  %i.db = phi ptr [ %.pre94, %.critedge.i.i.i78 ], [ %i.ci, %bb.l ]
  %i.dc = phi ptr [ %.pre92, %.critedge.i.i.i78 ], [ %i.e, %bb.l ]
  %i.dd = phi ptr [ %.pre91, %.critedge.i.i.i78 ], [ %i.b, %bb.l ] ; 3 uses
  %.0.i.i.i77 = phi ptr [ %i.cx, %.critedge.i.i.i78 ], [ %i.cz, %bb.l ] ; 9 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.df = add i64 %.pre-phi106, %i.da
  %i.dg = and i64 %i.df, 7
  %.neg88 = add i64 %i.da, 7
  %i.dh = sub i64 %.neg88, %i.dg                  ; 3 uses
  store i64 %i.dh, ptr %i.de, align 8, !tbaa !191
  %i.di = add i64 %i.dh, 72                       ; 2 uses
  %i.dj = icmp ugt i64 %i.di, 262144
  br i1 %i.dj, label %.critedge.i.i.i81, label %bb.m, !prof !148

.critedge.i.i.i81:                                ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit79
  %i.dk = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.dc, i64 noundef 72, i64 noundef 8) #9
  %.pre102 = load ptr, ptr %i.a, align 8, !tbaa !7
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit82

bb.m:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit79
  %i.dl = add i64 %i.dh, %.pre-phi104
  %i.dm = inttoptr i64 %i.dl to ptr
  store i64 %i.di, ptr %i.de, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit82

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit82:  ; preds = %.critedge.i.i.i81, %bb.m
  %i.dn = phi ptr [ %.pre102, %.critedge.i.i.i81 ], [ %i.dd, %bb.m ]
  %.0.i.i.i80 = phi ptr [ %i.dk, %.critedge.i.i.i81 ], [ %i.dm, %bb.m ] ; 10 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !126
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %.0.i.i.i80, i8 0, i64 16, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i.i.i80, i64 16
  store i32 66, ptr %i.dq, align 8, !tbaa !156
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i.i.i80, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.dr, i8 0, i64 28, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i.i.i80, i64 48
  store ptr %i.dp, ptr %i.ds, align 8, !tbaa !192
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i.i.i80, i64 56
  store ptr null, ptr %i.dt, align 8, !tbaa !194
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i.i.i80, i64 64
  store i8 0, ptr %i.du, align 8, !tbaa !195
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i17 = load ptr, ptr %i.dv, align 8, !tbaa !58
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i.i.i80, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i17, ptr %i.dw, align 8, !tbaa !58
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %.sroa.0.0.copyload.i.i9.i18 = load ptr, ptr %i.dx, align 8, !tbaa !58
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i.i.i80, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i18, ptr %i.dy, align 8, !tbaa !58
  %.sroa.0.0.copyload.i.i10.i19 = load ptr, ptr %i.dv, align 8, !tbaa !58
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i.i.i80, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i19, ptr %i.dz, align 8, !tbaa !58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i77, i8 0, i64 16, i1 false)
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i.i.i77, i64 16
  store i32 168, ptr %i.ea, align 8, !tbaa !156
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i.i.i77, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.eb, i8 0, i64 28, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i.i.i77, i64 48
  store ptr %.0.i.i.i80, ptr %i.ec, align 8, !tbaa !321
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i.i.i77, i64 56
  store ptr null, ptr %i.ed, align 8, !tbaa !323
  %.sroa.0.0.copyload.i.i.i20 = load ptr, ptr %i.cg, align 8, !tbaa !58
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i.i.i77, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i20, ptr %i.ee, align 8, !tbaa !58
  %.sroa.0.0.copyload.i.i9.i21 = load ptr, ptr %i.t, align 8, !tbaa !58
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i.i.i77, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i21, ptr %i.ef, align 8, !tbaa !58
  %.sroa.0.0.copyload.i.i10.i22 = load ptr, ptr %i.cg, align 8, !tbaa !58
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.i.i.i77, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i22, ptr %i.eg, align 8, !tbaa !58
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ei = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.eh, i32 noundef 3) #9
  store ptr %i.ei, ptr %i.a, align 8, !tbaa !7
  %i.ej = tail call i64 @_ZN6hermes6parser7JSLexer10lookahead1ILb1EEENS_8OptValueINS0_9TokenKindEEES5_(ptr noundef nonnull align 8 dereferenceable(1160) %i.eh, i64 0) #9
  %i.ek = and i64 %i.ej, 8589934591
  %or.cond52 = icmp eq i64 %i.ek, 4294967388
  br i1 %or.cond52, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit82
  %i.el = ptrtoint ptr %.0.i.i.i77 to i64
  br label %bb.r

bb.o:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit82
  %i.em = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl3eatENS0_9TokenKindENS0_7JSLexer14GrammarContextEPKcS7_N4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 91, i32 noundef 3, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr %.sroa.0.0.copyload.i) #9
  br i1 %i.em, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.en = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl29parsePrefixTypeAnnotationFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.eo = extractvalue { i64, i8 } %i.en, 1
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eq = extractvalue { i64, i8 } %i.en, 0
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i28 = load ptr, ptr %i.er, align 8, !tbaa !58
  %i.es = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61
  %i.et = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.es, i64 noundef 8) ; 9 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 1752
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !307
  %i.ew = inttoptr i64 %i.eq to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.et, i8 0, i64 16, i1 false)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i32 159, ptr %i.ex, align 8, !tbaa !156
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 20
  store i32 0, ptr %i.ey, align 4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  store ptr %i.ev, ptr %i.ez, align 8, !tbaa !285
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  store ptr %i.ew, ptr %i.fa, align 8, !tbaa !287
  %i.fb = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.fb, align 8, !tbaa !58
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  store ptr %.sroa.0.0.copyload.i.i28, ptr %i.fc, align 8, !tbaa !58
  %i.fd = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.fd, align 8, !tbaa !58
  %i.fe = ptrtoint ptr %i.et to i64
  br label %bb.r

.thread:                                          ; preds = %bb.f, %bb.d, %bb.b, %bb.a
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1236 ; 3 uses
  %i.fg = load i8, ptr %i.ff, align 4, !tbaa !177, !range !123, !noundef !60
  store i8 1, ptr %i.ff, align 4, !tbaa !177
  %i.fh = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl34parseConditionalTypeAnnotationFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0), !inline_history !208 ; 2 uses
  %i.fi = extractvalue { i64, i8 } %i.fh, 0
  %i.fj = extractvalue { i64, i8 } %i.fh, 1       ; 2 uses
  %i.fk = trunc nuw i8 %i.fj to i1
  %spec.select = select i1 %i.fk, i64 %i.fi, i64 undef
  store i8 %i.fg, ptr %i.ff, align 4, !tbaa !177
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.j, %.thread
  %.sroa.045.3 = phi i64 [ %spec.select, %.thread ], [ %i.cf, %bb.j ], [ %i.el, %bb.n ], [ undef, %bb.o ], [ %i.fe, %bb.q ], [ undef, %bb.p ]
  %.sroa.546.3 = phi i8 [ %i.fj, %.thread ], [ 1, %bb.j ], [ 1, %bb.n ], [ 0, %bb.o ], [ 1, %bb.q ], [ 0, %bb.p ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.045.3, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.546.3, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl37reparseTypeAnnotationAsIdentifierFlowEPNS_6ESTree4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2824) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !156
  switch i32 %i.b, label %bb.m [
    i32 146, label %bb.b
    i32 136, label %bb.c
    i32 142, label %bb.d
    i32 138, label %bb.e
    i32 137, label %bb.f
    i32 145, label %bb.g
    i32 144, label %bb.h
    i32 168, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1592
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1608
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1616
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1632
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1640
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1664
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1656
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !323
  %.not7.i = icmp eq ptr %i.k, null
  br i1 %.not7.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !321  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !156
  %i.p = icmp ne i32 %i.o, 66
  %.not824.i = icmp eq ptr %i.m, null
  %.not8.i = or i1 %.not824.i, %i.p
  br i1 %.not8.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0.in.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.g, %bb.f ], [ %i.h, %bb.g ], [ %i.i, %bb.h ], [ %i.q, %bb.k ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !145 ; 2 uses
  %.not9.i = icmp eq ptr %.0.i, null
  br i1 %.not9.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.a, %bb.l, %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.r, align 8, !tbaa !58
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.t, align 1, !tbaa !132
  store ptr @.str.145, ptr %2, align 8, !tbaa !135
  store i8 3, ptr %i.s, align 8, !tbaa !136
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !137, !nonnull !60, !align !61
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.v, i32 noundef 0, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.w = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !181  ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !182
  %i.aa = zext i32 %i.z to i64
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !188
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !189
  %i.ae = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !191 ; 2 uses
  %i.ah = add i64 %i.ae, 7
  %i.ai = add i64 %i.ah, %i.ag
  %i.aj = and i64 %i.ai, 7
  %.neg12 = add i64 %i.ag, 7
  %i.ak = sub i64 %.neg12, %i.aj                  ; 3 uses
  store i64 %i.ak, ptr %i.af, align 8, !tbaa !191
  %i.al = add i64 %i.ak, 72                       ; 2 uses
  %i.am = icmp ugt i64 %i.al, 262144
  br i1 %i.am, label %.critedge.i.i.i, label %bb.o, !prof !148

.critedge.i.i.i:                                  ; preds = %bb.n
  %i.an = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.w, i64 noundef 72, i64 noundef 8) #9
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.o:                                             ; preds = %bb.n
  %i.ao = add i64 %i.ak, %i.ae
  %i.ap = inttoptr i64 %i.ao to ptr
  store i64 %i.al, ptr %i.af, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.o
  %.0.i.i.i = phi ptr [ %i.an, %.critedge.i.i.i ], [ %i.ap, %bb.o ] ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 66, ptr %i.aq, align 8, !tbaa !156
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ar, i8 0, i64 28, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store ptr %.0.i, ptr %i.as, align 8, !tbaa !192
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56
  store ptr null, ptr %i.at, align 8, !tbaa !194
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64
  store i8 0, ptr %i.au, align 8, !tbaa !195
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.av, align 8, !tbaa !58
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.aw, align 8, !tbaa !58
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i9.i = load ptr, ptr %i.ax, align 8, !tbaa !58
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i, ptr %i.ay, align 8, !tbaa !58
  %.sroa.0.0.copyload.i.i10.i = load ptr, ptr %i.av, align 8, !tbaa !58
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i, ptr %i.az, align 8, !tbaa !58
  %i.ba = ptrtoint ptr %.0.i.i.i to i64
  br label %bb.p

bb.p:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit, %bb.m
  %.sroa.05.0 = phi i64 [ %i.ba, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ undef, %bb.m ]
  %.sroa.2.0 = phi i8 [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ 0, %bb.m ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.05.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.0, 1
  ret { i64, i8 } %.fca.1.insert
}

declare noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl21parseFormalParametersENS1_5ParamERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(2824), i32, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl29parseReturnTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i64 %1, i8 %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !58 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1712 ; 2 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !124
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit59.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit: ; preds = %bb.a
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !324
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !126  ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %bb.b, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit59

bb.b:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1236 ; 8 uses
  %i.l = icmp eq i32 %3, 1
  %i.m = zext i1 %i.l to i8                       ; 2 uses
  %i.n = load i8, ptr %i.k, align 4, !tbaa !177, !range !123, !noundef !60 ; 2 uses
  store i8 %i.m, ptr %i.k, align 4, !tbaa !177
  %i.o = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl34parseConditionalTypeAnnotationFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0), !inline_history !208 ; 2 uses
  %i.p = extractvalue { i64, i8 } %i.o, 1
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit

_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit: ; preds = %bb.b
  store i8 %i.n, ptr %i.k, align 4, !tbaa !177
  br label %.critedge52

bb.c:                                             ; preds = %bb.b
  %i.r = extractvalue { i64, i8 } %i.o, 0
end_hunk_3
begin_hunk_4_@_ZN6hermes6parser6detail12JSParserImpl24parseMatchSubpatternFlowEv:bb.a
  store ptr %.sroa.0.0.copyload.i.i9.i113, ptr %i.in, align 8, !tbaa !58
  %.sroa.0.0.copyload.i.i10.i114 = load ptr, ptr %i.ik, align 8, !tbaa !58
  %i.io = getelementptr inbounds nuw i8, ptr %.0.i.i.i109, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i114, ptr %i.io, align 8, !tbaa !58
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.iq = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.ip, i32 noundef 1) #9
  store ptr %i.iq, ptr %i.b, align 8, !tbaa !7
  %i.ir = ptrtoint ptr %.0.i.i.i109 to i64
  br label %.critedge

bb.n:                                             ; preds = %bb.a
  %i.is = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !181 ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !182
  %i.iw = zext i32 %i.iv to i64
  %i.ix = load ptr, ptr %i.is, align 8, !tbaa !188
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.iw
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !189
  %i.ja = ptrtoint ptr %i.iz to i64               ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iu, i64 8 ; 3 uses
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !191 ; 2 uses
  %i.jd = add i64 %i.ja, 7
  %i.je = add i64 %i.jd, %i.jc
  %i.jf = and i64 %i.je, 7
  %.neg314 = add i64 %i.jc, 7
  %i.jg = sub i64 %.neg314, %i.jf                 ; 3 uses
  store i64 %i.jg, ptr %i.jb, align 8, !tbaa !191
  %i.jh = add i64 %i.jg, 56                       ; 2 uses
  %i.ji = icmp ugt i64 %i.jh, 262144
  br i1 %i.ji, label %.critedge.i.i.i121, label %bb.o, !prof !148

.critedge.i.i.i121:                               ; preds = %bb.n
  %i.jj = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.is, i64 noundef 56, i64 noundef 8) #9
  %.pre352 = load ptr, ptr %i.b, align 8, !tbaa !7
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit122

bb.o:                                             ; preds = %bb.n
  %i.jk = add i64 %i.jg, %i.ja
  %i.jl = inttoptr i64 %i.jk to ptr
  store i64 %i.jh, ptr %i.jb, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit122

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit122: ; preds = %.critedge.i.i.i121, %bb.o
  %i.jm = phi ptr [ %.pre352, %.critedge.i.i.i121 ], [ %i.c, %bb.o ]
  %.0.i.i.i120 = phi ptr [ %i.jj, %.critedge.i.i.i121 ], [ %i.jl, %bb.o ] ; 8 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 40
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !255
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i120, i8 0, i64 16, i1 false)
  %i.jp = getelementptr inbounds nuw i8, ptr %.0.i.i.i120, i64 16
  store i32 36, ptr %i.jp, align 8, !tbaa !156
  %i.jq = getelementptr inbounds nuw i8, ptr %.0.i.i.i120, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.jq, i8 0, i64 28, i1 false)
  %i.jr = getelementptr inbounds nuw i8, ptr %.0.i.i.i120, i64 48
  store ptr %i.jo, ptr %i.jr, align 8, !tbaa !256
  %i.js = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i123 = load ptr, ptr %i.js, align 8, !tbaa !58
  %i.jt = getelementptr inbounds nuw i8, ptr %.0.i.i.i120, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i123, ptr %i.jt, align 8, !tbaa !58
  %i.ju = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.0.0.copyload.i.i9.i124 = load ptr, ptr %i.ju, align 8, !tbaa !58
  %i.jv = getelementptr inbounds nuw i8, ptr %.0.i.i.i120, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i124, ptr %i.jv, align 8, !tbaa !58
  %.sroa.0.0.copyload.i.i10.i125 = load ptr, ptr %i.js, align 8, !tbaa !58
  %i.jw = getelementptr inbounds nuw i8, ptr %.0.i.i.i120, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i125, ptr %i.jw, align 8, !tbaa !58
  %i.jx = load ptr, ptr %i.b, align 8, !tbaa !7   ; 2 uses
  %i.jy = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !181 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !182
  %i.kc = zext i32 %i.kb to i64
  %i.kd = load ptr, ptr %i.jy, align 8, !tbaa !188
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.kc
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !189
  %i.kg = ptrtoint ptr %i.kf to i64               ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 3 uses
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !191 ; 2 uses
  %i.kj = add i64 %i.kg, 7
  %i.kk = add i64 %i.kj, %i.ki
  %i.kl = and i64 %i.kk, 7
  %.neg317 = add i64 %i.ki, 7
  %i.km = sub i64 %.neg317, %i.kl                 ; 3 uses
  store i64 %i.km, ptr %i.kh, align 8, !tbaa !191
  %i.kn = add i64 %i.km, 56                       ; 2 uses
  %i.ko = icmp ugt i64 %i.kn, 262144
  br i1 %i.ko, label %.critedge.i.i.i127, label %bb.p, !prof !148

.critedge.i.i.i127:                               ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit122
  %i.kp = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.jy, i64 noundef 56, i64 noundef 8) #9
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit128

bb.p:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit122
  %i.kq = add i64 %i.km, %i.kg
  %i.kr = inttoptr i64 %i.kq to ptr
  store i64 %i.kn, ptr %i.kh, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit128

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit128: ; preds = %.critedge.i.i.i127, %bb.p
  %.0.i.i.i126 = phi ptr [ %i.kp, %.critedge.i.i.i127 ], [ %i.kr, %bb.p ] ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i126, i8 0, i64 16, i1 false)
  %i.ks = getelementptr inbounds nuw i8, ptr %.0.i.i.i126, i64 16
  store i32 104, ptr %i.ks, align 8, !tbaa !156
  %i.kt = getelementptr inbounds nuw i8, ptr %.0.i.i.i126, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.kt, i8 0, i64 28, i1 false)
  %i.ku = getelementptr inbounds nuw i8, ptr %.0.i.i.i126, i64 48
  store ptr %.0.i.i.i120, ptr %i.ku, align 8, !tbaa !360
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jx, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i129 = load ptr, ptr %i.kv, align 8, !tbaa !58
  %i.kw = getelementptr inbounds nuw i8, ptr %.0.i.i.i126, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i129, ptr %i.kw, align 8, !tbaa !58
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %.sroa.0.0.copyload.i.i9.i130 = load ptr, ptr %i.kx, align 8, !tbaa !58
  %i.ky = getelementptr inbounds nuw i8, ptr %.0.i.i.i126, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i130, ptr %i.ky, align 8, !tbaa !58
  %.sroa.0.0.copyload.i.i10.i131 = load ptr, ptr %i.kv, align 8, !tbaa !58
  %i.kz = getelementptr inbounds nuw i8, ptr %.0.i.i.i126, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i131, ptr %i.kz, align 8, !tbaa !58
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lb = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.la, i32 noundef 1) #9
  store ptr %i.lb, ptr %i.b, align 8, !tbaa !7
  %i.lc = ptrtoint ptr %.0.i.i.i126 to i64
  br label %.critedge

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit: ; preds = %bb.a
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !370
  %i.lf = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !126 ; 2 uses
  %i.lh = icmp eq ptr %i.lg, %i.le
  br i1 %i.lh, label %bb.q, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit148

bb.q:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit
  %i.li = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !181 ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !182
  %i.lm = zext i32 %i.ll to i64
  %i.ln = load ptr, ptr %i.li, align 8, !tbaa !188
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %i.lm
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !189
  %i.lq = ptrtoint ptr %i.lp to i64               ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lk, i64 8 ; 3 uses
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !191 ; 2 uses
  %i.lt = add i64 %i.lq, 7
  %i.lu = add i64 %i.lt, %i.ls
  %i.lv = and i64 %i.lu, 7
  %.neg311 = add i64 %i.ls, 7
  %i.lw = sub i64 %.neg311, %i.lv                 ; 3 uses
  store i64 %i.lw, ptr %i.lr, align 8, !tbaa !191
  %i.lx = add i64 %i.lw, 48                       ; 2 uses
  %i.ly = icmp ugt i64 %i.lx, 262144
  br i1 %i.ly, label %.critedge.i.i.i138, label %bb.r, !prof !148

.critedge.i.i.i138:                               ; preds = %bb.q
  %i.lz = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.li, i64 noundef 48, i64 noundef 8) #9
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit139

bb.r:                                             ; preds = %bb.q
  %i.ma = add i64 %i.lw, %i.lq
  %i.mb = inttoptr i64 %i.ma to ptr
  store i64 %i.lx, ptr %i.lr, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit139

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit139: ; preds = %.critedge.i.i.i138, %bb.r
  %.0.i.i.i137 = phi ptr [ %i.lz, %.critedge.i.i.i138 ], [ %i.mb, %bb.r ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i137, i8 0, i64 16, i1 false)
  %i.mc = getelementptr inbounds nuw i8, ptr %.0.i.i.i137, i64 16
  store i32 103, ptr %i.mc, align 8, !tbaa !156
  %i.md = getelementptr inbounds nuw i8, ptr %.0.i.i.i137, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.md, i8 0, i64 28, i1 false)
  %i.me = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i140 = load ptr, ptr %i.me, align 8, !tbaa !58
  %i.mf = getelementptr inbounds nuw i8, ptr %.0.i.i.i137, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i140, ptr %i.mf, align 8, !tbaa !58
  %i.mg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.0.0.copyload.i.i9.i141 = load ptr, ptr %i.mg, align 8, !tbaa !58
  %i.mh = getelementptr inbounds nuw i8, ptr %.0.i.i.i137, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i141, ptr %i.mh, align 8, !tbaa !58
  %.sroa.0.0.copyload.i.i10.i142 = load ptr, ptr %i.me, align 8, !tbaa !58
  %i.mi = getelementptr inbounds nuw i8, ptr %.0.i.i.i137, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i142, ptr %i.mi, align 8, !tbaa !58
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mk = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.mj, i32 noundef 1) #9
  store ptr %i.mk, ptr %i.b, align 8, !tbaa !7
  %i.ml = ptrtoint ptr %.0.i.i.i137 to i64
  br label %.critedge

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit148: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !236
  %i.mo = icmp eq ptr %i.lg, %i.mn
  br i1 %i.mo, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit148
  %i.mp = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl28parseMatchBindingPatternFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.mq = extractvalue { i64, i8 } %i.mp, 0
  %i.mr = extractvalue { i64, i8 } %i.mp, 1       ; 2 uses
  %i.ms = trunc nuw i8 %i.mr to i1
  %spec.select = select i1 %i.ms, i64 %i.mq, i64 undef
  br label %.critedge

bb.t:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit148
  %i.mt = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.mt, align 8, !tbaa !58 ; 2 uses
  %i.mu = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61
  %i.mv = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.mu, i64 noundef 8) ; 10 uses
  %i.mw = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 32
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !126
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.mv, i8 0, i64 16, i1 false)
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  store i32 66, ptr %i.mz, align 8, !tbaa !156
  %i.na = getelementptr inbounds nuw i8, ptr %i.mv, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.na, i8 0, i64 28, i1 false)
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mv, i64 48
  store ptr %i.my, ptr %i.nb, align 8, !tbaa !192
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mv, i64 56
  store ptr null, ptr %i.nc, align 8, !tbaa !194
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mv, i64 64
  store i8 0, ptr %i.nd, align 8, !tbaa !195
  %.sroa.0.0.copyload.i.i.i149 = load ptr, ptr %i.mt, align 8, !tbaa !58
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i149, ptr %i.ne, align 8, !tbaa !58
  %i.nf = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.0.0.copyload.i.i9.i150 = load ptr, ptr %i.nf, align 8, !tbaa !58
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mv, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i150, ptr %i.ng, align 8, !tbaa !58
  %.sroa.0.0.copyload.i.i10.i151 = load ptr, ptr %i.mt, align 8, !tbaa !58
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mv, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i151, ptr %i.nh, align 8, !tbaa !58
  %i.ni = load ptr, ptr %i.b, align 8, !tbaa !7   ; 2 uses
  %i.nj = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61
  %i.nk = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.nj, i64 noundef 8) ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.nk, i8 0, i64 16, i1 false)
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  store i32 106, ptr %i.nl, align 8, !tbaa !156
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.nm, i8 0, i64 28, i1 false)
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 48
  store ptr %i.mv, ptr %i.nn, align 8, !tbaa !371
  %i.no = getelementptr inbounds nuw i8, ptr %i.ni, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i152 = load ptr, ptr %i.no, align 8, !tbaa !58
  %i.np = getelementptr inbounds nuw i8, ptr %i.nk, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i152, ptr %i.np, align 8, !tbaa !58
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %.sroa.0.0.copyload.i.i9.i153 = load ptr, ptr %i.nq, align 8, !tbaa !58
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nk, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i153, ptr %i.nr, align 8, !tbaa !58
  %.sroa.0.0.copyload.i.i10.i154 = load ptr, ptr %i.no, align 8, !tbaa !58
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nk, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i154, ptr %i.ns, align 8, !tbaa !58
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.nu = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.nt, i32 noundef 1) #9 ; 2 uses
  store ptr %i.nu, ptr %i.b, align 8, !tbaa !7
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit174, %bb.t
  %i.nw = phi ptr [ %i.nu, %bb.t ], [ %.pre347, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit174 ]
  %.0 = phi ptr [ %i.nk, %bb.t ], [ %.0.i.i.i215.sink392, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit174 ] ; 2 uses
  %i.nx = load i32, ptr %i.nw, align 8, !tbaa !124
  switch i32 %i.nx, label %bb.al [
    i32 57, label %bb.v
    i32 55, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  %i.ny = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 57, i32 noundef 0) #9
  br i1 %i.ny, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.nz = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl4needENS0_9TokenKindEPKcS5_N4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 1, ptr noundef nonnull @.str.47, ptr noundef null, ptr null) #9
  br i1 %i.nz, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.oa = load ptr, ptr %i.b, align 8, !tbaa !7   ; 3 uses
  %i.ob = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 24
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !181 ; 2 uses
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !182
  %i.of = zext i32 %i.oe to i64
  %i.og = load ptr, ptr %i.ob, align 8, !tbaa !188
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %i.of
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !189
  %i.oj = ptrtoint ptr %i.oi to i64               ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.od, i64 8 ; 3 uses
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !191 ; 2 uses
  %i.om = add i64 %i.oj, 7
  %i.on = add i64 %i.om, %i.ol
  %i.oo = and i64 %i.on, 7
  %.neg305 = add i64 %i.ol, 7
  %i.op = sub i64 %.neg305, %i.oo                 ; 3 uses
  store i64 %i.op, ptr %i.ok, align 8, !tbaa !191
  %i.oq = add i64 %i.op, 72                       ; 2 uses
  %i.or = icmp ugt i64 %i.oq, 262144
  br i1 %i.or, label %.critedge.i.i.i161, label %bb.y, !prof !148

.critedge.i.i.i161:                               ; preds = %bb.x
  %i.os = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.ob, i64 noundef 72, i64 noundef 8) #9
  %.pre351 = load ptr, ptr %i.b, align 8, !tbaa !7
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit162

bb.y:                                             ; preds = %bb.x
  %i.ot = add i64 %i.op, %i.oj
  %i.ou = inttoptr i64 %i.ot to ptr
  store i64 %i.oq, ptr %i.ok, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit162

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit162: ; preds = %.critedge.i.i.i161, %bb.y
  %i.ov = phi ptr [ %.pre351, %.critedge.i.i.i161 ], [ %i.oa, %bb.y ]
  %.0.i.i.i160 = phi ptr [ %i.os, %.critedge.i.i.i161 ], [ %i.ou, %bb.y ] ; 11 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 32
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !126
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %.0.i.i.i160, i8 0, i64 16, i1 false)
  %i.oy = getelementptr inbounds nuw i8, ptr %.0.i.i.i160, i64 16
  store i32 66, ptr %i.oy, align 8, !tbaa !156
  %i.oz = getelementptr inbounds nuw i8, ptr %.0.i.i.i160, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.oz, i8 0, i64 28, i1 false)
  %i.pa = getelementptr inbounds nuw i8, ptr %.0.i.i.i160, i64 48
  store ptr %i.ox, ptr %i.pa, align 8, !tbaa !192
  %i.pb = getelementptr inbounds nuw i8, ptr %.0.i.i.i160, i64 56
  store ptr null, ptr %i.pb, align 8, !tbaa !194
  %i.pc = getelementptr inbounds nuw i8, ptr %.0.i.i.i160, i64 64
  store i8 0, ptr %i.pc, align 8, !tbaa !195
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oa, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i163 = load ptr, ptr %i.pd, align 8, !tbaa !58
  %i.pe = getelementptr inbounds nuw i8, ptr %.0.i.i.i160, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i163, ptr %i.pe, align 8, !tbaa !58
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %.sroa.0.0.copyload.i.i9.i164 = load ptr, ptr %i.pf, align 8, !tbaa !58
  %i.pg = getelementptr inbounds nuw i8, ptr %.0.i.i.i160, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i164, ptr %i.pg, align 8, !tbaa !58
  %.sroa.0.0.copyload.i.i10.i165 = load ptr, ptr %i.pd, align 8, !tbaa !58
  %i.ph = getelementptr inbounds nuw i8, ptr %.0.i.i.i160, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i165, ptr %i.ph, align 8, !tbaa !58
  %i.pi = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.nt, i32 noundef 1) #9
  store ptr %i.pi, ptr %i.b, align 8, !tbaa !7
  %.sroa.0.0.copyload.i.i171 = load ptr, ptr %i.nv, align 8, !tbaa !58 ; 2 uses
  %i.pj = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 24
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !181 ; 2 uses
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !182
  %i.pn = zext i32 %i.pm to i64
  %i.po = load ptr, ptr %i.pj, align 8, !tbaa !188
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %i.pn
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !189
  %i.pr = ptrtoint ptr %i.pq to i64               ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pl, i64 8 ; 3 uses
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !191 ; 2 uses
  %i.pu = add i64 %i.pr, 7
  %i.pv = add i64 %i.pu, %i.pt
  %i.pw = and i64 %i.pv, 7
  %.neg308 = add i64 %i.pt, 7
  %i.px = sub i64 %.neg308, %i.pw                 ; 3 uses
  store i64 %i.px, ptr %i.ps, align 8, !tbaa !191
  %i.py = add i64 %i.px, 64                       ; 2 uses
  %i.pz = icmp ugt i64 %i.py, 262144
  br i1 %i.pz, label %.critedge.i.i.i173, label %bb.z, !prof !148

.critedge.i.i.i173:                               ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit162
  %i.qa = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.pj, i64 noundef 64, i64 noundef 8) #9
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit174

bb.z:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit162
  %i.qb = add i64 %i.px, %i.pr
  %i.qc = inttoptr i64 %i.qb to ptr
  store i64 %i.py, ptr %i.ps, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit174

bb.aa:                                            ; preds = %bb.v
  %i.qd = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %.sroa.0.0.copyload.i.i175 = load ptr, ptr %i.qe, align 8, !tbaa !58 ; 2 uses
  %i.qf = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.nt, i32 noundef 0) #9 ; 7 uses
  store ptr %i.qf, ptr %i.b, align 8, !tbaa !7
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !124
  switch i32 %i.qg, label %bb.ah [
    i32 111, label %bb.ab
    i32 115, label %bb.ad
    i32 112, label %bb.af
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.qh = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 24
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !181 ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !182
  %i.ql = zext i32 %i.qk to i64
  %i.qm = load ptr, ptr %i.qh, align 8, !tbaa !188
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %i.ql
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !189
  %i.qp = ptrtoint ptr %i.qo to i64               ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qj, i64 8 ; 3 uses
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !191 ; 2 uses
  %i.qs = add i64 %i.qp, 7
  %i.qt = add i64 %i.qs, %i.qr
  %i.qu = and i64 %i.qt, 7
  %.neg299 = add i64 %i.qr, 7
  %i.qv = sub i64 %.neg299, %i.qu                 ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN6hermes6parser6detail12JSParserImpl24parseMatchSubpatternFlowEv:bb.a

bb.am:                                            ; preds = %bb.a, %bb.a
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.ut = zext nneg i32 %i.d to i64
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %i.ut
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !145
  %i.uw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i218 = load ptr, ptr %i.uw, align 8, !tbaa !58 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.uy = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.ux, i32 noundef 0) #9 ; 7 uses
  store ptr %i.uy, ptr %i.b, align 8, !tbaa !7
  %i.uz = load i32, ptr %i.uy, align 8, !tbaa !124
  switch i32 %i.uz, label %bb.ar [
    i32 111, label %bb.an
    i32 115, label %bb.ap
  ]

bb.an:                                            ; preds = %bb.am
  %i.va = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 24
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !181 ; 2 uses
  %i.vd = load i32, ptr %i.vc, align 8, !tbaa !182
  %i.ve = zext i32 %i.vd to i64
  %i.vf = load ptr, ptr %i.va, align 8, !tbaa !188
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.vf, i64 %i.ve
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !189
  %i.vi = ptrtoint ptr %i.vh to i64               ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vc, i64 8 ; 3 uses
  %i.vk = load i64, ptr %i.vj, align 8, !tbaa !191 ; 2 uses
  %i.vl = add i64 %i.vi, 7
  %i.vm = add i64 %i.vl, %i.vk
  %i.vn = and i64 %i.vm, 7
  %.neg287 = add i64 %i.vk, 7
  %i.vo = sub i64 %.neg287, %i.vn                 ; 3 uses
  store i64 %i.vo, ptr %i.vj, align 8, !tbaa !191
  %i.vp = add i64 %i.vo, 56                       ; 2 uses
  %i.vq = icmp ugt i64 %i.vp, 262144
  br i1 %i.vq, label %.critedge.i.i.i224, label %bb.ao, !prof !148

.critedge.i.i.i224:                               ; preds = %bb.an
  %i.vr = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.va, i64 noundef 56, i64 noundef 8) #9
  %.pre346 = load ptr, ptr %i.b, align 8, !tbaa !7
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit225

bb.ao:                                            ; preds = %bb.an
  %i.vs = add i64 %i.vo, %i.vi
  %i.vt = inttoptr i64 %i.vs to ptr
  store i64 %i.vp, ptr %i.vj, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit225

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit225: ; preds = %.critedge.i.i.i224, %bb.ao
  %i.vu = phi ptr [ %.pre346, %.critedge.i.i.i224 ], [ %i.uy, %bb.ao ]
  %.0.i.i.i223 = phi ptr [ %i.vr, %.critedge.i.i.i224 ], [ %i.vt, %bb.ao ] ; 5 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 24
  %i.vw = load double, ptr %i.vv, align 8, !tbaa !364
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i223, i8 0, i64 16, i1 false)
  %i.vx = getelementptr inbounds nuw i8, ptr %.0.i.i.i223, i64 16
  store i32 37, ptr %i.vx, align 8, !tbaa !156
  %i.vy = getelementptr inbounds nuw i8, ptr %.0.i.i.i223, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.vy, i8 0, i64 28, i1 false)
  %i.vz = getelementptr inbounds nuw i8, ptr %.0.i.i.i223, i64 48
  store double %i.vw, ptr %i.vz, align 8, !tbaa !365
  br label %bb.as

bb.ap:                                            ; preds = %bb.am
  %i.wa = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 24
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !181 ; 2 uses
  %i.wd = load i32, ptr %i.wc, align 8, !tbaa !182
  %i.we = zext i32 %i.wd to i64
  %i.wf = load ptr, ptr %i.wa, align 8, !tbaa !188
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %i.wf, i64 %i.we
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !189
  %i.wi = ptrtoint ptr %i.wh to i64               ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wc, i64 8 ; 3 uses
  %i.wk = load i64, ptr %i.wj, align 8, !tbaa !191 ; 2 uses
  %i.wl = add i64 %i.wi, 7
  %i.wm = add i64 %i.wl, %i.wk
  %i.wn = and i64 %i.wm, 7
  %.neg284 = add i64 %i.wk, 7
  %i.wo = sub i64 %.neg284, %i.wn                 ; 3 uses
  store i64 %i.wo, ptr %i.wj, align 8, !tbaa !191
  %i.wp = add i64 %i.wo, 56                       ; 2 uses
  %i.wq = icmp ugt i64 %i.wp, 262144
  br i1 %i.wq, label %.critedge.i.i.i235, label %bb.aq, !prof !148

.critedge.i.i.i235:                               ; preds = %bb.ap
  %i.wr = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.wa, i64 noundef 56, i64 noundef 8) #9
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !7
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit236

bb.aq:                                            ; preds = %bb.ap
  %i.ws = add i64 %i.wo, %i.wi
  %i.wt = inttoptr i64 %i.ws to ptr
  store i64 %i.wp, ptr %i.wj, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit236

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit236: ; preds = %.critedge.i.i.i235, %bb.aq
  %i.wu = phi ptr [ %.pre, %.critedge.i.i.i235 ], [ %i.uy, %bb.aq ]
  %.0.i.i.i234 = phi ptr [ %i.wr, %.critedge.i.i.i235 ], [ %i.wt, %bb.aq ] ; 5 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 56
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !367
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i234, i8 0, i64 16, i1 false)
  %i.wx = getelementptr inbounds nuw i8, ptr %.0.i.i.i234, i64 16
  store i32 39, ptr %i.wx, align 8, !tbaa !156
  %i.wy = getelementptr inbounds nuw i8, ptr %.0.i.i.i234, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.wy, i8 0, i64 28, i1 false)
  %i.wz = getelementptr inbounds nuw i8, ptr %.0.i.i.i234, i64 48
  store ptr %i.ww, ptr %i.wz, align 8, !tbaa !368
  br label %bb.as

bb.ar:                                            ; preds = %bb.am
  %i.xa = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  %.sroa.0.0.copyload.i245 = load ptr, ptr %i.xa, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.xb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xc = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 1, ptr %i.xc, align 1, !tbaa !132
  store ptr @.str.52, ptr %1, align 8, !tbaa !135
  store i8 3, ptr %i.xb, align 8, !tbaa !136
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !137, !nonnull !60, !align !61
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.xe, i32 noundef 0, ptr %.sroa.0.0.copyload.i245, ptr noundef nonnull align 8 dereferenceable(18) %1, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %.critedge

bb.as:                                            ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit236, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit225
  %.0.i.i.i234.sink397 = phi ptr [ %.0.i.i.i234, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit236 ], [ %.0.i.i.i223, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit225 ] ; 4 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.uy, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i237 = load ptr, ptr %i.xf, align 8, !tbaa !58
  %i.xg = getelementptr inbounds nuw i8, ptr %.0.i.i.i234.sink397, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i237, ptr %i.xg, align 8, !tbaa !58
  %i.xh = getelementptr inbounds nuw i8, ptr %i.uy, i64 16
  %.sroa.0.0.copyload.i.i9.i238 = load ptr, ptr %i.xh, align 8, !tbaa !58
  %i.xi = getelementptr inbounds nuw i8, ptr %.0.i.i.i234.sink397, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i238, ptr %i.xi, align 8, !tbaa !58
  %.sroa.0.0.copyload.i.i10.i239 = load ptr, ptr %i.xf, align 8, !tbaa !58
  %i.xj = getelementptr inbounds nuw i8, ptr %.0.i.i.i234.sink397, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i239, ptr %i.xj, align 8, !tbaa !58
  %i.xk = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.ux, i32 noundef 1) #9
  store ptr %i.xk, ptr %i.b, align 8, !tbaa !7
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i246 = load ptr, ptr %i.xl, align 8, !tbaa !58
  %i.xm = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 24
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !181 ; 2 uses
  %i.xp = load i32, ptr %i.xo, align 8, !tbaa !182
  %i.xq = zext i32 %i.xp to i64
  %i.xr = load ptr, ptr %i.xm, align 8, !tbaa !188
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.xr, i64 %i.xq
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !189
  %i.xu = ptrtoint ptr %i.xt to i64               ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xo, i64 8 ; 3 uses
  %i.xw = load i64, ptr %i.xv, align 8, !tbaa !191 ; 2 uses
  %i.xx = add i64 %i.xu, 7
  %i.xy = add i64 %i.xx, %i.xw
  %i.xz = and i64 %i.xy, 7
  %.neg290 = add i64 %i.xw, 7
  %i.ya = sub i64 %.neg290, %i.xz                 ; 3 uses
  store i64 %i.ya, ptr %i.xv, align 8, !tbaa !191
  %i.yb = add i64 %i.ya, 64                       ; 2 uses
  %i.yc = icmp ugt i64 %i.yb, 262144
  br i1 %i.yc, label %.critedge.i.i.i248, label %bb.at, !prof !148

.critedge.i.i.i248:                               ; preds = %bb.as
  %i.yd = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.xm, i64 noundef 64, i64 noundef 8) #9
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit249

bb.at:                                            ; preds = %bb.as
  %i.ye = add i64 %i.ya, %i.xu
  %i.yf = inttoptr i64 %i.ye to ptr
  store i64 %i.yb, ptr %i.xv, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit249

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit249: ; preds = %.critedge.i.i.i248, %bb.at
  %.0.i.i.i247 = phi ptr [ %i.yd, %.critedge.i.i.i248 ], [ %i.yf, %bb.at ] ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i247, i8 0, i64 16, i1 false)
  %i.yg = getelementptr inbounds nuw i8, ptr %.0.i.i.i247, i64 16
  store i32 105, ptr %i.yg, align 8, !tbaa !156
  %i.yh = getelementptr inbounds nuw i8, ptr %.0.i.i.i247, i64 20
  store i32 0, ptr %i.yh, align 4
  %i.yi = getelementptr inbounds nuw i8, ptr %.0.i.i.i247, i64 48
  store ptr %.0.i.i.i234.sink397, ptr %i.yi, align 8, !tbaa !377
  %i.yj = getelementptr inbounds nuw i8, ptr %.0.i.i.i247, i64 56
  store ptr %i.uv, ptr %i.yj, align 8, !tbaa !379
  %i.yk = getelementptr inbounds nuw i8, ptr %.0.i.i.i247, i64 24
  store ptr %.sroa.0.0.copyload.i.i218, ptr %i.yk, align 8, !tbaa !58
  %i.yl = getelementptr inbounds nuw i8, ptr %.0.i.i.i247, i64 32
  store ptr %.sroa.0.0.copyload.i.i246, ptr %i.yl, align 8, !tbaa !58
  %i.ym = getelementptr inbounds nuw i8, ptr %.0.i.i.i247, i64 40
  store ptr %.sroa.0.0.copyload.i.i218, ptr %i.ym, align 8, !tbaa !58
  %i.yn = ptrtoint ptr %.0.i.i.i247 to i64
  br label %.critedge

bb.au:                                            ; preds = %bb.a, %bb.a
  %i.yo = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl28parseMatchBindingPatternFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.yp = extractvalue { i64, i8 } %i.yo, 0
  %i.yq = extractvalue { i64, i8 } %i.yo, 1       ; 2 uses
  %i.yr = trunc nuw i8 %i.yq to i1
  %spec.select279 = select i1 %i.yr, i64 %i.yp, i64 undef
  br label %.critedge

bb.av:                                            ; preds = %bb.a
  %i.ys = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i250 = load ptr, ptr %i.ys, align 8, !tbaa !58
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.yu = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.yt, i32 noundef 0) #9
  store ptr %i.yu, ptr %i.b, align 8, !tbaa !7
  %i.yv = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl21parseMatchPatternFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.yw = extractvalue { i64, i8 } %i.yv, 1
  %i.yx = trunc nuw i8 %i.yw to i1
  br i1 %i.yx, label %bb.aw, label %.critedge

bb.aw:                                            ; preds = %bb.av
  %i.yy = extractvalue { i64, i8 } %i.yv, 0
  %i.yz = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl3eatENS0_9TokenKindENS0_7JSLexer14GrammarContextEPKcS7_N4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 54, i32 noundef 1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, ptr %.sroa.0.0.copyload.i.i250) #9 ; 2 uses
  %spec.select281 = select i1 %i.yz, i64 %i.yy, i64 undef
  %spec.select282 = zext i1 %i.yz to i8
  br label %.critedge

bb.ax:                                            ; preds = %bb.a
  %i.za = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl27parseMatchObjectPatternFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.zb = extractvalue { i64, i8 } %i.za, 0
  %i.zc = extractvalue { i64, i8 } %i.za, 1
  br label %.critedge

bb.ay:                                            ; preds = %bb.a
  %i.zd = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl26parseMatchArrayPatternFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.ze = extractvalue { i64, i8 } %i.zd, 0
  %i.zf = extractvalue { i64, i8 } %i.zd, 1
  br label %.critedge

bb.az:                                            ; preds = %bb.a
  %i.zg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i255 = load ptr, ptr %i.zg, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.zh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.zi = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.zi, align 1, !tbaa !132
  store ptr @.str.55, ptr %2, align 8, !tbaa !135
  store i8 3, ptr %i.zh, align 8, !tbaa !136
  %i.zj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !137, !nonnull !60, !align !61
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.zk, i32 noundef 0, ptr %.sroa.0.0.copyload.i255, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %.critedge

.critedge:                                        ; preds = %bb.w, %bb.ai, %bb.aw, %bb.au, %bb.s, %bb.av, %bb.al, %bb.ah, %bb.ar, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit249, %bb.az, %bb.ay, %bb.ax, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit139, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit128, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit111, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit94, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit77, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit65
  %.sroa.0277.4 = phi i64 [ undef, %bb.az ], [ %i.bk, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit65 ], [ %i.dv, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit77 ], [ %i.gg, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit94 ], [ %i.ir, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit111 ], [ %i.lc, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit128 ], [ %i.ml, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit139 ], [ %i.ze, %bb.ay ], [ %spec.select279, %bb.au ], [ undef, %bb.ar ], [ %i.yn, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit249 ], [ %spec.select, %bb.s ], [ undef, %bb.av ], [ %i.zb, %bb.ax ], [ %spec.select281, %bb.aw ], [ %i.ur, %bb.al ], [ undef, %bb.ah ], [ undef, %bb.ai ], [ undef, %bb.w ]
  %.sroa.14.4 = phi i8 [ 0, %bb.az ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit65 ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit77 ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit94 ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit111 ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit128 ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit139 ], [ %i.zf, %bb.ay ], [ %i.yq, %bb.au ], [ 0, %bb.ar ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit249 ], [ %i.mr, %bb.s ], [ 0, %bb.av ], [ %i.zc, %bb.ax ], [ %spec.select282, %bb.aw ], [ 1, %bb.al ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ 0, %bb.w ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.0277.4, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.14.4, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl28parseMatchBindingPatternFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !126
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.f, align 8, !tbaa !58 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.g, i32 noundef 0) #9 ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !7
  %i.i = load i32, ptr %i.h, align 8, !tbaa !124  ; 2 uses
  %i.j = icmp eq i32 %i.i, 1
  %i.k = add i32 %i.i, -4
  %spec.select.i = icmp ult i32 %i.k, 44
  %or.cond = or i1 %i.j, %spec.select.i
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 1, ptr %i.a, align 4, !tbaa !150
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr nonnull %i.a, i64 1, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, ptr %.sroa.0.0.copyload.i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl31parseMatchBindingIdentifierFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.m = extractvalue { i64, i8 } %i.l, 0
  %i.n = extractvalue { i64, i8 } %i.l, 1
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i6 = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.q = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !181  ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !182
  %i.u = zext i32 %i.t to i64
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !188
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !189
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !191 ; 2 uses
  %i.ab = add i64 %i.y, 7
  %i.ac = add i64 %i.ab, %i.aa
  %i.ad = and i64 %i.ac, 7
  %.neg9 = add i64 %i.aa, 7
  %i.ae = sub i64 %.neg9, %i.ad                   ; 3 uses
  store i64 %i.ae, ptr %i.z, align 8, !tbaa !191
  %i.af = add i64 %i.ae, 64                       ; 2 uses
  %i.ag = icmp ugt i64 %i.af, 262144
  br i1 %i.ag, label %.critedge.i.i.i, label %bb.e, !prof !148

.critedge.i.i.i:                                  ; preds = %bb.d
  %i.ah = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.q, i64 noundef 64, i64 noundef 8) #9
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.e:                                             ; preds = %bb.d
  %i.ai = add i64 %i.ae, %i.y
  %i.aj = inttoptr i64 %i.ai to ptr
  store i64 %i.af, ptr %i.z, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.e
  %.0.i.i.i = phi ptr [ %i.ah, %.critedge.i.i.i ], [ %i.aj, %bb.e ] ; 9 uses
  %i.ak = inttoptr i64 %i.m to ptr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 107, ptr %i.al, align 8, !tbaa !156
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  store i32 0, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !380
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56
  store ptr %i.e, ptr %i.ao, align 8, !tbaa !382
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.ap, align 8, !tbaa !58
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i6, ptr %i.aq, align 8, !tbaa !58
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.ar, align 8, !tbaa !58
  %i.as = ptrtoint ptr %.0.i.i.i to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %.sroa.07.0 = phi i64 [ %i.as, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ undef, %bb.c ]
  %.sroa.2.0 = phi i8 [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.07.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.0, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl31parseMatchBindingIdentifierFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !126  ; 2 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !124
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.f, align 8, !tbaa !58
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !58
  %i.g = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl25validateBindingIdentifierENS1_5ParamEN4llvh7SMRangeEPNS_12UniqueStringENS0_9TokenKindE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 0, ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef %i.d, i32 noundef %i.e) #9
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.h, i32 noundef 0) #9 ; 3 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !7
  %i.j = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !181  ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !182
  %i.n = zext i32 %i.m to i64
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !188
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !189
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !191  ; 2 uses
  %i.u = add i64 %i.r, 7
  %i.v = add i64 %i.u, %i.t
  %i.w = and i64 %i.v, 7
  %.neg6 = add i64 %i.t, 7
  %i.x = sub i64 %.neg6, %i.w                     ; 3 uses
  store i64 %i.x, ptr %i.s, align 8, !tbaa !191
  %i.y = add i64 %i.x, 72                         ; 2 uses
  %i.z = icmp ugt i64 %i.y, 262144
  br i1 %i.z, label %.critedge.i.i.i, label %bb.c, !prof !148

.critedge.i.i.i:                                  ; preds = %bb.b
  %i.aa = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.j, i64 noundef 72, i64 noundef 8) #9
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.c:                                             ; preds = %bb.b
  %i.ab = add i64 %i.x, %i.r
  %i.ac = inttoptr i64 %i.ab to ptr
  store i64 %i.y, ptr %i.s, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.aa, %.critedge.i.i.i ], [ %i.ac, %bb.c ] ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 66, ptr %i.ad, align 8, !tbaa !156
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ae, i8 0, i64 28, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store ptr %i.d, ptr %i.af, align 8, !tbaa !192
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56
  store ptr null, ptr %i.ag, align 8, !tbaa !194
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64
  store i8 0, ptr %i.ah, align 8, !tbaa !195
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.aj, align 8, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.0.0.copyload.i.i9.i = load ptr, ptr %i.ak, align 8, !tbaa !58
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i, ptr %i.al, align 8, !tbaa !58
  %.sroa.0.0.copyload.i.i10.i = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i, ptr %i.am, align 8, !tbaa !58
  %i.an = ptrtoint ptr %.0.i.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %.sroa.04.0 = phi i64 [ %i.an, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ undef, %bb.a ]
  %.sroa.2.0 = phi i8 [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.04.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.0, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl27parseMatchObjectPatternFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvh::simple_ilist", align 8 ; 13 uses
  %i.a = alloca [4 x i32], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.d, align 8, !tbaa !58 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN6hermes6parser6detail12JSParserImpl30parsePrimaryTypeAnnotationFlowEv:bb.a
  %i.ht = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61
  %i.hu = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.ht, i64 noundef 8) ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hu, i8 0, i64 16, i1 false)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  store i32 138, ptr %i.hv, align 8, !tbaa !156
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 20
  store i32 0, ptr %i.hw, align 4
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.hx, align 8, !tbaa !58
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  store ptr %.sroa.2.0.copyload.i.i150, ptr %i.hy, align 8, !tbaa !58
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.hz, align 8, !tbaa !58
  %i.ia = ptrtoint ptr %i.hu to i64
  br label %bb.ch

bb.ab:                                            ; preds = %bb.z
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !201
  %i.id = icmp eq ptr %i.cq, %i.ic
  br i1 %i.id, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.sroa.2.0..sroa_idx.i.i154 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.2.0.copyload.i.i155 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i154, align 8, !tbaa !58
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.if = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.ie, i32 noundef 3) #9
  store ptr %i.if, ptr %i.b, align 8, !tbaa !7
  %i.ig = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61
  %i.ih = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.ig, i64 noundef 8) ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ih, i8 0, i64 16, i1 false)
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  store i32 145, ptr %i.ii, align 8, !tbaa !156
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 20
  store i32 0, ptr %i.ij, align 4
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.ik, align 8, !tbaa !58
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 32
  store ptr %.sroa.2.0.copyload.i.i155, ptr %i.il, align 8, !tbaa !58
  %i.im = getelementptr inbounds nuw i8, ptr %i.ih, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.im, align 8, !tbaa !58
  %i.in = ptrtoint ptr %i.ih to i64
  br label %bb.ch

bb.ad:                                            ; preds = %bb.ab
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !197
  %i.iq = icmp eq ptr %i.cq, %i.ip
  br i1 %i.iq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.sroa.2.0..sroa_idx.i.i159 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.2.0.copyload.i.i160 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i159, align 8, !tbaa !58
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.is = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.ir, i32 noundef 3) #9
  store ptr %i.is, ptr %i.b, align 8, !tbaa !7
  %i.it = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61
  %i.iu = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.it, i64 noundef 8) ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iu, i8 0, i64 16, i1 false)
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  store i32 137, ptr %i.iv, align 8, !tbaa !156
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 20
  store i32 0, ptr %i.iw, align 4
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.ix, align 8, !tbaa !58
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  store ptr %.sroa.2.0.copyload.i.i160, ptr %i.iy, align 8, !tbaa !58
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iu, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.iz, align 8, !tbaa !58
  %i.ja = ptrtoint ptr %i.iu to i64
  br label %bb.ch

bb.af:                                            ; preds = %bb.ad
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !199
  %i.jd = icmp eq ptr %i.cq, %i.jc
  br i1 %i.jd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %.sroa.2.0..sroa_idx.i.i164 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.2.0.copyload.i.i165 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i164, align 8, !tbaa !58
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jf = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.je, i32 noundef 3) #9
  store ptr %i.jf, ptr %i.b, align 8, !tbaa !7
  %i.jg = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61
  %i.jh = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.jg, i64 noundef 8) ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.jh, i8 0, i64 16, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  store i32 148, ptr %i.ji, align 8, !tbaa !156
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 20
  store i32 0, ptr %i.jj, align 4
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.jk, align 8, !tbaa !58
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  store ptr %.sroa.2.0.copyload.i.i165, ptr %i.jl, align 8, !tbaa !58
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.jm, align 8, !tbaa !58
  %i.jn = ptrtoint ptr %i.jh to i64
  br label %bb.ch

bb.ah:                                            ; preds = %bb.af
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !453
  %i.jq = icmp eq ptr %i.cq, %i.jp
  br i1 %i.jq, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.js = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.jr, i32 noundef 3) #9
  store ptr %i.js, ptr %i.b, align 8, !tbaa !7
  %i.jt = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl29parsePrefixTypeAnnotationFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.ju = extractvalue { i64, i8 } %i.jt, 1
  %i.jv = trunc nuw i8 %i.ju to i1
  br i1 %i.jv, label %bb.aj, label %bb.ch

bb.aj:                                            ; preds = %bb.ai
  %i.jw = extractvalue { i64, i8 } %i.jt, 0
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i173 = load ptr, ptr %i.jx, align 8, !tbaa !58
  %i.jy = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61
  %i.jz = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.jy, i64 noundef 8) ; 8 uses
  %i.ka = inttoptr i64 %i.jw to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.jz, i8 0, i64 16, i1 false)
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  store i32 158, ptr %i.kb, align 8, !tbaa !156
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 20
  store i32 0, ptr %i.kc, align 4
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 48
  store ptr %i.ka, ptr %i.kd, align 8, !tbaa !454
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.ke, align 8, !tbaa !58
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  store ptr %.sroa.0.0.copyload.i.i173, ptr %i.kf, align 8, !tbaa !58
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jz, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.kg, align 8, !tbaa !58
  %i.kh = ptrtoint ptr %i.jz to i64
  br label %bb.ch

bb.ak:                                            ; preds = %bb.ah
  %i.ki = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 184
  %i.kk = load i8, ptr %i.kj, align 8, !tbaa !62, !range !123, !noundef !60
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.al, label %bb.as

bb.al:                                            ; preds = %bb.ak
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 1744
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !155
  %i.ko = icmp eq ptr %i.cq, %i.kn
  br i1 %i.ko, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.kp = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl23parseRenderTypeOperatorEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.kq = extractvalue { i64, i8 } %i.kp, 1
  %i.kr = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl29parsePrefixTypeAnnotationFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.ks = extractvalue { i64, i8 } %i.kr, 1
  %i.kt = trunc nuw i8 %i.ks to i1
  %i.ku = trunc nuw i8 %i.kq to i1
  %or.cond342 = select i1 %i.kt, i1 %i.ku, i1 false
  br i1 %or.cond342, label %bb.an, label %bb.ch

bb.an:                                            ; preds = %bb.am
  %i.kv = extractvalue { i64, i8 } %i.kr, 0
  %i.kw = extractvalue { i64, i8 } %i.kp, 0
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i174 = load ptr, ptr %i.kx, align 8, !tbaa !58
  %i.ky = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61
  %i.kz = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.ky, i64 noundef 8) ; 9 uses
  %i.la = inttoptr i64 %i.kw to ptr
  %i.lb = inttoptr i64 %i.kv to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.kz, i8 0, i64 16, i1 false)
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  store i32 159, ptr %i.lc, align 8, !tbaa !156
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 20
  store i32 0, ptr %i.ld, align 4
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 48
  store ptr %i.la, ptr %i.le, align 8, !tbaa !285
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kz, i64 56
  store ptr %i.lb, ptr %i.lf, align 8, !tbaa !287
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.lg, align 8, !tbaa !58
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kz, i64 32
  store ptr %.sroa.0.0.copyload.i.i174, ptr %i.lh, align 8, !tbaa !58
  %i.li = getelementptr inbounds nuw i8, ptr %i.kz, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.li, align 8, !tbaa !58
  %i.lj = ptrtoint ptr %i.kz to i64
  br label %bb.ch

bb.ao:                                            ; preds = %bb.al
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 1728
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !127
  %i.lm = icmp eq ptr %i.cq, %i.ll
  br i1 %i.lm, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ln = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl32parseComponentTypeAnnotationFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.lo = extractvalue { i64, i8 } %i.ln, 0
  %i.lp = extractvalue { i64, i8 } %i.ln, 1       ; 2 uses
  %i.lq = trunc nuw i8 %i.lp to i1
  %spec.select = select i1 %i.lq, i64 %i.lo, i64 undef
  br label %bb.ch

bb.aq:                                            ; preds = %bb.ao
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !128
  %i.lt = icmp eq ptr %i.cq, %i.ls
  br i1 %i.lt, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.lu = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl27parseHookTypeAnnotationFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.lv = extractvalue { i64, i8 } %i.lu, 0
  %i.lw = extractvalue { i64, i8 } %i.lu, 1       ; 2 uses
  %i.lx = trunc nuw i8 %i.lw to i1
  %spec.select344 = select i1 %i.lx, i64 %i.lv, i64 undef
  br label %bb.ch

bb.as:                                            ; preds = %bb.ak, %bb.aq
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !130
  %i.ma = icmp eq ptr %i.cq, %i.lz
  br i1 %i.ma, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mc = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.mb, i32 noundef 3) #9
  store ptr %i.mc, ptr %i.b, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store ptr %2, ptr %2, align 8, !tbaa !151
  %i.md = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %2, ptr %i.md, align 8, !tbaa !154
  %i.me = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl22parseInterfaceTailFlowEN4llvh5SMLocERNS3_12simple_ilistINS_6ESTree4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  %i.mf = extractvalue { i64, i8 } %i.me, 1
  %i.mg = trunc nuw i8 %i.mf to i1
  br i1 %i.mg, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.mh = extractvalue { i64, i8 } %i.me, 0
  %i.mi = inttoptr i64 %i.mh to ptr               ; 2 uses
  %i.mj = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61
  %i.mk = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.mj, i64 noundef 8) ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.mk, i8 0, i64 16, i1 false)
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  store i32 173, ptr %i.ml, align 8, !tbaa !156
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.mm, i8 0, i64 28, i1 false)
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 48 ; 7 uses
  store ptr %i.mn, ptr %i.mn, align 8, !tbaa !151
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 56 ; 2 uses
  store ptr %i.mn, ptr %i.mo, align 8, !tbaa !154
  %i.mp = load ptr, ptr %i.md, align 8, !tbaa !154 ; 4 uses
  %i.mq = icmp eq ptr %i.mn, %2
  %i.mr = icmp eq ptr %i.mp, %2
  %or.cond.i.i.i.i.i.i180 = or i1 %i.mq, %i.mr
  br i1 %or.cond.i.i.i.i.i.i180, label %_ZN6hermes6ESTree27InterfaceTypeAnnotationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit181, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ms = load ptr, ptr %2, align 8, !tbaa !151   ; 2 uses
  %i.mt = load ptr, ptr %i.mp, align 8, !tbaa !151
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  store ptr %2, ptr %i.mu, align 8, !tbaa !154
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  store ptr %i.mn, ptr %i.mv, align 8, !tbaa !154
  store ptr %i.mn, ptr %i.mp, align 8, !tbaa !151
  store ptr %i.mp, ptr %i.mo, align 8, !tbaa !154
  store ptr %i.ms, ptr %i.mn, align 8, !tbaa !151
  br label %_ZN6hermes6ESTree27InterfaceTypeAnnotationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit181

_ZN6hermes6ESTree27InterfaceTypeAnnotationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit181: ; preds = %bb.au, %bb.av
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mk, i64 64
  store ptr %i.mi, ptr %i.mw, align 8, !tbaa !448
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mk, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.mx, align 8, !tbaa !58
  %i.my = getelementptr inbounds nuw i8, ptr %i.mi, i64 32
  %.sroa.0.0.copyload.i.i.i182 = load ptr, ptr %i.my, align 8, !tbaa !58
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mk, i64 32
  store ptr %.sroa.0.0.copyload.i.i.i182, ptr %i.mz, align 8, !tbaa !58
  %i.na = getelementptr inbounds nuw i8, ptr %i.mk, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.na, align 8, !tbaa !58
  %i.nb = ptrtoint ptr %i.mk to i64
  br label %bb.aw

bb.aw:                                            ; preds = %bb.at, %_ZN6hermes6ESTree27InterfaceTypeAnnotationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit181
  %.sroa.0338.5 = phi i64 [ %i.nb, %_ZN6hermes6ESTree27InterfaceTypeAnnotationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit181 ], [ undef, %bb.at ]
  %.sroa.32.5 = phi i8 [ 1, %_ZN6hermes6ESTree27InterfaceTypeAnnotationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit181 ], [ 0, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.ch

bb.ax:                                            ; preds = %bb.as
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !456
  %i.ne = icmp eq ptr %i.cq, %i.nd
  br i1 %i.ne, label %bb.ay, label %bb.bg

bb.ay:                                            ; preds = %bb.ax
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ng = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.nf, i32 noundef 3) #9
  store ptr %i.ng, ptr %i.b, align 8, !tbaa !7
  %i.nh = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl4needENS0_9TokenKindEPKcS5_N4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 1, ptr noundef nonnull @.str.94, ptr noundef null, ptr null) #9
  br i1 %i.nh, label %bb.az, label %bb.ch

bb.az:                                            ; preds = %bb.ay
  %i.ni = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 32
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !126
  %i.nl = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.nf, i32 noundef 3) #9 ; 2 uses
  store ptr %i.nl, ptr %i.b, align 8, !tbaa !7
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !124
  %i.nn = icmp eq i32 %i.nm, 38
  br i1 %i.nn, label %_ZN6hermes6parser7JSLexer9SavePointC2EPS1_.exit, label %bb.bf

_ZN6hermes6parser7JSLexer9SavePointC2EPS1_.exit:  ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store ptr %i.nf, ptr %3, align 8, !tbaa !280
  %i.no = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.nq = load i32, ptr %i.np, align 8, !tbaa !124 ; 2 uses
  store i32 %i.nq, ptr %i.no, align 8, !tbaa !277
  %i.nr = icmp eq i32 %i.nq, 1
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.nt = load ptr, ptr %i.ns, align 8
  %i.nu = select i1 %i.nr, ptr %i.nt, ptr null
  %i.nv = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.nu, ptr %i.nv, align 8, !tbaa !281
  %i.nw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !139
  store ptr %i.ny, ptr %i.nw, align 8
  %i.nz = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ob = load <2 x ptr>, ptr %i.oa, align 8, !tbaa !58
  store <2 x ptr> %i.ob, ptr %i.nz, align 8
  %i.oc = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i4.i = load ptr, ptr %i.od, align 8, !tbaa !58
  store ptr %.sroa.0.0.copyload.i4.i, ptr %i.oc, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !140
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !141
  %i.oj = ptrtoint ptr %i.oi to i64
  %i.ok = ptrtoint ptr %i.og to i64
  %i.ol = sub i64 %i.oj, %i.ok
  %i.om = sdiv exact i64 %i.ol, 24
  store i64 %i.om, ptr %i.oe, align 8, !tbaa !282
  %i.on = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !142
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !143
  %i.os = ptrtoint ptr %i.or to i64
  %i.ot = ptrtoint ptr %i.op to i64
  %i.ou = sub i64 %i.os, %i.ot
  %i.ov = sdiv exact i64 %i.ou, 24
  store i64 %i.ov, ptr %i.on, align 8, !tbaa !283
  %i.ow = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.nf, i32 noundef 3) #9
  store ptr %i.ow, ptr %i.b, align 8, !tbaa !7
  %i.ox = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl28parseUnionTypeAnnotationFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.oy = extractvalue { i64, i8 } %i.ox, 0
  %i.oz = extractvalue { i64, i8 } %i.ox, 1       ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 1237
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !457, !range !123, !noundef !60
  %i.pc = trunc nuw i8 %i.pb to i1
  br i1 %i.pc, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZN6hermes6parser7JSLexer9SavePointC2EPS1_.exit
  %i.pd = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.pe = load i32, ptr %i.pd, align 8, !tbaa !124
  %i.pf = icmp ne i32 %i.pe, 91
  %i.pg = trunc nuw i8 %i.oz to i1
  %or.cond346 = select i1 %i.pf, i1 %i.pg, i1 false
  br i1 %or.cond346, label %bb.bd, label %bb.bc

bb.bb:                                            ; preds = %_ZN6hermes6parser7JSLexer9SavePointC2EPS1_.exit
  %.old = trunc nuw i8 %i.oz to i1
  br i1 %.old, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  call void @_ZN6hermes6parser7JSLexer9SavePoint7restoreEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
  br label %bb.be

bb.bd:                                            ; preds = %bb.ba, %bb.bb
  %i.ph = inttoptr i64 %i.oy to ptr
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.0 = phi ptr [ null, %bb.bc ], [ %i.ph, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.az
  %.1 = phi ptr [ %.0, %bb.be ], [ null, %bb.az ]
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %.sroa.0.0.copyload.i.i201 = load ptr, ptr %i.pi, align 8, !tbaa !58
  %i.pj = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61
  %i.pk = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.pj, i64 noundef 8) ; 8 uses
  %.sroa.0.0.copyload.i.i202 = load ptr, ptr %i.pi, align 8, !tbaa !58
  %i.pl = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61
  %i.pm = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 96, ptr noundef nonnull align 8 dereferenceable(656) %i.pl, i64 noundef 8) ; 12 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %i.pm, i8 0, i64 16, i1 false)
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  store i32 203, ptr %i.pn, align 8, !tbaa !156
  %i.po = getelementptr inbounds nuw i8, ptr %i.pm, i64 20
  store i32 0, ptr %i.po, align 4
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pm, i64 48
  store ptr %i.nk, ptr %i.pp, align 8, !tbaa !458
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pm, i64 56
  store i8 0, ptr %i.pq, align 8, !tbaa !460
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pm, i64 64
  store ptr %.1, ptr %i.pr, align 8, !tbaa !461
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pm, i64 72
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pm, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ps, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.pt, align 8, !tbaa !462
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pm, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.pu, align 8, !tbaa !58
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pm, i64 32
  store ptr %.sroa.0.0.copyload.i.i202, ptr %i.pv, align 8, !tbaa !58
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pm, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.pw, align 8, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.pk, i8 0, i64 16, i1 false)
  %i.px = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  store i32 165, ptr %i.px, align 8, !tbaa !156
  %i.py = getelementptr inbounds nuw i8, ptr %i.pk, i64 20
  store i32 0, ptr %i.py, align 4
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pk, i64 48
  store ptr %i.pm, ptr %i.pz, align 8, !tbaa !463
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pk, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.qa, align 8, !tbaa !58
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pk, i64 32
  store ptr %.sroa.0.0.copyload.i.i201, ptr %i.qb, align 8, !tbaa !58
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pk, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.qc, align 8, !tbaa !58
  %i.qd = ptrtoint ptr %i.pk to i64
  br label %bb.ch

bb.bg:                                            ; preds = %bb.ax
  %i.qe = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl20parseGenericTypeFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.qf = extractvalue { i64, i8 } %i.qe, 0
  %i.qg = extractvalue { i64, i8 } %i.qe, 1       ; 2 uses
  %i.qh = trunc nuw i8 %i.qg to i1
  %spec.select347 = select i1 %i.qh, i64 %i.qf, i64 undef
  br label %bb.ch

bb.bh:                                            ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i204 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.2.0.copyload.i.i205 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i204, align 8, !tbaa !58
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qj = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.qi, i32 noundef 3) #9
  store ptr %i.qj, ptr %i.b, align 8, !tbaa !7
  %i.qk = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 24
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !181 ; 2 uses
  %i.qn = load i32, ptr %i.qm, align 8, !tbaa !182
  %i.qo = zext i32 %i.qn to i64
  %i.qp = load ptr, ptr %i.qk, align 8, !tbaa !188
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.qp, i64 %i.qo
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !189
  %i.qs = ptrtoint ptr %i.qr to i64               ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qm, i64 8 ; 3 uses
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !191 ; 2 uses
  %i.qv = add i64 %i.qs, 7
  %i.qw = add i64 %i.qv, %i.qu
  %i.qx = and i64 %i.qw, 7
  %.neg370 = add i64 %i.qu, 7
  %i.qy = sub i64 %.neg370, %i.qx                 ; 3 uses
  store i64 %i.qy, ptr %i.qt, align 8, !tbaa !191
  %i.qz = add i64 %i.qy, 48                       ; 2 uses
  %i.ra = icmp ugt i64 %i.qz, 262144
  br i1 %i.ra, label %.critedge.i.i.i209, label %bb.bi, !prof !148

.critedge.i.i.i209:                               ; preds = %bb.bh
  %i.rb = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.qk, i64 noundef 48, i64 noundef 8) #9
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit210

bb.bi:                                            ; preds = %bb.bh
  %i.rc = add i64 %i.qy, %i.qs
  %i.rd = inttoptr i64 %i.rc to ptr
  store i64 %i.qz, ptr %i.qt, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit210

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit210: ; preds = %.critedge.i.i.i209, %bb.bi
  %.0.i.i.i208 = phi ptr [ %i.rb, %.critedge.i.i.i209 ], [ %i.rd, %bb.bi ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i208, i8 0, i64 16, i1 false)
  %i.re = getelementptr inbounds nuw i8, ptr %.0.i.i.i208, i64 16
  store i32 144, ptr %i.re, align 8, !tbaa !156
  %i.rf = getelementptr inbounds nuw i8, ptr %.0.i.i.i208, i64 20
  store i32 0, ptr %i.rf, align 4
  %i.rg = getelementptr inbounds nuw i8, ptr %.0.i.i.i208, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.rg, align 8, !tbaa !58
  %i.rh = getelementptr inbounds nuw i8, ptr %.0.i.i.i208, i64 32
  store ptr %.sroa.2.0.copyload.i.i205, ptr %i.rh, align 8, !tbaa !58
  %i.ri = getelementptr inbounds nuw i8, ptr %.0.i.i.i208, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.ri, align 8, !tbaa !58
  %i.rj = ptrtoint ptr %.0.i.i.i208 to i64
  br label %bb.ch

bb.bj:                                            ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i212 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.2.0.copyload.i.i213 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i212, align 8, !tbaa !58
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rl = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.rk, i32 noundef 3) #9
  store ptr %i.rl, ptr %i.b, align 8, !tbaa !7
  %i.rm = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 24
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !181 ; 2 uses
  %i.rp = load i32, ptr %i.ro, align 8, !tbaa !182
  %i.rq = zext i32 %i.rp to i64
  %i.rr = load ptr, ptr %i.rm, align 8, !tbaa !188
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %i.rq
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !189
  %i.ru = ptrtoint ptr %i.rt to i64               ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ro, i64 8 ; 3 uses
  %i.rw = load i64, ptr %i.rv, align 8, !tbaa !191 ; 2 uses
  %i.rx = add i64 %i.ru, 7
  %i.ry = add i64 %i.rx, %i.rw
  %i.rz = and i64 %i.ry, 7
  %.neg367 = add i64 %i.rw, 7
  %i.sa = sub i64 %.neg367, %i.rz                 ; 3 uses
  store i64 %i.sa, ptr %i.rv, align 8, !tbaa !191
  %i.sb = add i64 %i.sa, 48                       ; 2 uses
  %i.sc = icmp ugt i64 %i.sb, 262144
  br i1 %i.sc, label %.critedge.i.i.i217, label %bb.bk, !prof !148

.critedge.i.i.i217:                               ; preds = %bb.bj
  %i.sd = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.rm, i64 noundef 48, i64 noundef 8) #9
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit218

bb.bk:                                            ; preds = %bb.bj
  %i.se = add i64 %i.sa, %i.ru
  %i.sf = inttoptr i64 %i.se to ptr
  store i64 %i.sb, ptr %i.rv, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit218

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit218: ; preds = %.critedge.i.i.i217, %bb.bk
  %.0.i.i.i216 = phi ptr [ %i.sd, %.critedge.i.i.i217 ], [ %i.sf, %bb.bk ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i216, i8 0, i64 16, i1 false)
  %i.sg = getelementptr inbounds nuw i8, ptr %.0.i.i.i216, i64 16
  store i32 149, ptr %i.sg, align 8, !tbaa !156
  %i.sh = getelementptr inbounds nuw i8, ptr %.0.i.i.i216, i64 20
  store i32 0, ptr %i.sh, align 4
  %i.si = getelementptr inbounds nuw i8, ptr %.0.i.i.i216, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.si, align 8, !tbaa !58
  %i.sj = getelementptr inbounds nuw i8, ptr %.0.i.i.i216, i64 32
  store ptr %.sroa.2.0.copyload.i.i213, ptr %i.sj, align 8, !tbaa !58
  %i.sk = getelementptr inbounds nuw i8, ptr %.0.i.i.i216, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.sk, align 8, !tbaa !58
  %i.sl = ptrtoint ptr %.0.i.i.i216 to i64
  br label %bb.ch

bb.bl:                                            ; preds = %bb.a
  %i.sm = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !255
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !338
  %i.sr = ptrtoint ptr %i.sq to i64
  %i.ss = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.st = sub i64 %i.sr, %i.ss                    ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 67
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !465, !range !123, !noundef !60
  %i.sw = trunc nuw i8 %i.sv to i1
  br i1 %i.sw, label %bb.bm, label %bb.bn, !prof !148

bb.bm:                                            ; preds = %bb.bl
  %i.sx = tail call noundef ptr @_ZN6hermes6parser7JSLexer25convertSurrogatesInStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(1160) %i.so, ptr %.sroa.0.0.copyload.i, i64 %i.st) #9
  br label %_ZN6hermes6parser7JSLexer16getStringLiteralEN4llvh9StringRefE.exit

bb.bn:                                            ; preds = %bb.bl
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !466, !nonnull !60, !align !61
  %i.ta = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.sz, ptr %.sroa.0.0.copyload.i, i64 %i.st)
  br label %_ZN6hermes6parser7JSLexer16getStringLiteralEN4llvh9StringRefE.exit

_ZN6hermes6parser7JSLexer16getStringLiteralEN4llvh9StringRefE.exit: ; preds = %bb.bm, %bb.bn
  %.0.i = phi ptr [ %i.sx, %bb.bm ], [ %i.ta, %bb.bn ]
  %i.tb = load ptr, ptr %i.b, align 8, !tbaa !7
  %.sroa.2.0..sroa_idx.i.i220 = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  %.sroa.2.0.copyload.i.i221 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i220, align 8, !tbaa !58
  %i.tc = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.so, i32 noundef 3) #9
  store ptr %i.tc, ptr %i.b, align 8, !tbaa !7
  %i.td = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 24
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !181 ; 2 uses
  %i.tg = load i32, ptr %i.tf, align 8, !tbaa !182
  %i.th = zext i32 %i.tg to i64
  %i.ti = load ptr, ptr %i.td, align 8, !tbaa !188
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.ti, i64 %i.th
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !189
  %i.tl = ptrtoint ptr %i.tk to i64               ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tf, i64 8 ; 3 uses
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !191 ; 2 uses
  %i.to = add i64 %i.tl, 7
  %i.tp = add i64 %i.to, %i.tn
  %i.tq = and i64 %i.tp, 7
  %.neg364 = add i64 %i.tn, 7
  %i.tr = sub i64 %.neg364, %i.tq                 ; 3 uses
  store i64 %i.tr, ptr %i.tm, align 8, !tbaa !191
  %i.ts = add i64 %i.tr, 64                       ; 2 uses
  %i.tt = icmp ugt i64 %i.ts, 262144
  br i1 %i.tt, label %.critedge.i.i.i225, label %bb.bo, !prof !148

.critedge.i.i.i225:                               ; preds = %_ZN6hermes6parser7JSLexer16getStringLiteralEN4llvh9StringRefE.exit
  %i.tu = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.td, i64 noundef 64, i64 noundef 8) #9
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit226

bb.bo:                                            ; preds = %_ZN6hermes6parser7JSLexer16getStringLiteralEN4llvh9StringRefE.exit
  %i.tv = add i64 %i.tr, %i.tl
  %i.tw = inttoptr i64 %i.tv to ptr
  store i64 %i.ts, ptr %i.tm, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit226

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit226: ; preds = %.critedge.i.i.i225, %bb.bo
  %.0.i.i.i224 = phi ptr [ %i.tu, %.critedge.i.i.i225 ], [ %i.tw, %bb.bo ] ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i224, i8 0, i64 16, i1 false)
  %i.tx = getelementptr inbounds nuw i8, ptr %.0.i.i.i224, i64 16
  store i32 139, ptr %i.tx, align 8, !tbaa !156
  %i.ty = getelementptr inbounds nuw i8, ptr %.0.i.i.i224, i64 20
  store i32 0, ptr %i.ty, align 4
  %i.tz = getelementptr inbounds nuw i8, ptr %.0.i.i.i224, i64 48
  store ptr %i.sn, ptr %i.tz, align 8, !tbaa !467
  %i.ua = getelementptr inbounds nuw i8, ptr %.0.i.i.i224, i64 56
  store ptr %.0.i, ptr %i.ua, align 8, !tbaa !469
  %i.ub = getelementptr inbounds nuw i8, ptr %.0.i.i.i224, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.ub, align 8, !tbaa !58
  %i.uc = getelementptr inbounds nuw i8, ptr %.0.i.i.i224, i64 32
  store ptr %.sroa.2.0.copyload.i.i221, ptr %i.uc, align 8, !tbaa !58
  %i.ud = getelementptr inbounds nuw i8, ptr %.0.i.i.i224, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.ud, align 8, !tbaa !58
  %i.ue = ptrtoint ptr %.0.i.i.i224 to i64
  br label %bb.ch

bb.bp:                                            ; preds = %bb.a
  %i.uf = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ug = load double, ptr %i.uf, align 8, !tbaa !364
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !338
  %i.uk = ptrtoint ptr %i.uj to i64
  %i.ul = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.um = sub i64 %i.uk, %i.ul                    ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 67
end_hunk_6
begin_hunk_7_@_ZN6hermes6parser6detail12JSParserImpl30parsePrimaryTypeAnnotationFlowEv:bb.a
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.xe = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.xd, i32 noundef 3) #9 ; 5 uses
  store ptr %i.xe, ptr %i.b, align 8, !tbaa !7
  %i.xf = load i32, ptr %i.xe, align 8, !tbaa !124
  switch i32 %i.xf, label %bb.cb [
    i32 111, label %bb.bw
    i32 115, label %bb.ca
  ]

bb.bw:                                            ; preds = %bb.bv
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xe, i64 24
  %i.xh = load double, ptr %i.xg, align 8, !tbaa !364
  %i.xi = fneg double %i.xh
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xe, i64 16
  %.sroa.0.0.copyload.i252 = load ptr, ptr %i.xj, align 8, !tbaa !58
  %i.xk = ptrtoint ptr %.sroa.0.0.copyload.i252 to i64
  %i.xl = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.xm = sub i64 %i.xk, %i.xl                    ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 67
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !465, !range !123, !noundef !60
  %i.xp = trunc nuw i8 %i.xo to i1
  br i1 %i.xp, label %bb.bx, label %bb.by, !prof !148

bb.bx:                                            ; preds = %bb.bw
  %i.xq = tail call noundef ptr @_ZN6hermes6parser7JSLexer25convertSurrogatesInStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(1160) %i.xd, ptr %.sroa.0.0.copyload.i, i64 %i.xm) #9
  br label %_ZN6hermes6parser7JSLexer16getStringLiteralEN4llvh9StringRefE.exit254

bb.by:                                            ; preds = %bb.bw
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !466, !nonnull !60, !align !61
  %i.xt = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.xs, ptr %.sroa.0.0.copyload.i, i64 %i.xm)
  br label %_ZN6hermes6parser7JSLexer16getStringLiteralEN4llvh9StringRefE.exit254

_ZN6hermes6parser7JSLexer16getStringLiteralEN4llvh9StringRefE.exit254: ; preds = %bb.bx, %bb.by
  %.0.i253 = phi ptr [ %i.xq, %bb.bx ], [ %i.xt, %bb.by ]
  %i.xu = load ptr, ptr %i.b, align 8, !tbaa !7
  %.sroa.2.0..sroa_idx.i.i256 = getelementptr inbounds nuw i8, ptr %i.xu, i64 16
  %.sroa.2.0.copyload.i.i257 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i256, align 8, !tbaa !58
  %i.xv = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.xd, i32 noundef 3) #9
  store ptr %i.xv, ptr %i.b, align 8, !tbaa !7
  %i.xw = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 24
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !181 ; 2 uses
  %i.xz = load i32, ptr %i.xy, align 8, !tbaa !182
  %i.ya = zext i32 %i.xz to i64
  %i.yb = load ptr, ptr %i.xw, align 8, !tbaa !188
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %i.yb, i64 %i.ya
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !189
  %i.ye = ptrtoint ptr %i.yd to i64               ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xy, i64 8 ; 3 uses
  %i.yg = load i64, ptr %i.yf, align 8, !tbaa !191 ; 2 uses
  %i.yh = add i64 %i.ye, 7
  %i.yi = add i64 %i.yh, %i.yg
  %i.yj = and i64 %i.yi, 7
  %.neg355 = add i64 %i.yg, 7
  %i.yk = sub i64 %.neg355, %i.yj                 ; 3 uses
  store i64 %i.yk, ptr %i.yf, align 8, !tbaa !191
  %i.yl = add i64 %i.yk, 64                       ; 2 uses
  %i.ym = icmp ugt i64 %i.yl, 262144
  br i1 %i.ym, label %.critedge.i.i.i261, label %bb.bz, !prof !148

.critedge.i.i.i261:                               ; preds = %_ZN6hermes6parser7JSLexer16getStringLiteralEN4llvh9StringRefE.exit254
  %i.yn = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.xw, i64 noundef 64, i64 noundef 8) #9
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit262

bb.bz:                                            ; preds = %_ZN6hermes6parser7JSLexer16getStringLiteralEN4llvh9StringRefE.exit254
  %i.yo = add i64 %i.yk, %i.ye
  %i.yp = inttoptr i64 %i.yo to ptr
  store i64 %i.yl, ptr %i.yf, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit262

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit262: ; preds = %.critedge.i.i.i261, %bb.bz
  %.0.i.i.i260 = phi ptr [ %i.yn, %.critedge.i.i.i261 ], [ %i.yp, %bb.bz ] ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i260, i8 0, i64 16, i1 false)
  %i.yq = getelementptr inbounds nuw i8, ptr %.0.i.i.i260, i64 16
  store i32 140, ptr %i.yq, align 8, !tbaa !156
  %i.yr = getelementptr inbounds nuw i8, ptr %.0.i.i.i260, i64 20
  store i32 0, ptr %i.yr, align 4
  %i.ys = getelementptr inbounds nuw i8, ptr %.0.i.i.i260, i64 48
  store double %i.xi, ptr %i.ys, align 8, !tbaa !470
  %i.yt = getelementptr inbounds nuw i8, ptr %.0.i.i.i260, i64 56
  store ptr %.0.i253, ptr %i.yt, align 8, !tbaa !472
  %i.yu = getelementptr inbounds nuw i8, ptr %.0.i.i.i260, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.yu, align 8, !tbaa !58
  %i.yv = getelementptr inbounds nuw i8, ptr %.0.i.i.i260, i64 32
  store ptr %.sroa.2.0.copyload.i.i257, ptr %i.yv, align 8, !tbaa !58
  %i.yw = getelementptr inbounds nuw i8, ptr %.0.i.i.i260, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.yw, align 8, !tbaa !58
  %i.yx = ptrtoint ptr %.0.i.i.i260 to i64
  br label %bb.ch

bb.ca:                                            ; preds = %bb.bv
  %i.yy = getelementptr inbounds nuw i8, ptr %i.xe, i64 16
  %.sroa.0.0.copyload.i263 = load ptr, ptr %i.yy, align 8, !tbaa !58
  %i.yz = ptrtoint ptr %.sroa.0.0.copyload.i263 to i64
  %i.za = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.zb = sub i64 %i.yz, %i.za
  %i.zc = tail call noundef ptr @_ZN6hermes6parser7JSLexer16getStringLiteralEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(1160) %i.xd, ptr %.sroa.0.0.copyload.i, i64 %i.zb)
  %i.zd = load ptr, ptr %i.b, align 8, !tbaa !7
  %.sroa.2.0..sroa_idx.i.i265 = getelementptr inbounds nuw i8, ptr %i.zd, i64 16
  %.sroa.2.0.copyload.i.i266 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i265, align 8, !tbaa !58
  %i.ze = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.xd, i32 noundef 3) #9
  store ptr %i.ze, ptr %i.b, align 8, !tbaa !7
  %i.zf = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61
  %i.zg = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.zf, i64 noundef 8) ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.zg, i8 0, i64 16, i1 false)
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  store i32 141, ptr %i.zh, align 8, !tbaa !156
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zg, i64 20
  store i32 0, ptr %i.zi, align 4
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zg, i64 48
  store ptr %i.zc, ptr %i.zj, align 8, !tbaa !473
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zg, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.zk, align 8, !tbaa !58
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zg, i64 32
  store ptr %.sroa.2.0.copyload.i.i266, ptr %i.zl, align 8, !tbaa !58
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zg, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.zm, align 8, !tbaa !58
  %i.zn = ptrtoint ptr %i.zg to i64
  br label %bb.ch

bb.cb:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 111, ptr %i.a, align 4, !tbaa !150
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr nonnull %i.a, i64 1, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, ptr %.sroa.0.0.copyload.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ch

bb.cc:                                            ; preds = %bb.a, %bb.a
  %i.zo = icmp eq i32 %i.e, 14
  %i.zp = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !126
  %.sroa.2.0..sroa_idx.i.i270 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.2.0.copyload.i.i271 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i270, align 8, !tbaa !58
  %i.zr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.zs = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.zr, i32 noundef 3) #9
  store ptr %i.zs, ptr %i.b, align 8, !tbaa !7
  %i.zt = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 24
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !181 ; 2 uses
  %i.zw = load i32, ptr %i.zv, align 8, !tbaa !182
  %i.zx = zext i32 %i.zw to i64
  %i.zy = load ptr, ptr %i.zt, align 8, !tbaa !188
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %i.zy, i64 %i.zx
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !189
  %i.aab = ptrtoint ptr %i.aaa to i64             ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zv, i64 8 ; 3 uses
  %i.aad = load i64, ptr %i.aac, align 8, !tbaa !191 ; 2 uses
  %i.aae = add i64 %i.aab, 7
  %i.aaf = add i64 %i.aae, %i.aad
  %i.aag = and i64 %i.aaf, 7
  %.neg352 = add i64 %i.aad, 7
  %i.aah = sub i64 %.neg352, %i.aag               ; 3 uses
  store i64 %i.aah, ptr %i.aac, align 8, !tbaa !191
  %i.aai = add i64 %i.aah, 64                     ; 2 uses
  %i.aaj = icmp ugt i64 %i.aai, 262144
  br i1 %i.aaj, label %.critedge.i.i.i275, label %bb.cd, !prof !148

.critedge.i.i.i275:                               ; preds = %bb.cc
  %i.aak = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.zt, i64 noundef 64, i64 noundef 8) #9
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit276

bb.cd:                                            ; preds = %bb.cc
  %i.aal = add i64 %i.aah, %i.aab
  %i.aam = inttoptr i64 %i.aal to ptr
  store i64 %i.aai, ptr %i.aac, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit276

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit276: ; preds = %.critedge.i.i.i275, %bb.cd
  %.0.i.i.i274 = phi ptr [ %i.aak, %.critedge.i.i.i275 ], [ %i.aam, %bb.cd ] ; 9 uses
  %i.aan = zext i1 %i.zo to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i274, i8 0, i64 16, i1 false)
  %i.aao = getelementptr inbounds nuw i8, ptr %.0.i.i.i274, i64 16
  store i32 143, ptr %i.aao, align 8, !tbaa !156
  %i.aap = getelementptr inbounds nuw i8, ptr %.0.i.i.i274, i64 20
  store i32 0, ptr %i.aap, align 4
  %i.aaq = getelementptr inbounds nuw i8, ptr %.0.i.i.i274, i64 48
  store i8 %i.aan, ptr %i.aaq, align 8, !tbaa !475
  %i.aar = getelementptr inbounds nuw i8, ptr %.0.i.i.i274, i64 56
  store ptr %i.zq, ptr %i.aar, align 8, !tbaa !477
  %i.aas = getelementptr inbounds nuw i8, ptr %.0.i.i.i274, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.aas, align 8, !tbaa !58
  %i.aat = getelementptr inbounds nuw i8, ptr %.0.i.i.i274, i64 32
  store ptr %.sroa.2.0.copyload.i.i271, ptr %i.aat, align 8, !tbaa !58
  %i.aau = getelementptr inbounds nuw i8, ptr %.0.i.i.i274, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.aau, align 8, !tbaa !58
  %i.aav = ptrtoint ptr %.0.i.i.i274 to i64
  br label %bb.ch

bb.ce:                                            ; preds = %bb.a
  %i.aaw = add i32 %i.e, -4
  %spec.select.i = icmp ult i32 %i.aaw, 44
  br i1 %spec.select.i, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.aax = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl20parseGenericTypeFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.aay = extractvalue { i64, i8 } %i.aax, 0
  %i.aaz = extractvalue { i64, i8 } %i.aax, 1     ; 2 uses
  %i.aba = trunc nuw i8 %i.aaz to i1
  %spec.select349 = select i1 %i.aba, i64 %i.aay, i64 undef
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.abb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.abc = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.abc, align 1, !tbaa !132
  store ptr @.str.97, ptr %4, align 8, !tbaa !135
  store i8 3, ptr %i.abb, align 8, !tbaa !136
  %i.abd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !137, !nonnull !60, !align !61
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.abe, i32 noundef 0, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(18) %4, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cf, %bb.bg, %bb.ar, %bb.ap, %bb.ay, %bb.an, %bb.am, %bb.aj, %bb.ai, %bb.cg, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit276, %bb.cb, %bb.ca, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit262, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit246, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit238, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit226, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit218, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit210, %bb.bf, %bb.aw, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit147, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit139, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit131, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit123, %bb.m, %bb.l, %bb.k, %bb.f, %bb.e, %bb.d, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %.sroa.0338.8 = phi i64 [ %spec.select, %bb.ap ], [ undef, %bb.cg ], [ %i.ag, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ %i.ai, %bb.d ], [ %i.al, %bb.e ], [ %i.ao, %bb.f ], [ %.sroa.0338.0, %bb.k ], [ %i.ck, %bb.l ], [ %i.cn, %bb.m ], [ %i.dv, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit123 ], [ %i.fa, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit131 ], [ %i.gf, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit139 ], [ %i.hn, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit147 ], [ %i.ia, %bb.aa ], [ %i.in, %bb.ac ], [ %i.ja, %bb.ae ], [ %i.jn, %bb.ag ], [ %i.aav, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit276 ], [ undef, %bb.ai ], [ undef, %bb.am ], [ %spec.select347, %bb.bg ], [ %.sroa.0338.5, %bb.aw ], [ %i.qd, %bb.bf ], [ %spec.select344, %bb.ar ], [ undef, %bb.ay ], [ %i.rj, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit210 ], [ %i.sl, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit218 ], [ %i.ue, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit226 ], [ %i.vx, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit238 ], [ %i.xc, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit246 ], [ %i.yx, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit262 ], [ %i.zn, %bb.ca ], [ undef, %bb.cb ], [ %i.kh, %bb.aj ], [ %i.lj, %bb.an ], [ %spec.select349, %bb.cf ]
  %.sroa.32.8 = phi i8 [ %i.lp, %bb.ap ], [ 0, %bb.cg ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ %i.aj, %bb.d ], [ %i.am, %bb.e ], [ %i.ap, %bb.f ], [ %.sroa.32.0, %bb.k ], [ %i.cl, %bb.l ], [ %i.co, %bb.m ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit123 ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit131 ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit139 ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit147 ], [ 1, %bb.aa ], [ 1, %bb.ac ], [ 1, %bb.ae ], [ 1, %bb.ag ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit276 ], [ 0, %bb.ai ], [ 0, %bb.am ], [ %i.qg, %bb.bg ], [ %.sroa.32.5, %bb.aw ], [ 1, %bb.bf ], [ %i.lw, %bb.ar ], [ 0, %bb.ay ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit210 ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit218 ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit226 ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit238 ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit246 ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit262 ], [ 1, %bb.ca ], [ 0, %bb.cb ], [ 1, %bb.aj ], [ 1, %bb.an ], [ %i.aaz, %bb.cf ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.0338.8, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.32.8, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl31parseFunctionTypeAnnotationFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl37parseFunctionOrHookTypeAnnotationFlowEb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i1 noundef zeroext false)
  ret { i64, i8 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl38parseFunctionOrGroupTypeAnnotationFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvh::simple_ilist", align 8 ; 19 uses
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 8, !tbaa !58 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.d, i32 noundef 3) #9 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  store ptr %1, ptr %1, align 8, !tbaa !151
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %1, ptr %i.f, align 8, !tbaa !154
  %i.g = load i32, ptr %i.e, align 8, !tbaa !124
  %i.h = icmp eq i32 %i.g, 13
  br i1 %i.h, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.i = call i64 @_ZN6hermes6parser7JSLexer10lookahead1ILb1EEENS_8OptValueINS0_9TokenKindEEES5_(ptr noundef nonnull align 8 dereferenceable(1160) %i.d, i64 0) #9 ; 2 uses
  %i.j = and i64 %i.i, 4294967296
  %.not123 = icmp eq i64 %i.j, 0
  br i1 %.not123, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %trunc = trunc i64 %i.i to i32
  switch i32 %trunc, label %bb.h [
    i32 92, label %bb.d
    i32 91, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0.0.copyload.i.i49 = load ptr, ptr %i.l, align 8, !tbaa !58 ; 2 uses
  %i.m = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.d, i32 noundef 3) #9
  store ptr %i.m, ptr %i.a, align 8, !tbaa !7
  %i.n = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.d, i32 noundef 3) #9
  store ptr %i.n, ptr %i.a, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1236 ; 4 uses
  %i.p = load i8, ptr %i.o, align 4, !tbaa !177, !range !123, !noundef !60 ; 2 uses
  store i8 1, ptr %i.o, align 4, !tbaa !177
  %i.q = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl34parseConditionalTypeAnnotationFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0), !inline_history !208 ; 2 uses
  %i.r = extractvalue { i64, i8 } %i.q, 1
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit

_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit: ; preds = %bb.d
  store i8 %i.p, ptr %i.o, align 4, !tbaa !177
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.t = extractvalue { i64, i8 } %i.q, 0
  store i8 %i.p, ptr %i.o, align 4, !tbaa !177
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i59 = load ptr, ptr %i.v, align 8, !tbaa !58
  %i.w = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !181  ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !182
  %i.aa = zext i32 %i.z to i64
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !188
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !189
  %i.ae = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !191
  %i.ah = add i64 %i.ag, 7                        ; 2 uses
  %i.ai = add i64 %i.ah, %i.ae
  %i.aj = and i64 %i.ai, 7
  %i.ak = sub i64 %i.ah, %i.aj                    ; 3 uses
  store i64 %i.ak, ptr %i.af, align 8, !tbaa !191
  %i.al = add i64 %i.ak, 72                       ; 2 uses
  %i.am = icmp ugt i64 %i.al, 262144
  br i1 %i.am, label %.critedge.i.i.i, label %bb.f, !prof !148

.critedge.i.i.i:                                  ; preds = %bb.e
  %i.an = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.w, i64 noundef 72, i64 noundef 8) #9
  br label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ao = add i64 %i.ak, %i.ae
  %i.ap = inttoptr i64 %i.ao to ptr
  store i64 %i.al, ptr %i.af, align 8, !tbaa !191
  br label %.thread

.thread:                                          ; preds = %bb.f, %.critedge.i.i.i
  %.0.i.i.i = phi ptr [ %i.an, %.critedge.i.i.i ], [ %i.ap, %bb.f ] ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 152, ptr %i.aq, align 8, !tbaa !156
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.ar, i8 0, i64 36, i1 false)
  store ptr %i.u, ptr %i.as, align 8, !tbaa !415
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64
  store i8 0, ptr %i.at, align 8, !tbaa !417
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i.i49, ptr %i.au, align 8, !tbaa !58
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i59, ptr %i.av, align 8, !tbaa !58
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i49, ptr %i.aw, align 8, !tbaa !58
  %i.ax = call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 61, i32 noundef 3) #9 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.az, align 8, !tbaa !58
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.bb, align 1, !tbaa !132
  store ptr @.str.107, ptr %2, align 8, !tbaa !135
  store i8 3, ptr %i.ba, align 8, !tbaa !136
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !137, !nonnull !60, !align !61
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.bd, i32 noundef 0, ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %.thread, %bb.b, %bb.a
  %.341 = phi ptr [ null, %bb.a ], [ %.0.i.i.i, %.thread ], [ null, %bb.g ], [ null, %bb.c ], [ null, %bb.b ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1236 ; 4 uses
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !436, !range !123, !noundef !60
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bh = call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 59, i32 noundef 3) #9
  br i1 %i.bh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bi = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl36parseFunctionTypeAnnotationParamFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0)
  %.fr129 = freeze { i64, i8 } %i.bi              ; 2 uses
  %i.bj = extractvalue { i64, i8 } %.fr129, 1
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %.thread92, label %.critedge

.thread92:                                        ; preds = %bb.j
  %i.bl = extractvalue { i64, i8 } %.fr129, 0
  %i.bm = inttoptr i64 %i.bl to ptr
  br label %.thread97

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !124
  %i.bp = icmp eq i32 %i.bo, 54
  br i1 %i.bp, label %.thread97, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl36parseFunctionTypeAnnotationParamFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.br = extractvalue { i64, i8 } %i.bq, 1
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.bt = extractvalue { i64, i8 } %i.bq, 0
  %i.bu = inttoptr i64 %i.bt to ptr               ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !415 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !478
  %.not = icmp eq ptr %i.by, null
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !417, !range !123, !noundef !60
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.0 = phi i8 [ 1, %bb.o ], [ 0, %bb.n ]         ; 2 uses
  %i.cc = load ptr, ptr %1, align 8, !tbaa !151   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %1, ptr %i.cd, align 8, !tbaa !154
  store ptr %i.cc, ptr %i.bu, align 8, !tbaa !151
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
end_hunk_7
begin_hunk_8_@_ZN6hermes6parser6detail12JSParserImpl17parseEnumBodyFlowENS_8OptValueINS2_8EnumKindEEEN4llvh8OptionalINS6_5SMLocEEE:bb.a
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !137, !nonnull !60, !align !61
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.aw, i32 noundef 0, ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(18) %6, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !137, !nonnull !60, !align !61
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 1, ptr %i.az, align 1, !tbaa !132
  store ptr @.str.151, ptr %12, align 8, !tbaa !135
  store i8 3, ptr %i.ay, align 8, !tbaa !136
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ax, i32 noundef 3, ptr %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(18) %12, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  br label %.critedge64

bb.i:                                             ; preds = %bb.g
  %.sroa.0144.sroa.0.0.extract.trunc = trunc i40 %i.aa to i32
  %.sroa.0144.sroa.7.0.extract.shift = lshr i40 %i.aa, 32
  %.sroa.0144.sroa.7.0.extract.trunc = trunc nuw nsw i40 %.sroa.0144.sroa.7.0.extract.shift to i8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.0144.sroa.0.1 = phi i32 [ %.sroa.0144.sroa.0.0.extract.trunc, %bb.i ], [ %.sroa.0144.sroa.0.0, %bb.h ] ; 2 uses
  %.sroa.0144.sroa.7.1 = phi i8 [ %.sroa.0144.sroa.7.0.extract.trunc, %bb.i ], [ 1, %bb.h ] ; 2 uses
  %i.ba = load ptr, ptr %4, align 8, !tbaa !151   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %4, ptr %i.bb, align 8, !tbaa !154
  store ptr %i.ba, ptr %i.v, align 8, !tbaa !151
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.v, ptr %i.bc, align 8, !tbaa !154
  store ptr %i.v, ptr %4, align 8, !tbaa !151
  %i.bd = call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 61, i32 noundef 0) #9
  br i1 %i.bd, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.b, %bb.j, %bb.c
  %.sroa.0144.sroa.0.4 = phi i32 [ %.sroa.0144.sroa.0.0, %bb.c ], [ %.sroa.0144.sroa.0.1, %bb.j ], [ %.sroa.0144.sroa.0.0, %bb.b ] ; 2 uses
  %.sroa.0144.sroa.7.4 = phi i8 [ %.sroa.0144.sroa.7.0, %bb.c ], [ %.sroa.0144.sroa.7.1, %bb.j ], [ %.sroa.0144.sroa.7.0, %bb.b ] ; 2 uses
  %.1 = phi i8 [ 1, %bb.c ], [ 0, %bb.j ], [ 0, %bb.b ] ; 6 uses
  %i.be = load ptr, ptr %4, align 8, !tbaa !151
  %i.bf = icmp eq ptr %4, %i.be
  br i1 %i.bf, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !154 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !156
  %i.bj = icmp eq i32 %i.bi, 216                  ; 2 uses
  %.not174203 = icmp eq ptr %i.bg, %4
  br i1 %.not174203, label %.critedge62, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.critedge
  %.sroa.0136.0204 = phi ptr [ %i.bz, %.critedge ], [ %i.bg, %bb.k ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0136.0204, i64 16
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !156
  %i.bm = icmp eq i32 %i.bl, 216
  %i.bn = xor i1 %i.bj, %i.bm
  br i1 %i.bn, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.lr.ph
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0136.0204, i64 24
  %.sroa.0.0.copyload.i99 = load ptr, ptr %i.bo, align 8, !tbaa !58
  %.sroa.2.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %.sroa.0136.0204, i64 32
  %.sroa.2.0.copyload.i101 = load ptr, ptr %.sroa.2.0..sroa_idx.i100, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 17
  store i8 1, ptr %i.bq, align 1, !tbaa !132
  store ptr @.str.152, ptr %13, align 8, !tbaa !135
  store i8 3, ptr %i.bp, align 8, !tbaa !136
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !137, !nonnull !60, !align !61
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.bs, i32 noundef 0, ptr %.sroa.0.0.copyload.i99, ptr %.sroa.2.0.copyload.i101, ptr noundef nonnull align 8 dereferenceable(18) %13, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !137, !nonnull !60, !align !61
  %i.bu = load ptr, ptr %i.f, align 8, !tbaa !154 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %.sroa.0.0.copyload.i104 = load ptr, ptr %i.bv, align 8, !tbaa !58
  %.sroa.2.0..sroa_idx.i105 = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %.sroa.2.0.copyload.i106 = load ptr, ptr %.sroa.2.0..sroa_idx.i105, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.bw = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %14, i64 17
  store i8 1, ptr %i.bx, align 1, !tbaa !132
  store ptr @.str.153, ptr %14, align 8, !tbaa !135
  store i8 3, ptr %i.bw, align 8, !tbaa !136
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.bt, i32 noundef 3, ptr %.sroa.0.0.copyload.i104, ptr %.sroa.2.0.copyload.i106, ptr noundef nonnull align 8 dereferenceable(18) %14, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  br label %.critedge64

.critedge:                                        ; preds = %.lr.ph
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0136.0204, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !154 ; 2 uses
  %.not174 = icmp eq ptr %i.bz, %4
  br i1 %.not174, label %.critedge62, label %.lr.ph

.critedge62:                                      ; preds = %.critedge, %bb.k
  %i.ca = trunc nuw i8 %.sroa.0144.sroa.7.4 to i1
  %or.cond = select i1 %i.bj, i1 %i.ca, i1 false
  %or.cond.fr = freeze i1 %or.cond
  br i1 %or.cond.fr, label %switch.early.test, label %bb.n

switch.early.test:                                ; preds = %.critedge62
  switch i32 %.sroa.0144.sroa.0.4, label %bb.m [
    i32 4, label %bb.n
    i32 0, label %bb.n
  ]

bb.m:                                             ; preds = %switch.early.test
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #9
  %i.cb = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %15, i64 17
  store i8 1, ptr %i.cc, align 1, !tbaa !132
  store ptr @.str.154, ptr %15, align 8, !tbaa !135
  store i8 3, ptr %i.cb, align 8, !tbaa !136
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !137, !nonnull !60, !align !61
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ce, i32 noundef 0, ptr %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(18) %15, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  br label %.critedge64

bb.n:                                             ; preds = %switch.early.test, %switch.early.test, %.critedge62, %.thread
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.sroa.0.0.copyload.i109 = load ptr, ptr %i.cg, align 8, !tbaa !58 ; 6 uses
  %i.ch = call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl3eatENS0_9TokenKindENS0_7JSLexer14GrammarContextEPKcS7_N4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 51, i32 noundef 0, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.156, ptr %.sroa.0.0.copyload.i.i) #9
  br i1 %i.ch, label %bb.o, label %.critedge64

bb.o:                                             ; preds = %bb.n
  %i.ci = trunc nuw i8 %3 to i1
  %i.cj = inttoptr i64 %2 to ptr
  %spec.select = select i1 %i.ci, ptr %i.cj, ptr %.sroa.0.0.copyload.i.i ; 12 uses
  %i.ck = trunc nuw i8 %.sroa.0144.sroa.7.4 to i1
  %i.cl = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !181 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !182
  %i.cp = zext i32 %i.co to i64
  %i.cq = load ptr, ptr %i.cl, align 8, !tbaa !188
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cp
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !189
  %i.ct = ptrtoint ptr %i.cs to i64               ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 8 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !191 ; 2 uses
  %i.cw = add i64 %i.ct, 7
  %i.cx = add i64 %i.cw, %i.cv
  %i.cy = and i64 %i.cx, 7
  %.neg191 = add i64 %i.cv, 7
  %i.cz = sub i64 %.neg191, %i.cy                 ; 8 uses
  store i64 %i.cz, ptr %i.cu, align 8, !tbaa !191
  %i.da = add i64 %i.cz, 72                       ; 7 uses
  %i.db = icmp ugt i64 %i.da, 262144              ; 6 uses
  br i1 %i.ck, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.db, label %.critedge.i.i.i, label %bb.q, !prof !148

.critedge.i.i.i:                                  ; preds = %bb.p
  %i.dc = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.cl, i64 noundef 72, i64 noundef 8) #9
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.q:                                             ; preds = %bb.p
  %i.dd = add i64 %i.cz, %i.ct
  %i.de = inttoptr i64 %i.dd to ptr
  store i64 %i.da, ptr %i.cu, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.q
  %.0.i.i.i = phi ptr [ %i.dc, %.critedge.i.i.i ], [ %i.de, %bb.q ] ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(66) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 211, ptr %i.df, align 8, !tbaa !156
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.dg, i8 0, i64 28, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48 ; 7 uses
  store ptr %i.dh, ptr %i.dh, align 8, !tbaa !151
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56 ; 2 uses
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !154
  %i.dj = load ptr, ptr %i.f, align 8, !tbaa !154 ; 4 uses
  %i.dk = icmp eq ptr %i.dh, %4
  %i.dl = icmp eq ptr %i.dj, %4
  %or.cond.i.i.i.i.i.i = or i1 %i.dk, %i.dl
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN6hermes6ESTree18EnumStringBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit, label %bb.r

bb.r:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %i.dm = load ptr, ptr %4, align 8, !tbaa !151   ; 2 uses
  %i.dn = load ptr, ptr %i.dj, align 8, !tbaa !151
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr %4, ptr %i.do, align 8, !tbaa !154
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.dh, ptr %i.dp, align 8, !tbaa !154
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !151
  store ptr %i.dj, ptr %i.di, align 8, !tbaa !154
  store ptr %i.dm, ptr %i.dh, align 8, !tbaa !151
  br label %_ZN6hermes6ESTree18EnumStringBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit

_ZN6hermes6ESTree18EnumStringBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit, %bb.r
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64
  store i8 %3, ptr %i.dq, align 8, !tbaa !562
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 65
  store i8 %.1, ptr %i.dr, align 1, !tbaa !564
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %spec.select, ptr %i.ds, align 8, !tbaa !58
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i109, ptr %i.dt, align 8, !tbaa !58
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %spec.select, ptr %i.du, align 8, !tbaa !58
  %i.dv = ptrtoint ptr %.0.i.i.i to i64
  br label %.critedge64

bb.s:                                             ; preds = %bb.o
  switch i32 %.sroa.0144.sroa.0.4, label %bb.ai [
    i32 0, label %bb.t
    i32 1, label %bb.w
    i32 2, label %bb.z
    i32 3, label %bb.ac
    i32 4, label %bb.af
  ]

bb.t:                                             ; preds = %bb.s
  br i1 %i.db, label %.critedge.i.i.i111, label %bb.u, !prof !148

.critedge.i.i.i111:                               ; preds = %bb.t
  %i.dw = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.cl, i64 noundef 72, i64 noundef 8) #9
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit112

bb.u:                                             ; preds = %bb.t
  %i.dx = add i64 %i.cz, %i.ct
  %i.dy = inttoptr i64 %i.dx to ptr
  store i64 %i.da, ptr %i.cu, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit112

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit112: ; preds = %.critedge.i.i.i111, %bb.u
  %.0.i.i.i110 = phi ptr [ %i.dw, %.critedge.i.i.i111 ], [ %i.dy, %bb.u ] ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(66) %.0.i.i.i110, i8 0, i64 16, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i.i.i110, i64 16
  store i32 211, ptr %i.dz, align 8, !tbaa !156
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i.i.i110, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ea, i8 0, i64 28, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i.i.i110, i64 48 ; 7 uses
  store ptr %i.eb, ptr %i.eb, align 8, !tbaa !151
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i.i.i110, i64 56 ; 2 uses
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !154
  %i.ed = load ptr, ptr %i.f, align 8, !tbaa !154 ; 4 uses
  %i.ee = icmp eq ptr %i.eb, %4
  %i.ef = icmp eq ptr %i.ed, %4
  %or.cond.i.i.i.i.i.i113 = or i1 %i.ee, %i.ef
  br i1 %or.cond.i.i.i.i.i.i113, label %_ZN6hermes6ESTree18EnumStringBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit114, label %bb.v

bb.v:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit112
  %i.eg = load ptr, ptr %4, align 8, !tbaa !151   ; 2 uses
  %i.eh = load ptr, ptr %i.ed, align 8, !tbaa !151
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr %4, ptr %i.ei, align 8, !tbaa !154
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store ptr %i.eb, ptr %i.ej, align 8, !tbaa !154
  store ptr %i.eb, ptr %i.ed, align 8, !tbaa !151
  store ptr %i.ed, ptr %i.ec, align 8, !tbaa !154
  store ptr %i.eg, ptr %i.eb, align 8, !tbaa !151
  br label %_ZN6hermes6ESTree18EnumStringBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit114

_ZN6hermes6ESTree18EnumStringBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit114: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit112, %bb.v
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i.i.i110, i64 64
  store i8 %3, ptr %i.ek, align 8, !tbaa !562
  %i.el = getelementptr inbounds nuw i8, ptr %.0.i.i.i110, i64 65
  store i8 %.1, ptr %i.el, align 1, !tbaa !564
  %i.em = getelementptr inbounds nuw i8, ptr %.0.i.i.i110, i64 24
  store ptr %spec.select, ptr %i.em, align 8, !tbaa !58
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i.i.i110, i64 32
  store ptr %.sroa.0.0.copyload.i109, ptr %i.en, align 8, !tbaa !58
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i.i.i110, i64 40
  store ptr %spec.select, ptr %i.eo, align 8, !tbaa !58
  %i.ep = ptrtoint ptr %.0.i.i.i110 to i64
  br label %.critedge64

bb.w:                                             ; preds = %bb.s
  br i1 %i.db, label %.critedge.i.i.i116, label %bb.x, !prof !148

.critedge.i.i.i116:                               ; preds = %bb.w
  %i.eq = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.cl, i64 noundef 72, i64 noundef 8) #9
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit117

bb.x:                                             ; preds = %bb.w
  %i.er = add i64 %i.cz, %i.ct
  %i.es = inttoptr i64 %i.er to ptr
  store i64 %i.da, ptr %i.cu, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit117

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit117: ; preds = %.critedge.i.i.i116, %bb.x
  %.0.i.i.i115 = phi ptr [ %i.eq, %.critedge.i.i.i116 ], [ %i.es, %bb.x ] ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(66) %.0.i.i.i115, i8 0, i64 16, i1 false)
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i.i.i115, i64 16
  store i32 212, ptr %i.et, align 8, !tbaa !156
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.i.i.i115, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.eu, i8 0, i64 28, i1 false)
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i.i.i115, i64 48 ; 7 uses
  store ptr %i.ev, ptr %i.ev, align 8, !tbaa !151
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.i.i.i115, i64 56 ; 2 uses
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !154
  %i.ex = load ptr, ptr %i.f, align 8, !tbaa !154 ; 4 uses
  %i.ey = icmp eq ptr %i.ev, %4
  %i.ez = icmp eq ptr %i.ex, %4
  %or.cond.i.i.i.i.i.i118 = or i1 %i.ey, %i.ez
  br i1 %or.cond.i.i.i.i.i.i118, label %_ZN6hermes6ESTree18EnumNumberBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit, label %bb.y

bb.y:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit117
  %i.fa = load ptr, ptr %4, align 8, !tbaa !151   ; 2 uses
  %i.fb = load ptr, ptr %i.ex, align 8, !tbaa !151
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store ptr %4, ptr %i.fc, align 8, !tbaa !154
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store ptr %i.ev, ptr %i.fd, align 8, !tbaa !154
  store ptr %i.ev, ptr %i.ex, align 8, !tbaa !151
  store ptr %i.ex, ptr %i.ew, align 8, !tbaa !154
  store ptr %i.fa, ptr %i.ev, align 8, !tbaa !151
  br label %_ZN6hermes6ESTree18EnumNumberBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit

_ZN6hermes6ESTree18EnumNumberBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit117, %bb.y
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i.i.i115, i64 64
  store i8 %3, ptr %i.fe, align 8, !tbaa !565
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i.i.i115, i64 65
  store i8 %.1, ptr %i.ff, align 1, !tbaa !567
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i.i.i115, i64 24
  store ptr %spec.select, ptr %i.fg, align 8, !tbaa !58
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i.i.i115, i64 32
  store ptr %.sroa.0.0.copyload.i109, ptr %i.fh, align 8, !tbaa !58
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.i.i.i115, i64 40
  store ptr %spec.select, ptr %i.fi, align 8, !tbaa !58
  %i.fj = ptrtoint ptr %.0.i.i.i115 to i64
  br label %.critedge64

bb.z:                                             ; preds = %bb.s
  br i1 %i.db, label %.critedge.i.i.i120, label %bb.aa, !prof !148

.critedge.i.i.i120:                               ; preds = %bb.z
  %i.fk = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.cl, i64 noundef 72, i64 noundef 8) #9
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit121

bb.aa:                                            ; preds = %bb.z
  %i.fl = add i64 %i.cz, %i.ct
  %i.fm = inttoptr i64 %i.fl to ptr
  store i64 %i.da, ptr %i.cu, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit121

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit121: ; preds = %.critedge.i.i.i120, %bb.aa
  %.0.i.i.i119 = phi ptr [ %i.fk, %.critedge.i.i.i120 ], [ %i.fm, %bb.aa ] ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(66) %.0.i.i.i119, i8 0, i64 16, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i.i.i119, i64 16
  store i32 213, ptr %i.fn, align 8, !tbaa !156
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i.i.i119, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.fo, i8 0, i64 28, i1 false)
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i.i.i119, i64 48 ; 7 uses
  store ptr %i.fp, ptr %i.fp, align 8, !tbaa !151
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i.i.i119, i64 56 ; 2 uses
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !154
  %i.fr = load ptr, ptr %i.f, align 8, !tbaa !154 ; 4 uses
  %i.fs = icmp eq ptr %i.fp, %4
  %i.ft = icmp eq ptr %i.fr, %4
  %or.cond.i.i.i.i.i.i122 = or i1 %i.fs, %i.ft
  br i1 %or.cond.i.i.i.i.i.i122, label %_ZN6hermes6ESTree18EnumBigIntBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit121
  %i.fu = load ptr, ptr %4, align 8, !tbaa !151   ; 2 uses
  %i.fv = load ptr, ptr %i.fr, align 8, !tbaa !151
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store ptr %4, ptr %i.fw, align 8, !tbaa !154
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store ptr %i.fp, ptr %i.fx, align 8, !tbaa !154
  store ptr %i.fp, ptr %i.fr, align 8, !tbaa !151
  store ptr %i.fr, ptr %i.fq, align 8, !tbaa !154
  store ptr %i.fu, ptr %i.fp, align 8, !tbaa !151
  br label %_ZN6hermes6ESTree18EnumBigIntBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit

_ZN6hermes6ESTree18EnumBigIntBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit121, %bb.ab
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.i.i.i119, i64 64
  store i8 %3, ptr %i.fy, align 8, !tbaa !568
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.i.i.i119, i64 65
  store i8 %.1, ptr %i.fz, align 1, !tbaa !570
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.i.i.i119, i64 24
  store ptr %spec.select, ptr %i.ga, align 8, !tbaa !58
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.i.i.i119, i64 32
  store ptr %.sroa.0.0.copyload.i109, ptr %i.gb, align 8, !tbaa !58
  %i.gc = getelementptr inbounds nuw i8, ptr %.0.i.i.i119, i64 40
  store ptr %spec.select, ptr %i.gc, align 8, !tbaa !58
  %i.gd = ptrtoint ptr %.0.i.i.i119 to i64
  br label %.critedge64

bb.ac:                                            ; preds = %bb.s
  br i1 %i.db, label %.critedge.i.i.i124, label %bb.ad, !prof !148

.critedge.i.i.i124:                               ; preds = %bb.ac
  %i.ge = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.cl, i64 noundef 72, i64 noundef 8) #9
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit125

bb.ad:                                            ; preds = %bb.ac
  %i.gf = add i64 %i.cz, %i.ct
  %i.gg = inttoptr i64 %i.gf to ptr
  store i64 %i.da, ptr %i.cu, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit125

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit125: ; preds = %.critedge.i.i.i124, %bb.ad
  %.0.i.i.i123 = phi ptr [ %i.ge, %.critedge.i.i.i124 ], [ %i.gg, %bb.ad ] ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(66) %.0.i.i.i123, i8 0, i64 16, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.i.i.i123, i64 16
  store i32 214, ptr %i.gh, align 8, !tbaa !156
  %i.gi = getelementptr inbounds nuw i8, ptr %.0.i.i.i123, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.gi, i8 0, i64 28, i1 false)
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.i.i.i123, i64 48 ; 7 uses
  store ptr %i.gj, ptr %i.gj, align 8, !tbaa !151
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.i.i.i123, i64 56 ; 2 uses
  store ptr %i.gj, ptr %i.gk, align 8, !tbaa !154
  %i.gl = load ptr, ptr %i.f, align 8, !tbaa !154 ; 4 uses
  %i.gm = icmp eq ptr %i.gj, %4
  %i.gn = icmp eq ptr %i.gl, %4
  %or.cond.i.i.i.i.i.i126 = or i1 %i.gm, %i.gn
  br i1 %or.cond.i.i.i.i.i.i126, label %_ZN6hermes6ESTree19EnumBooleanBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit125
  %i.go = load ptr, ptr %4, align 8, !tbaa !151   ; 2 uses
  %i.gp = load ptr, ptr %i.gl, align 8, !tbaa !151
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store ptr %4, ptr %i.gq, align 8, !tbaa !154
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store ptr %i.gj, ptr %i.gr, align 8, !tbaa !154
  store ptr %i.gj, ptr %i.gl, align 8, !tbaa !151
  store ptr %i.gl, ptr %i.gk, align 8, !tbaa !154
  store ptr %i.go, ptr %i.gj, align 8, !tbaa !151
  br label %_ZN6hermes6ESTree19EnumBooleanBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit

_ZN6hermes6ESTree19EnumBooleanBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit125, %bb.ae
  %i.gs = getelementptr inbounds nuw i8, ptr %.0.i.i.i123, i64 64
  store i8 %3, ptr %i.gs, align 8, !tbaa !571
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.i.i.i123, i64 65
  store i8 %.1, ptr %i.gt, align 1, !tbaa !573
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.i.i.i123, i64 24
  store ptr %spec.select, ptr %i.gu, align 8, !tbaa !58
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.i.i.i123, i64 32
  store ptr %.sroa.0.0.copyload.i109, ptr %i.gv, align 8, !tbaa !58
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.i.i.i123, i64 40
  store ptr %spec.select, ptr %i.gw, align 8, !tbaa !58
  %i.gx = ptrtoint ptr %.0.i.i.i123 to i64
  br label %.critedge64

bb.af:                                            ; preds = %bb.s
  br i1 %i.db, label %.critedge.i.i.i128, label %bb.ag, !prof !148

.critedge.i.i.i128:                               ; preds = %bb.af
  %i.gy = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.cl, i64 noundef 72, i64 noundef 8) #9
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit129

bb.ag:                                            ; preds = %bb.af
  %i.gz = add i64 %i.cz, %i.ct
  %i.ha = inttoptr i64 %i.gz to ptr
  store i64 %i.da, ptr %i.cu, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit129

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit129: ; preds = %.critedge.i.i.i128, %bb.ag
  %.0.i.i.i127 = phi ptr [ %i.gy, %.critedge.i.i.i128 ], [ %i.ha, %bb.ag ] ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %.0.i.i.i127, i8 0, i64 16, i1 false)
  %i.hb = getelementptr inbounds nuw i8, ptr %.0.i.i.i127, i64 16
  store i32 215, ptr %i.hb, align 8, !tbaa !156
  %i.hc = getelementptr inbounds nuw i8, ptr %.0.i.i.i127, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.hc, i8 0, i64 28, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.i.i.i127, i64 48 ; 7 uses
  store ptr %i.hd, ptr %i.hd, align 8, !tbaa !151
  %i.he = getelementptr inbounds nuw i8, ptr %.0.i.i.i127, i64 56 ; 2 uses
  store ptr %i.hd, ptr %i.he, align 8, !tbaa !154
  %i.hf = load ptr, ptr %i.f, align 8, !tbaa !154 ; 4 uses
  %i.hg = icmp eq ptr %i.hd, %4
  %i.hh = icmp eq ptr %i.hf, %4
  %or.cond.i.i.i.i.i.i130 = or i1 %i.hg, %i.hh
  br i1 %or.cond.i.i.i.i.i.i130, label %_ZN6hermes6ESTree18EnumSymbolBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEb.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit129
  %i.hi = load ptr, ptr %4, align 8, !tbaa !151   ; 2 uses
  %i.hj = load ptr, ptr %i.hf, align 8, !tbaa !151
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store ptr %4, ptr %i.hk, align 8, !tbaa !154
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store ptr %i.hd, ptr %i.hl, align 8, !tbaa !154
  store ptr %i.hd, ptr %i.hf, align 8, !tbaa !151
  store ptr %i.hf, ptr %i.he, align 8, !tbaa !154
  store ptr %i.hi, ptr %i.hd, align 8, !tbaa !151
  br label %_ZN6hermes6ESTree18EnumSymbolBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEb.exit

_ZN6hermes6ESTree18EnumSymbolBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEb.exit: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit129, %bb.ah
  %i.hm = getelementptr inbounds nuw i8, ptr %.0.i.i.i127, i64 64
  store i8 %.1, ptr %i.hm, align 8, !tbaa !574
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.i.i.i127, i64 24
  store ptr %spec.select, ptr %i.hn, align 8, !tbaa !58
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.i.i.i127, i64 32
  store ptr %.sroa.0.0.copyload.i109, ptr %i.ho, align 8, !tbaa !58
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i.i.i127, i64 40
  store ptr %spec.select, ptr %i.hp, align 8, !tbaa !58
  %i.hq = ptrtoint ptr %.0.i.i.i127 to i64
  br label %.critedge64

bb.ai:                                            ; preds = %bb.s
  unreachable

.critedge64:                                      ; preds = %bb.f, %bb.e, %switch.lookup, %bb.n, %bb.l, %bb.d, %bb.m, %_ZN6hermes6ESTree18EnumSymbolBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEb.exit, %_ZN6hermes6ESTree19EnumBooleanBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit, %_ZN6hermes6ESTree18EnumBigIntBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit, %_ZN6hermes6ESTree18EnumNumberBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit, %_ZN6hermes6ESTree18EnumStringBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit114, %_ZN6hermes6ESTree18EnumStringBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit
  %.sroa.0156.0 = phi i64 [ %i.ep, %_ZN6hermes6ESTree18EnumStringBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit114 ], [ %i.fj, %_ZN6hermes6ESTree18EnumNumberBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit ], [ %i.gd, %_ZN6hermes6ESTree18EnumBigIntBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit ], [ %i.gx, %_ZN6hermes6ESTree19EnumBooleanBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit ], [ %i.hq, %_ZN6hermes6ESTree18EnumSymbolBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEb.exit ], [ %i.dv, %_ZN6hermes6ESTree18EnumStringBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit ], [ undef, %switch.lookup ], [ undef, %bb.l ], [ undef, %bb.m ], [ undef, %bb.d ], [ undef, %bb.n ], [ undef, %bb.e ], [ undef, %bb.f ]
  %.sroa.7157.4 = phi i8 [ 1, %_ZN6hermes6ESTree18EnumStringBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit114 ], [ 1, %_ZN6hermes6ESTree18EnumNumberBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit ], [ 1, %_ZN6hermes6ESTree18EnumBigIntBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit ], [ 1, %_ZN6hermes6ESTree19EnumBooleanBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit ], [ 1, %_ZN6hermes6ESTree18EnumSymbolBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEb.exit ], [ 1, %_ZN6hermes6ESTree18EnumStringBodyNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEbb.exit ], [ 0, %switch.lookup ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.d ], [ 0, %bb.n ], [ 0, %bb.e ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.0156.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.7157.4, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseEnumMemberFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [5 x i32], align 4                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 15 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7    ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !181  ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !182
  %i.i = zext i32 %i.h to i64
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !188
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !189
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !191  ; 2 uses
  %i.p = add i64 %i.m, 7
  %i.q = add i64 %i.p, %i.o
  %i.r = and i64 %i.q, 7
  %.neg106 = add i64 %i.o, 7
  %i.s = sub i64 %.neg106, %i.r                   ; 3 uses
  store i64 %i.s, ptr %i.n, align 8, !tbaa !191
  %i.t = add i64 %i.s, 72                         ; 2 uses
  %i.u = icmp ugt i64 %i.t, 262144
  br i1 %i.u, label %.critedge.i.i.i, label %bb.b, !prof !148

.critedge.i.i.i:                                  ; preds = %bb.a
  %i.v = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.e, i64 noundef 72, i64 noundef 8) #9
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !7
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.b:                                             ; preds = %bb.a
  %i.w = add i64 %i.s, %i.m
  %i.x = inttoptr i64 %i.w to ptr
  store i64 %i.t, ptr %i.n, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.b
  %i.y = phi ptr [ %.pre, %.critedge.i.i.i ], [ %i.d, %bb.b ]
  %.0.i.i.i = phi ptr [ %i.v, %.critedge.i.i.i ], [ %i.x, %bb.b ] ; 11 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !126
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 66, ptr %i.ab, align 8, !tbaa !156
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ac, i8 0, i64 28, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !192
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56
  store ptr null, ptr %i.ae, align 8, !tbaa !194
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64
  store i8 0, ptr %i.af, align 8, !tbaa !195
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !58
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24 ; 7 uses
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.ah, align 8, !tbaa !58
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.0.0.copyload.i.i9.i = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32 ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i9.i, ptr %i.aj, align 8, !tbaa !58
  %.sroa.0.0.copyload.i.i10.i = load ptr, ptr %i.ag, align 8, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i, ptr %i.ak, align 8, !tbaa !58
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.am = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.al, i32 noundef 0) #9
  store ptr %i.am, ptr %i.c, align 8, !tbaa !7
  %i.an = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 93, i32 noundef 0) #9
  br i1 %i.an, label %bb.c, label %bb.u

bb.c:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !7   ; 12 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !124 ; 3 uses
  %i.aq = and i32 %i.ap, -2
  %i.ar = icmp eq i32 %i.aq, 14
  br i1 %i.ar, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.as = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !181 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !182
  %i.aw = zext i32 %i.av to i64
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !188
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !189
  %i.ba = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !191 ; 2 uses
  %i.bd = add i64 %i.ba, 7
  %i.be = add i64 %i.bd, %i.bc
  %i.bf = and i64 %i.be, 7
  %.neg130 = add i64 %i.bc, 7
  %i.bg = sub i64 %.neg130, %i.bf                 ; 3 uses
  store i64 %i.bg, ptr %i.bb, align 8, !tbaa !191
  %i.bh = add i64 %i.bg, 56                       ; 2 uses
  %i.bi = icmp ugt i64 %i.bh, 262144
  br i1 %i.bi, label %.critedge.i.i.i31, label %bb.e, !prof !148

.critedge.i.i.i31:                                ; preds = %bb.d
  %i.bj = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.as, i64 noundef 56, i64 noundef 8) #9
  %.pre136 = load ptr, ptr %i.c, align 8, !tbaa !7
  %.pre137 = load i32, ptr %.pre136, align 8, !tbaa !124
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit32

bb.e:                                             ; preds = %bb.d
  %i.bk = add i64 %i.bg, %i.ba
  %i.bl = inttoptr i64 %i.bk to ptr
  store i64 %i.bh, ptr %i.bb, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit32

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit32:  ; preds = %.critedge.i.i.i31, %bb.e
  %i.bm = phi i32 [ %.pre137, %.critedge.i.i.i31 ], [ %i.ap, %bb.e ]
  %.0.i.i.i30 = phi ptr [ %i.bj, %.critedge.i.i.i31 ], [ %i.bl, %bb.e ] ; 9 uses
  %i.bn = icmp eq i32 %i.bm, 14
  %i.bo = zext i1 %i.bn to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %.0.i.i.i30, i8 0, i64 16, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i.i.i30, i64 16
  store i32 35, ptr %i.bp, align 8, !tbaa !156
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i.i30, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bq, i8 0, i64 28, i1 false)
end_hunk_8
