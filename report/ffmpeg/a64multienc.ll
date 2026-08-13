inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%struct.anon = type { ptr, ptr }

@.str = private unnamed_addr constant [9 x i8] c"a64multi\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Multicolor charset for Commodore 64\00", align 1
@.compoundliteral = internal constant [2 x i32] [i32 8, i32 -1], align 4
@ff_a64multi_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, { %struct.anon, [8 x i8] } } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 142, i32 34, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 96, i32 360, ptr null, ptr null, ptr null, ptr @a64multi_encode_init, %union.anon { ptr @a64multi_encode_frame }, ptr @a64multi_close_encoder, ptr null, ptr null, ptr null, ptr null, ptr null, { %struct.anon, [8 x i8] } { %struct.anon { ptr null, ptr @.compoundliteral }, [8 x i8] zeroinitializer } }, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"a64multi5\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"Multicolor charset for Commodore 64, extended with 5th color (colram)\00", align 1
@.compoundliteral.4 = internal constant [2 x i32] [i32 8, i32 -1], align 4
@ff_a64multi5_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, { %struct.anon, [8 x i8] } } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.2, ptr @.str.3, i32 0, i32 143, i32 34, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 96, i32 360, ptr null, ptr null, ptr null, ptr @a64multi_encode_init, %union.anon { ptr @a64multi_encode_frame }, ptr @a64multi_close_encoder, ptr null, ptr null, ptr null, ptr null, ptr null, { %struct.anon, [8 x i8] } { %struct.anon { ptr null, ptr @.compoundliteral.4 }, [8 x i8] zeroinitializer } }, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"charset lifetime set to %d frame(s)\0A\00", align 1
@a64_palette = internal unnamed_addr constant [16 x [3 x i8]] [[3 x i8] zeroinitializer, [3 x i8] c"\FF\FF\FF", [3 x i8] c"h7+", [3 x i8] c"p\A4\B2", [3 x i8] c"o=\86", [3 x i8] c"X\8DC", [3 x i8] c"5(y", [3 x i8] c"\B8\C7o", [3 x i8] c"oO%", [3 x i8] c"C9\00", [3 x i8] c"\9AgY", [3 x i8] c"DDD", [3 x i8] c"lll", [3 x i8] c"\9A\D2\84", [3 x i8] c"l^\B5", [3 x i8] c"\95\95\95"], align 16
@mc_colors = internal unnamed_addr constant [5 x i8] c"\00\0B\0C\0F\01", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Failed to allocate buffer memory.\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Failed to allocate memory for extradata.\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"pkt->size == req_size\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"libavcodec/a64multienc.c\00", align 1
@interlaced_dither_patterns = internal unnamed_addr constant [9 x [8 x [4 x i8]]] [[8 x [4 x i8]] zeroinitializer, [8 x [4 x i8]] [[4 x i8] c"\01\00\01\00", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] c"\01\00\01\00", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\01\00\01\00", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] c"\00\01\00\01", [4 x i8] c"\01\00\01\00", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] c"\00\01\00\01"], [8 x [4 x i8]] [[4 x i8] c"\01\00\01\00", [4 x i8] c"\00\01\00\01", [4 x i8] c"\00\01\00\01", [4 x i8] zeroinitializer, [4 x i8] c"\01\00\01\00", [4 x i8] c"\00\01\00\01", [4 x i8] c"\00\01\00\01", [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\01\00\01\00", [4 x i8] c"\00\01\00\01", [4 x i8] c"\00\01\00\01", [4 x i8] c"\01\00\01\00", [4 x i8] c"\01\00\01\00", [4 x i8] c"\00\01\00\01", [4 x i8] c"\00\01\00\01", [4 x i8] c"\01\00\01\00"], [8 x [4 x i8]] [[4 x i8] c"\01\00\01\00", [4 x i8] c"\00\01\00\01", [4 x i8] c"\01\01\01\01", [4 x i8] c"\01\00\01\00", [4 x i8] c"\01\00\01\00", [4 x i8] c"\00\01\00\01", [4 x i8] c"\01\01\01\01", [4 x i8] c"\01\00\01\00"], [8 x [4 x i8]] [[4 x i8] c"\01\00\01\00", [4 x i8] c"\01\01\01\01", [4 x i8] c"\01\01\01\01", [4 x i8] c"\00\01\00\01", [4 x i8] c"\01\00\01\00", [4 x i8] c"\01\01\01\01", [4 x i8] c"\01\01\01\01", [4 x i8] c"\00\01\00\01"], [8 x [4 x i8]] [[4 x i8] c"\01\01\01\01", [4 x i8] c"\01\01\01\01", [4 x i8] c"\01\01\01\01", [4 x i8] c"\00\01\00\01", [4 x i8] c"\01\01\01\01", [4 x i8] c"\01\01\01\01", [4 x i8] c"\01\01\01\01", [4 x i8] c"\00\01\00\01"], [8 x [4 x i8]] [[4 x i8] c"\01\01\01\01", [4 x i8] c"\01\01\01\01", [4 x i8] c"\01\01\01\01", [4 x i8] c"\01\01\01\01", [4 x i8] c"\01\01\01\01", [4 x i8] c"\01\01\01\01", [4 x i8] c"\01\01\01\01", [4 x i8] c"\01\01\01\01"]], align 16

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -12, 1) i32 @a64multi_encode_init(ptr noundef %0) #0 {
.lr.ph:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @av_lfg_init(ptr noundef nonnull %i.c, i32 noundef 1) #7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.e = load i32, ptr %i.d, align 4, !tbaa !29   ; 2 uses
  %i.f = icmp slt i32 %i.e, 1
  %i.g = udiv i32 %i.e, 118
  %.sink = select i1 %i.f, i32 4, i32 %i.g        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 268 ; 4 uses
  store i32 %.sink, ptr %i.h, align 4, !tbaa !30
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %.sink) #7
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 276
  store i32 0, ptr %i.i, align 4, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !36
  %i.n = icmp eq i32 %i.m, 143                    ; 2 uses
  %i.o = zext i1 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  store i32 %i.o, ptr %i.p, align 8, !tbaa !39
  %i.q = select i1 %i.n, i32 5, i32 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 344 ; 2 uses
  store i32 %i.q, ptr %i.r, align 8, !tbaa !40
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.a ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr @mc_colors, i64 %indvars.iv
  %i.u = load i8, ptr %i.t, align 1, !tbaa !41
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [3 x i8], ptr @a64_palette, i64 %i.v ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !41
  %i.y = uitofp i8 %i.x to double
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.aa = load <2 x i8>, ptr %i.z, align 1, !tbaa !41
  %i.ab = uitofp <2 x i8> %i.aa to <2 x double>   ; 2 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0
  %i.ad = fmul nnan nsz double %i.ac, 5.900000e-01
  %i.ae = tail call nsz double @llvm.fmuladd.f64(double %i.y, double 3.000000e-01, double %i.ad)
  %i.af = extractelement <2 x double> %i.ab, i64 1
  %i.ag = tail call nsz double @llvm.fmuladd.f64(double %i.af, double 1.100000e-01, double %i.ae)
  %i.ah = fptosi double %i.ag to i32
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = load i32, ptr %i.r, align 8, !tbaa !40
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next, %i.ak
  br i1 %i.al, label %bb.a, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.a
  %i.am = load i32, ptr %i.h, align 4, !tbaa !30
  %i.an = sext i32 %i.am to i64
  %i.ao = tail call noalias ptr @av_calloc(i64 noundef %i.an, i64 noundef 128000) #7 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !45
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.aq = tail call noalias ptr @av_malloc(i64 noundef 32768) #7 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !46
  %.not39 = icmp eq ptr %i.aq, null
  br i1 %.not39, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = load i32, ptr %i.h, align 4, !tbaa !30
  %i.at = sext i32 %i.as to i64
  %i.au = tail call noalias ptr @av_calloc(i64 noundef %i.at, i64 noundef 4000) #7 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store ptr %i.au, ptr %i.av, align 8, !tbaa !47
  %.not40 = icmp eq ptr %i.au, null
  br i1 %.not40, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = tail call noalias ptr @av_mallocz(i64 noundef 256) #7 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !48
  %.not41 = icmp eq ptr %i.aw, null
  br i1 %.not41, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %._crit_edge
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.6) #7
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.ay = tail call noalias ptr @av_mallocz(i64 noundef 96) #7 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !49
  %.not42 = icmp eq ptr %i.ay, null
  br i1 %.not42, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.7) #7
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 32, ptr %i.ba, align 8, !tbaa !50
  %i.bb = load i32, ptr %i.h, align 4, !tbaa !30
  %i.bc = tail call i32 @llvm.bswap.i32(i32 %i.bb)
  store i32 %i.bc, ptr %i.ay, align 1, !tbaa !41
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i32 16777216, ptr %i.bd, align 1, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !51
  %.not43 = icmp eq i32 %i.bf, 0
  br i1 %.not43, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 1832138337, ptr %i.be, align 4, !tbaa !51
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  store i64 -9223372036854775808, ptr %i.bg, align 8, !tbaa !52
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g, %bb.e
  %.037 = phi i32 [ 0, %bb.j ], [ -12, %bb.g ], [ -12, %bb.e ]
  ret i32 %.037
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @a64multi_encode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %i.b = alloca [256 x i8], align 16              ; 7 uses
  %i.c = alloca [256 x i8], align 16              ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9    ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 328
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 272 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !39
  %i.p = shl nsw i32 %i.o, 8                      ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.r = load i32, ptr %i.q, align 4, !tbaa !53
  %i.s = tail call i32 @llvm.smin.i32(i32 %i.r, i32 200) ; 2 uses
  %spec.select = ashr i32 %i.s, 3                 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = load i32, ptr %i.t, align 8, !tbaa !54   ; 5 uses
  %i.v = tail call i32 @llvm.smin.i32(i32 %i.u, i32 320) ; 5 uses
  %i.w = ashr i32 %i.v, 3                         ; 4 uses
  %i.x = mul nsw i32 %i.w, %spec.select           ; 4 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 268 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !30
  %.not122 = icmp eq i32 %i.z, 0
  br i1 %.not122, label %.thread, label %.thread182

.thread182:                                       ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 276
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !34 ; 2 uses
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !30
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 276 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !34 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 268
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !30 ; 3 uses
  %i.ag = icmp ult i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.ah = mul i32 %i.ad, 32000
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ai
  %i.ak = load ptr, ptr %2, align 8, !tbaa !55    ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  br label %.preheader1.us.preheader.i

.preheader1.us.preheader.i:                       ; preds = %.split.us.i, %bb.d
  %indvars.iv.i = phi i32 [ 8, %bb.d ], [ %indvars.iv.next.i, %.split.us.i ] ; 2 uses
  %.027.i = phi ptr [ %i.aj, %bb.d ], [ %.us-phi.us.us.i, %.split.us.i ]
  %.04026.i = phi i32 [ 0, %bb.d ], [ %i.dm, %.split.us.i ] ; 3 uses
  br label %.preheader.us.us.preheader.i

.preheader.us.us.preheader.i:                     ; preds = %._crit_edge11.us.i, %.preheader1.us.preheader.i
  %.121.us.i = phi ptr [ %.us-phi.us.us.i, %._crit_edge11.us.i ], [ %.027.i, %.preheader1.us.preheader.i ]
  %.03919.us.i = phi i32 [ %i.bb, %._crit_edge11.us.i ], [ 0, %.preheader1.us.preheader.i ] ; 11 uses
  %i.am = icmp sgt i32 %i.u, %.03919.us.i
  %i.an = or disjoint i32 %.03919.us.i, 1         ; 2 uses
  %i.ao = icmp samesign ult i32 %i.an, %i.v
  %i.ap = or disjoint i32 %.03919.us.i, 2         ; 2 uses
  %i.aq = icmp sgt i32 %i.u, %i.ap
  %i.ar = or disjoint i32 %.03919.us.i, 3         ; 2 uses
  %i.as = icmp samesign ult i32 %i.ar, %i.v
  %i.at = or disjoint i32 %.03919.us.i, 4         ; 2 uses
  %i.au = icmp sgt i32 %i.u, %i.at
  %i.av = or disjoint i32 %.03919.us.i, 5         ; 2 uses
  %i.aw = icmp samesign ult i32 %i.av, %i.v
  %i.ax = or disjoint i32 %.03919.us.i, 6         ; 2 uses
  %i.ay = icmp sgt i32 %i.u, %i.ax
  %i.az = or disjoint i32 %.03919.us.i, 7         ; 2 uses
  %i.ba = icmp samesign ult i32 %i.az, %i.v
  br label %.preheader.us.us.i

._crit_edge11.us.i:                               ; preds = %._crit_edge.us.us.i
  %i.bb = add nuw nsw i32 %.03919.us.i, 8
  %i.bc = icmp samesign ult i32 %.03919.us.i, 312
  br i1 %i.bc, label %.preheader.us.us.preheader.i, label %.split.us.i, !llvm.loop !56

.preheader.us.us.i:                               ; preds = %._crit_edge.us.us.i, %.preheader.us.us.preheader.i
  %.210.us.us.i = phi ptr [ %.us-phi.us.us.i, %._crit_edge.us.us.i ], [ %.121.us.i, %.preheader.us.us.preheader.i ] ; 5 uses
  %.0428.us.us.i = phi i32 [ %i.dl, %._crit_edge.us.us.i ], [ %.04026.i, %.preheader.us.us.preheader.i ] ; 6 uses
  %i.bd = icmp slt i32 %.0428.us.us.i, %i.s
  %.fr6.us.us.i = freeze i1 %i.bd
  br i1 %.fr6.us.us.i, label %.lr.ph.split.us17.us.preheader.i, label %._crit_edge.us.us.i

.lr.ph.split.us17.us.preheader.i:                 ; preds = %.preheader.us.us.i
  br i1 %i.am, label %bb.e, label %.lr.ph.split.us17.us.1.i

bb.e:                                             ; preds = %.lr.ph.split.us17.us.preheader.i
  %i.be = load i32, ptr %i.al, align 8, !tbaa !42
  %i.bf = mul nsw i32 %i.be, %.0428.us.us.i       ; 2 uses
  %i.bg = add nsw i32 %i.bf, %.03919.us.i
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds i8, ptr %i.ak, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !41
  %i.bk = zext i8 %i.bj to i32                    ; 2 uses
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bl = add nsw i32 %i.bf, %i.an
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %i.ak, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !41
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add nuw nsw i32 %i.bp, %i.bk
  %i.br = lshr i32 %i.bq, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.041.us.us.i = phi i32 [ %i.br, %bb.f ], [ %i.bk, %bb.e ]
  store i32 %.041.us.us.i, ptr %.210.us.us.i, align 4, !tbaa !42
  br label %.lr.ph.split.us17.us.1.i

.lr.ph.split.us17.us.1.i:                         ; preds = %bb.g, %.lr.ph.split.us17.us.preheader.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.210.us.us.i, i64 4
  br i1 %i.aq, label %bb.h, label %.lr.ph.split.us17.us.2.i

bb.h:                                             ; preds = %.lr.ph.split.us17.us.1.i
  %i.bt = load i32, ptr %i.al, align 8, !tbaa !42
  %i.bu = mul nsw i32 %i.bt, %.0428.us.us.i       ; 2 uses
  %i.bv = add nsw i32 %i.bu, %i.ap
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %i.ak, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !41
  %i.bz = zext i8 %i.by to i32                    ; 2 uses
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ca = add nsw i32 %i.bu, %i.ar
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr %i.ak, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !41
  %i.ce = zext i8 %i.cd to i32
  %i.cf = add nuw nsw i32 %i.ce, %i.bz
  %i.cg = lshr i32 %i.cf, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.041.us.us.1.i = phi i32 [ %i.cg, %bb.i ], [ %i.bz, %bb.h ]
  store i32 %.041.us.us.1.i, ptr %i.bs, align 4, !tbaa !42
  br label %.lr.ph.split.us17.us.2.i

.lr.ph.split.us17.us.2.i:                         ; preds = %bb.j, %.lr.ph.split.us17.us.1.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.210.us.us.i, i64 8
  br i1 %i.au, label %bb.k, label %.lr.ph.split.us17.us.3.i

bb.k:                                             ; preds = %.lr.ph.split.us17.us.2.i
  %i.ci = load i32, ptr %i.al, align 8, !tbaa !42
  %i.cj = mul nsw i32 %i.ci, %.0428.us.us.i       ; 2 uses
  %i.ck = add nsw i32 %i.cj, %i.at
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr %i.ak, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !41
  %i.co = zext i8 %i.cn to i32                    ; 2 uses
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cp = add nsw i32 %i.cj, %i.av
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %i.ak, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !41
  %i.ct = zext i8 %i.cs to i32
  %i.cu = add nuw nsw i32 %i.ct, %i.co
  %i.cv = lshr i32 %i.cu, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.041.us.us.2.i = phi i32 [ %i.cv, %bb.l ], [ %i.co, %bb.k ]
  store i32 %.041.us.us.2.i, ptr %i.ch, align 4, !tbaa !42
  br label %.lr.ph.split.us17.us.3.i

.lr.ph.split.us17.us.3.i:                         ; preds = %bb.m, %.lr.ph.split.us17.us.2.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.210.us.us.i, i64 12
  br i1 %i.ay, label %bb.n, label %._crit_edge.us.us.i

bb.n:                                             ; preds = %.lr.ph.split.us17.us.3.i
  %i.cx = load i32, ptr %i.al, align 8, !tbaa !42
  %i.cy = mul nsw i32 %i.cx, %.0428.us.us.i       ; 2 uses
  %i.cz = add nsw i32 %i.cy, %i.ax
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds i8, ptr %i.ak, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !41
  %i.dd = zext i8 %i.dc to i32                    ; 2 uses
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.de = add nsw i32 %i.cy, %i.az
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds i8, ptr %i.ak, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !41
  %i.di = zext i8 %i.dh to i32
  %i.dj = add nuw nsw i32 %i.di, %i.dd
  %i.dk = lshr i32 %i.dj, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.041.us.us.3.i = phi i32 [ %i.dk, %bb.o ], [ %i.dd, %bb.n ]
  store i32 %.041.us.us.3.i, ptr %i.cw, align 4, !tbaa !42
  br label %._crit_edge.us.us.i

._crit_edge.us.us.i:                              ; preds = %bb.p, %.lr.ph.split.us17.us.3.i, %.preheader.us.us.i
  %.us-phi.us.us.i = getelementptr i8, ptr %.210.us.us.i, i64 16 ; 3 uses
  %i.dl = add nuw nsw i32 %.0428.us.us.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dl, %indvars.iv.i
  br i1 %exitcond.not.i, label %._crit_edge11.us.i, label %.preheader.us.us.i, !llvm.loop !57

.split.us.i:                                      ; preds = %._crit_edge11.us.i
  %i.dm = add nuw nsw i32 %.04026.i, 8
  %i.dn = icmp samesign ult i32 %.04026.i, 192
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 8
  br i1 %i.dn, label %.preheader1.us.preheader.i, label %to_meta_with_crop.exit, !llvm.loop !58

to_meta_with_crop.exit:                           ; preds = %.split.us.i
  %i.do = load i32, ptr %i.ac, align 4, !tbaa !34
end_hunk_0
begin_hunk_1_@a64multi_encode_frame:bb.a
  store i32 %.137.29.i, ptr %i.nj, align 4, !tbaa !42
  %i.nl = load i32, ptr %i.es, align 4, !tbaa !42
  %i.nm = getelementptr inbounds nuw i8, ptr %.010424.i, i64 120 ; 2 uses
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !42
  %.137.30.i = tail call i32 @llvm.smax.i32(i32 %i.nl, i32 %i.nn)
  store i32 %.137.30.i, ptr %i.nm, align 4, !tbaa !42
  %i.no = load i32, ptr %i.es, align 4, !tbaa !42
  %i.np = getelementptr inbounds nuw i8, ptr %.010424.i, i64 124 ; 2 uses
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !42
  %.137.31.i = tail call i32 @llvm.smax.i32(i32 %i.no, i32 %i.nq)
  store i32 %.137.31.i, ptr %i.np, align 4, !tbaa !42
  br label %.loopexit.i

.preheader3.preheader.i:                          ; preds = %bb.ap
  %i.nr = load i32, ptr %i.et, align 4, !tbaa !42
  %..i = tail call i32 @llvm.smin.i32(i32 %i.nr, i32 %i.ka)
  store i32 %..i, ptr %.010424.i, align 4, !tbaa !42
  %i.ns = load i32, ptr %i.et, align 4, !tbaa !42
  %i.nt = load i32, ptr %i.kb, align 4, !tbaa !42
  %..1.i = tail call i32 @llvm.smin.i32(i32 %i.ns, i32 %i.nt)
  store i32 %..1.i, ptr %i.kb, align 4, !tbaa !42
  %i.nu = load i32, ptr %i.et, align 4, !tbaa !42
  %i.nv = load i32, ptr %i.kc, align 4, !tbaa !42
  %..2.i = tail call i32 @llvm.smin.i32(i32 %i.nu, i32 %i.nv)
  store i32 %..2.i, ptr %i.kc, align 4, !tbaa !42
  %i.nw = load i32, ptr %i.et, align 4, !tbaa !42
  %i.nx = load i32, ptr %i.kd, align 4, !tbaa !42
  %..3.i = tail call i32 @llvm.smin.i32(i32 %i.nw, i32 %i.nx)
  store i32 %..3.i, ptr %i.kd, align 4, !tbaa !42
  %i.ny = load i32, ptr %i.et, align 4, !tbaa !42
  %i.nz = load i32, ptr %i.ke, align 4, !tbaa !42
  %..4.i = tail call i32 @llvm.smin.i32(i32 %i.ny, i32 %i.nz)
  store i32 %..4.i, ptr %i.ke, align 4, !tbaa !42
  %i.oa = load i32, ptr %i.et, align 4, !tbaa !42
  %i.ob = load i32, ptr %i.kf, align 4, !tbaa !42
  %..5.i = tail call i32 @llvm.smin.i32(i32 %i.oa, i32 %i.ob)
  store i32 %..5.i, ptr %i.kf, align 4, !tbaa !42
  %i.oc = load i32, ptr %i.et, align 4, !tbaa !42
  %i.od = getelementptr inbounds nuw i8, ptr %.010424.i, i64 24 ; 2 uses
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !42
  %..6.i = tail call i32 @llvm.smin.i32(i32 %i.oc, i32 %i.oe)
  store i32 %..6.i, ptr %i.od, align 4, !tbaa !42
  %i.of = load i32, ptr %i.et, align 4, !tbaa !42
  %i.og = getelementptr inbounds nuw i8, ptr %.010424.i, i64 28 ; 2 uses
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !42
  %..7.i = tail call i32 @llvm.smin.i32(i32 %i.of, i32 %i.oh)
  store i32 %..7.i, ptr %i.og, align 4, !tbaa !42
  %i.oi = load i32, ptr %i.et, align 4, !tbaa !42
  %i.oj = getelementptr inbounds nuw i8, ptr %.010424.i, i64 32 ; 2 uses
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !42
  %..8.i = tail call i32 @llvm.smin.i32(i32 %i.oi, i32 %i.ok)
  store i32 %..8.i, ptr %i.oj, align 4, !tbaa !42
  %i.ol = load i32, ptr %i.et, align 4, !tbaa !42
  %i.om = getelementptr inbounds nuw i8, ptr %.010424.i, i64 36 ; 2 uses
  %i.on = load i32, ptr %i.om, align 4, !tbaa !42
  %..9.i = tail call i32 @llvm.smin.i32(i32 %i.ol, i32 %i.on)
  store i32 %..9.i, ptr %i.om, align 4, !tbaa !42
  %i.oo = load i32, ptr %i.et, align 4, !tbaa !42
  %i.op = getelementptr inbounds nuw i8, ptr %.010424.i, i64 40 ; 2 uses
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !42
  %..10.i = tail call i32 @llvm.smin.i32(i32 %i.oo, i32 %i.oq)
  store i32 %..10.i, ptr %i.op, align 4, !tbaa !42
  %i.or = load i32, ptr %i.et, align 4, !tbaa !42
  %i.os = getelementptr inbounds nuw i8, ptr %.010424.i, i64 44 ; 2 uses
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !42
  %..11.i = tail call i32 @llvm.smin.i32(i32 %i.or, i32 %i.ot)
  store i32 %..11.i, ptr %i.os, align 4, !tbaa !42
  %i.ou = load i32, ptr %i.et, align 4, !tbaa !42
  %i.ov = getelementptr inbounds nuw i8, ptr %.010424.i, i64 48 ; 2 uses
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !42
  %..12.i = tail call i32 @llvm.smin.i32(i32 %i.ou, i32 %i.ow)
  store i32 %..12.i, ptr %i.ov, align 4, !tbaa !42
  %i.ox = load i32, ptr %i.et, align 4, !tbaa !42
  %i.oy = getelementptr inbounds nuw i8, ptr %.010424.i, i64 52 ; 2 uses
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !42
  %..13.i = tail call i32 @llvm.smin.i32(i32 %i.ox, i32 %i.oz)
  store i32 %..13.i, ptr %i.oy, align 4, !tbaa !42
  %i.pa = load i32, ptr %i.et, align 4, !tbaa !42
  %i.pb = getelementptr inbounds nuw i8, ptr %.010424.i, i64 56 ; 2 uses
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !42
  %..14.i = tail call i32 @llvm.smin.i32(i32 %i.pa, i32 %i.pc)
  store i32 %..14.i, ptr %i.pb, align 4, !tbaa !42
  %i.pd = load i32, ptr %i.et, align 4, !tbaa !42
  %i.pe = getelementptr inbounds nuw i8, ptr %.010424.i, i64 60 ; 2 uses
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !42
  %..15.i = tail call i32 @llvm.smin.i32(i32 %i.pd, i32 %i.pf)
  store i32 %..15.i, ptr %i.pe, align 4, !tbaa !42
  %i.pg = load i32, ptr %i.et, align 4, !tbaa !42
  %i.ph = getelementptr inbounds nuw i8, ptr %.010424.i, i64 64 ; 2 uses
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !42
  %..16.i = tail call i32 @llvm.smin.i32(i32 %i.pg, i32 %i.pi)
  store i32 %..16.i, ptr %i.ph, align 4, !tbaa !42
  %i.pj = load i32, ptr %i.et, align 4, !tbaa !42
  %i.pk = getelementptr inbounds nuw i8, ptr %.010424.i, i64 68 ; 2 uses
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !42
  %..17.i = tail call i32 @llvm.smin.i32(i32 %i.pj, i32 %i.pl)
  store i32 %..17.i, ptr %i.pk, align 4, !tbaa !42
  %i.pm = load i32, ptr %i.et, align 4, !tbaa !42
  %i.pn = getelementptr inbounds nuw i8, ptr %.010424.i, i64 72 ; 2 uses
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !42
  %..18.i = tail call i32 @llvm.smin.i32(i32 %i.pm, i32 %i.po)
  store i32 %..18.i, ptr %i.pn, align 4, !tbaa !42
  %i.pp = load i32, ptr %i.et, align 4, !tbaa !42
  %i.pq = getelementptr inbounds nuw i8, ptr %.010424.i, i64 76 ; 2 uses
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !42
  %..19.i = tail call i32 @llvm.smin.i32(i32 %i.pp, i32 %i.pr)
  store i32 %..19.i, ptr %i.pq, align 4, !tbaa !42
  %i.ps = load i32, ptr %i.et, align 4, !tbaa !42
  %i.pt = getelementptr inbounds nuw i8, ptr %.010424.i, i64 80 ; 2 uses
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !42
  %..20.i = tail call i32 @llvm.smin.i32(i32 %i.ps, i32 %i.pu)
  store i32 %..20.i, ptr %i.pt, align 4, !tbaa !42
  %i.pv = load i32, ptr %i.et, align 4, !tbaa !42
  %i.pw = getelementptr inbounds nuw i8, ptr %.010424.i, i64 84 ; 2 uses
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !42
  %..21.i = tail call i32 @llvm.smin.i32(i32 %i.pv, i32 %i.px)
  store i32 %..21.i, ptr %i.pw, align 4, !tbaa !42
  %i.py = load i32, ptr %i.et, align 4, !tbaa !42
  %i.pz = getelementptr inbounds nuw i8, ptr %.010424.i, i64 88 ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !42
  %..22.i = tail call i32 @llvm.smin.i32(i32 %i.py, i32 %i.qa)
  store i32 %..22.i, ptr %i.pz, align 4, !tbaa !42
  %i.qb = load i32, ptr %i.et, align 4, !tbaa !42
  %i.qc = getelementptr inbounds nuw i8, ptr %.010424.i, i64 92 ; 2 uses
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !42
  %..23.i = tail call i32 @llvm.smin.i32(i32 %i.qb, i32 %i.qd)
  store i32 %..23.i, ptr %i.qc, align 4, !tbaa !42
  %i.qe = load i32, ptr %i.et, align 4, !tbaa !42
  %i.qf = getelementptr inbounds nuw i8, ptr %.010424.i, i64 96 ; 2 uses
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !42
  %..24.i = tail call i32 @llvm.smin.i32(i32 %i.qe, i32 %i.qg)
  store i32 %..24.i, ptr %i.qf, align 4, !tbaa !42
  %i.qh = load i32, ptr %i.et, align 4, !tbaa !42
  %i.qi = getelementptr inbounds nuw i8, ptr %.010424.i, i64 100 ; 2 uses
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !42
  %..25.i = tail call i32 @llvm.smin.i32(i32 %i.qh, i32 %i.qj)
  store i32 %..25.i, ptr %i.qi, align 4, !tbaa !42
  %i.qk = load i32, ptr %i.et, align 4, !tbaa !42
  %i.ql = getelementptr inbounds nuw i8, ptr %.010424.i, i64 104 ; 2 uses
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !42
  %..26.i = tail call i32 @llvm.smin.i32(i32 %i.qk, i32 %i.qm)
  store i32 %..26.i, ptr %i.ql, align 4, !tbaa !42
  %i.qn = load i32, ptr %i.et, align 4, !tbaa !42
  %i.qo = getelementptr inbounds nuw i8, ptr %.010424.i, i64 108 ; 2 uses
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !42
  %..27.i = tail call i32 @llvm.smin.i32(i32 %i.qn, i32 %i.qp)
  store i32 %..27.i, ptr %i.qo, align 4, !tbaa !42
  %i.qq = load i32, ptr %i.et, align 4, !tbaa !42
  %i.qr = getelementptr inbounds nuw i8, ptr %.010424.i, i64 112 ; 2 uses
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !42
  %..28.i = tail call i32 @llvm.smin.i32(i32 %i.qq, i32 %i.qs)
  store i32 %..28.i, ptr %i.qr, align 4, !tbaa !42
  %i.qt = load i32, ptr %i.et, align 4, !tbaa !42
  %i.qu = getelementptr inbounds nuw i8, ptr %.010424.i, i64 116 ; 2 uses
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !42
  %..29.i = tail call i32 @llvm.smin.i32(i32 %i.qt, i32 %i.qv)
  store i32 %..29.i, ptr %i.qu, align 4, !tbaa !42
  %i.qw = load i32, ptr %i.et, align 4, !tbaa !42
  %i.qx = getelementptr inbounds nuw i8, ptr %.010424.i, i64 120 ; 2 uses
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !42
  %..30.i = tail call i32 @llvm.smin.i32(i32 %i.qw, i32 %i.qy)
  store i32 %..30.i, ptr %i.qx, align 4, !tbaa !42
  %i.qz = load i32, ptr %i.et, align 4, !tbaa !42
  %i.ra = getelementptr inbounds nuw i8, ptr %.010424.i, i64 124 ; 2 uses
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !42
  %..31.i = tail call i32 @llvm.smin.i32(i32 %i.qz, i32 %i.rb)
  store i32 %..31.i, ptr %i.ra, align 4, !tbaa !42
  br label %.loopexit.i

bb.aq:                                            ; preds = %bb.ao, %bb.an
  %i.rc = getelementptr inbounds nuw i8, ptr %.010424.i, i64 128
  %i.rd = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  %i.re = zext i1 %i.jw to i8
  %i.rf = sext i32 %.011923.i to i64
  %i.rg = getelementptr inbounds i8, ptr %i.i, i64 %i.rf
  store i8 %i.re, ptr %i.rg, align 1, !tbaa !41
  %i.rh = add nsw i32 %.011923.i, 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.aq, %.preheader3.preheader.i, %.preheader4.preheader.i
  %.1120.i = phi i32 [ %i.rh, %bb.aq ], [ %.011923.i, %.preheader3.preheader.i ], [ %.011923.i, %.preheader4.preheader.i ] ; 2 uses
  %.1105.i = phi ptr [ %i.rc, %bb.aq ], [ %.010424.i, %.preheader3.preheader.i ], [ %.010424.i, %.preheader4.preheader.i ]
  %.1.i = phi ptr [ %i.rd, %bb.aq ], [ %.025.i, %.preheader3.preheader.i ], [ %.025.i, %.preheader4.preheader.i ]
  %i.ri = icmp slt i32 %.1120.i, 256
  br i1 %i.ri, label %.preheader6.i, label %bb.ar, !llvm.loop !69

bb.ar:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.pre = load i32, ptr %i.dy, align 4, !tbaa !30
  %i.rj = icmp sgt i32 %.pre, 0
  br i1 %i.rj, label %.preheader143.lr.ph, label %._crit_edge151

.preheader143.lr.ph:                              ; preds = %bb.ar
  %i.rk = getelementptr inbounds nuw i8, ptr %i.eg, i64 4096
  %i.rl = icmp slt i32 %spec.select, 1
  %i.rm = icmp slt i32 %i.w, 1
  %i.rn = sext i32 %i.x to i64
  %i.ro = sext i32 %i.p to i64
  %4 = zext i32 %i.w to i64                       ; 7 uses
  %brmerge = select i1 %i.rl, i1 true, i1 %i.rm
  %wide.trip.count158 = zext i32 %spec.select to i64 ; 2 uses
  %i.rp = mul nuw i64 %wide.trip.count158, %4     ; 2 uses
  %i.rq = shl i64 %i.rp, 2
  %i.rr = getelementptr i8, ptr %i.g, i64 %i.rq
  %min.iters.check = icmp ult i32 %i.w, 8
  %n.vec = and i64 %4, 2147483640                 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %4
  %xtraiter189 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br label %.preheader143

.preheader143:                                    ; preds = %.preheader143.lr.ph, %bb.au
  %indvar.a = phi i64 [ 0, %.preheader143.lr.ph ], [ %indvar.next, %bb.au ] ; 2 uses
  %.0103150 = phi i32 [ 0, %.preheader143.lr.ph ], [ %i.uj, %bb.au ]
  %.2149 = phi i32 [ 4096, %.preheader143.lr.ph ], [ %.3, %bb.au ]
  %.2110148 = phi ptr [ %i.rk, %.preheader143.lr.ph ], [ %.3111, %bb.au ] ; 9 uses
  %.0112147 = phi ptr [ %i.g, %.preheader143.lr.ph ], [ %i.ui, %bb.au ] ; 9 uses
  %i.rs = mul nuw nsw i64 %indvar.a, 4000
  %scevgep186 = getelementptr i8, ptr %i.rr, i64 %i.rs
  br i1 %brmerge, label %._crit_edge146.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader143
  %scevgep = getelementptr i8, ptr %.2110148, i64 %i.rp
  %bound0 = icmp ult ptr %.2110148, %scevgep186
  %bound1 = icmp ult ptr %.0112147, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.rt = mul nuw nsw i64 %indvars.iv155, %4      ; 6 uses
  %brmerge195 = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge195, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 2 uses
  %i.ru = add nuw nsw i64 %index, %i.rt           ; 2 uses
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %.0112147, i64 %i.ru ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 16
  %wide.load = load <4 x i32>, ptr %i.rv, align 4, !tbaa !42, !alias.scope !70
  %wide.load187 = load <4 x i32>, ptr %i.rw, align 4, !tbaa !42, !alias.scope !70
  %i.rx = trunc <4 x i32> %wide.load to <4 x i8>
  %i.ry = trunc <4 x i32> %wide.load187 to <4 x i8>
  %i.rz = getelementptr inbounds nuw i8, ptr %.2110148, i64 %i.ru ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 4
  store <4 x i8> %i.rx, ptr %i.rz, align 1, !tbaa !41, !alias.scope !73, !noalias !70
  store <4 x i8> %i.ry, ptr %i.sa, align 1, !tbaa !41, !alias.scope !73, !noalias !70
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.sb = icmp eq i64 %index.next, %n.vec
  br i1 %i.sb, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 3 uses
  br i1 %lcmp.mod190.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.sc = add nuw nsw i64 %indvars.iv.prol, %i.rt ; 2 uses
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %.0112147, i64 %i.sc
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !42
  %i.sf = trunc i32 %i.se to i8
  %i.sg = getelementptr inbounds nuw i8, ptr %.2110148, i64 %i.sc
  store i8 %i.sf, ptr %i.sg, align 1, !tbaa !41
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter189
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !78

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.sh = sub nsw i64 %indvars.iv.ph, %4
  %i.si = icmp ugt i64 %i.sh, -4
  br i1 %i.si, label %._crit_edge, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add nuw nsw i64 1, %i.rt
  %invariant.op191 = add nuw nsw i64 2, %i.rt
  %invariant.op193 = add nuw nsw i64 3, %i.rt
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.3, %scalar.ph ] ; 5 uses
  %i.sj = add nuw nsw i64 %indvars.iv, %i.rt      ; 2 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %.0112147, i64 %i.sj
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !42
  %i.sm = trunc i32 %i.sl to i8
  %i.sn = getelementptr inbounds nuw i8, ptr %.2110148, i64 %i.sj
  store i8 %i.sm, ptr %i.sn, align 1, !tbaa !41
  %.reass = add nuw nsw i64 %indvars.iv, %invariant.op ; 2 uses
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %.0112147, i64 %.reass
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !42
  %i.sq = trunc i32 %i.sp to i8
  %i.sr = getelementptr inbounds nuw i8, ptr %.2110148, i64 %.reass
  store i8 %i.sq, ptr %i.sr, align 1, !tbaa !41
  %.reass192 = add nuw nsw i64 %indvars.iv, %invariant.op191 ; 2 uses
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %.0112147, i64 %.reass192
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !42
  %i.su = trunc i32 %i.st to i8
  %i.sv = getelementptr inbounds nuw i8, ptr %.2110148, i64 %.reass192
  store i8 %i.su, ptr %i.sv, align 1, !tbaa !41
  %.reass194 = add nuw nsw i64 %indvars.iv, %invariant.op193 ; 2 uses
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %.0112147, i64 %.reass194
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !42
  %i.sy = trunc i32 %i.sx to i8
  %i.sz = getelementptr inbounds nuw i8, ptr %.2110148, i64 %.reass194
  store i8 %i.sy, ptr %i.sz, align 1, !tbaa !41
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %4
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond159.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count158
  br i1 %exitcond159.not, label %._crit_edge146.split, label %.preheader, !llvm.loop !81

._crit_edge146.split:                             ; preds = %._crit_edge, %.preheader143
  %i.ta = getelementptr inbounds i8, ptr %.2110148, i64 %i.rn ; 3 uses
  %i.tb = add nsw i32 %.2149, %i.x                ; 2 uses
  %i.tc = load i32, ptr %i.n, align 8, !tbaa !39
  %.not125 = icmp eq i32 %i.tc, 0
  br i1 %.not125, label %bb.au, label %.preheader142

.preheader142:                                    ; preds = %._crit_edge146.split, %bb.at
  %indvars.iv.i131 = phi i64 [ %indvars.iv.next.i132, %bb.at ], [ 0, %._crit_edge146.split ] ; 4 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %.0112147, i64 %indvars.iv.i131 ; 4 uses
  %i.te = load i32, ptr %i.td, align 4, !tbaa !42
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds i8, ptr %i.i, i64 %i.tf
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !41
  %i.ti = getelementptr inbounds nuw i8, ptr %i.td, i64 1024
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !42
  %i.tk = sext i32 %i.tj to i64
  %i.tl = getelementptr inbounds i8, ptr %i.i, i64 %i.tk
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !41
  %i.tn = shl i8 %i.tm, 1
  %i.to = or i8 %i.tn, %i.th
  %i.tp = getelementptr inbounds nuw i8, ptr %i.td, i64 2048
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !42
  %i.tr = sext i32 %i.tq to i64
  %i.ts = getelementptr inbounds i8, ptr %i.i, i64 %i.tr
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !41
  %i.tu = shl i8 %i.tt, 2
  %i.tv = or i8 %i.to, %i.tu                      ; 2 uses
  %i.tw = icmp samesign ult i64 %indvars.iv.i131, 232
  br i1 %i.tw, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.preheader142
  %i.tx = getelementptr inbounds nuw i8, ptr %i.td, i64 3072
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !42
  %i.tz = sext i32 %i.ty to i64
  %i.ua = getelementptr inbounds i8, ptr %i.i, i64 %i.tz
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !41
  %i.uc = shl i8 %i.ub, 3
  %i.ud = or i8 %i.uc, %i.tv
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.preheader142
  %.0.i = phi i8 [ %i.ud, %bb.as ], [ %i.tv, %.preheader142 ]
  %i.ue = shl i8 %.0.i, 2
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ta, i64 %indvars.iv.i131
  store i8 %i.ue, ptr %i.uf, align 1, !tbaa !41
  %indvars.iv.next.i132 = add nuw nsw i64 %indvars.iv.i131, 1 ; 2 uses
  %exitcond.not.i133 = icmp eq i64 %indvars.iv.next.i132, 256
  br i1 %exitcond.not.i133, label %a64_compress_colram.exit, label %.preheader142, !llvm.loop !82

a64_compress_colram.exit:                         ; preds = %bb.at
  %i.ug = getelementptr inbounds i8, ptr %i.ta, i64 %i.ro
  %i.uh = add nsw i32 %i.tb, %i.p
  br label %bb.au

bb.au:                                            ; preds = %a64_compress_colram.exit, %._crit_edge146.split
  %.3111 = phi ptr [ %i.ug, %a64_compress_colram.exit ], [ %i.ta, %._crit_edge146.split ]
  %.3 = phi i32 [ %i.uh, %a64_compress_colram.exit ], [ %i.tb, %._crit_edge146.split ] ; 2 uses
  %i.ui = getelementptr i8, ptr %.0112147, i64 4000
  %i.uj = add nuw nsw i32 %.0103150, 1            ; 2 uses
  %i.uk = load i32, ptr %i.dy, align 4, !tbaa !30
  %i.ul = icmp slt i32 %i.uj, %i.uk
  %indvar.next = add i64 %indvar.a, 1
  br i1 %i.ul, label %.preheader143, label %._crit_edge151, !llvm.loop !83

._crit_edge151:                                   ; preds = %bb.au, %bb.s, %bb.ar
  %.2.lcssa = phi i32 [ 4096, %bb.ar ], [ 0, %bb.s ], [ %.3, %bb.au ] ; 2 uses
  %i.um = load i32, ptr %i.dx, align 4, !tbaa !34
  %i.un = tail call i32 @llvm.bswap.i32(i32 %i.um)
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !49
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 4
  store i32 %i.un, ptr %i.uq, align 1, !tbaa !41
  %i.ur = load ptr, ptr %i.uo, align 8, !tbaa !49
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  store i32 1048576, ptr %i.us, align 1, !tbaa !41
  %i.ut = add nsw i32 %i.x, %i.p
  %i.uu = tail call i32 @llvm.bswap.i32(i32 %i.ut)
  %i.uv = load ptr, ptr %i.uo, align 8, !tbaa !49
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 12
  store i32 %i.uu, ptr %i.uw, align 1, !tbaa !41
  store i32 0, ptr %i.dx, align 4, !tbaa !34
  %i.ux = getelementptr inbounds nuw i8, ptr %i.e, i64 352 ; 2 uses
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !52 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.uy, ptr %i.uz, align 8, !tbaa !84
  %i.va = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.uy, ptr %i.va, align 8, !tbaa !85
  store i64 -9223372036854775808, ptr %i.ux, align 8, !tbaa !52
  %i.vb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.vc = load i32, ptr %i.vb, align 8, !tbaa !86
  %i.vd = icmp eq i32 %i.vc, %.2.lcssa
  br i1 %i.vd, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %._crit_edge151
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 389) #7
  tail call void @abort() #8
  unreachable

bb.aw:                                            ; preds = %._crit_edge151
  %i.ve = icmp ne i32 %.2.lcssa, 0
  %i.vf = zext i1 %i.ve to i32
  store i32 %i.vf, ptr %3, align 4, !tbaa !42
  br label %.thread

.thread:                                          ; preds = %bb.u, %bb.t, %bb.r, %bb.aw, %to_meta_with_crop.exit, %bb.q, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %to_meta_with_crop.exit ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.aw ], [ %i.ek, %bb.u ], [ %i.ed, %bb.t ]
  ret i32 %.1
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @a64multi_close_encoder(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 5 uses
  tail call void @avpriv_elbg_free(ptr noundef %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  tail call void @av_freep(ptr noundef nonnull %i.c) #7
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  tail call void @av_freep(ptr noundef nonnull %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  tail call void @av_freep(ptr noundef nonnull %i.e) #7
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  tail call void @av_freep(ptr noundef nonnull %i.f) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_lfg_init(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #3

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ff_get_encode_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @avpriv_elbg_do(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

declare void @avpriv_elbg_free(ptr noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
end_hunk_1
