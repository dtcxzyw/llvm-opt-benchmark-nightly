inline.NumInlined: 86
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 26
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.VP8ModeScore = type { i64, i64, i64, i64, i64, [16 x i16], [16 x [16 x i16]], [8 x [16 x i16]], i32, [16 x i8], i32, i32, [2 x [3 x i8]] }
%struct.Node = type { i8, i8, i16 }
%struct.ScoreState = type { i64, ptr }

@VP8I16ModeOffsets = hidden local_unnamed_addr constant [4 x i16] [i16 0, i16 16, i16 512, i16 528], align 2
@VP8UVModeOffsets = hidden local_unnamed_addr constant [4 x i16] [i16 1024, i16 1040, i16 1280, i16 1296], align 2
@VP8EncPredLuma16 = external local_unnamed_addr global ptr, align 8
@VP8EncPredChroma8 = external local_unnamed_addr global ptr, align 8
@VP8Scan = hidden local_unnamed_addr constant [16 x i16] [i16 0, i16 4, i16 8, i16 12, i16 128, i16 132, i16 136, i16 140, i16 256, i16 260, i16 264, i16 268, i16 384, i16 388, i16 392, i16 396], align 16
@kAcTable = internal unnamed_addr constant [128 x i16] [i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 60, i16 62, i16 64, i16 66, i16 68, i16 70, i16 72, i16 74, i16 76, i16 78, i16 80, i16 82, i16 84, i16 86, i16 88, i16 90, i16 92, i16 94, i16 96, i16 98, i16 100, i16 102, i16 104, i16 106, i16 108, i16 110, i16 112, i16 114, i16 116, i16 119, i16 122, i16 125, i16 128, i16 131, i16 134, i16 137, i16 140, i16 143, i16 146, i16 149, i16 152, i16 155, i16 158, i16 161, i16 164, i16 167, i16 170, i16 173, i16 177, i16 181, i16 185, i16 189, i16 193, i16 197, i16 201, i16 205, i16 209, i16 213, i16 217, i16 221, i16 225, i16 229, i16 234, i16 239, i16 245, i16 249, i16 254, i16 259, i16 264, i16 269, i16 274, i16 279, i16 284], align 16
@__const.SimplifySegments.map = private unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 16
@kDcTable = internal unnamed_addr constant [128 x i8] c"\04\05\06\07\08\09\0A\0A\0B\0C\0D\0E\0F\10\11\11\12\13\14\14\15\15\16\16\17\17\18\19\19\1A\1B\1C\1D\1E\1F !\22#$%%&'()*+,-../0123456789:;<=>?@ABCDEFGHIJKLLMNOPQRSTUVWXY[]_`bdefhjlnprtvz|~\80\82\84\86\88\8A\8C\8F\91\94\97\9A\9D", align 16
@kAcTable2 = internal unnamed_addr constant [128 x i16] [i16 8, i16 8, i16 9, i16 10, i16 12, i16 13, i16 15, i16 17, i16 18, i16 20, i16 21, i16 23, i16 24, i16 26, i16 27, i16 29, i16 31, i16 32, i16 34, i16 35, i16 37, i16 38, i16 40, i16 41, i16 43, i16 44, i16 46, i16 48, i16 49, i16 51, i16 52, i16 54, i16 55, i16 57, i16 58, i16 60, i16 62, i16 63, i16 65, i16 66, i16 68, i16 69, i16 71, i16 72, i16 74, i16 75, i16 77, i16 79, i16 80, i16 82, i16 83, i16 85, i16 86, i16 88, i16 89, i16 93, i16 96, i16 99, i16 102, i16 105, i16 108, i16 111, i16 114, i16 117, i16 120, i16 124, i16 127, i16 130, i16 133, i16 136, i16 139, i16 142, i16 145, i16 148, i16 151, i16 155, i16 158, i16 161, i16 164, i16 167, i16 170, i16 173, i16 176, i16 179, i16 184, i16 189, i16 193, i16 198, i16 203, i16 207, i16 212, i16 217, i16 221, i16 226, i16 230, i16 235, i16 240, i16 244, i16 249, i16 254, i16 258, i16 263, i16 268, i16 274, i16 280, i16 286, i16 292, i16 299, i16 305, i16 311, i16 317, i16 323, i16 330, i16 336, i16 342, i16 348, i16 354, i16 362, i16 370, i16 379, i16 385, i16 393, i16 401, i16 409, i16 416, i16 424, i16 432, i16 440], align 16
@kBiasMatrices = internal unnamed_addr constant [3 x [2 x i8]] [[2 x i8] c"`n", [2 x i8] c"`l", [2 x i8] c"ns"], align 1
@VP8SSE16x16 = external local_unnamed_addr global ptr, align 8
@VP8TDisto16x16 = external local_unnamed_addr global ptr, align 8
@kWeightY = internal constant [16 x i16] [i16 38, i16 32, i16 20, i16 9, i16 32, i16 28, i16 17, i16 7, i16 20, i16 17, i16 10, i16 4, i16 9, i16 7, i16 4, i16 2], align 16
@VP8FixedCostsI16 = external local_unnamed_addr constant [4 x i16], align 2
@VP8FTransform2 = external local_unnamed_addr global ptr, align 8
@VP8FTransformWHT = external local_unnamed_addr global ptr, align 8
@VP8EncQuantizeBlockWHT = external local_unnamed_addr global ptr, align 8
@VP8EncQuantize2Blocks = external local_unnamed_addr global ptr, align 8
@VP8TransformWHT = external local_unnamed_addr global ptr, align 8
@VP8ITransform = external local_unnamed_addr global ptr, align 8
@VP8EncBands = external local_unnamed_addr constant [17 x i8], align 16
@kZigzag = internal unnamed_addr constant [16 x i8] c"\00\01\04\08\05\02\03\06\09\0C\0D\0A\07\0B\0E\0F", align 16
@kWeightTrellis = internal unnamed_addr constant [16 x i16] [i16 30, i16 27, i16 19, i16 11, i16 27, i16 24, i16 17, i16 10, i16 19, i16 17, i16 12, i16 8, i16 11, i16 10, i16 8, i16 6], align 16
@VP8EntropyCost = external local_unnamed_addr constant [256 x i16], align 16
@VP8LevelFixedCosts = external local_unnamed_addr constant [2048 x i16], align 16
@VP8SSE4x4 = external local_unnamed_addr global ptr, align 8
@VP8TDisto4x4 = external local_unnamed_addr global ptr, align 8
@VP8Copy4x4 = external local_unnamed_addr global ptr, align 8
@VP8FixedCostsI4 = external local_unnamed_addr constant [10 x [10 x [10 x i16]]], align 16
@VP8EncPredLuma4 = external local_unnamed_addr global ptr, align 8
@VP8I4ModeOffsets = internal unnamed_addr constant [10 x i16] [i16 1536, i16 1540, i16 1544, i16 1548, i16 1552, i16 1556, i16 1560, i16 1564, i16 1664, i16 1668], align 16
@VP8FTransform = external local_unnamed_addr global ptr, align 8
@VP8EncQuantizeBlock = external local_unnamed_addr global ptr, align 8
@VP8SSE16x8 = external local_unnamed_addr global ptr, align 8
@VP8FixedCostsUV = external local_unnamed_addr constant [4 x i16], align 2
@VP8Copy16x8 = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define hidden void @VP8SetSegmentParams(ptr nofree noundef %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !7    ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !26     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !27
  %i.g = sitofp i32 %i.f to double
  %i.h = fmul nnan double %i.g, 9.000000e-01
  %2 = fdiv nnan double %i.h, 1.000000e+02
  %3 = fpext float %1 to double
  %4 = fdiv double %3, 1.000000e+02               ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.j = load i32, ptr %i.i, align 4, !tbaa !30
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3588
  %i.l = load i32, ptr %i.k, align 4, !tbaa !31
  %i.m = sitofp i32 %i.l to double
  %i.n = fdiv double %i.m, 2.550000e+02           ; 3 uses
  %i.o = fcmp ogt double %i.n, 8.500000e-01
  br i1 %i.o, label %QualityToJPEGCompression.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = fcmp olt double %i.n, 3.000000e-01
  %i.q = fadd double %i.n, -3.000000e-01
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double f0xBFED1745D1745D17, double 9.000000e-01)
  %i.s = select i1 %i.p, double 9.000000e-01, double %i.r
  br label %QualityToJPEGCompression.exit

QualityToJPEGCompression.exit:                    ; preds = %bb.b, %bb.c
  %i.t = phi double [ %i.s, %bb.c ], [ 4.000000e-01, %bb.b ]
  %i.u = tail call double @pow(double noundef %4, double noundef %i.t) #11, !tbaa !3
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.v = fcmp olt double %4, 7.500000e-01
  %i.w = fmul nnan double %4, f0x3FE5555555555555
  %i.x = tail call double @llvm.fmuladd.f64(double %4, double 2.000000e+00, double -1.000000e+00)
  %i.y = select i1 %i.v, double %i.w, double %i.x
  %i.z = tail call double @pow(double noundef %i.y, double noundef f0x3FD5555555555555) #11, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %QualityToJPEGCompression.exit
  %i.aa = phi double [ %i.u, %QualityToJPEGCompression.exit ], [ %i.z, %bb.d ]
  %i.ab = icmp sgt i32 %i.c, 0
  br i1 %i.ab, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1288 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3584
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !35
  br label %.lr.ph54.preheader

.lr.ph:                                           ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ag = fmul nnan double %2, -7.812500e-03
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [744 x i8], ptr %i.af, i64 %indvars.iv ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 672
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !36
  %i.ak = sitofp i32 %i.aj to double
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ak, double 1.000000e+00)
  %i.am = tail call double @pow(double noundef %i.aa, double noundef %i.al) #11, !tbaa !3
  %i.an = fsub double 1.000000e+00, %i.am
  %i.ao = fmul double %i.an, 1.270000e+02
  %i.ap = fptosi double %i.ao to i32
  %i.aq = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 0)
  %i.ar = tail call i32 @llvm.umin.i32(i32 %i.aq, i32 127)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 680
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1288 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !32 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3584
  store i32 %i.au, ptr %i.av, align 8, !tbaa !35
  %i.aw = icmp samesign ult i32 %i.c, 4
  br i1 %i.aw, label %.lr.ph54.preheader, label %._crit_edge55

.lr.ph54.preheader:                               ; preds = %._crit_edge.thread, %._crit_edge
  %i.ax = phi i32 [ %i.ad, %._crit_edge.thread ], [ %i.au, %._crit_edge ]
  %i.ay = phi ptr [ %i.ac, %._crit_edge.thread ], [ %i.at, %._crit_edge ]
  %i.az = sext i32 %i.c to i64
  br label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %.lr.ph54
  %indvars.iv58 = phi i64 [ %i.az, %.lr.ph54.preheader ], [ %indvars.iv.next59, %.lr.ph54 ] ; 2 uses
  %i.ba = getelementptr [744 x i8], ptr %0, i64 %indvars.iv58
  %i.bb = getelementptr i8, ptr %i.ba, i64 1288
  store i32 %i.ax, ptr %i.bb, align 8, !tbaa !32
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, 1 ; 2 uses
  %i.bc = and i64 %indvars.iv.next59, 4294967295
  %exitcond61.not = icmp eq i64 %i.bc, 4
  br i1 %exitcond61.not, label %._crit_edge55.loopexit, label %.lr.ph54, !llvm.loop !39

._crit_edge55.loopexit:                           ; preds = %.lr.ph54
  %.pre = load i32, ptr %i.ay, align 8, !tbaa !32
  br label %._crit_edge55

._crit_edge55:                                    ; preds = %._crit_edge55.loopexit, %._crit_edge
  %i.bd = phi i32 [ %.pre, %._crit_edge55.loopexit ], [ %i.au, %._crit_edge ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 3592
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !40
  %i.bg = mul i32 %i.bf, 10
  %i.bh = add i32 %i.bg, -640
  %i.bi = sdiv i32 %i.bh, 70
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !27  ; 2 uses
  %i.bk = mul nsw i32 %i.bi, %i.bj
  %i.bl = sdiv i32 %i.bk, 100
  %i.bm = tail call i32 @llvm.smax.i32(i32 %i.bl, i32 -4)
  %i.bn = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 6)
  %i.bo = sdiv i32 %i.bj, -25
  %i.bp = tail call i32 @llvm.smax.i32(i32 %i.bo, i32 -15)
  %i.bq = tail call i32 @llvm.smin.i32(i32 %i.bp, i32 15)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 3596 ; 2 uses
  store i32 0, ptr %i.br, align 4, !tbaa !41
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 3600 ; 2 uses
  store i32 0, ptr %i.bs, align 8, !tbaa !42
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 3604 ; 2 uses
  store i32 0, ptr %i.bt, align 4, !tbaa !43
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 3608 ; 2 uses
  store i32 %i.bq, ptr %i.bu, align 8, !tbaa !44
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 3612 ; 2 uses
  store i32 %i.bn, ptr %i.bv, align 4, !tbaa !45
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !46
  %i.by = mul nsw i32 %i.bx, 5                    ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.ca = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 0)
  %i.cb = tail call i32 @llvm.umin.i32(i32 %i.ca, i32 127)
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr @kAcTable, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !47
  %i.cf = lshr i16 %i.ce, 2
  %i.cg = zext nneg i16 %i.cf to i32
  %i.ch = load i32, ptr %i.bz, align 8, !tbaa !49
  %i.ci = tail call i32 @VP8FilterStrengthFromDelta(i32 noundef %i.ch, i32 noundef %i.cg) #11
  %i.cj = mul nsw i32 %i.ci, %i.by
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1284
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !50
  %i.cm = add nsw i32 %i.cl, 256
  %i.cn = sdiv i32 %i.cj, %i.cm                   ; 2 uses
  %i.co = icmp slt i32 %i.cn, 2
  %i.cp = tail call i32 @llvm.smin.i32(i32 %i.cn, i32 63)
  %i.cq = select i1 %i.co, i32 0, i32 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1292 ; 2 uses
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !51
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 2032
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !32
  %i.cu = tail call i32 @llvm.smax.i32(i32 %i.ct, i32 0)
  %i.cv = tail call i32 @llvm.umin.i32(i32 %i.cu, i32 127)
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr @kAcTable, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !47
  %i.cz = lshr i16 %i.cy, 2
  %i.da = zext nneg i16 %i.cz to i32
  %i.db = load i32, ptr %i.bz, align 8, !tbaa !49
  %i.dc = tail call i32 @VP8FilterStrengthFromDelta(i32 noundef %i.db, i32 noundef %i.da) #11
  %i.dd = mul nsw i32 %i.dc, %i.by
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 2028
  %i.df = load i32, ptr %i.de, align 4, !tbaa !50
  %i.dg = add nsw i32 %i.df, 256
  %i.dh = sdiv i32 %i.dd, %i.dg                   ; 2 uses
  %i.di = icmp slt i32 %i.dh, 2
  %i.dj = tail call i32 @llvm.smin.i32(i32 %i.dh, i32 63)
  %i.dk = select i1 %i.di, i32 0, i32 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 2036
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !51
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 2776
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !32
  %i.do = tail call i32 @llvm.smax.i32(i32 %i.dn, i32 0)
  %i.dp = tail call i32 @llvm.umin.i32(i32 %i.do, i32 127)
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr @kAcTable, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !47
  %i.dt = lshr i16 %i.ds, 2
  %i.du = zext nneg i16 %i.dt to i32
  %i.dv = load i32, ptr %i.bz, align 8, !tbaa !49
  %i.dw = tail call i32 @VP8FilterStrengthFromDelta(i32 noundef %i.dv, i32 noundef %i.du) #11
  %i.dx = mul nsw i32 %i.dw, %i.by
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 2772
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !50
  %i.ea = add nsw i32 %i.dz, 256
  %i.eb = sdiv i32 %i.dx, %i.ea                   ; 2 uses
  %i.ec = icmp slt i32 %i.eb, 2
  %i.ed = tail call i32 @llvm.smin.i32(i32 %i.eb, i32 63)
  %i.ee = select i1 %i.ec, i32 0, i32 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !51
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 3520
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !32
  %i.ei = tail call i32 @llvm.smax.i32(i32 %i.eh, i32 0)
  %i.ej = tail call i32 @llvm.umin.i32(i32 %i.ei, i32 127)
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [2 x i8], ptr @kAcTable, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 2, !tbaa !47
  %i.en = lshr i16 %i.em, 2
  %i.eo = zext nneg i16 %i.en to i32
  %i.ep = load i32, ptr %i.bz, align 8, !tbaa !49
  %i.eq = tail call i32 @VP8FilterStrengthFromDelta(i32 noundef %i.ep, i32 noundef %i.eo) #11
  %i.er = mul nsw i32 %i.eq, %i.by
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 3516
  %i.et = load i32, ptr %i.es, align 4, !tbaa !50
  %i.eu = add nsw i32 %i.et, 256
  %i.ev = sdiv i32 %i.er, %i.eu                   ; 2 uses
  %i.ew = icmp slt i32 %i.ev, 2
  %i.ex = tail call i32 @llvm.smin.i32(i32 %i.ev, i32 63)
  %i.ey = select i1 %i.ew, i32 0, i32 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 3524
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !51
  %i.fa = load i32, ptr %i.cr, align 4, !tbaa !51
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.fa, ptr %i.fc, align 4, !tbaa !52
  %i.fd = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !53
  %i.fg = icmp eq i32 %i.ff, 0
  %i.fh = zext i1 %i.fg to i32
  store i32 %i.fh, ptr %i.fb, align 8, !tbaa !54
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 36
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !55
  store i32 %i.fj, ptr %i.bz, align 8, !tbaa !49
  %i.fk = icmp sgt i32 %i.c, 1
  br i1 %i.fk, label %bb.g, label %bb.u

bb.g:                                             ; preds = %._crit_edge55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const.SimplifySegments.map, i64 16, i1 false)
  %i.fl = load i32, ptr %i.b, align 8, !tbaa !7   ; 4 uses
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.fl, i32 4) ; 2 uses
  %i.fm = icmp sgt i32 %i.fl, 1
  br i1 %i.fm, label %.lr.ph63.i, label %._crit_edge.i

.lr.ph63.i:                                       ; preds = %bb.g
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 2032
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !32
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 2036
  br label %bb.h

bb.h:                                             ; preds = %SegmentsAreEquivalent.exit.thread.i, %.lr.ph63.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph63.i ], [ %indvars.iv.next.i, %SegmentsAreEquivalent.exit.thread.i ] ; 4 uses
  %i.fr = getelementptr inbounds nuw [744 x i8], ptr %i.fn, i64 %indvars.iv.i ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 680
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !32
  %i.fu = icmp eq i32 %i.fp, %i.ft
  br i1 %i.fu, label %SegmentsAreEquivalent.exit.i, label %SegmentsAreEquivalent.exit.thread.i

end_hunk_0
