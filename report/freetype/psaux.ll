Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/psaux?download=true
inline.NumInlined: 440
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0
@.str.17 = private unnamed_addr constant [15 x i8] c"EncodingScheme\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"EndAxis\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"EndCharMetrics\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"EndComposites\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"EndDirection\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"EndFontMetrics\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"EndKernData\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"EndKernPairs\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"EndTrackKern\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"EscChar\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"FamilyName\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"FontBBox\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"FontName\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"FullName\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"IsBaseFont\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"IsCIDFont\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"IsFixedPitch\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"IsFixedV\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"ItalicAngle\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"KP\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"KPH\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"KPX\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"KPY\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"MappingScheme\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"MetricsSets\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"Notice\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"PCC\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"StartAxis\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"StartCharMetrics\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"StartComposites\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"StartDirection\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"StartKernData\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"StartKernPairs\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"StartKernPairs0\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"StartKernPairs1\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"StartTrackKern\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"StdHW\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"StdVW\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"TrackKern\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"UnderlinePosition\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"UnderlineThickness\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"VV\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"VVector\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"Version\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"W0\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"W0X\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"W0Y\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"W1\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"W1X\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"W1Y\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"WX\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"WY\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"Weight\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"WeightVector\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"XHeight\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@ft_char_table = internal unnamed_addr constant [128 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#\FF\FF\FF\FF\FF", align 16
@.str.76 = private unnamed_addr constant [17 x i8] c"postscript-cmaps\00", align 1
@cf2_interpT2CharString.readFromStack = internal constant [12 x i8] c"\01\00\01\01\01\00\01\00\01\00\01\00", align 1
@cf2_interpT2CharString.readFromStack.77 = internal constant [12 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01", align 1
@cf2_interpT2CharString.readFromStack.78 = internal constant [12 x i8] c"\01\01\01\01\01\00\01\00\01\01\01\00", align 1
@cf2_interpT2CharString.readFromStack.79 = internal constant [12 x i8] c"\01\01\01\01\01\01\01\01\01\01\00\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @ps_table_new(ptr nofree noundef captures(none) initializes((40, 48), (56, 64)) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %2, ptr %i.b, align 8, !tbaa !22
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = call ptr @ft_mem_realloc(ptr noundef %2, i64 noundef 8, i64 noundef 0, i64 noundef %i.c, ptr noundef null, ptr noundef nonnull %i.a) #19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !23
  %i.f = load i32, ptr %i.a, align 4, !tbaa !24
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @ft_mem_realloc(ptr noundef %2, i64 noundef 4, i64 noundef 0, i64 noundef %i.c, ptr noundef null, ptr noundef nonnull %i.a) #19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.g, ptr %i.h, align 8, !tbaa !25
  %i.i = load i32, ptr %i.a, align 4, !tbaa !24
  %.not17 = icmp eq i32 %i.i, 0
  br i1 %.not17, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %1, ptr %i.j, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 3735928559, ptr %i.k, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) @ps_table_funcs, i64 32, i1 false), !tbaa.struct !29
  br label %bb.d

.thread:                                          ; preds = %bb.b, %bb.a
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !23
  call void @ft_mem_free(ptr noundef %2, ptr noundef %i.m) #19
  store ptr null, ptr %i.e, align 8, !tbaa !23
  %.pre = load i32, ptr %i.a, align 4, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %i.n = phi i32 [ %.pre, %.thread ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %i.n
}

; Function Attrs: nounwind uwtable
define internal void @ps_table_done(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = load ptr, ptr %0, align 8, !tbaa !31     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !32
  %i.i = call ptr @ft_mem_realloc(ptr noundef %i.e, i64 noundef 1, i64 noundef %i.h, i64 noundef %i.c, ptr noundef %i.f, ptr noundef nonnull %i.a) #19 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !31
  %i.j = load i32, ptr %i.a, align 4, !tbaa !24
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.b, label %ps_table_realloc.exit

bb.b:                                             ; preds = %bb.a
  %.not27.i = icmp eq ptr %i.f, null
  %.not28.i = icmp eq ptr %i.i, %i.f
  %or.cond.i = select i1 %.not27.i, i1 true, i1 %.not28.i
  br i1 %or.cond.i, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.o = sext i32 %i.n to i64
  %.idx.i = shl nsw i64 %i.o, 3
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %.idx.i
  %i.q = icmp sgt i32 %i.n, 0
  br i1 %i.q, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.r = ptrtoint ptr %i.f to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %.030.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.x, %bb.f ] ; 3 uses
  %i.s = load ptr, ptr %.030.i, align 8, !tbaa !33 ; 2 uses
  %.not29.i = icmp eq ptr %i.s, null
  br i1 %.not29.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %0, align 8, !tbaa !31
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.u, %i.r
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.v
  store ptr %i.w, ptr %.030.i, align 8, !tbaa !33
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.030.i, i64 8 ; 2 uses
  %i.y = icmp ult ptr %i.x, %i.p
  br i1 %i.y, label %bb.d, label %.loopexit.i, !llvm.loop !0

.loopexit.i:                                      ; preds = %bb.f, %bb.c, %bb.b
  store i64 %i.c, ptr %i.g, align 8, !tbaa !32
  br label %ps_table_realloc.exit

ps_table_realloc.exit:                            ; preds = %bb.a, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ps_table_add(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26
  %.not = icmp slt i32 %1, %i.d
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30
  %i.g = zext i32 %3 to i64                       ; 3 uses
  %i.h = add i64 %i.f, %i.g                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !32   ; 4 uses
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !31
  br label %bb.i

.preheader:                                       ; preds = %bb.c, %.preheader
  %.04264 = phi i64 [ %i.o, %.preheader ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = lshr i64 %.04264, 2
  %i.m = add i64 %.04264, 1024
  %i.n = add i64 %i.m, %i.l
  %i.o = and i64 %i.n, -1024                      ; 4 uses
  %i.p = icmp ult i64 %i.o, %i.h
  br i1 %i.p, label %.preheader, label %bb.d, !llvm.loop !420

bb.d:                                             ; preds = %.preheader
  %4 = load ptr, ptr %0, align 8, !tbaa !31       ; 4 uses
  %i.q = ptrtoint ptr %2 to i64
  %i.r = ptrtoint ptr %4 to i64                   ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %.not50 = icmp ult i64 %i.s, %i.j
  %i.t = tail call i64 @llvm.smax.i64(i64 %i.s, i64 -1)
  %.041 = select i1 %.not50, i64 %i.t, i64 -1     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.w = call ptr @ft_mem_realloc(ptr noundef %i.v, i64 noundef 1, i64 noundef %i.j, i64 noundef %i.o, ptr noundef %4, ptr noundef nonnull %i.a) #19 ; 4 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !31
  %i.x = load i32, ptr %i.a, align 4, !tbaa !24   ; 2 uses
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.l

bb.e:                                             ; preds = %bb.d
  %.not27.i = icmp eq ptr %4, null
  %.not28.i = icmp eq ptr %i.w, %4
  %or.cond.i = select i1 %.not27.i, i1 true, i1 %.not28.i
  br i1 %or.cond.i, label %ps_table_realloc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !23   ; 2 uses
  %i.aa = load i32, ptr %i.c, align 8, !tbaa !26  ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %.idx.i = shl nsw i64 %i.ab, 3
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 %.idx.i
  %i.ad = icmp sgt i32 %i.aa, 0
  br i1 %i.ad, label %.lr.ph.i, label %ps_table_realloc.exit

.lr.ph.i:                                         ; preds = %bb.f, %bb.h
  %.030.i = phi ptr [ %i.aj, %bb.h ], [ %i.z, %bb.f ] ; 3 uses
  %i.ae = load ptr, ptr %.030.i, align 8, !tbaa !33 ; 2 uses
  %.not29.i = icmp eq ptr %i.ae, null
  br i1 %.not29.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.af = load ptr, ptr %0, align 8, !tbaa !31
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.ag, %i.r
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %i.ah
  store ptr %i.ai, ptr %.030.i, align 8, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.030.i, i64 8 ; 2 uses
  %i.ak = icmp ult ptr %i.aj, %i.ac
  br i1 %i.ak, label %.lr.ph.i, label %ps_table_realloc.exit.loopexit, !llvm.loop !0

ps_table_realloc.exit.loopexit:                   ; preds = %bb.h
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !31
  br label %ps_table_realloc.exit

ps_table_realloc.exit:                            ; preds = %ps_table_realloc.exit.loopexit, %bb.e, %bb.f
  %.pre.a = phi ptr [ %.pre.pre, %ps_table_realloc.exit.loopexit ], [ %i.w, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  store i64 %i.o, ptr %i.i, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.al = getelementptr inbounds nuw i8, ptr %.pre.a, i64 %.041
  %i.am = icmp slt i64 %.041, 0
  %spec.select = select i1 %i.am, ptr %2, ptr %i.al
  br label %bb.i

bb.i:                                             ; preds = %ps_table_realloc.exit, %._crit_edge
  %i.an = phi ptr [ %.pre, %._crit_edge ], [ %.pre.a, %ps_table_realloc.exit ] ; 2 uses
  %.2 = phi ptr [ %2, %._crit_edge ], [ %spec.select, %ps_table_realloc.exit ]
  %.not52 = icmp eq ptr %i.an, null
  %.pre67.pre = load i64, ptr %i.e, align 8, !tbaa !30 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.pre67.pre
  %spec.select77 = select i1 %.not52, ptr null, ptr %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !23
  %i.ar = zext nneg i32 %1 to i64                 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ar
  store ptr %spec.select77, ptr %i.as, align 8, !tbaa !33
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !25
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ar
  store i32 %3, ptr %i.av, align 4, !tbaa !24
  %.not53 = icmp eq i32 %3, 0
  br i1 %.not53, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %0, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.pre67.pre
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %.2, i64 %i.g, i1 false)
  %.pre66 = load i64, ptr %i.e, align 8, !tbaa !30
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ay = phi i64 [ %.pre66, %bb.j ], [ %.pre67.pre, %bb.i ]
  %i.az = add i64 %i.ay, %i.g
  store i64 %i.az, ptr %i.e, align 8, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.a, %bb.b, %bb.k
  %.1 = phi i32 [ %i.x, %.thread ], [ 0, %bb.k ], [ 6, %bb.b ], [ 6, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal void @ps_table_release(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27
  %i.c = icmp eq i64 %i.b, 3735928559
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 3 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !31
  tail call void @ft_mem_free(ptr noundef %i.e, ptr noundef %i.f) #19
  store ptr null, ptr %0, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  tail call void @ft_mem_free(ptr noundef %i.e, ptr noundef %i.h) #19
  store ptr null, ptr %i.g, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  tail call void @ft_mem_free(ptr noundef %i.e, ptr noundef %i.j) #19
  store ptr null, ptr %i.i, align 8, !tbaa !25
  store i64 0, ptr %i.a, align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ps_parser_init(ptr nofree noundef writeonly captures(none) initializes((0, 28), (32, 144)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !421
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.c, align 8, !tbaa !38
  store ptr %1, ptr %0, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %3, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef nonnull align 8 dereferenceable(104) @ps_parser_funcs, i64 104, i1 false), !tbaa.struct !422
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @ps_parser_done(ptr nofree readnone captures(none) %0) #2 {
bb.a:
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ps_parser_skip_spaces(ptr nofree noundef captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !33     ; 3 uses
  %i.d = icmp ult ptr %i.c, %i.b
  br i1 %i.d, label %.lr.ph.i, label %skip_spaces.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = ptrtoaddr ptr %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %skip_comment.exit.i, %.lr.ph.i
  %storemerge8.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.k, %skip_comment.exit.i ] ; 11 uses
  %i.f = load i8, ptr %storemerge8.i, align 1, !tbaa !41
  switch i8 %i.f, label %skip_spaces.exit [
    i8 32, label %skip_comment.exit.i
    i8 13, label %skip_comment.exit.i
    i8 10, label %skip_comment.exit.i
    i8 9, label %skip_comment.exit.i
    i8 12, label %skip_comment.exit.i
    i8 0, label %skip_comment.exit.i
    i8 37, label %.lr.ph.preheader.i.i
  ]

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.g = ptrtoaddr ptr %storemerge8.i to i64
  %i.h = sub i64 %i.e, %i.g
  %scevgep.i.i = getelementptr i8, ptr %storemerge8.i, i64 %i.h
  br label %.lr.ph.i.i

.lr.ph.ithread-pre-split.i:                       ; preds = %bb.c
  %.pr.i = load i8, ptr %i.j, align 1, !tbaa !41
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.ithread-pre-split.i, %.lr.ph.preheader.i.i
  %i.i = phi i8 [ %.pr.i, %.lr.ph.ithread-pre-split.i ], [ 37, %.lr.ph.preheader.i.i ]
  %.09.i.i = phi ptr [ %i.j, %.lr.ph.ithread-pre-split.i ], [ %storemerge8.i, %.lr.ph.preheader.i.i ] ; 3 uses
  switch i8 %i.i, label %bb.c [
    i8 13, label %skip_comment.exit.i
    i8 10, label %skip_comment.exit.i
  ]

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 1 ; 3 uses
  %exitcond.not.i.i = icmp eq ptr %i.j, %i.b
  br i1 %exitcond.not.i.i, label %skip_comment.exit.i, label %.lr.ph.ithread-pre-split.i, !llvm.loop !1

skip_comment.exit.i:                              ; preds = %bb.c, %.lr.ph.i.i, %.lr.ph.i.i, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %.0.i = phi ptr [ %storemerge8.i, %bb.b ], [ %storemerge8.i, %bb.b ], [ %storemerge8.i, %bb.b ], [ %storemerge8.i, %bb.b ], [ %storemerge8.i, %bb.b ], [ %storemerge8.i, %bb.b ], [ %scevgep.i.i, %bb.c ], [ %.09.i.i, %.lr.ph.i.i ], [ %.09.i.i, %.lr.ph.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 3 uses
  %i.l = icmp ult ptr %i.k, %i.b
  br i1 %i.l, label %bb.b, label %skip_spaces.exit, !llvm.loop !2

skip_spaces.exit:                                 ; preds = %bb.b, %skip_comment.exit.i, %bb.a
  %storemerge.lcssa.i = phi ptr [ %i.c, %bb.a ], [ %i.k, %skip_comment.exit.i ], [ %storemerge8.i, %bb.b ]
  store ptr %storemerge.lcssa.i, ptr %0, align 8, !tbaa !33
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ps_parser_skip_PS_token(ptr nofree noundef captures(none) %0) #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = load ptr, ptr %0, align 8, !tbaa !39     ; 5 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 19 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 3 uses
  %i.f = icmp ult ptr %i.b, %i.d
  br i1 %i.f, label %.lr.ph.i, label %skip_spaces.exit

.lr.ph.i:                                         ; preds = %bb.a, %skip_comment.exit.i
  %storemerge8.i = phi ptr [ %i.l, %skip_comment.exit.i ], [ %i.b, %bb.a ] ; 11 uses
  %i.g = load i8, ptr %storemerge8.i, align 1, !tbaa !41
  switch i8 %i.g, label %skip_spaces.exit [
    i8 32, label %skip_comment.exit.i
    i8 13, label %skip_comment.exit.i
    i8 10, label %skip_comment.exit.i
    i8 9, label %skip_comment.exit.i
    i8 12, label %skip_comment.exit.i
    i8 0, label %skip_comment.exit.i
    i8 37, label %.lr.ph.preheader.i.i
  ]

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i
  %i.h = ptrtoaddr ptr %storemerge8.i to i64
  %i.i = sub i64 %i.e, %i.h
  %scevgep.i.i = getelementptr i8, ptr %storemerge8.i, i64 %i.i
  br label %.lr.ph.i.i

.lr.ph.ithread-pre-split.i:                       ; preds = %bb.b
  %.pr.i = load i8, ptr %i.k, align 1, !tbaa !41
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.ithread-pre-split.i, %.lr.ph.preheader.i.i
  %i.j = phi i8 [ %.pr.i, %.lr.ph.ithread-pre-split.i ], [ 37, %.lr.ph.preheader.i.i ]
  %.09.i.i = phi ptr [ %i.k, %.lr.ph.ithread-pre-split.i ], [ %storemerge8.i, %.lr.ph.preheader.i.i ] ; 3 uses
  switch i8 %i.j, label %bb.b [
    i8 13, label %skip_comment.exit.i
    i8 10, label %skip_comment.exit.i
  ]

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 1 ; 3 uses
  %exitcond.not.i.i = icmp eq ptr %i.k, %i.d
  br i1 %exitcond.not.i.i, label %skip_comment.exit.i, label %.lr.ph.ithread-pre-split.i, !llvm.loop !1

skip_comment.exit.i:                              ; preds = %bb.b, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %.0.i = phi ptr [ %storemerge8.i, %.lr.ph.i ], [ %storemerge8.i, %.lr.ph.i ], [ %storemerge8.i, %.lr.ph.i ], [ %storemerge8.i, %.lr.ph.i ], [ %storemerge8.i, %.lr.ph.i ], [ %storemerge8.i, %.lr.ph.i ], [ %scevgep.i.i, %bb.b ], [ %.09.i.i, %.lr.ph.i.i ], [ %.09.i.i, %.lr.ph.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 3 uses
  %i.m = icmp ult ptr %i.l, %i.d
end_hunk_0
