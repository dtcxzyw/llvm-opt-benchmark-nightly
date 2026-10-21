Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/htmlparse?download=true
inline.NumInlined: 81
inline.NumDeleted: 25
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.HTMLSTYPE = type { ptr }
%struct.list_t_ = type { ptr, i64, i64, i64 }
%struct.textspan_t = type { ptr, ptr, ptr, ptr, double, double, %struct.pointf_s, i8 }
%struct.pointf_s = type { double, double }
%struct.htextspan_t = type { ptr, i64, i8, double, double }
%struct.textfont_t = type { ptr, ptr, ptr, double, i32 }
%struct.agxbuf = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i64, i64, [7 x i8], i8 }
%struct.htmlscan_s = type { %struct.htmllexstate_t, %struct.htmlparserstate_s }
%struct.htmllexstate_t = type { ptr, ptr, i32, ptr, %struct.agxbuf, i32, i32, i8, i8, %struct.strview_t, %struct.strview_t, ptr, ptr }
%struct.strview_t = type { ptr, i64 }
%struct.htmlparserstate_s = type { ptr, ptr, %struct.anon.0, %struct.anon.2, ptr, %struct.anon.4, ptr }
%struct.anon.0 = type { %union.anon.1, ptr, %struct.textspan_t }
%union.anon.1 = type { %struct.list_t_ }
%struct.anon.2 = type { %union.anon.3, ptr, %struct.htextspan_t }
%union.anon.3 = type { %struct.list_t_ }
%struct.anon.4 = type { %union.anon.5, ptr, ptr }
%union.anon.5 = type { %struct.list_t_ }

@yypact = internal unnamed_addr constant [116 x i16] [i16 8, i16 -82, i16 209, i16 10, i16 -82, i16 -82, i16 11, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 5, i16 209, i16 -82, i16 209, i16 209, i16 209, i16 209, i16 209, i16 209, i16 209, i16 209, i16 -82, i16 -5, i16 -82, i16 14, i16 -20, i16 -82, i16 -82, i16 -82, i16 -82, i16 209, i16 209, i16 209, i16 209, i16 209, i16 13, i16 37, i16 12, i16 66, i16 16, i16 80, i16 19, i16 109, i16 123, i16 20, i16 152, i16 15, i16 166, i16 195, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 23, i16 -82, i16 119, i16 -82, i16 7, i16 46, i16 -82, i16 38, i16 -82, i16 23, i16 17, i16 35, i16 -82, i16 13, i16 -82, i16 -82, i16 -82, i16 -82, i16 58, i16 -82, i16 -82, i16 53, i16 -82, i16 -82, i16 -82, i16 40, i16 -82, i16 7, i16 -82, i16 59, i16 69, i16 -82, i16 72, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82], align 16
@yytranslate = internal unnamed_addr constant [296 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'(", align 16
@yycheck = internal unnamed_addr constant [272 x i8] c"\02\02\02\02\02\02\10\0CY\01\00\1FP\08\03\07\12\13\14W\16\17\08\0Bi\0C\1F\0A\05\0C\0E)\11+\0F-\10/0 2\0645\1B\1C\1D\1E\0B\0C!\22#$%&'(\0C\18\19\17\04\0A\1B\1C\1A *\0A!\22#$%&'(\0C\0A\0ES\0A,X1XXXXXX\0C\1B\1C\0F.X3!\22#$%&'(\1B\1C\FFS\FF\FF!\22#$%&'(\0C\FF\FF\05\FF\FF\FF\09\14\FF\FF\FF\FF\FF\0C\1B\1C\FF\10\15\16!\22#$%&'(\1B\1C\FF\FF\FF\FF!\22#$%&'(\0C\FF\12\13\14\11\16\17\FF\FF\FF\FF\FF\FF\0C\1B\1C\FF\FF\FF\12!\22#$%&'(\1B\1C\FF\FF\FF\FF!\22#$%&'(\0C\FF\FF\FF\FF\FF\FF\13\FF\FF\FF\FF\FF\FF\0C\1B\1C\FF\FF\FF\FF!\22#$%&'(\1B\1C\FF\FF\FF\FF!\22#$%&'(\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\FF\FF\FF#$%&'", align 16
@yytable = internal unnamed_addr constant [272 x i8] c"\1B\12\13\14\16\17\226h\01\1F8V! \02\1B\1B\1B^\1B\1B79p6\D2\C2O\04<\22G\22?\22D\22\22X\22e\22\22\05\06_`9\04\07\08\09\0A\0B\0C\0D\0E\04fg]jm\05\06oX;q\07\08\09\0A\0B\0C\0D\0E\04r<[s>aF\1B\12\13\14\16\17\04\05\06?AbI\07\08\09\0A\0B\0C\0D\0E\05\06\00\\\00\00\07\08\09\0A\0B\0C\0D\0E\04\00\00O\00\00\00SB\00\00\00\00\00\04\05\06\00DTU\07\08\09\0A\0B\0C\0D\0E\05\06\00\00\00\00\07\08\09\0A\0B\0C\0D\0E\04\00*,.G13\00\00\00\00\00\00\04\05\06\00\00\00J\07\08\09\0A\0B\0C\0D\0E\05\06\00\00\00\00\07\08\09\0A\0B\0C\0D\0E\04\00\00\00\00\00\00L\00\00\00\00\00\00\04\05\06\00\00\00\00\07\08\09\0A\0B\0C\0D\0E\05\06\00\00\00\00\07\08\09\0A\0B\0C\0D\0E)+-/0245\00\00\00\00\00\00\00\00\00)+-02", align 16
@yydefact = internal unnamed_addr constant [116 x i8] c"\00\04/\00$#\00\12\14\16\1A\1C\1E \18\00\05\07///\00//\00\00\09\08(\00\00\01\22\02\06\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00%\03&\13\0A)\15\0B*\17\0E-\19\11\1B\0C+\1D\0D,\1F\0F!\10\003\000\00/C\001\00/\005.'B2A\00:8\00<4E\006\00@\00\00?\00D7;9=", align 16
@yyr2 = internal unnamed_addr constant [70 x i8] c"\00\02\03\03\01\01\02\01\01\01\03\03\03\03\03\03\03\03\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\01\01\02\00\06\01\03\03\03\03\03\01\00\01\02\03\00\04\01\02\03\00\04\00\04\00\04\00\03\02\01\02\01\02\01", align 16
@.str = private unnamed_addr constant [51 x i8] c"Syntax error: non-space string used before <TABLE>\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Syntax error: non-space string used after </TABLE>\00", align 1
@yyr1 = internal unnamed_addr constant [70 x i8] c"\00)***+,,----------./0123456789:;<=>>??A@BBBBBBCCDDDFEGGGIHJHKHLHMMNNOO", align 16
@yypgoto = internal unnamed_addr constant [39 x i16] [i16 -82, i16 -82, i16 -4, i16 232, i16 -10, i16 -1, i16 26, i16 0, i16 39, i16 1, i16 50, i16 -82, i16 -82, i16 2, i16 36, i16 3, i16 47, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 -2, i16 148, i16 -82, i16 9, i16 27, i16 -82, i16 -68, i16 -82, i16 -82, i16 -81, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82, i16 -82], align 16
@yydefgoto = internal unnamed_addr constant [39 x i8] c"\00\03\0F\10\11#:$=%@\15C&E'H\18K\19M\1A(\1CN\1D\1EPQRYZlkncdWi", align 16
@.str.2 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [67 x i8] c"list element type is not a pointer, but `free` used as destructor\0A\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"integer overflow when trying to allocate %zu * %zu bytes\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @htmlparse(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %union.HTMLSTYPE, align 8           ; 6 uses
  %i.a = alloca [200 x i8], align 16              ; 6 uses
  %2 = alloca [200 x %union.HTMLSTYPE], align 16  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store i64 0, ptr %1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 16 uses
  %i.c = getelementptr i8, ptr %0, i64 136        ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 36 uses
  %i.f = getelementptr i8, ptr %0, i64 360        ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge, %bb.dg, %bb.t
  %.0287 = phi i32 [ 3, %._crit_edge ], [ %.1288, %bb.dg ], [ %spec.select, %bb.t ]
  %.0270 = phi ptr [ %.4274, %._crit_edge ], [ %i.na, %bb.dg ], [ %.3273, %bb.t ]
  %.0258 = phi ptr [ %i.nz, %._crit_edge ], [ %i.nb, %bb.dg ], [ %i.be, %bb.t ]
  %.0248 = phi i32 [ %16, %._crit_edge ], [ %i.ns, %bb.dg ], [ %i.bb, %bb.t ]
  %.0241 = phi i32 [ %.6, %._crit_edge ], [ %.5, %bb.dg ], [ -2, %bb.t ]
  %i.k = getelementptr inbounds nuw i8, ptr %.0270, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1288 = phi i32 [ 0, %bb.a ], [ %.0287, %bb.b ] ; 3 uses
  %.0284 = phi i64 [ 200, %bb.a ], [ %.2286, %bb.b ] ; 4 uses
  %.0278 = phi ptr [ %i.a, %bb.a ], [ %.3281, %bb.b ] ; 7 uses
  %.1271 = phi ptr [ %i.a, %bb.a ], [ %i.k, %bb.b ] ; 4 uses
  %.0266 = phi ptr [ %2, %bb.a ], [ %.3269, %bb.b ] ; 2 uses
  %.1259 = phi ptr [ %2, %bb.a ], [ %.0258, %bb.b ]
  %.1249 = phi i32 [ 0, %bb.a ], [ %.0248, %bb.b ] ; 3 uses
  %.1 = phi i32 [ -2, %bb.a ], [ %.0241, %bb.b ]  ; 3 uses
  %i.l = trunc nsw i32 %.1249 to i8
  store i8 %i.l, ptr %.1271, align 1, !tbaa !8
  %i.m = getelementptr inbounds i8, ptr %.0278, i64 %.0284
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -1
  %.not = icmp ugt ptr %i.n, %.1271
  br i1 %.not, label %.thread387, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = ptrtoint ptr %.1271 to i64
  %i.p = ptrtoint ptr %.0278 to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = add nsw i64 %i.q, 1                      ; 3 uses
  %i.s = icmp sgt i64 %.0284, 9999
  br i1 %i.s, label %bb.dm, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = shl nsw i64 %.0284, 1
  %spec.store.select = call i64 @llvm.smin.i64(i64 %i.t, i64 10000) ; 4 uses
  %i.u = mul nsw i64 %spec.store.select, 9
  %i.v = add nsw i64 %i.u, 7
  %i.w = call noalias ptr @malloc(i64 noundef %i.v) #19 ; 6 uses
  %.not302.not = icmp eq ptr %i.w, null
  br i1 %.not302.not, label %bb.dm, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 1 %.0278, i64 %i.r, i1 false)
  %i.x = add nsw i64 %spec.store.select, 7
  %i.y = sdiv i64 %i.x, 8
  %i.z = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.y ; 3 uses
  %i.aa = shl i64 %i.r, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %.0266, i64 %i.aa, i1 false)
  %.not303 = icmp eq ptr %.0278, %i.a
  br i1 %.not303, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %.0278) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ab = getelementptr inbounds i8, ptr %i.w, i64 %i.q
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.r
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.ae = add nsw i64 %spec.store.select, -1
  %.not304 = icmp sgt i64 %i.ae, %i.q
  br i1 %.not304, label %.thread387, label %.loopexit398.thread

.thread387:                                       ; preds = %bb.h, %bb.c
  %.2286 = phi i64 [ %.0284, %bb.c ], [ %spec.store.select, %bb.h ]
  %.3281 = phi ptr [ %.0278, %bb.c ], [ %i.w, %bb.h ] ; 8 uses
  %.3273 = phi ptr [ %.1271, %bb.c ], [ %i.ab, %bb.h ] ; 3 uses
  %.3269 = phi ptr [ %.0266, %bb.c ], [ %i.z, %bb.h ]
  %.3261 = phi ptr [ %.1259, %bb.c ], [ %i.ad, %bb.h ] ; 49 uses
  %i.af = icmp eq i32 %.1249, 31
  br i1 %i.af, label %.loopexit398, label %bb.i

bb.i:                                             ; preds = %.thread387
  %i.ag = sext i32 %.1249 to i64                  ; 2 uses
  %i.ah = getelementptr inbounds [2 x i8], ptr @yypact, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !64 ; 3 uses
  %i.aj = sext i16 %i.ai to i32
  %i.ak = icmp eq i16 %i.ai, -82
  br i1 %i.ak, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = icmp eq i32 %.1, -2
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = call i32 @htmllex(ptr noundef nonnull %1, ptr noundef %0) #18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2 = phi i32 [ %i.am, %bb.k ], [ %.1, %bb.j ]  ; 6 uses
  %i.an = icmp slt i32 %.2, 1
  br i1 %i.an, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = icmp eq i32 %.2, 256
  br i1 %i.ao, label %3, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp samesign ult i32 %.2, 296
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aq = zext nneg i32 %.2 to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8
  %i.at = sext i8 %i.as to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %.0255 = phi i32 [ 0, %bb.l ], [ %i.at, %bb.o ], [ 2, %bb.n ] ; 2 uses
  %.3 = phi i32 [ 0, %bb.l ], [ %.2, %bb.o ], [ %.2, %bb.n ] ; 3 uses
  %i.au = add nsw i32 %.0255, %i.aj               ; 2 uses
  %or.cond3 = icmp ugt i32 %i.au, 271
  br i1 %or.cond3, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = zext nneg i32 %i.au to i64              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr @yycheck, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !8
  %i.ay = sext i8 %i.ax to i32
  %.not305 = icmp eq i32 %.0255, %i.ay
  br i1 %.not305, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr @yytable, i64 %i.av
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !8   ; 2 uses
  %i.bb = sext i8 %i.ba to i32                    ; 2 uses
  %i.bc = icmp slt i8 %i.ba, 1
  br i1 %i.bc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bd = sub nsw i32 0, %i.bb
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %spec.select = call i32 @llvm.usub.sat.i32(i32 %.1288, i32 1)
  %i.be = getelementptr inbounds nuw i8, ptr %.3261, i64 8 ; 2 uses
  %i.bf = load i64, ptr %1, align 8, !tbaa !8
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !8
  br label %bb.b

bb.u:                                             ; preds = %bb.p, %bb.q, %bb.i
  %.4 = phi i32 [ %.1, %bb.i ], [ %.3, %bb.p ], [ %.3, %bb.q ] ; 6 uses
  %i.bg = getelementptr inbounds i8, ptr @yydefact, i64 %i.ag
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !8   ; 2 uses
  %i.bi = sext i8 %i.bh to i32
  %i.bj = icmp eq i8 %i.bh, 0
  br i1 %i.bj, label %bb.dh, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.0257 = phi i32 [ %i.bi, %bb.u ], [ %i.bd, %bb.s ] ; 2 uses
  %.5 = phi i32 [ %.4, %bb.u ], [ %.3, %bb.s ]
  %i.bk = sext i32 %.0257 to i64                  ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr @yyr2, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !8   ; 2 uses
  %i.bn = sext i8 %i.bm to i64
  %i.bo = sub nsw i64 1, %i.bn
  %i.bp = getelementptr inbounds [8 x i8], ptr %.3261, i64 %i.bo
  %.sroa.038.0.copyload = load ptr, ptr %i.bp, align 8, !tbaa !8 ; 28 uses
  switch i32 %.0257, label %bb.dc [
    i32 2, label %bb.w
    i32 3, label %bb.y
    i32 4, label %bb.aa
    i32 5, label %bb.ab
    i32 8, label %bb.ac
    i32 9, label %bb.af
    i32 18, label %bb.ag
    i32 19, label %bb.ah
    i32 20, label %bb.ak
    i32 21, label %bb.al
    i32 22, label %bb.ao
    i32 23, label %bb.ap
    i32 24, label %bb.as
    i32 25, label %bb.at
    i32 26, label %bb.aw
    i32 27, label %bb.ax
    i32 28, label %bb.ba
    i32 29, label %bb.bb
    i32 30, label %bb.be
    i32 31, label %bb.bf
    i32 32, label %bb.bi
    i32 33, label %bb.bj
    i32 34, label %bb.bm
    i32 35, label %bb.bn
    i32 38, label %bb.bo
    i32 39, label %bb.bt
    i32 40, label %bb.by
    i32 41, label %bb.bz
    i32 42, label %bb.ca
    i32 43, label %bb.cb
    i32 44, label %bb.cc
    i32 45, label %bb.cd
    i32 48, label %bb.ce
    i32 49, label %bb.cf
    i32 50, label %bb.cg
    i32 51, label %bb.ch
    i32 52, label %bb.ck
    i32 53, label %bb.cl
    i32 54, label %bb.cm
    i32 55, label %bb.cn
    i32 56, label %bb.co
    i32 57, label %bb.cq
    i32 58, label %bb.cr
    i32 59, label %bb.ct
    i32 60, label %bb.cu
    i32 61, label %bb.cw
    i32 62, label %bb.cx
    i32 63, label %bb.cz
    i32 64, label %bb.da
    i32 65, label %bb.db
  ]

bb.w:                                             ; preds = %bb.v
  %i.bq = getelementptr inbounds i8, ptr %.3261, i64 -8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !8
  %i.bs = call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef range(i64 1, 73) 16) #20 ; 4 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.x, label %mkLabel.exit

bb.x:                                             ; preds = %bb.w
  %i.bu = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.bv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bu, ptr noundef nonnull @.str.10, i64 noundef 16) #21 ; 0 uses
  call fastcc void @graphviz_exit() #22
  unreachable

mkLabel.exit:                                     ; preds = %bb.w
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i32 2, ptr %i.bw, align 8, !tbaa !65
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !8
  store ptr %i.bs, ptr %i.b, align 8, !tbaa !33
  br label %bb.dc

bb.y:                                             ; preds = %bb.v
  %i.bx = getelementptr inbounds i8, ptr %.3261, i64 -8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !8
  %i.bz = call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef range(i64 1, 73) 16) #20 ; 4 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.z, label %mkLabel.exit317

bb.z:                                             ; preds = %bb.y
  %i.cb = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.cc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cb, ptr noundef nonnull @.str.10, i64 noundef 16) #21 ; 0 uses
  call fastcc void @graphviz_exit() #22
  unreachable

mkLabel.exit317:                                  ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i32 1, ptr %i.cd, align 8, !tbaa !65
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !8
  store ptr %i.bz, ptr %i.b, align 8, !tbaa !33
  br label %bb.dc

bb.aa:                                            ; preds = %bb.v
  call fastcc void @cleanup(ptr noundef nonnull %i.b)
  br label %.loopexit398

bb.ab:                                            ; preds = %bb.v
  %i.ce = call fastcc ptr @mkText(ptr noundef nonnull %i.b)
  br label %bb.dc

bb.ac:                                            ; preds = %bb.v
  %i.cf = load ptr, ptr %i.d, align 8, !tbaa !34  ; 5 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 31
  %.val.i.i = load i8, ptr %i.cg, align 1, !tbaa !8 ; 2 uses
  %.not.i.i = icmp eq i8 %.val.i.i, -1
  br i1 %.not.i.i, label %bb.ae, label %agxblen.exit.i.i

agxblen.exit.i.i:                                 ; preds = %bb.ac
  %i.ch = zext i8 %.val.i.i to i64                ; 2 uses
  %i.ci = call noalias ptr @strndup(ptr noundef nonnull readonly %i.cf, i64 noundef %i.ch) #18 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.ad, label %appendFItemList.exit

bb.ad:                                            ; preds = %agxblen.exit.i.i
  %i.ck = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.cl = add nuw nsw i64 %i.ch, 1
  %i.cm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ck, ptr noundef nonnull @.str.10, i64 noundef %i.cl) #21 ; 0 uses
  call fastcc void @graphviz_exit() #22
  unreachable

bb.ae:                                            ; preds = %bb.ac
  call fastcc void @agxbputc(ptr noundef nonnull %i.cf)
  %i.cn = load ptr, ptr %i.cf, align 8, !tbaa !8
  br label %appendFItemList.exit

appendFItemList.exit:                             ; preds = %agxblen.exit.i.i, %bb.ae
  %.0.i.i = phi ptr [ %i.cn, %bb.ae ], [ %i.ci, %agxblen.exit.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i8 0, i64 32, i1 false)
  %i.co = load ptr, ptr %i.e, align 8, !tbaa !8
  %.val.i = load i64, ptr %i.f, align 8, !tbaa !36
  %i.cp = add i64 %.val.i, -1
  %i.cq = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.e, i64 noundef %i.cp) #18
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !37
  store ptr %.0.i.i, ptr %i.j, align 8, !tbaa !38
  store ptr %i.cs, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !37
end_hunk_0
begin_hunk_1_@htmlparse:bb.a

setCell.exit:                                     ; preds = %bb.co, %bb.cp
  %i.js = getelementptr inbounds nuw i8, ptr %i.iw, i64 112
  store ptr %i.ix, ptr %i.js, align 8, !tbaa !8
  br label %bb.dc

bb.cq:                                            ; preds = %bb.v
  %i.jt = getelementptr inbounds i8, ptr %.3261, i64 -24
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !8
  br label %bb.dc

bb.cr:                                            ; preds = %bb.v
  %i.jv = getelementptr inbounds i8, ptr %.3261, i64 -8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !8  ; 4 uses
  %i.jx = load ptr, ptr %.3261, align 8, !tbaa !8
  %.val315 = load ptr, ptr %i.c, align 8, !tbaa !49 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.val315, i64 112 ; 2 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !8
  %i.ka = getelementptr i8, ptr %.val315, i64 128
  %.val.i362 = load i64, ptr %i.ka, align 8, !tbaa !36
  %i.kb = add i64 %.val.i362, -1
  %i.kc = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.jy, i64 noundef %i.kb) #18
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.kc
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !37 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 40 ; 2 uses
  store ptr %i.jw, ptr %i.kf, align 8, !tbaa !71
  %i.kg = call i64 @gv_list_append_slot_(ptr noundef %i.ke, i64 noundef 8) #18
  %i.kh = load ptr, ptr %i.kf, align 8, !tbaa !71
  %i.ki = load ptr, ptr %i.ke, align 8, !tbaa !8
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %i.kg
  store ptr %i.kh, ptr %i.kj, align 8, !tbaa !50
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jw, i64 120
  store i32 2, ptr %i.kk, align 8, !tbaa !52
  %i.kl = getelementptr inbounds nuw i8, ptr %.val315, i64 208
  %i.km = load i8, ptr %i.kl, align 8
  %i.kn = and i8 %i.km, 2
  %.not.i363 = icmp eq i8 %i.kn, 0
  br i1 %.not.i363, label %setCell.exit364, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jw, i64 136 ; 2 uses
  %i.kp = load i8, ptr %i.ko, align 8
  %i.kq = and i8 %i.kp, -4
  %i.kr = or disjoint i8 %i.kq, 1
  store i8 %i.kr, ptr %i.ko, align 8
  br label %setCell.exit364

setCell.exit364:                                  ; preds = %bb.cr, %bb.cs
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jw, i64 112
  store ptr %i.jx, ptr %i.ks, align 8, !tbaa !8
  br label %bb.dc

bb.ct:                                            ; preds = %bb.v
  %i.kt = getelementptr inbounds i8, ptr %.3261, i64 -24
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !8
  br label %bb.dc

bb.cu:                                            ; preds = %bb.v
  %i.kv = getelementptr inbounds i8, ptr %.3261, i64 -8
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !8  ; 4 uses
  %i.kx = load ptr, ptr %.3261, align 8, !tbaa !8
  %.val314 = load ptr, ptr %i.c, align 8, !tbaa !49 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.val314, i64 112 ; 2 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !8
  %i.la = getelementptr i8, ptr %.val314, i64 128
  %.val.i365 = load i64, ptr %i.la, align 8, !tbaa !36
  %i.lb = add i64 %.val.i365, -1
  %i.lc = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.ky, i64 noundef %i.lb) #18
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %i.lc
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !37 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 40 ; 2 uses
  store ptr %i.kw, ptr %i.lf, align 8, !tbaa !71
  %i.lg = call i64 @gv_list_append_slot_(ptr noundef %i.le, i64 noundef 8) #18
  %i.lh = load ptr, ptr %i.lf, align 8, !tbaa !71
  %i.li = load ptr, ptr %i.le, align 8, !tbaa !8
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.lg
  store ptr %i.lh, ptr %i.lj, align 8, !tbaa !50
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kw, i64 120
  store i32 3, ptr %i.lk, align 8, !tbaa !52
  %i.ll = getelementptr inbounds nuw i8, ptr %.val314, i64 208
  %i.lm = load i8, ptr %i.ll, align 8
  %i.ln = and i8 %i.lm, 2
  %.not.i366 = icmp eq i8 %i.ln, 0
  br i1 %.not.i366, label %setCell.exit367, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kw, i64 136 ; 2 uses
  %i.lp = load i8, ptr %i.lo, align 8
  %i.lq = and i8 %i.lp, -4
  %i.lr = or disjoint i8 %i.lq, 1
  store i8 %i.lr, ptr %i.lo, align 8
  br label %setCell.exit367

setCell.exit367:                                  ; preds = %bb.cu, %bb.cv
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kw, i64 112
  store ptr %i.kx, ptr %i.ls, align 8, !tbaa !8
  br label %bb.dc

bb.cw:                                            ; preds = %bb.v
  %i.lt = getelementptr inbounds i8, ptr %.3261, i64 -24
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !8
  br label %bb.dc

bb.cx:                                            ; preds = %bb.v
  %i.lv = load ptr, ptr %.3261, align 8, !tbaa !8 ; 4 uses
  %i.lw = call fastcc ptr @mkText(ptr noundef nonnull %i.b)
  %.val313 = load ptr, ptr %i.c, align 8, !tbaa !49 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.val313, i64 112 ; 2 uses
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !8
  %i.lz = getelementptr i8, ptr %.val313, i64 128
  %.val.i368 = load i64, ptr %i.lz, align 8, !tbaa !36
  %i.ma = add i64 %.val.i368, -1
  %i.mb = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.lx, i64 noundef %i.ma) #18
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %i.mb
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !37 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 40 ; 2 uses
  store ptr %i.lv, ptr %i.me, align 8, !tbaa !71
  %i.mf = call i64 @gv_list_append_slot_(ptr noundef %i.md, i64 noundef 8) #18
  %i.mg = load ptr, ptr %i.me, align 8, !tbaa !71
  %i.mh = load ptr, ptr %i.md, align 8, !tbaa !8
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.mf
  store ptr %i.mg, ptr %i.mi, align 8, !tbaa !50
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lv, i64 120
  store i32 2, ptr %i.mj, align 8, !tbaa !52
  %i.mk = getelementptr inbounds nuw i8, ptr %.val313, i64 208
  %i.ml = load i8, ptr %i.mk, align 8
  %i.mm = and i8 %i.ml, 2
  %.not.i369 = icmp eq i8 %i.mm, 0
  br i1 %.not.i369, label %setCell.exit370, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lv, i64 136 ; 2 uses
  %i.mo = load i8, ptr %i.mn, align 8
  %i.mp = and i8 %i.mo, -4
  %i.mq = or disjoint i8 %i.mp, 1
  store i8 %i.mq, ptr %i.mn, align 8
  br label %setCell.exit370

setCell.exit370:                                  ; preds = %bb.cx, %bb.cy
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lv, i64 112
  store ptr %i.lw, ptr %i.mr, align 8, !tbaa !8
  br label %bb.dc

bb.cz:                                            ; preds = %bb.v
  %i.ms = getelementptr inbounds i8, ptr %.3261, i64 -16
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !8
  br label %bb.dc

bb.da:                                            ; preds = %bb.v
  %i.mu = getelementptr inbounds i8, ptr %.3261, i64 -8
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !8
  br label %bb.dc

bb.db:                                            ; preds = %bb.v
  %i.mw = load ptr, ptr %.3261, align 8, !tbaa !8
  br label %bb.dc

bb.dc:                                            ; preds = %bb.v, %bb.db, %bb.da, %bb.cz, %setCell.exit370, %bb.cw, %setCell.exit367, %bb.ct, %setCell.exit364, %bb.cq, %setCell.exit, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %addRow.exit, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bs, %bb.bn, %bb.bm, %popFont.exit346, %bb.bi, %popFont.exit342, %bb.be, %popFont.exit338, %bb.ba, %popFont.exit334, %bb.aw, %popFont.exit330, %bb.as, %popFont.exit326, %bb.ao, %popFont.exit322, %bb.ak, %popFont.exit, %bb.ag, %bb.af, %appendFItemList.exit, %bb.ab, %mkLabel.exit317, %mkLabel.exit
  %.sroa.038.0 = phi ptr [ %.sroa.038.0.copyload, %bb.v ], [ %.sroa.038.0.copyload, %mkLabel.exit ], [ %.sroa.038.0.copyload, %mkLabel.exit317 ], [ %i.ce, %bb.ab ], [ %.sroa.038.0.copyload, %appendFItemList.exit ], [ %.sroa.038.0.copyload, %bb.af ], [ %.sroa.038.0.copyload, %bb.ag ], [ %.sroa.038.0.copyload, %popFont.exit ], [ %.sroa.038.0.copyload, %bb.ak ], [ %.sroa.038.0.copyload, %popFont.exit322 ], [ %.sroa.038.0.copyload, %bb.ao ], [ %.sroa.038.0.copyload, %popFont.exit326 ], [ %.sroa.038.0.copyload, %bb.as ], [ %.sroa.038.0.copyload, %popFont.exit330 ], [ %.sroa.038.0.copyload, %bb.aw ], [ %.sroa.038.0.copyload, %popFont.exit334 ], [ %.sroa.038.0.copyload, %bb.ba ], [ %.sroa.038.0.copyload, %popFont.exit338 ], [ %.sroa.038.0.copyload, %bb.be ], [ %.sroa.038.0.copyload, %popFont.exit342 ], [ %.sroa.038.0.copyload, %bb.bi ], [ %.sroa.038.0.copyload, %popFont.exit346 ], [ %i.fu, %bb.bm ], [ %i.fx, %bb.bn ], [ %i.gr, %bb.bs ], [ %i.gy, %bb.bx ], [ %i.hb, %bb.by ], [ %i.hd, %bb.bz ], [ %i.hf, %bb.ca ], [ %i.hh, %bb.cb ], [ %i.hj, %bb.cc ], [ %i.hl, %bb.cd ], [ %i.hm, %bb.ce ], [ %i.hn, %bb.cf ], [ %i.hr, %bb.cg ], [ %.sroa.038.0.copyload, %addRow.exit ], [ %i.im, %bb.ck ], [ %i.in, %bb.cl ], [ %i.io, %bb.cm ], [ %i.iu, %bb.cn ], [ %.sroa.038.0.copyload, %setCell.exit ], [ %i.ju, %bb.cq ], [ %.sroa.038.0.copyload, %setCell.exit364 ], [ %i.ku, %bb.ct ], [ %.sroa.038.0.copyload, %setCell.exit367 ], [ %i.lu, %bb.cw ], [ %.sroa.038.0.copyload, %setCell.exit370 ], [ %i.mt, %bb.cz ], [ %i.mv, %bb.da ], [ %i.mw, %bb.db ]
  %i.mx = sext i8 %i.bm to i64
  %i.my = sub nsw i64 0, %i.mx                    ; 2 uses
  %i.mz = getelementptr inbounds [8 x i8], ptr %.3261, i64 %i.my
  %i.na = getelementptr inbounds i8, ptr %.3273, i64 %i.my ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 8 ; 2 uses
  store ptr %.sroa.038.0, ptr %i.nb, align 8, !tbaa !8
  %i.nc = getelementptr inbounds i8, ptr @yyr1, i64 %i.bk
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !8
  %i.ne = sext i8 %i.nd to i64
  %i.nf = add nsw i64 %i.ne, -41                  ; 2 uses
  %i.ng = getelementptr inbounds [2 x i8], ptr @yypgoto, i64 %i.nf
  %i.nh = load i16, ptr %i.ng, align 2, !tbaa !64
  %i.ni = sext i16 %i.nh to i32
  %i.nj = load i8, ptr %i.na, align 1, !tbaa !8   ; 2 uses
  %i.nk = sext i8 %i.nj to i32
  %i.nl = add nsw i32 %i.nk, %i.ni                ; 2 uses
  %or.cond5 = icmp ult i32 %i.nl, 272
  br i1 %or.cond5, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.nm = zext nneg i32 %i.nl to i64              ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr @yycheck, i64 %i.nm
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !8
  %i.np = icmp eq i8 %i.no, %i.nj
  br i1 %i.np, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.nq = getelementptr inbounds nuw i8, ptr @yytable, i64 %i.nm
  br label %bb.dg

bb.df:                                            ; preds = %bb.dd, %bb.dc
  %i.nr = getelementptr inbounds i8, ptr @yydefgoto, i64 %i.nf
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.in.in = phi ptr [ %i.nq, %bb.de ], [ %i.nr, %bb.df ]
  %.in = load i8, ptr %.in.in, align 1, !tbaa !8
  %i.ns = sext i8 %.in to i32
  br label %bb.b

bb.dh:                                            ; preds = %bb.u
  switch i32 %.1288, label %3 [
    i32 0, label %.thread394
    i32 3, label %bb.di
  ]

.thread394:                                       ; preds = %bb.dh
  call void @htmlerror(ptr noundef %0, ptr noundef nonnull @.str.2) #18
  br label %3

bb.di:                                            ; preds = %bb.dh
  %i.nt = icmp slt i32 %.4, 1
  br i1 %i.nt, label %bb.dj, label %3

bb.dj:                                            ; preds = %bb.di
  %i.nu = icmp eq i32 %.4, 0
  br i1 %i.nu, label %.loopexit398, label %3

3:                                                ; preds = %bb.dh, %bb.di, %.thread394, %bb.m, %bb.dj
  %.6 = phi i32 [ %.4, %bb.dj ], [ %.4, %.thread394 ], [ %.4, %bb.dh ], [ 257, %bb.m ], [ -2, %bb.di ]
  br label %4

4:                                                ; preds = %bb.dl, %3
  %5 = phi i16 [ %i.ai, %3 ], [ %.pre, %bb.dl ]   ; 2 uses
  %.4274 = phi ptr [ %.3273, %3 ], [ %i.nx, %bb.dl ] ; 3 uses
  %.4262 = phi ptr [ %.3261, %3 ], [ %i.nw, %bb.dl ] ; 2 uses
  %6 = icmp sgt i16 %5, -2
  br i1 %6, label %bb.dk, label %14

bb.dk:                                            ; preds = %4
  %7 = sext i16 %5 to i64
  %8 = add nsw i64 %7, 1                          ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr @yycheck, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !8
  %i.nv = icmp eq i8 %10, 1
  br i1 %i.nv, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %bb.dk
  %11 = getelementptr inbounds nuw i8, ptr @yytable, i64 %8
  %12 = load i8, ptr %11, align 1, !tbaa !8       ; 2 uses
  %13 = icmp sgt i8 %12, 0
  br i1 %13, label %._crit_edge, label %14

14:                                               ; preds = %bb.dk, %.lr.ph, %4
  %15 = icmp eq ptr %.4274, %.3281
  br i1 %15, label %.loopexit398, label %bb.dl

bb.dl:                                            ; preds = %14
  %i.nw = getelementptr inbounds i8, ptr %.4262, i64 -8
  %i.nx = getelementptr inbounds i8, ptr %.4274, i64 -1 ; 2 uses
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !8
  %.phi.trans.insert = sext i8 %i.ny to i64
  %.phi.trans.insert494 = getelementptr inbounds [2 x i8], ptr @yypact, i64 %.phi.trans.insert
  %.pre = load i16, ptr %.phi.trans.insert494, align 2, !tbaa !64
  br label %4

._crit_edge:                                      ; preds = %.lr.ph
  %16 = zext nneg i8 %12 to i32
  %i.nz = getelementptr inbounds nuw i8, ptr %.4262, i64 8 ; 2 uses
  %i.oa = load i64, ptr %1, align 8, !tbaa !8
  store i64 %i.oa, ptr %i.nz, align 8, !tbaa !8
  br label %bb.b

bb.dm:                                            ; preds = %bb.d, %bb.e
  call void @htmlerror(ptr noundef %0, ptr noundef nonnull @.str.5) #18
  br label %.loopexit398

.loopexit398:                                     ; preds = %.thread387, %bb.dj, %14, %bb.aa, %bb.br, %bb.bw, %bb.dm
  %.5283 = phi ptr [ %.0278, %bb.dm ], [ %.3281, %bb.br ], [ %.3281, %bb.bw ], [ %.3281, %14 ], [ %.3281, %bb.aa ], [ %.3281, %bb.dj ], [ %.3281, %.thread387 ] ; 2 uses
  %.0256 = phi i32 [ 2, %bb.dm ], [ 1, %bb.br ], [ 1, %bb.bw ], [ 1, %14 ], [ 1, %bb.aa ], [ 1, %bb.dj ], [ 0, %.thread387 ] ; 2 uses
  %.not310 = icmp eq ptr %.5283, %i.a
  br i1 %.not310, label %bb.dn, label %.loopexit398.thread

.loopexit398.thread:                              ; preds = %bb.h, %.loopexit398
  %.0256506 = phi i32 [ %.0256, %.loopexit398 ], [ 1, %bb.h ]
  %.5283505 = phi ptr [ %.5283, %.loopexit398 ], [ %i.w, %bb.h ]
  call void @free(ptr noundef %.5283505) #18
  br label %bb.dn

bb.dn:                                            ; preds = %.loopexit398, %.loopexit398.thread
  %.0256507 = phi i32 [ %.0256, %.loopexit398 ], [ %.0256506, %.loopexit398.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret i32 %.0256507
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

declare i32 @htmllex(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @cleanup(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !76     ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free_html_label(ptr noundef nonnull %i.c, i32 noundef 1) #18
  store ptr null, ptr %0, align 8, !tbaa !76
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not5164 = icmp eq ptr %i.b, null
  br i1 %.not5164, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val5966 = load i64, ptr %i.e, align 8, !tbaa !36
  %.not81 = icmp eq i64 %.val5966, 0
  br i1 %.not81, label %._crit_edge, label %.lr.ph68

.lr.ph68:                                         ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.065 = phi ptr [ %i.h, %.lr.ph ], [ %i.b, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.065, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8    ; 2 uses
  tail call fastcc void @cleanTbl(ptr noundef nonnull %.065)
  %.not51 = icmp eq ptr %i.h, null
  br i1 %.not51, label %.preheader, label %.lr.ph, !llvm.loop !72

._crit_edge:                                      ; preds = %bb.g, %.preheader
  tail call void @gv_list_clear_(ptr noundef nonnull %i.d, i64 noundef 72) #18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 144        ; 2 uses
  %.val5869 = load i64, ptr %i.j, align 8, !tbaa !36
  %.not82 = icmp eq i64 %.val5869, 0
  br i1 %.not82, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  br label %bb.h

bb.d:                                             ; preds = %.lr.ph68, %bb.g
  %.04667 = phi i64 [ 0, %.lr.ph68 ], [ %i.q, %bb.g ] ; 2 uses
  %i.l = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.d, i64 noundef %.04667) #18
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !54   ; 2 uses
  %magicptr = ptrtoint ptr %i.m to i64
  switch i64 %magicptr, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite55 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 66, i64 1, ptr %i.n) #23 ; 0 uses
  tail call void @abort() #24
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %i.l
  tail call void %i.m(ptr noundef byval(%struct.textspan_t) align 8 %i.p) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %i.q = add nuw i64 %.04667, 1                   ; 2 uses
  %.val59 = load i64, ptr %i.e, align 8, !tbaa !36
  %i.r = icmp ult i64 %i.q, %.val59
  br i1 %i.r, label %bb.d, label %._crit_edge, !llvm.loop !73

._crit_edge73:                                    ; preds = %bb.k, %._crit_edge
  tail call void @gv_list_clear_(ptr noundef nonnull %i.i, i64 noundef 40) #18
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %i.t = getelementptr i8, ptr %0, i64 232        ; 2 uses
  %.val75 = load i64, ptr %i.t, align 8, !tbaa !36
  %.not83 = icmp eq i64 %.val75, 0
  br i1 %.not83, label %._crit_edge79, label %.lr.ph78

.lr.ph78:                                         ; preds = %._crit_edge73
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 248
  br label %bb.l

bb.h:                                             ; preds = %.lr.ph72, %bb.k
  %.04570 = phi i64 [ 0, %.lr.ph72 ], [ %i.aa, %bb.k ] ; 2 uses
  %i.v = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.i, i64 noundef %.04570) #18
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !55   ; 2 uses
  %magicptr56 = ptrtoint ptr %i.w to i64
  switch i64 %magicptr56, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.8, i64 66, i64 1, ptr %i.x) #23 ; 0 uses
  tail call void @abort() #24
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.y, i64 %i.v
  tail call void %i.w(ptr noundef byval(%struct.htextspan_t) align 8 %i.z) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  %i.aa = add nuw i64 %.04570, 1                  ; 2 uses
  %.val58 = load i64, ptr %i.j, align 8, !tbaa !36
  %i.ab = icmp ult i64 %i.aa, %.val58
  br i1 %i.ab, label %bb.h, label %._crit_edge73, !llvm.loop !74

._crit_edge79:                                    ; preds = %bb.o, %._crit_edge73
  tail call void @gv_list_clear_(ptr noundef nonnull %i.s, i64 noundef 8) #18
  tail call void @gv_list_free_(ptr noundef nonnull %i.s) #18
  ret void

bb.l:                                             ; preds = %.lr.ph78, %bb.o
  %.04476 = phi i64 [ 0, %.lr.ph78 ], [ %i.aj, %bb.o ] ; 2 uses
  %i.ac = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.s, i64 noundef %.04476) #18 ; 2 uses
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !41  ; 2 uses
  %magicptr57 = ptrtoint ptr %i.ad to i64
  switch i64 %magicptr57, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  %.0.copyload = load ptr, ptr %i.af, align 8
  tail call void @free(ptr noundef %.0.copyload) #18
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ac
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !37
  tail call void %i.ad(ptr noundef %i.ai) #18
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.m
  %i.aj = add nuw i64 %.04476, 1                  ; 2 uses
  %.val = load i64, ptr %i.t, align 8, !tbaa !36
  %i.ak = icmp ult i64 %i.aj, %.val
  br i1 %i.ak, label %bb.l, label %._crit_edge79, !llvm.loop !75
}

; Function Attrs: nounwind uwtable
define internal fastcc noalias nonnull ptr @mkText(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef range(i64 1, 73) 56) #20 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %gv_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.10, i64 noundef 56) #21 ; 0 uses
  tail call fastcc void @graphviz_exit() #22
  unreachable

end_hunk_1
