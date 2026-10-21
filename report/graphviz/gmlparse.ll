Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/gmlparse?download=true
inline.NumInlined: 126
inline.NumDeleted: 34
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.GMLSTYPE = type { ptr }
%struct.anon.7 = type { %union.anon.8, ptr, ptr }
%union.anon.8 = type { %struct.list_t_ }
%struct.list_t_ = type { ptr, i64, i64, i64 }
%struct.Agdesc_s = type { i8, [3 x i8] }
%struct.agxbuf = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, i64, i64, [7 x i8], i8 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@gmlchar = dso_local local_unnamed_addr global i32 0, align 4
@yypact = internal unnamed_addr constant [102 x i16] [i16 1, i16 -29, i16 -24, i16 0, i16 2, i16 3, i16 5, i16 11, i16 11, i16 6, i16 17, i16 18, i16 19, i16 22, i16 -21, i16 -28, i16 11, i16 11, i16 21, i16 24, i16 25, i16 28, i16 12, i16 54, i16 52, i16 193, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 30, i16 -29, i16 193, i16 58, i16 -29, i16 51, i16 -29, i16 -29, i16 59, i16 60, i16 30, i16 78, i16 58, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 80, i16 81, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 168, i16 143, i16 90, i16 113, i16 -29, i16 -29, i16 91, i16 114, i16 115, i16 85, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29, i16 -29], align 16
@yytranslate = internal unnamed_addr constant [290 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02#\02$\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22", align 16
@yycheck = internal unnamed_addr constant [227 x i8] c"\19\00\01\1F\03\1D\1E#\1D\1E\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1E\08\1E\1E!<\1F\1F\0F\10\11\1D\1E\1FE\16##\1F\1F\1F\1D\1F\1D\00\03\1FRS\1FU\03\04\05\06#[\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C$\1D\1D !\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C$## !\1D\1D$\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\18\1D\1D !UE$\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1CC[\FF !\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C;\FF\FF !\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\FF\FF\FF\FF!", align 16
@yytable = internal unnamed_addr constant [227 x i8] c":\FC\01+\DE\1B\1C!)*\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\1D#\1E\1F\16I $,-.345I6!!%&'(/0781W]2W8?@A<]\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15JMNB\16XY\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15PRSZ\16^ad\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\159bcT\16`Q_XY\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15Oe\00Z\16\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15>\00\00T\16\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\00\00\00\00\16", align 16
@gmllval = dso_local local_unnamed_addr global %union.GMLSTYPE zeroinitializer, align 8
@yydefact = internal unnamed_addr constant [102 x i8] c"\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00!$*)+,-.\1F/0123457689:;<>=?%&'(\01\05\00#\22\08\02\00\11\17\00\00\00\00\07\0A\0B\0C\10 \00\00\0E\0F\0D\06\09\00\00\00\00\14\16\00\00\00\00\1A\1E\15\12\13\1B\1C\1D\18\19", align 16
@yyr2 = internal unnamed_addr constant [64 x i8] c"\00\02\03\01\00\01\03\01\00\02\01\01\01\02\02\02\01\00\05\02\01\02\01\00\05\02\01\02\02\02\01\00\04\01\00\02\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02", align 16
@G = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [37 x i8] c"mixed directed and undirected graphs\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@N = internal unnamed_addr global ptr null, align 8
@E = internal unnamed_addr global ptr null, align 8
@L = internal unnamed_addr global ptr null, align 8
@yyr1 = internal unnamed_addr constant [64 x i8] c"\00%&&&'())**++++++-,..//10223333546677888888888888888888888888888", align 16
@yypgoto = internal unnamed_addr constant [20 x i16] [i16 -29, i16 -29, i16 118, i16 105, i16 -29, i16 -29, i16 79, i16 -29, i16 -29, i16 -29, i16 62, i16 -29, i16 -29, i16 -29, i16 82, i16 23, i16 -29, i16 138, i16 -29, i16 -25], align 16
@yydefgoto = internal unnamed_addr constant [20 x i8] c"\00\17C=DEFGKUVHL[\\\22;\18\19\1A", align 16
@gmlnerrs = dso_local local_unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@liststk = internal global %struct.anon.7 { %union.anon.8 zeroinitializer, ptr @free_attrs, ptr null }, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"directed\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"xval\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"yval\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"wval\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"hval\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"graphics\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"labelGraphics\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"fill\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"outline\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"outlineStyle\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"outlineWidth\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"style\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"point\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"fontSize\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"fontName\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@Agdirected = external local_unnamed_addr global %struct.Agdesc_s, align 4
@Agundirected = external local_unnamed_addr global %struct.Agdesc_s, align 4
@.str.44 = private unnamed_addr constant [29 x i8] c"node without an id attribute\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"edge without an source attribute\00", align 1
@.str.46 = private unnamed_addr constant [33 x i8] c"node without an target attribute\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"%.04f\00", align 1
@.str.49 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"shape\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"pencolor\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"penwidth\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"%s,%s\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"%s \22%s\22\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.61 = private unnamed_addr constant [34 x i8] c"non-point field in line attribute\00", align 1
@.str.62 = private unnamed_addr constant [33 x i8] c"non-X/Y field in point attribute\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"fontcolor\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"fontsize\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"fontname\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"LabelGraphics\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"lp\00", align 1
@switch.table.mkAttr = private unnamed_addr constant [199 x ptr] [ptr @.str.41, ptr null, ptr @.str.42, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.1, ptr @.str.39, ptr @.str.40], align 8

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 3) i32 @gmlparse() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 6 uses
  %0 = alloca [200 x %union.GMLSTYPE], align 16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  store i32 -2, ptr @gmlchar, align 4, !tbaa !11
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge, %bb.cn, %bb.v
  %.0196 = phi ptr [ %i.lv, %._crit_edge ], [ %i.ku, %bb.cn ], [ %i.ax, %bb.v ]
  %.0186 = phi ptr [ %.4190, %._crit_edge ], [ %i.kt, %bb.cn ], [ %.3189, %bb.v ]
  %.0177 = phi i32 [ 3, %._crit_edge ], [ %.1178, %bb.cn ], [ %spec.select, %bb.v ]
  %.0176 = phi i32 [ %13, %._crit_edge ], [ %i.ll, %bb.cn ], [ %i.au, %bb.v ]
  %i.b = getelementptr inbounds nuw i8, ptr %.0186, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1197 = phi ptr [ %0, %bb.a ], [ %.0196, %bb.b ]
  %.0192 = phi ptr [ %0, %bb.a ], [ %.3195, %bb.b ] ; 2 uses
  %.1187 = phi ptr [ %i.a, %bb.a ], [ %i.b, %bb.b ] ; 4 uses
  %.0183 = phi ptr [ %i.a, %bb.a ], [ %.3, %bb.b ] ; 7 uses
  %.0180 = phi i64 [ 200, %bb.a ], [ %.2182, %bb.b ] ; 4 uses
  %.1178 = phi i32 [ 0, %bb.a ], [ %.0177, %bb.b ] ; 3 uses
  %.1 = phi i32 [ 0, %bb.a ], [ %.0176, %bb.b ]   ; 3 uses
  %i.c = trunc nsw i32 %.1 to i8
  store i8 %i.c, ptr %.1187, align 1, !tbaa !12
  %i.d = getelementptr inbounds i8, ptr %.0183, i64 %.0180
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -1
  %.not = icmp ugt ptr %i.e, %.1187
  br i1 %.not, label %.thread270, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %.1187 to i64
  %i.g = ptrtoint ptr %.0183 to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = icmp sgt i64 %.0180, 9999
  br i1 %i.j, label %bb.cv, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = shl nsw i64 %.0180, 1
  %spec.store.select = call i64 @llvm.smin.i64(i64 %i.k, i64 10000) ; 4 uses
  %i.l = mul nsw i64 %spec.store.select, 9
  %i.m = add nsw i64 %i.l, 7
  %i.n = call noalias ptr @malloc(i64 noundef %i.m) #19 ; 6 uses
  %.not229.not = icmp eq ptr %i.n, null
  br i1 %.not229.not, label %bb.cv, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr align 1 %.0183, i64 %i.i, i1 false)
  %i.o = add nsw i64 %spec.store.select, 7
  %i.p = sdiv i64 %i.o, 8
  %i.q = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.p ; 3 uses
  %i.r = shl i64 %i.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr align 8 %.0192, i64 %i.r, i1 false)
  %.not230 = icmp eq ptr %.0183, %i.a
  br i1 %.not230, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %.0183) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.s = getelementptr inbounds i8, ptr %i.n, i64 %i.h
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.i
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.v = add nsw i64 %spec.store.select, -1
  %.not231 = icmp sgt i64 %i.v, %i.h
  br i1 %.not231, label %.thread270, label %.loopexit281.thread

.thread270:                                       ; preds = %bb.h, %bb.c
  %.3199 = phi ptr [ %.1197, %bb.c ], [ %i.u, %bb.h ] ; 48 uses
  %.3195 = phi ptr [ %.0192, %bb.c ], [ %i.q, %bb.h ]
  %.3189 = phi ptr [ %.1187, %bb.c ], [ %i.s, %bb.h ] ; 3 uses
  %.3 = phi ptr [ %.0183, %bb.c ], [ %i.n, %bb.h ] ; 7 uses
  %.2182 = phi i64 [ %.0180, %bb.c ], [ %spec.store.select, %bb.h ]
  %i.w = icmp eq i32 %.1, 55
  br i1 %i.w, label %.loopexit281, label %bb.i

bb.i:                                             ; preds = %.thread270
  %i.x = sext i32 %.1 to i64                      ; 2 uses
  %i.y = getelementptr inbounds [2 x i8], ptr @yypact, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2, !tbaa !48   ; 3 uses
  %i.aa = sext i16 %i.z to i32
  %i.ab = icmp eq i16 %i.z, -29
  br i1 %i.ab, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load i32, ptr @gmlchar, align 4, !tbaa !11 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, -2
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = call i32 @gmllex() #18                  ; 2 uses
  store i32 %i.ae, ptr @gmlchar, align 4, !tbaa !11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.af = phi i32 [ %i.ae, %bb.k ], [ %i.ac, %bb.j ] ; 4 uses
  %i.ag = icmp slt i32 %i.af, 1
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr @gmlchar, align 4, !tbaa !11
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.ah = icmp eq i32 %i.af, 256
  br i1 %i.ah, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 257, ptr @gmlchar, align 4, !tbaa !11
  br label %.preheader

bb.p:                                             ; preds = %bb.n
  %i.ai = icmp samesign ult i32 %i.af, 290
  br i1 %i.ai, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aj = zext nneg i32 %i.af to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !12
  %i.am = sext i8 %i.al to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.m
  %.0208 = phi i32 [ 0, %bb.m ], [ %i.am, %bb.q ], [ 2, %bb.p ] ; 2 uses
  %i.an = add nsw i32 %.0208, %i.aa               ; 2 uses
  %or.cond3 = icmp ugt i32 %i.an, 226
  br i1 %or.cond3, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = zext nneg i32 %i.an to i64              ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr @yycheck, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !12
  %i.ar = sext i8 %i.aq to i32
  %.not232 = icmp eq i32 %.0208, %i.ar
  br i1 %.not232, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr @yytable, i64 %i.ao
  %i.at = load i8, ptr %i.as, align 1, !tbaa !12  ; 2 uses
  %i.au = sext i8 %i.at to i32                    ; 2 uses
  %i.av = icmp slt i8 %i.at, 1
  br i1 %i.av, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.aw = sub nsw i32 0, %i.au
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %spec.select = call i32 @llvm.usub.sat.i32(i32 %.1178, i32 1)
  %i.ax = getelementptr inbounds nuw i8, ptr %.3199, i64 8 ; 2 uses
  %i.ay = load i64, ptr @gmllval, align 8, !tbaa !12
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !12
  store i32 -2, ptr @gmlchar, align 4, !tbaa !11
  br label %bb.b

bb.w:                                             ; preds = %bb.r, %bb.s, %bb.i
  %i.az = getelementptr inbounds i8, ptr @yydefact, i64 %i.x
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !12  ; 2 uses
  %i.bb = sext i8 %i.ba to i32
  %i.bc = icmp eq i8 %i.ba, 0
  br i1 %i.bc, label %bb.co, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.0204 = phi i32 [ %i.bb, %bb.w ], [ %i.aw, %bb.u ] ; 2 uses
  %i.bd = sext i32 %.0204 to i64                  ; 2 uses
  %i.be = getelementptr inbounds i8, ptr @yyr2, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !12  ; 2 uses
  %i.bg = sext i8 %i.bf to i64
  %i.bh = sub nsw i64 1, %i.bg
  %i.bi = getelementptr inbounds [8 x i8], ptr %.3199, i64 %i.bh
  %.sroa.0.0.copyload = load ptr, ptr %i.bi, align 8, !tbaa !12 ; 22 uses
  switch i32 %.0204, label %setDir.exit.thread [
    i32 2, label %bb.y
    i32 3, label %bb.aa
    i32 5, label %bb.ab
    i32 11, label %bb.ae
    i32 12, label %bb.af
    i32 14, label %bb.ag
    i32 15, label %bb.ak
    i32 16, label %bb.an
    i32 17, label %bb.ao
    i32 18, label %bb.aq
    i32 21, label %bb.ar
    i32 22, label %bb.as
    i32 23, label %bb.at
    i32 24, label %bb.av
    i32 27, label %bb.aw
    i32 28, label %bb.ax
    i32 29, label %bb.ay
    i32 30, label %bb.bb
    i32 31, label %bb.bc
    i32 32, label %bb.bf
    i32 35, label %bb.bh
    i32 36, label %bb.bi
    i32 37, label %bb.bj
    i32 38, label %bb.bk
    i32 39, label %bb.bl
    i32 40, label %bb.bm
    i32 41, label %bb.bn
    i32 42, label %bb.bo
    i32 43, label %bb.bp
    i32 44, label %bb.bq
    i32 45, label %bb.br
    i32 46, label %bb.bs
    i32 47, label %bb.bt
    i32 48, label %bb.bu
    i32 49, label %bb.bv
    i32 50, label %bb.bw
    i32 51, label %bb.bx
    i32 52, label %bb.by
    i32 53, label %bb.bz
    i32 54, label %bb.ca
    i32 55, label %bb.cb
    i32 56, label %bb.cc
    i32 57, label %bb.cd
    i32 58, label %bb.ce
    i32 59, label %bb.cf
    i32 60, label %bb.cg
    i32 61, label %bb.ch
    i32 62, label %bb.ci
    i32 63, label %bb.cj
  ]

bb.y:                                             ; preds = %bb.x
  call void @gmllexeof() #18
  %i.bj = load ptr, ptr @G, align 8, !tbaa !16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !49 ; 2 uses
  %.not235 = icmp eq ptr %i.bk, null
  br i1 %.not235, label %setDir.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %i.bk, ptr @G, align 8, !tbaa !16
  br label %setDir.exit.thread

bb.aa:                                            ; preds = %bb.x
  call fastcc void @cleanup()
  br label %.loopexit281

bb.ab:                                            ; preds = %bb.x
  %i.bl = call noalias dereferenceable_or_null(208) ptr @calloc(i64 noundef 1, i64 noundef range(i64 1, 209) 208) #20 ; 9 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.ac, label %gv_alloc.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.bn = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.bo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bn, ptr noundef nonnull @.str.9, i64 noundef 208) #21 ; 0 uses
  call fastcc void @graphviz_exit() #22
  unreachable

gv_alloc.exit.i:                                  ; preds = %bb.ab
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  store ptr @free_attr, ptr %i.bp, align 8, !tbaa !22
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  store ptr @free_node, ptr %i.bq, align 8, !tbaa !23
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  store ptr @free_edge, ptr %i.br, align 8, !tbaa !24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 192
  store ptr @free_graph, ptr %i.bs, align 8, !tbaa !25
  %i.bt = load ptr, ptr @G, align 8, !tbaa !16    ; 4 uses
  store ptr %i.bt, ptr %i.bl, align 8, !tbaa !49
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i32 -1, ptr %i.bu, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %pushG.exit, label %bb.ad

bb.ad:                                            ; preds = %gv_alloc.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 200
  store ptr %i.bl, ptr %i.bv, align 8, !tbaa !50
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 160
  %i.bx = call i64 @gv_list_append_slot_(ptr noundef nonnull %i.bw, i64 noundef 8) #18
  %i.by = load ptr, ptr @G, align 8, !tbaa !16    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 160
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 200
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !50
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !12
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.bx
  store ptr %i.cb, ptr %i.cd, align 8, !tbaa !16
  br label %pushG.exit

pushG.exit:                                       ; preds = %gv_alloc.exit.i, %bb.ad
  store ptr %i.bl, ptr @G, align 8, !tbaa !16
  br label %setDir.exit.thread

bb.ae:                                            ; preds = %bb.x
  %i.ce = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.cf = load ptr, ptr @G, align 8, !tbaa !16    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 104
  store ptr %i.ce, ptr %i.cg, align 8, !tbaa !51
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.ci = call i64 @gv_list_append_slot_(ptr noundef nonnull %i.ch, i64 noundef 8) #18
  %i.cj = load ptr, ptr @G, align 8, !tbaa !16    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 104
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !51
  %i.cn = load ptr, ptr %i.ck, align 8, !tbaa !12
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.ci
  store ptr %i.cm, ptr %i.co, align 8, !tbaa !27
  br label %setDir.exit.thread

bb.af:                                            ; preds = %bb.x
  %i.cp = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.cq = load ptr, ptr @G, align 8, !tbaa !16    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 152
  store ptr %i.cp, ptr %i.cr, align 8, !tbaa !52
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 112
  %i.ct = call i64 @gv_list_append_slot_(ptr noundef nonnull %i.cs, i64 noundef 8) #18
  %i.cu = load ptr, ptr @G, align 8, !tbaa !16    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 112
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 152
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !52
end_hunk_0
begin_hunk_1_@gmlparse:bb.a
  %i.hx = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.hy = load ptr, ptr @L, align 8, !tbaa !27    ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  store ptr %i.hx, ptr %i.hz, align 8, !tbaa !56
  %i.ia = call i64 @gv_list_append_slot_(ptr noundef %i.hy, i64 noundef 8) #18
  %i.ib = load ptr, ptr @L, align 8, !tbaa !27    ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 40
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !56
  %i.ie = load ptr, ptr %i.ib, align 8, !tbaa !12
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.ia
  store ptr %i.id, ptr %i.if, align 8, !tbaa !27
  br label %setDir.exit.thread

bb.bj:                                            ; preds = %bb.x
  %i.ig = getelementptr inbounds i8, ptr %.3199, i64 -8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !12
  %i.ii = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.ij = call fastcc ptr @mkAttr(ptr noundef %i.ih, i16 noundef zeroext 0, i16 noundef zeroext 284, ptr noundef %i.ii, ptr noundef null)
  br label %setDir.exit.thread

bb.bk:                                            ; preds = %bb.x
  %i.ik = getelementptr inbounds i8, ptr %.3199, i64 -8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !12
  %i.im = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.in = call fastcc ptr @mkAttr(ptr noundef %i.il, i16 noundef zeroext 0, i16 noundef zeroext 285, ptr noundef %i.im, ptr noundef null)
  br label %setDir.exit.thread

bb.bl:                                            ; preds = %bb.x
  %i.io = getelementptr inbounds i8, ptr %.3199, i64 -8
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !12
  %i.iq = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.ir = call fastcc ptr @mkAttr(ptr noundef %i.ip, i16 noundef zeroext 0, i16 noundef zeroext 286, ptr noundef %i.iq, ptr noundef null)
  br label %setDir.exit.thread

bb.bm:                                            ; preds = %bb.x
  %i.is = getelementptr inbounds i8, ptr %.3199, i64 -8
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !12
  %i.iu = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.iv = call fastcc ptr @mkAttr(ptr noundef %i.it, i16 noundef zeroext 0, i16 noundef zeroext 289, ptr noundef null, ptr noundef %i.iu)
  br label %setDir.exit.thread

bb.bn:                                            ; preds = %bb.x
  %i.iw = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.ix = call fastcc ptr @mkAttr(ptr noundef null, i16 noundef zeroext 264, i16 noundef zeroext 285, ptr noundef %i.iw, ptr noundef null)
  br label %setDir.exit.thread

bb.bo:                                            ; preds = %bb.x
  %i.iy = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.iz = call fastcc ptr @mkAttr(ptr noundef null, i16 noundef zeroext 264, i16 noundef zeroext 285, ptr noundef %i.iy, ptr noundef null)
  br label %setDir.exit.thread

bb.bp:                                            ; preds = %bb.x
  %i.ja = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.jb = call fastcc ptr @mkAttr(ptr noundef null, i16 noundef zeroext 265, i16 noundef zeroext 285, ptr noundef %i.ja, ptr noundef null)
  br label %setDir.exit.thread

bb.bq:                                            ; preds = %bb.x
  %i.jc = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.jd = call fastcc ptr @mkAttr(ptr noundef null, i16 noundef zeroext 266, i16 noundef zeroext 285, ptr noundef %i.jc, ptr noundef null)
  br label %setDir.exit.thread

bb.br:                                            ; preds = %bb.x
  %i.je = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.jf = call fastcc ptr @mkAttr(ptr noundef null, i16 noundef zeroext 267, i16 noundef zeroext 285, ptr noundef %i.je, ptr noundef null)
  br label %setDir.exit.thread

bb.bs:                                            ; preds = %bb.x
  %i.jg = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.jh = call fastcc ptr @mkAttr(ptr noundef null, i16 noundef zeroext 268, i16 noundef zeroext 286, ptr noundef %i.jg, ptr noundef null)
  br label %setDir.exit.thread

bb.bt:                                            ; preds = %bb.x
  %i.ji = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.jj = call fastcc ptr @mkAttr(ptr noundef null, i16 noundef zeroext 269, i16 noundef zeroext 289, ptr noundef null, ptr noundef %i.ji)
  br label %setDir.exit.thread

bb.bu:                                            ; preds = %bb.x
  %i.jk = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.jl = call fastcc ptr @mkAttr(ptr noundef null, i16 noundef zeroext 270, i16 noundef zeroext 289, ptr noundef null, ptr noundef %i.jk)
  br label %setDir.exit.thread

bb.bv:                                            ; preds = %bb.x
  %i.jm = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.jn = call fastcc ptr @mkAttr(ptr noundef null, i16 noundef zeroext 271, i16 noundef zeroext 286, ptr noundef %i.jm, ptr noundef null)
  br label %setDir.exit.thread

bb.bw:                                            ; preds = %bb.x
  %i.jo = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.jp = call fastcc ptr @mkAttr(ptr noundef null, i16 noundef zeroext 272, i16 noundef zeroext 286, ptr noundef %i.jo, ptr noundef null)
  br label %setDir.exit.thread

bb.bx:                                            ; preds = %bb.x
  %i.jq = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.jr = call fastcc ptr @mkAttr(ptr noundef null, i16 noundef zeroext 273, i16 noundef zeroext 286, ptr noundef %i.jq, ptr noundef null)
  br label %setDir.exit.thread

bb.by:                                            ; preds = %bb.x
  %i.js = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.jt = call fastcc ptr @mkAttr(ptr noundef null, i16 noundef zeroext 274, i16 noundef zeroext 286, ptr noundef %i.js, ptr noundef null)
  br label %setDir.exit.thread

bb.bz:                                            ; preds = %bb.x
  %i.ju = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.jv = call fastcc ptr @mkAttr(ptr noundef null, i16 noundef zeroext 275, i16 noundef zeroext 284, ptr noundef %i.ju, ptr noundef null)
  br label %setDir.exit.thread

bb.ca:                                            ; preds = %bb.x
  %i.jw = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.jx = call fastcc ptr @mkAttr(ptr noundef null, i16 noundef zeroext 276, i16 noundef zeroext 285, ptr noundef %i.jw, ptr noundef null)
  br label %setDir.exit.thread

bb.cb:                                            ; preds = %bb.x
  %i.jy = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.jz = call fastcc ptr @mkAttr(ptr noundef null, i16 noundef zeroext 276, i16 noundef zeroext 284, ptr noundef %i.jy, ptr noundef null)
  br label %setDir.exit.thread

bb.cc:                                            ; preds = %bb.x
  %i.ka = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.kb = call fastcc ptr @mkAttr(ptr noundef null, i16 noundef zeroext 277, i16 noundef zeroext 286, ptr noundef %i.ka, ptr noundef null)
  br label %setDir.exit.thread

bb.cd:                                            ; preds = %bb.x
  %i.kc = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.kd = call fastcc ptr @mkAttr(ptr noundef null, i16 noundef zeroext 277, i16 noundef zeroext 289, ptr noundef null, ptr noundef %i.kc)
  br label %setDir.exit.thread

bb.ce:                                            ; preds = %bb.x
  %i.ke = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.kf = call fastcc ptr @mkAttr(ptr noundef null, i16 noundef zeroext 278, i16 noundef zeroext 289, ptr noundef null, ptr noundef %i.ke)
  br label %setDir.exit.thread

bb.cf:                                            ; preds = %bb.x
  %i.kg = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.kh = call fastcc ptr @mkAttr(ptr noundef null, i16 noundef zeroext 279, i16 noundef zeroext 289, ptr noundef null, ptr noundef %i.kg)
  br label %setDir.exit.thread

bb.cg:                                            ; preds = %bb.x
  %i.ki = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.kj = call fastcc ptr @mkAttr(ptr noundef null, i16 noundef zeroext 280, i16 noundef zeroext 286, ptr noundef %i.ki, ptr noundef null)
  br label %setDir.exit.thread

bb.ch:                                            ; preds = %bb.x
  %i.kk = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.kl = call fastcc ptr @mkAttr(ptr noundef null, i16 noundef zeroext 282, i16 noundef zeroext 286, ptr noundef %i.kk, ptr noundef null)
  br label %setDir.exit.thread

bb.ci:                                            ; preds = %bb.x
  %i.km = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.kn = call fastcc ptr @mkAttr(ptr noundef null, i16 noundef zeroext 282, i16 noundef zeroext 284, ptr noundef %i.km, ptr noundef null)
  br label %setDir.exit.thread

bb.cj:                                            ; preds = %bb.x
  %i.ko = load ptr, ptr %.3199, align 8, !tbaa !12
  %i.kp = call fastcc ptr @mkAttr(ptr noundef null, i16 noundef zeroext 283, i16 noundef zeroext 286, ptr noundef %i.ko, ptr noundef null)
  br label %setDir.exit.thread

setDir.exit.thread:                               ; preds = %bb.aj, %.preheader.i, %bb.ag, %bb.x, %bb.y, %bb.z, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %popAlist.exit, %pushAlist.exit, %bb.bb, %gv_strdup.exit.i247, %bb.ax, %bb.aw, %bb.av, %mkEdge.exit, %bb.as, %bb.ar, %bb.aq, %mkNode.exit, %bb.an, %gv_strdup.exit.i, %bb.af, %bb.ae, %pushG.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload, %bb.x ], [ %.sroa.0.0.copyload, %bb.z ], [ %.sroa.0.0.copyload, %bb.y ], [ %.sroa.0.0.copyload, %pushG.exit ], [ %.sroa.0.0.copyload, %bb.ae ], [ %.sroa.0.0.copyload, %bb.af ], [ %i.kp, %bb.cj ], [ %.sroa.0.0.copyload, %gv_strdup.exit.i ], [ %.sroa.0.0.copyload, %bb.an ], [ %.sroa.0.0.copyload, %mkNode.exit ], [ %i.ev, %bb.aq ], [ %.sroa.0.0.copyload, %bb.ar ], [ %.sroa.0.0.copyload, %bb.as ], [ %.sroa.0.0.copyload, %mkEdge.exit ], [ %i.fo, %bb.av ], [ %.sroa.0.0.copyload, %bb.aw ], [ %.sroa.0.0.copyload, %bb.ax ], [ %.sroa.0.0.copyload, %gv_strdup.exit.i247 ], [ %.sroa.0.0.copyload, %bb.bb ], [ %.sroa.0.0.copyload, %pushAlist.exit ], [ %i.hl, %popAlist.exit ], [ %.sroa.0.0.copyload, %bb.bh ], [ %.sroa.0.0.copyload, %bb.bi ], [ %i.ij, %bb.bj ], [ %i.in, %bb.bk ], [ %i.ir, %bb.bl ], [ %i.iv, %bb.bm ], [ %i.ix, %bb.bn ], [ %i.iz, %bb.bo ], [ %i.jb, %bb.bp ], [ %i.jd, %bb.bq ], [ %i.jf, %bb.br ], [ %i.jh, %bb.bs ], [ %i.jj, %bb.bt ], [ %i.jl, %bb.bu ], [ %i.jn, %bb.bv ], [ %i.jp, %bb.bw ], [ %i.jr, %bb.bx ], [ %i.jt, %bb.by ], [ %i.jv, %bb.bz ], [ %i.jx, %bb.ca ], [ %i.jz, %bb.cb ], [ %i.kb, %bb.cc ], [ %i.kd, %bb.cd ], [ %i.kf, %bb.ce ], [ %i.kh, %bb.cf ], [ %i.kj, %bb.cg ], [ %i.kl, %bb.ch ], [ %i.kn, %bb.ci ], [ %.sroa.0.0.copyload, %bb.ag ], [ %.sroa.0.0.copyload, %.preheader.i ], [ %.sroa.0.0.copyload, %bb.aj ]
  %i.kq = sext i8 %i.bf to i64
  %i.kr = sub nsw i64 0, %i.kq                    ; 2 uses
  %i.ks = getelementptr inbounds [8 x i8], ptr %.3199, i64 %i.kr
  %i.kt = getelementptr inbounds i8, ptr %.3189, i64 %i.kr ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 8 ; 2 uses
  store ptr %.sroa.0.0, ptr %i.ku, align 8, !tbaa !12
  %i.kv = getelementptr inbounds i8, ptr @yyr1, i64 %i.bd
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !12
  %i.kx = sext i8 %i.kw to i64
  %i.ky = add nsw i64 %i.kx, -37                  ; 2 uses
  %i.kz = getelementptr inbounds [2 x i8], ptr @yypgoto, i64 %i.ky
  %i.la = load i16, ptr %i.kz, align 2, !tbaa !48
  %i.lb = sext i16 %i.la to i32
  %i.lc = load i8, ptr %i.kt, align 1, !tbaa !12  ; 2 uses
  %i.ld = sext i8 %i.lc to i32
  %i.le = add nsw i32 %i.ld, %i.lb                ; 2 uses
  %or.cond5 = icmp ult i32 %i.le, 227
  br i1 %or.cond5, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %setDir.exit.thread
  %i.lf = zext nneg i32 %i.le to i64              ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr @yycheck, i64 %i.lf
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !12
  %i.li = icmp eq i8 %i.lh, %i.lc
  br i1 %i.li, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.lj = getelementptr inbounds nuw i8, ptr @yytable, i64 %i.lf
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck, %setDir.exit.thread
  %i.lk = getelementptr inbounds i8, ptr @yydefgoto, i64 %i.ky
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.in.in = phi ptr [ %i.lj, %bb.cl ], [ %i.lk, %bb.cm ]
  %.in = load i8, ptr %.in.in, align 1, !tbaa !12
  %i.ll = sext i8 %.in to i32
  br label %bb.b

bb.co:                                            ; preds = %bb.w
  %i.lm = load i32, ptr @gmlchar, align 4, !tbaa !11 ; 2 uses
  switch i32 %.1178, label %.preheader [
    i32 0, label %bb.cp
    i32 3, label %bb.cq
  ]

bb.cp:                                            ; preds = %bb.co
  %i.ln = load i32, ptr @gmlnerrs, align 4, !tbaa !11
  %i.lo = add nsw i32 %i.ln, 1
  store i32 %i.lo, ptr @gmlnerrs, align 4, !tbaa !11
  call void @gmlerror(ptr noundef nonnull @.str.2) #18
  br label %.preheader

bb.cq:                                            ; preds = %bb.co
  %i.lp = icmp slt i32 %i.lm, 1
  br i1 %i.lp, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.lq = icmp eq i32 %i.lm, 0
  br i1 %i.lq, label %.loopexit281, label %.preheader

bb.cs:                                            ; preds = %bb.cq
  store i32 -2, ptr @gmlchar, align 4, !tbaa !11
  br label %.preheader

.preheader:                                       ; preds = %bb.cp, %bb.co, %bb.cr, %bb.cs, %bb.o
  br label %1

1:                                                ; preds = %.preheader, %bb.cu
  %2 = phi i16 [ %.pre, %bb.cu ], [ %i.z, %.preheader ] ; 2 uses
  %.4200 = phi ptr [ %i.ls, %bb.cu ], [ %.3199, %.preheader ] ; 2 uses
  %.4190 = phi ptr [ %i.lt, %bb.cu ], [ %.3189, %.preheader ] ; 3 uses
  %3 = icmp sgt i16 %2, -2
  br i1 %3, label %bb.ct, label %11

bb.ct:                                            ; preds = %1
  %4 = sext i16 %2 to i64
  %5 = add nsw i64 %4, 1                          ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr @yycheck, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !12
  %i.lr = icmp eq i8 %7, 1
  br i1 %i.lr, label %.lr.ph, label %11

.lr.ph:                                           ; preds = %bb.ct
  %8 = getelementptr inbounds nuw i8, ptr @yytable, i64 %5
  %9 = load i8, ptr %8, align 1, !tbaa !12        ; 2 uses
  %10 = icmp sgt i8 %9, 0
  br i1 %10, label %._crit_edge, label %11

11:                                               ; preds = %bb.ct, %.lr.ph, %1
  %12 = icmp eq ptr %.4190, %.3
  br i1 %12, label %.loopexit281, label %bb.cu

bb.cu:                                            ; preds = %11
  %i.ls = getelementptr inbounds i8, ptr %.4200, i64 -8
  %i.lt = getelementptr inbounds i8, ptr %.4190, i64 -1 ; 2 uses
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !12
  %.phi.trans.insert = sext i8 %i.lu to i64
  %.phi.trans.insert405 = getelementptr inbounds [2 x i8], ptr @yypact, i64 %.phi.trans.insert
  %.pre = load i16, ptr %.phi.trans.insert405, align 2, !tbaa !48
  br label %1

._crit_edge:                                      ; preds = %.lr.ph
  %13 = zext nneg i8 %9 to i32
  %i.lv = getelementptr inbounds nuw i8, ptr %.4200, i64 8 ; 2 uses
  %i.lw = load i64, ptr @gmllval, align 8, !tbaa !12
  store i64 %i.lw, ptr %i.lv, align 8, !tbaa !12
  br label %bb.b

bb.cv:                                            ; preds = %bb.d, %bb.e
  call void @gmlerror(ptr noundef nonnull @.str.5) #18
  br label %.loopexit281

.loopexit281:                                     ; preds = %.thread270, %bb.cr, %11, %bb.aa, %setDir.exit, %bb.cv
  %.0207 = phi i32 [ 2, %bb.cv ], [ 1, %bb.aa ], [ 1, %setDir.exit ], [ 1, %11 ], [ 1, %bb.cr ], [ 0, %.thread270 ] ; 2 uses
  %.5 = phi ptr [ %.0183, %bb.cv ], [ %.3, %bb.aa ], [ %.3, %setDir.exit ], [ %.3, %11 ], [ %.3, %bb.cr ], [ %.3, %.thread270 ] ; 2 uses
  %.not239 = icmp eq ptr %.5, %i.a
  br i1 %.not239, label %bb.cw, label %.loopexit281.thread

.loopexit281.thread:                              ; preds = %bb.h, %.loopexit281
  %.5429 = phi ptr [ %.5, %.loopexit281 ], [ %i.n, %bb.h ]
  %.0207427 = phi i32 [ %.0207, %.loopexit281 ], [ 1, %bb.h ]
  call void @free(ptr noundef %.5429) #18
  br label %bb.cw

bb.cw:                                            ; preds = %.loopexit281, %.loopexit281.thread
  %.0207428 = phi i32 [ %.0207, %.loopexit281 ], [ %.0207427, %.loopexit281.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0207428
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

declare i32 @gmllex() local_unnamed_addr #4

declare void @gmllexeof() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @cleanup() unnamed_addr #0 {
bb.a:
  %liststk.val14 = load i64, ptr getelementptr inbounds nuw (i8, ptr @liststk, i64 16), align 8, !tbaa !44
  %.not16 = icmp eq i64 %liststk.val14, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  tail call void @gv_list_clear_(ptr noundef nonnull @liststk, i64 noundef 8) #18
  %i.a = load ptr, ptr @L, align 8, !tbaa !27     ; 9 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.j, label %bb.e

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.015 = phi i64 [ %i.i, %bb.d ], [ 0, %bb.a ]   ; 2 uses
  %i.b = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @liststk, i64 noundef %.015) #18 ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @liststk, i64 32), align 8, !tbaa !41 ; 2 uses
  %magicptr = ptrtoint ptr %i.c to i64
  switch i64 %magicptr, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.d = load ptr, ptr @liststk, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.b
  %.0.copyload = load ptr, ptr %i.e, align 8
  tail call void @free(ptr noundef %.0.copyload) #18
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr @liststk, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  tail call void %i.c(ptr noundef %i.h) #18
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c, %bb.b
  %i.i = add nuw i64 %.015, 1                     ; 2 uses
  %liststk.val = load i64, ptr getelementptr inbounds nuw (i8, ptr @liststk, i64 16), align 8, !tbaa !44
  %i.j = icmp ult i64 %i.i, %liststk.val
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !57

bb.e:                                             ; preds = %._crit_edge
  %i.k = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %.val16.i = load i64, ptr %i.k, align 8, !tbaa !44
  %.not.i = icmp eq i64 %.val16.i, 0
  br i1 %.not.i, label %free_attrs.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i
  %.017.i = phi i64 [ 0, %.lr.ph.i ], [ %i.t, %bb.i ] ; 2 uses
  %i.m = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.a, i64 noundef %.017.i) #18 ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !41   ; 2 uses
  %magicptr.i = ptrtoint ptr %i.n to i64
  switch i64 %magicptr.i, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.m
  %.0.copyload.i = load ptr, ptr %i.p, align 8
  tail call void @free(ptr noundef %.0.copyload.i) #18
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.m
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27
  tail call void %i.n(ptr noundef %i.s) #18, !inline_history !45
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.t = add nuw i64 %.017.i, 1                   ; 2 uses
  %.val.i = load i64, ptr %i.k, align 8, !tbaa !44
  %i.u = icmp ult i64 %i.t, %.val.i
  br i1 %i.u, label %bb.f, label %free_attrs.exit, !llvm.loop !0

free_attrs.exit:                                  ; preds = %bb.i, %bb.e
  tail call void @gv_list_clear_(ptr noundef nonnull %i.a, i64 noundef 8) #18
  tail call void @gv_list_free_(ptr noundef nonnull %i.a) #18
  tail call void @free(ptr noundef nonnull %i.a) #18
  store ptr null, ptr @L, align 8, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %free_attrs.exit, %._crit_edge
  %i.v = load ptr, ptr @N, align 8, !tbaa !27     ; 2 uses
  %.not10 = icmp eq ptr %i.v, null
  br i1 %.not10, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free_node(ptr noundef nonnull %i.v)
  store ptr null, ptr @N, align 8, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.w = load ptr, ptr @E, align 8, !tbaa !27     ; 2 uses
  %.not11 = icmp eq ptr %i.w, null
  br i1 %.not11, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free_edge(ptr noundef nonnull %i.w)
  store ptr null, ptr @E, align 8, !tbaa !27
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.x = load ptr, ptr @G, align 8, !tbaa !16     ; 2 uses
  %.not12 = icmp eq ptr %i.x, null
  br i1 %.not12, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @free_graph(ptr noundef nonnull %i.x)
  store ptr null, ptr @G, align 8, !tbaa !16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  ret void
}

declare hidden i64 @gv_list_append_slot_(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @gmlerror(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noalias nonnull ptr @mkAttr(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext range(i16 284, 290) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef range(i64 1, 209) 24) #20 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %gv_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.9, i64 noundef 24) #21 ; 0 uses
  tail call fastcc void @graphviz_exit() #22
  unreachable

gv_alloc.exit:                                    ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %gv_strdup.exit

bb.c:                                             ; preds = %gv_alloc.exit
  %switch.tableidx = add i16 %1, -91              ; 2 uses
  %i.e = icmp ult i16 %switch.tableidx, 199
  br i1 %i.e, label %switch.lookup, label %sortToStr.exit

switch.lookup:                                    ; preds = %bb.c
  %i.f = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mkAttr, i64 %i.f
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %sortToStr.exit

sortToStr.exit:                                   ; preds = %bb.c, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.c ] ; 2 uses
  %i.g = tail call noalias ptr @strdup(ptr noundef readonly %.0.i) #18 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %gv_strdup.exit

bb.d:                                             ; preds = %sortToStr.exit
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.j = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.i) #23
end_hunk_1
