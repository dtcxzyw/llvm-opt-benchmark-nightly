Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/phpdbg_parser?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._zend_phpdbg_globals = type { [11 x %struct._zend_array], %struct._zend_array, %struct._zend_array, ptr, ptr, %struct.phpdbg_frame_t, i32, ptr, %struct.phpdbg_lexer_data, ptr, %struct.sigaction, i32, i64, %struct.phpdbg_btree, %struct.phpdbg_btree, %struct._zend_array, %struct._zend_array, %struct._zend_array, %struct._zend_array, ptr, ptr, ptr, i8, ptr, ptr, ptr, i64, ptr, %struct._zval_struct, i32, i32, i8, i8, ptr, ptr, ptr, %struct._zend_array, ptr, ptr, ptr, [3 x %struct.anon.10], ptr, %struct.anon.11, i64, [2 x ptr], [3 x ptr], ptr, i8, ptr, ptr, [500 x i8], i32, %struct.phpdbg_signal_safe_mem, ptr, i64, ptr, i64 }
%struct.phpdbg_frame_t = type { i32, ptr, ptr }
%struct.phpdbg_lexer_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.sigaction = type { %union.anon.4, %struct.__sigset_t, i32, ptr }
%union.anon.4 = type { ptr }
%struct.__sigset_t = type { [16 x i64] }
%struct.phpdbg_btree = type { i64, i64, i8, ptr }
%struct._zval_struct = type { %union._zend_value, %union.anon.6, %union.anon.9 }
%union._zend_value = type { i64 }
%union.anon.6 = type { i32 }
%union.anon.9 = type { i32 }
%struct._zend_array = type { %struct._zend_refcounted_h, %union.anon.1, i32, %union.anon.3, i32, i32, i32, i32, i64, ptr }
%struct._zend_refcounted_h = type { i32, %union.anon }
%union.anon = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { ptr }
%struct.anon.10 = type { i32 }
%struct.anon.11 = type { i8, i32, i32, ptr, i32 }
%struct.phpdbg_signal_safe_mem = type { ptr, i8, ptr, ptr }
%struct._phpdbg_param = type { i32, i64, i64, %struct.anon, %struct.anon.0, ptr, i64, ptr, ptr }
%struct.anon = type { ptr, i64 }
%struct.anon.0 = type { ptr, ptr }

@yypact = internal unnamed_addr constant [46 x i8] c"\FD\F2\F2\F2\F6\F1\F1\0C\F1\F1\F1\F1\18\07\F1\0B\F1\F1\F1\11\12\13\F1\16\FA\15\1A\F1\FD\F1\F1\F1\F1\F1\09\1B\F1\1F\F1\F1\1D\F1\F1\1E\F1\F1", align 16
@yytranslate = internal unnamed_addr constant [278 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16", align 16
@yycheck = internal unnamed_addr constant [52 x i8] c"\03\04\05\06\07\08\0C\00\16\0F\14\0E\0F\10\11\12\13\06\07\08\0D\0C\02\03\0F\0E\0F\10\11\12\13\13\0A\16\0A\0B\0C\14\14\14\13\0F\0F\0C\0F\0F\FF\0F\FF\FF\FF\1C", align 16
@yytable = internal unnamed_addr constant [52 x i8] c"\01\02\03\04\05\06#\1B\12$\16\07\08\09\0A\0B\0C\04\05\06\1C(\14\15)\07\08\09\0A\0B\0C\17\22\1D\18\19\1A\1F !%&*+,-\00\1E\00\00\00'", align 16
@yydefact = internal unnamed_addr constant [46 x i8] c"\04\1A\1A\1A\00\15\16\00\17\14\13\12\18\00\02\05\07\06\19\00\1D\00\11\00\00\00\00\01\00\09\08\1B\1E\1C\00\00\0A\0E\10\03\00\0C\0B\00\0D\0F", align 16
@yyr2 = internal unnamed_addr constant [31 x i8] c"\00\02\01\03\00\01\01\01\02\02\03\04\04\05\03\05\03\02\01\01\01\01\01\01\01\01\00\03\03\02\03", align 16
@phpdbg_globals = external local_unnamed_addr global %struct._zend_phpdbg_globals, align 8
@yyr1 = internal unnamed_addr constant [31 x i8] c"\00\17\18\18\18\19\19\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1D\1D\1D\1D", align 16
@yypgoto = internal unnamed_addr constant [7 x i8] c"\F1\F1\17\F1 \14\F1", align 1
@yydefgoto = internal unnamed_addr constant [7 x i8] c"\00\0D\0E\0F\10\13\11", align 1
@.str = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"syntax error, unexpected %s\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"syntax error, unexpected %s, expecting %s\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"syntax error, unexpected %s, expecting %s or %s\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"syntax error, unexpected %s, expecting %s or %s or %s\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"syntax error, unexpected %s, expecting %s or %s or %s or %s\00", align 1
@yytname = internal unnamed_addr constant [31 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr null], align 16
@.str.11 = private unnamed_addr constant [17 x i8] c"\22end of command\22\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"\22invalid token\22\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"\22eval\22\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"\22run\22\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"\22shell\22\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"\22if (condition)\22\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"\22truthy (true, on, yes or enabled)\22\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"\22falsy (false, off, no or disabled)\22\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"\22string (some input, perhaps)\22\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"\22: (colon)\22\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"\22:: (double colon)\22\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"\22# (pound sign followed by digits)\22\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"\22# (pound sign)\22\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"\22protocol (file://)\22\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"\22digits (numbers)\22\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"\22literal (string)\22\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"\22address\22\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"\22opcode\22\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"\22identifier (command or function name)\22\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"\22input (input string or data)\22\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"\22input\22\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"\22request id (-r %d)\22\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"$accept\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"parameters\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"parameter\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"req_id\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"full_expression\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"Parse Error: %s\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"--> \00", align 1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 3) i32 @phpdbg_parse() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct._phpdbg_param, align 8      ; 6 uses
  %i.a = alloca [200 x i8], align 16              ; 6 uses
  %1 = alloca [200 x %struct._phpdbg_param], align 16 ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 6 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i64 128, ptr %i.c, align 8, !tbaa !13
  br label %bb.c

bb.b:                                             ; preds = %34, %bb.bf, %bb.t
  %.0572 = phi ptr [ %.1573, %bb.bf ], [ %.4575, %34 ], [ %.1573, %bb.t ]
  %.0511 = phi i32 [ %i.hw, %bb.bf ], [ %35, %34 ], [ %i.av, %bb.t ]
  %.0508 = phi i32 [ %.1509, %bb.bf ], [ 3, %34 ], [ %spec.select, %bb.t ]
  %.0489 = phi ptr [ %i.he, %bb.bf ], [ %.4493, %34 ], [ %.3492, %bb.t ]
  %.0476 = phi ptr [ %i.hf, %bb.bf ], [ %36, %34 ], [ %i.az, %bb.t ]
  %.0468 = phi i32 [ %.5, %bb.bf ], [ %.6, %34 ], [ -2, %bb.t ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0489, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1573 = phi ptr [ %i.b, %bb.a ], [ %.0572, %bb.b ] ; 17 uses
  %.1512 = phi i32 [ 0, %bb.a ], [ %.0511, %bb.b ] ; 4 uses
  %.1509 = phi i32 [ 0, %bb.a ], [ %.0508, %bb.b ] ; 3 uses
  %.0505 = phi i64 [ 200, %bb.a ], [ %.2507, %bb.b ] ; 4 uses
  %.0498 = phi ptr [ %i.a, %bb.a ], [ %.3501, %bb.b ] ; 8 uses
  %.1490 = phi ptr [ %i.a, %bb.a ], [ %i.d, %bb.b ] ; 4 uses
  %.0485 = phi ptr [ %1, %bb.a ], [ %.3488, %bb.b ] ; 2 uses
  %.1477 = phi ptr [ %1, %bb.a ], [ %.0476, %bb.b ]
  %.1469 = phi i32 [ -2, %bb.a ], [ %.0468, %bb.b ] ; 3 uses
  %i.e = trunc nsw i32 %.1512 to i8
  store i8 %i.e, ptr %.1490, align 1, !tbaa !14
  %i.f = getelementptr inbounds i8, ptr %.0498, i64 %.0505
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -1
  %.not = icmp ugt ptr %i.g, %.1490
  br i1 %.not, label %.thread591, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = ptrtoint ptr %.1490 to i64
  %i.i = ptrtoint ptr %.0498 to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = add nsw i64 %i.j, 1                      ; 3 uses
  %i.l = icmp sgt i64 %.0505, 9999
  br i1 %i.l, label %.thread584, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = shl nsw i64 %.0505, 1
  %spec.store.select = call i64 @llvm.smin.i64(i64 %i.m, i64 10000) ; 4 uses
  %i.n = mul nsw i64 %spec.store.select, 89
  %i.o = add nsw i64 %i.n, 87
  %i.p = call noalias ptr @malloc(i64 noundef %i.o) #12 ; 6 uses
  %.not536.not = icmp eq ptr %i.p, null
  br i1 %.not536.not, label %.thread584, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 1 %.0498, i64 %i.k, i1 false)
  %i.q = add nsw i64 %spec.store.select, 87
  %i.r = sdiv i64 %i.q, 88
  %i.s = getelementptr inbounds [88 x i8], ptr %i.p, i64 %i.r ; 3 uses
  %i.t = mul i64 %i.k, 88
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %.0485, i64 %i.t, i1 false)
  %.not537 = icmp eq ptr %.0498, %i.a
  br i1 %.not537, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %.0498) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.j
  %i.v = getelementptr inbounds [88 x i8], ptr %i.s, i64 %i.k
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -88
  %i.x = add nsw i64 %spec.store.select, -1
  %.not538 = icmp sgt i64 %i.x, %i.j
  br i1 %.not538, label %.thread591, label %.thread619.thread

.thread591:                                       ; preds = %bb.h, %bb.c
  %.2507 = phi i64 [ %.0505, %bb.c ], [ %spec.store.select, %bb.h ]
  %.3501 = phi ptr [ %.0498, %bb.c ], [ %i.p, %bb.h ] ; 6 uses
  %.3492 = phi ptr [ %.1490, %bb.c ], [ %i.u, %bb.h ] ; 5 uses
  %.3488 = phi ptr [ %.0485, %bb.c ], [ %i.s, %bb.h ]
  %.3479 = phi ptr [ %.1477, %bb.c ], [ %i.w, %bb.h ] ; 130 uses
  %i.y = icmp eq i32 %.1512, 27
  br i1 %i.y, label %.thread619, label %bb.i

bb.i:                                             ; preds = %.thread591
  %i.z = sext i32 %.1512 to i64                   ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr @yypact, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !14
  %i.ac = sext i8 %i.ab to i32
  %i.ad = shl nuw i64 1, %i.z                     ; 2 uses
  %i.ae = and i64 %i.ad, 60283762986848
  %.not539 = icmp eq i64 %i.ae, 0
  br i1 %.not539, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.af = icmp eq i32 %.1469, -2
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = call i32 @phpdbg_lex(ptr noundef nonnull %0) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2470 = phi i32 [ %i.ag, %bb.k ], [ %.1469, %bb.j ] ; 6 uses
  %i.ah = icmp slt i32 %.2470, 1
  br i1 %i.ah, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = icmp eq i32 %.2470, 256
  br i1 %i.ai, label %.thread598, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = icmp samesign ult i32 %.2470, 278
  br i1 %i.aj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ak = zext nneg i32 %.2470 to i64
  %i.al = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !14
  %i.an = sext i8 %i.am to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %.0473 = phi i32 [ 0, %bb.l ], [ %i.an, %bb.o ], [ 2, %bb.n ] ; 2 uses
  %.3 = phi i32 [ 0, %bb.l ], [ %.2470, %bb.o ], [ %.2470, %bb.n ] ; 3 uses
  %i.ao = add nsw i32 %.0473, %i.ac               ; 2 uses
  %or.cond3 = icmp ugt i32 %i.ao, 51
  br i1 %or.cond3, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = zext nneg i32 %i.ao to i64              ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr @yycheck, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !14
  %i.as = sext i8 %i.ar to i32
  %.not540 = icmp eq i32 %.0473, %i.as
  br i1 %.not540, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr @yytable, i64 %i.ap
  %i.au = load i8, ptr %i.at, align 1, !tbaa !14
  %i.av = sext i8 %i.au to i32                    ; 2 uses
  %i.aw = shl nuw nsw i64 1, %i.ap
  %i.ax = and i64 %i.aw, 2040693581152256
  %.not541 = icmp eq i64 %i.ax, 0
  br i1 %.not541, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = sub nsw i32 0, %i.av
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %spec.select = call i32 @llvm.usub.sat.i32(i32 %.1509, i32 1)
  %i.az = getelementptr inbounds nuw i8, ptr %.3479, i64 88 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.az, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false), !tbaa.struct !49
  br label %bb.b

bb.u:                                             ; preds = %bb.p, %bb.q, %bb.i
  %.4 = phi i32 [ %.1469, %bb.i ], [ %.3, %bb.p ], [ %.3, %bb.q ] ; 9 uses
  %i.ba = getelementptr inbounds i8, ptr @yydefact, i64 %i.z
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !14
  %i.bc = sext i8 %i.bb to i32
  %i.bd = and i64 %i.ad, 9947541151888
  %.not543 = icmp eq i64 %i.bd, 0
  br i1 %.not543, label %bb.v, label %bb.bg

bb.v:                                             ; preds = %bb.u, %bb.s
  %.0475 = phi i32 [ %i.bc, %bb.u ], [ %i.ay, %bb.s ] ; 2 uses
  %.5 = phi i32 [ %.4, %bb.u ], [ %.3, %bb.s ]
  %i.be = sext i32 %.0475 to i64                  ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr @yyr2, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !14
  %i.bh = sext i8 %i.bg to i64                    ; 2 uses
  %i.bi = sub nsw i64 1, %i.bh
  %i.bj = getelementptr inbounds [88 x i8], ptr %.3479, i64 %i.bi ; 9 uses
  %.sroa.0.0.copyload = load i32, ptr %i.bj, align 8, !tbaa !15 ; 6 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %.sroa.26.0.copyload = load i32, ptr %.sroa.26.0..sroa_idx, align 4 ; 18 uses
  %.sroa.2676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bk = load <2 x i64>, ptr %.sroa.2676.0..sroa_idx, align 8, !tbaa !13 ; 18 uses
  %.sroa.28121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %.sroa.28121.0.copyload = load ptr, ptr %.sroa.28121.0..sroa_idx, align 8, !tbaa !18 ; 14 uses
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %.sroa.40.0.copyload = load i64, ptr %.sroa.40.0..sroa_idx, align 8, !tbaa !13 ; 14 uses
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load <2 x ptr>, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !18 ; 16 uses
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %.sroa.48.0.copyload = load ptr, ptr %.sroa.48.0..sroa_idx, align 8, !tbaa !18 ; 13 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %.sroa.53.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx, align 8, !tbaa !13 ; 12 uses
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  %i.bm = load <2 x ptr>, ptr %.sroa.59.0..sroa_idx, align 8, !tbaa !48 ; 18 uses
  switch i32 %.0475, label %bb.bb [
    i32 2, label %bb.w
    i32 3, label %bb.x
    i32 30, label %bb.ba
    i32 5, label %bb.y
    i32 6, label %bb.z
    i32 7, label %bb.aa
    i32 8, label %bb.ab
    i32 9, label %bb.ac
    i32 10, label %bb.ad
    i32 11, label %bb.ae
    i32 12, label %bb.af
    i32 13, label %bb.ai
    i32 14, label %bb.al
    i32 15, label %bb.am
    i32 16, label %bb.an
    i32 17, label %bb.ao
    i32 18, label %bb.ap
    i32 19, label %bb.aq
    i32 20, label %bb.ar
    i32 21, label %bb.as
    i32 22, label %bb.at
    i32 23, label %bb.au
    i32 24, label %bb.av
    i32 25, label %bb.aw
    i32 27, label %bb.ax
    i32 28, label %bb.ay
    i32 29, label %bb.az
  ]

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.copyload43 = load i32, ptr %.3479, align 8, !tbaa !15
  %.sroa.26.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %.3479, i64 4
  %.sroa.26.0.copyload55 = load i32, ptr %.sroa.26.0..sroa_idx54, align 4
  %.sroa.2676.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %.3479, i64 8
  %i.bn = load <2 x i64>, ptr %.sroa.2676.0..sroa_idx77, align 8, !tbaa !13
  %.sroa.28121.0..sroa_idx122 = getelementptr inbounds nuw i8, ptr %.3479, i64 24
  %.sroa.28121.0.copyload123 = load ptr, ptr %.sroa.28121.0..sroa_idx122, align 8, !tbaa !18
  %.sroa.40.0..sroa_idx151 = getelementptr inbounds nuw i8, ptr %.3479, i64 32
  %.sroa.40.0.copyload152 = load i64, ptr %.sroa.40.0..sroa_idx151, align 8, !tbaa !13
  %.sroa.44.0..sroa_idx173 = getelementptr inbounds nuw i8, ptr %.3479, i64 40
  %i.bo = load <2 x ptr>, ptr %.sroa.44.0..sroa_idx173, align 8, !tbaa !18
  %.sroa.48.0..sroa_idx217 = getelementptr inbounds nuw i8, ptr %.3479, i64 56
  %.sroa.48.0.copyload218 = load ptr, ptr %.sroa.48.0..sroa_idx217, align 8, !tbaa !18
  %.sroa.53.0..sroa_idx239 = getelementptr inbounds nuw i8, ptr %.3479, i64 64
  %.sroa.53.0.copyload240 = load i64, ptr %.sroa.53.0..sroa_idx239, align 8, !tbaa !13
  %.sroa.59.0..sroa_idx261 = getelementptr inbounds nuw i8, ptr %.3479, i64 72
  %i.bp = load <2 x ptr>, ptr %.sroa.59.0..sroa_idx261, align 8, !tbaa !48
  br label %bb.bb

bb.x:                                             ; preds = %bb.v
  %i.bq = getelementptr inbounds i8, ptr %.3479, i64 -96
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !53
  call void @phpdbg_stack_separate(ptr noundef %i.br) #11
  %.sroa.0.0.copyload44 = load i32, ptr %.3479, align 8, !tbaa !15
  %.sroa.26.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %.3479, i64 4
  %.sroa.26.0.copyload57 = load i32, ptr %.sroa.26.0..sroa_idx56, align 4
  %.sroa.2676.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %.3479, i64 8
  %i.bs = load <2 x i64>, ptr %.sroa.2676.0..sroa_idx79, align 8, !tbaa !13
  %.sroa.28121.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %.3479, i64 24
  %.sroa.28121.0.copyload125 = load ptr, ptr %.sroa.28121.0..sroa_idx124, align 8, !tbaa !18
  %.sroa.40.0..sroa_idx153 = getelementptr inbounds nuw i8, ptr %.3479, i64 32
  %.sroa.40.0.copyload154 = load i64, ptr %.sroa.40.0..sroa_idx153, align 8, !tbaa !13
  %.sroa.44.0..sroa_idx175 = getelementptr inbounds nuw i8, ptr %.3479, i64 40
  %i.bt = load <2 x ptr>, ptr %.sroa.44.0..sroa_idx175, align 8, !tbaa !18
  %.sroa.48.0..sroa_idx219 = getelementptr inbounds nuw i8, ptr %.3479, i64 56
  %.sroa.48.0.copyload220 = load ptr, ptr %.sroa.48.0..sroa_idx219, align 8, !tbaa !18
  %.sroa.53.0..sroa_idx241 = getelementptr inbounds nuw i8, ptr %.3479, i64 64
  %.sroa.53.0.copyload242 = load i64, ptr %.sroa.53.0..sroa_idx241, align 8, !tbaa !13
  %.sroa.59.0..sroa_idx263 = getelementptr inbounds nuw i8, ptr %.3479, i64 72
  %i.bu = load <2 x ptr>, ptr %.sroa.59.0..sroa_idx263, align 8, !tbaa !48
  br label %bb.bb

bb.y:                                             ; preds = %bb.v
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 832), align 8, !tbaa !54
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 80
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !53
  %i.by = insertelement <2 x ptr> %i.bm, ptr %i.bx, i64 1
  br label %bb.bb

bb.z:                                             ; preds = %bb.v
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 832), align 8, !tbaa !54
  call void @phpdbg_stack_push(ptr noundef %i.bz, ptr noundef nonnull %.3479) #11
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 832), align 8, !tbaa !54
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !53
  %i.cd = insertelement <2 x ptr> %i.bm, ptr %i.cc, i64 1
  br label %bb.bb

bb.aa:                                            ; preds = %bb.v
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 832), align 8, !tbaa !54
  call void @phpdbg_stack_push(ptr noundef %i.ce, ptr noundef nonnull %.3479) #11
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 832), align 8, !tbaa !54
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 80
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !53
  %i.ci = insertelement <2 x ptr> %i.bm, ptr %i.ch, i64 1
  br label %bb.bb

bb.ab:                                            ; preds = %bb.v
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 832), align 8, !tbaa !54
  call void @phpdbg_stack_push(ptr noundef %i.cj, ptr noundef nonnull %.3479) #11
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 832), align 8, !tbaa !54
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 80
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !53
  %i.cn = insertelement <2 x ptr> %i.bm, ptr %i.cm, i64 1
  br label %bb.bb

bb.ac:                                            ; preds = %bb.v
  %i.co = getelementptr inbounds i8, ptr %.3479, i64 -88
  %.sroa.0.0.copyload45 = load i32, ptr %i.co, align 8, !tbaa !15
  %.sroa.26.0..sroa_idx58 = getelementptr inbounds i8, ptr %.3479, i64 -84
  %.sroa.26.0.copyload59 = load i32, ptr %.sroa.26.0..sroa_idx58, align 4
  %.sroa.2676.0..sroa_idx81 = getelementptr inbounds i8, ptr %.3479, i64 -80
  %i.cp = load <2 x i64>, ptr %.sroa.2676.0..sroa_idx81, align 8, !tbaa !13
  %.sroa.28121.0..sroa_idx126 = getelementptr inbounds i8, ptr %.3479, i64 -64
  %.sroa.28121.0.copyload127 = load ptr, ptr %.sroa.28121.0..sroa_idx126, align 8, !tbaa !18
  %.sroa.40.0..sroa_idx155 = getelementptr inbounds i8, ptr %.3479, i64 -56
  %.sroa.40.0.copyload156 = load i64, ptr %.sroa.40.0..sroa_idx155, align 8, !tbaa !13
  %.sroa.44.0..sroa_idx177 = getelementptr inbounds i8, ptr %.3479, i64 -48
  %i.cq = load <2 x ptr>, ptr %.sroa.44.0..sroa_idx177, align 8, !tbaa !18
  %.sroa.48.0..sroa_idx221 = getelementptr inbounds i8, ptr %.3479, i64 -32
  %.sroa.48.0.copyload222 = load ptr, ptr %.sroa.48.0..sroa_idx221, align 8, !tbaa !18
  %.sroa.53.0..sroa_idx243 = getelementptr inbounds i8, ptr %.3479, i64 -24
  %.sroa.53.0.copyload244 = load i64, ptr %.sroa.53.0..sroa_idx243, align 8, !tbaa !13
  %.sroa.59.0..sroa_idx265 = getelementptr inbounds i8, ptr %.3479, i64 -16
  %i.cr = load <2 x ptr>, ptr %.sroa.59.0..sroa_idx265, align 8, !tbaa !48
  %i.cs = getelementptr inbounds nuw i8, ptr %.3479, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !55
  store i64 %i.ct, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1560), align 8, !tbaa !56
  br label %bb.bb

bb.ad:                                            ; preds = %bb.v
  %i.cu = getelementptr inbounds i8, ptr %.3479, i64 -32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !57
  %i.cw = getelementptr inbounds nuw i8, ptr %.3479, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !55
  br label %bb.bb

bb.ae:                                            ; preds = %bb.v
  %i.cy = getelementptr inbounds i8, ptr %.3479, i64 -208
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !57
  %i.da = getelementptr inbounds nuw i8, ptr %.3479, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !55
  br label %bb.bb

bb.af:                                            ; preds = %bb.v
  %i.dc = getelementptr inbounds i8, ptr %.3479, i64 -200 ; 3 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !58 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %.3479, i64 -112 ; 3 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !58
  %i.dg = add i64 %i.dd, 1
  %i.dh = add i64 %i.dg, %i.df
  %i.di = call noalias ptr @malloc(i64 noundef %i.dh) #12 ; 5 uses
  %.not545 = icmp eq ptr %i.di, null
  br i1 %.not545, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dj = getelementptr inbounds i8, ptr %.3479, i64 -208
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.di, ptr align 1 %i.dk, i64 %i.dd, i1 false)
  %i.dl = load i64, ptr %i.dc, align 8, !tbaa !58
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dl
  %i.dn = getelementptr inbounds i8, ptr %.3479, i64 -120
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !57
  %i.dp = load i64, ptr %i.de, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dm, ptr align 1 %i.do, i64 %i.dp, i1 false)
  %i.dq = load i64, ptr %i.dc, align 8, !tbaa !58
end_hunk_0
begin_hunk_1_@phpdbg_parse:bb.a
  %i.fv = load <2 x ptr>, ptr %.sroa.59.0..sroa_idx269, align 8, !tbaa !48
  br label %bb.bb

bb.ar:                                            ; preds = %bb.v
  %.sroa.0.0.copyload48 = load i32, ptr %.3479, align 8, !tbaa !15
  %.sroa.26.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %.3479, i64 4
  %.sroa.26.0.copyload65 = load i32, ptr %.sroa.26.0..sroa_idx64, align 4
  %.sroa.2676.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %.3479, i64 8
  %i.fw = load <2 x i64>, ptr %.sroa.2676.0..sroa_idx87, align 8, !tbaa !13
  %.sroa.28121.0..sroa_idx132 = getelementptr inbounds nuw i8, ptr %.3479, i64 24
  %.sroa.28121.0.copyload133 = load ptr, ptr %.sroa.28121.0..sroa_idx132, align 8, !tbaa !18
  %.sroa.40.0..sroa_idx161 = getelementptr inbounds nuw i8, ptr %.3479, i64 32
  %.sroa.40.0.copyload162 = load i64, ptr %.sroa.40.0..sroa_idx161, align 8, !tbaa !13
  %.sroa.44.0..sroa_idx183 = getelementptr inbounds nuw i8, ptr %.3479, i64 40
  %i.fx = load <2 x ptr>, ptr %.sroa.44.0..sroa_idx183, align 8, !tbaa !18
  %.sroa.48.0..sroa_idx227 = getelementptr inbounds nuw i8, ptr %.3479, i64 56
  %.sroa.48.0.copyload228 = load ptr, ptr %.sroa.48.0..sroa_idx227, align 8, !tbaa !18
  %.sroa.53.0..sroa_idx249 = getelementptr inbounds nuw i8, ptr %.3479, i64 64
  %.sroa.53.0.copyload250 = load i64, ptr %.sroa.53.0..sroa_idx249, align 8, !tbaa !13
  %.sroa.59.0..sroa_idx271 = getelementptr inbounds nuw i8, ptr %.3479, i64 72
  %i.fy = load <2 x ptr>, ptr %.sroa.59.0..sroa_idx271, align 8, !tbaa !48
  br label %bb.bb

bb.as:                                            ; preds = %bb.v
  %.sroa.0.0.copyload49 = load i32, ptr %.3479, align 8, !tbaa !15
  %.sroa.26.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %.3479, i64 4
  %.sroa.26.0.copyload67 = load i32, ptr %.sroa.26.0..sroa_idx66, align 4
  %.sroa.2676.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %.3479, i64 8
  %i.fz = load <2 x i64>, ptr %.sroa.2676.0..sroa_idx89, align 8, !tbaa !13
  %.sroa.28121.0..sroa_idx134 = getelementptr inbounds nuw i8, ptr %.3479, i64 24
  %.sroa.28121.0.copyload135 = load ptr, ptr %.sroa.28121.0..sroa_idx134, align 8, !tbaa !18
  %.sroa.40.0..sroa_idx163 = getelementptr inbounds nuw i8, ptr %.3479, i64 32
  %.sroa.40.0.copyload164 = load i64, ptr %.sroa.40.0..sroa_idx163, align 8, !tbaa !13
  %.sroa.44.0..sroa_idx185 = getelementptr inbounds nuw i8, ptr %.3479, i64 40
  %i.ga = load <2 x ptr>, ptr %.sroa.44.0..sroa_idx185, align 8, !tbaa !18
  %.sroa.48.0..sroa_idx229 = getelementptr inbounds nuw i8, ptr %.3479, i64 56
  %.sroa.48.0.copyload230 = load ptr, ptr %.sroa.48.0..sroa_idx229, align 8, !tbaa !18
  %.sroa.53.0..sroa_idx251 = getelementptr inbounds nuw i8, ptr %.3479, i64 64
  %.sroa.53.0.copyload252 = load i64, ptr %.sroa.53.0..sroa_idx251, align 8, !tbaa !13
  %.sroa.59.0..sroa_idx273 = getelementptr inbounds nuw i8, ptr %.3479, i64 72
  %i.gb = load <2 x ptr>, ptr %.sroa.59.0..sroa_idx273, align 8, !tbaa !48
  br label %bb.bb

bb.at:                                            ; preds = %bb.v
  %.sroa.0.0.copyload50 = load i32, ptr %.3479, align 8, !tbaa !15
  %.sroa.26.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %.3479, i64 4
  %.sroa.26.0.copyload69 = load i32, ptr %.sroa.26.0..sroa_idx68, align 4
  %.sroa.2676.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %.3479, i64 8
  %i.gc = load <2 x i64>, ptr %.sroa.2676.0..sroa_idx91, align 8, !tbaa !13
  %.sroa.28121.0..sroa_idx136 = getelementptr inbounds nuw i8, ptr %.3479, i64 24
  %.sroa.28121.0.copyload137 = load ptr, ptr %.sroa.28121.0..sroa_idx136, align 8, !tbaa !18
  %.sroa.40.0..sroa_idx165 = getelementptr inbounds nuw i8, ptr %.3479, i64 32
  %.sroa.40.0.copyload166 = load i64, ptr %.sroa.40.0..sroa_idx165, align 8, !tbaa !13
  %.sroa.44.0..sroa_idx187 = getelementptr inbounds nuw i8, ptr %.3479, i64 40
  %i.gd = load <2 x ptr>, ptr %.sroa.44.0..sroa_idx187, align 8, !tbaa !18
  %.sroa.48.0..sroa_idx231 = getelementptr inbounds nuw i8, ptr %.3479, i64 56
  %.sroa.48.0.copyload232 = load ptr, ptr %.sroa.48.0..sroa_idx231, align 8, !tbaa !18
  %.sroa.53.0..sroa_idx253 = getelementptr inbounds nuw i8, ptr %.3479, i64 64
  %.sroa.53.0.copyload254 = load i64, ptr %.sroa.53.0..sroa_idx253, align 8, !tbaa !13
  %.sroa.59.0..sroa_idx275 = getelementptr inbounds nuw i8, ptr %.3479, i64 72
  %i.ge = load <2 x ptr>, ptr %.sroa.59.0..sroa_idx275, align 8, !tbaa !48
  br label %bb.bb

bb.au:                                            ; preds = %bb.v
  %.sroa.0.0.copyload51 = load i32, ptr %.3479, align 8, !tbaa !15
  %.sroa.26.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %.3479, i64 4
  %.sroa.26.0.copyload71 = load i32, ptr %.sroa.26.0..sroa_idx70, align 4
  %.sroa.2676.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %.3479, i64 8
  %i.gf = load <2 x i64>, ptr %.sroa.2676.0..sroa_idx93, align 8, !tbaa !13
  %.sroa.28121.0..sroa_idx138 = getelementptr inbounds nuw i8, ptr %.3479, i64 24
  %.sroa.28121.0.copyload139 = load ptr, ptr %.sroa.28121.0..sroa_idx138, align 8, !tbaa !18
  %.sroa.40.0..sroa_idx167 = getelementptr inbounds nuw i8, ptr %.3479, i64 32
  %.sroa.40.0.copyload168 = load i64, ptr %.sroa.40.0..sroa_idx167, align 8, !tbaa !13
  %.sroa.44.0..sroa_idx189 = getelementptr inbounds nuw i8, ptr %.3479, i64 40
  %i.gg = load <2 x ptr>, ptr %.sroa.44.0..sroa_idx189, align 8, !tbaa !18
  %.sroa.48.0..sroa_idx233 = getelementptr inbounds nuw i8, ptr %.3479, i64 56
  %.sroa.48.0.copyload234 = load ptr, ptr %.sroa.48.0..sroa_idx233, align 8, !tbaa !18
  %.sroa.53.0..sroa_idx255 = getelementptr inbounds nuw i8, ptr %.3479, i64 64
  %.sroa.53.0.copyload256 = load i64, ptr %.sroa.53.0..sroa_idx255, align 8, !tbaa !13
  %.sroa.59.0..sroa_idx277 = getelementptr inbounds nuw i8, ptr %.3479, i64 72
  %i.gh = load <2 x ptr>, ptr %.sroa.59.0..sroa_idx277, align 8, !tbaa !48
  br label %bb.bb

bb.av:                                            ; preds = %bb.v
  %.sroa.0.0.copyload52 = load i32, ptr %.3479, align 8, !tbaa !15
  %.sroa.26.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %.3479, i64 4
  %.sroa.26.0.copyload73 = load i32, ptr %.sroa.26.0..sroa_idx72, align 4
  %.sroa.2676.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %.3479, i64 8
  %i.gi = load <2 x i64>, ptr %.sroa.2676.0..sroa_idx95, align 8, !tbaa !13
  %.sroa.28121.0..sroa_idx140 = getelementptr inbounds nuw i8, ptr %.3479, i64 24
  %.sroa.28121.0.copyload141 = load ptr, ptr %.sroa.28121.0..sroa_idx140, align 8, !tbaa !18
  %.sroa.40.0..sroa_idx169 = getelementptr inbounds nuw i8, ptr %.3479, i64 32
  %.sroa.40.0.copyload170 = load i64, ptr %.sroa.40.0..sroa_idx169, align 8, !tbaa !13
  %.sroa.44.0..sroa_idx191 = getelementptr inbounds nuw i8, ptr %.3479, i64 40
  %i.gj = load <2 x ptr>, ptr %.sroa.44.0..sroa_idx191, align 8, !tbaa !18
  %.sroa.48.0..sroa_idx235 = getelementptr inbounds nuw i8, ptr %.3479, i64 56
  %.sroa.48.0.copyload236 = load ptr, ptr %.sroa.48.0..sroa_idx235, align 8, !tbaa !18
  %.sroa.53.0..sroa_idx257 = getelementptr inbounds nuw i8, ptr %.3479, i64 64
  %.sroa.53.0.copyload258 = load i64, ptr %.sroa.53.0..sroa_idx257, align 8, !tbaa !13
  %.sroa.59.0..sroa_idx279 = getelementptr inbounds nuw i8, ptr %.3479, i64 72
  %i.gk = load <2 x ptr>, ptr %.sroa.59.0..sroa_idx279, align 8, !tbaa !48
  br label %bb.bb

bb.aw:                                            ; preds = %bb.v
  %i.gl = getelementptr inbounds nuw i8, ptr %.3479, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !55
  store i64 %i.gm, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1560), align 8, !tbaa !56
  br label %bb.bb

bb.ax:                                            ; preds = %bb.v
  %i.gn = getelementptr inbounds nuw i8, ptr %.3479, i64 56
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !57
  %i.gp = getelementptr inbounds nuw i8, ptr %.3479, i64 64
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !58
  br label %bb.bb

bb.ay:                                            ; preds = %bb.v
  %i.gr = getelementptr inbounds nuw i8, ptr %.3479, i64 56
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !57
  %i.gt = getelementptr inbounds nuw i8, ptr %.3479, i64 64
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !58
  br label %bb.bb

bb.az:                                            ; preds = %bb.v
  br label %bb.bb

bb.ba:                                            ; preds = %bb.v
  %i.gv = getelementptr inbounds nuw i8, ptr %.3479, i64 56
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !57
  %i.gx = getelementptr inbounds nuw i8, ptr %.3479, i64 64
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !58
  br label %bb.bb

bb.bb:                                            ; preds = %bb.v, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ah, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %.sroa.53.0 = phi i64 [ %.sroa.53.0.copyload, %bb.v ], [ %.sroa.53.0.copyload240, %bb.w ], [ %.sroa.53.0.copyload242, %bb.x ], [ %i.gy, %bb.ba ], [ %.sroa.53.0.copyload, %bb.y ], [ %.sroa.53.0.copyload, %bb.z ], [ %.sroa.53.0.copyload, %bb.aa ], [ %.sroa.53.0.copyload, %bb.ab ], [ %.sroa.53.0.copyload244, %bb.ac ], [ %.sroa.53.0.copyload, %bb.ad ], [ %.sroa.53.0.copyload, %bb.ae ], [ %.sroa.53.0.copyload, %bb.ah ], [ %.sroa.53.0.copyload, %bb.ak ], [ %.sroa.53.0.copyload, %bb.al ], [ %.sroa.53.0.copyload, %bb.am ], [ %i.fi, %bb.an ], [ %i.fp, %bb.ao ], [ %.sroa.53.0.copyload246, %bb.ap ], [ %.sroa.53.0.copyload248, %bb.aq ], [ %.sroa.53.0.copyload250, %bb.ar ], [ %.sroa.53.0.copyload252, %bb.as ], [ %.sroa.53.0.copyload254, %bb.at ], [ %.sroa.53.0.copyload256, %bb.au ], [ %.sroa.53.0.copyload258, %bb.av ], [ %.sroa.53.0.copyload, %bb.aw ], [ %i.gq, %bb.ax ], [ %i.gu, %bb.ay ], [ 0, %bb.az ]
  %.sroa.48.0 = phi ptr [ %.sroa.48.0.copyload, %bb.v ], [ %.sroa.48.0.copyload218, %bb.w ], [ %.sroa.48.0.copyload220, %bb.x ], [ %i.gw, %bb.ba ], [ %.sroa.48.0.copyload, %bb.y ], [ %.sroa.48.0.copyload, %bb.z ], [ %.sroa.48.0.copyload, %bb.aa ], [ %.sroa.48.0.copyload, %bb.ab ], [ %.sroa.48.0.copyload222, %bb.ac ], [ %.sroa.48.0.copyload, %bb.ad ], [ %.sroa.48.0.copyload, %bb.ae ], [ %.sroa.48.0.copyload, %bb.ah ], [ %.sroa.48.0.copyload, %bb.ak ], [ %.sroa.48.0.copyload, %bb.al ], [ %.sroa.48.0.copyload, %bb.am ], [ %i.fg, %bb.an ], [ %i.fn, %bb.ao ], [ %.sroa.48.0.copyload224, %bb.ap ], [ %.sroa.48.0.copyload226, %bb.aq ], [ %.sroa.48.0.copyload228, %bb.ar ], [ %.sroa.48.0.copyload230, %bb.as ], [ %.sroa.48.0.copyload232, %bb.at ], [ %.sroa.48.0.copyload234, %bb.au ], [ %.sroa.48.0.copyload236, %bb.av ], [ %.sroa.48.0.copyload, %bb.aw ], [ %i.go, %bb.ax ], [ %i.gs, %bb.ay ], [ %.sroa.48.0.copyload, %bb.az ]
  %.sroa.40.0 = phi i64 [ %.sroa.40.0.copyload, %bb.v ], [ %.sroa.40.0.copyload152, %bb.w ], [ %.sroa.40.0.copyload154, %bb.x ], [ %.sroa.40.0.copyload, %bb.ba ], [ %.sroa.40.0.copyload, %bb.y ], [ %.sroa.40.0.copyload, %bb.z ], [ %.sroa.40.0.copyload, %bb.aa ], [ %.sroa.40.0.copyload, %bb.ab ], [ %.sroa.40.0.copyload156, %bb.ac ], [ %i.cx, %bb.ad ], [ %i.db, %bb.ae ], [ %i.dv, %bb.ah ], [ %i.ep, %bb.ak ], [ %.sroa.40.0.copyload, %bb.al ], [ %.sroa.40.0.copyload, %bb.am ], [ %.sroa.40.0.copyload, %bb.an ], [ %.sroa.40.0.copyload, %bb.ao ], [ %.sroa.40.0.copyload158, %bb.ap ], [ %.sroa.40.0.copyload160, %bb.aq ], [ %.sroa.40.0.copyload162, %bb.ar ], [ %.sroa.40.0.copyload164, %bb.as ], [ %.sroa.40.0.copyload166, %bb.at ], [ %.sroa.40.0.copyload168, %bb.au ], [ %.sroa.40.0.copyload170, %bb.av ], [ %.sroa.40.0.copyload, %bb.aw ], [ %.sroa.40.0.copyload, %bb.ax ], [ %.sroa.40.0.copyload, %bb.ay ], [ %.sroa.40.0.copyload, %bb.az ]
  %.sroa.28121.0 = phi ptr [ %.sroa.28121.0.copyload, %bb.v ], [ %.sroa.28121.0.copyload123, %bb.w ], [ %.sroa.28121.0.copyload125, %bb.x ], [ %.sroa.28121.0.copyload, %bb.ba ], [ %.sroa.28121.0.copyload, %bb.y ], [ %.sroa.28121.0.copyload, %bb.z ], [ %.sroa.28121.0.copyload, %bb.aa ], [ %.sroa.28121.0.copyload, %bb.ab ], [ %.sroa.28121.0.copyload127, %bb.ac ], [ %i.cv, %bb.ad ], [ %i.cz, %bb.ae ], [ %i.di, %bb.ah ], [ %i.ec, %bb.ak ], [ %.sroa.28121.0.copyload, %bb.al ], [ %.sroa.28121.0.copyload, %bb.am ], [ %.sroa.28121.0.copyload, %bb.an ], [ %.sroa.28121.0.copyload, %bb.ao ], [ %.sroa.28121.0.copyload129, %bb.ap ], [ %.sroa.28121.0.copyload131, %bb.aq ], [ %.sroa.28121.0.copyload133, %bb.ar ], [ %.sroa.28121.0.copyload135, %bb.as ], [ %.sroa.28121.0.copyload137, %bb.at ], [ %.sroa.28121.0.copyload139, %bb.au ], [ %.sroa.28121.0.copyload141, %bb.av ], [ %.sroa.28121.0.copyload, %bb.aw ], [ %.sroa.28121.0.copyload, %bb.ax ], [ %.sroa.28121.0.copyload, %bb.ay ], [ %.sroa.28121.0.copyload, %bb.az ]
  %.sroa.26.0 = phi i32 [ %.sroa.26.0.copyload, %bb.v ], [ %.sroa.26.0.copyload55, %bb.w ], [ %.sroa.26.0.copyload57, %bb.x ], [ %.sroa.26.0.copyload, %bb.ba ], [ %.sroa.26.0.copyload, %bb.y ], [ %.sroa.26.0.copyload, %bb.z ], [ %.sroa.26.0.copyload, %bb.aa ], [ %.sroa.26.0.copyload, %bb.ab ], [ %.sroa.26.0.copyload59, %bb.ac ], [ %.sroa.26.0.copyload, %bb.ad ], [ %.sroa.26.0.copyload, %bb.ae ], [ %.sroa.26.0.copyload, %bb.ah ], [ %.sroa.26.0.copyload, %bb.ak ], [ %.sroa.26.0.copyload, %bb.al ], [ %.sroa.26.0.copyload, %bb.am ], [ %.sroa.26.0.copyload, %bb.an ], [ %.sroa.26.0.copyload, %bb.ao ], [ %.sroa.26.0.copyload61, %bb.ap ], [ %.sroa.26.0.copyload63, %bb.aq ], [ %.sroa.26.0.copyload65, %bb.ar ], [ %.sroa.26.0.copyload67, %bb.as ], [ %.sroa.26.0.copyload69, %bb.at ], [ %.sroa.26.0.copyload71, %bb.au ], [ %.sroa.26.0.copyload73, %bb.av ], [ %.sroa.26.0.copyload, %bb.aw ], [ %.sroa.26.0.copyload, %bb.ax ], [ %.sroa.26.0.copyload, %bb.ay ], [ %.sroa.26.0.copyload, %bb.az ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.copyload, %bb.v ], [ %.sroa.0.0.copyload43, %bb.w ], [ %.sroa.0.0.copyload44, %bb.x ], [ 15, %bb.ba ], [ %.sroa.0.0.copyload, %bb.y ], [ %.sroa.0.0.copyload, %bb.z ], [ %.sroa.0.0.copyload, %bb.aa ], [ %.sroa.0.0.copyload, %bb.ab ], [ %.sroa.0.0.copyload45, %bb.ac ], [ 2, %bb.ad ], [ 3, %bb.ae ], [ 2, %bb.ah ], [ 3, %bb.ak ], [ 4, %bb.al ], [ 8, %bb.am ], [ 7, %bb.an ], [ 12, %bb.ao ], [ %.sroa.0.0.copyload46, %bb.ap ], [ %.sroa.0.0.copyload47, %bb.aq ], [ %.sroa.0.0.copyload48, %bb.ar ], [ %.sroa.0.0.copyload49, %bb.as ], [ %.sroa.0.0.copyload50, %bb.at ], [ %.sroa.0.0.copyload51, %bb.au ], [ %.sroa.0.0.copyload52, %bb.av ], [ %.sroa.0.0.copyload, %bb.aw ], [ 10, %bb.ax ], [ 11, %bb.ay ], [ 15, %bb.az ]
  %i.gz = phi <2 x i64> [ %i.bk, %bb.v ], [ %i.bn, %bb.w ], [ %i.bs, %bb.x ], [ %i.bk, %bb.ba ], [ %i.bk, %bb.y ], [ %i.bk, %bb.z ], [ %i.bk, %bb.aa ], [ %i.bk, %bb.ab ], [ %i.cp, %bb.ac ], [ %i.bk, %bb.ad ], [ %i.bk, %bb.ae ], [ %i.bk, %bb.ah ], [ %i.bk, %bb.ak ], [ %i.bk, %bb.al ], [ %i.fc, %bb.am ], [ %i.fl, %bb.an ], [ %i.bk, %bb.ao ], [ %i.fq, %bb.ap ], [ %i.ft, %bb.aq ], [ %i.fw, %bb.ar ], [ %i.fz, %bb.as ], [ %i.gc, %bb.at ], [ %i.gf, %bb.au ], [ %i.gi, %bb.av ], [ %i.bk, %bb.aw ], [ %i.bk, %bb.ax ], [ %i.bk, %bb.ay ], [ %i.bk, %bb.az ]
  %i.ha = phi <2 x ptr> [ %i.bl, %bb.v ], [ %i.bo, %bb.w ], [ %i.bt, %bb.x ], [ %i.bl, %bb.ba ], [ %i.bl, %bb.y ], [ %i.bl, %bb.z ], [ %i.bl, %bb.aa ], [ %i.bl, %bb.ab ], [ %i.cq, %bb.ac ], [ %i.bl, %bb.ad ], [ %i.bl, %bb.ae ], [ %i.bl, %bb.ah ], [ %i.bl, %bb.ak ], [ %i.ev, %bb.al ], [ %i.fe, %bb.am ], [ %i.bl, %bb.an ], [ %i.bl, %bb.ao ], [ %i.fr, %bb.ap ], [ %i.fu, %bb.aq ], [ %i.fx, %bb.ar ], [ %i.ga, %bb.as ], [ %i.gd, %bb.at ], [ %i.gg, %bb.au ], [ %i.gj, %bb.av ], [ %i.bl, %bb.aw ], [ %i.bl, %bb.ax ], [ %i.bl, %bb.ay ], [ %i.bl, %bb.az ]
  %i.hb = phi <2 x ptr> [ %i.bm, %bb.v ], [ %i.bp, %bb.w ], [ %i.bu, %bb.x ], [ %i.bm, %bb.ba ], [ %i.by, %bb.y ], [ %i.cd, %bb.z ], [ %i.ci, %bb.aa ], [ %i.cn, %bb.ab ], [ %i.cr, %bb.ac ], [ %i.bm, %bb.ad ], [ %i.bm, %bb.ae ], [ %i.bm, %bb.ah ], [ %i.bm, %bb.ak ], [ %i.bm, %bb.al ], [ %i.bm, %bb.am ], [ %i.bm, %bb.an ], [ %i.bm, %bb.ao ], [ %i.fs, %bb.ap ], [ %i.fv, %bb.aq ], [ %i.fy, %bb.ar ], [ %i.gb, %bb.as ], [ %i.ge, %bb.at ], [ %i.gh, %bb.au ], [ %i.gk, %bb.av ], [ %i.bm, %bb.aw ], [ %i.bm, %bb.ax ], [ %i.bm, %bb.ay ], [ %i.bm, %bb.az ]
  %i.hc = sub nsw i64 0, %i.bh                    ; 2 uses
  %i.hd = getelementptr inbounds [88 x i8], ptr %.3479, i64 %i.hc ; 9 uses
  %i.he = getelementptr inbounds i8, ptr %.3492, i64 %i.hc ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 88 ; 2 uses
  store i32 %.sroa.0.0, ptr %i.hf, align 8, !tbaa !15
  %.sroa.26.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %i.hd, i64 92
  store i32 %.sroa.26.0, ptr %.sroa.26.0..sroa_idx74, align 4
  %.sroa.2676.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.hd, i64 96
  store <2 x i64> %i.gz, ptr %.sroa.2676.0..sroa_idx97, align 8, !tbaa !13
  %.sroa.28121.0..sroa_idx142 = getelementptr inbounds nuw i8, ptr %i.hd, i64 112
  store ptr %.sroa.28121.0, ptr %.sroa.28121.0..sroa_idx142, align 8, !tbaa !18
  %.sroa.40.0..sroa_idx171 = getelementptr inbounds nuw i8, ptr %i.hd, i64 120
  store i64 %.sroa.40.0, ptr %.sroa.40.0..sroa_idx171, align 8, !tbaa !13
  %.sroa.44.0..sroa_idx193 = getelementptr inbounds nuw i8, ptr %i.hd, i64 128
  store <2 x ptr> %i.ha, ptr %.sroa.44.0..sroa_idx193, align 8, !tbaa !18
  %.sroa.48.0..sroa_idx237 = getelementptr inbounds nuw i8, ptr %i.hd, i64 144
  store ptr %.sroa.48.0, ptr %.sroa.48.0..sroa_idx237, align 8, !tbaa !18
  %.sroa.53.0..sroa_idx259 = getelementptr inbounds nuw i8, ptr %i.hd, i64 152
  store i64 %.sroa.53.0, ptr %.sroa.53.0..sroa_idx259, align 8, !tbaa !13
  %.sroa.59.0..sroa_idx281 = getelementptr inbounds nuw i8, ptr %i.hd, i64 160
  store <2 x ptr> %i.hb, ptr %.sroa.59.0..sroa_idx281, align 8, !tbaa !48
  %i.hg = getelementptr inbounds i8, ptr @yyr1, i64 %i.be
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !14
  %i.hi = sext i8 %i.hh to i64
  %i.hj = add nsw i64 %i.hi, -23                  ; 2 uses
  %i.hk = getelementptr inbounds i8, ptr @yypgoto, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !14
  %i.hm = sext i8 %i.hl to i32
  %i.hn = load i8, ptr %i.he, align 1, !tbaa !14  ; 2 uses
  %i.ho = sext i8 %i.hn to i32
  %i.hp = add nsw i32 %i.ho, %i.hm                ; 2 uses
  %or.cond5 = icmp ult i32 %i.hp, 52
  br i1 %or.cond5, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.hq = zext nneg i32 %i.hp to i64              ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr @yycheck, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !14
  %i.ht = icmp eq i8 %i.hs, %i.hn
  br i1 %i.ht, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.hu = getelementptr inbounds nuw i8, ptr @yytable, i64 %i.hq
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.hv = getelementptr inbounds i8, ptr @yydefgoto, i64 %i.hj
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.in.in = phi ptr [ %i.hu, %bb.bd ], [ %i.hv, %bb.be ]
  %.in = load i8, ptr %.in.in, align 1, !tbaa !14
  %i.hw = sext i8 %.in to i32
  br label %bb.b

bb.bg:                                            ; preds = %bb.u
  %i.hx = icmp eq i32 %.4, -2
  br i1 %i.hx, label %2, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %or.cond7 = icmp ult i32 %.4, 278
  br i1 %or.cond7, label %bb.bi, label %2

bb.bi:                                            ; preds = %bb.bh
  %i.hy = zext nneg i32 %.4 to i64
  %i.hz = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.hy
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !14
  %i.ib = sext i8 %i.ia to i32
  br label %2

2:                                                ; preds = %bb.bi, %bb.bh, %bb.bg
  %3 = phi i32 [ -2, %bb.bg ], [ %i.ib, %bb.bi ], [ 2, %bb.bh ] ; 2 uses
  switch i32 %.1509, label %.thread598 [
    i32 0, label %bb.bj
    i32 3, label %6
  ]

bb.bj:                                            ; preds = %2
  %i.ic = call fastcc i32 @yysyntax_error(ptr noundef %i.c, ptr %.1573, ptr %.3492, i32 %3)
  switch i32 %i.ic, label %bb.bo [
    i32 0, label %4
    i32 -1, label %5
  ]

4:                                                ; preds = %bb.bj
  br label %bb.bo

5:                                                ; preds = %bb.bj
  %.not547 = icmp eq ptr %.1573, %i.b
  br i1 %.not547, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %5
  call void @free(ptr noundef %.1573) #11
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %5
  %i.id = load i64, ptr %i.c, align 8, !tbaa !13
  %i.ie = call noalias ptr @malloc(i64 noundef %i.id) #12 ; 4 uses
  %.not548 = icmp eq ptr %i.ie, null
  br i1 %.not548, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.if = call fastcc i32 @yysyntax_error(ptr noundef %i.c, ptr nonnull %i.ie, ptr %.3492, i32 %3)
  %i.ig = icmp eq i32 %i.if, -2
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  store i64 128, ptr %i.c, align 8, !tbaa !13
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bj, %bb.bn, %bb.bm, %4
  %.2 = phi ptr [ %.1573, %bb.bj ], [ %.1573, %4 ], [ %i.b, %bb.bn ], [ %i.ie, %bb.bm ] ; 2 uses
  %.0465 = phi ptr [ @.str, %bb.bj ], [ %.1573, %4 ], [ @.str, %bb.bn ], [ %i.ie, %bb.bm ]
  %.0 = phi i1 [ true, %bb.bj ], [ false, %4 ], [ true, %bb.bn ], [ %i.ig, %bb.bm ]
  %i.ih = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !60
  %i.ii = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.ih, ptr noundef nonnull @.str.42, ptr noundef %.0465) #11 ; 0 uses
  %.04.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 832), align 8, !tbaa !48 ; 2 uses
  %.not5.i = icmp eq ptr %.04.i, null
  br i1 %.not5.i, label %yyerror.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bo, %.lr.ph.i
  %.06.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.04.i, %bb.bo ] ; 2 uses
  call void @phpdbg_param_debug(ptr noundef nonnull %.06.i, ptr noundef nonnull @.str.43) #11
  %i.ij = getelementptr inbounds nuw i8, ptr %.06.i, i64 72
  %.0.i = load ptr, ptr %i.ij, align 8, !tbaa !48 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %yyerror.exit, label %.lr.ph.i, !llvm.loop !47

yyerror.exit:                                     ; preds = %.lr.ph.i, %bb.bo
  br i1 %.0, label %.thread584, label %.thread598

6:                                                ; preds = %2
  %7 = icmp slt i32 %.4, 1
  br i1 %7, label %8, label %.thread598

8:                                                ; preds = %6
  %9 = icmp eq i32 %.4, 0
  br i1 %9, label %.thread619, label %.thread598

.thread598:                                       ; preds = %2, %yyerror.exit, %6, %bb.m, %8
  %.4575 = phi ptr [ %.1573, %8 ], [ %.1573, %6 ], [ %.1573, %2 ], [ %.1573, %bb.m ], [ %.2, %yyerror.exit ] ; 2 uses
  %.6 = phi i32 [ %.4, %8 ], [ -2, %6 ], [ %.4, %2 ], [ 257, %bb.m ], [ %.4, %yyerror.exit ]
  br label %10

10:                                               ; preds = %29, %.thread598
  %.2513 = phi i32 [ %.1512, %.thread598 ], [ %33, %29 ]
  %.4493 = phi ptr [ %.3492, %.thread598 ], [ %31, %29 ] ; 3 uses
  %.4480 = phi ptr [ %.3479, %.thread598 ], [ %30, %29 ] ; 2 uses
  %11 = sext i32 %.2513 to i64                    ; 3 uses
  %12 = shl nuw i64 1, %11
  %13 = and i64 %12, 60283762986848
  %.not549 = icmp eq i64 %13, 0
  %14 = lshr i64 10084695978112, %11
  %15 = trunc i64 %14 to i1
  %or.cond = select i1 %.not549, i1 %15, i1 false
  br i1 %or.cond, label %16, label %bb.bp

16:                                               ; preds = %10
  %17 = getelementptr inbounds i8, ptr @yypact, i64 %11
  %18 = load i8, ptr %17, align 1, !tbaa !14
  %19 = sext i8 %18 to i64
  %20 = add nsw i64 %19, 1                        ; 2 uses
  %21 = getelementptr inbounds i8, ptr @yycheck, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !14
  %23 = icmp eq i8 %22, 1
  br i1 %23, label %24, label %bb.bp

24:                                               ; preds = %16
  %25 = getelementptr inbounds i8, ptr @yytable, i64 %20
  %26 = load i8, ptr %25, align 1, !tbaa !14      ; 2 uses
  %27 = icmp sgt i8 %26, 0
  br i1 %27, label %34, label %bb.bp

bb.bp:                                            ; preds = %16, %24, %10
  %28 = icmp eq ptr %.4493, %.3501
  br i1 %28, label %.thread619, label %29

29:                                               ; preds = %bb.bp
  %30 = getelementptr inbounds i8, ptr %.4480, i64 -88
  %31 = getelementptr inbounds i8, ptr %.4493, i64 -1 ; 2 uses
  %32 = load i8, ptr %31, align 1, !tbaa !14
  %33 = sext i8 %32 to i32
  br label %10

34:                                               ; preds = %24
  %35 = zext nneg i8 %26 to i32
  %36 = getelementptr inbounds nuw i8, ptr %.4480, i64 88 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %36, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false), !tbaa.struct !49
  br label %bb.b

.thread584:                                       ; preds = %bb.e, %bb.d, %yyerror.exit
  %.5576 = phi ptr [ %.2, %yyerror.exit ], [ %.1573, %bb.d ], [ %.1573, %bb.e ] ; 2 uses
  %.5503 = phi ptr [ %.3501, %yyerror.exit ], [ %.0498, %bb.d ], [ %.0498, %bb.e ] ; 2 uses
  %i.ik = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !60
  %i.il = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.ik, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3) #11 ; 0 uses
  %.04.i561 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 832), align 8, !tbaa !48 ; 2 uses
  %.not5.i562 = icmp eq ptr %.04.i561, null
  br i1 %.not5.i562, label %.thread619, label %.lr.ph.i563

.lr.ph.i563:                                      ; preds = %.thread584, %.lr.ph.i563
  %.06.i564 = phi ptr [ %.0.i565, %.lr.ph.i563 ], [ %.04.i561, %.thread584 ] ; 2 uses
  call void @phpdbg_param_debug(ptr noundef nonnull %.06.i564, ptr noundef nonnull @.str.43) #11
  %i.im = getelementptr inbounds nuw i8, ptr %.06.i564, i64 72
  %.0.i565 = load ptr, ptr %i.im, align 8, !tbaa !48 ; 2 uses
  %.not.i566 = icmp eq ptr %.0.i565, null
  br i1 %.not.i566, label %.thread619, label %.lr.ph.i563, !llvm.loop !47

.thread619:                                       ; preds = %.thread591, %8, %bb.bp, %.lr.ph.i563, %.thread584
  %.0474617 = phi i32 [ 2, %.thread584 ], [ 1, %bb.bp ], [ 2, %.lr.ph.i563 ], [ 0, %.thread591 ], [ 1, %8 ] ; 2 uses
  %.6504611 = phi ptr [ %.5503, %.thread584 ], [ %.3501, %bb.bp ], [ %.5503, %.lr.ph.i563 ], [ %.3501, %8 ], [ %.3501, %.thread591 ] ; 2 uses
  %.6577609 = phi ptr [ %.5576, %.thread584 ], [ %.4575, %bb.bp ], [ %.5576, %.lr.ph.i563 ], [ %.1573, %8 ], [ %.1573, %.thread591 ] ; 2 uses
  %.not552 = icmp eq ptr %.6504611, %i.a
  br i1 %.not552, label %bb.bq, label %.thread619.thread

.thread619.thread:                                ; preds = %bb.h, %.thread619
  %.6577609667 = phi ptr [ %.6577609, %.thread619 ], [ %.1573, %bb.h ]
  %.6504611666 = phi ptr [ %.6504611, %.thread619 ], [ %i.p, %bb.h ]
  %.0474617664 = phi i32 [ %.0474617, %.thread619 ], [ 1, %bb.h ]
  call void @free(ptr noundef %.6504611666) #11
  br label %bb.bq

bb.bq:                                            ; preds = %.thread619.thread, %.thread619
  %.6577609668 = phi ptr [ %.6577609667, %.thread619.thread ], [ %.6577609, %.thread619 ] ; 2 uses
  %.0474617665 = phi i32 [ %.0474617664, %.thread619.thread ], [ %.0474617, %.thread619 ]
  %.not553 = icmp eq ptr %.6577609668, %i.b
  br i1 %.not553, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @free(ptr noundef %.6577609668) #11
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #11
  ret i32 %.0474617665
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

declare i32 @phpdbg_lex(ptr noundef) local_unnamed_addr #4

declare void @phpdbg_stack_separate(ptr noundef) local_unnamed_addr #4

declare void @phpdbg_stack_push(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -2, 1) i32 @yysyntax_error(ptr nofree noundef nonnull captures(none) %0, ptr %.0.val, ptr nofree readonly captures(none) %.0.val1, i32 %.8.val) unnamed_addr #6 {
bb.a:
  %i.a = alloca [5 x i32], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %.not.i = icmp eq i32 %.8.val, -2
  br i1 %.not.i, label %yy_syntax_error_arguments.exit.thread6, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %.8.val, ptr %i.a, align 16, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %.val.val.i = load i8, ptr %.0.val1, align 1, !tbaa !14
  %i.c = sext i8 %.val.val.i to i64               ; 2 uses
  %i.d = getelementptr inbounds i8, ptr @yypact, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14    ; 2 uses
  %i.f = shl nuw i64 1, %i.c                      ; 2 uses
  %i.g = and i64 %i.f, 60283762986848
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %bb.c, label %.critedge.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = sext i8 %i.e to i32                      ; 2 uses
  %i.i = and i64 %i.f, 285212703
  %.not40.i.i = icmp eq i64 %i.i, 0
  %i.j = sub nsw i32 0, %i.h
  %i.k = select i1 %.not40.i.i, i32 0, i32 %i.j   ; 2 uses
  %i.l = sub nsw i32 52, %i.h
  %i.m = tail call i32 @llvm.smin.i32(i32 %i.l, i32 23) ; 2 uses
  %.not414.i.i = icmp slt i32 %i.k, %i.m
  br i1 %.not414.i.i, label %.lr.ph.preheader.i.i, label %.critedge.thread.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.n = sext i32 %i.k to i64
  %i.o = sext i8 %i.e to i64
  %wide.trip.count.i.i = sext i32 %i.m to i64
  %invariant.gep.i.i = getelementptr i8, ptr @yycheck, i64 %i.o
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.n, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 4 uses
  %.0345.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %.1.i.i, %bb.f ] ; 4 uses
  %gep.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.p = load i8, ptr %gep.i.i, align 1, !tbaa !14
  %i.q = sext i8 %i.p to i32                      ; 2 uses
  %i.r = trunc nsw i64 %indvars.iv.i.i to i32
  %i.s = icmp eq i32 %i.r, %i.q
  %i.t = icmp ne i64 %indvars.iv.i.i, 1
  %or.cond.i.i = and i1 %i.t, %i.s
  br i1 %or.cond.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = icmp eq i32 %.0345.i.i, 4
  br i1 %i.u, label %yy_syntax_error_arguments.exit.thread6, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = add i32 %.0345.i.i, 1
  %i.w = sext i32 %.0345.i.i to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.w
  store i32 %i.q, ptr %i.x, align 4, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.1.i.i = phi i32 [ %i.v, %bb.e ], [ %.0345.i.i, %.lr.ph.i.i ] ; 4 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !61

.critedge.i.i:                                    ; preds = %bb.f
  switch i32 %.1.i.i, label %yy_syntax_error_arguments.exit [
    i32 0, label %.critedge.thread.i.i
    i32 -2, label %yy_syntax_error_arguments.exit.thread8
  ]

.critedge.thread.i.i:                             ; preds = %.critedge.i.i, %bb.c, %bb.b
  store i32 -2, ptr %i.b, align 4, !tbaa !15
  br label %yy_syntax_error_arguments.exit.thread6

yy_syntax_error_arguments.exit:                   ; preds = %.critedge.i.i
  %i.y = add nsw i32 %.1.i.i, 1                   ; 8 uses
  switch i32 %i.y, label %yy_syntax_error_arguments.exit.thread6 [
    i32 -2, label %yy_syntax_error_arguments.exit.thread8
    i32 5, label %bb.k
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
  ]

bb.g:                                             ; preds = %yy_syntax_error_arguments.exit
  br label %yy_syntax_error_arguments.exit.thread6

bb.h:                                             ; preds = %yy_syntax_error_arguments.exit
  br label %yy_syntax_error_arguments.exit.thread6

bb.i:                                             ; preds = %yy_syntax_error_arguments.exit
  br label %yy_syntax_error_arguments.exit.thread6

bb.j:                                             ; preds = %yy_syntax_error_arguments.exit
  br label %yy_syntax_error_arguments.exit.thread6

bb.k:                                             ; preds = %yy_syntax_error_arguments.exit
  br label %yy_syntax_error_arguments.exit.thread6

yy_syntax_error_arguments.exit.thread6:           ; preds = %bb.d, %.critedge.thread.i.i, %bb.a, %yy_syntax_error_arguments.exit, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.118.i5 = phi i32 [ %i.y, %bb.j ], [ %i.y, %bb.k ], [ %i.y, %bb.g ], [ %i.y, %bb.h ], [ %i.y, %bb.i ], [ %i.y, %yy_syntax_error_arguments.exit ], [ 0, %bb.a ], [ 1, %.critedge.thread.i.i ], [ 1, %bb.d ] ; 4 uses
  %.046 = phi ptr [ @.str.9, %bb.j ], [ @.str.10, %bb.k ], [ @.str.6, %bb.g ], [ @.str.7, %bb.h ], [ @.str.8, %bb.i ], [ @.str, %yy_syntax_error_arguments.exit ], [ @.str, %bb.a ], [ @.str.6, %.critedge.thread.i.i ], [ @.str.6, %bb.d ] ; 2 uses
  %i.z = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.046) #13
  %i.aa = shl nsw i32 %.118.i5, 1
  %i.ab = sext i32 %i.aa to i64
  %reass.sub = sub i64 %i.z, %i.ab
  %i.ac = add i64 %reass.sub, 1                   ; 2 uses
  %.not5520 = icmp sgt i32 %.118.i5, 0
  br i1 %.not5520, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %yy_syntax_error_arguments.exit.thread6
  %wide.trip.count = zext nneg i32 %.118.i5 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %yytnamerr.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %yytnamerr.exit.thread ] ; 2 uses
  %.04421 = phi i64 [ %i.ac, %.lr.ph.preheader ], [ %.14513, %yytnamerr.exit.thread ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !15
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr @yytname, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !18 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !14
  %i.aj = icmp eq i8 %i.ai, 34
  br i1 %i.aj, label %.preheader.split.us.i, label %yytnamerr.exit

.preheader.split.us.i:                            ; preds = %.lr.ph, %bb.m
  %.020.us.i = phi i64 [ %i.ao, %bb.m ], [ 0, %.lr.ph ] ; 2 uses
  %.019.us.i = phi ptr [ %.1.us.i, %bb.m ], [ %i.ah, %.lr.ph ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.019.us.i, i64 1 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !14
  switch i8 %i.al, label %bb.m [
    i8 39, label %yytnamerr.exit
    i8 44, label %yytnamerr.exit
    i8 92, label %bb.l
    i8 34, label %yytnamerr.exit.thread
  ]

bb.l:                                             ; preds = %.preheader.split.us.i
  %i.am = getelementptr inbounds nuw i8, ptr %.019.us.i, i64 2 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !14
  %.not25.us.i = icmp eq i8 %i.an, 92
  br i1 %.not25.us.i, label %bb.m, label %yytnamerr.exit

bb.m:                                             ; preds = %bb.l, %.preheader.split.us.i
  %.1.us.i = phi ptr [ %i.ak, %.preheader.split.us.i ], [ %i.am, %bb.l ]
  %i.ao = add nuw nsw i64 %.020.us.i, 1
  br label %.preheader.split.us.i

yytnamerr.exit:                                   ; preds = %.preheader.split.us.i, %.preheader.split.us.i, %bb.l, %.lr.ph
  %i.ap = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ah) #13 ; 2 uses
  %.not = icmp sgt i64 %i.ap, -1
  br i1 %.not, label %yytnamerr.exit.thread, label %yy_syntax_error_arguments.exit.thread8

yytnamerr.exit.thread:                            ; preds = %.preheader.split.us.i, %yytnamerr.exit
  %.020.us.i.pn = phi i64 [ %i.ap, %yytnamerr.exit ], [ %.020.us.i, %.preheader.split.us.i ]
  %.14513 = add nsw i64 %.020.us.i.pn, %.04421    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !62

.thread:                                          ; preds = %yytnamerr.exit.thread, %yy_syntax_error_arguments.exit.thread6
  %.044.lcssa = phi i64 [ %i.ac, %yy_syntax_error_arguments.exit.thread6 ], [ %.14513, %yytnamerr.exit.thread ] ; 3 uses
  %i.aq = load i64, ptr %0, align 8, !tbaa !13
  %i.ar = icmp slt i64 %i.aq, %.044.lcssa
  br i1 %i.ar, label %bb.n, label %.preheader

bb.n:                                             ; preds = %.thread
  %i.as = shl nsw i64 %.044.lcssa, 1              ; 2 uses
  %.not57 = icmp sgt i64 %.044.lcssa, %i.as
  %spec.store.select = select i1 %.not57, i64 9223372036854775807, i64 %i.as
  store i64 %spec.store.select, ptr %0, align 8, !tbaa !13
  br label %yy_syntax_error_arguments.exit.thread8

.preheader:                                       ; preds = %.thread, %yytnamerr.exit67
  %.147 = phi ptr [ %i.bt, %yytnamerr.exit67 ], [ %.046, %.thread ] ; 3 uses
  %.039 = phi ptr [ %i.bs, %yytnamerr.exit67 ], [ %.0.val, %.thread ] ; 6 uses
  %.0 = phi i32 [ %.1, %yytnamerr.exit67 ], [ 0, %.thread ] ; 5 uses
  %i.at = load i8, ptr %.147, align 1, !tbaa !14  ; 2 uses
  store i8 %i.at, ptr %.039, align 1, !tbaa !14
  switch i8 %i.at, label %yytnamerr.exit67 [
    i8 0, label %yy_syntax_error_arguments.exit.thread8
    i8 37, label %bb.o
  ]

bb.o:                                             ; preds = %.preheader
  %i.au = getelementptr inbounds nuw i8, ptr %.147, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !14
  %i.aw = icmp eq i8 %i.av, 115
  %i.ax = icmp slt i32 %.0, %.118.i5
  %or.cond = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond, label %bb.p, label %yytnamerr.exit67

bb.p:                                             ; preds = %bb.o
  %i.ay = add nsw i32 %.0, 1                      ; 2 uses
  %i.az = sext i32 %.0 to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !15
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr @yytname, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !18 ; 3 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !14
  %i.bg = icmp eq i8 %i.bf, 34
  br i1 %i.bg, label %.preheader.split.i, label %.thread.thread.i

.preheader.split.i:                               ; preds = %bb.p, %bb.r
  %.020.i = phi i64 [ %i.bm, %bb.r ], [ 0, %bb.p ] ; 4 uses
  %.019.i = phi ptr [ %.1.i, %bb.r ], [ %i.be, %bb.p ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.019.i, i64 1 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !14  ; 2 uses
  switch i8 %i.bi, label %bb.r [
    i8 39, label %.thread.thread.i
    i8 44, label %.thread.thread.i
    i8 92, label %bb.q
    i8 34, label %.split.us.thread.i
  ]

bb.q:                                             ; preds = %.preheader.split.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.019.i, i64 2 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !14
  %.not25.i = icmp eq i8 %i.bk, 92
  br i1 %.not25.i, label %bb.r, label %.thread.thread.i

bb.r:                                             ; preds = %bb.q, %.preheader.split.i
  %.1.i = phi ptr [ %i.bh, %.preheader.split.i ], [ %i.bj, %bb.q ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.039, i64 %.020.i
  store i8 %i.bi, ptr %i.bl, align 1, !tbaa !14
  %i.bm = add nuw nsw i64 %.020.i, 1
  br label %.preheader.split.i

.split.us.thread.i:                               ; preds = %.preheader.split.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.039, i64 %.020.i
  store i8 0, ptr %i.bn, align 1, !tbaa !14
  br label %yytnamerr.exit67

.thread.thread.i:                                 ; preds = %bb.q, %.preheader.split.i, %.preheader.split.i, %bb.p
  %i.bo = tail call ptr @stpcpy(ptr noundef nonnull %.039, ptr noundef nonnull readonly %i.be) #11
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %.039 to i64
  %i.br = sub i64 %i.bp, %i.bq
  br label %yytnamerr.exit67

yytnamerr.exit67:                                 ; preds = %bb.o, %.preheader, %.thread.thread.i, %.split.us.thread.i
  %.sink34 = phi i64 [ %.020.i, %.split.us.thread.i ], [ %i.br, %.thread.thread.i ], [ 1, %.preheader ], [ 1, %bb.o ]
  %.sink = phi i64 [ 2, %.split.us.thread.i ], [ 2, %.thread.thread.i ], [ 1, %.preheader ], [ 1, %bb.o ]
  %.1 = phi i32 [ %i.ay, %.split.us.thread.i ], [ %i.ay, %.thread.thread.i ], [ %.0, %.preheader ], [ %.0, %bb.o ]
  %i.bs = getelementptr inbounds i8, ptr %.039, i64 %.sink34
  %i.bt = getelementptr inbounds nuw i8, ptr %.147, i64 %.sink
  br label %.preheader, !llvm.loop !63

yy_syntax_error_arguments.exit.thread8:           ; preds = %yytnamerr.exit, %.preheader, %.critedge.i.i, %bb.n, %yy_syntax_error_arguments.exit
  %.3 = phi i32 [ %.1.i.i, %.critedge.i.i ], [ %i.y, %yy_syntax_error_arguments.exit ], [ 0, %.preheader ], [ -1, %bb.n ], [ -2, %yytnamerr.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 3) i32 @phpdbg_do_parse(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !14
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 776), align 8, !tbaa !64 ; 2 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = tail call noalias ptr @strdup(ptr noundef nonnull %1) #11
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 776), align 8, !tbaa !64
  tail call void @phpdbg_init_lexer(ptr noundef %0, ptr noundef nonnull %1) #11
  %i.d = tail call i32 @phpdbg_parse()
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ %i.d, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #7

declare void @phpdbg_init_lexer(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @stpcpy(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #9

declare i32 @phpdbg_print(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @phpdbg_param_debug(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind willreturn memory(read) }

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
!12 = !{!"long", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{!9, !9, i64 0}
!16 = !{!"any pointer", !8, i64 0}
!17 = !{!"p1 omnipotent char", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"p1 _ZTS13_phpdbg_param", !16, i64 0}
!20 = !{!"_zend_refcounted_h", !9, i64 0, !8, i64 4}
!21 = !{!"_zend_array", !20, i64 0, !8, i64 8, !9, i64 12, !8, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !12, i64 40, !16, i64 48}
!22 = !{!"p1 _ZTS18_zend_execute_data", !16, i64 0}
!23 = !{!"p1 _ZTS12_zend_object", !16, i64 0}
!24 = !{!"p1 _ZTS15_zend_generator", !16, i64 0}
!25 = !{!"", !9, i64 0, !24, i64 8, !22, i64 16}
!26 = !{!"", !9, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !9, i64 40}
!27 = !{!"", !8, i64 0}
!28 = !{!"sigaction", !8, i64 0, !27, i64 8, !9, i64 136, !16, i64 144}
!29 = !{!"_Bool", !8, i64 0}
!30 = !{!"p1 _ZTS20_phpdbg_btree_branch", !16, i64 0}
!31 = !{!"", !12, i64 0, !12, i64 8, !29, i64 16, !30, i64 24}
!32 = !{!"p1 _ZTS11_zend_array", !16, i64 0}
!33 = !{!"p1 _ZTS21_phpdbg_watch_element", !16, i64 0}
!34 = !{!"p1 _ZTS14_zend_op_array", !16, i64 0}
!35 = !{!"_zval_struct", !8, i64 0, !8, i64 8, !8, i64 12}
!36 = !{!"p1 _ZTS11_zend_arena", !16, i64 0}
!37 = !{!"p1 _ZTS18_phpdbg_oplog_list", !16, i64 0}
!38 = !{!"p1 _ZTS19_phpdbg_oplog_entry", !16, i64 0}
!39 = !{!"", !29, i64 0, !9, i64 4, !9, i64 8, !17, i64 16, !9, i64 24}
!40 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!41 = !{!"p1 _ZTS19_php_stream_wrapper", !16, i64 0}
!42 = !{!"p1 _ZTS13_zend_mm_heap", !16, i64 0}
!43 = !{!"", !17, i64 0, !29, i64 8, !42, i64 16, !42, i64 24}
!44 = !{!"p1 _ZTS13__jmp_buf_tag", !16, i64 0}
!45 = !{!"_zend_phpdbg_globals", !8, i64 0, !21, i64 616, !21, i64 672, !22, i64 728, !23, i64 736, !25, i64 744, !9, i64 768, !17, i64 776, !26, i64 784, !19, i64 832, !28, i64 840, !9, i64 992, !12, i64 1000, !31, i64 1008, !31, i64 1040, !21, i64 1072, !21, i64 1128, !21, i64 1184, !21, i64 1240, !32, i64 1296, !32, i64 1304, !32, i64 1312, !29, i64 1320, !16, i64 1328, !33, i64 1336, !17, i64 1344, !12, i64 1352, !34, i64 1360, !35, i64 1368, !9, i64 1384, !9, i64 1388, !29, i64 1392, !29, i64 1393, !16, i64 1400, !16, i64 1408, !16, i64 1416, !21, i64 1424, !36, i64 1480, !37, i64 1488, !38, i64 1496, !8, i64 1504, !16, i64 1520, !39, i64 1528, !12, i64 1560, !8, i64 1568, !8, i64 1584, !17, i64 1608, !29, i64 1616, !40, i64 1624, !41, i64 1632, !8, i64 1640, !9, i64 2140, !43, i64 2144, !44, i64 2176, !12, i64 2184, !17, i64 2192, !12, i64 2200}
!46 = !{!"llvm.loop.mustprogress"}
!47 = distinct !{!47, !46}
!48 = !{!19, !19, i64 0}
!49 = !{i64 0, i64 4, !15, i64 8, i64 8, !13, i64 16, i64 8, !13, i64 24, i64 8, !18, i64 32, i64 8, !13, i64 40, i64 8, !18, i64 48, i64 8, !18, i64 56, i64 8, !18, i64 64, i64 8, !13, i64 72, i64 8, !48, i64 80, i64 8, !48}
!50 = !{!"", !17, i64 0, !12, i64 8}
!51 = !{!"", !17, i64 0, !17, i64 8}
!52 = !{!"_phpdbg_param", !9, i64 0, !12, i64 8, !12, i64 16, !50, i64 24, !51, i64 40, !17, i64 56, !12, i64 64, !19, i64 72, !19, i64 80}
!53 = !{!52, !19, i64 80}
!54 = !{!45, !19, i64 832}
!55 = !{!52, !12, i64 8}
!56 = !{!45, !12, i64 1560}
!57 = !{!52, !17, i64 56}
!58 = !{!52, !12, i64 64}
!59 = !{!"", !9, i64 0}
!60 = !{!59, !9, i64 0}
!61 = distinct !{!61, !46}
!62 = distinct !{!62, !46}
!63 = distinct !{!63, !46}
!64 = !{!45, !17, i64 776}
end_hunk_1
