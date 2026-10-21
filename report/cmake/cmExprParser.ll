Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmExprParser?download=true
inline.NumInlined: 15
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.cmExprParserHelper::ParserType" = type { i64 }

@cmExpr_yydebug = dso_local local_unnamed_addr global i32 0, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"Starting parse\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Entering state %d\0A\00", align 1
@_ZL6yypact = internal unnamed_addr constant [41 x i8] c"\01\01\01\01\01\F5\06\F6\FC\09\04\0B\02\F5\F5\F5\F5\07\F5\F5\01\01\01\01\01\01\01\01\01\01\F5\FC\09\04\0B\0B\02\02\F5\F5\F5", align 16
@.str.2 = private unnamed_addr constant [17 x i8] c"Reading a token\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Now at end of input.\0A\00", align 1
@_ZL11yytranslate = internal unnamed_addr constant [272 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@.str.4 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Next token is\00", align 1
@_ZL7yycheck = internal unnamed_addr constant [35 x i8] c"\01\02\0C\04\03\04\00\05\06\07\0E\0A\08\09\03\04\0F\10\0B\0C\17\18\0D\19\1A\03\1B\1C\1D\15\14\FF\FF\FF\16", align 16
@_ZL7yytable = internal unnamed_addr constant [35 x i8] c"\0F\10\14\12\01\02\13\1B\1C\1D\15\03\17\18\19\1A\04\05\1E\14\22#\16$%\11&'( \1F\00\00\00!", align 16
@.str.7 = private unnamed_addr constant [9 x i8] c"Shifting\00", align 1
@_ZL8yydefact = internal unnamed_addr constant [41 x i8] c"\00\00\00\00\00\17\00\02\03\05\07\09\0C\0F\13\14\15\00\16\01\00\00\00\00\00\00\00\00\00\00\18\04\06\08\0A\0B\0D\0E\10\11\12", align 16
@_ZL4yyr2 = internal unnamed_addr constant [25 x i8] c"\00\02\01\01\03\01\03\01\03\01\03\03\01\03\03\01\03\03\03\01\02\02\02\01\03", align 16
@.str.8 = private unnamed_addr constant [8 x i8] c"-> $$ =\00", align 1
@_ZL4yyr1 = internal unnamed_addr constant [25 x i8] c"\00\11\12\13\13\14\14\15\15\16\16\16\17\17\17\18\18\18\18\19\19\19\19\1A\1A", align 16
@_ZL7yypgoto = internal unnamed_addr constant [10 x i8] c"\F5\F5\16\0A\08\0C\FD\FE\FF\F5", align 1
@_ZL9yydefgoto = internal unnamed_addr constant [10 x i8] c"\00\06\07\08\09\0A\0B\0C\0D\0E", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Error: discarding\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Error: popping\00", align 1
@_ZL6yystos = internal unnamed_addr constant [41 x i8] c"\00\03\04\0A\0F\10\12\13\14\15\16\17\18\19\1A\19\19\13\19\00\0C\0E\0D\08\09\03\04\05\06\07\0B\14\15\16\17\17\18\18\19\19\19", align 16
@.str.12 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Cleanup: discarding lookahead\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Cleanup: popping\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"Stack now\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"%s %s (\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"nterm\00", align 1
@_ZL7yytname = internal unnamed_addr constant [28 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr null], align 16
@.str.21 = private unnamed_addr constant [14 x i8] c"\22end of file\22\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"\22invalid token\22\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"exp_PLUS\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"exp_MINUS\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"exp_TIMES\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"exp_DIVIDE\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"exp_MOD\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"exp_SHIFTLEFT\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"exp_SHIFTRIGHT\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"exp_OPENPARENT\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"exp_CLOSEPARENT\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"exp_OR\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"exp_AND\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"exp_XOR\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"exp_NOT\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"exp_NUMBER\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"$accept\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"bitwiseor\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"bitwisexor\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"bitwiseand\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"term\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"unary\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"factor\00", align 1
@_ZL7yyrline = internal unnamed_addr constant [25 x i8] c"\00YY^afinqvy}\83\86\8A\90\93\97\9B\A1\A4\A7\AB\B0\B3", align 16
@.str.48 = private unnamed_addr constant [38 x i8] c"Reducing stack by rule %d (line %d):\0A\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"   $%d = \00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"syntax error, unexpected %s\00", align 1
@.str.51 = private unnamed_addr constant [42 x i8] c"syntax error, unexpected %s, expecting %s\00", align 1
@.str.52 = private unnamed_addr constant [48 x i8] c"syntax error, unexpected %s, expecting %s or %s\00", align 1
@.str.53 = private unnamed_addr constant [54 x i8] c"syntax error, unexpected %s, expecting %s or %s or %s\00", align 1
@.str.54 = private unnamed_addr constant [60 x i8] c"syntax error, unexpected %s, expecting %s or %s or %s or %s\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z14cmExpr_yyparsePv(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"struct.cmExprParserHelper::ParserType", align 8 ; 6 uses
  %i.a = alloca [200 x i8], align 16              ; 12 uses
  %2 = alloca [200 x %"struct.cmExprParserHelper::ParserType"], align 16 ; 3 uses
  %i.b = alloca [128 x i8], align 16              ; 6 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  store i64 0, ptr %1, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i64 128, ptr %i.c, align 8, !tbaa !10
  %i.d = load i32, ptr @cmExpr_yydebug, align 4, !tbaa !20
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str, i64 15, i64 1, ptr %i.e) #14 ; 0 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.bz, %31, %bb.bj, %bb.ab
  %.0 = phi ptr [ %.1, %bb.bj ], [ %.4290, %bb.bz ], [ %.4290, %31 ], [ %.1, %bb.ab ]
  %.0206 = phi i32 [ %.5211, %bb.bj ], [ %.6, %bb.bz ], [ %.6, %31 ], [ -2, %bb.ab ]
  %.0199 = phi i32 [ %i.fe, %bb.bj ], [ %27, %bb.bz ], [ %27, %31 ], [ %i.ar, %bb.ab ]
  %.0196 = phi i32 [ %.1197, %bb.bj ], [ 3, %bb.bz ], [ 3, %31 ], [ %spec.select, %bb.ab ]
  %.0190.idx = phi i64 [ %.1191.add, %bb.bj ], [ %.2192.idx, %bb.bz ], [ %.2192.idx, %31 ], [ %.1191.idx, %bb.ab ]
  %.0188 = phi ptr [ %i.ep, %bb.bj ], [ %28, %bb.bz ], [ %28, %31 ], [ %i.ba, %bb.ab ]
  %.0190.add = add nsw i64 %.0190.idx, 1
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.c
  %.1 = phi ptr [ %.0, %bb.c ], [ %i.b, %.preheader ] ; 16 uses
  %.1207 = phi i32 [ %.0206, %bb.c ], [ -2, %.preheader ] ; 5 uses
  %.1200 = phi i32 [ %.0199, %bb.c ], [ 0, %.preheader ] ; 6 uses
  %.1197 = phi i32 [ %.0196, %bb.c ], [ 0, %.preheader ] ; 3 uses
  %.1191.idx = phi i64 [ %.0190.add, %bb.c ], [ 0, %.preheader ] ; 5 uses
  %.1189 = phi ptr [ %.0188, %bb.c ], [ %2, %.preheader ] ; 37 uses
  %.1191.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.1191.idx ; 9 uses
  %i.f = load i32, ptr @cmExpr_yydebug, align 4, !tbaa !20
  %.not228 = icmp eq i32 %i.f, 0
  br i1 %.not228, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.g = trunc nsw i32 %.1200 to i8
  store i8 %i.g, ptr %.1191.ptr, align 1, !tbaa !14
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.1, i32 noundef %.1200) #15 ; 0 uses
  %.pr = load i32, ptr @cmExpr_yydebug, align 4, !tbaa !20
  %i.j = trunc nsw i32 %.1200 to i8
  store i8 %i.j, ptr %.1191.ptr, align 1, !tbaa !14
  %.not229 = icmp eq i32 %.pr, 0
  br i1 %.not229, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call fastcc void @_ZL14yy_stack_printPaS_(ptr noundef %i.a, ptr noundef %.1191.ptr)
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f, %bb.e
  %.not230 = icmp slt i64 %.1191.idx, 199
  br i1 %.not230, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.k = icmp eq i32 %.1200, 19
  br i1 %i.k, label %.loopexit347, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = sext i32 %.1200 to i64                   ; 3 uses
  %i.m = getelementptr inbounds i8, ptr @_ZL6yypact, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !14
  %i.o = sext i8 %i.n to i32
  %i.p = shl nuw i64 1, %i.l                      ; 2 uses
  %i.q = and i64 %i.p, 1925219999776
  %.not233 = icmp eq i64 %i.q, 0
  br i1 %.not233, label %bb.j, label %bb.ac

bb.j:                                             ; preds = %bb.i
  %i.r = icmp eq i32 %.1207, -2
  br i1 %i.r, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.s = load i32, ptr @cmExpr_yydebug, align 4, !tbaa !20
  %.not234 = icmp eq i32 %i.s, 0
  br i1 %.not234, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite235 = call i64 @fwrite(ptr nonnull @.str.2, i64 16, i64 1, ptr %i.t) #14 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = call noundef i32 @_Z12cmExpr_yylexPN18cmExprParserHelper10ParserTypeEPv(ptr noundef nonnull %1, ptr noundef %0)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.2208 = phi i32 [ %i.u, %bb.m ], [ %.1207, %bb.j ] ; 6 uses
  %i.v = icmp slt i32 %.2208, 1
  br i1 %i.v, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.w = load i32, ptr @cmExpr_yydebug, align 4, !tbaa !20
  %.not238 = icmp eq i32 %i.w, 0
  br i1 %.not238, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite239 = call i64 @fwrite(ptr nonnull @.str.3, i64 21, i64 1, ptr %i.x) #14 ; 0 uses
  br label %bb.v

bb.q:                                             ; preds = %bb.n
  %i.y = icmp eq i32 %.2208, 256
  br i1 %i.y, label %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.z = icmp samesign ult i32 %.2208, 272
  br i1 %i.z, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.aa = zext nneg i32 %.2208 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZL11yytranslate, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14
  %i.ad = sext i8 %i.ac to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.ae = phi i32 [ %i.ad, %bb.s ], [ 2, %bb.r ]  ; 3 uses
  %i.af = load i32, ptr @cmExpr_yydebug, align 4, !tbaa !20
  %.not236 = icmp eq i32 %i.af, 0
  br i1 %.not236, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ah = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #15 ; 0 uses
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !13
  call fastcc void @_ZL15yy_symbol_printP8_IO_FILE15yysymbol_kind_tPKN18cmExprParserHelper10ParserTypeEPv(ptr noundef %i.ai, i32 noundef %i.ae)
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !13
  %fputc = call i32 @fputc(i32 10, ptr %i.aj)     ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.o, %bb.p
  %.3209 = phi i32 [ 0, %bb.p ], [ 0, %bb.o ], [ %.2208, %bb.u ], [ %.2208, %bb.t ] ; 3 uses
  %.0185 = phi i32 [ 0, %bb.p ], [ 0, %bb.o ], [ %i.ae, %bb.u ], [ %i.ae, %bb.t ] ; 3 uses
  %i.ak = add nsw i32 %.0185, %i.o                ; 3 uses
  %or.cond3 = icmp ugt i32 %i.ak, 34
  br i1 %or.cond3, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr @_ZL7yycheck, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !14
  %i.ao = sext i8 %i.an to i32
  %.not240 = icmp eq i32 %.0185, %i.ao
  br i1 %.not240, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZL7yytable, i64 %i.al
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !14
  %i.ar = sext i8 %i.aq to i32                    ; 2 uses
  %i.as = add nsw i32 %i.ak, -31
  %i.at = icmp ult i32 %i.as, 3
  br i1 %i.at, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.au = sub nsw i32 0, %i.ar
  br label %bb.ad

bb.z:                                             ; preds = %bb.x
  %spec.select = call i32 @llvm.usub.sat.i32(i32 %.1197, i32 1)
  %i.av = load i32, ptr @cmExpr_yydebug, align 4, !tbaa !20
  %.not242 = icmp eq i32 %i.av, 0
  br i1 %.not242, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ax = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aw, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7) #15 ; 0 uses
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !13
  call fastcc void @_ZL15yy_symbol_printP8_IO_FILE15yysymbol_kind_tPKN18cmExprParserHelper10ParserTypeEPv(ptr noundef %i.ay, i32 noundef %.0185)
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !13
  %fputc244 = call i32 @fputc(i32 10, ptr %i.az)  ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ba = getelementptr inbounds nuw i8, ptr %.1189, i64 8 ; 2 uses
  %i.bb = load i64, ptr %1, align 8, !tbaa !10
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !10
  br label %bb.c

bb.ac:                                            ; preds = %bb.v, %bb.w, %bb.i
  %.4210 = phi i32 [ %.1207, %bb.i ], [ %.3209, %bb.v ], [ %.3209, %bb.w ] ; 10 uses
  %i.bc = getelementptr inbounds i8, ptr @_ZL8yydefact, i64 %i.l
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !14
  %i.be = sext i8 %i.bd to i32
  %i.bf = and i64 %i.p, 1072824415
  %.not245 = icmp eq i64 %i.bf, 0
  br i1 %.not245, label %bb.ad, label %bb.bk

bb.ad:                                            ; preds = %bb.ac, %bb.y
  %.5211 = phi i32 [ %.4210, %bb.ac ], [ %.3209, %bb.y ]
  %.0187 = phi i32 [ %i.be, %bb.ac ], [ %i.au, %bb.y ] ; 4 uses
  %i.bg = sext i32 %.0187 to i64                  ; 3 uses
  %i.bh = getelementptr inbounds i8, ptr @_ZL4yyr2, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !14
  %i.bj = sext i8 %i.bi to i64                    ; 3 uses
  %i.bk = sub nsw i64 1, %i.bj
  %i.bl = getelementptr inbounds [8 x i8], ptr %.1189, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !10 ; 2 uses
  %i.bn = load i32, ptr @cmExpr_yydebug, align 4, !tbaa !20
  %.not246 = icmp eq i32 %i.bn, 0
  br i1 %.not246, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @_ZL15yy_reduce_printPaPN18cmExprParserHelper10ParserTypeEiPv(ptr noundef %.1191.ptr, i32 noundef %.0187)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  switch i32 %.0187, label %bb.bd [
    i32 2, label %bb.ag
    i32 3, label %bb.ah
    i32 4, label %bb.ai
    i32 5, label %bb.aj
    i32 6, label %bb.ak
    i32 7, label %bb.al
    i32 8, label %bb.am
    i32 9, label %bb.an
    i32 10, label %bb.ao
    i32 11, label %bb.ap
    i32 12, label %bb.aq
    i32 13, label %bb.ar
    i32 14, label %bb.as
    i32 15, label %bb.at
    i32 16, label %bb.au
    i32 17, label %bb.av
    i32 18, label %bb.aw
    i32 19, label %bb.ax
    i32 20, label %bb.ay
    i32 21, label %bb.az
    i32 22, label %bb.ba
    i32 23, label %bb.bb
    i32 24, label %bb.bc
  ]

bb.ag:                                            ; preds = %bb.af
  %i.bo = call noundef ptr @_Z18cmExpr_yyget_extraPv(ptr noundef %0)
  %i.bp = load i64, ptr %.1189, align 8, !tbaa !22
  call void @_ZN18cmExprParserHelper9SetResultEl(ptr noundef nonnull align 8 dereferenceable(160) %i.bo, i64 noundef %i.bp)
  br label %bb.bd

bb.ah:                                            ; preds = %bb.af
  %i.bq = load i64, ptr %.1189, align 8, !tbaa !22
  br label %bb.bd

bb.ai:                                            ; preds = %bb.af
  %i.br = getelementptr inbounds i8, ptr %.1189, i64 -16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !22
  %i.bt = load i64, ptr %.1189, align 8, !tbaa !22
  %i.bu = or i64 %i.bt, %i.bs
  br label %bb.bd

bb.aj:                                            ; preds = %bb.af
  %i.bv = load i64, ptr %.1189, align 8, !tbaa !22
  br label %bb.bd

bb.ak:                                            ; preds = %bb.af
  %i.bw = getelementptr inbounds i8, ptr %.1189, i64 -16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !22
  %i.by = load i64, ptr %.1189, align 8, !tbaa !22
  %i.bz = xor i64 %i.by, %i.bx
  br label %bb.bd

bb.al:                                            ; preds = %bb.af
  %i.ca = load i64, ptr %.1189, align 8, !tbaa !22
  br label %bb.bd

bb.am:                                            ; preds = %bb.af
  %i.cb = getelementptr inbounds i8, ptr %.1189, i64 -16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !22
  %i.cd = load i64, ptr %.1189, align 8, !tbaa !22
  %i.ce = and i64 %i.cd, %i.cc
  br label %bb.bd

bb.an:                                            ; preds = %bb.af
  %i.cf = load i64, ptr %.1189, align 8, !tbaa !22
  br label %bb.bd

bb.ao:                                            ; preds = %bb.af
  %i.cg = call noundef ptr @_Z18cmExpr_yyget_extraPv(ptr noundef %0)
  %i.ch = getelementptr inbounds i8, ptr %.1189, i64 -16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !22
  %i.cj = load i64, ptr %.1189, align 8, !tbaa !22
  %i.ck = call noundef i64 @_ZN18cmExprParserHelper3ShLEll(ptr noundef nonnull align 8 dereferenceable(160) %i.cg, i64 noundef %i.ci, i64 noundef %i.cj)
  br label %bb.bd

bb.ap:                                            ; preds = %bb.af
  %i.cl = call noundef ptr @_Z18cmExpr_yyget_extraPv(ptr noundef %0)
  %i.cm = getelementptr inbounds i8, ptr %.1189, i64 -16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !22
  %i.co = load i64, ptr %.1189, align 8, !tbaa !22
  %i.cp = call noundef i64 @_ZN18cmExprParserHelper3ShREll(ptr noundef nonnull align 8 dereferenceable(160) %i.cl, i64 noundef %i.cn, i64 noundef %i.co)
  br label %bb.bd

bb.aq:                                            ; preds = %bb.af
  %i.cq = load i64, ptr %.1189, align 8, !tbaa !22
  br label %bb.bd

bb.ar:                                            ; preds = %bb.af
  %i.cr = call noundef ptr @_Z18cmExpr_yyget_extraPv(ptr noundef %0)
  %i.cs = getelementptr inbounds i8, ptr %.1189, i64 -16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !22
  %i.cu = load i64, ptr %.1189, align 8, !tbaa !22
  %i.cv = call noundef i64 @_ZN18cmExprParserHelper3AddEll(ptr noundef nonnull align 8 dereferenceable(160) %i.cr, i64 noundef %i.ct, i64 noundef %i.cu)
  br label %bb.bd

bb.as:                                            ; preds = %bb.af
  %i.cw = call noundef ptr @_Z18cmExpr_yyget_extraPv(ptr noundef %0)
  %i.cx = getelementptr inbounds i8, ptr %.1189, i64 -16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !22
  %i.cz = load i64, ptr %.1189, align 8, !tbaa !22
  %i.da = call noundef i64 @_ZN18cmExprParserHelper3SubEll(ptr noundef nonnull align 8 dereferenceable(160) %i.cw, i64 noundef %i.cy, i64 noundef %i.cz)
  br label %bb.bd

bb.at:                                            ; preds = %bb.af
  %i.db = load i64, ptr %.1189, align 8, !tbaa !22
  br label %bb.bd

bb.au:                                            ; preds = %bb.af
  %i.dc = call noundef ptr @_Z18cmExpr_yyget_extraPv(ptr noundef %0)
  %i.dd = getelementptr inbounds i8, ptr %.1189, i64 -16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !22
  %i.df = load i64, ptr %.1189, align 8, !tbaa !22
  %i.dg = call noundef i64 @_ZN18cmExprParserHelper3MulEll(ptr noundef nonnull align 8 dereferenceable(160) %i.dc, i64 noundef %i.de, i64 noundef %i.df)
  br label %bb.bd

bb.av:                                            ; preds = %bb.af
  %i.dh = call noundef ptr @_Z18cmExpr_yyget_extraPv(ptr noundef %0)
  %i.di = getelementptr inbounds i8, ptr %.1189, i64 -16
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !22
  %i.dk = load i64, ptr %.1189, align 8, !tbaa !22
  %i.dl = call noundef i64 @_ZN18cmExprParserHelper3DivEll(ptr noundef nonnull align 8 dereferenceable(160) %i.dh, i64 noundef %i.dj, i64 noundef %i.dk)
  br label %bb.bd

bb.aw:                                            ; preds = %bb.af
  %i.dm = call noundef ptr @_Z18cmExpr_yyget_extraPv(ptr noundef %0)
  %i.dn = getelementptr inbounds i8, ptr %.1189, i64 -16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !22
  %i.dp = load i64, ptr %.1189, align 8, !tbaa !22
  %i.dq = call noundef i64 @_ZN18cmExprParserHelper3ModEll(ptr noundef nonnull align 8 dereferenceable(160) %i.dm, i64 noundef %i.do, i64 noundef %i.dp)
  br label %bb.bd

bb.ax:                                            ; preds = %bb.af
  %i.dr = load i64, ptr %.1189, align 8, !tbaa !22
  br label %bb.bd

bb.ay:                                            ; preds = %bb.af
  %i.ds = load i64, ptr %.1189, align 8, !tbaa !22
  br label %bb.bd

bb.az:                                            ; preds = %bb.af
  %i.dt = call noundef ptr @_Z18cmExpr_yyget_extraPv(ptr noundef %0)
  %i.du = load i64, ptr %.1189, align 8, !tbaa !22
  %i.dv = call noundef i64 @_ZN18cmExprParserHelper3NegEl(ptr noundef nonnull align 8 dereferenceable(160) %i.dt, i64 noundef %i.du)
  br label %bb.bd

bb.ba:                                            ; preds = %bb.af
  %i.dw = load i64, ptr %.1189, align 8, !tbaa !22
  %i.dx = xor i64 %i.dw, -1
  br label %bb.bd

bb.bb:                                            ; preds = %bb.af
  %i.dy = load i64, ptr %.1189, align 8, !tbaa !22
  br label %bb.bd

bb.bc:                                            ; preds = %bb.af
  %i.dz = getelementptr inbounds i8, ptr %.1189, i64 -8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !22
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.af
  %.sroa.0288.0 = phi i64 [ %i.bm, %bb.af ], [ %i.bm, %bb.ag ], [ %i.bq, %bb.ah ], [ %i.bu, %bb.ai ], [ %i.bv, %bb.aj ], [ %i.bz, %bb.ak ], [ %i.ca, %bb.al ], [ %i.ce, %bb.am ], [ %i.cf, %bb.an ], [ %i.ck, %bb.ao ], [ %i.cp, %bb.ap ], [ %i.cq, %bb.aq ], [ %i.cv, %bb.ar ], [ %i.da, %bb.as ], [ %i.db, %bb.at ], [ %i.dg, %bb.au ], [ %i.dl, %bb.av ], [ %i.dq, %bb.aw ], [ %i.dr, %bb.ax ], [ %i.ds, %bb.ay ], [ %i.dv, %bb.az ], [ %i.dx, %bb.ba ], [ %i.dy, %bb.bb ], [ %i.ea, %bb.bc ]
  %i.eb = load i32, ptr @cmExpr_yydebug, align 4, !tbaa !20
  %.not247 = icmp eq i32 %i.eb, 0
  br i1 %.not247, label %._crit_edge375, label %bb.be

._crit_edge375:                                   ; preds = %bb.bd
  %.phi.trans.insert = getelementptr inbounds i8, ptr @_ZL4yyr1, i64 %i.bg
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !14
  %.pre378 = sext i8 %.pre to i64
  br label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ec = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ed = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ec, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8) #15 ; 0 uses
  %i.ee = load ptr, ptr @stderr, align 8, !tbaa !13 ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr @_ZL4yyr1, i64 %i.bg
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !14
  %i.eh = icmp eq i32 %.0187, 0
  %.str.18..str.19.i = select i1 %i.eh, ptr @.str.18, ptr @.str.19
  %i.ei = sext i8 %i.eg to i64                    ; 2 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr @_ZL7yytname, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !16
  %i.el = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ee, ptr noundef nonnull @.str.17, ptr noundef nonnull %.str.18..str.19.i, ptr noundef %i.ek) #15 ; 0 uses
  %fputc.i = call i32 @fputc(i32 41, ptr %i.ee)   ; 0 uses
  %i.em = load ptr, ptr @stderr, align 8, !tbaa !13
  %fputc249 = call i32 @fputc(i32 10, ptr %i.em)  ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %._crit_edge375, %bb.be
  %.pre-phi = phi i64 [ %.pre378, %._crit_edge375 ], [ %i.ei, %bb.be ]
  %i.en = sub nsw i64 0, %i.bj
  %i.eo = getelementptr inbounds [8 x i8], ptr %.1189, i64 %i.en
  %.1191.add = sub nsw i64 %.1191.idx, %i.bj      ; 2 uses
  %.ptr231 = getelementptr inbounds i8, ptr %i.a, i64 %.1191.add
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 2 uses
  store i64 %.sroa.0288.0, ptr %i.ep, align 8, !tbaa !10
  %i.eq = add nsw i64 %.pre-phi, -17              ; 2 uses
  %i.er = getelementptr inbounds i8, ptr @_ZL7yypgoto, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !14
  %i.et = sext i8 %i.es to i32
  %i.eu = load i8, ptr %.ptr231, align 1, !tbaa !14 ; 2 uses
  %i.ev = sext i8 %i.eu to i32
  %i.ew = add nsw i32 %i.ev, %i.et                ; 2 uses
  %or.cond5 = icmp ult i32 %i.ew, 35
  br i1 %or.cond5, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.ex = zext nneg i32 %i.ew to i64              ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr @_ZL7yycheck, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !14
  %i.fa = icmp eq i8 %i.ez, %i.eu
  br i1 %i.fa, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.fb = getelementptr inbounds nuw i8, ptr @_ZL7yytable, i64 %i.ex
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg, %bb.bf
  %i.fc = getelementptr inbounds i8, ptr @_ZL9yydefgoto, i64 %i.eq
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.in = phi ptr [ %i.fb, %bb.bh ], [ %i.fc, %bb.bi ]
  %i.fd = load i8, ptr %.in, align 1, !tbaa !14
  %i.fe = sext i8 %i.fd to i32
  br label %bb.c

bb.bk:                                            ; preds = %bb.ac
  %i.ff = icmp eq i32 %.4210, -2
  br i1 %i.ff, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %or.cond7 = icmp ult i32 %.4210, 272
  br i1 %or.cond7, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.fg = zext nneg i32 %.4210 to i64
  %i.fh = getelementptr inbounds nuw i8, ptr @_ZL11yytranslate, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !14
  %i.fj = sext i8 %i.fi to i32
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.fk = phi i32 [ -2, %bb.bk ], [ %i.fj, %bb.bm ], [ 2, %bb.bl ] ; 4 uses
  switch i32 %.1197, label %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit [
    i32 0, label %bb.bo
    i32 3, label %bb.bu
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.fl = call fastcc noundef i32 @_ZL14yysyntax_errorPlPPcPK12yypcontext_t(ptr noundef %i.c, ptr %.1, ptr nonnull %.1191.ptr, i32 %i.fk)
  switch i32 %i.fl, label %bb.bt [
    i32 0, label %3
    i32 -1, label %4
  ]

3:                                                ; preds = %bb.bo
  br label %bb.bt

4:                                                ; preds = %bb.bo
  %.not251 = icmp eq ptr %.1, %i.b
  br i1 %.not251, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %4
  call void @free(ptr noundef %.1) #13
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %4
  %i.fm = load i64, ptr %i.c, align 8, !tbaa !10
  %i.fn = call noalias ptr @malloc(i64 noundef %i.fm) #16 ; 4 uses
  %.not252 = icmp eq ptr %i.fn, null
  br i1 %.not252, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fo = call fastcc noundef i32 @_ZL14yysyntax_errorPlPPcPK12yypcontext_t(ptr noundef %i.c, ptr nonnull %i.fn, ptr nonnull %.1191.ptr, i32 %i.fk)
  %i.fp = icmp eq i32 %i.fo, -2
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  store i64 128, ptr %i.c, align 8, !tbaa !10
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bo, %bb.bs, %bb.br, %3
  %.2289 = phi ptr [ %.1, %bb.bo ], [ %.1, %3 ], [ %i.b, %bb.bs ], [ %i.fn, %bb.br ] ; 2 uses
  %.0183 = phi ptr [ @.str.9, %bb.bo ], [ %.1, %3 ], [ @.str.9, %bb.bs ], [ %i.fn, %bb.br ]
  %.0182 = phi i1 [ true, %bb.bo ], [ false, %3 ], [ true, %bb.bs ], [ %i.fp, %bb.br ]
  %i.fq = call noundef ptr @_Z18cmExpr_yyget_extraPv(ptr noundef %0)
  call void @_ZN18cmExprParserHelper5ErrorEPKc(ptr noundef nonnull align 8 dereferenceable(160) %i.fq, ptr noundef %.0183)
  br i1 %.0182, label %.loopexit, label %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit

bb.bu:                                            ; preds = %bb.bn
  %i.fr = icmp slt i32 %.4210, 1
  br i1 %i.fr, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.fs = icmp eq i32 %.4210, 0
  br i1 %i.fs, label %.thread318, label %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit

bb.bw:                                            ; preds = %bb.bu
  %i.ft = load i32, ptr @cmExpr_yydebug, align 4, !tbaa !20
  %.not4.i = icmp eq i32 %i.ft, 0
  br i1 %.not4.i, label %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fu = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.fv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fu, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.10) #15 ; 0 uses
  %i.fw = load ptr, ptr @stderr, align 8, !tbaa !13 ; 2 uses
  %i.fx = icmp slt i32 %i.fk, 17
  %.str.18..str.19.i.i = select i1 %i.fx, ptr @.str.18, ptr @.str.19
  %i.fy = sext i32 %i.fk to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr @_ZL7yytname, i64 %i.fy
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !16
  %i.gb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fw, ptr noundef nonnull @.str.17, ptr noundef nonnull %.str.18..str.19.i.i, ptr noundef %i.ga) #15 ; 0 uses
  %fputc.i.i = call i32 @fputc(i32 41, ptr %i.fw) ; 0 uses
  %i.gc = load ptr, ptr @stderr, align 8, !tbaa !13
  %fputc.i268 = call i32 @fputc(i32 10, ptr %i.gc) ; 0 uses
  br label %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit

_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit: ; preds = %bb.bn, %bb.bt, %bb.bx, %bb.bw, %bb.q, %bb.bv
  %.4290 = phi ptr [ %.1, %bb.bv ], [ %.1, %bb.bx ], [ %.1, %bb.bn ], [ %.1, %bb.q ], [ %.1, %bb.bw ], [ %.2289, %bb.bt ] ; 3 uses
  %.6 = phi i32 [ %.4210, %bb.bv ], [ -2, %bb.bx ], [ %.4210, %bb.bn ], [ 257, %bb.q ], [ -2, %bb.bw ], [ %.4210, %bb.bt ] ; 3 uses
  br label %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit.a

_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit.a: ; preds = %24, %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit
  %.2201 = phi i32 [ %.1200, %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit ], [ %26, %24 ]
  %.2192.idx = phi i64 [ %.1191.idx, %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit ], [ %.2192.add301, %24 ] ; 5 uses
  %.2 = phi ptr [ %.1189, %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit ], [ %25, %24 ] ; 2 uses
  %5 = sext i32 %.2201 to i64                     ; 4 uses
  %6 = shl nuw i64 1, %5                          ; 2 uses
  %7 = and i64 %6, 1925219999776
  %i.gd = icmp eq i64 %7, 0
  %8 = lshr i64 271655771743, %5
  %9 = trunc i64 %8 to i1
  %or.cond = select i1 %i.gd, i1 %9, i1 false
  br i1 %or.cond, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit.a
  %10 = getelementptr inbounds i8, ptr @_ZL6yypact, i64 %5
  %11 = load i8, ptr %10, align 1, !tbaa !14
  %12 = sext i8 %11 to i64
  %13 = add nsw i64 %12, 1                        ; 2 uses
  %14 = getelementptr inbounds i8, ptr @_ZL7yycheck, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !14
  %.not4.i269.a = icmp eq i8 %15, 1
  br i1 %.not4.i269.a, label %16, label %20

16:                                               ; preds = %.lr.ph
  %17 = getelementptr inbounds i8, ptr @_ZL7yytable, i64 %13
  %18 = load i8, ptr %17, align 1, !tbaa !14      ; 3 uses
  %19 = icmp sgt i8 %18, 0
  br i1 %19, label %bb.bz, label %20

20:                                               ; preds = %.lr.ph, %16, %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit.a
  %21 = icmp eq i64 %.2192.idx, 0
  br i1 %21, label %.loopexit347, label %22

22:                                               ; preds = %20
  %23 = load i32, ptr @cmExpr_yydebug, align 4, !tbaa !20
  %.not4.i269 = icmp eq i32 %23, 0
  br i1 %.not4.i269, label %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit273.thread, label %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit273

_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit273.thread: ; preds = %22
  %.2192.add298 = add nsw i64 %.2192.idx, -1      ; 2 uses
  %.ptr232299 = getelementptr inbounds i8, ptr %i.a, i64 %.2192.add298
  %i.ge = load i8, ptr %.ptr232299, align 1, !tbaa !14
  br label %24

_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit273: ; preds = %22
  %i.gf = getelementptr inbounds i8, ptr @_ZL6yystos, i64 %5
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !14
  %i.gh = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.gi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gh, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #15 ; 0 uses
  %i.gj = load ptr, ptr @stderr, align 8, !tbaa !13 ; 2 uses
  %i.gk = and i64 %6, 2146959423
  %.not344 = icmp eq i64 %i.gk, 0
  %.str.18..str.19.i.i270 = select i1 %.not344, ptr @.str.19, ptr @.str.18
  %i.gl = sext i8 %i.gg to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr @_ZL7yytname, i64 %i.gl
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !16
  %i.go = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gj, ptr noundef nonnull @.str.17, ptr noundef nonnull %.str.18..str.19.i.i270, ptr noundef %i.gn) #15 ; 0 uses
  %fputc.i.i271 = call i32 @fputc(i32 41, ptr %i.gj) ; 0 uses
  %i.gp = load ptr, ptr @stderr, align 8, !tbaa !13
  %fputc.i272 = call i32 @fputc(i32 10, ptr %i.gp) ; 0 uses
  %.pr297 = load i32, ptr @cmExpr_yydebug, align 4, !tbaa !20
  %.2192.add = add nsw i64 %.2192.idx, -1         ; 3 uses
  %.ptr232 = getelementptr inbounds i8, ptr %i.a, i64 %.2192.add ; 2 uses
  %i.gq = load i8, ptr %.ptr232, align 1, !tbaa !14 ; 2 uses
  %.not257 = icmp eq i32 %.pr297, 0
  br i1 %.not257, label %24, label %bb.by

bb.by:                                            ; preds = %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit273
  call fastcc void @_ZL14yy_stack_printPaS_(ptr noundef %i.a, ptr noundef %.ptr232)
  br label %24

24:                                               ; preds = %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit273.thread, %bb.by, %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit273
  %.in345 = phi i8 [ %i.ge, %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit273.thread ], [ %i.gq, %bb.by ], [ %i.gq, %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit273 ]
  %.2192.add301 = phi i64 [ %.2192.add298, %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit273.thread ], [ %.2192.add, %bb.by ], [ %.2192.add, %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit273 ]
  %25 = getelementptr inbounds i8, ptr %.2, i64 -8
  %26 = sext i8 %.in345 to i32
  br label %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit.a, !llvm.loop !18

bb.bz:                                            ; preds = %16
  %27 = zext nneg i8 %18 to i32                   ; 2 uses
  %28 = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 3 uses
  %29 = load i64, ptr %1, align 8, !tbaa !10
  store i64 %29, ptr %28, align 8, !tbaa !10
  %30 = load i32, ptr @cmExpr_yydebug, align 4, !tbaa !20
  %i.gr = icmp eq i32 %30, 0
  br i1 %i.gr, label %bb.c, label %31

31:                                               ; preds = %bb.bz
  %32 = load ptr, ptr @stderr, align 8, !tbaa !13
  %33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7) #15 ; 0 uses
  %34 = load ptr, ptr @stderr, align 8, !tbaa !13
  %35 = zext nneg i8 %18 to i64
  %36 = getelementptr inbounds nuw i8, ptr @_ZL6yystos, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !14
  %38 = sext i8 %37 to i32
  call fastcc void @_ZL15yy_symbol_printP8_IO_FILE15yysymbol_kind_tPKN18cmExprParserHelper10ParserTypeEPv(ptr noundef %34, i32 noundef %38)
  %39 = load ptr, ptr @stderr, align 8, !tbaa !13
  %fputc256 = call i32 @fputc(i32 10, ptr %39)    ; 0 uses
  br label %bb.c

.loopexit:                                        ; preds = %bb.bt, %bb.g
  %.5291 = phi ptr [ %.2289, %bb.bt ], [ %.1, %bb.g ]
  %.8 = phi i32 [ %.4210, %bb.bt ], [ %.1207, %bb.g ]
  %i.gs = call noundef ptr @_Z18cmExpr_yyget_extraPv(ptr noundef %0)
  call void @_ZN18cmExprParserHelper5ErrorEPKc(ptr noundef nonnull align 8 dereferenceable(160) %i.gs, ptr noundef nonnull @.str.12)
  br label %.loopexit347

.loopexit347:                                     ; preds = %bb.h, %20, %.loopexit
  %.6292 = phi ptr [ %.4290, %20 ], [ %.5291, %.loopexit ], [ %.1, %bb.h ] ; 3 uses
  %.9 = phi i32 [ %.6, %20 ], [ %.8, %.loopexit ], [ %.1207, %bb.h ] ; 3 uses
  %.4194 = phi ptr [ %i.a, %20 ], [ %.1191.ptr, %.loopexit ], [ %.1191.ptr, %bb.h ] ; 3 uses
  %.0186 = phi i32 [ 1, %20 ], [ 2, %.loopexit ], [ 0, %bb.h ] ; 3 uses
  %.not258 = icmp eq i32 %.9, -2
  br i1 %.not258, label %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit278, label %bb.ca

bb.ca:                                            ; preds = %.loopexit347
  %or.cond11 = icmp ult i32 %.9, 272
  br i1 %or.cond11, label %.thread318, label %bb.cb

.thread318:                                       ; preds = %bb.bv, %bb.ca
  %.6292309333 = phi ptr [ %.6292, %bb.ca ], [ %.1, %bb.bv ]
  %.9311331 = phi i32 [ %.9, %bb.ca ], [ 0, %bb.bv ]
  %.4194312330 = phi ptr [ %.4194, %bb.ca ], [ %.1191.ptr, %bb.bv ]
  %.0186316326 = phi i32 [ %.0186, %bb.ca ], [ 1, %bb.bv ]
  %i.gt = zext nneg i32 %.9311331 to i64
  %i.gu = getelementptr inbounds nuw i8, ptr @_ZL11yytranslate, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !14
  %i.gw = sext i8 %i.gv to i32
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %.thread318
  %.6292309332 = phi ptr [ %.6292309333, %.thread318 ], [ %.6292, %bb.ca ] ; 2 uses
  %.4194312329 = phi ptr [ %.4194312330, %.thread318 ], [ %.4194, %bb.ca ] ; 2 uses
  %.0186316325 = phi i32 [ %.0186316326, %.thread318 ], [ %.0186, %bb.ca ] ; 2 uses
  %i.gx = phi i32 [ %i.gw, %.thread318 ], [ 2, %bb.ca ] ; 2 uses
  %i.gy = load i32, ptr @cmExpr_yydebug, align 4, !tbaa !20
  %.not4.i274 = icmp eq i32 %i.gy, 0
  br i1 %.not4.i274, label %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit278.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gz = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ha = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gz, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.13) #15 ; 0 uses
  %i.hb = load ptr, ptr @stderr, align 8, !tbaa !13 ; 2 uses
  %i.hc = icmp slt i32 %i.gx, 17
  %.str.18..str.19.i.i275 = select i1 %i.hc, ptr @.str.18, ptr @.str.19
  %i.hd = sext i32 %i.gx to i64
  %i.he = getelementptr inbounds [8 x i8], ptr @_ZL7yytname, i64 %i.hd
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !16
  %i.hg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hb, ptr noundef nonnull @.str.17, ptr noundef nonnull %.str.18..str.19.i.i275, ptr noundef %i.hf) #15 ; 0 uses
  %fputc.i.i276 = call i32 @fputc(i32 41, ptr %i.hb) ; 0 uses
  %i.hh = load ptr, ptr @stderr, align 8, !tbaa !13
  %fputc.i277 = call i32 @fputc(i32 10, ptr %i.hh) ; 0 uses
  br label %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit278

_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit278: ; preds = %bb.cc, %.loopexit347
  %.0186317.ph = phi i32 [ %.0186316325, %bb.cc ], [ %.0186, %.loopexit347 ] ; 2 uses
  %.4194313.ph = phi ptr [ %.4194312329, %bb.cc ], [ %.4194, %.loopexit347 ] ; 3 uses
  %.6292310.ph = phi ptr [ %.6292309332, %bb.cc ], [ %.6292, %.loopexit347 ] ; 2 uses
  %.pr334 = load i32, ptr @cmExpr_yydebug, align 4, !tbaa !20
  %.not259 = icmp eq i32 %.pr334, 0
  br i1 %.not259, label %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit278.thread, label %bb.cd

bb.cd:                                            ; preds = %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit278
  call fastcc void @_ZL14yy_stack_printPaS_(ptr noundef %i.a, ptr noundef %.4194313.ph)
  br label %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit278.thread

_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit278.thread: ; preds = %bb.cb, %bb.cd, %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit278
  %.6292310343 = phi ptr [ %.6292310.ph, %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit278 ], [ %.6292310.ph, %bb.cd ], [ %.6292309332, %bb.cb ] ; 2 uses
  %.4194313342 = phi ptr [ %.4194313.ph, %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit278 ], [ %.4194313.ph, %bb.cd ], [ %.4194312329, %bb.cb ] ; 2 uses
  %.0186317340 = phi i32 [ %.0186317.ph, %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit278 ], [ %.0186317.ph, %bb.cd ], [ %.0186316325, %bb.cb ]
  %.not260361 = icmp eq ptr %.4194313342, %i.a
  %i.hi = load i32, ptr @cmExpr_yydebug, align 4
  %i.hj = icmp eq i32 %i.hi, 0
  %or.cond.a = select i1 %.not260361, i1 true, i1 %i.hj
  br i1 %or.cond.a, label %._crit_edge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit278.thread, %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit283
  %i.hk = phi i32 [ %i.hz, %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit283 ], [ 1, %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit278.thread ]
  %.5195362 = phi ptr [ %i.ia, %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit283 ], [ %.4194313342, %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit278.thread ] ; 2 uses
  %.not4.i279 = icmp eq i32 %i.hk, 0
  br i1 %.not4.i279, label %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit283, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.split
  %i.hl = load i8, ptr %.5195362, align 1, !tbaa !14
  %i.hm = sext i8 %i.hl to i64                    ; 2 uses
  %i.hn = getelementptr inbounds i8, ptr @_ZL6yystos, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !14
  %i.hp = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.hq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hp, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.14) #15 ; 0 uses
  %i.hr = load ptr, ptr @stderr, align 8, !tbaa !13 ; 2 uses
  %i.hs = shl nuw i64 1, %i.hm
  %i.ht = and i64 %i.hs, 2146959423
  %.not346 = icmp eq i64 %i.ht, 0
  %.str.18..str.19.i.i280 = select i1 %.not346, ptr @.str.19, ptr @.str.18
  %i.hu = sext i8 %i.ho to i64
  %i.hv = getelementptr inbounds [8 x i8], ptr @_ZL7yytname, i64 %i.hu
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !16
  %i.hx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hr, ptr noundef nonnull @.str.17, ptr noundef nonnull %.str.18..str.19.i.i280, ptr noundef %i.hw) #15 ; 0 uses
  %fputc.i.i281 = call i32 @fputc(i32 41, ptr %i.hr) ; 0 uses
  %i.hy = load ptr, ptr @stderr, align 8, !tbaa !13
  %fputc.i282 = call i32 @fputc(i32 10, ptr %i.hy) ; 0 uses
  %.pre376 = load i32, ptr @cmExpr_yydebug, align 4, !tbaa !20
  br label %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit283

_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit283: ; preds = %.lr.ph.split, %bb.ce
  %i.hz = phi i32 [ 0, %.lr.ph.split ], [ %.pre376, %bb.ce ]
  %i.ia = getelementptr inbounds i8, ptr %.5195362, i64 -1 ; 2 uses
  %.not260 = icmp eq ptr %i.ia, %i.a
  br i1 %.not260, label %._crit_edge, label %.lr.ph.split, !llvm.loop !19

._crit_edge:                                      ; preds = %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit283, %_ZL10yydestructPKc15yysymbol_kind_tPN18cmExprParserHelper10ParserTypeEPv.exit278.thread
  %.not261 = icmp eq ptr %.6292310343, %i.b
  br i1 %.not261, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %.6292310343) #13
  br label %bb.cg

bb.cg:                                            ; preds = %._crit_edge, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i32 %.0186317340
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL14yy_stack_printPaS_(ptr nofree noundef nonnull readonly captures(address) %0, ptr nofree noundef nonnull readnone captures(address) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.15, i64 9, i64 1, ptr %i.a) #14 ; 0 uses
  %.not5 = icmp ugt ptr %0, %1
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06 = phi ptr [ %i.f, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.b = load i8, ptr %.06, align 1, !tbaa !14
  %i.c = sext i8 %i.b to i32
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.16, i32 noundef %i.c) #15 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06, i64 1 ; 2 uses
  %.not = icmp ugt ptr %i.f, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !13
  %fputc = tail call i32 @fputc(i32 10, ptr %i.g) ; 0 uses
  ret void
}

declare noundef i32 @_Z12cmExpr_yylexPN18cmExprParserHelper10ParserTypeEPv(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL15yy_symbol_printP8_IO_FILE15yysymbol_kind_tPKN18cmExprParserHelper10ParserTypeEPv(ptr nofree noundef captures(none) %0, i32 noundef range(i32 -128, 128) %1) unnamed_addr #5 {
bb.a:
  %i.a = icmp slt i32 %1, 17
  %.str.18..str.19 = select i1 %i.a, ptr @.str.18, ptr @.str.19
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr @_ZL7yytname, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull %.str.18..str.19, ptr noundef %i.d) #13 ; 0 uses
  %fputc = tail call i32 @fputc(i32 41, ptr %0)   ; 0 uses
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL15yy_reduce_printPaPN18cmExprParserHelper10ParserTypeEiPv(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 -128, 129) %1) unnamed_addr #3 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr @_ZL7yyrline, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !14
  %i.d = zext i8 %i.c to i32
  %i.e = getelementptr inbounds i8, ptr @_ZL4yyr2, i64 %i.a
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14    ; 2 uses
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.h = add nsw i32 %1, -1
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.48, i32 noundef %i.h, i32 noundef %i.d) #15 ; 0 uses
  %.not2 = icmp eq i32 %1, 0
  br i1 %.not2, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.j = sext i8 %i.f to i64
  %i.k = tail call i8 @llvm.smax.i8(i8 %i.f, i8 1)
  %wide.trip.count = zext nneg i8 %i.k to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.m = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.49, i32 noundef %i.m) #15 ; 0 uses
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !13 ; 2 uses
  %i.p = sub nsw i64 %indvars.iv.next, %i.j
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14
  %i.s = sext i8 %i.r to i64                      ; 2 uses
  %i.t = getelementptr inbounds i8, ptr @_ZL6yystos, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !14
  %i.v = shl nuw i64 1, %i.s
  %i.w = and i64 %i.v, 2146959423
  %.not = icmp eq i64 %i.w, 0
  %.str.18..str.19.i = select i1 %.not, ptr @.str.19, ptr @.str.18
  %i.x = sext i8 %i.u to i64
  %i.y = getelementptr inbounds [8 x i8], ptr @_ZL7yytname, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !16
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.17, ptr noundef nonnull %.str.18..str.19.i, ptr noundef %i.z) #15 ; 0 uses
  %fputc.i = tail call i32 @fputc(i32 41, ptr %i.o) ; 0 uses
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !13
  %fputc = tail call i32 @fputc(i32 10, ptr %i.ab) ; 0 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
end_hunk_0
