Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/grammar?download=true
inline.NumInlined: 89
inline.NumDeleted: 39
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Agdisc_s = type { ptr, ptr }
%struct.agxbuf = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i64, i64, [7 x i8], i8 }
%union.AAGSTYPE = type { ptr }
%struct.aagextra_s = type { ptr, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.agxbuf, i32, %struct.agxbuf }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@yypact = internal unnamed_addr constant [76 x i8] c"\11\EE\EE\13\08\03\EE\FE\EE\EE\EE\01\EE\EE\EE\01\EE\EE\09\FE\EE\12\15\17\EE\12\01\EE\EE\EE\EE\0A\0D\EE\EE\EE\EE\EE\EE\EE\EE\EE\01\EE\EE\16\08\01\01\19\0E\18\EE\EE\1B\18\1A\EE\EE\1D\EE\EE\EE\EE\01\15\FB\EE\EE\EE\EE\10\1E\EE\EE\EE", align 16
@yytranslate = internal unnamed_addr constant [269 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\16\11\02\02\02\02\02\02\02\02\02\02\02\02\02\12\10\02\13\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\14\02\15\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\0E\02\0F\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D", align 16
@yycheck = internal unnamed_addr constant [60 x i8] c"\0B\03\04\05\0F\07\03\0C\0D\06\0C\0D\0E\0C\0D\1A\15\00\01\00\03\07\0E\06\0F\08\0C\0D\12\13\09*\10\11\10\16/0\0D2\11\13.2\14\12\14\12A\13,\13B@*B\19\FF\FF,", align 16
@yytable = internal unnamed_addr constant [60 x i8] c"\22\0C\0D\0E#\0F\09\10\11\0A\10\11\CC\10\11-E\FC\01\06\F6\0F\07\F6$\02\10\11/0(6IJ&1;<=6*9:>?/\D8@D07%GC5H+\00\008", align 16
@yydefact = internal unnamed_addr constant [76 x i8] c"\00\03\09\00\00\00\01\0E\02\0B\0C\08#$%38:\00\0D\10\12\1B\16\1C\12'/\22\170\1E9\06\072\05\0F\11\14\18)\00\13)\00\00\00\00\004\15(\1D\1E\00!&1\1F.;\19,\00\1B\00 \1A*+7\0056-", align 16
@yyr2 = internal unnamed_addr constant [60 x i8] c"\00\02\02\01\00\03\03\01\00\01\00\01\01\01\00\02\01\01\00\02\02\03\01\01\00\00\05\00\01\03\01\03\05\03\01\01\01\01\02\00\01\00\04\02\00\02\03\01\00\03\02\01\00\01\01\00\01\01\01\03", align 16
@yyr1 = internal unnamed_addr constant [60 x i8] c"\00\17\18\18\18\19\1A\1B\1B\1C\1C\1D\1D\1E\1E\1F\1F  !!\22##%&$$''((())***++,,-../01324445556677", align 16
@yypgoto = internal unnamed_addr constant [33 x i8] c"\EE\EE\FC\EE\EE\EE\EE\EE\EE\1F \EE\F9\EF\EE\EE\EE\0C\EE\EE\EE\06\0F\EE\EE\F2\EE\EE\EE\EE\EE\F5\EE", align 16
@yydefgoto = internal unnamed_addr constant [33 x i8] c"\00\03\08\04!\05\0B\12\13'\14\15\16)2A\17\18\19\1A,34BF\1B\1C\1D.\1EK\1F ", align 16
@.str = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@AgDefaultDisc = external global %struct.Agdisc_s, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"%s:%d: claimed unreachable code was reached\0A\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"/opt-bench/work/graphviz/graphviz/lib/cgraph/grammar.y\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"attribute macros not implemented\00", align 1
@Key = internal constant [4 x i8] c"key\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"tailport\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"headport\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"subgraphs nested more than %d deep\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @aagparse(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.agxbuf, align 8             ; 13 uses
  %2 = alloca %union.AAGSTYPE, align 8            ; 6 uses
  %i.a = alloca [200 x i8], align 16              ; 6 uses
  %3 = alloca [200 x %union.AAGSTYPE], align 16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store i64 0, ptr %2, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge, %bb.ct, %bb.t
  %.0251 = phi i32 [ 1, %._crit_edge ], [ %i.mn, %bb.ct ], [ %i.av, %bb.t ]
  %.0248 = phi i32 [ 3, %._crit_edge ], [ %.1249, %bb.ct ], [ %spec.select, %bb.t ]
  %.0231 = phi ptr [ %.4235.lcssa, %._crit_edge ], [ %i.lv, %bb.ct ], [ %.3234, %bb.t ]
  %.0219 = phi ptr [ %i.mu, %._crit_edge ], [ %i.lw, %bb.ct ], [ %i.az, %bb.t ]
  %.0212 = phi i32 [ %.6, %._crit_edge ], [ %.5, %bb.ct ], [ -2, %bb.t ]
  %i.e = getelementptr inbounds nuw i8, ptr %.0231, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1252 = phi i32 [ 0, %bb.a ], [ %.0251, %bb.b ] ; 4 uses
  %.1249 = phi i32 [ 0, %bb.a ], [ %.0248, %bb.b ] ; 3 uses
  %.0245 = phi i64 [ 200, %bb.a ], [ %.2247, %bb.b ] ; 4 uses
  %.0239 = phi ptr [ %i.a, %bb.a ], [ %.3242, %bb.b ] ; 7 uses
  %.1232 = phi ptr [ %i.a, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %.0227 = phi ptr [ %3, %bb.a ], [ %.3230, %bb.b ] ; 2 uses
  %.1220 = phi ptr [ %3, %bb.a ], [ %.0219, %bb.b ]
  %.1213 = phi i32 [ -2, %bb.a ], [ %.0212, %bb.b ] ; 3 uses
  %i.f = trunc nsw i32 %.1252 to i8
  store i8 %i.f, ptr %.1232, align 1, !tbaa !10
  %i.g = getelementptr inbounds i8, ptr %.0239, i64 %.0245
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -1
  %.not = icmp ugt ptr %i.h, %.1232
  br i1 %.not, label %.thread300, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = ptrtoint ptr %.1232 to i64
  %i.j = ptrtoint ptr %.0239 to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = add nsw i64 %i.k, 1                      ; 3 uses
  %i.m = icmp sgt i64 %.0245, 9999
  br i1 %i.m, label %bb.cz, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = shl nsw i64 %.0245, 1
  %spec.store.select = call i64 @llvm.smin.i64(i64 %i.n, i64 10000) ; 4 uses
  %i.o = mul nsw i64 %spec.store.select, 9
  %i.p = add nsw i64 %i.o, 7
  %i.q = call noalias ptr @malloc(i64 noundef %i.p) #17 ; 6 uses
  %.not270.not = icmp eq ptr %i.q, null
  br i1 %.not270.not, label %bb.cz, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr align 1 %.0239, i64 %i.l, i1 false)
  %i.r = add nsw i64 %spec.store.select, 7
  %i.s = sdiv i64 %i.r, 8
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.s ; 3 uses
  %i.u = shl i64 %i.l, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %.0227, i64 %i.u, i1 false)
  %.not271 = icmp eq ptr %.0239, %i.a
  br i1 %.not271, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %.0239) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.k
  %i.w = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.l
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.y = add nsw i64 %spec.store.select, -1
  %.not272 = icmp sgt i64 %i.y, %i.k
  br i1 %.not272, label %.thread300, label %.thread325.thread

.thread300:                                       ; preds = %bb.h, %bb.c
  %.2247 = phi i64 [ %.0245, %bb.c ], [ %spec.store.select, %bb.h ]
  %.3242 = phi ptr [ %.0239, %bb.c ], [ %i.q, %bb.h ] ; 5 uses
  %.3234 = phi ptr [ %.1232, %bb.c ], [ %i.v, %bb.h ] ; 4 uses
  %.3230 = phi ptr [ %.0227, %bb.c ], [ %i.t, %bb.h ]
  %.3222 = phi ptr [ %.1220, %bb.c ], [ %i.x, %bb.h ] ; 28 uses
  %i.z = icmp eq i32 %.1252, 6
  br i1 %i.z, label %.thread325, label %bb.i

bb.i:                                             ; preds = %.thread300
  %i.aa = sext i32 %.1252 to i64                  ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr @yypact, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !10  ; 2 uses
  %i.ad = sext i8 %i.ac to i32
  %i.ae = icmp eq i8 %i.ac, -18
  br i1 %i.ae, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = icmp eq i32 %.1213, -2
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = call i32 @aaglex(ptr noundef nonnull %2, ptr noundef %0) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2 = phi i32 [ %i.ag, %bb.k ], [ %.1213, %bb.j ] ; 6 uses
  %i.ah = icmp slt i32 %.2, 1
  br i1 %i.ah, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = icmp eq i32 %.2, 256
  br i1 %i.ai, label %bb.cx, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = icmp samesign ult i32 %.2, 269
  br i1 %i.aj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ak = zext nneg i32 %.2 to i64
  %i.al = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !10
  %i.an = sext i8 %i.am to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %.0216 = phi i32 [ 0, %bb.l ], [ %i.an, %bb.o ], [ 2, %bb.n ] ; 2 uses
  %.3 = phi i32 [ 0, %bb.l ], [ %.2, %bb.o ], [ %.2, %bb.n ] ; 3 uses
  %i.ao = add nsw i32 %.0216, %i.ad               ; 2 uses
  %or.cond3 = icmp ugt i32 %i.ao, 59
  br i1 %or.cond3, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = zext nneg i32 %i.ao to i64              ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr @yycheck, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !10
  %i.as = sext i8 %i.ar to i32
  %.not273 = icmp eq i32 %.0216, %i.as
  br i1 %.not273, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr @yytable, i64 %i.ap
  %i.au = load i8, ptr %i.at, align 1, !tbaa !10
  %i.av = sext i8 %i.au to i32                    ; 2 uses
  %i.aw = shl nuw nsw i64 1, %i.ap
  %i.ax = and i64 %i.aw, 432415932981317632
  %.not274 = icmp eq i64 %i.ax, 0
  br i1 %.not274, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = sub nsw i32 0, %i.av
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %spec.select = call i32 @llvm.usub.sat.i32(i32 %.1249, i32 1)
  %i.az = getelementptr inbounds nuw i8, ptr %.3222, i64 8 ; 2 uses
  %i.ba = load i64, ptr %2, align 8, !tbaa !10
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !10
  br label %bb.b

bb.u:                                             ; preds = %bb.p, %bb.q, %bb.i
  %.4 = phi i32 [ %.1213, %bb.i ], [ %.3, %bb.p ], [ %.3, %bb.q ] ; 6 uses
  %i.bb = getelementptr inbounds i8, ptr @yydefact, i64 %i.aa
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !10  ; 2 uses
  %i.bd = sext i8 %i.bc to i32
  %i.be = icmp eq i8 %i.bc, 0
  br i1 %i.be, label %bb.cu, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.0218 = phi i32 [ %i.bd, %bb.u ], [ %i.ay, %bb.s ] ; 2 uses
  %.5 = phi i32 [ %.4, %bb.u ], [ %.3, %bb.s ]
  %i.bf = sext i32 %.0218 to i64                  ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr @yyr2, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !10
  %i.bi = sext i8 %i.bh to i64                    ; 2 uses
  %i.bj = sub nsw i64 1, %i.bi
  %i.bk = getelementptr inbounds [8 x i8], ptr %.3222, i64 %i.bj
  %.sroa.0.0.copyload = load ptr, ptr %i.bk, align 8, !tbaa !10 ; 27 uses
  switch i32 %.0218, label %graph_error.exit [
    i32 2, label %bb.w
    i32 3, label %bb.x
    i32 6, label %bb.z
    i32 7, label %bb.ad
    i32 8, label %bb.ae
    i32 9, label %bb.af
    i32 10, label %bb.ag
    i32 11, label %bb.ah
    i32 12, label %bb.ai
    i32 21, label %bb.aj
    i32 24, label %bb.bj
    i32 25, label %bb.bk
    i32 26, label %bb.bl
    i32 27, label %bb.bm
    i32 30, label %bb.bn
    i32 31, label %bb.bo
    i32 32, label %bb.bp
    i32 33, label %bb.bq
    i32 34, label %bb.br
    i32 35, label %bb.bs
    i32 36, label %bb.bt
    i32 37, label %bb.bu
    i32 38, label %bb.bv
    i32 39, label %bb.ae
    i32 46, label %bb.bw
    i32 48, label %bb.cb
    i32 49, label %bb.cf
    i32 50, label %bb.cg
    i32 51, label %bb.ae
    i32 52, label %bb.ae
    i32 56, label %bb.ch
    i32 57, label %bb.ci
    i32 58, label %bb.cj
    i32 59, label %bb.ck
  ]

bb.w:                                             ; preds = %bb.v
  call fastcc void @freestack(ptr noundef %0)
  call void @aglexeof(ptr noundef %0) #16
  %i.bl = call ptr @aagget_extra(ptr noundef %0) #16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !18
  call void @aginternalmapclearlocalnames(ptr noundef %i.bn) #16
  br label %graph_error.exit

bb.x:                                             ; preds = %bb.v
  %i.bo = call ptr @aagget_extra(ptr noundef %0) #16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !18
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %graph_error.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call fastcc void @freestack(ptr noundef %0)
  call void @aglexeof(ptr noundef %0) #16
  %i.br = call ptr @aagget_extra(ptr noundef %0) #16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !18
  call void @aginternalmapclearlocalnames(ptr noundef %i.bt) #16
  %i.bu = load ptr, ptr %i.bp, align 8, !tbaa !18
  %i.bv = call i32 @agclose(ptr noundef %i.bu) #16 ; 0 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !18
  br label %graph_error.exit

bb.z:                                             ; preds = %bb.v
  %i.bw = load ptr, ptr %.3222, align 8, !tbaa !10 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %.3222, i64 -8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !10
  %i.bz = getelementptr inbounds i8, ptr %.3222, i64 -16
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !10
  %i.cb = call ptr @aagget_extra(ptr noundef %0) #16 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !18 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.not342 = icmp eq i32 %i.ca, 0
  %i.cf = icmp ne i32 %i.by, 0
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store i32 0, ptr %i.cg, align 8, !tbaa !45
  %i.ch = zext i1 %i.cf to i32
  %i.ci = select i1 %.not342, i32 0, i32 2
  %i.cj = or disjoint i32 %i.ci, %i.ch
  %.sroa.0.0.insert.ext.i = or disjoint i32 %i.cj, 8
  %i.ck = load ptr, ptr %i.cb, align 8, !tbaa !19
  %i.cl = call ptr @agopen(ptr noundef %i.bw, i32 %.sroa.0.0.insert.ext.i, ptr noundef %i.ck) #16 ; 2 uses
  store ptr %i.cl, ptr %i.cc, align 8, !tbaa !18
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cm = phi ptr [ %i.cl, %bb.aa ], [ %i.cd, %bb.z ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cb, i64 32 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !20
  %i.cp = call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef range(i64 1, 73) 72) #18 ; 4 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.ac, label %startgraph.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cr = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.cs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cr, ptr noundef nonnull @.str.8, i64 noundef 72) #19 ; 0 uses
  call fastcc void @graphviz_exit() #20
  unreachable

startgraph.exit:                                  ; preds = %bb.ab
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  store ptr %i.co, ptr %i.ct, align 8, !tbaa !26
  store ptr %i.cm, ptr %i.cp, align 8, !tbaa !27
  store ptr %i.cp, ptr %i.cn, align 8, !tbaa !20
  %i.cu = call i32 @agstrfree(ptr noundef null, ptr noundef %i.bw, i1 noundef zeroext false) #16 ; 0 uses
  br label %graph_error.exit

bb.ad:                                            ; preds = %bb.v
  %i.cv = load ptr, ptr %.3222, align 8, !tbaa !10
  br label %graph_error.exit

bb.ae:                                            ; preds = %bb.v, %bb.v, %bb.v, %bb.v
  br label %graph_error.exit

bb.af:                                            ; preds = %bb.v
  %i.cw = ptrtoint ptr %.sroa.0.0.copyload to i64
  %.sroa.0.0.insert.mask = and i64 %i.cw, -4294967296
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.mask, 1
  %i.cx = inttoptr i64 %.sroa.0.0.insert.insert to ptr
  br label %graph_error.exit

bb.ag:                                            ; preds = %bb.v
  %i.cy = ptrtoint ptr %.sroa.0.0.copyload to i64
  %.sroa.0.0.insert.mask39 = and i64 %i.cy, -4294967296
  %i.cz = inttoptr i64 %.sroa.0.0.insert.mask39 to ptr
  br label %graph_error.exit

bb.ah:                                            ; preds = %bb.v
  %i.da = ptrtoint ptr %.sroa.0.0.copyload to i64
end_hunk_0
begin_hunk_1_@aagparse:bb.a

bb.cb:                                            ; preds = %bb.v
  %i.jq = load ptr, ptr %.3222, align 8, !tbaa !10 ; 2 uses
  %i.jr = call ptr @aagget_extra(ptr noundef %0) #16 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 24 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !45 ; 2 uses
  %i.ju = add nsw i32 %i.jt, 1
  store i32 %i.ju, ptr %i.js, align 8, !tbaa !45
  %i.jv = icmp sgt i32 %i.jt, 4998
  br i1 %i.jv, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.17, i32 noundef 10000) #16
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 32 ; 2 uses
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !20 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !27
  %i.jz = call ptr @agsubg(ptr noundef %i.jy, ptr noundef %i.jq, i32 noundef 1) #16
  %i.ka = call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef range(i64 1, 73) 72) #18 ; 4 uses
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %bb.ce, label %opensubg.exit

bb.ce:                                            ; preds = %bb.cd
  %i.kc = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.kd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kc, ptr noundef nonnull @.str.8, i64 noundef 72) #19 ; 0 uses
  call fastcc void @graphviz_exit() #20
  unreachable

opensubg.exit:                                    ; preds = %bb.cd
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 64
  store ptr %i.jx, ptr %i.ke, align 8, !tbaa !26
  store ptr %i.jz, ptr %i.ka, align 8, !tbaa !27
  store ptr %i.ka, ptr %i.jw, align 8, !tbaa !20
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !18
  %i.kh = call i32 @agstrfree(ptr noundef %i.kg, ptr noundef %i.jq, i1 noundef zeroext false) #16 ; 0 uses
  br label %graph_error.exit

bb.cf:                                            ; preds = %bb.v
  %i.ki = call ptr @aagget_extra(ptr noundef %0) #16 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 32 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !20 ; 3 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !27
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 24 ; 2 uses
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !45
  %i.ko = add nsw i32 %i.kn, -1
  store i32 %i.ko, ptr %i.km, align 8, !tbaa !45
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 64
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !26 ; 2 uses
  call void @free(ptr noundef nonnull %i.kk) #16
  store ptr %i.kq, ptr %i.kj, align 8, !tbaa !20
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  store ptr %i.kl, ptr %i.kr, align 8, !tbaa !35
  br label %graph_error.exit

bb.cg:                                            ; preds = %bb.v
  %i.ks = load ptr, ptr %.3222, align 8, !tbaa !10
  br label %graph_error.exit

bb.ch:                                            ; preds = %bb.v
  %i.kt = load ptr, ptr %.3222, align 8, !tbaa !10
  br label %graph_error.exit

bb.ci:                                            ; preds = %bb.v
  %i.ku = load ptr, ptr %.3222, align 8, !tbaa !10
  br label %graph_error.exit

bb.cj:                                            ; preds = %bb.v
  %i.kv = load ptr, ptr %.3222, align 8, !tbaa !10
  br label %graph_error.exit

bb.ck:                                            ; preds = %bb.v
  %i.kw = getelementptr inbounds i8, ptr %.3222, i64 -16
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !10 ; 2 uses
  %i.ky = load ptr, ptr %.3222, align 8, !tbaa !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %i.kz = call ptr @aagget_extra(ptr noundef %0) #16
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !18 ; 3 uses
  call void (ptr, ptr, ...) @agxbprint(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef %i.kx, ptr noundef %i.ky)
  %.val.i.i283 = load i8, ptr %i.b, align 1, !tbaa !10 ; 3 uses
  switch i8 %.val.i.i283, label %agxblen.exit.i.i.i [
    i8 -1, label %bb.cl
    i8 31, label %agxbclear.exit.thread.i.i
  ]

agxblen.exit.i.i.i:                               ; preds = %bb.ck
  %i.lc = zext i8 %.val.i.i283 to i64
  br label %agxbsizeof.exit.i.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.ld = load i64, ptr %i.c, align 8, !tbaa !10
  %i.le = load i64, ptr %i.d, align 8, !tbaa !10
  br label %agxbsizeof.exit.i.i.i

agxbsizeof.exit.i.i.i:                            ; preds = %bb.cl, %agxblen.exit.i.i.i
  %.0.i20.i.i.i = phi i64 [ %i.ld, %bb.cl ], [ %i.lc, %agxblen.exit.i.i.i ]
  %.0.i14.i.i.i = phi i64 [ %i.le, %bb.cl ], [ 31, %agxblen.exit.i.i.i ]
  %.not.i5.i.i = icmp ult i64 %.0.i20.i.i.i, %.0.i14.i.i.i
  br i1 %.not.i5.i.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %agxbsizeof.exit.i.i.i
  call fastcc void @agxbmore(ptr noundef nonnull %1, i64 noundef 1)
  %.val.i15.pre.i.i.i = load i8, ptr %i.b, align 1, !tbaa !10
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %agxbsizeof.exit.i.i.i
  %.val.i6.pr.i.i = phi i8 [ %.val.i15.pre.i.i.i, %bb.cm ], [ %.val.i.i283, %agxbsizeof.exit.i.i.i ] ; 2 uses
  %.not.i16.i.i.i = icmp eq i8 %.val.i6.pr.i.i, -1
  br i1 %.not.i16.i.i.i, label %agxbputc.exit.i.thread.i, label %agxbputc.exit.i.i

agxbputc.exit.i.thread.i:                         ; preds = %bb.cn
  %i.lf = load i64, ptr %i.c, align 8, !tbaa !10
  %i.lg = load ptr, ptr %1, align 8, !tbaa !10
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.lf
  store i8 0, ptr %i.lh, align 1, !tbaa !10
  br label %bb.co

agxbputc.exit.i.i:                                ; preds = %bb.cn
  %i.li = zext i8 %.val.i6.pr.i.i to i64
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 %i.li
  store i8 0, ptr %i.lj, align 1, !tbaa !10
  %i.lk = load i8, ptr %i.b, align 1, !tbaa !10
  %i.ll = add i8 %i.lk, 1                         ; 2 uses
  store i8 %i.ll, ptr %i.b, align 1, !tbaa !10
  %i.lm = icmp eq i8 %i.ll, -1
  br i1 %i.lm, label %bb.co, label %agxbclear.exit.thread.i.i

agxbclear.exit.thread.i.i:                        ; preds = %agxbputc.exit.i.i, %bb.ck
  store i8 0, ptr %i.b, align 1, !tbaa !10
  br label %agxbuse.exit.i

bb.co:                                            ; preds = %agxbputc.exit.i.i, %agxbputc.exit.i.thread.i
  store i64 0, ptr %i.c, align 8, !tbaa !10
  %i.ln = load ptr, ptr %1, align 8, !tbaa !10
  br label %agxbuse.exit.i

agxbuse.exit.i:                                   ; preds = %bb.co, %agxbclear.exit.thread.i.i
  %i.lo = phi ptr [ %i.ln, %bb.co ], [ %1, %agxbclear.exit.thread.i.i ]
  %i.lp = call ptr @agstrdup(ptr noundef %i.lb, ptr noundef %i.lo) #16
  %i.lq = call i32 @agstrfree(ptr noundef %i.lb, ptr noundef %i.kx, i1 noundef zeroext false) #16 ; 0 uses
  %i.lr = call i32 @agstrfree(ptr noundef %i.lb, ptr noundef %i.ky, i1 noundef zeroext false) #16 ; 0 uses
  %.val9.i = load i8, ptr %i.b, align 1, !tbaa !10
  %i.ls = icmp eq i8 %.val9.i, -1
  br i1 %i.ls, label %bb.cp, label %concat.exit

bb.cp:                                            ; preds = %agxbuse.exit.i
  %.val.i = load ptr, ptr %1, align 8
  call void @free(ptr noundef %.val.i) #16
  br label %concat.exit

concat.exit:                                      ; preds = %agxbuse.exit.i, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %graph_error.exit

graph_error.exit:                                 ; preds = %bb.ca, %bb.bz, %bb.y, %bb.x, %bb.v, %endedge.exit, %bb.bi, %concat.exit, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %opensubg.exit, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %startgraph.exit, %bb.w
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload, %bb.v ], [ %.sroa.0.0.copyload, %bb.w ], [ %i.kt, %bb.ch ], [ %.sroa.0.0.copyload, %startgraph.exit ], [ %i.cv, %bb.ad ], [ null, %bb.ae ], [ %i.cx, %bb.af ], [ %i.cz, %bb.ag ], [ %i.db, %bb.ah ], [ %i.dd, %bb.ai ], [ %.sroa.0.0.copyload, %endedge.exit ], [ %.sroa.0.0.copyload, %bb.bi ], [ %.sroa.0.0.copyload, %bb.bj ], [ %.sroa.0.0.copyload, %bb.bk ], [ %i.ia, %bb.bl ], [ %i.ic, %bb.bm ], [ %.sroa.0.0.copyload, %bb.bn ], [ %.sroa.0.0.copyload, %bb.bo ], [ %.sroa.0.0.copyload, %bb.bp ], [ %.sroa.0.0.copyload, %bb.bq ], [ %.sroa.0.0.copyload, %bb.br ], [ %i.ir, %bb.bs ], [ %i.it, %bb.bt ], [ %i.iv, %bb.bu ], [ %i.ix, %bb.bv ], [ %i.lp, %concat.exit ], [ %.sroa.0.0.copyload, %bb.y ], [ %.sroa.0.0.copyload, %opensubg.exit ], [ %.sroa.0.0.copyload, %bb.cf ], [ %i.ks, %bb.cg ], [ %i.kv, %bb.cj ], [ %i.ku, %bb.ci ], [ %.sroa.0.0.copyload, %bb.x ], [ %.sroa.0.0.copyload, %bb.bz ], [ %.sroa.0.0.copyload, %bb.ca ]
  %i.lt = sub nsw i64 0, %i.bi                    ; 2 uses
  %i.lu = getelementptr inbounds [8 x i8], ptr %.3222, i64 %i.lt
  %i.lv = getelementptr inbounds i8, ptr %.3234, i64 %i.lt ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 8 ; 2 uses
  store ptr %.sroa.0.0, ptr %i.lw, align 8, !tbaa !10
  %i.lx = getelementptr inbounds i8, ptr @yyr1, i64 %i.bf
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !10
  %i.lz = sext i8 %i.ly to i64
  %i.ma = add nsw i64 %i.lz, -23                  ; 2 uses
  %i.mb = getelementptr inbounds i8, ptr @yypgoto, i64 %i.ma
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !10
  %i.md = sext i8 %i.mc to i32
  %i.me = load i8, ptr %i.lv, align 1, !tbaa !10  ; 2 uses
  %i.mf = sext i8 %i.me to i32
  %i.mg = add nsw i32 %i.mf, %i.md                ; 2 uses
  %or.cond5 = icmp ult i32 %i.mg, 60
  br i1 %or.cond5, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %graph_error.exit
  %i.mh = zext nneg i32 %i.mg to i64              ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr @yycheck, i64 %i.mh
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !10
  %i.mk = icmp eq i8 %i.mj, %i.me
  br i1 %i.mk, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.ml = getelementptr inbounds nuw i8, ptr @yytable, i64 %i.mh
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cq, %graph_error.exit
  %i.mm = getelementptr inbounds i8, ptr @yydefgoto, i64 %i.ma
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.in.in = phi ptr [ %i.ml, %bb.cr ], [ %i.mm, %bb.cs ]
  %.in = load i8, ptr %.in.in, align 1, !tbaa !10
  %i.mn = sext i8 %.in to i32
  br label %bb.b

bb.cu:                                            ; preds = %bb.u
  switch i32 %.1249, label %bb.cx [
    i32 0, label %.thread307
    i32 3, label %bb.cv
  ]

.thread307:                                       ; preds = %bb.cu
  call void @aagerror(ptr noundef %0, ptr noundef nonnull @.str) #16
  br label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  %i.mo = icmp slt i32 %.4, 1
  br i1 %i.mo, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.mp = icmp eq i32 %.4, 0
  br i1 %i.mp, label %.thread325, label %bb.cx

bb.cx:                                            ; preds = %bb.cu, %bb.cv, %.thread307, %bb.m, %bb.cw
  %.6 = phi i32 [ %.4, %bb.cw ], [ %.4, %.thread307 ], [ %.4, %bb.cu ], [ 257, %bb.m ], [ -2, %bb.cv ]
  %i.mq = icmp eq i32 %.1252, 0
  br i1 %i.mq, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cx, %bb.cy
  %.4223442 = phi ptr [ %i.mr, %bb.cy ], [ %.3222, %bb.cx ]
  %.4235441 = phi ptr [ %i.ms, %bb.cy ], [ %.3234, %bb.cx ] ; 2 uses
  %4 = icmp eq ptr %.4235441, %.3242
  br i1 %4, label %.thread325, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph
  %i.mr = getelementptr inbounds i8, ptr %.4223442, i64 -8 ; 2 uses
  %i.ms = getelementptr inbounds i8, ptr %.4235441, i64 -1 ; 3 uses
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !10
  %5 = icmp eq i8 %i.mt, 0
  br i1 %5, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.cy, %bb.cx
  %.4235.lcssa = phi ptr [ %.3234, %bb.cx ], [ %i.ms, %bb.cy ]
  %.4223.lcssa = phi ptr [ %.3222, %bb.cx ], [ %i.mr, %bb.cy ]
  %i.mu = getelementptr inbounds nuw i8, ptr %.4223.lcssa, i64 8 ; 2 uses
  %i.mv = load i64, ptr %2, align 8, !tbaa !10
  store i64 %i.mv, ptr %i.mu, align 8, !tbaa !10
  br label %bb.b

bb.cz:                                            ; preds = %bb.d, %bb.e
  call void @aagerror(ptr noundef %0, ptr noundef nonnull @.str.3) #16
  br label %.thread325

.thread325:                                       ; preds = %.thread300, %bb.cw, %.lr.ph, %bb.cz
  %.0217323 = phi i32 [ 1, %.lr.ph ], [ 2, %bb.cz ], [ 0, %.thread300 ], [ 1, %bb.cw ] ; 2 uses
  %.5244317 = phi ptr [ %.3242, %.lr.ph ], [ %.0239, %bb.cz ], [ %.3242, %bb.cw ], [ %.3242, %.thread300 ] ; 2 uses
  %.not280 = icmp eq ptr %.5244317, %i.a
  br i1 %.not280, label %bb.da, label %.thread325.thread

.thread325.thread:                                ; preds = %bb.h, %.thread325
  %.5244317408 = phi ptr [ %.5244317, %.thread325 ], [ %i.q, %bb.h ]
  %.0217323406.a = phi i32 [ %.0217323, %.thread325 ], [ 1, %bb.h ]
  call void @free(ptr noundef %.5244317408) #16
  br label %bb.da

bb.da:                                            ; preds = %.thread325, %.thread325.thread
  %.0217323407 = phi i32 [ %.0217323, %.thread325 ], [ %.0217323406.a, %.thread325.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret i32 %.0217323407
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

declare i32 @aaglex(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @freestack(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @aagget_extra(ptr noundef %0) #16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %.not10 = icmp eq ptr %i.c, null
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.e = phi ptr [ %i.c, %.lr.ph ], [ %i.s, %bb.b ]
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34
  tail call fastcc void @delete_items(ptr noundef %i.f, ptr noundef %i.h)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34
  tail call fastcc void @delete_items(ptr noundef %i.i, ptr noundef %i.l)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34
  tail call fastcc void @delete_items(ptr noundef %i.m, ptr noundef %i.p)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !26   ; 3 uses
  tail call void @free(ptr noundef %i.q) #16
  store ptr %i.s, ptr %i.b, align 8, !tbaa !20
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !46

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @endnode(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @aagget_extra(ptr noundef %0) #16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 3 uses
  %.016.i = load ptr, ptr %i.f, align 8, !tbaa !28 ; 2 uses
  %.not17.i = icmp eq ptr %.016.i, null
  br i1 %.not17.i, label %bindattrs.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.a, %bb.c
  %.018.i = phi ptr [ %.0.i, %bb.c ], [ %.016.i, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.018.i, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10   ; 3 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.k = tail call ptr @agattr_text(ptr noundef %i.j, i32 noundef 1, ptr noundef %i.h, ptr noundef null) #16 ; 2 uses
  store ptr %i.k, ptr %i.g, align 8, !tbaa !10
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.i
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.o = tail call ptr @agattr_text(ptr noundef %i.n, i32 noundef 1, ptr noundef %i.h, ptr noundef nonnull @.str.12) #16
  store ptr %i.o, ptr %i.g, align 8, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.i
  store i32 266, ptr %.018.i, align 8, !tbaa !30
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.q = tail call i32 @agstrfree(ptr noundef %i.p, ptr noundef %i.h, i1 noundef zeroext false) #16 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.018.i, i64 24
  %.0.i = load ptr, ptr %i.r, align 8, !tbaa !28  ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %bindattrs.exit, label %.lr.ph.split.i, !llvm.loop !0

bindattrs.exit:                                   ; preds = %bb.c, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %.019 = load ptr, ptr %i.s, align 8, !tbaa !28  ; 3 uses
  %.not20 = icmp eq ptr %.019, null
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bindattrs.exit
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !28
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %._crit_edge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %applyattrs.exit
  %.021 = phi ptr [ %.0, %applyattrs.exit ], [ %.019, %.lr.ph ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.021, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !10   ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %.01.i = load ptr, ptr %i.z, align 8, !tbaa !28 ; 2 uses
  %.not2.i = icmp eq ptr %.01.i, null
  br i1 %.not2.i, label %applyattrs.exit, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %.lr.ph.split, %bb.h
  %.03.i = phi ptr [ %.0.i17, %bb.h ], [ %.01.i, %.lr.ph.split ] ; 4 uses
  %i.aa = load i32, ptr %.03.i, align 8, !tbaa !30
  %i.ab = icmp eq i32 %i.aa, 266
  br i1 %i.ab, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.lr.ph.i16
  %i.ac = getelementptr inbounds nuw i8, ptr %.03.i, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !10
  %.not12.i = icmp eq ptr %i.ad, null
  br i1 %.not12.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.03.i, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !32
  %i.ag = tail call i32 @aghtmlstr(ptr noundef %i.af) #16
  %.not13.i = icmp eq i32 %i.ag, 0
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !10 ; 2 uses
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !32 ; 2 uses
  br i1 %.not13.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call i32 @agxset_html(ptr noundef %i.y, ptr noundef %i.ah, ptr noundef %i.ai) #16 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ak = tail call i32 @agxset(ptr noundef %i.y, ptr noundef %i.ah, ptr noundef %i.ai) #16 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %.lr.ph.i16
  %i.al = getelementptr inbounds nuw i8, ptr %.03.i, i64 24
  %.0.i17 = load ptr, ptr %i.al, align 8, !tbaa !28 ; 2 uses
  %.not.i18 = icmp eq ptr %.0.i17, null
  br i1 %.not.i18, label %applyattrs.exit, label %.lr.ph.i16, !llvm.loop !1

applyattrs.exit:                                  ; preds = %bb.h, %.lr.ph.split
  %i.am = getelementptr inbounds nuw i8, ptr %.021, i64 24
  %.0 = load ptr, ptr %i.am, align 8, !tbaa !28   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge.loopexit22, label %.lr.ph.split, !llvm.loop !47

._crit_edge.loopexit22:                           ; preds = %applyattrs.exit
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !34
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit22, %bindattrs.exit
  %i.an = phi ptr [ %.pre, %._crit_edge.loopexit22 ], [ null, %bindattrs.exit ], [ %.019, %.lr.ph ]
  tail call fastcc void @delete_items(ptr noundef %i.c, ptr noundef %i.an)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !34
  tail call fastcc void @delete_items(ptr noundef %i.c, ptr noundef %i.ao)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !34
  tail call fastcc void @delete_items(ptr noundef %i.c, ptr noundef %i.aq)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr null, ptr %i.ar, align 8, !tbaa !35
  ret void
end_hunk_1
