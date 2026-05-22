inline.NumInlined: 150
inline.NumDeleted: 50
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.VP8LPrefixCode = type { i8, i8 }
%struct.CrunchConfig = type { i32, i32, [2 x %struct.CrunchSubConfig], i32 }
%struct.CrunchSubConfig = type { i32, i32 }
%struct.WebPWorker = type { ptr, i32, ptr, ptr, ptr, i32 }
%struct.StreamEncodeContext = type { ptr, ptr, ptr, ptr, [14 x %struct.CrunchConfig], i32, i32, ptr }
%struct.WebPAuxStats = type { i32, [5 x float], [3 x i32], [2 x i32], [3 x [4 x i32]], [4 x i32], [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32] }
%struct.VP8LBitWriter = type { i64, i32, ptr, ptr, ptr, i32 }
%struct.WebPPicture = type { i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, i32, [2 x i32], ptr, i32, [3 x i32], ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, [3 x i32], ptr, ptr, [8 x i32], ptr, ptr, [2 x ptr] }
%struct.VP8LHashChain = type { ptr, i32 }
%struct.HuffmanTreeCode = type { i32, ptr, ptr }
%struct.VP8LRefsCursor = type { ptr, ptr, ptr }

@AnalyzeEntropy.kHistoPairs = internal unnamed_addr constant [5 x [2 x i8]] [[2 x i8] c"\04\06", [2 x i8] c"\05\07", [2 x i8] c"\08\0A", [2 x i8] c"\09\0B", [2 x i8] c"\04\06"], align 1
@kLog2Table = external local_unnamed_addr constant [256 x i32], align 16
@StoreHuffmanTreeOfHuffmanTreeToBitMask.kStorageOrder = internal unnamed_addr constant [19 x i8] c"\11\12\00\01\02\03\04\05\10\06\07\08\09\0A\0B\0C\0D\0E\0F", align 16
@kPrefixEncodeCode = external local_unnamed_addr constant [512 x %struct.VP8LPrefixCode], align 16
@kPrefixEncodeExtraBitsValue = external local_unnamed_addr constant [512 x i8], align 16
@VP8LBundleColorMap = external local_unnamed_addr global ptr, align 8
@VP8LSubtractGreenFromBlueAndRed = external local_unnamed_addr global ptr, align 8
@__const.WriteRiffHeader.riff = private unnamed_addr constant [21 x i8] c"RIFF\00\00\00\00WEBPVP8L\00\00\00\00/", align 16

; Function Attrs: nounwind uwtable
define hidden i32 @VP8LEncodeStream(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i64], align 16               ; 10 uses
  %3 = alloca [14 x %struct.CrunchConfig], align 16 ; 35 uses
  %4 = alloca %struct.WebPWorker, align 8         ; 10 uses
  %5 = alloca %struct.WebPWorker, align 8         ; 11 uses
  %6 = alloca %struct.StreamEncodeContext, align 8 ; 12 uses
  %7 = alloca %struct.StreamEncodeContext, align 8 ; 12 uses
  %8 = alloca %struct.WebPAuxStats, align 4       ; 6 uses
  %9 = alloca %struct.VP8LBitWriter, align 8      ; 11 uses
  %10 = alloca %struct.WebPPicture, align 8       ; 10 uses
  %i.b = tail call ptr @WebPSafeCalloc(i64 noundef 1, i64 noundef 2328) #7 ; 31 uses
  %i.c = icmp eq ptr %i.b, null
  %..sroa.sel.v.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 24
  %..sroa.sel.v.sroa.gep245 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %..sroa.sel.v.sroa.gep247 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %..sroa.sel.v.sroa.gep248 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %..sroa.sel.v.sroa.gep250 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %..sroa.sel.v.sroa.gep251 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sink283.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 200
  %.sink283.sroa.gep315 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sink285.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 196
  %.sink285.sroa.gep316 = getelementptr inbounds nuw i8, ptr %3, i64 28
  br i1 %i.c, label %.split, label %bb.b

.split:                                           ; preds = %bb.a
  %i.d = tail call i32 @WebPEncodingSetError(ptr noundef %1, i32 noundef 1) #7 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  %i.e = tail call ptr @WebPGetWorkerInterface() #7 ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.b, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %1, ptr %i.f, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 0, ptr %i.g, align 8, !tbaa !16
  tail call void @VP8LEncDspInit() #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  %i.h = tail call ptr @WebPGetWorkerInterface() #7 ; 7 uses
  %i.i = call i32 @VP8LBitWriterInit(ptr noundef nonnull %9, i64 noundef 0) #7
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %VP8LEncoderDelete.exit, label %bb.d

VP8LEncoderDelete.exit:                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 2312
  call void @VP8LHashChainClear(ptr noundef nonnull %i.j) #7
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 2152
  call void @VP8LBackwardRefsClear(ptr noundef nonnull %i.k) #7
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 2192
  call void @VP8LBackwardRefsClear(ptr noundef nonnull %i.l) #7
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 2232
  call void @VP8LBackwardRefsClear(ptr noundef nonnull %i.m) #7
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 2272
  call void @VP8LBackwardRefsClear(ptr noundef nonnull %i.n) #7
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  call void @WebPSafeFree(ptr noundef %i.p) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  call void @WebPSafeFree(ptr noundef nonnull %i.b) #7
  br label %bb.c

bb.c:                                             ; preds = %VP8LEncoderDelete.exit, %.split
  %i.q = call i32 @WebPEncodingSetError(ptr noundef %1, i32 noundef 1) #7
  br label %bb.an

bb.d:                                             ; preds = %bb.b
  %i.r = call i32 @WebPPictureInitInternal(ptr noundef nonnull %10, i32 noundef 528) #7
  %.not115 = icmp eq i32 %i.r, 0
  br i1 %.not115, label %VP8LEncoderDelete.exit135, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !15   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !18   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !22   ; 3 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !7    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !23   ; 6 uses
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 1128 ; 2 uses
  %i.ac = call i32 @GetColorPalette(ptr noundef %i.s, ptr noundef nonnull %i.ab) #7 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 2 uses
  %i.ae = icmp slt i32 %i.ac, 257                 ; 8 uses
  %spec.select.i = select i1 %i.ae, i32 %i.ac, i32 0 ; 4 uses
  store i32 %spec.select.i, ptr %i.ad, align 4, !tbaa !26
  %i.af = load i32, ptr %i.t, align 8, !tbaa !18
  %i.ag = load i32, ptr %i.v, align 4, !tbaa !22
  %i.ah = select i1 %i.ae, i32 9, i32 7
  %i.ai = sub nsw i32 %i.ah, %i.z                 ; 8 uses
  %i.aj = call i32 @llvm.smax.i32(i32 %i.ai, i32 2)
  %i.ak = call i32 @llvm.umin.i32(i32 %i.aj, i32 9) ; 18 uses
  %i.al = shl nuw nsw i32 1, %i.ak                ; 2 uses
  %i.am = add i32 %i.af, -1                       ; 10 uses
  %i.an = add i32 %i.al, %i.am
  %i.ao = lshr i32 %i.an, %i.ak
  %i.ap = add i32 %i.ag, -1                       ; 10 uses
  %i.aq = add i32 %i.al, %i.ap
  %i.ar = lshr i32 %i.aq, %i.ak
  %i.as = mul i32 %i.ao, %i.ar                    ; 2 uses
  %i.at = icmp slt i32 %i.ai, 9
  %i.au = icmp sgt i32 %i.as, 2600
  %i.av = select i1 %i.at, i1 %i.au, i1 false
  br i1 %i.av, label %.lr.ph.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.4, %.lr.ph.i.i.i.5, %.lr.ph.i.i.i.6, %bb.e
  %.030.lcssa.i.i.i = phi i32 [ %i.ak, %bb.e ], [ %i.bh, %.lr.ph.i.i.i ], [ %i.br, %.lr.ph.i.i.i.1 ], [ %i.cb, %.lr.ph.i.i.i.2 ], [ %i.cl, %.lr.ph.i.i.i.3 ], [ %i.cv, %.lr.ph.i.i.i.4 ], [ %i.df, %.lr.ph.i.i.i.5 ], [ %i.dp, %.lr.ph.i.i.i.6 ] ; 5 uses
  %.0.lcssa.i.i.i = phi i32 [ %i.as, %bb.e ], [ %i.bn, %.lr.ph.i.i.i ], [ %i.bx, %.lr.ph.i.i.i.1 ], [ %i.ch, %.lr.ph.i.i.i.2 ], [ %i.cr, %.lr.ph.i.i.i.3 ], [ %i.db, %.lr.ph.i.i.i.4 ], [ %i.dl, %.lr.ph.i.i.i.5 ], [ %i.dv, %.lr.ph.i.i.i.6 ]
  %i.aw = icmp eq i32 %.0.lcssa.i.i.i, 1
  %i.ax = icmp samesign ugt i32 %.030.lcssa.i.i.i, 2
  %i.ay = select i1 %i.ax, i1 %i.aw, i1 false
  br i1 %i.ay, label %bb.f, label %GetHistoBits.exit.i

bb.f:                                             ; preds = %.preheader.i.i.i
  %i.az = add nsw i32 %.030.lcssa.i.i.i, -1       ; 4 uses
  %i.ba = shl nuw nsw i32 1, %i.az                ; 2 uses
  %i.bb = add i32 %i.ba, %i.am
  %i.bc = lshr i32 %i.bb, %i.az
  %i.bd = add i32 %i.ba, %i.ap
  %i.be = lshr i32 %i.bd, %i.az
  %i.bf = mul i32 %i.bc, %i.be
  %.not.peel.i.i.i = icmp eq i32 %i.bf, 1
  br i1 %.not.peel.i.i.i, label %.peel.next.i.i.i.preheader, label %GetHistoBits.exit.i

.peel.next.i.i.i.preheader:                       ; preds = %bb.f
  %i.bg = icmp sgt i32 %.030.lcssa.i.i.i, 3
  br i1 %i.bg, label %.lr.ph295, label %GetHistoBits.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.bh = add nuw nsw i32 %i.ak, 1                ; 3 uses
  %i.bi = shl nuw nsw i32 2, %i.ak                ; 2 uses
  %i.bj = add i32 %i.bi, %i.am
  %i.bk = lshr i32 %i.bj, %i.bh
  %i.bl = add i32 %i.bi, %i.ap
  %i.bm = lshr i32 %i.bl, %i.bh
  %i.bn = mul i32 %i.bk, %i.bm                    ; 2 uses
  %i.bo = icmp slt i32 %i.ai, 8
  %i.bp = icmp sgt i32 %i.bn, 2600
  %i.bq = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %i.bq, label %.lr.ph.i.i.i.1, label %.preheader.i.i.i

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  %i.br = add nuw nsw i32 %i.ak, 2                ; 3 uses
  %i.bs = shl nuw nsw i32 4, %i.ak                ; 2 uses
  %i.bt = add i32 %i.bs, %i.am
  %i.bu = lshr i32 %i.bt, %i.br
  %i.bv = add i32 %i.bs, %i.ap
  %i.bw = lshr i32 %i.bv, %i.br
  %i.bx = mul i32 %i.bu, %i.bw                    ; 2 uses
  %i.by = icmp slt i32 %i.ai, 7
  %i.bz = icmp sgt i32 %i.bx, 2600
  %i.ca = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %i.ca, label %.lr.ph.i.i.i.2, label %.preheader.i.i.i

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.cb = add nuw nsw i32 %i.ak, 3                ; 3 uses
  %i.cc = shl nuw nsw i32 8, %i.ak                ; 2 uses
  %i.cd = add i32 %i.cc, %i.am
  %i.ce = lshr i32 %i.cd, %i.cb
  %i.cf = add i32 %i.cc, %i.ap
  %i.cg = lshr i32 %i.cf, %i.cb
  %i.ch = mul i32 %i.ce, %i.cg                    ; 2 uses
  %i.ci = icmp slt i32 %i.ai, 6
  %i.cj = icmp sgt i32 %i.ch, 2600
  %i.ck = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %i.ck, label %.lr.ph.i.i.i.3, label %.preheader.i.i.i

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2
  %i.cl = add nuw nsw i32 %i.ak, 4                ; 3 uses
  %i.cm = shl nuw nsw i32 16, %i.ak               ; 2 uses
  %i.cn = add i32 %i.cm, %i.am
  %i.co = lshr i32 %i.cn, %i.cl
  %i.cp = add i32 %i.cm, %i.ap
  %i.cq = lshr i32 %i.cp, %i.cl
  %i.cr = mul i32 %i.co, %i.cq                    ; 2 uses
  %i.cs = icmp slt i32 %i.ai, 5
  %i.ct = icmp sgt i32 %i.cr, 2600
  %i.cu = select i1 %i.cs, i1 %i.ct, i1 false
  br i1 %i.cu, label %.lr.ph.i.i.i.4, label %.preheader.i.i.i

.lr.ph.i.i.i.4:                                   ; preds = %.lr.ph.i.i.i.3
  %i.cv = add nuw nsw i32 %i.ak, 5                ; 3 uses
  %i.cw = shl nuw nsw i32 32, %i.ak               ; 2 uses
  %i.cx = add i32 %i.cw, %i.am
  %i.cy = lshr i32 %i.cx, %i.cv
  %i.cz = add i32 %i.cw, %i.ap
  %i.da = lshr i32 %i.cz, %i.cv
  %i.db = mul i32 %i.cy, %i.da                    ; 2 uses
  %i.dc = icmp slt i32 %i.ai, 4
  %i.dd = icmp sgt i32 %i.db, 2600
  %i.de = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %i.de, label %.lr.ph.i.i.i.5, label %.preheader.i.i.i

.lr.ph.i.i.i.5:                                   ; preds = %.lr.ph.i.i.i.4
  %i.df = add nuw nsw i32 %i.ak, 6                ; 3 uses
  %i.dg = shl nuw nsw i32 64, %i.ak               ; 2 uses
  %i.dh = add i32 %i.dg, %i.am
  %i.di = lshr i32 %i.dh, %i.df
  %i.dj = add i32 %i.dg, %i.ap
  %i.dk = lshr i32 %i.dj, %i.df
  %i.dl = mul i32 %i.di, %i.dk                    ; 2 uses
  %i.dm = icmp slt i32 %i.ai, 3
  %i.dn = icmp sgt i32 %i.dl, 2600
  %i.do = select i1 %i.dm, i1 %i.dn, i1 false
  br i1 %i.do, label %.lr.ph.i.i.i.6, label %.preheader.i.i.i

.lr.ph.i.i.i.6:                                   ; preds = %.lr.ph.i.i.i.5
  %i.dp = add nuw nsw i32 %i.ak, 7                ; 3 uses
  %i.dq = shl nuw nsw i32 128, %i.ak              ; 2 uses
  %i.dr = add i32 %i.dq, %i.am
  %i.ds = lshr i32 %i.dr, %i.dp
  %i.dt = add i32 %i.dq, %i.ap
  %i.du = lshr i32 %i.dt, %i.dp
  %i.dv = mul i32 %i.ds, %i.du
  br label %.preheader.i.i.i

.peel.next.i.i.i:                                 ; preds = %.lr.ph295
  %i.dw = icmp sgt i32 %.131.i.i.i294, 3
  br i1 %i.dw, label %.lr.ph295, label %GetHistoBits.exit.i, !llvm.loop !27

.lr.ph295:                                        ; preds = %.peel.next.i.i.i.preheader, %.peel.next.i.i.i
  %.131.i.i.i294 = phi i32 [ %i.dx, %.peel.next.i.i.i ], [ %i.az, %.peel.next.i.i.i.preheader ] ; 3 uses
  %i.dx = add nsw i32 %.131.i.i.i294, -1          ; 4 uses
  %i.dy = shl nuw i32 1, %i.dx                    ; 2 uses
  %i.dz = add i32 %i.dy, %i.am
  %i.ea = lshr i32 %i.dz, %i.dx
  %i.eb = add i32 %i.dy, %i.ap
  %i.ec = lshr i32 %i.eb, %i.dx
  %i.ed = mul i32 %i.ea, %i.ec
  %.not.i.i.i = icmp eq i32 %i.ed, 1
  br i1 %.not.i.i.i, label %.peel.next.i.i.i, label %.GetHistoBits.exit.i.loopexit_crit_edge, !llvm.loop !27

.GetHistoBits.exit.i.loopexit_crit_edge:          ; preds = %.lr.ph295
  br label %GetHistoBits.exit.i, !llvm.loop !27

GetHistoBits.exit.i:                              ; preds = %.peel.next.i.i.i, %.peel.next.i.i.i.preheader, %.GetHistoBits.exit.i.loopexit_crit_edge, %bb.f, %.preheader.i.i.i
  %.131.lcssa.i.i.i = phi i32 [ %.030.lcssa.i.i.i, %.preheader.i.i.i ], [ %.030.lcssa.i.i.i, %bb.f ], [ %.131.i.i.i294, %.GetHistoBits.exit.i.loopexit_crit_edge ], [ 2, %.peel.next.i.i.i.preheader ], [ 2, %.peel.next.i.i.i ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 2 uses
  store i32 %.131.lcssa.i.i.i, ptr %i.ee, align 4, !tbaa !30
end_hunk_0
begin_hunk_1_@VP8LEncodeStream:bb.a
  store i32 %.2160.i, ptr %i.pu, align 4, !tbaa !46
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  store i32 4, ptr %i.pv, align 4, !tbaa !44
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ps, i64 20
  store i32 %.2160.i, ptr %i.pw, align 4, !tbaa !46
  %i.px = getelementptr inbounds nuw i8, ptr %i.ps, i64 24
  store i32 2, ptr %i.px, align 4, !tbaa !47
  br label %EncoderAnalyze.exit

EncoderAnalyze.exit:                              ; preds = %.preheader.i.epil.preheader, %EncoderAnalyze.exit.loopexit301.unr-lcssa, %EncoderAnalyze.exit.loopexit.unr-lcssa, %.preheader.i.us.epil
  %i.py = phi i64 [ %i.oj, %EncoderAnalyze.exit.loopexit.unr-lcssa ], [ %i.oj, %.preheader.i.us.epil ], [ %i.oh, %EncoderAnalyze.exit.loopexit301.unr-lcssa ], [ %i.oh, %.preheader.i.epil.preheader ]
  %.2195271 = phi i32 [ %.2195272, %EncoderAnalyze.exit.loopexit.unr-lcssa ], [ %.2195272, %.preheader.i.us.epil ], [ %.1194, %EncoderAnalyze.exit.loopexit301.unr-lcssa ], [ %.1194, %.preheader.i.epil.preheader ] ; 2 uses
  %.2199269 = phi i32 [ %.2199270, %EncoderAnalyze.exit.loopexit.unr-lcssa ], [ %.2199270, %.preheader.i.us.epil ], [ %.2199, %EncoderAnalyze.exit.loopexit301.unr-lcssa ], [ %.2199, %.preheader.i.epil.preheader ] ; 3 uses
  %i.pz = load ptr, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !18
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pz, i64 12
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !22
  %i.qe = mul nsw i32 %i.qd, %i.qb                ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.b, i64 2312
  %i.qg = call i32 @VP8LHashChainInit(ptr noundef nonnull %i.qf, i32 noundef %i.qe) #7
  %.not.i127 = icmp eq i32 %i.qg, 0
  br i1 %.not.i127, label %EncoderAnalyze.exit.thread, label %bb.w

EncoderAnalyze.exit.thread:                       ; preds = %EncoderAnalyze.exit, %bb.h
  %i.qh = call i32 @WebPEncodingSetError(ptr noundef %1, i32 noundef 1) #7 ; 0 uses
  br label %VP8LEncoderDelete.exit135

bb.w:                                             ; preds = %EncoderAnalyze.exit
  %i.qi = add nsw i32 %i.qe, -1
  %i.qj = sdiv i32 %i.qi, 16
  %i.qk = add nsw i32 %i.qj, 1                    ; 4 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.b, i64 2152
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.ql, i32 noundef %i.qk) #7
  %i.qm = getelementptr inbounds nuw i8, ptr %i.b, i64 2192
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.qm, i32 noundef %i.qk) #7
  %i.qn = getelementptr inbounds nuw i8, ptr %i.b, i64 2232
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.qn, i32 noundef %i.qk) #7
  %i.qo = getelementptr inbounds nuw i8, ptr %i.b, i64 2272
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.qo, i32 noundef %i.qk) #7
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !51
  %i.qr = icmp sgt i32 %i.qq, 0
  br i1 %i.qr, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.qs = lshr i32 %.2199269, 1                   ; 4 uses
  %.not232 = icmp eq i32 %i.qs, 0
  br i1 %.not232, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.qt = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.qu = sub nsw i32 %.2199269, %i.qs
  %narrow = mul nsw i32 %i.qu, 28
  %i.qv = sext i32 %narrow to i64
  %scevgep = getelementptr i8, ptr %3, i64 %i.qv
  %i.qw = lshr i64 %i.py, 1
  %i.qx = mul nuw nsw i64 %i.qw, 28
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.qt, ptr align 4 %scevgep, i64 %i.qx, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.x
  %i.qy = getelementptr inbounds nuw i8, ptr %7, i64 424
  store i32 %i.qs, ptr %i.qy, align 8, !tbaa !52
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %bb.w
  %.0100 = phi i32 [ %i.qs, %._crit_edge ], [ 0, %bb.w ] ; 3 uses
  %i.qz = sub nsw i32 %.2199269, %.0100           ; 3 uses
  %i.ra = icmp sgt i32 %i.qz, 0
  br i1 %i.ra, label %.lr.ph228, label %._crit_edge229

.lr.ph228:                                        ; preds = %bb.y
  %i.rb = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.rc = zext nneg i32 %i.qz to i64
  %i.rd = mul nuw nsw i64 %i.rc, 28
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.rb, ptr nonnull align 16 %3, i64 %i.rd, i1 false)
  br label %._crit_edge229

._crit_edge229:                                   ; preds = %.lr.ph228, %bb.y
  %i.re = getelementptr inbounds nuw i8, ptr %6, i64 424
  store i32 %i.qz, ptr %i.re, align 8, !tbaa !52
  %.inv.not = icmp eq i32 %.0100, 0
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.rh = getelementptr inbounds nuw i8, ptr %10, i64 144
  %.sroa.gep140 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %.sroa.gep143 = getelementptr inbounds nuw i8, ptr %7, i64 432
  %.sroa.gep146 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.rj = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.sroa.gep149 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.gep151 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.gep154 = getelementptr inbounds nuw i8, ptr %6, i64 432
  %.sroa.gep157 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.gep160 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %0, ptr %6, align 8, !tbaa !54
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %6, i64 428
  store i32 %.2195271, ptr %.sroa.gep, align 4, !tbaa !55
  store ptr %1, ptr %.sroa.gep151, align 8, !tbaa !56
  %i.rk = load ptr, ptr %i.ri, align 8, !tbaa !57
  store ptr %i.rk, ptr %.sroa.gep154, align 8, !tbaa !58
  store ptr %2, ptr %.sroa.gep157, align 8, !tbaa !59
  store ptr %i.b, ptr %.sroa.gep160, align 8, !tbaa !60
  %i.rl = load ptr, ptr %i.h, align 8, !tbaa !61
  call void %i.rl(ptr noundef nonnull %4) #7
  store ptr %6, ptr %..sroa.sel.v.sroa.gep, align 8, !tbaa !63
  store ptr null, ptr %..sroa.sel.v.sroa.gep247, align 8, !tbaa !65
  store ptr @EncodeStreamHook, ptr %..sroa.sel.v.sroa.gep250, align 8, !tbaa !66
  br i1 %.inv.not, label %bb.ab, label %._crit_edge229.peel.newph

._crit_edge229.peel.newph:                        ; preds = %._crit_edge229
  %.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %7, i64 428
  store ptr %0, ptr %7, align 8, !tbaa !54
  store i32 %.2195271, ptr %.sroa.sel.v.sroa.sel, align 4, !tbaa !55
  %i.rm = load i32, ptr %i.rf, align 8, !tbaa !18
  %i.rn = load i32, ptr %i.rg, align 4, !tbaa !22
  %i.ro = call i32 @WebPPictureView(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %i.rm, i32 noundef %i.rn, ptr noundef nonnull %10) #7 ; 0 uses
  store ptr null, ptr %i.rh, align 8, !tbaa !67
  store ptr %10, ptr %.sroa.gep140, align 8, !tbaa !56
  %i.rp = load ptr, ptr %i.ri, align 8, !tbaa !57
  %i.rq = icmp eq ptr %i.rp, null
  %i.rr = select i1 %i.rq, ptr null, ptr %8
  store ptr %i.rr, ptr %.sroa.gep143, align 8, !tbaa !58
  %i.rs = call i32 @VP8LBitWriterClone(ptr noundef %2, ptr noundef nonnull %9) #7
  %.not118 = icmp eq i32 %i.rs, 0
  br i1 %.not118, label %.loopexit, label %bb.z

.loopexit:                                        ; preds = %._crit_edge229.peel.newph
  %i.rt = call i32 @WebPEncodingSetError(ptr noundef nonnull %1, i32 noundef 1) #7 ; 0 uses
  br label %VP8LEncoderDelete.exit135

bb.z:                                             ; preds = %._crit_edge229.peel.newph
  store ptr %9, ptr %.sroa.gep146, align 8, !tbaa !59
  %i.ru = call ptr @WebPSafeCalloc(i64 noundef 1, i64 noundef 2328) #7 ; 18 uses
  %i.rv = icmp eq ptr %i.ru, null
  br i1 %i.rv, label %VP8LEncoderNew.exit129.thread, label %bb.aa

VP8LEncoderNew.exit129.thread:                    ; preds = %bb.z
  %i.rw = call i32 @WebPEncodingSetError(ptr noundef nonnull %10, i32 noundef 1) #7 ; 0 uses
  br label %EncoderInit.exit133.thread

bb.aa:                                            ; preds = %bb.z
  store ptr %0, ptr %i.ru, align 8, !tbaa !7
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 8 ; 2 uses
  store ptr %10, ptr %i.rx, align 8, !tbaa !15
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ru, i64 24
  store i32 0, ptr %i.ry, align 8, !tbaa !16
  call void @VP8LEncDspInit() #7
  %i.rz = load ptr, ptr %i.rx, align 8, !tbaa !15 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %i.sb = load i32, ptr %i.sa, align 8, !tbaa !18
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rz, i64 12
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !22
  %i.se = mul nsw i32 %i.sd, %i.sb                ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ru, i64 2312
  %i.sg = call i32 @VP8LHashChainInit(ptr noundef nonnull %i.sf, i32 noundef %i.se) #7
  %.not.i130 = icmp eq i32 %i.sg, 0
  br i1 %.not.i130, label %EncoderInit.exit133.thread, label %.loopexit313

EncoderInit.exit133.thread:                       ; preds = %bb.aa, %VP8LEncoderNew.exit129.thread
  %i.sh = phi ptr [ %i.ru, %VP8LEncoderNew.exit129.thread ], [ %i.ru, %bb.aa ]
  %i.si = call i32 @WebPEncodingSetError(ptr noundef nonnull %1, i32 noundef 1) #7 ; 0 uses
  br label %VP8LEncoderDelete.exit135

.loopexit313:                                     ; preds = %bb.aa
  %i.sj = add nsw i32 %i.se, -1
  %i.sk = sdiv i32 %i.sj, 16
  %i.sl = add nsw i32 %i.sk, 1                    ; 4 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.ru, i64 2152
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.sm, i32 noundef %i.sl) #7
  %i.sn = getelementptr inbounds nuw i8, ptr %i.ru, i64 2192
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.sn, i32 noundef %i.sl) #7
  %i.so = getelementptr inbounds nuw i8, ptr %i.ru, i64 2232
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.so, i32 noundef %i.sl) #7
  %i.sp = getelementptr inbounds nuw i8, ptr %i.ru, i64 2272
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.sp, i32 noundef %i.sl) #7
  %i.sq = getelementptr inbounds nuw i8, ptr %i.ru, i64 68
  %i.sr = load <2 x i32>, ptr %i.ee, align 4, !tbaa !3
  store <2 x i32> %i.sr, ptr %i.sq, align 4, !tbaa !3
  %i.ss = load i32, ptr %i.el, align 4, !tbaa !32
  %i.st = getelementptr inbounds nuw i8, ptr %i.ru, i64 76
  store i32 %i.ss, ptr %i.st, align 4, !tbaa !32
  %i.su = load i32, ptr %i.ad, align 4, !tbaa !26
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ru, i64 100
  store i32 %i.su, ptr %i.sv, align 4, !tbaa !26
  %i.sw = getelementptr inbounds nuw i8, ptr %i.ru, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.sw, ptr noundef nonnull align 8 dereferenceable(1024) %i.rj, i64 1024, i1 false)
  %i.sx = getelementptr inbounds nuw i8, ptr %i.ru, i64 1128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.sx, ptr noundef nonnull align 8 dereferenceable(1024) %i.ab, i64 1024, i1 false)
  store ptr %i.ru, ptr %.sroa.gep149, align 8, !tbaa !60
  %i.sy = load ptr, ptr %i.h, align 8, !tbaa !61
  call void %i.sy(ptr noundef nonnull %5) #7
  store ptr %7, ptr %..sroa.sel.v.sroa.gep245, align 8, !tbaa !63
  store ptr null, ptr %..sroa.sel.v.sroa.gep248, align 8, !tbaa !65
  store ptr @EncodeStreamHook, ptr %..sroa.sel.v.sroa.gep251, align 8, !tbaa !66
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit313, %._crit_edge229
  %.1.lcssa = phi ptr [ null, %._crit_edge229 ], [ %i.ru, %.loopexit313 ] ; 7 uses
  %.not120 = icmp eq i32 %.0100, 0                ; 2 uses
  br i1 %.not120, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.sz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !68
  %i.tb = call i32 %i.ta(ptr noundef nonnull %5) #7
  %.not121 = icmp eq i32 %i.tb, 0
  br i1 %.not121, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.tc = call i32 @WebPEncodingSetError(ptr noundef nonnull %1, i32 noundef 1) #7 ; 0 uses
  br label %VP8LEncoderDelete.exit135

bb.ae:                                            ; preds = %bb.ac
  %i.td = load ptr, ptr %i.ri, align 8, !tbaa !57 ; 2 uses
  %.not122 = icmp eq ptr %i.td, null
  br i1 %.not122, label %11, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(188) %8, ptr noundef nonnull align 4 dereferenceable(188) %i.td, i64 188, i1 false)
  br label %11

11:                                               ; preds = %bb.af, %bb.ae
  %12 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  call void %13(ptr noundef nonnull %5) #7
  br label %bb.ag

bb.ag:                                            ; preds = %11, %bb.ab
  %i.te = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !70
  call void %i.tf(ptr noundef nonnull %4) #7
  %i.tg = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !71
  %i.ti = call i32 %i.th(ptr noundef nonnull %4) #7
  %i.tj = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !72
  call void %i.tk(ptr noundef nonnull %4) #7
  br i1 %.not120, label %VP8LEncoderDelete.exit135, label %14

14:                                               ; preds = %bb.ag
  %15 = load ptr, ptr %i.tg, align 8, !tbaa !71
  %16 = call i32 %15(ptr noundef nonnull %5) #7
  %17 = load ptr, ptr %i.tj, align 8, !tbaa !72
  call void %17(ptr noundef nonnull %5) #7
  %18 = icmp ne i32 %i.ti, 0
  %19 = icmp ne i32 %16, 0
  %or.cond = select i1 %18, i1 %19, i1 false
  br i1 %or.cond, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %14
  %i.tl = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !73
  %i.tn = icmp eq i32 %i.tm, 0
  br i1 %i.tn, label %bb.ai, label %VP8LEncoderDelete.exit135

bb.ai:                                            ; preds = %bb.ah
  %i.to = getelementptr inbounds nuw i8, ptr %10, i64 136
  %i.tp = load i32, ptr %i.to, align 8, !tbaa !73
  %i.tq = call i32 @WebPEncodingSetError(ptr noundef nonnull %1, i32 noundef %i.tp) #7 ; 0 uses
  br label %VP8LEncoderDelete.exit135

bb.aj:                                            ; preds = %14
  %i.tr = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !74
  %i.tt = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !76
  %i.tv = ptrtoint ptr %i.ts to i64
  %i.tw = ptrtoint ptr %i.tu to i64
  %i.tx = sub i64 %i.tv, %i.tw
  %i.ty = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.tz = load i32, ptr %i.ty, align 8, !tbaa !77
  %i.ua = add nsw i32 %i.tz, 7
  %i.ub = ashr i32 %i.ua, 3
  %i.uc = sext i32 %i.ub to i64
  %i.ud = add nsw i64 %i.tx, %i.uc
  %i.ue = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !74
  %i.ug = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !76
  %i.ui = ptrtoint ptr %i.uf to i64
  %i.uj = ptrtoint ptr %i.uh to i64
  %i.uk = sub i64 %i.ui, %i.uj
  %i.ul = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.um = load i32, ptr %i.ul, align 8, !tbaa !77
  %i.un = add nsw i32 %i.um, 7
  %i.uo = ashr i32 %i.un, 3
  %i.up = sext i32 %i.uo to i64
  %i.uq = add nsw i64 %i.uk, %i.up
  %i.ur = icmp ult i64 %i.ud, %i.uq
  br i1 %i.ur, label %bb.ak, label %VP8LEncoderDelete.exit135

bb.ak:                                            ; preds = %bb.aj
  call void @VP8LBitWriterSwap(ptr noundef nonnull %2, ptr noundef nonnull %9) #7
  %i.us = load ptr, ptr %i.ri, align 8, !tbaa !57 ; 2 uses
  %.not123 = icmp eq ptr %i.us, null
  br i1 %.not123, label %VP8LEncoderDelete.exit135, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(188) %i.us, ptr noundef nonnull align 4 dereferenceable(188) %8, i64 188, i1 false)
  br label %VP8LEncoderDelete.exit135

VP8LEncoderDelete.exit135:                        ; preds = %.loopexit, %EncoderInit.exit133.thread, %bb.ai, %bb.ah, %bb.ak, %bb.al, %bb.aj, %bb.ag, %bb.d, %bb.ad, %EncoderAnalyze.exit.thread
  %.4 = phi ptr [ null, %bb.d ], [ null, %EncoderAnalyze.exit.thread ], [ %.1.lcssa, %bb.ag ], [ %.1.lcssa, %bb.ad ], [ %.1.lcssa, %bb.ai ], [ %.1.lcssa, %bb.aj ], [ %.1.lcssa, %bb.al ], [ %.1.lcssa, %bb.ak ], [ %.1.lcssa, %bb.ah ], [ null, %.loopexit ], [ %i.sh, %EncoderInit.exit133.thread ] ; 8 uses
  call void @VP8LBitWriterWipeOut(ptr noundef nonnull %9) #7
  %i.ut = getelementptr inbounds nuw i8, ptr %i.b, i64 2312
  call void @VP8LHashChainClear(ptr noundef nonnull %i.ut) #7
  %i.uu = getelementptr inbounds nuw i8, ptr %i.b, i64 2152
  call void @VP8LBackwardRefsClear(ptr noundef nonnull %i.uu) #7
  %i.uv = getelementptr inbounds nuw i8, ptr %i.b, i64 2192
  call void @VP8LBackwardRefsClear(ptr noundef nonnull %i.uv) #7
  %i.uw = getelementptr inbounds nuw i8, ptr %i.b, i64 2232
  call void @VP8LBackwardRefsClear(ptr noundef nonnull %i.uw) #7
  %i.ux = getelementptr inbounds nuw i8, ptr %i.b, i64 2272
  call void @VP8LBackwardRefsClear(ptr noundef nonnull %i.ux) #7
  %i.uy = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !17
  call void @WebPSafeFree(ptr noundef %i.uz) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uy, i8 0, i64 16, i1 false)
  call void @WebPSafeFree(ptr noundef nonnull %i.b) #7
  %.not.i136 = icmp eq ptr %.4, null
  br i1 %.not.i136, label %VP8LEncoderDelete.exit137, label %bb.am

bb.am:                                            ; preds = %VP8LEncoderDelete.exit135
  %i.va = getelementptr inbounds nuw i8, ptr %.4, i64 2312
  call void @VP8LHashChainClear(ptr noundef nonnull %i.va) #7
  %i.vb = getelementptr inbounds nuw i8, ptr %.4, i64 2152
  call void @VP8LBackwardRefsClear(ptr noundef nonnull %i.vb) #7
  %i.vc = getelementptr inbounds nuw i8, ptr %.4, i64 2192
  call void @VP8LBackwardRefsClear(ptr noundef nonnull %i.vc) #7
  %i.vd = getelementptr inbounds nuw i8, ptr %.4, i64 2232
  call void @VP8LBackwardRefsClear(ptr noundef nonnull %i.vd) #7
  %i.ve = getelementptr inbounds nuw i8, ptr %.4, i64 2272
  call void @VP8LBackwardRefsClear(ptr noundef nonnull %i.ve) #7
  %i.vf = getelementptr inbounds nuw i8, ptr %.4, i64 48 ; 2 uses
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !17
  call void @WebPSafeFree(ptr noundef %i.vg) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vf, i8 0, i64 16, i1 false)
  call void @WebPSafeFree(ptr noundef nonnull %.4) #7
  br label %VP8LEncoderDelete.exit137

VP8LEncoderDelete.exit137:                        ; preds = %VP8LEncoderDelete.exit135, %bb.am
  %i.vh = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.vi = load i32, ptr %i.vh, align 8, !tbaa !73
  %i.vj = icmp eq i32 %i.vi, 0
  %i.vk = zext i1 %i.vj to i32
  br label %bb.an

bb.an:                                            ; preds = %VP8LEncoderDelete.exit137, %bb.c
  %.0 = phi i32 [ %i.q, %bb.c ], [ %i.vk, %VP8LEncoderDelete.exit137 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @WebPGetWorkerInterface() local_unnamed_addr #2

declare i32 @VP8LBitWriterInit(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @WebPEncodingSetError(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @WebPPictureView(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @VP8LBitWriterClone(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @EncodeStreamHook(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.VP8LBitWriter, align 8      ; 4 uses
  %3 = alloca %struct.VP8LBitWriter, align 8      ; 7 uses
  %4 = alloca %struct.VP8LHashChain, align 8      ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca [2048 x i16], align 16            ; 17 uses
  %i.d = alloca [256 x i32], align 16             ; 4 uses
  %i.e = alloca [256 x i32], align 16             ; 4 uses
  %i.f = alloca [256 x i32], align 16             ; 8 uses
  %i.g = alloca i32, align 4                      ; 14 uses
  %5 = alloca %struct.VP8LBitWriter, align 8      ; 4 uses
  %6 = alloca %struct.VP8LBitWriter, align 8      ; 7 uses
  %i.h = alloca i32, align 4                      ; 8 uses
  %i.i = alloca i32, align 4                      ; 8 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !54     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56   ; 16 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !59   ; 64 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !60   ; 29 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.s = load i32, ptr %i.r, align 8, !tbaa !52   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.u = load i32, ptr %i.t, align 4, !tbaa !55
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !58   ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !43
  %i.z = fptosi float %i.y to i32                 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !23
  %i.ac = icmp eq i32 %i.ab, 0                    ; 2 uses
  %i.ad = zext i1 %i.ac to i32                    ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !22 ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !74
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !76
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 46 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !77
  %i.ar = add nsw i32 %i.aq, 7
  %i.as = ashr i32 %i.ar, 3
  %i.at = zext i32 %i.as to i64
  %i.au = add i64 %i.ao, %i.at                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  store i32 2, ptr %i.g, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.av = call i32 @VP8LBitWriterInit(ptr noundef nonnull %6, i64 noundef 0) #7
  %.not = icmp eq i32 %i.av, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aw = icmp sgt i32 %i.s, 1                    ; 2 uses
  br i1 %i.aw, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ax = call i32 @VP8LBitWriterClone(ptr noundef nonnull %i.n, ptr noundef nonnull %6) #7
  %.not166 = icmp eq i32 %i.ax, 0
  br i1 %.not166, label %bb.d, label %.lr.ph

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.ay = call i32 @WebPEncodingSetError(ptr noundef nonnull %i.l, i32 noundef 1) #7 ; 0 uses
  br label %bb.dz

bb.e:                                             ; preds = %bb.b
  %i.az = icmp eq i32 %i.s, 1
  br i1 %i.az, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %i.ba = udiv i32 97, %i.s                       ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.p, i64 96 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 88 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.p, i64 92 ; 4 uses
  %.not168 = icmp ne i32 %i.u, 0
  %i.be = getelementptr inbounds nuw i8, ptr %i.p, i64 84 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.p, i64 80 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.p, i64 2152 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.p, i64 2192
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 92 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 9 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.p, i64 1128
  %i.bn = getelementptr inbounds nuw i8, ptr %i.p, i64 100 ; 5 uses
  %i.bo = getelementptr i8, ptr %i.p, i64 104     ; 16 uses
  %.sext = lshr i32 %i.ba, 2                      ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.p, i64 2312 ; 5 uses
  %i.bq = sub nsw i32 %i.ba, %.sext               ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.p, i64 108
  %i.bt = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.bu = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.bv = add i32 %i.ah, -1                       ; 24 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.p, i64 76
  %i.bz = getelementptr inbounds nuw i8, ptr %i.p, i64 68 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.p, i64 2232
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  %.not187 = icmp eq ptr %i.w, null
  %i.cc = getelementptr inbounds nuw i8, ptr %i.w, i64 148 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  %i.ce = getelementptr inbounds nuw i8, ptr %i.w, i64 156
  %i.cf = getelementptr inbounds nuw i8, ptr %i.w, i64 180
  %i.cg = getelementptr inbounds nuw i8, ptr %i.w, i64 160
  %i.ch = getelementptr inbounds nuw i8, ptr %i.w, i64 164
  %i.ci = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  %i.cj = getelementptr inbounds nuw i8, ptr %i.w, i64 172
  %i.ck = getelementptr inbounds nuw i8, ptr %i.w, i64 176
  %wide.trip.count = zext nneg i32 %i.s to i64
  %scevgep = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %scevgep454 = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %scevgep456 = getelementptr i8, ptr %i.p, i64 108
  br label %bb.f
end_hunk_1
