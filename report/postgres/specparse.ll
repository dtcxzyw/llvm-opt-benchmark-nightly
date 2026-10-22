Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/specparse?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.YYSTYPE = type { %struct.anon }
%struct.anon = type { ptr, i32 }
%struct.TestSpec = type { ptr, i32, ptr, ptr, i32, ptr, i32 }

@spec_yychar = dso_local local_unnamed_addr global i32 0, align 4
@yypact = internal unnamed_addr constant [43 x i8] c"\F2\02\F8\F2\03\04\F2\07\F2\F2\06\FD\F2\08\0C\F2\F2\0B\F2\01\F2\09\0C\F2\F2\0F\FE\F2\FC\F2\11\F2\F2\12\F2\FF\F2\F2\10\F2\FC\F2\F2", align 16
@yytranslate = internal unnamed_addr constant [268 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\0D\0E\10\02\0F\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C", align 16
@yycheck = internal unnamed_addr constant [42 x i8] c"\04\09\00\0B\07\08\03\03\0A\0B\04\0A\10\0E\0F\08\04\09\07\04\03\05\0D\0D\06\0B\1A(\FF\FF\11\1A\FF\FF\FF\FF\FF\FF\FF\FF\FF\16", align 16
@yytable = internal unnamed_addr constant [42 x i8] c"!\04\03\05\0E\0A\08\09\19\05\0D\19\22'(\0A\15\04\0E\1E%)\1C\14&\0F\1F*\00\00\18 \00\00\00\00\00\00\00\00\00\1D", align 16
@spec_yylval = dso_local local_unnamed_addr global %union.YYSTYPE zeroinitializer, align 8
@yydefact = internal unnamed_addr constant [43 x i8] c"\03\00\08\01\00\00\04\00\07\09\00\11\0B\05\00\0A\02\10\13\00\06\17\14\16\12\00\08\0E\00\15\00\0C\0D\1B\1D\00\1A\0F\00\18\00\1C\19", align 16
@yyr2 = internal unnamed_addr constant [30 x i8] c"\00\02\04\00\02\00\01\02\00\02\02\01\05\02\01\03\01\00\02\01\02\02\01\01\04\03\01\01\03\01", align 16
@parseresult = dso_local local_unnamed_addr global %struct.TestSpec zeroinitializer, align 8
@yyr1 = internal unnamed_addr constant [30 x i8] c"\00\11\12\13\13\14\14\15\16\16\17\17\18\19\19\1A\1B\1B\1C\1C\1D\1E\1E\1F\1F  !!!", align 16
@yypgoto = internal unnamed_addr constant [17 x i8] c"\F2\F2\F2\F2\0A\00\F2\0E\F2\05\F2\F2\0D\F2\13\F2\F3", align 16
@yydefgoto = internal unnamed_addr constant [17 x i8] c"\00\01\02\13\06\07\0B\0C\1A\1B\10\11\12\16\17#$", align 16
@spec_yynerrs = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 3) i32 @spec_yyparse() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 6 uses
  %0 = alloca [200 x %union.YYSTYPE], align 16    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #6
  store i32 -2, ptr @spec_yychar, align 4
  br label %bb.c

bb.b:                                             ; preds = %bb.bc, %bb.v
  %.0253 = phi ptr [ %.3256, %bb.v ], [ %i.hu, %bb.bc ]
  %.0246 = phi ptr [ %i.az, %bb.v ], [ %i.hv, %bb.bc ]
  %.0239 = phi i32 [ %i.av, %bb.v ], [ %i.im, %bb.bc ]
  %i.b = getelementptr inbounds nuw i8, ptr %.0253, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0267 = phi i64 [ 200, %bb.a ], [ %.2269, %bb.b ] ; 4 uses
  %.0261 = phi ptr [ %i.a, %bb.a ], [ %.3264, %bb.b ] ; 7 uses
  %.1254 = phi ptr [ %i.a, %bb.a ], [ %i.b, %bb.b ] ; 4 uses
  %.0249 = phi ptr [ %0, %bb.a ], [ %.3252, %bb.b ] ; 2 uses
  %.1247 = phi ptr [ %0, %bb.a ], [ %.0246, %bb.b ]
  %.1240 = phi i32 [ 0, %bb.a ], [ %.0239, %bb.b ] ; 3 uses
  %i.c = trunc nsw i32 %.1240 to i8
  store i8 %i.c, ptr %.1254, align 1
  %i.d = getelementptr inbounds i8, ptr %.0261, i64 %.0267
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -1
  %.not = icmp ugt ptr %i.e, %.1254
  br i1 %.not, label %.thread319, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %.1254 to i64
  %i.g = ptrtoint ptr %.0261 to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %i.j = icmp sgt i64 %.0267, 9999
  br i1 %i.j, label %bb.be, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = shl i64 %.0267, 1
  %spec.store.select = call i64 @llvm.smin.i64(i64 %i.k, i64 10000) ; 4 uses
  %i.l = mul i64 %spec.store.select, 17
  %i.m = add i64 %i.l, 15
  %i.n = call noalias ptr @malloc(i64 noundef %i.m) #7 ; 6 uses
  %.not289.not = icmp eq ptr %i.n, null
  br i1 %.not289.not, label %bb.be, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr align 1 %.0261, i64 %i.i, i1 false)
  %i.o = add nsw i64 %spec.store.select, 15
  %i.p = sdiv i64 %i.o, 16
  %i.q = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.p ; 3 uses
  %i.r = shl i64 %i.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr align 8 %.0249, i64 %i.r, i1 false)
  %.not290 = icmp eq ptr %.0261, %i.a
  br i1 %.not290, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %.0261) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.s = getelementptr inbounds i8, ptr %i.n, i64 %i.h
  %i.t = getelementptr inbounds [16 x i8], ptr %i.q, i64 %i.i
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -16
  %i.v = add nsw i64 %spec.store.select, -1
  %.not291 = icmp sgt i64 %i.v, %i.h
  br i1 %.not291, label %.thread319, label %.loopexit.thread

.thread319:                                       ; preds = %bb.h, %bb.c
  %.2269 = phi i64 [ %.0267, %bb.c ], [ %spec.store.select, %bb.h ]
  %.3264 = phi ptr [ %.0261, %bb.c ], [ %i.n, %bb.h ] ; 4 uses
  %.3256 = phi ptr [ %.1254, %bb.c ], [ %i.s, %bb.h ] ; 2 uses
  %.3252 = phi ptr [ %.0249, %bb.c ], [ %i.q, %bb.h ]
  %.3 = phi ptr [ %.1247, %bb.c ], [ %i.u, %bb.h ] ; 55 uses
  %i.w = icmp eq i32 %.1240, 3
  br i1 %i.w, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.thread319
  %i.x = sext i32 %.1240 to i64                   ; 3 uses
  %i.y = getelementptr inbounds i8, ptr @yypact, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = sext i8 %i.z to i32
  %i.ab = shl nuw i64 1, %i.x                     ; 2 uses
  %i.ac = and i64 %i.ab, 7377303999305
  %.not292 = icmp eq i64 %i.ac, 0
  br i1 %.not292, label %bb.j, label %bb.w

bb.j:                                             ; preds = %bb.i
  %i.ad = load i32, ptr @spec_yychar, align 4     ; 2 uses
  %i.ae = icmp eq i32 %i.ad, -2
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = call i32 @spec_yylex() #6               ; 2 uses
  store i32 %i.af, ptr @spec_yychar, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ag = phi i32 [ %i.af, %bb.k ], [ %i.ad, %bb.j ] ; 4 uses
  %i.ah = icmp slt i32 %i.ag, 1
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr @spec_yychar, align 4
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.ai = icmp eq i32 %i.ag, 256
  br i1 %i.ai, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 257, ptr @spec_yychar, align 4
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.aj = icmp samesign ult i32 %i.ag, 268
  br i1 %i.aj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ak = zext nneg i32 %i.ag to i64
  %i.al = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1
  %i.an = sext i8 %i.am to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.m
  %.0243 = phi i32 [ 0, %bb.m ], [ %i.an, %bb.q ], [ 2, %bb.p ] ; 2 uses
  %i.ao = add nsw i32 %.0243, %i.aa               ; 2 uses
  %or.cond3 = icmp ugt i32 %i.ao, 41
  br i1 %or.cond3, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = zext nneg i32 %i.ao to i64              ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr @yycheck, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = sext i8 %i.ar to i32
  %.not293 = icmp eq i32 %.0243, %i.as
  br i1 %.not293, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.at = getelementptr inbounds nuw i8, ptr @yytable, i64 %i.ap
  %i.au = load i8, ptr %i.at, align 1
  %i.av = sext i8 %i.au to i32                    ; 2 uses
  %i.aw = shl nuw nsw i64 1, %i.ap
  %i.ax = and i64 %i.aw, 2195533594624
  %.not294 = icmp eq i64 %i.ax, 0
  br i1 %.not294, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = sub nsw i32 0, %i.av
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %.3, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) @spec_yylval, i64 16, i1 false)
  store i32 -2, ptr @spec_yychar, align 4
  br label %bb.b

bb.w:                                             ; preds = %bb.r, %bb.s, %bb.i
  %i.ba = getelementptr inbounds i8, ptr @yydefact, i64 %i.x
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = sext i8 %i.bb to i32
  %i.bd = and i64 %i.ab, 1410125546674
  %.not296 = icmp eq i64 %i.bd, 0
  br i1 %.not296, label %bb.x, label %bb.bd

bb.x:                                             ; preds = %bb.w, %bb.u
  %.0245 = phi i32 [ %i.bc, %bb.w ], [ %i.ay, %bb.u ] ; 2 uses
  %i.be = sext i32 %.0245 to i64                  ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr @yyr2, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = sext i8 %i.bg to i64                    ; 2 uses
  %i.bi = sub nsw i64 1, %i.bh
  %i.bj = getelementptr inbounds [16 x i8], ptr %.3, i64 %i.bi ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.bj, align 8 ; 2 uses
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.76.0.copyload = load i32, ptr %.sroa.76.0..sroa_idx, align 8 ; 14 uses
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %.sroa.89.0.copyload = load i32, ptr %.sroa.89.0..sroa_idx, align 4 ; 26 uses
  switch i32 %.0245, label %bb.ay [
    i32 2, label %bb.y
    i32 3, label %bb.z
    i32 4, label %bb.aa
    i32 5, label %bb.ab
    i32 6, label %bb.ac
    i32 7, label %bb.ad
    i32 8, label %bb.ab
    i32 9, label %bb.ae
    i32 10, label %bb.af
    i32 11, label %bb.ag
    i32 12, label %bb.ah
    i32 13, label %bb.ai
    i32 14, label %bb.aj
    i32 15, label %bb.ak
    i32 16, label %bb.al
    i32 17, label %bb.z
    i32 18, label %bb.am
    i32 19, label %bb.an
    i32 20, label %bb.ao
    i32 21, label %bb.ap
    i32 22, label %bb.aq
    i32 23, label %bb.ar
    i32 24, label %bb.as
    i32 25, label %bb.at
    i32 26, label %bb.au
    i32 27, label %bb.av
    i32 28, label %bb.aw
    i32 29, label %bb.ax
  ]

bb.y:                                             ; preds = %bb.x
  %i.bk = getelementptr inbounds i8, ptr %.3, i64 -48
  %i.bl = load ptr, ptr %i.bk, align 8
  store ptr %i.bl, ptr @parseresult, align 8
  %i.bm = getelementptr inbounds i8, ptr %.3, i64 -40
  %i.bn = load i32, ptr %i.bm, align 8
  store i32 %i.bn, ptr getelementptr inbounds nuw (i8, ptr @parseresult, i64 8), align 8
  %i.bo = getelementptr inbounds i8, ptr %.3, i64 -32
  %i.bp = load ptr, ptr %i.bo, align 8
  store ptr %i.bp, ptr getelementptr inbounds nuw (i8, ptr @parseresult, i64 16), align 8
  %i.bq = getelementptr inbounds i8, ptr %.3, i64 -16
  %i.br = load ptr, ptr %i.bq, align 8
  store ptr %i.br, ptr getelementptr inbounds nuw (i8, ptr @parseresult, i64 24), align 8
  %i.bs = getelementptr inbounds i8, ptr %.3, i64 -8
  %i.bt = load i32, ptr %i.bs, align 8
  store i32 %i.bt, ptr getelementptr inbounds nuw (i8, ptr @parseresult, i64 32), align 8
  %i.bu = load ptr, ptr %.3, align 8
  store ptr %i.bu, ptr getelementptr inbounds nuw (i8, ptr @parseresult, i64 40), align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.bw = load i32, ptr %i.bv, align 8
  store i32 %i.bw, ptr getelementptr inbounds nuw (i8, ptr @parseresult, i64 48), align 8
  br label %bb.ay

bb.z:                                             ; preds = %bb.x, %bb.x
  br label %bb.ay

bb.aa:                                            ; preds = %bb.x
  %i.bx = getelementptr inbounds i8, ptr %.3, i64 -16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds i8, ptr %.3, i64 -8 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = add i32 %i.ca, 1
  %i.cc = sext i32 %i.cb to i64
  %i.cd = call ptr @pg_realloc_mul(ptr noundef %i.by, i64 noundef 8, i64 noundef %i.cc) #6 ; 2 uses
  %i.ce = load ptr, ptr %.3, align 8
  %i.cf = load i32, ptr %i.bz, align 8
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cg
  store ptr %i.ce, ptr %i.ch, align 8
  %i.ci = load i32, ptr %i.bz, align 8
  %i.cj = add i32 %i.ci, 1
  br label %bb.ay

bb.ab:                                            ; preds = %bb.x, %bb.x
  br label %bb.ay

bb.ac:                                            ; preds = %bb.x
  %i.ck = load ptr, ptr %.3, align 8
  br label %bb.ay

bb.ad:                                            ; preds = %bb.x
  %i.cl = load ptr, ptr %.3, align 8
  br label %bb.ay

bb.ae:                                            ; preds = %bb.x
  %i.cm = load ptr, ptr %.3, align 8
  br label %bb.ay

bb.af:                                            ; preds = %bb.x
  %i.cn = getelementptr inbounds i8, ptr %.3, i64 -16
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds i8, ptr %.3, i64 -8 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = add i32 %i.cq, 1
  %i.cs = sext i32 %i.cr to i64
  %i.ct = call ptr @pg_realloc_mul(ptr noundef %i.co, i64 noundef 8, i64 noundef %i.cs) #6 ; 2 uses
  %i.cu = load ptr, ptr %.3, align 8
  %i.cv = load i32, ptr %i.cp, align 8
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.cw
  store ptr %i.cu, ptr %i.cx, align 8
  %i.cy = load i32, ptr %i.cp, align 8
  %i.cz = add i32 %i.cy, 1
  br label %bb.ay

bb.ag:                                            ; preds = %bb.x
  %i.da = call ptr @pg_malloc(i64 noundef 8) #6   ; 2 uses
  %i.db = load ptr, ptr %.3, align 8
  store ptr %i.db, ptr %i.da, align 8
  br label %bb.ay

bb.ah:                                            ; preds = %bb.x
  %i.dc = call ptr @pg_malloc(i64 noundef 40) #6  ; 6 uses
  %i.dd = getelementptr inbounds i8, ptr %.3, i64 -48
  %i.de = load ptr, ptr %i.dd, align 8
  store ptr %i.de, ptr %i.dc, align 8
  %i.df = getelementptr inbounds i8, ptr %.3, i64 -32
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.dg, ptr %i.dh, align 8
  %i.di = getelementptr inbounds i8, ptr %.3, i64 -16
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  store ptr %i.dj, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds i8, ptr %.3, i64 -8
  %i.dm = load i32, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  store i32 %i.dm, ptr %i.dn, align 8
  %i.do = load ptr, ptr %.3, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store ptr %i.do, ptr %i.dp, align 8
  br label %bb.ay

bb.ai:                                            ; preds = %bb.x
  %i.dq = getelementptr inbounds i8, ptr %.3, i64 -16
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds i8, ptr %.3, i64 -8 ; 3 uses
  %i.dt = load i32, ptr %i.ds, align 8
  %i.du = add i32 %i.dt, 1
  %i.dv = sext i32 %i.du to i64
  %i.dw = call ptr @pg_realloc_mul(ptr noundef %i.dr, i64 noundef 8, i64 noundef %i.dv) #6 ; 2 uses
  %i.dx = load ptr, ptr %.3, align 8
  %i.dy = load i32, ptr %i.ds, align 8
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.dz
  store ptr %i.dx, ptr %i.ea, align 8
  %i.eb = load i32, ptr %i.ds, align 8
  %i.ec = add i32 %i.eb, 1
  br label %bb.ay

bb.aj:                                            ; preds = %bb.x
  %i.ed = call ptr @pg_malloc(i64 noundef 8) #6   ; 2 uses
  %i.ee = load ptr, ptr %.3, align 8
  store ptr %i.ee, ptr %i.ed, align 8
  br label %bb.ay

bb.ak:                                            ; preds = %bb.x
  %i.ef = call ptr @pg_malloc(i64 noundef 24) #6  ; 5 uses
  %i.eg = getelementptr inbounds i8, ptr %.3, i64 -16
  %i.eh = load ptr, ptr %i.eg, align 8
  store ptr %i.eh, ptr %i.ef, align 8
  %i.ei = load ptr, ptr %.3, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr %i.ei, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store i32 -1, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 20
  store i8 0, ptr %i.el, align 4
  br label %bb.ay

bb.al:                                            ; preds = %bb.x
  %.sroa.0.0.copyload82 = load ptr, ptr %.3, align 8
  %.sroa.76.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %.sroa.76.0.copyload85 = load i32, ptr %.sroa.76.0..sroa_idx84, align 8
  %.sroa.89.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %.3, i64 12
  %.sroa.89.0.copyload89 = load i32, ptr %.sroa.89.0..sroa_idx88, align 4
  br label %bb.ay

bb.am:                                            ; preds = %bb.x
  %i.em = getelementptr inbounds i8, ptr %.3, i64 -16
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = getelementptr inbounds i8, ptr %.3, i64 -8 ; 3 uses
  %i.ep = load i32, ptr %i.eo, align 8
  %i.eq = add i32 %i.ep, 1
  %i.er = sext i32 %i.eq to i64
  %i.es = call ptr @pg_realloc_mul(ptr noundef %i.en, i64 noundef 8, i64 noundef %i.er) #6 ; 2 uses
  %i.et = load ptr, ptr %.3, align 8
  %i.eu = load i32, ptr %i.eo, align 8
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.ev
  store ptr %i.et, ptr %i.ew, align 8
  %i.ex = load i32, ptr %i.eo, align 8
  %i.ey = add i32 %i.ex, 1
  br label %bb.ay

bb.an:                                            ; preds = %bb.x
  %i.ez = call ptr @pg_malloc(i64 noundef 8) #6   ; 2 uses
  %i.fa = load ptr, ptr %.3, align 8
  store ptr %i.fa, ptr %i.ez, align 8
  br label %bb.ay

bb.ao:                                            ; preds = %bb.x
  %i.fb = call ptr @pg_malloc(i64 noundef 16) #6  ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.fd = load i32, ptr %i.fc, align 8
  store i32 %i.fd, ptr %i.fb, align 8
  %i.fe = load ptr, ptr %.3, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store ptr %i.fe, ptr %i.ff, align 8
  br label %bb.ay

bb.ap:                                            ; preds = %bb.x
  %i.fg = getelementptr inbounds i8, ptr %.3, i64 -16
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = getelementptr inbounds i8, ptr %.3, i64 -8 ; 3 uses
  %i.fj = load i32, ptr %i.fi, align 8
  %i.fk = add i32 %i.fj, 1
  %i.fl = sext i32 %i.fk to i64
  %i.fm = call ptr @pg_realloc_mul(ptr noundef %i.fh, i64 noundef 8, i64 noundef %i.fl) #6 ; 2 uses
  %i.fn = load ptr, ptr %.3, align 8
  %i.fo = load i32, ptr %i.fi, align 8
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.fp
  store ptr %i.fn, ptr %i.fq, align 8
  %i.fr = load i32, ptr %i.fi, align 8
  %i.fs = add i32 %i.fr, 1
  br label %bb.ay

bb.aq:                                            ; preds = %bb.x
  %i.ft = call ptr @pg_malloc(i64 noundef 8) #6   ; 2 uses
  %i.fu = load ptr, ptr %.3, align 8
  store ptr %i.fu, ptr %i.ft, align 8
  br label %bb.ay

bb.ar:                                            ; preds = %bb.x
  %i.fv = call ptr @pg_malloc(i64 noundef 32) #6  ; 5 uses
  %i.fw = load ptr, ptr %.3, align 8
  store ptr %i.fw, ptr %i.fv, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store ptr null, ptr %i.fx, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store i32 0, ptr %i.fy, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  store ptr null, ptr %i.fz, align 8
  br label %bb.ay

bb.as:                                            ; preds = %bb.x
  %i.ga = call ptr @pg_malloc(i64 noundef 32) #6  ; 5 uses
  %i.gb = getelementptr inbounds i8, ptr %.3, i64 -48
  %i.gc = load ptr, ptr %i.gb, align 8
  store ptr %i.gc, ptr %i.ga, align 8
  %i.gd = getelementptr inbounds i8, ptr %.3, i64 -16
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr %i.ge, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds i8, ptr %.3, i64 -8
  %i.gh = load i32, ptr %i.gg, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store i32 %i.gh, ptr %i.gi, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  store ptr null, ptr %i.gj, align 8
  br label %bb.ay

bb.at:                                            ; preds = %bb.x
  %i.gk = getelementptr inbounds i8, ptr %.3, i64 -32
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = getelementptr inbounds i8, ptr %.3, i64 -24 ; 3 uses
  %i.gn = load i32, ptr %i.gm, align 8
  %i.go = add i32 %i.gn, 1
  %i.gp = sext i32 %i.go to i64
  %i.gq = call ptr @pg_realloc_mul(ptr noundef %i.gl, i64 noundef 8, i64 noundef %i.gp) #6 ; 2 uses
  %i.gr = load ptr, ptr %.3, align 8
  %i.gs = load i32, ptr %i.gm, align 8
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.gt
  store ptr %i.gr, ptr %i.gu, align 8
  %i.gv = load i32, ptr %i.gm, align 8
  %i.gw = add i32 %i.gv, 1
  br label %bb.ay

bb.au:                                            ; preds = %bb.x
  %i.gx = call ptr @pg_malloc(i64 noundef 8) #6   ; 2 uses
  %i.gy = load ptr, ptr %.3, align 8
  store ptr %i.gy, ptr %i.gx, align 8
  br label %bb.ay

bb.av:                                            ; preds = %bb.x
  %i.gz = call ptr @pg_malloc(i64 noundef 32) #6  ; 6 uses
  %i.ha = load ptr, ptr %.3, align 8
  store ptr %i.ha, ptr %i.gz, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store i32 1, ptr %i.hb, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 12
  store i32 -1, ptr %i.hc, align 4
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store ptr null, ptr %i.hd, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  store i32 -1, ptr %i.he, align 8
  br label %bb.ay

bb.aw:                                            ; preds = %bb.x
  %i.hf = call ptr @pg_malloc(i64 noundef 32) #6  ; 6 uses
  %i.hg = getelementptr inbounds i8, ptr %.3, i64 -32
  %i.hh = load ptr, ptr %i.hg, align 8
  store ptr %i.hh, ptr %i.hf, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store i32 2, ptr %i.hi, align 8
  %i.hj = load i32, ptr %.3, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  store i32 %i.hj, ptr %i.hk, align 4
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  store ptr null, ptr %i.hl, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  store i32 -1, ptr %i.hm, align 8
  br label %bb.ay

bb.ax:                                            ; preds = %bb.x
  %i.hn = call ptr @pg_malloc(i64 noundef 32) #6  ; 6 uses
  store ptr null, ptr %i.hn, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store i32 0, ptr %i.ho, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  store i32 -1, ptr %i.hp, align 4
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store ptr null, ptr %i.hq, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  store i32 -1, ptr %i.hr, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.x, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y
  %.sroa.89.0 = phi i32 [ %.sroa.89.0.copyload, %bb.x ], [ %.sroa.89.0.copyload, %bb.y ], [ %.sroa.89.0.copyload, %bb.z ], [ %.sroa.89.0.copyload, %bb.aa ], [ %.sroa.89.0.copyload, %bb.ab ], [ %.sroa.89.0.copyload, %bb.ac ], [ %.sroa.89.0.copyload, %bb.ad ], [ %.sroa.89.0.copyload, %bb.ax ], [ %.sroa.89.0.copyload, %bb.ae ], [ %.sroa.89.0.copyload, %bb.af ], [ %.sroa.89.0.copyload, %bb.ag ], [ %.sroa.89.0.copyload, %bb.ah ], [ %.sroa.89.0.copyload, %bb.ai ], [ %.sroa.89.0.copyload, %bb.aj ], [ %.sroa.89.0.copyload, %bb.ak ], [ %.sroa.89.0.copyload89, %bb.al ], [ %.sroa.89.0.copyload, %bb.aw ], [ %.sroa.89.0.copyload, %bb.am ], [ %.sroa.89.0.copyload, %bb.an ], [ %.sroa.89.0.copyload, %bb.ao ], [ %.sroa.89.0.copyload, %bb.ap ], [ %.sroa.89.0.copyload, %bb.aq ], [ %.sroa.89.0.copyload, %bb.ar ], [ %.sroa.89.0.copyload, %bb.as ], [ %.sroa.89.0.copyload, %bb.at ], [ %.sroa.89.0.copyload, %bb.au ], [ %.sroa.89.0.copyload, %bb.av ]
  %.sroa.76.0 = phi i32 [ %.sroa.76.0.copyload, %bb.x ], [ %.sroa.76.0.copyload, %bb.y ], [ 0, %bb.z ], [ %i.cj, %bb.aa ], [ %.sroa.76.0.copyload, %bb.ab ], [ %.sroa.76.0.copyload, %bb.ac ], [ %.sroa.76.0.copyload, %bb.ad ], [ %.sroa.76.0.copyload, %bb.ax ], [ %.sroa.76.0.copyload, %bb.ae ], [ %i.cz, %bb.af ], [ 1, %bb.ag ], [ %.sroa.76.0.copyload, %bb.ah ], [ %i.ec, %bb.ai ], [ 1, %bb.aj ], [ %.sroa.76.0.copyload, %bb.ak ], [ %.sroa.76.0.copyload85, %bb.al ], [ %.sroa.76.0.copyload, %bb.aw ], [ %i.ey, %bb.am ], [ 1, %bb.an ], [ %.sroa.76.0.copyload, %bb.ao ], [ %i.fs, %bb.ap ], [ 1, %bb.aq ], [ %.sroa.76.0.copyload, %bb.ar ], [ %.sroa.76.0.copyload, %bb.as ], [ %i.gw, %bb.at ], [ 1, %bb.au ], [ %.sroa.76.0.copyload, %bb.av ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload, %bb.x ], [ %.sroa.0.0.copyload, %bb.y ], [ null, %bb.z ], [ %i.cd, %bb.aa ], [ null, %bb.ab ], [ %i.ck, %bb.ac ], [ %i.cl, %bb.ad ], [ %i.hn, %bb.ax ], [ %i.cm, %bb.ae ], [ %i.ct, %bb.af ], [ %i.da, %bb.ag ], [ %i.dc, %bb.ah ], [ %i.dw, %bb.ai ], [ %i.ed, %bb.aj ], [ %i.ef, %bb.ak ], [ %.sroa.0.0.copyload82, %bb.al ], [ %i.hf, %bb.aw ], [ %i.es, %bb.am ], [ %i.ez, %bb.an ], [ %i.fb, %bb.ao ], [ %i.fm, %bb.ap ], [ %i.ft, %bb.aq ], [ %i.fv, %bb.ar ], [ %i.ga, %bb.as ], [ %i.gq, %bb.at ], [ %i.gx, %bb.au ], [ %i.gz, %bb.av ]
  %i.hs = sub nsw i64 0, %i.bh                    ; 2 uses
  %i.ht = getelementptr inbounds [16 x i8], ptr %.3, i64 %i.hs ; 3 uses
  %i.hu = getelementptr inbounds i8, ptr %.3256, i64 %i.hs ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 16 ; 2 uses
  store ptr %.sroa.0.0, ptr %i.hv, align 8
  %.sroa.76.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  store i32 %.sroa.76.0, ptr %.sroa.76.0..sroa_idx86, align 8
  %.sroa.89.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.ht, i64 28
  store i32 %.sroa.89.0, ptr %.sroa.89.0..sroa_idx90, align 4
  %i.hw = getelementptr inbounds i8, ptr @yyr1, i64 %i.be
  %i.hx = load i8, ptr %i.hw, align 1
  %i.hy = sext i8 %i.hx to i64
  %i.hz = add nsw i64 %i.hy, -17                  ; 2 uses
  %i.ia = getelementptr inbounds i8, ptr @yypgoto, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1
  %i.ic = sext i8 %i.ib to i32
  %i.id = load i8, ptr %i.hu, align 1             ; 2 uses
  %i.ie = sext i8 %i.id to i32
  %i.if = add nsw i32 %i.ie, %i.ic                ; 2 uses
  %or.cond5 = icmp ult i32 %i.if, 42
  br i1 %or.cond5, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.ig = zext nneg i32 %i.if to i64              ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr @yycheck, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1
  %i.ij = icmp eq i8 %i.ii, %i.id
  br i1 %i.ij, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ik = getelementptr inbounds nuw i8, ptr @yytable, i64 %i.ig
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az, %bb.ay
  %i.il = getelementptr inbounds i8, ptr @yydefgoto, i64 %i.hz
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.in.in = phi ptr [ %i.ik, %bb.ba ], [ %i.il, %bb.bb ]
  %.in = load i8, ptr %.in.in, align 1
  %i.im = sext i8 %.in to i32
  br label %bb.b

bb.bd:                                            ; preds = %bb.w
  %i.in = load i32, ptr @spec_yynerrs, align 4
  %i.io = add i32 %i.in, 1
  store i32 %i.io, ptr @spec_yynerrs, align 4
  call void @spec_yyerror(ptr noundef nonnull @.str) #6
  br label %.loopexit

bb.be:                                            ; preds = %bb.d, %bb.e
  call void @spec_yyerror(ptr noundef nonnull @.str.3) #6
  br label %.loopexit

.loopexit:                                        ; preds = %.thread319, %bb.o, %bb.bd, %bb.be
  %.5266 = phi ptr [ %.0261, %bb.be ], [ %.3264, %bb.o ], [ %.3264, %bb.bd ], [ %.3264, %.thread319 ] ; 2 uses
  %.0244 = phi i32 [ 2, %bb.be ], [ 1, %bb.o ], [ 1, %bb.bd ], [ 0, %.thread319 ] ; 2 uses
  %.not301 = icmp eq ptr %.5266, %i.a
  br i1 %.not301, label %bb.bf, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.h, %.loopexit
  %.0244354 = phi i32 [ %.0244, %.loopexit ], [ 1, %bb.h ]
  %.5266353 = phi ptr [ %.5266, %.loopexit ], [ %i.n, %bb.h ]
  call void @free(ptr noundef %.5266353) #6
  br label %bb.bf

bb.bf:                                            ; preds = %.loopexit, %.loopexit.thread
  %.0244355 = phi i32 [ %.0244, %.loopexit ], [ %.0244354, %.loopexit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0244355
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare i32 @spec_yylex() local_unnamed_addr #4

declare ptr @pg_realloc_mul(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare ptr @pg_malloc(i64 noundef) local_unnamed_addr #4

declare void @spec_yyerror(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
end_hunk_0
