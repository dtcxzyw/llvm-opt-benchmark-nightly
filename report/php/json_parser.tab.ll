Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/json_parser.tab?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._zend_array = type { %struct._zend_refcounted_h, %union.anon.4, i32, %union.anon.6, i32, i32, i32, i32, i64, ptr }
%struct._zend_refcounted_h = type { i32, %union.anon.3 }
%union.anon.3 = type { i32 }
%union.anon.4 = type { i32 }
%union.anon.6 = type { ptr }
%struct._php_json_parser_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.PHP_JSON_YYSTYPE = type { %struct._zval_struct }
%struct._zval_struct = type { %union._zend_value, %union.anon, %union.anon.2 }
%union._zend_value = type { i64 }
%union.anon = type { i32 }
%union.anon.2 = type { i32 }

@yypact = internal unnamed_addr constant [40 x i8] c"\FF\F0\F0\F0\F0\F0\F0\F0\F0\F0\0C\F0\F0\F7\01\FF\F0\F0\F0\F0\00\05\07\04\08\F0\F0\F0\F0\01\FF\F0\F0\F0\FF\0A\F0\F0\FF\F0", align 16
@yytranslate = internal unnamed_addr constant [267 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\10\02\02\02\02\02\02\02\02\02\02\02\02\02\0F\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\11\02\0E\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\0C\02\0D\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B", align 16
@yycheck = internal unnamed_addr constant [27 x i8] c"\0F\0A\03\04\05\06\07\08\09\08\09\0C\00\0D\0E\1E\11\0D\0E\22\FF\10\0F&\10\0F\1D", align 16
@yytable = internal unnamed_addr constant [27 x i8] c"\19\11\01\02\03\04\05\06\07\12\13\08\10\1A\1B$\09\1F %\00\1D\1E'\22&#", align 16
@yydefact = internal unnamed_addr constant [40 x i8] c"\00\1B\1C\1D\19\1A\17\18\03\0B\00\15\16\00\07\0F\01\02\13\14\00\08\00\00\10\11\05\06\04\00\00\0E\0D\0C\00\00\09\12\00\0A", align 16
@yyr2 = internal unnamed_addr constant [30 x i8] c"\00\02\02\00\04\01\01\00\01\03\05\00\04\01\01\00\01\01\03\01\01\01\01\01\01\01\01\01\01\01", align 16
@zend_empty_array = external constant %struct._zend_array, align 8
@yyr1 = internal unnamed_addr constant [30 x i8] c"\00\12\13\15\14\16\16\17\17\18\18\1A\19\1B\1B\1C\1C\1D\1D\1E\1E\1F\1F\1F\1F\1F\1F\1F\1F\1F", align 16
@yypgoto = internal unnamed_addr constant [14 x i8] c"\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\FD\F1", align 1
@yydefgoto = internal unnamed_addr constant [14 x i8] c"\00\0A\0B\0E\1C\14\15\0C\0F!\17\18\16\0D", align 1
@yystos = internal unnamed_addr constant [40 x i8] c"\00\03\04\05\06\07\08\09\0C\11\13\14\19\1F\15\1A\00\0A\08\09\17\18\1E\1C\1D\1F\0D\0E\16\10\0F\0D\0E\1B\10\1E\1F\1F\0F\1F", align 16
@default_parser_methods = internal unnamed_addr constant %struct._php_json_parser_methods { ptr @php_json_parser_array_create, ptr @php_json_parser_array_append, ptr null, ptr null, ptr @php_json_parser_object_create, ptr @php_json_parser_object_update, ptr null, ptr null }, align 8
@validate_parser_methods = internal constant %struct._php_json_parser_methods { ptr @php_json_parser_array_create_validate, ptr @php_json_parser_array_append_validate, ptr null, ptr null, ptr @php_json_parser_object_create_validate, ptr @php_json_parser_object_update_validate, ptr null, ptr null }, align 8

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 3) i32 @php_json_yyparse(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %union.PHP_JSON_YYSTYPE, align 8    ; 7 uses
  %i.a = alloca [200 x i8], align 16              ; 6 uses
  %2 = alloca [200 x %union.PHP_JSON_YYSTYPE], align 16 ; 4 uses
  %3 = alloca %union.PHP_JSON_YYSTYPE, align 8    ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  br label %bb.c

bb.b:                                             ; preds = %bb.bb, %bb.y
  %.0286 = phi ptr [ %i.bz, %bb.y ], [ %i.fe, %bb.bb ]
  %.0273 = phi ptr [ %.3276, %bb.y ], [ %i.fd, %bb.bb ]
  %.0257 = phi i32 [ %i.bw, %bb.y ], [ %i.fv, %bb.bb ]
  %.0252 = phi i32 [ -2, %bb.y ], [ %.5, %bb.bb ]
  %i.q = getelementptr inbounds nuw i8, ptr %.0273, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1287 = phi ptr [ %2, %bb.a ], [ %.0286, %bb.b ] ; 3 uses
  %.0282 = phi ptr [ %2, %bb.a ], [ %.3285, %bb.b ] ; 2 uses
  %.1274 = phi ptr [ %i.a, %bb.a ], [ %i.q, %bb.b ] ; 6 uses
  %.0267 = phi ptr [ %i.a, %bb.a ], [ %.3270, %bb.b ] ; 8 uses
  %.0264 = phi i64 [ 200, %bb.a ], [ %.2266, %bb.b ] ; 4 uses
  %.1258 = phi i32 [ 0, %bb.a ], [ %.0257, %bb.b ] ; 6 uses
  %.1 = phi i32 [ -2, %bb.a ], [ %.0252, %bb.b ]  ; 7 uses
  %i.r = trunc nsw i32 %.1258 to i8
  store i8 %i.r, ptr %.1274, align 1, !tbaa !12
  %i.s = getelementptr inbounds i8, ptr %.0267, i64 %.0264
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -1
  %.not = icmp ugt ptr %i.t, %.1274
  br i1 %.not, label %.thread365, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = ptrtoint ptr %.1274 to i64
  %i.v = ptrtoint ptr %.0267 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = add nsw i64 %i.w, 1                      ; 3 uses
  %i.y = icmp sgt i64 %.0264, 9999
  br i1 %i.y, label %bb.be, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = shl nsw i64 %.0264, 1
  %spec.store.select = call i64 @llvm.smin.i64(i64 %i.z, i64 10000) ; 4 uses
  %i.aa = mul nsw i64 %spec.store.select, 17
  %i.ab = add nsw i64 %i.aa, 15
  %i.ac = call noalias ptr @malloc(i64 noundef %i.ab) #12 ; 6 uses
  %.not325.not = icmp eq ptr %i.ac, null
  br i1 %.not325.not, label %bb.be, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 1 %.0267, i64 %i.x, i1 false)
  %i.ad = add nsw i64 %spec.store.select, 15
  %i.ae = sdiv i64 %i.ad, 16
  %i.af = getelementptr inbounds [16 x i8], ptr %i.ac, i64 %i.ae ; 3 uses
  %i.ag = shl i64 %i.x, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %.0282, i64 %i.ag, i1 false)
  %.not326 = icmp eq ptr %.0267, %i.a
  br i1 %.not326, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %.0267) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ah = getelementptr inbounds i8, ptr %i.ac, i64 %i.w ; 2 uses
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.af, i64 %i.x
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -16 ; 2 uses
  %i.ak = add nsw i64 %spec.store.select, -1
  %.not327 = icmp sgt i64 %i.ak, %i.w
  br i1 %.not327, label %.thread365, label %php_json_yyerror.exit348

.thread365:                                       ; preds = %bb.h, %bb.c
  %.3289 = phi ptr [ %.1287, %bb.c ], [ %i.aj, %bb.h ] ; 25 uses
  %.3285 = phi ptr [ %.0282, %bb.c ], [ %i.af, %bb.h ]
  %.3276 = phi ptr [ %.1274, %bb.c ], [ %i.ah, %bb.h ] ; 8 uses
  %.3270 = phi ptr [ %.0267, %bb.c ], [ %i.ac, %bb.h ] ; 7 uses
  %.2266 = phi i64 [ %.0264, %bb.c ], [ %spec.store.select, %bb.h ]
  %i.al = icmp eq i32 %.1258, 16
  br i1 %i.al, label %php_json_yyerror.exit348, label %bb.i

bb.i:                                             ; preds = %.thread365
  %i.am = sext i32 %.1258 to i64                  ; 3 uses
  %i.an = getelementptr inbounds i8, ptr @yypact, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !12
  %i.ap = sext i8 %i.ao to i32
  %i.aq = shl nuw i64 1, %i.am                    ; 2 uses
  %i.ar = and i64 %i.aq, 771450936318
  %.not328 = icmp eq i64 %i.ar, 0
  br i1 %.not328, label %bb.j, label %bb.z

bb.j:                                             ; preds = %bb.i
  %i.as = icmp eq i32 %.1, -2
  br i1 %i.as, label %bb.k, label %php_json_yylex.exit

bb.k:                                             ; preds = %bb.j
  %i.at = call i32 @php_json_scan(ptr noundef %0) #11 ; 2 uses
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.av = icmp eq ptr %i.au, @php_json_parser_array_create_validate
  br i1 %i.av, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.ax = icmp eq ptr %i.aw, @php_json_parser_array_append_validate
  br i1 %i.ax, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.az = icmp eq ptr %i.ay, @php_json_parser_object_create_validate
  br i1 %i.az, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %bb.m
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.bb = icmp eq ptr %i.ba, @php_json_parser_object_update_validate
  br i1 %i.bb, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %bb.n
  %i.bc = load i8, ptr %i.g, align 1, !tbaa !12
  %.not.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i, label %zval_ptr_dtor_str.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = load ptr, ptr %i.f, align 8, !tbaa !12  ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !21 ; 2 uses
  %i.bf = icmp ne i32 %i.be, 0
  call void @llvm.assume(i1 %i.bf)
  %i.bg = add i32 %i.be, -1                       ; 2 uses
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !21
  %.not3.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not3.i.i, label %bb.q, label %zval_ptr_dtor_str.exit.i

bb.q:                                             ; preds = %bb.p
  %i.bh = load ptr, ptr %i.f, align 8, !tbaa !12
  call void @_efree(ptr noundef %i.bh) #11
  br label %zval_ptr_dtor_str.exit.i

zval_ptr_dtor_str.exit.i:                         ; preds = %bb.q, %bb.p, %bb.o
  store i32 0, ptr %i.h, align 8, !tbaa !12
  br label %php_json_yylex.exit

.critedge.i:                                      ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !32
  br label %php_json_yylex.exit

php_json_yylex.exit:                              ; preds = %.critedge.i, %zval_ptr_dtor_str.exit.i, %bb.j
  %.2 = phi i32 [ %.1, %bb.j ], [ %i.at, %zval_ptr_dtor_str.exit.i ], [ %i.at, %.critedge.i ] ; 6 uses
  %i.bi = icmp slt i32 %.2, 1
  br i1 %i.bi, label %bb.u, label %bb.r

bb.r:                                             ; preds = %php_json_yylex.exit
  %i.bj = icmp eq i32 %.2, 256
  br i1 %i.bj, label %php_json_yyerror.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = icmp samesign ult i32 %.2, 267
  br i1 %i.bk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bl = zext nneg i32 %.2 to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !12
  %i.bo = sext i8 %i.bn to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %php_json_yylex.exit
  %.0297 = phi i32 [ 0, %php_json_yylex.exit ], [ %i.bo, %bb.t ], [ 2, %bb.s ] ; 2 uses
  %.3 = phi i32 [ 0, %php_json_yylex.exit ], [ %.2, %bb.t ], [ %.2, %bb.s ] ; 3 uses
  %i.bp = add nsw i32 %.0297, %i.ap               ; 3 uses
  %or.cond3 = icmp ugt i32 %i.bp, 26
  br i1 %or.cond3, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = zext nneg i32 %i.bp to i64              ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr @yycheck, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !12
  %i.bt = sext i8 %i.bs to i32
  %.not329 = icmp eq i32 %.0297, %i.bt
  br i1 %.not329, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr @yytable, i64 %i.bq
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !12
  %i.bw = sext i8 %i.bv to i32                    ; 2 uses
  %i.bx = icmp eq i32 %i.bp, 20
  br i1 %i.bx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.by = sub nsw i32 0, %i.bw
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %.3289, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !33
  br label %bb.b

bb.z:                                             ; preds = %bb.u, %bb.v, %bb.i
  %.4 = phi i32 [ %.1, %bb.i ], [ %.3, %bb.u ], [ %.3, %bb.v ] ; 3 uses
  %i.ca = getelementptr inbounds i8, ptr @yydefact, i64 %i.am
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !12
  %i.cc = sext i8 %i.cb to i32
  %i.cd = and i64 %i.aq, 328041767937
  %.not331 = icmp eq i64 %i.cd, 0
  br i1 %.not331, label %bb.aa, label %bb.bc

bb.aa:                                            ; preds = %bb.z, %bb.x
  %.0295 = phi i32 [ %i.cc, %bb.z ], [ %i.by, %bb.x ] ; 2 uses
  %.5 = phi i32 [ %.4, %bb.z ], [ %.3, %bb.x ]    ; 3 uses
  %i.ce = sext i32 %.0295 to i64                  ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr @yyr2, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !12
  %i.ch = sext i8 %i.cg to i64                    ; 4 uses
  %i.ci = sub nsw i64 1, %i.ch
  %i.cj = getelementptr inbounds [16 x i8], ptr %.3289, i64 %i.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !33
  switch i32 %.0295, label %bb.ax [
    i32 2, label %bb.ab
    i32 3, label %bb.ac
    i32 4, label %bb.af
    i32 6, label %.loopexit.sink.split
    i32 7, label %bb.ah
    i32 9, label %bb.ak
    i32 10, label %bb.al
    i32 11, label %bb.an
    i32 12, label %bb.aq
    i32 14, label %.loopexit.sink.split
    i32 15, label %bb.as
    i32 17, label %bb.av
    i32 18, label %bb.aw
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.ck = getelementptr inbounds i8, ptr %.3289, i64 -16 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !12
  %i.cm = getelementptr inbounds i8, ptr %.3289, i64 -8 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !12
  store ptr %i.cl, ptr %3, align 8, !tbaa !12
  store i32 %i.cn, ptr %i.i, align 8, !tbaa !12
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !22 ; 2 uses
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !12
  %i.cr = load i32, ptr %i.cm, align 8, !tbaa !12
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !12
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !12
  br label %php_json_yyerror.exit348

bb.ac:                                            ; preds = %bb.aa
  %i.ct = load i32, ptr %i.l, align 4, !tbaa !23  ; 2 uses
  %.not338 = icmp eq i32 %i.ct, 0
  %.pre602 = load i32, ptr %i.j, align 8, !tbaa !24 ; 2 uses
  %.not339 = icmp slt i32 %.pre602, %i.ct
  %or.cond.a = select i1 %.not338, i1 true, i1 %.not339
  br i1 %or.cond.a, label %bb.ad, label %.loopexit.sink.split

bb.ad:                                            ; preds = %bb.ac
  %i.cu = add nsw i32 %.pre602, 1
  store i32 %i.cu, ptr %i.j, align 8, !tbaa !24
  %i.cv = load ptr, ptr %i.p, align 8, !tbaa !34  ; 2 uses
  %.not340 = icmp eq ptr %i.cv, null
  br i1 %.not340, label %bb.ax, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cw = call i32 %i.cv(ptr noundef nonnull %0) #11
  %i.cx = icmp eq i32 %i.cw, -1
  br i1 %i.cx, label %.loopexit, label %bb.ax

bb.af:                                            ; preds = %bb.aa
  %i.cy = getelementptr inbounds i8, ptr %.3289, i64 -16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !12
  %i.da = getelementptr inbounds i8, ptr %.3289, i64 -8
  %i.db = load i32, ptr %i.da, align 8, !tbaa !12
  store ptr %i.cz, ptr %3, align 8, !tbaa !12
  store i32 %i.db, ptr %i.i, align 8, !tbaa !12
  %i.dc = load i32, ptr %i.j, align 8, !tbaa !24
  %i.dd = add nsw i32 %i.dc, -1
  store i32 %i.dd, ptr %i.j, align 8, !tbaa !24
  %i.de = load ptr, ptr %i.o, align 8, !tbaa !35  ; 2 uses
  %.not337 = icmp eq ptr %i.de, null
  br i1 %.not337, label %bb.ax, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.df = call i32 %i.de(ptr noundef nonnull %0, ptr noundef nonnull %3) #11
  %i.dg = icmp eq i32 %i.df, -1
  br i1 %i.dg, label %.loopexit, label %bb.ax

bb.ah:                                            ; preds = %bb.aa
  %i.dh = load i32, ptr %i.n, align 8, !tbaa !25
  %.not336 = trunc i32 %i.dh to i1
  %.pre601 = load ptr, ptr %i.d, align 8, !tbaa !30 ; 2 uses
  %i.di = icmp eq ptr %.pre601, @php_json_parser_object_create
  %or.cond702 = select i1 %.not336, i1 %i.di, i1 false
  br i1 %or.cond702, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store ptr @zend_empty_array, ptr %3, align 8, !tbaa !12
  store i32 7, ptr %i.i, align 8, !tbaa !12
  br label %bb.ax

bb.aj:                                            ; preds = %bb.ah
  %i.dj = call i32 %.pre601(ptr noundef nonnull %0, ptr noundef nonnull %3) #11 ; 0 uses
  br label %bb.ax

bb.ak:                                            ; preds = %bb.aa
  %i.dk = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.dl = call i32 %i.dk(ptr noundef %0, ptr noundef nonnull %3) #11 ; 0 uses
  %i.dm = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.dn = getelementptr inbounds i8, ptr %.3289, i64 -32
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !12
  %i.dp = call i32 %i.dm(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %i.do, ptr noundef nonnull %.3289) #11
  %i.dq = icmp eq i32 %i.dp, -1
  br i1 %i.dq, label %.loopexit, label %bb.ax

bb.al:                                            ; preds = %bb.aa
  %i.dr = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.ds = getelementptr inbounds i8, ptr %.3289, i64 -64 ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %.3289, i64 -32
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !12
  %i.dv = call i32 %i.dr(ptr noundef %0, ptr noundef nonnull %i.ds, ptr noundef %i.du, ptr noundef nonnull %.3289) #11
  %i.dw = icmp eq i32 %i.dv, -1
  br i1 %i.dw, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dx = load ptr, ptr %i.ds, align 8, !tbaa !12
  %i.dy = getelementptr inbounds i8, ptr %.3289, i64 -56
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !12
  store ptr %i.dx, ptr %3, align 8, !tbaa !12
  store i32 %i.dz, ptr %i.i, align 8, !tbaa !12
  br label %bb.ax

bb.an:                                            ; preds = %bb.aa
  %i.ea = load i32, ptr %i.l, align 4, !tbaa !23  ; 2 uses
  %.not333 = icmp eq i32 %i.ea, 0
  %.pre = load i32, ptr %i.j, align 8, !tbaa !24  ; 2 uses
  %.not334 = icmp slt i32 %.pre, %i.ea
  %or.cond703 = select i1 %.not333, i1 true, i1 %.not334
  br i1 %or.cond703, label %bb.ao, label %.loopexit.sink.split

bb.ao:                                            ; preds = %bb.an
  %i.eb = add nsw i32 %.pre, 1
  store i32 %i.eb, ptr %i.j, align 8, !tbaa !24
  %i.ec = load ptr, ptr %i.m, align 8, !tbaa !36  ; 2 uses
  %.not335 = icmp eq ptr %i.ec, null
  br i1 %.not335, label %bb.ax, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ed = call i32 %i.ec(ptr noundef nonnull %0) #11
  %i.ee = icmp eq i32 %i.ed, -1
  br i1 %i.ee, label %.loopexit, label %bb.ax

bb.aq:                                            ; preds = %bb.aa
  %i.ef = getelementptr inbounds i8, ptr %.3289, i64 -16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !12
  %i.eh = getelementptr inbounds i8, ptr %.3289, i64 -8
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !12
  store ptr %i.eg, ptr %3, align 8, !tbaa !12
  store i32 %i.ei, ptr %i.i, align 8, !tbaa !12
  %i.ej = load i32, ptr %i.j, align 8, !tbaa !24
  %i.ek = add nsw i32 %i.ej, -1
  store i32 %i.ek, ptr %i.j, align 8, !tbaa !24
  %i.el = load ptr, ptr %i.k, align 8, !tbaa !37  ; 2 uses
  %.not332 = icmp eq ptr %i.el, null
  br i1 %.not332, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.em = call i32 %i.el(ptr noundef nonnull %0, ptr noundef nonnull %3) #11
  %i.en = icmp eq i32 %i.em, -1
  br i1 %i.en, label %.loopexit, label %bb.ax

bb.as:                                            ; preds = %bb.aa
  %i.eo = load ptr, ptr %i.b, align 8, !tbaa !28  ; 2 uses
  %i.ep = icmp eq ptr %i.eo, @php_json_parser_array_create
  br i1 %i.ep, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store ptr @zend_empty_array, ptr %3, align 8, !tbaa !12
  store i32 7, ptr %i.i, align 8, !tbaa !12
  br label %bb.ax

bb.au:                                            ; preds = %bb.as
  %i.eq = call i32 %i.eo(ptr noundef nonnull %0, ptr noundef nonnull %3) #11 ; 0 uses
  br label %bb.ax

bb.av:                                            ; preds = %bb.aa
  %i.er = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.es = call i32 %i.er(ptr noundef %0, ptr noundef nonnull %3) #11 ; 0 uses
  %i.et = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.eu = call i32 %i.et(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %.3289) #11 ; 0 uses
  br label %bb.ax

bb.aw:                                            ; preds = %bb.aa
  %i.ev = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.ew = getelementptr inbounds i8, ptr %.3289, i64 -32 ; 2 uses
  %i.ex = call i32 %i.ev(ptr noundef %0, ptr noundef nonnull %i.ew, ptr noundef nonnull %.3289) #11 ; 0 uses
  %i.ey = load ptr, ptr %i.ew, align 8, !tbaa !12
  %i.ez = getelementptr inbounds i8, ptr %.3289, i64 -24
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !12
  store ptr %i.ey, ptr %3, align 8, !tbaa !12
  store i32 %i.fa, ptr %i.i, align 8, !tbaa !12
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aa, %bb.at, %bb.au, %bb.aq, %bb.ar, %bb.ao, %bb.ap, %bb.ak, %bb.ai, %bb.aj, %bb.af, %bb.ag, %bb.ad, %bb.ae, %bb.aw, %bb.av, %bb.am
  %i.fb = sub nsw i64 0, %i.ch                    ; 2 uses
  %i.fc = getelementptr inbounds [16 x i8], ptr %.3289, i64 %i.fb
  %i.fd = getelementptr inbounds i8, ptr %.3276, i64 %i.fb ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !33
  %i.ff = getelementptr inbounds i8, ptr @yyr1, i64 %i.ce
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !12
  %i.fh = sext i8 %i.fg to i64
  %i.fi = add nsw i64 %i.fh, -18                  ; 2 uses
  %i.fj = getelementptr inbounds i8, ptr @yypgoto, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !12
  %i.fl = sext i8 %i.fk to i32
  %i.fm = load i8, ptr %i.fd, align 1, !tbaa !12  ; 2 uses
  %i.fn = sext i8 %i.fm to i32
  %i.fo = add nsw i32 %i.fn, %i.fl                ; 2 uses
  %or.cond5 = icmp ult i32 %i.fo, 27
  br i1 %or.cond5, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.fp = zext nneg i32 %i.fo to i64              ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr @yycheck, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !12
  %i.fs = icmp eq i8 %i.fr, %i.fm
  br i1 %i.fs, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ft = getelementptr inbounds nuw i8, ptr @yytable, i64 %i.fp
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %i.fu = getelementptr inbounds i8, ptr @yydefgoto, i64 %i.fi
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.in.in = phi ptr [ %i.ft, %bb.az ], [ %i.fu, %bb.ba ]
  %.in = load i8, ptr %.in.in, align 1, !tbaa !12
  %i.fv = sext i8 %.in to i32
  br label %bb.b

bb.bc:                                            ; preds = %bb.z
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.fw = load i32, ptr %4, align 4, !tbaa !26
  %.not.i = icmp eq i32 %i.fw, 0
  br i1 %.not.i, label %bb.bd, label %php_json_yyerror.exit

bb.bd:                                            ; preds = %bb.bc
  store i32 4, ptr %4, align 4, !tbaa !26
  br label %php_json_yyerror.exit

.loopexit.sink.split:                             ; preds = %bb.aa, %bb.an, %bb.aa, %bb.ac
  %.sink = phi i32 [ 1, %bb.an ], [ 2, %bb.aa ], [ 1, %bb.ac ], [ 2, %bb.aa ]
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %.sink, ptr %5, align 4, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ar, %bb.ap, %bb.al, %bb.ak, %bb.ag, %bb.ae, %.loopexit.sink.split
  %i.fx = sub nsw i64 0, %i.ch                    ; 2 uses
  %i.fy = getelementptr inbounds [16 x i8], ptr %.3289, i64 %i.fx
  %i.fz = getelementptr inbounds i8, ptr %.3276, i64 %i.fx ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !12
  %i.gb = sext i8 %i.ga to i32
  br label %php_json_yyerror.exit

php_json_yyerror.exit:                            ; preds = %bb.r, %bb.bd, %bb.bc, %.loopexit
  %.4290 = phi ptr [ %i.fy, %.loopexit ], [ %.3289, %bb.bc ], [ %.3289, %bb.bd ], [ %.3289, %bb.r ] ; 2 uses
  %.4277 = phi ptr [ %i.fz, %.loopexit ], [ %.3276, %bb.bc ], [ %.3276, %bb.bd ], [ %.3276, %bb.r ] ; 3 uses
  %.2259 = phi i32 [ %i.gb, %.loopexit ], [ %.1258, %bb.bc ], [ %.1258, %bb.bd ], [ %.1258, %bb.r ]
  %.6 = phi i32 [ %.5, %.loopexit ], [ %.4, %bb.bc ], [ %.4, %bb.bd ], [ 257, %bb.r ] ; 2 uses
  %i.gc = icmp eq ptr %.4277, %.3270
  br i1 %i.gc, label %php_json_yyerror.exit348, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %php_json_yyerror.exit, %.lr.ph.a
  %.3260502 = phi i32 [ %i.gj, %.lr.ph.a ], [ %.2259, %php_json_yyerror.exit ]
  %.5278501 = phi ptr [ %i.gh, %.lr.ph.a ], [ %.4277, %php_json_yyerror.exit ]
  %.5291500 = phi ptr [ %i.gg, %.lr.ph.a ], [ %.4290, %php_json_yyerror.exit ] ; 2 uses
  %6 = sext i32 %.3260502 to i64
  %i.gd = getelementptr inbounds i8, ptr @yystos, i64 %6
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !12
  %i.gf = sext i8 %i.ge to i32
  call fastcc void @yydestruct(i32 noundef %i.gf, ptr noundef %.5291500)
  %i.gg = getelementptr inbounds i8, ptr %.5291500, i64 -16 ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %.5278501, i64 -1 ; 4 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !12
  %i.gj = sext i8 %i.gi to i32
  %7 = icmp eq ptr %i.gh, %.3270
  br i1 %7, label %php_json_yyerror.exit348, label %.lr.ph.a

bb.be:                                            ; preds = %bb.d, %bb.e
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.gk = load i32, ptr %8, align 4, !tbaa !26
  %.not.i347 = icmp eq i32 %i.gk, 0
  br i1 %.not.i347, label %bb.bf, label %php_json_yyerror.exit348

bb.bf:                                            ; preds = %bb.be
  store i32 4, ptr %8, align 4, !tbaa !26
  br label %php_json_yyerror.exit348

php_json_yyerror.exit348:                         ; preds = %bb.h, %.thread365, %.lr.ph.a, %php_json_yyerror.exit, %bb.bf, %bb.be, %bb.ab
  %.5303 = phi i64 [ 0, %bb.bf ], [ %i.ch, %bb.ab ], [ 0, %php_json_yyerror.exit ], [ 0, %bb.be ], [ 0, %.lr.ph.a ], [ 0, %.thread365 ], [ 0, %bb.h ]
  %.0296 = phi i32 [ 2, %bb.bf ], [ 0, %bb.ab ], [ 1, %php_json_yyerror.exit ], [ 2, %bb.be ], [ 1, %.lr.ph.a ], [ 0, %.thread365 ], [ 1, %bb.h ]
  %.7293 = phi ptr [ %.1287, %bb.bf ], [ %.3289, %bb.ab ], [ %.4290, %php_json_yyerror.exit ], [ %.1287, %bb.be ], [ %i.gg, %.lr.ph.a ], [ %.3289, %.thread365 ], [ %i.aj, %bb.h ]
  %.7280 = phi ptr [ %.1274, %bb.bf ], [ %.3276, %bb.ab ], [ %.4277, %php_json_yyerror.exit ], [ %.1274, %bb.be ], [ %i.gh, %.lr.ph.a ], [ %.3276, %.thread365 ], [ %i.ah, %bb.h ]
  %.5272 = phi ptr [ %.0267, %bb.bf ], [ %.3270, %bb.ab ], [ %.3270, %php_json_yyerror.exit ], [ %.0267, %bb.be ], [ %.3270, %.lr.ph.a ], [ %.3270, %.thread365 ], [ %i.ac, %bb.h ] ; 4 uses
  %.9 = phi i32 [ %.1, %bb.bf ], [ %.5, %bb.ab ], [ %.6, %php_json_yyerror.exit ], [ %.1, %bb.be ], [ %.6, %.lr.ph.a ], [ %.1, %.thread365 ], [ %.1, %bb.h ] ; 3 uses
  %.not343 = icmp eq i32 %.9, -2
  br i1 %.not343, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %php_json_yyerror.exit348
  %or.cond11 = icmp ult i32 %.9, 267
  br i1 %or.cond11, label %.thread390, label %bb.bh

.thread390:                                       ; preds = %bb.bg
  %i.gl = zext nneg i32 %.9 to i64
  %i.gm = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !12
  %i.go = sext i8 %i.gn to i32
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.thread390
  %i.gp = phi i32 [ %i.go, %.thread390 ], [ 2, %bb.bg ]
  call fastcc void @yydestruct(i32 noundef %i.gp, ptr noundef %1)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %php_json_yyerror.exit348
  %i.gq = sub nsw i64 0, %.5303                   ; 2 uses
  %i.gr = getelementptr inbounds i8, ptr %.7280, i64 %i.gq ; 2 uses
  %.not344504 = icmp eq ptr %i.gr, %.5272
  br i1 %.not344504, label %._crit_edge, label %.lr.ph507.preheader

.lr.ph507.preheader:                              ; preds = %bb.bi
  %i.gs = getelementptr inbounds [16 x i8], ptr %.7293, i64 %i.gq
  br label %.lr.ph507

.lr.ph507:                                        ; preds = %.lr.ph507.preheader, %.lr.ph507
  %.8281506 = phi ptr [ %i.gz, %.lr.ph507 ], [ %i.gr, %.lr.ph507.preheader ] ; 2 uses
  %.8294505 = phi ptr [ %i.gy, %.lr.ph507 ], [ %i.gs, %.lr.ph507.preheader ] ; 2 uses
  %i.gt = load i8, ptr %.8281506, align 1, !tbaa !12
  %i.gu = sext i8 %i.gt to i64
  %i.gv = getelementptr inbounds i8, ptr @yystos, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !12
  %i.gx = sext i8 %i.gw to i32
  call fastcc void @yydestruct(i32 noundef %i.gx, ptr noundef %.8294505)
  %i.gy = getelementptr inbounds i8, ptr %.8294505, i64 -16
  %i.gz = getelementptr inbounds i8, ptr %.8281506, i64 -1 ; 2 uses
  %.not344 = icmp eq ptr %i.gz, %.5272
  br i1 %.not344, label %._crit_edge, label %.lr.ph507, !llvm.loop !27

._crit_edge:                                      ; preds = %.lr.ph507, %bb.bi
  %.not345 = icmp eq ptr %.5272, %i.a
  br i1 %.not345, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %.5272) #11
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret i32 %.0296
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @php_json_parser_object_create(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @_zend_new_array_0() #11
  store ptr %i.d, ptr %1, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 775, ptr %i.e, align 8, !tbaa !12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @object_init(ptr noundef %1) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @php_json_parser_array_create(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %1) #0 {
bb.a:
  %i.a = tail call ptr @_zend_new_array_0() #11
  store ptr %i.a, ptr %1, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 775, ptr %i.b, align 8, !tbaa !12
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @yydestruct(i32 noundef range(i32 -128, 128) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  switch i32 %0, label %zval_ptr_dtor_nogc.exit61 [
    i32 3, label %bb.b
    i32 4, label %bb.d
    i32 5, label %bb.f
    i32 6, label %bb.h
    i32 7, label %bb.j
    i32 8, label %bb.l
    i32 9, label %bb.n
    i32 19, label %bb.p
    i32 20, label %bb.r
    i32 23, label %bb.t
    i32 24, label %bb.v
    i32 25, label %bb.x
    i32 28, label %bb.z
    i32 29, label %bb.ab
    i32 30, label %bb.ad
    i32 31, label %bb.af
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !12
  %.not.i59 = icmp eq i8 %i.b, 0
  br i1 %.not.i59, label %zval_ptr_dtor_nogc.exit61, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21   ; 2 uses
  %i.e = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add i32 %i.d, -1                         ; 2 uses
  store i32 %i.f, ptr %i.c, align 4, !tbaa !21
  %.not3.i60 = icmp eq i32 %i.f, 0
  br i1 %.not3.i60, label %zval_ptr_dtor_nogc.exit61.sink.split, label %zval_ptr_dtor_nogc.exit61

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !12
  %.not.i56 = icmp eq i8 %i.h, 0
  br i1 %.not.i56, label %zval_ptr_dtor_nogc.exit61, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !21   ; 2 uses
  %i.k = icmp ne i32 %i.j, 0
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add i32 %i.j, -1                         ; 2 uses
  store i32 %i.l, ptr %i.i, align 4, !tbaa !21
  %.not3.i57 = icmp eq i32 %i.l, 0
  br i1 %.not3.i57, label %zval_ptr_dtor_nogc.exit61.sink.split, label %zval_ptr_dtor_nogc.exit61

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.n = load i8, ptr %i.m, align 1, !tbaa !12
  %.not.i53 = icmp eq i8 %i.n, 0
  br i1 %.not.i53, label %zval_ptr_dtor_nogc.exit61, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21   ; 2 uses
  %i.q = icmp ne i32 %i.p, 0
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add i32 %i.p, -1                         ; 2 uses
  store i32 %i.r, ptr %i.o, align 4, !tbaa !21
  %.not3.i54 = icmp eq i32 %i.r, 0
  br i1 %.not3.i54, label %zval_ptr_dtor_nogc.exit61.sink.split, label %zval_ptr_dtor_nogc.exit61

bb.h:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.t = load i8, ptr %i.s, align 1, !tbaa !12
  %.not.i50 = icmp eq i8 %i.t, 0
  br i1 %.not.i50, label %zval_ptr_dtor_nogc.exit61, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !21   ; 2 uses
  %i.w = icmp ne i32 %i.v, 0
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add i32 %i.v, -1                         ; 2 uses
  store i32 %i.x, ptr %i.u, align 4, !tbaa !21
  %.not3.i51 = icmp eq i32 %i.x, 0
  br i1 %.not3.i51, label %zval_ptr_dtor_nogc.exit61.sink.split, label %zval_ptr_dtor_nogc.exit61

bb.j:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.z = load i8, ptr %i.y, align 1, !tbaa !12
  %.not.i47 = icmp eq i8 %i.z, 0
  br i1 %.not.i47, label %zval_ptr_dtor_nogc.exit61, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr %1, align 8, !tbaa !12    ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !21 ; 2 uses
  %i.ac = icmp ne i32 %i.ab, 0
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add i32 %i.ab, -1                       ; 2 uses
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !21
  %.not3.i48 = icmp eq i32 %i.ad, 0
  br i1 %.not3.i48, label %zval_ptr_dtor_nogc.exit61.sink.split, label %zval_ptr_dtor_nogc.exit61

bb.l:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !12
  %.not.i44 = icmp eq i8 %i.af, 0
  br i1 %.not.i44, label %zval_ptr_dtor_nogc.exit61, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %1, align 8, !tbaa !12    ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !21 ; 2 uses
  %i.ai = icmp ne i32 %i.ah, 0
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add i32 %i.ah, -1                       ; 2 uses
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !21
  %.not3.i45 = icmp eq i32 %i.aj, 0
  br i1 %.not3.i45, label %zval_ptr_dtor_nogc.exit61.sink.split, label %zval_ptr_dtor_nogc.exit61

bb.n:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !12
  %.not.i41 = icmp eq i8 %i.al, 0
  br i1 %.not.i41, label %zval_ptr_dtor_nogc.exit61, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = load ptr, ptr %1, align 8, !tbaa !12    ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !21 ; 2 uses
  %i.ao = icmp ne i32 %i.an, 0
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = add i32 %i.an, -1                       ; 2 uses
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !21
  %.not3.i42 = icmp eq i32 %i.ap, 0
  br i1 %.not3.i42, label %zval_ptr_dtor_nogc.exit61.sink.split, label %zval_ptr_dtor_nogc.exit61

bb.p:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !12
  %.not.i38 = icmp eq i8 %i.ar, 0
  br i1 %.not.i38, label %zval_ptr_dtor_nogc.exit61, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = load ptr, ptr %1, align 8, !tbaa !12    ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !21 ; 2 uses
  %i.au = icmp ne i32 %i.at, 0
  tail call void @llvm.assume(i1 %i.au)
  %i.av = add i32 %i.at, -1                       ; 2 uses
  store i32 %i.av, ptr %i.as, align 4, !tbaa !21
  %.not3.i39 = icmp eq i32 %i.av, 0
  br i1 %.not3.i39, label %zval_ptr_dtor_nogc.exit61.sink.split, label %zval_ptr_dtor_nogc.exit61
end_hunk_0
begin_hunk_1_@php_json_parser_object_create_validate:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @php_json_parser_object_update_validate(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #7 {
bb.a:
  ret i32 0
}

declare void @_efree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal noundef i32 @php_json_parser_array_append(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = tail call ptr @zend_hash_next_index_insert(ptr noundef %i.a, ptr noundef %2) #11 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @php_json_parser_object_update(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !12
  %i.d = icmp eq i8 %i.c, 7
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !41
  %i.i = load i8, ptr %i.f, align 8, !tbaa !12    ; 3 uses
  %i.j = icmp sgt i8 %i.i, 57
  br i1 %i.j, label %_zend_handle_numeric_str.exit.thread, label %bb.c, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.k = icmp slt i8 %i.i, 48
  br i1 %i.k, label %bb.d, label %_zend_handle_numeric_str.exit

bb.d:                                             ; preds = %bb.c
  %.not.i25 = icmp eq i8 %i.i, 45
  br i1 %.not.i25, label %bb.e, label %_zend_handle_numeric_str.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 25
  %i.m = load i8, ptr %i.l, align 1, !tbaa !12
  %i.n = add i8 %i.m, -58
  %or.cond.i = icmp ult i8 %i.n, -10
  br i1 %or.cond.i, label %_zend_handle_numeric_str.exit.thread, label %_zend_handle_numeric_str.exit

_zend_handle_numeric_str.exit:                    ; preds = %bb.c, %bb.e
  %i.o = call zeroext i1 @_zend_handle_numeric_str_ex(ptr noundef nonnull %i.f, i64 noundef %i.h, ptr noundef nonnull %i.a) #11
  br i1 %i.o, label %bb.f, label %_zend_handle_numeric_str.exit.thread

bb.f:                                             ; preds = %_zend_handle_numeric_str.exit
  %i.p = load i64, ptr %i.a, align 8, !tbaa !43
  %i.q = call ptr @zend_hash_index_update(ptr noundef %i.e, i64 noundef %i.p, ptr noundef %3) #11 ; 0 uses
  br label %zend_symtable_update.exit

_zend_handle_numeric_str.exit.thread:             ; preds = %bb.e, %bb.d, %bb.b, %_zend_handle_numeric_str.exit
  %i.r = call ptr @zend_hash_update(ptr noundef %i.e, ptr noundef nonnull %2, ptr noundef %3) #11 ; 0 uses
  br label %zend_symtable_update.exit

zend_symtable_update.exit:                        ; preds = %bb.f, %_zend_handle_numeric_str.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !41
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.v = load i8, ptr %i.u, align 8, !tbaa !12
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 9, ptr %i.x, align 4, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !12
  %i.aa = and i32 %i.z, 64
  %.not.i22 = icmp eq i32 %i.aa, 0
  br i1 %.not.i22, label %bb.j, label %zend_string_release_ex.exit23

bb.j:                                             ; preds = %bb.i
  %i.ab = load i32, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.ac = icmp ne i32 %i.ab, 0
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add i32 %i.ab, -1                       ; 2 uses
  store i32 %i.ad, ptr %2, align 8, !tbaa !21
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %zend_string_release_ex.exit23

bb.k:                                             ; preds = %bb.j
  tail call void @_efree(ptr noundef nonnull %2) #11
  br label %zend_string_release_ex.exit23

zend_string_release_ex.exit23:                    ; preds = %bb.i, %bb.j, %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !12
  %.not.i18 = icmp eq i8 %i.ag, 0
  br i1 %.not.i18, label %zval_ptr_dtor_nogc.exit20, label %bb.l

bb.l:                                             ; preds = %zend_string_release_ex.exit23
  %i.ah = load ptr, ptr %3, align 8, !tbaa !12    ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !21 ; 2 uses
  %i.aj = icmp ne i32 %i.ai, 0
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add i32 %i.ai, -1                       ; 2 uses
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !21
  %.not3.i19 = icmp eq i32 %i.ak, 0
  br i1 %.not3.i19, label %bb.m, label %zval_ptr_dtor_nogc.exit20

bb.m:                                             ; preds = %bb.l
  %i.al = load ptr, ptr %3, align 8, !tbaa !12
  tail call void @rc_dtor_func(ptr noundef %i.al) #11
  br label %zval_ptr_dtor_nogc.exit20

zval_ptr_dtor_nogc.exit20:                        ; preds = %zend_string_release_ex.exit23, %bb.l, %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.an = load i8, ptr %i.am, align 1, !tbaa !12
  %.not.i = icmp eq i8 %i.an, 0
  br i1 %.not.i, label %zval_ptr_dtor_nogc.exit, label %bb.n

bb.n:                                             ; preds = %zval_ptr_dtor_nogc.exit20
  %i.ao = load ptr, ptr %1, align 8, !tbaa !12    ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !21 ; 2 uses
  %i.aq = icmp ne i32 %i.ap, 0
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = add i32 %i.ap, -1                       ; 2 uses
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !21
  %.not3.i = icmp eq i32 %i.ar, 0
  br i1 %.not3.i, label %bb.o, label %zval_ptr_dtor_nogc.exit

bb.o:                                             ; preds = %bb.n
  %i.as = load ptr, ptr %1, align 8, !tbaa !12
  tail call void @rc_dtor_func(ptr noundef %i.as) #11
  br label %zval_ptr_dtor_nogc.exit

bb.p:                                             ; preds = %bb.h, %bb.g
  %i.at = load ptr, ptr %1, align 8, !tbaa !12
  %i.au = tail call ptr @zend_std_write_property(ptr noundef %i.at, ptr noundef nonnull %2, ptr noundef %3, ptr noundef null) #11 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !12
  %.not17 = icmp eq i8 %i.aw, 0
  br i1 %.not17, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = load ptr, ptr %3, align 8, !tbaa !12    ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !21 ; 2 uses
  %i.az = icmp ne i32 %i.ay, 0
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = add i32 %i.ay, -1
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !21
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %zend_symtable_update.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !12
  %i.bd = and i32 %i.bc, 64
  %.not.i21 = icmp eq i32 %i.bd, 0
  br i1 %.not.i21, label %bb.s, label %zval_ptr_dtor_nogc.exit

bb.s:                                             ; preds = %bb.r
  %i.be = load i32, ptr %2, align 4, !tbaa !21    ; 2 uses
  %i.bf = icmp ne i32 %i.be, 0
  call void @llvm.assume(i1 %i.bf)
  %i.bg = add i32 %i.be, -1                       ; 2 uses
  store i32 %i.bg, ptr %2, align 4, !tbaa !21
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.t, label %zval_ptr_dtor_nogc.exit

bb.t:                                             ; preds = %bb.s
  call void @_efree(ptr noundef nonnull %2) #11
  br label %zval_ptr_dtor_nogc.exit

zval_ptr_dtor_nogc.exit:                          ; preds = %bb.t, %bb.s, %bb.r, %bb.o, %bb.n, %zval_ptr_dtor_nogc.exit20
  %.0 = phi i32 [ -1, %bb.o ], [ -1, %zval_ptr_dtor_nogc.exit20 ], [ -1, %bb.n ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %bb.t ]
  ret i32 %.0
}

declare ptr @zend_hash_next_index_insert(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @zend_std_write_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @zend_hash_index_update(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

declare ptr @zend_hash_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i1 @_zend_handle_numeric_str_ex(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"_zval_struct", !8, i64 0, !8, i64 8, !8, i64 12}
!16 = !{!"_php_json_scanner", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !15, i64 56, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92}
!17 = !{!"p1 _ZTS12_zval_struct", !13, i64 0}
!18 = !{!"_php_json_parser_methods", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56}
!19 = !{!"_php_json_parser", !16, i64 0, !17, i64 96, !9, i64 104, !9, i64 108, !18, i64 112}
!20 = !{!"_zend_refcounted_h", !9, i64 0, !8, i64 4}
!21 = !{!20, !9, i64 0}
!22 = !{!19, !17, i64 96}
!23 = !{!19, !9, i64 108}
!24 = !{!19, !9, i64 104}
!25 = !{!19, !9, i64 80}
!26 = !{!19, !9, i64 84}
!27 = distinct !{!27, !38}
!28 = !{!19, !13, i64 112}
!29 = !{!19, !13, i64 120}
!30 = !{!19, !13, i64 144}
!31 = !{!19, !13, i64 152}
!32 = !{i64 0, i64 8, !12, i64 8, i64 4, !12, i64 12, i64 4, !12}
!33 = !{i64 0, i64 16, !12}
!34 = !{!19, !13, i64 160}
!35 = !{!19, !13, i64 168}
!36 = !{!19, !13, i64 128}
!37 = !{!19, !13, i64 136}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"long", !8, i64 0}
!40 = !{!"_zend_string", !20, i64 0, !39, i64 8, !39, i64 16, !8, i64 24}
!41 = !{!40, !39, i64 16}
!42 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!43 = !{!39, !39, i64 0}
end_hunk_1
