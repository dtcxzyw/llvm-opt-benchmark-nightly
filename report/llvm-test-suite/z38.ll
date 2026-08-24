Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/z38?download=true
inline.NumInlined: 11
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }

@maptop = internal unnamed_addr global i32 1, align 4
@MapTable = dso_local local_unnamed_addr global [20 x ptr] zeroinitializer, align 16
@zz_hold = external local_unnamed_addr global ptr, align 8
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@notdef_word = internal unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c".notdef\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"too many character mappings\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"run out of memory when loading character mapping\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"cannot open character mapping file %s\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%d %o %s\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"character code(s) missing in mapping file (line %d)\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"decimal and octal codes disagree in mapping file (line %d)\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"code %d too small (min is 1) in mapping file (line %d)\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"code %d out of order in mapping file (line %d)\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"code %d repeated in mapping file (line %d)\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"code %d too large (max is %d) in mapping file (line %d)\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"%d %o %s%n\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"%s %[^;];%n\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"unknown mapping name %s in mapping file %s (line %d)\00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c"unknown character %s in mapping file %s (line %d)\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"MapEncodingName: m out of range!\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"MapEnsurePrinted: not seen_recoded!\00", align 1
@BackEnd = external local_unnamed_addr global ptr, align 8
@.str.26 = private unnamed_addr constant [19 x i8] c"%%%%+ encoding %s\0A\00", align 1
@MapSmallCaps.font_change_word = internal unnamed_addr global ptr null, align 8
@.str.27 = private unnamed_addr constant [32 x i8] c"MapSmallCaps: !is_word(type(x))\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"MapSmallCaps: mapping out of range!\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"0.7f\00", align 1
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@xx_tmp = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @MapLoad(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
sub_0:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 11 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [512 x i8], align 16              ; 23 uses
  %i.f = alloca [512 x i8], align 16              ; 13 uses
  %i.g = alloca [512 x i8], align 16              ; 13 uses
  %i.h = alloca [512 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1
  %.not167 = icmp eq i8 %i.j, 45
  br i1 %.not167, label %.tail, label %.preheader132

.tail:                                            ; preds = %sub_0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.at, label %.preheader132

.preheader132:                                    ; preds = %sub_0, %.tail
  %i.n = load i32, ptr @maptop, align 4, !tbaa !4 ; 3 uses
  %i.o = icmp ugt i32 %i.n, 1
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader132
  %wide.trip.count = zext i32 %i.n to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @MapTable, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(1) %i.i) #12
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @MapTable, i64 %indvars.iv
  %i.w = trunc nuw i64 %indvars.iv to i32
  store ptr %0, ptr @zz_hold, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i8, ptr %i.x, align 8, !tbaa !16    ; 2 uses
  %.off = add i8 %i.y, -11
  %switch = icmp ult i8 %.off, 2
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.aa = zext i8 %i.y to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.aa
  %.in.in = select i1 %switch, ptr %i.z, ptr %i.ab
  %.in = load i8, ptr %.in.in, align 1, !tbaa !16 ; 2 uses
  %i.ac = zext i8 %.in to i32
  store i32 %i.ac, ptr @zz_size, align 4, !tbaa !4
  %i.ad = zext i8 %.in to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !15
  store ptr %i.af, ptr %0, align 8, !tbaa !16
  %i.ag = load ptr, ptr @zz_hold, align 8, !tbaa !15
  %i.ah = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.ai
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !15
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !17
  %i.an = or i32 %i.am, %1
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  store i32 %i.ap, ptr %i.al, align 4, !tbaa !17
  br label %bb.at

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.b, %.preheader132
  %i.aq = load ptr, ptr @notdef_word, align 8, !tbaa !15
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.as = load ptr, ptr @no_fpos, align 8, !tbaa !20
  %i.at = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.1, ptr noundef %i.as) #11
  store ptr %i.at, ptr @notdef_word, align 8, !tbaa !15
  %.pr = load i32, ptr @maptop, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.au = phi i32 [ %.pr, %bb.c ], [ %i.n, %._crit_edge ]
  %i.av = icmp eq i32 %i.au, 20
  br i1 %i.av, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ax = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 38, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef nonnull %i.aw) #11 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %2 = tail call noalias dereferenceable_or_null(3464) ptr @malloc(i64 noundef 3464) #13 ; 153 uses
  %3 = load i32, ptr @maptop, align 4, !tbaa !4   ; 3 uses
  %i.ay = add nsw i32 %3, 1
  store i32 %i.ay, ptr @maptop, align 4, !tbaa !4
  %i.az = zext i32 %3 to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr @MapTable, i64 %i.az
  store ptr %2, ptr %i.ba, align 8, !tbaa !8
  %i.bb = icmp eq ptr %2, null
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 38, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef nonnull %i.bc) #11 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr %0, ptr %2, align 8, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.bf = tail call zeroext i16 @DefineFile(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.be, i32 noundef 9, i32 noundef 7) #11 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i16 %i.bf, ptr %i.bg, align 8, !tbaa !21
  %i.bh = tail call ptr @OpenFile(i16 noundef zeroext %i.bf, i32 noundef 0, i32 noundef 0) #11 ; 9 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.i, label %.preheader130

bb.i:                                             ; preds = %bb.h
  %i.bj = load i16, ptr %i.bg, align 8, !tbaa !21
  %i.bk = tail call ptr @PosOfFile(i16 noundef zeroext %i.bj) #11
  %i.bl = load i16, ptr %i.bg, align 8, !tbaa !21
  %i.bm = tail call ptr @FileName(i16 noundef zeroext %i.bl) #11
  %i.bn = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 38, i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef 1, ptr noundef %i.bk, ptr noundef %i.bm) #11 ; 0 uses
  br label %.preheader130

.preheader130:                                    ; preds = %bb.i, %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %1, ptr %i.bo, align 4, !tbaa !17
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.bp, align 8, !tbaa !22
  store i32 6514038, ptr %i.e, align 16
  %i.bq = load i32, ptr @maptop, align 4, !tbaa !4
  %i.br = tail call ptr @StringInt(i32 noundef %i.bq) #11
  %i.bs = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) %i.br) #11 ; 0 uses
  %i.bt = load ptr, ptr @no_fpos, align 8, !tbaa !20
  %i.bu = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %i.e, ptr noundef %i.bt) #11
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !23
  %i.bw = getelementptr i8, ptr %2, i64 2433      ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.bw, i8 0, i64 1024, i1 false), !tbaa !16
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 2945
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 2961
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.bx, align 1, !tbaa !16
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.by, align 1, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 2977
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 2993
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.bz, align 1, !tbaa !16
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.ca, align 1, !tbaa !16
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 3009
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 3025
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.cb, align 1, !tbaa !16
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.cc, align 1, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 3041
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 3057
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.cd, align 1, !tbaa !16
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.ce, align 1, !tbaa !16
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 3073
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 3089
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.cf, align 1, !tbaa !16
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.cg, align 1, !tbaa !16
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 3105
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 3121
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.ch, align 1, !tbaa !16
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.ci, align 1, !tbaa !16
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 3137
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 3153
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.cj, align 1, !tbaa !16
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.ck, align 1, !tbaa !16
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 3169
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 3185
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.cl, align 1, !tbaa !16
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.cm, align 1, !tbaa !16
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.co = load ptr, ptr @notdef_word, align 8, !tbaa !15
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.co, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 128 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <2 x ptr> %broadcast.splat, ptr %i.cn, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.cp, align 8, !tbaa !15
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 80
  store <2 x ptr> %broadcast.splat, ptr %i.cq, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.cr, align 8, !tbaa !15
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 112
  store <2 x ptr> %broadcast.splat, ptr %i.cs, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.ct, align 8, !tbaa !15
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 144
  store <2 x ptr> %broadcast.splat, ptr %i.cu, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.cv, align 8, !tbaa !15
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 176
  store <2 x ptr> %broadcast.splat, ptr %i.cw, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.cx, align 8, !tbaa !15
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 208
  store <2 x ptr> %broadcast.splat, ptr %i.cy, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.cz, align 8, !tbaa !15
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 240
  store <2 x ptr> %broadcast.splat, ptr %i.da, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.db, align 8, !tbaa !15
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 272
  store <2 x ptr> %broadcast.splat, ptr %i.dc, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.dd, align 8, !tbaa !15
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 304
  store <2 x ptr> %broadcast.splat, ptr %i.de, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.df, align 8, !tbaa !15
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 336
  store <2 x ptr> %broadcast.splat, ptr %i.dg, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.dh, align 8, !tbaa !15
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 368
  store <2 x ptr> %broadcast.splat, ptr %i.di, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.dj, align 8, !tbaa !15
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 400
  store <2 x ptr> %broadcast.splat, ptr %i.dk, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.dl, align 8, !tbaa !15
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 416
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 432
  store <2 x ptr> %broadcast.splat, ptr %i.dm, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.dn, align 8, !tbaa !15
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 448
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 464
  store <2 x ptr> %broadcast.splat, ptr %i.do, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.dp, align 8, !tbaa !15
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 480
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 496
  store <2 x ptr> %broadcast.splat, ptr %i.dq, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.dr, align 8, !tbaa !15
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 528
  store <2 x ptr> %broadcast.splat, ptr %i.ds, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.dt, align 8, !tbaa !15
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 544
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 560
  store <2 x ptr> %broadcast.splat, ptr %i.du, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.dv, align 8, !tbaa !15
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 576
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 592
  store <2 x ptr> %broadcast.splat, ptr %i.dw, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.dx, align 8, !tbaa !15
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 608
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 624
  store <2 x ptr> %broadcast.splat, ptr %i.dy, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.dz, align 8, !tbaa !15
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 640
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 656
  store <2 x ptr> %broadcast.splat, ptr %i.ea, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.eb, align 8, !tbaa !15
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 672
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 688
  store <2 x ptr> %broadcast.splat, ptr %i.ec, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.ed, align 8, !tbaa !15
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 720
  store <2 x ptr> %broadcast.splat, ptr %i.ee, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.ef, align 8, !tbaa !15
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 736
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 752
  store <2 x ptr> %broadcast.splat, ptr %i.eg, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.eh, align 8, !tbaa !15
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 768
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 784
  store <2 x ptr> %broadcast.splat, ptr %i.ei, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.ej, align 8, !tbaa !15
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 800
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 816
  store <2 x ptr> %broadcast.splat, ptr %i.ek, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.el, align 8, !tbaa !15
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 832
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 848
  store <2 x ptr> %broadcast.splat, ptr %i.em, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.en, align 8, !tbaa !15
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 864
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 880
  store <2 x ptr> %broadcast.splat, ptr %i.eo, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.ep, align 8, !tbaa !15
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 896
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 912
  store <2 x ptr> %broadcast.splat, ptr %i.eq, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.er, align 8, !tbaa !15
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 928
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 944
  store <2 x ptr> %broadcast.splat, ptr %i.es, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.et, align 8, !tbaa !15
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 960
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 976
  store <2 x ptr> %broadcast.splat, ptr %i.eu, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.ev, align 8, !tbaa !15
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 992
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 1008
  store <2 x ptr> %broadcast.splat, ptr %i.ew, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.ex, align 8, !tbaa !15
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 1040
  store <2 x ptr> %broadcast.splat, ptr %i.ey, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.ez, align 8, !tbaa !15
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 1056
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 1072
  store <2 x ptr> %broadcast.splat, ptr %i.fa, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.fb, align 8, !tbaa !15
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 1088
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 1104
  store <2 x ptr> %broadcast.splat, ptr %i.fc, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.fd, align 8, !tbaa !15
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 1120
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 1136
  store <2 x ptr> %broadcast.splat, ptr %i.fe, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.ff, align 8, !tbaa !15
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 1152
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 1168
  store <2 x ptr> %broadcast.splat, ptr %i.fg, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.fh, align 8, !tbaa !15
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 1184
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 1200
  store <2 x ptr> %broadcast.splat, ptr %i.fi, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.fj, align 8, !tbaa !15
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 1216
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 1232
  store <2 x ptr> %broadcast.splat, ptr %i.fk, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.fl, align 8, !tbaa !15
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 1248
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 1264
  store <2 x ptr> %broadcast.splat, ptr %i.fm, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.fn, align 8, !tbaa !15
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 1296
  store <2 x ptr> %broadcast.splat, ptr %i.fo, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.fp, align 8, !tbaa !15
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 1312
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 1328
  store <2 x ptr> %broadcast.splat, ptr %i.fq, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.fr, align 8, !tbaa !15
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 1344
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 1360
  store <2 x ptr> %broadcast.splat, ptr %i.fs, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.ft, align 8, !tbaa !15
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 1376
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 1392
  store <2 x ptr> %broadcast.splat, ptr %i.fu, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.fv, align 8, !tbaa !15
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 1408
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 1424
  store <2 x ptr> %broadcast.splat, ptr %i.fw, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.fx, align 8, !tbaa !15
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 1440
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 1456
  store <2 x ptr> %broadcast.splat, ptr %i.fy, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.fz, align 8, !tbaa !15
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 1472
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 1488
  store <2 x ptr> %broadcast.splat, ptr %i.ga, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.gb, align 8, !tbaa !15
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 1504
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 1520
  store <2 x ptr> %broadcast.splat, ptr %i.gc, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.gd, align 8, !tbaa !15
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 1536
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 1552
  store <2 x ptr> %broadcast.splat, ptr %i.ge, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.gf, align 8, !tbaa !15
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 1568
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 1584
  store <2 x ptr> %broadcast.splat, ptr %i.gg, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.gh, align 8, !tbaa !15
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 1600
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 1616
  store <2 x ptr> %broadcast.splat, ptr %i.gi, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.gj, align 8, !tbaa !15
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 1632
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 1648
  store <2 x ptr> %broadcast.splat, ptr %i.gk, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.gl, align 8, !tbaa !15
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 1664
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 1680
  store <2 x ptr> %broadcast.splat, ptr %i.gm, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.gn, align 8, !tbaa !15
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 1696
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 1712
  store <2 x ptr> %broadcast.splat, ptr %i.go, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.gp, align 8, !tbaa !15
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 1728
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 1744
  store <2 x ptr> %broadcast.splat, ptr %i.gq, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.gr, align 8, !tbaa !15
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 1760
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 1776
  store <2 x ptr> %broadcast.splat, ptr %i.gs, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.gt, align 8, !tbaa !15
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 1792
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 1808
  store <2 x ptr> %broadcast.splat, ptr %i.gu, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.gv, align 8, !tbaa !15
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 1824
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 1840
  store <2 x ptr> %broadcast.splat, ptr %i.gw, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.gx, align 8, !tbaa !15
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 1856
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 1872
  store <2 x ptr> %broadcast.splat, ptr %i.gy, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.gz, align 8, !tbaa !15
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 1888
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 1904
  store <2 x ptr> %broadcast.splat, ptr %i.ha, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.hb, align 8, !tbaa !15
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 1920
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 1936
  store <2 x ptr> %broadcast.splat, ptr %i.hc, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.hd, align 8, !tbaa !15
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 1952
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 1968
  store <2 x ptr> %broadcast.splat, ptr %i.he, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.hf, align 8, !tbaa !15
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 1984
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 2000
  store <2 x ptr> %broadcast.splat, ptr %i.hg, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.hh, align 8, !tbaa !15
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 2016
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 2032
  store <2 x ptr> %broadcast.splat, ptr %i.hi, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.hj, align 8, !tbaa !15
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 2048
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 2064
  store <2 x ptr> %broadcast.splat, ptr %i.hk, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat, ptr %i.hl, align 8, !tbaa !15
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 2080 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(353) %i.hm, i8 0, i64 353, i1 false), !tbaa !16
  store i32 353, ptr %i.a, align 4, !tbaa !4
  %i.hn = call ptr @fgets(ptr noundef nonnull %i.e, i32 noundef 512, ptr noundef %i.bh)
  %i.ho = icmp eq ptr %i.hn, %i.e
  br i1 %i.ho, label %.lr.ph153, label %.outer127._crit_edge

bb.j:                                             ; preds = %.lr.ph153, %bb.l
  %.072152 = phi i32 [ %.072.ph155, %.lr.ph153 ], [ %i.hp, %bb.l ]
  %i.hp = add nsw i32 %.072152, 1                 ; 6 uses
  br label %bb.k

bb.k:                                             ; preds = %.critedge, %bb.j
  %indvars.iv209 = phi i64 [ %indvars.iv.next210, %.critedge ], [ 0, %bb.j ] ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv209
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !16
  switch i8 %i.hr, label %bb.m [
    i8 32, label %.critedge
    i8 9, label %.critedge
    i8 35, label %bb.l
    i8 10, label %bb.l
    i8 0, label %bb.l
  ]

.critedge:                                        ; preds = %bb.k, %bb.k
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1
  br label %bb.k, !llvm.loop !24

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k
  %i.hs = trunc nuw nsw i64 %indvars.iv209 to i32
  store i32 %i.hs, ptr %i.a, align 4, !tbaa !4
  %i.ht = call ptr @fgets(ptr noundef nonnull %i.e, i32 noundef 512, ptr noundef %i.bh)
  %i.hu = icmp eq ptr %i.ht, %i.e
  br i1 %i.hu, label %bb.j, label %.outer127._crit_edge, !llvm.loop !25

bb.m:                                             ; preds = %bb.k
  %i.hv = trunc nuw nsw i64 %indvars.iv209 to i32
  store i32 %i.hv, ptr %i.a, align 4, !tbaa !4
  %i.hw = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f) #11 ; 2 uses
  %i.hx = icmp slt i32 %i.hw, 2
  br i1 %i.hx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.hy = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 38, i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef 1, ptr noundef nonnull %i.be) #11 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.hz = load i32, ptr %i.c, align 4, !tbaa !4   ; 2 uses
  %i.ia = load i32, ptr %i.d, align 4, !tbaa !4
  %.not = icmp eq i32 %i.hz, %i.ia
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ib = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 38, i32 noundef 5, ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef nonnull %i.be) #11 ; 0 uses
  %.pr118 = load i32, ptr %i.c, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ic = phi i32 [ %.pr118, %bb.p ], [ %i.hz, %bb.o ] ; 4 uses
  %i.id = icmp slt i32 %i.ic, 1
  br i1 %i.id, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ie = load i32, ptr %i.f, align 16
  %i.if = xor i32 %i.ie, 1852796461
  %i.ig = getelementptr i8, ptr %i.f, i64 3
  %i.ih = load i32, ptr %i.ig, align 1
  %i.ii = xor i32 %i.ih, 2975086
  %i.ij = or i32 %i.if, %i.ii
  %i.ik = icmp ne i32 %i.ij, 0
  %i.il = zext i1 %i.ik to i32
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.in = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 38, i32 noundef 6, ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef nonnull %i.be, i32 noundef %i.ic, i32 noundef %i.hp) #11 ; 0 uses
  %.pre.a = load i32, ptr %i.c, align 4, !tbaa !4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.io = phi i32 [ %.pre.a, %bb.s ], [ %i.ic, %bb.r ], [ %i.ic, %bb.q ] ; 3 uses
  %i.ip = icmp slt i32 %i.io, %.0.ph156
  br i1 %i.ip, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.iq = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 38, i32 noundef 7, ptr noundef nonnull @.str.12, i32 noundef 1, ptr noundef nonnull %i.be, i32 noundef %i.io, i32 noundef %i.hp) #11 ; 0 uses
  %.pre215 = load i32, ptr %i.c, align 4, !tbaa !4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ir = phi i32 [ %.pre215, %bb.u ], [ %i.io, %bb.t ] ; 2 uses
  %i.is = icmp eq i32 %i.ir, %.0.ph156
  br i1 %i.is, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.it = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 38, i32 noundef 8, ptr noundef nonnull @.str.13, i32 noundef 1, ptr noundef nonnull %i.be, i32 noundef %.0.ph156, i32 noundef %i.hp) #11 ; 0 uses
  %.pr119 = load i32, ptr %i.c, align 4, !tbaa !4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.iu = phi i32 [ %.pr119, %bb.w ], [ %i.ir, %bb.v ] ; 3 uses
  %i.iv = icmp sgt i32 %i.iu, 256
  br i1 %i.iv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.iw = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 38, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef 1, ptr noundef nonnull %i.be, i32 noundef %i.iu, i32 noundef 256, i32 noundef %i.hp) #11 ; 0 uses
  %.pre216 = load i32, ptr %i.c, align 4, !tbaa !4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ix = phi i32 [ %.pre216, %bb.y ], [ %i.iu, %bb.x ] ; 4 uses
  %i.iy = icmp sgt i32 %i.hw, 2
  br i1 %i.iy, label %bb.aa, label %.outer127

bb.aa:                                            ; preds = %bb.z
  %i.iz = load i32, ptr %i.f, align 16
  %i.ja = xor i32 %i.iz, 1852796461
  %i.jb = getelementptr i8, ptr %i.f, i64 3
  %i.jc = load i32, ptr %i.jb, align 1
  %i.jd = xor i32 %i.jc, 2975086
  %i.je = or i32 %i.ja, %i.jd
  %i.jf = icmp ne i32 %i.je, 0
  %i.jg = zext i1 %i.jf to i32
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %.outer127, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ji = load i8, ptr %i.f, align 16, !tbaa !16
  %i.jj = zext i8 %i.ji to i32
  %i.jk = shl nuw nsw i32 %i.jj, 1                ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.014.i = phi i32 [ %i.jk, %bb.ab ], [ %i.jn, %bb.ac ]
  %.pn.i = phi ptr [ %i.f, %bb.ab ], [ %.0.i, %bb.ac ]
  %.014.fr.i = freeze i32 %.014.i                 ; 2 uses
  %.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 2 uses
  %i.jl = load i8, ptr %.0.i, align 1, !tbaa !16  ; 2 uses
  %.not.i = icmp eq i8 %i.jl, 0
  %i.jm = zext i8 %i.jl to i32
  %i.jn = add nuw nsw i32 %.014.fr.i, %i.jm
  br i1 %.not.i, label %bb.ad, label %bb.ac, !llvm.loop !26

bb.ad:                                            ; preds = %bb.ac
  %i.jo = urem i32 %.014.fr.i, 353                ; 2 uses
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.jp
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !16  ; 2 uses
  %.not1718.i = icmp eq i8 %i.jr, 0
  br i1 %.not1718.i, label %.loopexit126.preheader, label %.lr.ph.i

.loopexit126.preheader:                           ; preds = %bb.ae, %bb.ad
  br label %.loopexit126

.lr.ph.i:                                         ; preds = %bb.ad, %bb.ae
  %i.js = phi i8 [ %i.ke, %bb.ae ], [ %i.jr, %bb.ad ]
  %.119.i = phi i32 [ %i.kb, %bb.ae ], [ %i.jo, %bb.ad ]
  %i.jt = zext i8 %i.js to i64
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.jt
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !15 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 64
  %i.jx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.jw, ptr noundef nonnull readonly dereferenceable(1) %i.f) #12
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %NameRetrieve.exit, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i
  %i.jz = add i32 %.119.i, 1                      ; 2 uses
  %i.ka = icmp eq i32 %i.jz, 353
  %i.kb = select i1 %i.ka, i32 0, i32 %i.jz       ; 2 uses
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !16  ; 2 uses
  %.not17.i = icmp eq i8 %i.ke, 0
  br i1 %.not17.i, label %.loopexit126.preheader, label %.lr.ph.i, !llvm.loop !27

NameRetrieve.exit:                                ; preds = %.lr.ph.i
  %i.kf = sext i32 %i.ix to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.kf
  store ptr %i.jv, ptr %i.kg, align 8, !tbaa !15
  br label %.outer127

.loopexit126:                                     ; preds = %.loopexit126.preheader, %.loopexit126
  %.014.i101 = phi i32 [ %i.kj, %.loopexit126 ], [ %i.jk, %.loopexit126.preheader ]
  %.pn.i102 = phi ptr [ %.0.i104, %.loopexit126 ], [ %i.f, %.loopexit126.preheader ]
  %.014.fr.i103 = freeze i32 %.014.i101           ; 2 uses
  %.0.i104 = getelementptr inbounds nuw i8, ptr %.pn.i102, i64 1 ; 2 uses
  %i.kh = load i8, ptr %.0.i104, align 1, !tbaa !16 ; 2 uses
  %.not.i105 = icmp eq i8 %i.kh, 0
  %i.ki = zext i8 %i.kh to i32
  %i.kj = add nuw nsw i32 %.014.fr.i103, %i.ki
  br i1 %.not.i105, label %bb.af, label %.loopexit126, !llvm.loop !28

bb.af:                                            ; preds = %.loopexit126
  %i.kk = urem i32 %.014.fr.i103, 353             ; 2 uses
  %i.kl = zext nneg i32 %i.kk to i64              ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.kl
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !16
  %.not1619.i = icmp eq i8 %i.kn, 0
  br i1 %.not1619.i, label %NameInsert.exit, label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %bb.af, %.lr.ph.i106
end_hunk_0
begin_hunk_1_@MapLoad:sub_0

.lr.ph153:                                        ; preds = %.preheader130, %.outer127
  %.0.ph156 = phi i32 [ %i.ix, %.outer127 ], [ -1, %.preheader130 ] ; 3 uses
  %.072.ph155 = phi i32 [ %i.hp, %.outer127 ], [ 0, %.preheader130 ]
  br label %bb.j

.outer127._crit_edge:                             ; preds = %.outer127, %bb.l, %.preheader130
  call void @rewind(ptr noundef %i.bh)
  %i.lc = call ptr @fgets(ptr noundef nonnull %i.e, i32 noundef 512, ptr noundef %i.bh)
  %i.ld = icmp eq ptr %i.lc, %i.e
  br i1 %i.ld, label %.lr.ph159, label %.outer._crit_edge

..loopexit125_crit_edge:                          ; preds = %NameRetrieve.exit117
  br label %.loopexit125, !llvm.loop !30

.loopexit125:                                     ; preds = %..loopexit125_crit_edge, %bb.aj
  %.2.lcssa = phi i32 [ %.3, %..loopexit125_crit_edge ], [ %.174.ph165, %bb.aj ]
  %i.le = call ptr @fgets(ptr noundef nonnull %i.e, i32 noundef 512, ptr noundef %i.bh)
  %i.lf = icmp eq ptr %i.le, %i.e
  br i1 %i.lf, label %.lr.ph159, label %.outer._crit_edge

.lr.ph159:                                        ; preds = %.outer127._crit_edge, %.loopexit125
  %.1.ph166 = phi i32 [ %i.lg, %.loopexit125 ], [ 0, %.outer127._crit_edge ]
  %.174.ph165 = phi i32 [ %.2.lcssa, %.loopexit125 ], [ 4, %.outer127._crit_edge ] ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph159, %bb.ai
  %.1158 = phi i32 [ %.1.ph166, %.lr.ph159 ], [ %i.lg, %bb.ai ]
  %i.lg = add nsw i32 %.1158, 1                   ; 4 uses
  br label %bb.ah

bb.ah:                                            ; preds = %.critedge2, %bb.ag
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %.critedge2 ], [ 0, %bb.ag ] ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv212
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !16
  switch i8 %i.li, label %bb.aj [
    i8 32, label %.critedge2
    i8 9, label %.critedge2
    i8 35, label %bb.ai
    i8 10, label %bb.ai
    i8 0, label %bb.ai
  ]

.critedge2:                                       ; preds = %bb.ah, %bb.ah
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1
  br label %bb.ah, !llvm.loop !31

bb.ai:                                            ; preds = %bb.ah, %bb.ah, %bb.ah
  %i.lj = trunc nuw nsw i64 %indvars.iv212 to i32
  store i32 %i.lj, ptr %i.a, align 4, !tbaa !4
  %i.lk = call ptr @fgets(ptr noundef nonnull %i.e, i32 noundef 512, ptr noundef %i.bh)
  %i.ll = icmp eq ptr %i.lk, %i.e
  br i1 %i.ll, label %bb.ag, label %.outer._crit_edge, !llvm.loop !30

bb.aj:                                            ; preds = %bb.ah
  %i.lm = trunc nuw nsw i64 %indvars.iv212 to i32
  store i32 %i.lm, ptr %i.a, align 4, !tbaa !4
  %i.ln = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.lo = load i32, ptr %i.b, align 4, !tbaa !4
  %i.lp = sext i32 %i.lo to i64
  %i.lq = getelementptr inbounds i8, ptr %i.e, i64 %i.lp
  %i.lr = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.lq, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.a) #11
  %i.ls = icmp eq i32 %i.lr, 2
  br i1 %i.ls, label %.lr.ph163, label %.loopexit125, !llvm.loop !30

.lr.ph163:                                        ; preds = %bb.aj
  br label %bb.ak, !llvm.loop !30

bb.ak:                                            ; preds = %.lr.ph163, %NameRetrieve.exit117
  %.2161 = phi i32 [ %.174.ph165, %.lr.ph163 ], [ %.3, %NameRetrieve.exit117 ]
  %i.lt = load i32, ptr %i.a, align 4, !tbaa !4
  %i.lu = load i32, ptr %i.b, align 4, !tbaa !4
  %i.lv = add nsw i32 %i.lu, %i.lt
  store i32 %i.lv, ptr %i.b, align 4, !tbaa !4
  %i.lw = load i16, ptr %i.g, align 16
  %i.lx = xor i16 %i.lw, 17237
  %i.ly = getelementptr i8, ptr %i.g, i64 2
  %i.lz = load i8, ptr %i.ly, align 2
  %i.ma = zext i8 %i.lz to i16
  %i.mb = or i16 %i.lx, %i.ma
  %i.mc = icmp ne i16 %i.mb, 0
  %i.md = zext i1 %i.mc to i32
  %i.me = icmp eq i32 %i.md, 0
  br i1 %i.me, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.mf = load i16, ptr %i.g, align 16
  %i.mg = xor i16 %i.mf, 17228
  %i.mh = getelementptr i8, ptr %i.g, i64 2
  %i.mi = load i8, ptr %i.mh, align 2
  %i.mj = zext i8 %i.mi to i16
  %i.mk = or i16 %i.mg, %i.mj
  %i.ml = icmp ne i16 %i.mk, 0
  %i.mm = zext i1 %i.ml to i32
  %i.mn = icmp eq i32 %i.mm, 0
  br i1 %i.mn, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.mo = load i16, ptr %i.g, align 16
  %i.mp = xor i16 %i.mo, 16725
  %i.mq = getelementptr i8, ptr %i.g, i64 2
  %i.mr = load i8, ptr %i.mq, align 2
  %i.ms = zext i8 %i.mr to i16
  %i.mt = or i16 %i.mp, %i.ms
  %i.mu = icmp ne i16 %i.mt, 0
  %i.mv = zext i1 %i.mu to i32
  %i.mw = icmp eq i32 %i.mv, 0
  br i1 %i.mw, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.mx = load i16, ptr %i.g, align 16
  %i.my = xor i16 %i.mx, 17217
  %i.mz = getelementptr i8, ptr %i.g, i64 2
  %i.na = load i8, ptr %i.mz, align 2
  %i.nb = zext i8 %i.na to i16
  %i.nc = or i16 %i.my, %i.nb
  %i.nd = icmp ne i16 %i.nc, 0
  %i.ne = zext i1 %i.nd to i32
  %i.nf = icmp eq i32 %i.ne, 0
  br i1 %i.nf, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ng = load i16, ptr %i.bg, align 8, !tbaa !21
  %i.nh = call ptr @FileName(i16 noundef zeroext %i.ng) #11
  %i.ni = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 38, i32 noundef 10, ptr noundef nonnull @.str.21, i32 noundef 1, ptr noundef nonnull %i.be, ptr noundef nonnull %i.g, ptr noundef %i.nh, i32 noundef %i.lg) #11 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ao
  %.3 = phi i32 [ %.2161, %bb.ao ], [ 0, %bb.ak ], [ 1, %bb.al ], [ 2, %bb.am ], [ 3, %bb.an ] ; 3 uses
  %i.nj = load i8, ptr %i.h, align 16, !tbaa !16
  %i.nk = zext i8 %i.nj to i32
  %i.nl = shl nuw nsw i32 %i.nk, 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %bb.ap
  %.014.i107 = phi i32 [ %i.nl, %bb.ap ], [ %i.no, %bb.aq ]
  %.pn.i108 = phi ptr [ %i.h, %bb.ap ], [ %.0.i110, %bb.aq ]
  %.014.fr.i109 = freeze i32 %.014.i107           ; 2 uses
  %.0.i110 = getelementptr inbounds nuw i8, ptr %.pn.i108, i64 1 ; 2 uses
  %i.nm = load i8, ptr %.0.i110, align 1, !tbaa !16 ; 2 uses
  %.not.i111 = icmp eq i8 %i.nm, 0
  %i.nn = zext i8 %i.nm to i32
  %i.no = add nuw nsw i32 %.014.fr.i109, %i.nn
  br i1 %.not.i111, label %bb.ar, label %bb.aq, !llvm.loop !26

bb.ar:                                            ; preds = %bb.aq
  %i.np = urem i32 %.014.fr.i109, 353             ; 2 uses
  %i.nq = zext nneg i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !16  ; 2 uses
  %.not1718.i112 = icmp eq i8 %i.ns, 0
  br i1 %.not1718.i112, label %.loopexit, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.ar, %bb.as
  %i.nt = phi i8 [ %i.of, %bb.as ], [ %i.ns, %bb.ar ] ; 2 uses
  %.119.i114 = phi i32 [ %i.oc, %bb.as ], [ %i.np, %bb.ar ]
  %i.nu = zext i8 %i.nt to i64
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.nu
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !15
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 64
  %i.ny = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.nx, ptr noundef nonnull readonly dereferenceable(1) %i.h) #12
  %i.nz = icmp eq i32 %i.ny, 0
  br i1 %i.nz, label %NameRetrieve.exit117, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i113
  %i.oa = add i32 %.119.i114, 1                   ; 2 uses
  %i.ob = icmp eq i32 %i.oa, 353
  %i.oc = select i1 %i.ob, i32 0, i32 %i.oa       ; 2 uses
  %i.od = sext i32 %i.oc to i64
  %i.oe = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.od
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !16  ; 2 uses
  %.not17.i115 = icmp eq i8 %i.of, 0
  br i1 %.not17.i115, label %.loopexit, label %.lr.ph.i113, !llvm.loop !27

.loopexit:                                        ; preds = %bb.as, %bb.ar
  %i.og = load i16, ptr %i.bg, align 8, !tbaa !21
  %i.oh = call ptr @FileName(i16 noundef zeroext %i.og) #11
  %i.oi = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 38, i32 noundef 11, ptr noundef nonnull @.str.22, i32 noundef 1, ptr noundef nonnull %i.be, ptr noundef nonnull %i.h, ptr noundef %i.oh, i32 noundef %i.lg) #11 ; 0 uses
  br label %NameRetrieve.exit117

NameRetrieve.exit117:                             ; preds = %.lr.ph.i113, %.loopexit
  %.lcssa.i116123 = phi i8 [ 0, %.loopexit ], [ %i.nt, %.lr.ph.i113 ]
  %i.oj = zext nneg i32 %.3 to i64
  %i.ok = getelementptr inbounds nuw [256 x i8], ptr %i.bw, i64 %i.oj
  %i.ol = load i32, ptr %i.c, align 4, !tbaa !4
  %i.om = sext i32 %i.ol to i64
  %i.on = getelementptr inbounds i8, ptr %i.ok, i64 %i.om
  store i8 %.lcssa.i116123, ptr %i.on, align 1, !tbaa !16
  %i.oo = load i32, ptr %i.b, align 4, !tbaa !4
  %i.op = sext i32 %i.oo to i64
  %i.oq = getelementptr inbounds i8, ptr %i.e, i64 %i.op
  %i.or = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.oq, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.a) #11
  %i.os = icmp eq i32 %i.or, 2
  br i1 %i.os, label %bb.ak, label %..loopexit125_crit_edge, !llvm.loop !32

.outer._crit_edge:                                ; preds = %.loopexit125, %bb.ai, %.outer127._crit_edge
  %i.ot = call i32 @fclose(ptr noundef %i.bh)     ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %.tail, %.outer._crit_edge, %bb.a
  %.076 = phi i32 [ %3, %.outer._crit_edge ], [ %i.w, %bb.a ], [ 0, %.tail ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.076
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare zeroext i16 @DefineFile(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @OpenFile(i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @PosOfFile(i16 noundef zeroext) local_unnamed_addr #3

declare ptr @FileName(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #5

declare ptr @StringInt(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @rewind(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i8 @MapCharEncoding(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @MapTable, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.d = load i8, ptr %0, align 1, !tbaa !16
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.014.i = phi i32 [ %i.f, %bb.a ], [ %i.i, %bb.b ]
  %.pn.i = phi ptr [ %0, %bb.a ], [ %.0.i, %bb.b ]
  %.014.fr.i = freeze i32 %.014.i                 ; 2 uses
  %.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 2 uses
  %i.g = load i8, ptr %.0.i, align 1, !tbaa !16   ; 2 uses
  %.not.i = icmp eq i8 %i.g, 0
  %i.h = zext i8 %i.g to i32
  %i.i = add nuw nsw i32 %.014.fr.i, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b, !llvm.loop !26

bb.c:                                             ; preds = %bb.b
  %i.j = urem i32 %.014.fr.i, 353                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2080 ; 2 uses
  %i.m = zext nneg i32 %i.j to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !16    ; 2 uses
  %.not1718.i = icmp eq i8 %i.o, 0
  br i1 %.not1718.i, label %NameRetrieve.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %i.p = phi i8 [ %i.ab, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %.119.i = phi i32 [ %i.y, %bb.d ], [ %i.j, %bb.c ]
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull readonly dereferenceable(1) %0) #12
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %NameRetrieve.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.w = add i32 %.119.i, 1                       ; 2 uses
  %i.x = icmp eq i32 %i.w, 353
  %i.y = select i1 %i.x, i32 0, i32 %i.w          ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !16  ; 2 uses
  %.not17.i = icmp eq i8 %i.ab, 0
  br i1 %.not17.i, label %NameRetrieve.exit, label %.lr.ph.i, !llvm.loop !27

NameRetrieve.exit:                                ; preds = %.lr.ph.i, %bb.d, %bb.c
  %.lcssa.i = phi i8 [ 0, %bb.c ], [ %i.p, %.lr.ph.i ], [ 0, %bb.d ]
  ret i8 %.lcssa.i
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @MapEncodingName(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @maptop, align 4, !tbaa !4
  %i.b = icmp ult i32 %0, %i.a
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @no_fpos, align 8, !tbaa !20
  %i.d = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef %i.c, ptr noundef nonnull @.str.24) #11 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = zext i32 %0 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @MapTable, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  ret ptr %i.j
}

; Function Attrs: nounwind uwtable
define dso_local void @MapEnsurePrinted(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @MapTable, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !17
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @no_fpos, align 8, !tbaa !20
  %i.g = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef %i.f, ptr noundef nonnull @.str.25) #11 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %i.j = icmp sge i32 %i.i, %1
  %.not8 = icmp eq i32 %i.i, 1
  %or.cond = or i1 %i.j, %.not8
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %1, ptr %i.h, align 8, !tbaa !22
  %i.k = load ptr, ptr @BackEnd, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35
  tail call void %i.m(i32 noundef %0) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MapPrintEncodings() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @maptop, align 4, !tbaa !4 ; 2 uses
  %i.b = icmp ugt i32 %i.a, 1
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.c = phi i32 [ %i.n, %bb.c ], [ %i.a, %bb.a ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 1, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @MapTable, i64 %indvars.iv ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !17
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = load ptr, ptr @BackEnd, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.k = trunc nuw i64 %indvars.iv to i32
  tail call void %i.j(i32 noundef %i.k) #11
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 1, ptr %i.m, align 8, !tbaa !22
  %.pre = load i32, ptr @maptop, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.n = phi i32 [ %i.c, %.lr.ph ], [ %.pre, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
end_hunk_1
