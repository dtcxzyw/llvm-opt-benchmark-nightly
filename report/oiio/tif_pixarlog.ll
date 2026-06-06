inline.NumInlined: 19
inline.NumDeleted: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._TIFFField = type { i32, i16, i16, i32, i32, i32, i16, i8, i8, ptr, ptr }

@TIFFInitPixarLog.module = internal constant [17 x i8] c"TIFFInitPixarLog\00", align 16
@pixarlogFields = internal constant [2 x %struct._TIFFField] [%struct._TIFFField { i32 65549, i16 0, i16 0, i32 0, i32 0, i32 13, i16 0, i8 0, i8 0, ptr @.str.2, ptr null }, %struct._TIFFField { i32 65558, i16 0, i16 0, i32 0, i32 0, i32 13, i16 0, i8 0, i8 0, ptr @.str.2, ptr null }], align 16
@.str = private unnamed_addr constant [44 x i8] c"Merging PixarLog codec-specific tags failed\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"No space for PixarLog state block\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PixarLogSetupDecode.module = internal constant [20 x i8] c"PixarLogSetupDecode\00", align 16
@.str.3 = private unnamed_addr constant [81 x i8] c"PixarLog compression can't handle bits depth/data format combination (depth: %u)\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"1.3\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@PixarLogPreDecode.module = internal constant [18 x i8] c"PixarLogPreDecode\00", align 16
@.str.7 = private unnamed_addr constant [40 x i8] c"ZLib cannot deal with buffers this size\00", align 1
@PixarLogDecode.module = internal constant [15 x i8] c"PixarLogDecode\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"%u bit input not supported in PixarLog\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"sp->stream.avail_out > sp->tbuf_size\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Decoding error at scanline %u, %s\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"ZLib error: %s\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"Not enough data at scanline %u (short %u bytes)\00", align 1
@.str.13 = private unnamed_addr constant [66 x i8] c"stride %d is not a multiple of sample count, %ld, data truncated.\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Unsupported bits/sample: %u\00", align 1
@PixarLogSetupEncode.module = internal constant [20 x i8] c"PixarLogSetupEncode\00", align 16
@.str.15 = private unnamed_addr constant [58 x i8] c"PixarLog compression can't handle %u bit linear encodings\00", align 1
@PixarLogPreEncode.module = internal constant [18 x i8] c"PixarLogPreEncode\00", align 16
@PixarLogPostEncode.module = internal constant [19 x i8] c"PixarLogPostEncode\00", align 16
@PixarLogEncode.module = internal constant [15 x i8] c"PixarLogEncode\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"Too many input bytes provided\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"Encoder error: %s\00", align 1
@Fltsize = internal unnamed_addr global float 0.000000e+00, align 4
@LogK1 = internal unnamed_addr global float 0.000000e+00, align 4
@LogK2 = internal unnamed_addr global float 0.000000e+00, align 4
@PixarLogVSetField.module = internal constant [18 x i8] c"PixarLogVSetField\00", align 16
@switch.table.PixarLogVSetField = private unnamed_addr constant [6 x i32] [i32 8, i32 8, i32 16, i32 16, i32 16, i32 32], align 4
@switch.table.PixarLogVSetField.2 = private unnamed_addr constant [6 x i32] [i32 1, i32 1, i32 1, i32 2, i32 1, i32 3], align 4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @TIFFInitPixarLog(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_TIFFMergeFields(ptr noundef %0, ptr noundef nonnull @pixarlogFields, i32 noundef 2) #7
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @TIFFInitPixarLog.module, ptr noundef nonnull @.str) #7
  br label %PixarLogMakeTables.exit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @_TIFFmallocExt(ptr noundef %0, i64 noundef 336) #7 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr %i.b, ptr %i.c, align 8, !tbaa !7
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_TIFFmemset(ptr noundef nonnull %i.b, i32 noundef 0, i64 noundef 336) #7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store i32 0, ptr %i.e, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  store i32 -1, ptr %i.f, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 928
  store ptr @PixarLogFixupTags, ptr %i.g, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 936
  store ptr @PixarLogSetupDecode, ptr %i.h, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 944
  store ptr @PixarLogPreDecode, ptr %i.i, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr @PixarLogDecode, ptr %i.j, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store ptr @PixarLogDecode, ptr %i.k, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store ptr @PixarLogDecode, ptr %i.l, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 952
  store ptr @PixarLogSetupEncode, ptr %i.m, align 8, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 968
  store ptr @PixarLogPreEncode, ptr %i.n, align 8, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 976
  store ptr @PixarLogPostEncode, ptr %i.o, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 992
  store ptr @PixarLogEncode, ptr %i.p, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store ptr @PixarLogEncode, ptr %i.q, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store ptr @PixarLogEncode, ptr %i.r, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store ptr @PixarLogClose, ptr %i.s, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store ptr @PixarLogCleanup, ptr %i.t, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.x = load <2 x ptr>, ptr %i.u, align 8, !tbaa !47
  store ptr @PixarLogVGetField, ptr %i.v, align 8, !tbaa !48
  %i.y = shufflevector <2 x ptr> %i.x, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.y, ptr %i.w, align 8, !tbaa !47
  store ptr @PixarLogVSetField, ptr %i.u, align 8, !tbaa !49
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 268
  store i32 -1, ptr %i.z, align 4, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 260
  store i32 0, ptr %i.aa, align 4, !tbaa !51
  %i.ab = tail call i32 @TIFFPredictorInit(ptr noundef nonnull %0) #7 ; 0 uses
  store float 2.500000e+02, ptr @LogK1, align 4, !tbaa !52
  store float f0x431469C5, ptr @LogK2, align 4, !tbaa !52
  %i.ac = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef 54600) #7 ; 4 uses
  %i.ad = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef 32768) #7 ; 4 uses
  %i.ae = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef 512) #7 ; 4 uses
  %i.af = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef 8196) #7 ; 21 uses
  %i.ag = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef 4098) #7 ; 8 uses
  %i.ah = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef 2049) #7 ; 8 uses
  %i.ai = icmp eq ptr %i.ac, null                 ; 2 uses
  %i.aj = icmp eq ptr %i.ad, null                 ; 2 uses
  %or.cond.i = select i1 %i.ai, i1 true, i1 %i.aj
  %i.ak = icmp eq ptr %i.ae, null                 ; 2 uses
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %i.ak
  %i.al = icmp eq ptr %i.af, null                 ; 2 uses
  %or.cond5.i = select i1 %or.cond3.i, i1 true, i1 %i.al
  %i.am = icmp eq ptr %i.ag, null                 ; 2 uses
  %or.cond7.i = select i1 %or.cond5.i, i1 true, i1 %i.am
  %i.an = icmp eq ptr %i.ah, null                 ; 2 uses
  %or.cond9.i = select i1 %or.cond7.i, i1 true, i1 %i.an
  br i1 %or.cond9.i, label %bb.e, label %vector.body

vector.body:                                      ; preds = %bb.d, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %bb.d ] ; 3 uses
  %vec.ind = phi <4 x i32> [ %vec.ind.next.1, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3>, %bb.d ] ; 3 uses
  %i.ao = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.ap = fmul nnan <4 x double> %i.ao, splat (double f0x3F1334911EDA5B17)
  %i.aq = fptrunc <4 x double> %i.ap to <4 x float>
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index
  store <4 x float> %i.aq, ptr %i.ar, align 4, !tbaa !52
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.as = uitofp nneg <4 x i32> %vec.ind.next to <4 x double>
  %i.at = fmul nnan <4 x double> %i.as, splat (double f0x3F1334911EDA5B17)
  %i.au = fptrunc <4 x double> %i.at to <4 x float>
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <4 x float> %i.au, ptr %i.aw, align 4, !tbaa !52
  %index.next.1 = add nuw nsw i64 %index, 8       ; 2 uses
  %vec.ind.next.1 = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ax = icmp eq i64 %index.next.1, 248
  br i1 %i.ax, label %.preheader165.i, label %vector.body, !llvm.loop !53

bb.e:                                             ; preds = %bb.d
  br i1 %i.ai, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ac) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %i.aj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ad) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.ak, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ae) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %i.al, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.af) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %i.am, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ag) #7
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %i.an, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ah) #7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, i8 0, i64 48, i1 false)
  br label %PixarLogMakeTables.exit

.preheader165.i:                                  ; preds = %vector.body
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 992
  store float f0x3C94D765, ptr %i.az, align 4, !tbaa !52
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 996
  store float f0x3C957109, ptr %i.ba, align 4, !tbaa !52
  br label %.preheader164.i

.preheader164.i:                                  ; preds = %.preheader165.i, %.preheader164.i
  %indvars.iv180.i = phi i64 [ %indvars.iv.next181.i, %.preheader164.i ], [ 250, %.preheader165.i ] ; 3 uses
  %indvars182.i = trunc i64 %indvars.iv180.i to i32
  %i.bb = uitofp nneg i32 %indvars182.i to double
  %i.bc = fmul nnan double %i.bb, 4.000000e-03
  %i.bd = tail call double @exp(double noundef %i.bc) #7, !tbaa !3
  %i.be = fmul double %i.bd, f0x3F7B993FE00D5376
  %i.bf = fptrunc double %i.be to float
  %indvars.iv.next181.i = add nuw nsw i64 %indvars.iv180.i, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv180.i
  store float %i.bf, ptr %i.bg, align 4, !tbaa !52
  %exitcond185.not.i = icmp eq i64 %indvars.iv.next181.i, 2048
  br i1 %exitcond185.not.i, label %vector.memcheck, label %.preheader164.i

vector.memcheck:                                  ; preds = %.preheader164.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.af, i64 8188
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !52
  %i.bj = getelementptr inbounds nuw i8, ptr %i.af, i64 8192
  store float %i.bi, ptr %i.bj, align 4, !tbaa !52
  %scevgep = getelementptr i8, ptr %i.ag, i64 4098 ; 2 uses
  %scevgep45 = getelementptr i8, ptr %i.ah, i64 2049 ; 2 uses
  %scevgep46 = getelementptr i8, ptr %i.af, i64 8196 ; 2 uses
  %bound0 = icmp ult ptr %i.ag, %scevgep45
  %bound1 = icmp ult ptr %i.ah, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound047 = icmp ult ptr %i.ag, %scevgep46
  %bound148 = icmp ult ptr %i.af, %scevgep
  %found.conflict49 = and i1 %bound047, %bound148
  %conflict.rdx = or i1 %found.conflict, %found.conflict49
  %bound050 = icmp ult ptr %i.ah, %scevgep46
  %bound151 = icmp ult ptr %i.af, %scevgep45
  %found.conflict52 = and i1 %bound050, %bound151
  %conflict.rdx53 = or i1 %conflict.rdx, %found.conflict52
  br i1 %conflict.rdx53, label %scalar.ph54.preheader, label %vector.body56

vector.body56:                                    ; preds = %vector.memcheck, %vector.body56
  %index57 = phi i64 [ %index.next58, %vector.body56 ], [ 0, %vector.memcheck ] ; 4 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index57
  %wide.load = load <4 x float>, ptr %i.bk, align 4, !tbaa !52, !alias.scope !56
end_hunk_0
begin_hunk_1_@PixarLogCleanup:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  br i1 %i.y, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aa = tail call i32 @inflateEnd(ptr noundef nonnull %i.z) #7 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ab = tail call i32 @deflateEnd(ptr noundef nonnull %i.z) #7 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !81 ; 2 uses
  %.not47 = icmp eq ptr %i.ad, null
  br i1 %.not47, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ad) #7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #7
  store ptr null, ptr %i.a, align 8, !tbaa !7
  tail call void @_TIFFSetDefaultCompressionState(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @PixarLogVGetField(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  switch i32 %1, label %bb.j [
    i32 65558, label %bb.b
    i32 65549, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 268
  %i.d = load i32, ptr %i.c, align 4, !tbaa !50
  %i.e = load i32, ptr %2, align 8                ; 3 uses
  %i.f = icmp ult i32 %i.e, 41
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = zext nneg i32 %i.e to i64
  %i.j = getelementptr i8, ptr %i.h, i64 %i.i
  %i.k = add nuw nsw i32 %i.e, 8
  store i32 %i.k, ptr %2, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.l, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = phi ptr [ %i.j, %bb.c ], [ %i.m, %bb.d ]
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !111
  store i32 %i.d, ptr %i.p, align 4, !tbaa !3
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.r = load i32, ptr %i.q, align 8, !tbaa !32
  %i.s = load i32, ptr %2, align 8                ; 3 uses
  %i.t = icmp ult i32 %i.s, 41
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = zext nneg i32 %i.s to i64
  %i.x = getelementptr i8, ptr %i.v, i64 %i.w
  %i.y = add nuw nsw i32 %i.s, 8
  store i32 %i.y, ptr %2, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  store ptr %i.ab, ptr %i.z, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = phi ptr [ %i.x, %bb.g ], [ %i.aa, %bb.h ]
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !111
  store i32 %i.r, ptr %i.ad, align 4, !tbaa !3
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !113
  %i.ag = tail call i32 %i.af(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.i, %bb.j
  %.0 = phi i32 [ %i.ag, %bb.j ], [ 1, %bb.i ], [ 1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @PixarLogVSetField(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 6 uses
  switch i32 %1, label %bb.p [
    i32 65558, label %bb.b
    i32 65549, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 8                ; 3 uses
  %i.d = icmp ult i32 %i.c, 41
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = zext nneg i32 %i.c to i64
  %i.h = getelementptr i8, ptr %i.f, i64 %i.g
  %i.i = add nuw nsw i32 %i.c, 8
  store i32 %i.i, ptr %2, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  store ptr %i.l, ptr %i.j, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = phi ptr [ %i.h, %bb.c ], [ %i.k, %bb.d ]
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 268
  store i32 %i.n, ptr %i.o, align 4, !tbaa !50
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !110
  %.not38 = icmp eq i32 %i.q, 0
  br i1 %.not38, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 260
  %i.s = load i32, ptr %i.r, align 4, !tbaa !51
  %i.t = and i32 %i.s, 1
  %.not39 = icmp eq i32 %i.t, 0
  br i1 %.not39, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.v = tail call i32 @deflateParams(ptr noundef nonnull %i.u, i32 noundef %i.n, i32 noundef 0) #7
  %.not40 = icmp eq i32 %i.v, 0
  br i1 %.not40, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !85   ; 2 uses
  %.not41 = icmp eq ptr %i.x, null
  %spec.select = select i1 %.not41, ptr @.str.6, ptr %i.x
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PixarLogVSetField.module, ptr noundef nonnull @.str.11, ptr noundef nonnull %spec.select) #7
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  %i.y = load i32, ptr %2, align 8                ; 3 uses
  %i.z = icmp ult i32 %i.y, 41
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = zext nneg i32 %i.y to i64
  %i.ad = getelementptr i8, ptr %i.ab, i64 %i.ac
  %i.ae = add nuw nsw i32 %i.y, 8
  store i32 %i.ae, ptr %2, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  store ptr %i.ah, ptr %i.af, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ai = phi ptr [ %i.ad, %bb.j ], [ %i.ag, %bb.k ]
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3  ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !32
  %i.al = icmp ult i32 %i.aj, 6
  br i1 %i.al, label %switch.lookup, label %bb.m

switch.lookup:                                    ; preds = %bb.l
  %i.am = zext nneg i32 %i.aj to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.PixarLogVSetField, i64 %i.am
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.an = zext nneg i32 %i.aj to i64
  %switch.gep44 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.PixarLogVSetField.2, i64 %i.an
  %switch.load45 = load i32, ptr %switch.gep44, align 4
  %i.ao = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 258, i32 noundef %switch.load) #7 ; 0 uses
  %i.ap = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 339, i32 noundef %switch.load45) #7 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %switch.lookup
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !94
  %i.as = and i32 %i.ar, 1024
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = tail call i64 @TIFFTileSize(ptr noundef nonnull %0) #7
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.au = phi i64 [ %i.at, %bb.n ], [ -1, %bb.m ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 912
  store i64 %i.au, ptr %i.av, align 8, !tbaa !114
  %i.aw = tail call i64 @TIFFScanlineSize(ptr noundef nonnull %0) #7
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !115
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !116
  %i.ba = tail call i32 %i.az(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #7
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.e, %bb.f, %bb.g, %bb.h
  %.034 = phi i32 [ 1, %bb.e ], [ 0, %bb.h ], [ 1, %bb.g ], [ 1, %bb.f ], [ %i.ba, %bb.p ], [ 1, %bb.o ]
  ret i32 %.034
}

declare i32 @TIFFPredictorInit(ptr noundef) local_unnamed_addr #1

declare void @_TIFFNoPostDecode(ptr noundef, ptr noundef, i64 noundef) #1

declare void @_TIFFfreeExt(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @inflateInit_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @_TIFFMultiplySSize(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @inflateReset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @TIFFSwabArrayOfShort(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @TIFFWarningExtR(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @deflateInit_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @deflateReset(ptr noundef) local_unnamed_addr #1

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @TIFFFlushData1(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare i32 @TIFFPredictorCleanup(ptr noundef) local_unnamed_addr #1

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #1

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #1

declare void @_TIFFSetDefaultCompressionState(ptr noundef) local_unnamed_addr #1

declare i32 @deflateParams(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @TIFFSetField(ptr noundef, i32 noundef, ...) local_unnamed_addr #1

declare i64 @TIFFTileSize(ptr noundef) local_unnamed_addr #1

declare i64 @TIFFScanlineSize(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 1072}
!8 = !{!"tiff", !9, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !12, i64 48, !12, i64 56, !4, i64 64, !13, i64 72, !13, i64 448, !5, i64 824, !14, i64 840, !4, i64 844, !4, i64 848, !4, i64 852, !4, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !14, i64 888, !11, i64 896, !4, i64 904, !4, i64 908, !11, i64 912, !4, i64 920, !10, i64 928, !10, i64 936, !10, i64 944, !10, i64 952, !4, i64 960, !10, i64 968, !10, i64 976, !10, i64 984, !10, i64 992, !10, i64 1000, !10, i64 1008, !10, i64 1016, !10, i64 1024, !10, i64 1032, !10, i64 1040, !10, i64 1048, !10, i64 1056, !10, i64 1064, !9, i64 1072, !11, i64 1080, !11, i64 1088, !9, i64 1096, !11, i64 1104, !11, i64 1112, !11, i64 1120, !9, i64 1128, !11, i64 1136, !9, i64 1144, !11, i64 1152, !10, i64 1160, !10, i64 1168, !10, i64 1176, !10, i64 1184, !10, i64 1192, !10, i64 1200, !10, i64 1208, !10, i64 1216, !10, i64 1224, !21, i64 1232, !11, i64 1240, !23, i64 1248, !24, i64 1256, !25, i64 1280, !26, i64 1288, !11, i64 1296, !10, i64 1304, !10, i64 1312, !10, i64 1320, !10, i64 1328, !11, i64 1336, !11, i64 1344, !11, i64 1352, !4, i64 1360}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 _ZTS12_TIFFHashSet", !10, i64 0}
!13 = !{!"", !5, i64 0, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !14, i64 44, !14, i64 46, !14, i64 48, !14, i64 50, !14, i64 52, !14, i64 54, !14, i64 56, !14, i64 58, !4, i64 60, !14, i64 64, !14, i64 66, !15, i64 72, !15, i64 80, !16, i64 88, !16, i64 92, !14, i64 96, !14, i64 98, !16, i64 100, !16, i64 104, !5, i64 108, !5, i64 112, !5, i64 136, !14, i64 140, !17, i64 144, !4, i64 152, !4, i64 156, !18, i64 160, !18, i64 168, !4, i64 176, !19, i64 184, !19, i64 216, !14, i64 248, !18, i64 256, !5, i64 264, !14, i64 268, !5, i64 272, !20, i64 296, !4, i64 304, !9, i64 312, !14, i64 320, !4, i64 324, !10, i64 328, !5, i64 336, !5, i64 337, !11, i64 344, !11, i64 352, !4, i64 360, !10, i64 368}
!14 = !{!"short", !5, i64 0}
!15 = !{!"p1 double", !10, i64 0}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !10, i64 0}
!18 = !{!"p1 long", !10, i64 0}
!19 = !{!"", !14, i64 0, !14, i64 2, !11, i64 8, !5, i64 16, !5, i64 24}
!20 = !{!"p1 float", !10, i64 0}
!21 = !{!"p2 _ZTS10_TIFFField", !22, i64 0}
!22 = !{!"any p2 pointer", !10, i64 0}
!23 = !{!"p1 _ZTS10_TIFFField", !10, i64 0}
!24 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!25 = !{!"p1 _ZTS11client_info", !10, i64 0}
!26 = !{!"p1 _ZTS15_TIFFFieldArray", !10, i64 0}
!27 = !{!28, !4, i64 216}
!28 = !{!"", !29, i64 0, !30, i64 128, !11, i64 240, !17, i64 248, !14, i64 256, !4, i64 260, !4, i64 264, !4, i64 268, !10, i64 272, !10, i64 280, !20, i64 288, !17, i64 296, !9, i64 304, !17, i64 312, !17, i64 320, !17, i64 328}
!29 = !{!"", !4, i64 0, !11, i64 8, !11, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120}
!30 = !{!"z_stream_s", !9, i64 0, !4, i64 8, !11, i64 16, !9, i64 24, !4, i64 32, !11, i64 40, !9, i64 48, !31, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !4, i64 88, !11, i64 96, !11, i64 104}
!31 = !{!"p1 _ZTS14internal_state", !10, i64 0}
!32 = !{!28, !4, i64 264}
!33 = !{!8, !10, i64 928}
!34 = !{!8, !10, i64 936}
!35 = !{!8, !10, i64 944}
!36 = !{!8, !10, i64 984}
!37 = !{!8, !10, i64 1000}
!38 = !{!8, !10, i64 1016}
!39 = !{!8, !10, i64 952}
!40 = !{!8, !10, i64 968}
!41 = !{!8, !10, i64 976}
!42 = !{!8, !10, i64 992}
!43 = !{!8, !10, i64 1008}
!44 = !{!8, !10, i64 1024}
!45 = !{!8, !10, i64 1032}
!46 = !{!8, !10, i64 1048}
!47 = !{!10, !10, i64 0}
!48 = !{!8, !10, i64 1264}
!49 = !{!8, !10, i64 1256}
!50 = !{!28, !4, i64 268}
!51 = !{!28, !4, i64 260}
!52 = !{!16, !16, i64 0}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.isvectorized", i32 1}
!55 = !{!"llvm.loop.unroll.runtime.disable"}
!56 = !{!57}
!57 = distinct !{!57, !58}
!58 = distinct !{!58, !"LVerDomain"}
!59 = !{!14, !14, i64 0}
!60 = !{!61}
!61 = distinct !{!61, !58}
!62 = !{!63, !57}
!63 = distinct !{!63, !58}
!64 = !{!5, !5, i64 0}
!65 = !{!63}
!66 = distinct !{!66, !54, !55}
!67 = distinct !{!67, !54}
!68 = !{!28, !20, i64 288}
!69 = !{!28, !17, i64 296}
!70 = !{!28, !9, i64 304}
!71 = !{!28, !17, i64 312}
!72 = !{!28, !17, i64 320}
!73 = !{!28, !17, i64 328}
!74 = !{!13, !4, i64 60}
!75 = !{!13, !4, i64 20}
!76 = !{!8, !10, i64 1224}
!77 = !{!13, !14, i64 98}
!78 = !{!13, !14, i64 58}
!79 = !{!28, !14, i64 256}
!80 = !{!13, !4, i64 16}
!81 = !{!28, !17, i64 248}
!82 = !{!28, !11, i64 240}
!83 = !{!13, !14, i64 44}
!84 = !{!13, !14, i64 46}
!85 = !{!28, !9, i64 176}
!86 = !{!8, !9, i64 1096}
!87 = !{!28, !9, i64 128}
!88 = !{!8, !11, i64 1136}
!89 = !{!28, !4, i64 136}
!90 = !{!8, !9, i64 1128}
end_hunk_1
