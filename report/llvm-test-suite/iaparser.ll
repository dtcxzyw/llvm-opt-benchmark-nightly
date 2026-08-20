inline.NumInlined: 178
inline.NumDeleted: 66
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.yystype = type { ptr }

@ia_nerrs = dso_local local_unnamed_addr global i32 0, align 4
@ia_char = dso_local local_unnamed_addr global i32 0, align 4
@yypact = internal unnamed_addr constant [77 x i8] c"\F4\0C#\00\E3\E3\E3\E3\E3\E3\E3\E3\E3\13\E3\E3\E3\E3\14\16()*\00\1F\00\00+'\12\08&,\07\E3\E3\E3\09\E3\E3\E3\FB.\00\00\E3\10\10\E3\10\E3/0\E35-\E3-\E33\E3\10\1024\E36\E39:\E3\00\00;<\E3\E3", align 16
@yytranslate = internal unnamed_addr constant [272 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\11\13\02\02\12\02\14\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\15\02\16\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@yycheck = internal unnamed_addr constant [84 x i8] c"\03\0D\1E\03\04\05\06\07\08\09\0A\0B\0C\12\0E\0F\10\16./\171\19\0F\10\12\13\12\13\11\16\0F\10=>\00\11\13\12\11+,\03\04\05\06\07\08\09\0A\0B\0C\15\0E\0F\10\12\11\11\11\15\0F\12\12\15\1C\13\13GH\11\14\16\13\16\12\12/\13\13\FF\FF\FF>", align 16
@yytable = internal unnamed_addr constant [84 x i8] c"\12\01(\05\06\07\08\09\0A\0B\0C\0D\0E1\0F\10\11266\1D: \10\11,-,0\03'\10\11B6\04\17&\18\1945\05\06\07\08\09\0A\0B\0C\0D\0E\1E\0F\10\11*\1A\1B\1C$3+>#%;<IJ=ADFEGH9KL\00\00\00C", align 16
@ia_lval = dso_local local_unnamed_addr global %union.yystype zeroinitializer, align 8
@yydefact = internal unnamed_addr constant [77 x i8] c"\02\00\00\00\01\17\13\14\19\08\1A\15\16\00\18\07\1C\1B\00\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00\04\0D\10\00\09!#\00\00\00\00\0B\00\00\0C\00\22\00\00\05\1F\0E\1D\11$\00\0A\00\00\00\00\03\00\1E\00\00 \00\00\00\00\0F\12", align 16
@yyr2 = internal unnamed_addr constant [37 x i8] c"\00\02\00\09\01\03\01\01\01\04\06\04\04\00\00\0A\00\00\0A\01\01\01\01\01\01\01\01\01\01\01\03\01\04\02\03\01\03", align 16
@ia_PROOFREQUEST = dso_local local_unnamed_addr global ptr null, align 8
@ia_FLAGS = dso_local local_unnamed_addr global ptr null, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [50 x i8] c"\0A Line %d: SPASS can't handle the quantifier %s.\0A\00", align 1
@dfg_LINENUMBER = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"\0A Line %d: %s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c" is not a variable.\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c" is not a predicate.\0A\00", align 1
@yyr1 = internal unnamed_addr constant [37 x i8] c"\00\17\18\18\19\19\1A\1A\1A\1A\1A\1A\1A\1B\1C\1A\1D\1E\1A\1F\1F\1F\1F  !!\22\22##$$%%&&", align 16
@yypgoto = internal unnamed_addr constant [16 x i8] c"\E3\E3%\FD\E3\E3\E3\E3\E3\E3\E3\E4\1E\15\E3\E3", align 16
@yydefgoto = internal unnamed_addr constant [16 x i8] c"\FF\02!\22.?/@\13\14\15\1678\1F)", align 16
@yytname = internal unnamed_addr constant [40 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr null], align 16
@.str.4 = private unnamed_addr constant [25 x i8] c"parse error, unexpected \00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c", expecting \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" or \00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"parse error\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"parser stack overflow\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"\0A Line %i: %s\0A\00", align 1
@ia_in = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [50 x i8] c"\0A Error: Flag value %d is too small for flag %s.\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"\0A Error: Flag value %d is too large for flag %s.\0A\00", align 1
@fol_TRUE = external local_unnamed_addr global i32, align 4
@fol_FALSE = external local_unnamed_addr global i32, align 4
@fol_NOT = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@fol_EQUALITY = external local_unnamed_addr global i32, align 4
@fol_EQUIV = external local_unnamed_addr global i32, align 4
@fol_IMPLIED = external local_unnamed_addr global i32, align 4
@fol_IMPLIES = external local_unnamed_addr global i32, align 4
@fol_AND = external local_unnamed_addr global i32, align 4
@fol_OR = external local_unnamed_addr global i32, align 4
@fol_EXIST = external local_unnamed_addr global i32, align 4
@fol_ALL = external local_unnamed_addr global i32, align 4
@symbol_SIGNATURE = external local_unnamed_addr global ptr, align 8
@symbol_TYPESTATBITS = external local_unnamed_addr constant i32, align 4
@symbol_TYPEMASK = external local_unnamed_addr constant i32, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"$end\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"$undefined\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"IA_AND\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"IA_EQUAL\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"IA_EQUIV\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"IA_EXISTS\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"IA_FALSE\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"IA_FORALL\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"IA_IMPLIED\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"IA_IMPLIES\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"IA_NOT\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"IA_OR\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"IA_PROVE\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"IA_TRUE\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"IA_NUM\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"IA_ID\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"'('\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"','\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"')'\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"'.'\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"'['\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"']'\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"$accept\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"proofrequest\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"termlist\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"term\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"@1\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"@2\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"@3\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"@4\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"binsymbol\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"nsymbol\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"quantsymbol\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"qtermlist\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"qterm\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"labellistopt\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"labellist\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"\0A Line %d: Undefined symbol %s.\0A\00", align 1
@memory_OFFSET = external local_unnamed_addr global i32, align 4
@memory_BIGBLOCKS = external local_unnamed_addr global ptr, align 8
@memory_MARKSIZE = external local_unnamed_addr global i32, align 4
@memory_FREEDBYTES = external local_unnamed_addr global i64, align 8
@memory_MAXMEM = external local_unnamed_addr global i64, align 8
@memory_ARRAY = external local_unnamed_addr global [0 x ptr], align 8
@memory_ALIGN = external local_unnamed_addr constant i32, align 4
@.str.53 = private unnamed_addr constant [21 x i8] c"\0A Line %u: Symbol %s\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c" was declared with arity %u.\0A\00", align 1
@ia_VARLIST = internal unnamed_addr global ptr null, align 8
@ia_VARDECL = internal unnamed_addr global i1 false, align 4
@.str.55 = private unnamed_addr constant [30 x i8] c"\0A Line %u: Free Variable %s.\0A\00", align 1
@symbol_STANDARDVARCOUNTER = external local_unnamed_addr global i32, align 4
@.str.56 = private unnamed_addr constant [31 x i8] c"\0A\09Error in file %s at line %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"iaparser.y\00", align 1
@.str.58 = private unnamed_addr constant [54 x i8] c"\0A In ia_VarCheck: List of variables should be empty!\0A\00", align 1
@.str.59 = private unnamed_addr constant [133 x i8] c"\0A Please report this error via email to spass@mpi-sb.mpg.de including\0A the SPASS version, input problem, options, operating system.\0A\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ia_parse() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [200 x i16], align 16             ; 4 uses
  %0 = alloca [200 x %union.yystype], align 16    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  store i32 0, ptr @ia_nerrs, align 4
  store i32 -2, ptr @ia_char, align 4
  %i.b = load i32, ptr @symbol_TYPEMASK, align 4
  br label %bb.c

bb.b:                                             ; preds = %bb.cc, %bb.cd, %bb.r
  %.0252 = phi ptr [ %.3255, %bb.r ], [ %i.kl, %bb.cc ], [ %i.kl, %bb.cd ]
  %.0244 = phi ptr [ %i.ba, %bb.r ], [ %i.km, %bb.cc ], [ %i.km, %bb.cd ]
  %.0237 = phi i32 [ %i.aw, %bb.r ], [ %i.le, %bb.cc ], [ %i.lh, %bb.cd ]
  %i.c = getelementptr inbounds nuw i8, ptr %.0252, i64 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0258 = phi ptr [ %i.a, %bb.a ], [ %.3261, %bb.b ] ; 4 uses
  %.1253 = phi ptr [ %i.a, %bb.a ], [ %i.c, %bb.b ] ; 4 uses
  %.0248 = phi ptr [ %0, %bb.a ], [ %.3251, %bb.b ] ; 2 uses
  %.1245 = phi ptr [ %0, %bb.a ], [ %.0244, %bb.b ]
  %.0241 = phi i64 [ 200, %bb.a ], [ %.2243, %bb.b ] ; 4 uses
  %.1238 = phi i32 [ 0, %bb.a ], [ %.0237, %bb.b ] ; 2 uses
  %i.d = trunc nsw i32 %.1238 to i16
  store i16 %i.d, ptr %.1253, align 2
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %.0258, i64 %.0241
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -2
  %.not = icmp ult ptr %.1253, %i.f
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp samesign ugt i64 %.0241, 9999
  br i1 %i.g, label %bb.cn, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = ptrtoint ptr %.1253 to i64
  %i.i = ptrtoint ptr %.0258 to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 1
  %i.l = add nsw i64 %i.k, 1                      ; 5 uses
  %i.m = shl nuw nsw i64 %.0241, 1
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.m, i64 10000) ; 4 uses
  %i.n = mul nuw nsw i64 %spec.store.select, 10
  %i.o = add nuw nsw i64 %i.n, 7
  %i.p = alloca i8, i64 %i.o, align 16            ; 4 uses
  %i.q = shl i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.p, ptr align 16 %.0258, i64 %i.q, i1 false)
  %i.r = shl nuw nsw i64 %spec.store.select, 1
  %i.s = add nuw nsw i64 %i.r, 4
  %i.t = lshr i64 %i.s, 3
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.t ; 3 uses
  %i.v = shl i64 %i.l, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr align 8 %.0248, i64 %i.v, i1 false)
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.l
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -2
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.l
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8
  %.not288 = icmp samesign ult i64 %i.l, %spec.store.select
  br i1 %.not288, label %.thread, label %.thread341

.thread:                                          ; preds = %bb.e, %bb.c
  %.3261 = phi ptr [ %.0258, %bb.c ], [ %i.p, %bb.e ]
  %.3255 = phi ptr [ %.1253, %bb.c ], [ %i.x, %bb.e ] ; 2 uses
  %.3251 = phi ptr [ %.0248, %bb.c ], [ %i.u, %bb.e ]
  %.3247 = phi ptr [ %.1245, %bb.c ], [ %i.z, %bb.e ] ; 34 uses
  %.2243 = phi i64 [ %.0241, %bb.c ], [ %spec.store.select, %bb.e ]
  %i.aa = sext i32 %.1238 to i64                  ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr @yypact, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1             ; 5 uses
  %i.ad = sext i8 %i.ac to i32                    ; 4 uses
  %i.ae = icmp eq i8 %i.ac, -29
  br i1 %i.ae, label %bb.s, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.af = load i32, ptr @ia_char, align 4         ; 2 uses
  %i.ag = icmp eq i32 %i.af, -2
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = call i32 @ia_lex() #14                  ; 2 uses
  store i32 %i.ah, ptr @ia_char, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = phi i32 [ %i.ah, %bb.g ], [ %i.af, %bb.f ] ; 3 uses
  %i.aj = icmp slt i32 %i.ai, 1                   ; 2 uses
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr @ia_char, align 4
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ak = icmp samesign ult i32 %i.ai, 272
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = zext nneg i32 %i.ai to i64
  %i.am = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.2266 = phi i32 [ 0, %bb.i ], [ %i.ao, %bb.k ], [ 2, %bb.j ] ; 2 uses
  %i.ap = add nsw i32 %.2266, %i.ad               ; 4 uses
  %or.cond = icmp ugt i32 %i.ap, 83
  br i1 %or.cond, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr @yycheck, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = sext i8 %i.as to i32
  %.not289 = icmp eq i32 %.2266, %i.at
  br i1 %.not289, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr @yytable, i64 %i.aq
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i32
  %i.ax = add nsw i32 %i.ap, -80
  %i.ay = icmp ult i32 %i.ax, 3
  br i1 %i.ay, label %bb.ce, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = icmp eq i32 %i.ap, 35
  br i1 %i.az, label %.thread341, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.aj, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 -2, ptr @ia_char, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %.3247, i64 8 ; 2 uses
  %i.bb = load i64, ptr @ia_lval, align 8
  store i64 %i.bb, ptr %i.ba, align 8
  br label %bb.b

bb.s:                                             ; preds = %bb.l, %bb.m, %.thread
  %i.bc = getelementptr inbounds i8, ptr @yydefact, i64 %i.aa
  %i.bd = load i8, ptr %i.bc, align 1             ; 3 uses
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.ce, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = zext i8 %i.bd to i64                    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr @yyr2, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = zext i8 %i.bh to i64                    ; 2 uses
  %i.bj = sub nsw i64 1, %i.bi
  %i.bk = getelementptr inbounds [8 x i8], ptr %.3247, i64 %i.bj
  %.sroa.0.0.copyload = load ptr, ptr %i.bk, align 8 ; 13 uses
  switch i8 %i.bd, label %list_Nconc.exit [
    i8 2, label %.thread341
    i8 3, label %bb.u
    i8 4, label %bb.v
    i8 5, label %bb.w
    i8 6, label %bb.y
    i8 7, label %bb.z
    i8 8, label %bb.aa
    i8 9, label %bb.ab
    i8 10, label %bb.ac
    i8 11, label %bb.ad
    i8 12, label %bb.ae
    i8 13, label %bb.af
    i8 14, label %bb.ag
    i8 15, label %bb.ah
    i8 16, label %bb.az
    i8 17, label %bb.ba
    i8 18, label %bb.bb
    i8 19, label %bb.bc
    i8 20, label %bb.bd
    i8 21, label %bb.be
    i8 22, label %bb.bf
    i8 23, label %bb.bg
    i8 24, label %bb.bh
    i8 25, label %bb.bi
    i8 26, label %bb.bj
    i8 27, label %bb.bk
    i8 28, label %bb.bl
    i8 29, label %bb.bm
    i8 30, label %bb.bn
    i8 31, label %bb.bp
    i8 32, label %bb.bs
    i8 33, label %bb.bw
    i8 34, label %bb.bx
    i8 35, label %bb.by
    i8 36, label %bb.bz
  ]

bb.u:                                             ; preds = %bb.t
  call fastcc void @ia_VarCheck()
  %i.bl = getelementptr inbounds i8, ptr %.3247, i64 -48
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds i8, ptr %.3247, i64 -32
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bm, ptr %i.bq, align 8
  store ptr %i.bo, ptr %i.bp, align 8
  store ptr %i.bp, ptr @ia_PROOFREQUEST, align 8
  %i.br = load ptr, ptr @ia_FLAGS, align 8
  %i.bs = getelementptr inbounds i8, ptr %.3247, i64 -16
  %i.bt = load i32, ptr %i.bs, align 8
  call fastcc void @flag_SetFlagValue(ptr noundef %i.br, i32 noundef %i.bt)
  br label %.thread341

bb.v:                                             ; preds = %bb.t
  %i.bu = load ptr, ptr %.3247, align 8
  %i.bv = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bu, ptr %i.bw, align 8
  store ptr null, ptr %i.bv, align 8
  br label %list_Nconc.exit

bb.w:                                             ; preds = %bb.t
  %i.bx = getelementptr inbounds i8, ptr %.3247, i64 -16
  %i.by = load ptr, ptr %i.bx, align 8            ; 3 uses
  %i.bz = load ptr, ptr %.3247, align 8
  %i.ca = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.bz, ptr %i.cb, align 8
  store ptr null, ptr %i.ca, align 8
  %.not.i = icmp eq ptr %i.by, null
  br i1 %.not.i, label %list_Nconc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.w, %.preheader.i
  %.012.i = phi ptr [ %.012.val15.i, %.preheader.i ], [ %i.by, %bb.w ] ; 2 uses
  %.012.val15.i = load ptr, ptr %.012.i, align 8  ; 2 uses
  %.not17.i = icmp eq ptr %.012.val15.i, null
  br i1 %.not17.i, label %bb.x, label %.preheader.i, !llvm.loop !4

bb.x:                                             ; preds = %.preheader.i
  store ptr %i.ca, ptr %.012.i, align 8
  br label %list_Nconc.exit

bb.y:                                             ; preds = %bb.t
  %i.cc = load ptr, ptr %.3247, align 8
  %i.cd = call i32 @list_Length(ptr noundef null) #14
  %i.ce = call fastcc i32 @ia_Symbol(ptr noundef %i.cc, i32 noundef %i.cd)
  %i.cf = call ptr @term_Create(i32 noundef %i.ce, ptr noundef null) #14
  br label %list_Nconc.exit

bb.z:                                             ; preds = %bb.t
  %i.cg = load i32, ptr @fol_TRUE, align 4
  %i.ch = call ptr @term_Create(i32 noundef %i.cg, ptr noundef null) #14
  br label %list_Nconc.exit

bb.aa:                                            ; preds = %bb.t
  %i.ci = load i32, ptr @fol_FALSE, align 4
  %i.cj = call ptr @term_Create(i32 noundef %i.ci, ptr noundef null) #14
  br label %list_Nconc.exit

bb.ab:                                            ; preds = %bb.t
  %i.ck = load i32, ptr @fol_NOT, align 4
  %i.cl = getelementptr inbounds i8, ptr %.3247, i64 -8
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %i.cm, ptr %i.co, align 8
  store ptr null, ptr %i.cn, align 8
  %i.cp = call ptr @term_Create(i32 noundef %i.ck, ptr noundef nonnull %i.cn) #14
  br label %list_Nconc.exit

bb.ac:                                            ; preds = %bb.t
  %i.cq = getelementptr inbounds i8, ptr %.3247, i64 -40
end_hunk_0
begin_hunk_1_@ia_parse:bb.a
  %i.ib = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  store ptr %i.ia, ptr %i.ic, align 8
  store ptr null, ptr %i.ib, align 8
  %.not.i304 = icmp eq ptr %i.hz, null
  br i1 %.not.i304, label %list_Nconc.exit, label %.preheader.i306

.preheader.i306:                                  ; preds = %bb.bn, %.preheader.i306
  %.012.i307 = phi ptr [ %.012.val15.i308, %.preheader.i306 ], [ %i.hz, %bb.bn ] ; 2 uses
  %.012.val15.i308 = load ptr, ptr %.012.i307, align 8 ; 2 uses
  %.not17.i309 = icmp eq ptr %.012.val15.i308, null
  br i1 %.not17.i309, label %bb.bo, label %.preheader.i306, !llvm.loop !4

bb.bo:                                            ; preds = %.preheader.i306
  store ptr %i.ib, ptr %.012.i307, align 8
  br label %list_Nconc.exit

bb.bp:                                            ; preds = %bb.t
  %i.id = load ptr, ptr %.3247, align 8
  %i.ie = call fastcc i32 @ia_Symbol(ptr noundef %i.id, i32 noundef 0) ; 3 uses
  %i.if = icmp slt i32 %i.ie, 1
  br i1 %i.if, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ig = load ptr, ptr @stdout, align 8
  %i.ih = call i32 @fflush(ptr noundef %i.ig)     ; 0 uses
  %i.ii = load i32, ptr @dfg_LINENUMBER, align 4
  %i.ij = sub nsw i32 0, %i.ie
  %i.ik = load i32, ptr @symbol_TYPESTATBITS, align 4
  %i.il = lshr i32 %i.ij, %i.ik
  %i.im = load ptr, ptr @symbol_SIGNATURE, align 8
  %i.in = zext nneg i32 %i.il to i64
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.in
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = load ptr, ptr %i.ip, align 8
  call void (ptr, ...) @misc_UserErrorReport(ptr noundef nonnull @.str.1, i32 noundef %i.ii, ptr noundef %i.iq) #14
  call void (ptr, ...) @misc_UserErrorReport(ptr noundef nonnull @.str.2) #14
  call fastcc void @misc_Error()
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.ir = call ptr @term_Create(i32 noundef %i.ie, ptr noundef null) #14
  br label %list_Nconc.exit

bb.bs:                                            ; preds = %bb.t
  %i.is = getelementptr inbounds i8, ptr %.3247, i64 -24
  %i.it = load ptr, ptr %i.is, align 8
  %i.iu = call fastcc i32 @ia_Symbol(ptr noundef %i.it, i32 noundef 1) ; 3 uses
  %.not.i312 = icmp slt i32 %i.iu, 0
  %.pre = sub nsw i32 0, %i.iu                    ; 2 uses
  %i.iv = and i32 %i.b, %.pre
  %.not350 = icmp eq i32 %i.iv, 2
  %or.cond517 = select i1 %.not.i312, i1 %.not350, i1 false
  br i1 %or.cond517, label %bb.bt, label %symbol_IsPredicate.exit.thread

symbol_IsPredicate.exit.thread:                   ; preds = %bb.bs
  %i.iw = load ptr, ptr @stdout, align 8
  %i.ix = call i32 @fflush(ptr noundef %i.iw)     ; 0 uses
  %i.iy = load i32, ptr @dfg_LINENUMBER, align 4
  %i.iz = load i32, ptr @symbol_TYPESTATBITS, align 4
  %i.ja = ashr i32 %.pre, %i.iz
  %i.jb = load ptr, ptr @symbol_SIGNATURE, align 8
  %i.jc = sext i32 %i.ja to i64
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %i.jc
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = load ptr, ptr %i.je, align 8
  call void (ptr, ...) @misc_UserErrorReport(ptr noundef nonnull @.str.1, i32 noundef %i.iy, ptr noundef %i.jf) #14
  call void (ptr, ...) @misc_UserErrorReport(ptr noundef nonnull @.str.3) #14
  call fastcc void @misc_Error()
  unreachable

bb.bt:                                            ; preds = %bb.bs
  %i.jg = getelementptr inbounds i8, ptr %.3247, i64 -8
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = call fastcc i32 @ia_Symbol(ptr noundef %i.jh, i32 noundef 0) ; 3 uses
  %i.jj = icmp slt i32 %i.ji, 1
  br i1 %i.jj, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.jk = load ptr, ptr @stdout, align 8
  %i.jl = call i32 @fflush(ptr noundef %i.jk)     ; 0 uses
  %i.jm = load i32, ptr @dfg_LINENUMBER, align 4
  %i.jn = sub nsw i32 0, %i.ji
  %i.jo = load i32, ptr @symbol_TYPESTATBITS, align 4
  %i.jp = lshr i32 %i.jn, %i.jo
  %i.jq = load ptr, ptr @symbol_SIGNATURE, align 8
  %i.jr = zext nneg i32 %i.jp to i64
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.jr
  %i.jt = load ptr, ptr %i.js, align 8
  %i.ju = load ptr, ptr %i.jt, align 8
  call void (ptr, ...) @misc_UserErrorReport(ptr noundef nonnull @.str.1, i32 noundef %i.jm, ptr noundef %i.ju) #14
  call void (ptr, ...) @misc_UserErrorReport(ptr noundef nonnull @.str.2) #14
  call fastcc void @misc_Error()
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.jv = call ptr @term_Create(i32 noundef %i.ji, ptr noundef null) #14
  %i.jw = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  store ptr %i.jv, ptr %i.jx, align 8
  store ptr null, ptr %i.jw, align 8
  %i.jy = call ptr @term_Create(i32 noundef %i.iu, ptr noundef nonnull %i.jw) #14
  br label %list_Nconc.exit

bb.bw:                                            ; preds = %bb.t
  br label %list_Nconc.exit

bb.bx:                                            ; preds = %bb.t
  %i.jz = getelementptr inbounds i8, ptr %.3247, i64 -8
  %i.ka = load ptr, ptr %i.jz, align 8
  br label %list_Nconc.exit

bb.by:                                            ; preds = %bb.t
  %i.kb = load ptr, ptr %.3247, align 8
  %i.kc = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  store ptr %i.kb, ptr %i.kd, align 8
  store ptr null, ptr %i.kc, align 8
  br label %list_Nconc.exit

bb.bz:                                            ; preds = %bb.t
  %i.ke = getelementptr inbounds i8, ptr %.3247, i64 -16
  %i.kf = load ptr, ptr %i.ke, align 8            ; 3 uses
  %i.kg = load ptr, ptr %.3247, align 8
  %i.kh = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  store ptr %i.kg, ptr %i.ki, align 8
  store ptr null, ptr %i.kh, align 8
  %.not.i313 = icmp eq ptr %i.kf, null
  br i1 %.not.i313, label %list_Nconc.exit, label %.preheader.i315

.preheader.i315:                                  ; preds = %bb.bz, %.preheader.i315
  %.012.i316 = phi ptr [ %.012.val15.i317, %.preheader.i315 ], [ %i.kf, %bb.bz ] ; 2 uses
  %.012.val15.i317 = load ptr, ptr %.012.i316, align 8 ; 2 uses
  %.not17.i318 = icmp eq ptr %.012.val15.i317, null
  br i1 %.not17.i318, label %bb.ca, label %.preheader.i315, !llvm.loop !4

bb.ca:                                            ; preds = %.preheader.i315
  store ptr %i.kh, ptr %.012.i316, align 8
  br label %list_Nconc.exit

list_Nconc.exit:                                  ; preds = %bb.ca, %bb.bz, %bb.bo, %bb.bn, %bb.x, %bb.w, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.br, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.ba, %bb.az, %ia_CreateQuantifier.exit, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.v, %bb.t
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload, %bb.t ], [ %i.bv, %bb.v ], [ %i.ib, %bb.bn ], [ %i.cf, %bb.y ], [ %i.ch, %bb.z ], [ %i.cj, %bb.aa ], [ %i.cp, %bb.ab ], [ %i.da, %bb.ac ], [ %i.df, %bb.ad ], [ %i.dm, %bb.ae ], [ %.sroa.0.0.copyload, %bb.af ], [ %.sroa.0.0.copyload, %bb.ag ], [ %i.gl, %ia_CreateQuantifier.exit ], [ %.sroa.0.0.copyload, %bb.az ], [ %.sroa.0.0.copyload, %bb.ba ], [ %i.kh, %bb.bz ], [ %i.gw, %bb.bc ], [ %i.gz, %bb.bd ], [ %i.hc, %bb.be ], [ %i.hf, %bb.bf ], [ %i.hi, %bb.bg ], [ %i.hl, %bb.bh ], [ %i.ho, %bb.bi ], [ %i.hr, %bb.bj ], [ %i.hs, %bb.bk ], [ %i.hu, %bb.bl ], [ %i.hw, %bb.bm ], [ %i.ca, %bb.w ], [ %i.ir, %bb.br ], [ %i.jy, %bb.bv ], [ null, %bb.bw ], [ %i.ka, %bb.bx ], [ %i.kc, %bb.by ], [ %i.by, %bb.x ], [ %i.hz, %bb.bo ], [ %i.kf, %bb.ca ]
  %i.kj = sub nsw i64 0, %i.bi                    ; 2 uses
  %i.kk = getelementptr inbounds [8 x i8], ptr %.3247, i64 %i.kj
  %i.kl = getelementptr inbounds [2 x i8], ptr %.3255, i64 %i.kj ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 8 ; 3 uses
  store ptr %.sroa.0.0, ptr %i.km, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr @yyr1, i64 %i.bf
  %i.ko = load i8, ptr %i.kn, align 1
  %i.kp = zext i8 %i.ko to i64
  %i.kq = add nsw i64 %i.kp, -23                  ; 2 uses
  %i.kr = getelementptr inbounds i8, ptr @yypgoto, i64 %i.kq
  %i.ks = load i8, ptr %i.kr, align 1
  %i.kt = sext i8 %i.ks to i32
  %i.ku = load i16, ptr %i.kl, align 2            ; 2 uses
  %i.kv = sext i16 %i.ku to i32
  %i.kw = add nsw i32 %i.kv, %i.kt                ; 2 uses
  %or.cond5 = icmp ult i32 %i.kw, 84
  br i1 %or.cond5, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %list_Nconc.exit
  %i.kx = zext nneg i32 %i.kw to i64              ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr @yycheck, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1
  %i.la = sext i8 %i.kz to i16
  %i.lb = icmp eq i16 %i.ku, %i.la
  br i1 %i.lb, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.lc = getelementptr inbounds nuw i8, ptr @yytable, i64 %i.kx
  %i.ld = load i8, ptr %i.lc, align 1
  %i.le = zext i8 %i.ld to i32
  br label %bb.b

bb.cd:                                            ; preds = %bb.cb, %list_Nconc.exit
  %i.lf = getelementptr inbounds i8, ptr @yydefgoto, i64 %i.kq
  %i.lg = load i8, ptr %i.lf, align 1
  %i.lh = sext i8 %i.lg to i32
  br label %bb.b

bb.ce:                                            ; preds = %bb.s, %bb.n
  %i.li = load i32, ptr @ia_nerrs, align 4
  %i.lj = add nsw i32 %i.li, 1
  store i32 %i.lj, ptr @ia_nerrs, align 4
  %i.lk = icmp sgt i8 %i.ac, -29
  br i1 %i.lk, label %bb.cf, label %.thread349

bb.cf:                                            ; preds = %bb.ce
  %i.ll = load i32, ptr @ia_char, align 4         ; 2 uses
  %i.lm = icmp ult i32 %i.ll, 272
  br i1 %i.lm, label %bb.cg, label %.lr.ph.preheader

bb.cg:                                            ; preds = %bb.cf
  %i.ln = zext nneg i32 %i.ll to i64
  %i.lo = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1
  %i.lq = zext i8 %i.lp to i64
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.cg, %bb.cf
  %i.lr = phi i64 [ %i.lq, %bb.cg ], [ 2, %bb.cf ]
  %1 = sub nsw i32 0, %i.ad                       ; 2 uses
  %2 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  %3 = zext nneg i32 %smax to i64
  %4 = add nsw i64 %2, %3
  %i.ls = sext i8 %i.ac to i64
  %invariant.gep = getelementptr i8, ptr @yycheck, i64 %i.ls
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ci
  %indvars.iv = phi i64 [ %4, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ci ] ; 5 uses
  %.0229393 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1230, %bb.ci ] ; 2 uses
  %.0233391 = phi i64 [ 0, %.lr.ph.preheader ], [ %.1234, %bb.ci ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.lt = load i8, ptr %gep, align 1
  %i.lu = sext i8 %i.lt to i64
  %i.lv = icmp eq i64 %indvars.iv, %i.lu
  %i.lw = icmp ne i64 %indvars.iv, 1
  %or.cond9 = and i1 %i.lw, %i.lv
  br i1 %or.cond9, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %.lr.ph
  %i.lx = getelementptr inbounds [8 x i8], ptr @yytname, i64 %indvars.iv
  %i.ly = load ptr, ptr %i.lx, align 8
  %i.lz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ly) #15
  %i.ma = add i64 %.0233391, 15
  %i.mb = add i64 %i.ma, %i.lz
  %i.mc = add nsw i32 %.0229393, 1
  br label %bb.ci

bb.ci:                                            ; preds = %.lr.ph, %bb.ch
  %.1234 = phi i64 [ %i.mb, %bb.ch ], [ %.0233391, %.lr.ph ] ; 2 uses
  %.1230 = phi i32 [ %i.mc, %bb.ch ], [ %.0229393, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 40
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !9

._crit_edge.loopexit:                             ; preds = %bb.ci
  %i.md = add i64 %.1234, 25
  %i.me = icmp slt i32 %.1230, 5
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr @yytname, i64 %i.lr
  %i.mg = load ptr, ptr %i.mf, align 8            ; 2 uses
  %i.mh = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.mg) #15
  %i.mi = add i64 %i.md, %i.mh
  %i.mj = alloca i8, i64 %i.mi, align 16          ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %i.mj, ptr noundef nonnull align 1 dereferenceable(25) @.str.4, i64 25, i1 false)
  %scevgep = getelementptr i8, ptr %i.mj, i64 24
  br label %yystpcpy.exit

yystpcpy.exit:                                    ; preds = %._crit_edge.loopexit, %yystpcpy.exit
  %.05.i323 = phi ptr [ %i.mm, %yystpcpy.exit ], [ %scevgep, %._crit_edge.loopexit ] ; 3 uses
  %.0.i324 = phi ptr [ %i.mk, %yystpcpy.exit ], [ %i.mg, %._crit_edge.loopexit ] ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.0.i324, i64 1
  %i.ml = load i8, ptr %.0.i324, align 1          ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.05.i323, i64 1
  store i8 %i.ml, ptr %.05.i323, align 1
  %.not.i325 = icmp eq i8 %i.ml, 0
  br i1 %.not.i325, label %yystpcpy.exit326, label %yystpcpy.exit, !llvm.loop !10

yystpcpy.exit326:                                 ; preds = %yystpcpy.exit
  br i1 %i.me, label %.lr.ph398.preheader, label %.loopexit

.lr.ph398.preheader:                              ; preds = %yystpcpy.exit326
  %i.mn = sext i32 %1 to i64
  %smax440 = call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  %5 = zext nneg i32 %smax440 to i64
  %6 = add nsw i64 %i.mn, %5
  %i.mo = sext i8 %i.ac to i64
  %invariant.gep489 = getelementptr i8, ptr @yycheck, i64 %i.mo
  br label %.lr.ph398

.lr.ph398:                                        ; preds = %.lr.ph398.preheader, %bb.cm
  %indvars.iv440 = phi i64 [ %6, %.lr.ph398.preheader ], [ %indvars.iv.next441, %bb.cm ] ; 5 uses
  %.0228397 = phi ptr [ %.05.i323, %.lr.ph398.preheader ], [ %.1, %bb.cm ] ; 2 uses
  %.2396 = phi i32 [ 0, %.lr.ph398.preheader ], [ %.3, %bb.cm ] ; 3 uses
  %gep490 = getelementptr i8, ptr %invariant.gep489, i64 %indvars.iv440
  %i.mp = load i8, ptr %gep490, align 1
  %i.mq = sext i8 %i.mp to i64
  %i.mr = icmp eq i64 %indvars.iv440, %i.mq
  %i.ms = icmp ne i64 %indvars.iv440, 1
  %or.cond11 = and i1 %i.ms, %i.mr
  br i1 %or.cond11, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %.lr.ph398
  %.not296 = icmp eq i32 %.2396, 0
  %i.mt = select i1 %.not296, ptr @.str.5, ptr @.str.6
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %bb.cj
  %.05.i327 = phi ptr [ %.0228397, %bb.cj ], [ %i.mw, %bb.ck ] ; 3 uses
  %.0.i328 = phi ptr [ %i.mt, %bb.cj ], [ %i.mu, %bb.ck ] ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.0.i328, i64 1
  %i.mv = load i8, ptr %.0.i328, align 1          ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.05.i327, i64 1
  store i8 %i.mv, ptr %.05.i327, align 1
  %.not.i329 = icmp eq i8 %i.mv, 0
  br i1 %.not.i329, label %yystpcpy.exit330, label %bb.ck, !llvm.loop !10

yystpcpy.exit330:                                 ; preds = %bb.ck
  %i.mx = getelementptr inbounds [8 x i8], ptr @yytname, i64 %indvars.iv440
  %i.my = load ptr, ptr %i.mx, align 8
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cl, %yystpcpy.exit330
  %.05.i331 = phi ptr [ %.05.i327, %yystpcpy.exit330 ], [ %i.nb, %bb.cl ] ; 3 uses
  %.0.i332 = phi ptr [ %i.my, %yystpcpy.exit330 ], [ %i.mz, %bb.cl ] ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.0.i332, i64 1
  %i.na = load i8, ptr %.0.i332, align 1          ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.05.i331, i64 1
  store i8 %i.na, ptr %.05.i331, align 1
  %.not.i333 = icmp eq i8 %i.na, 0
  br i1 %.not.i333, label %yystpcpy.exit334, label %bb.cl, !llvm.loop !10

yystpcpy.exit334:                                 ; preds = %bb.cl
  %i.nc = add nsw i32 %.2396, 1
  br label %bb.cm

bb.cm:                                            ; preds = %.lr.ph398, %yystpcpy.exit334
  %.3 = phi i32 [ %i.nc, %yystpcpy.exit334 ], [ %.2396, %.lr.ph398 ]
  %.1 = phi ptr [ %.05.i331, %yystpcpy.exit334 ], [ %.0228397, %.lr.ph398 ]
  %indvars.iv.next441 = add nsw i64 %indvars.iv440, 1 ; 2 uses
  %exitcond444.not = icmp eq i64 %indvars.iv.next441, 40
  br i1 %exitcond444.not, label %.loopexit, label %.lr.ph398, !llvm.loop !11

.thread349:                                       ; preds = %bb.ce
  call void @ia_error(ptr noundef nonnull @.str.8)
  unreachable

.loopexit:                                        ; preds = %bb.cm, %yystpcpy.exit326
  call void @ia_error(ptr noundef nonnull %i.mj)
  unreachable

bb.cn:                                            ; preds = %bb.d
  call void @ia_error(ptr noundef nonnull @.str.9)
  unreachable

.thread341:                                       ; preds = %bb.e, %bb.o, %bb.t, %bb.u
  %.0273 = phi i32 [ 0, %bb.u ], [ 1, %bb.e ], [ 1, %bb.t ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0273
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @ia_lex() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ia_VarCheck() unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @ia_VARLIST, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stdout, align 8
  %i.c = tail call i32 @fflush(ptr noundef %i.b)  ; 0 uses
  %i.d = load ptr, ptr @stderr, align 8
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef 450) #16 ; 0 uses
  tail call void (ptr, ...) @misc_ErrorReport(ptr noundef nonnull @.str.58) #14
  %i.f = load ptr, ptr @stderr, align 8
  %i.g = tail call i64 @fwrite(ptr nonnull @.str.59, i64 132, i64 1, ptr %i.f) #17 ; 0 uses
  tail call fastcc void @misc_DumpCore()
  unreachable

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr @symbol_STANDARDVARCOUNTER, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @flag_SetFlagValue(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @flag_Minimum(i32 noundef 7) #14
  %.not.i = icmp sgt i32 %1, %i.a
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stdout, align 8
  %i.c = tail call i32 @fflush(ptr noundef %i.b)  ; 0 uses
  %i.d = tail call ptr @flag_Name(i32 noundef 7) #14
  tail call void (ptr, ...) @misc_UserErrorReport(ptr noundef nonnull @.str.11, i32 noundef %1, ptr noundef %i.d) #14
  tail call fastcc void @misc_Error()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i32 @flag_Maximum(i32 noundef 7) #14
  %.not9.i = icmp slt i32 %1, %i.e
  br i1 %.not9.i, label %flag_CheckFlagValueInRange.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @stdout, align 8
  %i.g = tail call i32 @fflush(ptr noundef %i.f)  ; 0 uses
  %i.h = tail call ptr @flag_Name(i32 noundef 7) #14
  tail call void (ptr, ...) @misc_UserErrorReport(ptr noundef nonnull @.str.12, i32 noundef %1, ptr noundef %i.h) #14
  tail call fastcc void @misc_Error()
  unreachable

flag_CheckFlagValueInRange.exit:                  ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %1, ptr %i.i, align 4
  ret void
}

declare ptr @term_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #4

declare void @misc_UserErrorReport(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @misc_Error() unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8
  %i.b = tail call i32 @fflush(ptr noundef %i.a)  ; 0 uses
  %i.c = load ptr, ptr @stdout, align 8
  %i.d = tail call i32 @fflush(ptr noundef %i.c)  ; 0 uses
  %i.e = load ptr, ptr @stderr, align 8
  %i.f = tail call i32 @fflush(ptr noundef %i.e)  ; 0 uses
  tail call void @exit(i32 noundef 1) #18
  unreachable
}

declare ptr @string_IntToString(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ia_Symbol(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @symbol_Lookup(ptr noundef %0) #14 ; 3 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  %i.c = trunc i64 %i.b to i32
  %i.d = add i32 %i.c, 1                          ; 4 uses
  %i.e = icmp ult i32 %i.d, 1024
  br i1 %i.e, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr @memory_ALIGN, align 4     ; 2 uses
  %i.g = urem i32 %i.d, %i.f                      ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  %i.h = sub i32 %i.f, %i.g
  %i.i = select i1 %.not.i.i.i.i, i32 0, i32 %i.h
  %.1.i.i.i.i = add i32 %i.i, %i.d
  %i.j = load i32, ptr @memory_OFFSET, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -8
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.q, ptr %i.r, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %i.q, ptr @memory_BIGBLOCKS, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not20.i.i = icmp eq ptr %i.q, null
  br i1 %.not20.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.n, align 8
  store ptr %i.s, ptr %i.q, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = load i32, ptr @memory_MARKSIZE, align 4
  %i.u = add i32 %.1.i.i.i.i, %i.t
  %i.v = zext i32 %i.u to i64
  %i.w = add nuw nsw i64 %i.v, 16                 ; 2 uses
  %i.x = load i64, ptr @memory_FREEDBYTES, align 8
  %i.y = add i64 %i.w, %i.x
  store i64 %i.y, ptr @memory_FREEDBYTES, align 8
  %i.z = load i64, ptr @memory_MAXMEM, align 8    ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = add nuw i64 %i.z, %i.w
  store i64 %i.ab, ptr @memory_MAXMEM, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @free(ptr noundef nonnull %i.ac) #14
  br label %ia_StringFree.exit

bb.k:                                             ; preds = %bb.b
  %i.ad = zext nneg i32 %i.d to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @memory_ARRAY, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = sext i32 %i.ah to i64
  %i.aj = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ak = add i64 %i.aj, %i.ai
  store i64 %i.ak, ptr @memory_FREEDBYTES, align 8
  %i.al = load ptr, ptr %i.af, align 8
  store ptr %i.al, ptr %0, align 8
  %i.am = load ptr, ptr %i.ae, align 8
  store ptr %0, ptr %i.am, align 8
  br label %ia_StringFree.exit

ia_StringFree.exit:                               ; preds = %bb.j, %bb.k
  %i.an = sub nsw i32 0, %i.a
end_hunk_1
begin_hunk_2_@ia_Symbol:bb.a
bb.ab:                                            ; preds = %.loopexit.i
  %i.dk = load ptr, ptr @stdout, align 8
  %i.dl = tail call i32 @fflush(ptr noundef %i.dk) ; 0 uses
  %i.dm = load i32, ptr @dfg_LINENUMBER, align 4
  tail call void (ptr, ...) @misc_UserErrorReport(ptr noundef nonnull @.str.55, i32 noundef %i.dm, ptr noundef %0) #14
  tail call fastcc void @misc_Error()
  unreachable

ia_VarLookup.exit:                                ; preds = %ia_StringFree.exit.i, %bb.aa
  %.019.in.i = phi ptr [ %i.df, %bb.aa ], [ %i.db, %ia_StringFree.exit.i ]
  %.019.i = load i32, ptr %.019.in.i, align 8
  br label %ia_SymCheck.exit

ia_SymCheck.exit:                                 ; preds = %ia_StringFree.exit, %ia_VarLookup.exit
  %.0 = phi i32 [ %.019.i, %ia_VarLookup.exit ], [ %i.a, %ia_StringFree.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: cold noreturn nounwind uwtable
define dso_local void @ia_error(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr @stdout, align 8
  %i.b = tail call i32 @fflush(ptr noundef %i.a)  ; 0 uses
  %i.c = load i32, ptr @dfg_LINENUMBER, align 4
  tail call void (ptr, ...) @misc_UserErrorReport(ptr noundef nonnull @.str.10, i32 noundef %i.c, ptr noundef %0) #14
  tail call fastcc void @misc_Error()
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ia_GetNextRequest(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  store ptr %0, ptr @ia_in, align 8
  store ptr null, ptr @ia_PROOFREQUEST, align 8
  store ptr %1, ptr @ia_FLAGS, align 8
  %i.a = tail call i32 @ia_parse()                ; 0 uses
  %i.b = load ptr, ptr @ia_PROOFREQUEST, align 8
  ret ptr %i.b
}

declare i32 @flag_Minimum(i32 noundef) local_unnamed_addr #2

declare ptr @flag_Name(i32 noundef) local_unnamed_addr #2

declare i32 @flag_Maximum(i32 noundef) local_unnamed_addr #2

declare i32 @list_Length(ptr noundef) local_unnamed_addr #2

declare ptr @memory_Malloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

declare i32 @symbol_Lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare void @term_Delete(ptr noundef) local_unnamed_addr #2

declare ptr @list_PointerDeleteDuplicates(ptr noundef) local_unnamed_addr #2

declare ptr @fol_CreateQuantifier(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @list_DeleteWithElement(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal void @ia_VarFree(ptr noundef %0) #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #15
  %i.c = trunc i64 %i.b to i32
  %i.d = add i32 %i.c, 1                          ; 4 uses
  %i.e = icmp ult i32 %i.d, 1024
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr @memory_ALIGN, align 4     ; 2 uses
  %i.g = urem i32 %i.d, %i.f                      ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  %i.h = sub i32 %i.f, %i.g
  %i.i = select i1 %.not.i.i.i.i, i32 0, i32 %i.h
  %.1.i.i.i.i = add i32 %i.i, %i.d
  %i.j = load i32, ptr @memory_OFFSET, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds i8, ptr %i.a, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -8
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.q, ptr %i.r, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store ptr %i.q, ptr @memory_BIGBLOCKS, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not20.i.i = icmp eq ptr %i.q, null
  br i1 %.not20.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8
  store ptr %i.s, ptr %i.q, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = load i32, ptr @memory_MARKSIZE, align 4
  %i.u = add i32 %.1.i.i.i.i, %i.t
  %i.v = zext i32 %i.u to i64
  %i.w = add nuw nsw i64 %i.v, 16                 ; 2 uses
  %i.x = load i64, ptr @memory_FREEDBYTES, align 8
  %i.y = add i64 %i.w, %i.x
  store i64 %i.y, ptr @memory_FREEDBYTES, align 8
  %i.z = load i64, ptr @memory_MAXMEM, align 8    ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = add nuw i64 %i.z, %i.w
  store i64 %i.ab, ptr @memory_MAXMEM, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = getelementptr inbounds i8, ptr %i.a, i64 -16
  tail call void @free(ptr noundef nonnull %i.ac) #14
  br label %ia_StringFree.exit

bb.j:                                             ; preds = %bb.a
  %i.ad = zext nneg i32 %i.d to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @memory_ARRAY, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = sext i32 %i.ah to i64
  %i.aj = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ak = add i64 %i.aj, %i.ai
  store i64 %i.ak, ptr @memory_FREEDBYTES, align 8
  %i.al = load ptr, ptr %i.af, align 8
  store ptr %i.al, ptr %i.a, align 8
  %i.am = load ptr, ptr %i.ae, align 8
  store ptr %i.a, ptr %i.am, align 8
  br label %ia_StringFree.exit

ia_StringFree.exit:                               ; preds = %bb.i, %bb.j
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = sext i32 %i.ap to i64
  %i.ar = load i64, ptr @memory_FREEDBYTES, align 8
  %i.as = add i64 %i.ar, %i.aq
  store i64 %i.as, ptr @memory_FREEDBYTES, align 8
  %i.at = load ptr, ptr %i.an, align 8
  store ptr %i.at, ptr %0, align 8
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %0, ptr %i.au, align 8
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @misc_ErrorReport(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @misc_DumpCore() unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8
  %i.b = tail call i64 @fwrite(ptr nonnull @.str.60, i64 2, i64 1, ptr %i.a) #17 ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8
  %i.d = tail call i32 @fflush(ptr noundef %i.c)  ; 0 uses
  %i.e = load ptr, ptr @stdout, align 8
  %i.f = tail call i32 @fflush(ptr noundef %i.e)  ; 0 uses
  %i.g = load ptr, ptr @stderr, align 8
  %i.h = tail call i32 @fflush(ptr noundef %i.g)  ; 0 uses
  tail call void @abort() #19
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { cold nounwind }
attributes #17 = { cold }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
end_hunk_2
