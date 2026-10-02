Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/vp8l_enc?download=true
inline.NumInlined: 150
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 26
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
  %3 = alloca [14 x %struct.CrunchConfig], align 16 ; 35 uses
  %4 = alloca %struct.WebPWorker, align 8         ; 13 uses
  %5 = alloca %struct.WebPWorker, align 8         ; 11 uses
  %6 = alloca %struct.StreamEncodeContext, align 8 ; 12 uses
  %7 = alloca %struct.StreamEncodeContext, align 8 ; 12 uses
  %8 = alloca %struct.WebPAuxStats, align 4       ; 6 uses
  %9 = alloca %struct.VP8LBitWriter, align 8      ; 11 uses
  %10 = alloca %struct.WebPPicture, align 8       ; 10 uses
  %i.a = tail call ptr @WebPSafeCalloc(i64 noundef 1, i64 noundef 2328) #7 ; 31 uses
  %i.b = icmp eq ptr %i.a, null
  %..sroa.sel.v.sroa.gep248.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  %..sroa.sel.v.sroa.gep249 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sink280.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sink280.sroa.gep312 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sink282.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sink282.sroa.gep313 = getelementptr inbounds nuw i8, ptr %5, i64 16
  br i1 %i.b, label %.split, label %bb.b

.split:                                           ; preds = %bb.a
  %i.c = tail call i32 @WebPEncodingSetError(ptr noundef %1, i32 noundef 1) #7 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  %i.d = tail call ptr @WebPGetWorkerInterface() #7 ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %1, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 0, ptr %i.f, align 8, !tbaa !20
  tail call void @VP8LEncDspInit() #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  %i.g = tail call ptr @WebPGetWorkerInterface() #7 ; 10 uses
  %i.h = call i32 @VP8LBitWriterInit(ptr noundef nonnull %9, i64 noundef 0) #7
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %VP8LEncoderDelete.exit, label %bb.d

VP8LEncoderDelete.exit:                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2312
  call void @VP8LHashChainClear(ptr noundef nonnull %i.i) #7
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 2152
  call void @VP8LBackwardRefsClear(ptr noundef nonnull %i.j) #7
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2192
  call void @VP8LBackwardRefsClear(ptr noundef nonnull %i.k) #7
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 2232
  call void @VP8LBackwardRefsClear(ptr noundef nonnull %i.l) #7
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2272
  call void @VP8LBackwardRefsClear(ptr noundef nonnull %i.m) #7
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  call void @WebPSafeFree(ptr noundef %i.o) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  call void @WebPSafeFree(ptr noundef nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %VP8LEncoderDelete.exit, %.split
  %i.p = call i32 @WebPEncodingSetError(ptr noundef %1, i32 noundef 1) #7
  br label %bb.an

bb.d:                                             ; preds = %bb.b
  %i.q = call i32 @WebPPictureInitInternal(ptr noundef nonnull %10, i32 noundef 528) #7
  %.not115 = icmp eq i32 %i.q, 0
  br i1 %.not115, label %VP8LEncoderDelete.exit134, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !19   ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !25   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !26   ; 3 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !29   ; 6 uses
  %i.z = icmp eq i32 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 1128 ; 2 uses
  %i.ab = call i32 @GetColorPalette(ptr noundef %i.r, ptr noundef nonnull %i.aa) #7 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 100 ; 2 uses
  %i.ad = icmp slt i32 %i.ab, 257                 ; 8 uses
  %spec.select.i = select i1 %i.ad, i32 %i.ab, i32 0 ; 4 uses
  store i32 %spec.select.i, ptr %i.ac, align 4, !tbaa !30
  %i.ae = load i32, ptr %i.s, align 8, !tbaa !25
  %i.af = load i32, ptr %i.u, align 4, !tbaa !26
  %i.ag = select i1 %i.ad, i32 9, i32 7
  %i.ah = sub nsw i32 %i.ag, %i.y                 ; 8 uses
  %i.ai = call i32 @llvm.smax.i32(i32 %i.ah, i32 2)
  %i.aj = call i32 @llvm.umin.i32(i32 %i.ai, i32 9) ; 18 uses
  %i.ak = shl nuw nsw i32 1, %i.aj                ; 2 uses
  %i.al = add i32 %i.ae, -1                       ; 10 uses
  %i.am = add i32 %i.ak, %i.al
  %i.an = lshr i32 %i.am, %i.aj
  %i.ao = add i32 %i.af, -1                       ; 10 uses
  %i.ap = add i32 %i.ak, %i.ao
  %i.aq = lshr i32 %i.ap, %i.aj
  %i.ar = mul i32 %i.an, %i.aq                    ; 2 uses
  %i.as = icmp slt i32 %i.ah, 9
  %i.at = icmp sgt i32 %i.ar, 2600
  %i.au = select i1 %i.as, i1 %i.at, i1 false
  br i1 %i.au, label %.lr.ph.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.4, %.lr.ph.i.i.i.5, %.lr.ph.i.i.i.6, %bb.e
  %.030.lcssa.i.i.i = phi i32 [ %i.aj, %bb.e ], [ %i.bg, %.lr.ph.i.i.i ], [ %i.bq, %.lr.ph.i.i.i.1 ], [ %i.ca, %.lr.ph.i.i.i.2 ], [ %i.ck, %.lr.ph.i.i.i.3 ], [ %i.cu, %.lr.ph.i.i.i.4 ], [ %i.de, %.lr.ph.i.i.i.5 ], [ %i.do, %.lr.ph.i.i.i.6 ] ; 5 uses
  %.0.lcssa.i.i.i = phi i32 [ %i.ar, %bb.e ], [ %i.bm, %.lr.ph.i.i.i ], [ %i.bw, %.lr.ph.i.i.i.1 ], [ %i.cg, %.lr.ph.i.i.i.2 ], [ %i.cq, %.lr.ph.i.i.i.3 ], [ %i.da, %.lr.ph.i.i.i.4 ], [ %i.dk, %.lr.ph.i.i.i.5 ], [ %i.du, %.lr.ph.i.i.i.6 ]
  %i.av = icmp eq i32 %.0.lcssa.i.i.i, 1
  %i.aw = icmp samesign ugt i32 %.030.lcssa.i.i.i, 2
  %i.ax = select i1 %i.aw, i1 %i.av, i1 false
  br i1 %i.ax, label %bb.f, label %GetHistoBits.exit.i

bb.f:                                             ; preds = %.preheader.i.i.i
  %i.ay = add nsw i32 %.030.lcssa.i.i.i, -1       ; 4 uses
  %i.az = shl nuw nsw i32 1, %i.ay                ; 2 uses
  %i.ba = add i32 %i.az, %i.al
  %i.bb = lshr i32 %i.ba, %i.ay
  %i.bc = add i32 %i.az, %i.ao
  %i.bd = lshr i32 %i.bc, %i.ay
  %i.be = mul i32 %i.bb, %i.bd
  %.not.peel.i.i.i = icmp eq i32 %i.be, 1
  br i1 %.not.peel.i.i.i, label %.peel.next.i.i.i.preheader, label %GetHistoBits.exit.i

.peel.next.i.i.i.preheader:                       ; preds = %bb.f
  %i.bf = icmp sgt i32 %.030.lcssa.i.i.i, 3
  br i1 %i.bf, label %.lr.ph292, label %GetHistoBits.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.bg = add nuw nsw i32 %i.aj, 1                ; 3 uses
  %i.bh = shl nuw nsw i32 2, %i.aj                ; 2 uses
  %i.bi = add i32 %i.bh, %i.al
  %i.bj = lshr i32 %i.bi, %i.bg
  %i.bk = add i32 %i.bh, %i.ao
  %i.bl = lshr i32 %i.bk, %i.bg
  %i.bm = mul i32 %i.bj, %i.bl                    ; 2 uses
  %i.bn = icmp slt i32 %i.ah, 8
  %i.bo = icmp sgt i32 %i.bm, 2600
  %i.bp = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %i.bp, label %.lr.ph.i.i.i.1, label %.preheader.i.i.i

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  %i.bq = add nuw nsw i32 %i.aj, 2                ; 3 uses
  %i.br = shl nuw nsw i32 4, %i.aj                ; 2 uses
  %i.bs = add i32 %i.br, %i.al
  %i.bt = lshr i32 %i.bs, %i.bq
  %i.bu = add i32 %i.br, %i.ao
  %i.bv = lshr i32 %i.bu, %i.bq
  %i.bw = mul i32 %i.bt, %i.bv                    ; 2 uses
  %i.bx = icmp slt i32 %i.ah, 7
  %i.by = icmp sgt i32 %i.bw, 2600
  %i.bz = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %i.bz, label %.lr.ph.i.i.i.2, label %.preheader.i.i.i

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.ca = add nuw nsw i32 %i.aj, 3                ; 3 uses
  %i.cb = shl nuw nsw i32 8, %i.aj                ; 2 uses
  %i.cc = add i32 %i.cb, %i.al
  %i.cd = lshr i32 %i.cc, %i.ca
  %i.ce = add i32 %i.cb, %i.ao
  %i.cf = lshr i32 %i.ce, %i.ca
  %i.cg = mul i32 %i.cd, %i.cf                    ; 2 uses
  %i.ch = icmp slt i32 %i.ah, 6
  %i.ci = icmp sgt i32 %i.cg, 2600
  %i.cj = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %i.cj, label %.lr.ph.i.i.i.3, label %.preheader.i.i.i

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2
  %i.ck = add nuw nsw i32 %i.aj, 4                ; 3 uses
  %i.cl = shl nuw nsw i32 16, %i.aj               ; 2 uses
  %i.cm = add i32 %i.cl, %i.al
  %i.cn = lshr i32 %i.cm, %i.ck
  %i.co = add i32 %i.cl, %i.ao
  %i.cp = lshr i32 %i.co, %i.ck
  %i.cq = mul i32 %i.cn, %i.cp                    ; 2 uses
  %i.cr = icmp slt i32 %i.ah, 5
  %i.cs = icmp sgt i32 %i.cq, 2600
  %i.ct = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %i.ct, label %.lr.ph.i.i.i.4, label %.preheader.i.i.i

.lr.ph.i.i.i.4:                                   ; preds = %.lr.ph.i.i.i.3
  %i.cu = add nuw nsw i32 %i.aj, 5                ; 3 uses
  %i.cv = shl nuw nsw i32 32, %i.aj               ; 2 uses
  %i.cw = add i32 %i.cv, %i.al
  %i.cx = lshr i32 %i.cw, %i.cu
  %i.cy = add i32 %i.cv, %i.ao
  %i.cz = lshr i32 %i.cy, %i.cu
  %i.da = mul i32 %i.cx, %i.cz                    ; 2 uses
  %i.db = icmp slt i32 %i.ah, 4
  %i.dc = icmp sgt i32 %i.da, 2600
  %i.dd = select i1 %i.db, i1 %i.dc, i1 false
  br i1 %i.dd, label %.lr.ph.i.i.i.5, label %.preheader.i.i.i

.lr.ph.i.i.i.5:                                   ; preds = %.lr.ph.i.i.i.4
  %i.de = add nuw nsw i32 %i.aj, 6                ; 3 uses
  %i.df = shl nuw nsw i32 64, %i.aj               ; 2 uses
  %i.dg = add i32 %i.df, %i.al
  %i.dh = lshr i32 %i.dg, %i.de
  %i.di = add i32 %i.df, %i.ao
  %i.dj = lshr i32 %i.di, %i.de
  %i.dk = mul i32 %i.dh, %i.dj                    ; 2 uses
  %i.dl = icmp slt i32 %i.ah, 3
  %i.dm = icmp sgt i32 %i.dk, 2600
  %i.dn = select i1 %i.dl, i1 %i.dm, i1 false
  br i1 %i.dn, label %.lr.ph.i.i.i.6, label %.preheader.i.i.i

.lr.ph.i.i.i.6:                                   ; preds = %.lr.ph.i.i.i.5
  %i.do = add nuw nsw i32 %i.aj, 7                ; 3 uses
  %i.dp = shl nuw nsw i32 128, %i.aj              ; 2 uses
  %i.dq = add i32 %i.dp, %i.al
  %i.dr = lshr i32 %i.dq, %i.do
  %i.ds = add i32 %i.dp, %i.ao
  %i.dt = lshr i32 %i.ds, %i.do
  %i.du = mul i32 %i.dr, %i.dt
  br label %.preheader.i.i.i

.peel.next.i.i.i:                                 ; preds = %.lr.ph292
  %i.dv = icmp sgt i32 %.131.i.i.i291, 3
  br i1 %i.dv, label %.lr.ph292, label %GetHistoBits.exit.i, !llvm.loop !0

.lr.ph292:                                        ; preds = %.peel.next.i.i.i.preheader, %.peel.next.i.i.i
  %.131.i.i.i291 = phi i32 [ %i.dw, %.peel.next.i.i.i ], [ %i.ay, %.peel.next.i.i.i.preheader ] ; 3 uses
  %i.dw = add nsw i32 %.131.i.i.i291, -1          ; 4 uses
  %i.dx = shl nuw i32 1, %i.dw                    ; 2 uses
  %i.dy = add i32 %i.dx, %i.al
  %i.dz = lshr i32 %i.dy, %i.dw
  %i.ea = add i32 %i.dx, %i.ao
  %i.eb = lshr i32 %i.ea, %i.dw
  %i.ec = mul i32 %i.dz, %i.eb
  %.not.i.i.i = icmp eq i32 %i.ec, 1
  br i1 %.not.i.i.i, label %.peel.next.i.i.i, label %.GetHistoBits.exit.i.loopexit_crit_edge, !llvm.loop !0

.GetHistoBits.exit.i.loopexit_crit_edge:          ; preds = %.lr.ph292
  br label %GetHistoBits.exit.i, !llvm.loop !0

GetHistoBits.exit.i:                              ; preds = %.peel.next.i.i.i, %.peel.next.i.i.i.preheader, %.GetHistoBits.exit.i.loopexit_crit_edge, %bb.f, %.preheader.i.i.i
  %.131.lcssa.i.i.i = phi i32 [ %.030.lcssa.i.i.i, %.preheader.i.i.i ], [ %.030.lcssa.i.i.i, %bb.f ], [ %.131.i.i.i291, %.GetHistoBits.exit.i.loopexit_crit_edge ], [ 2, %.peel.next.i.i.i.preheader ], [ 2, %.peel.next.i.i.i ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 68 ; 2 uses
  store i32 %.131.lcssa.i.i.i, ptr %i.ed, align 4, !tbaa !33
  %i.ee = icmp slt i32 %i.y, 4
  %i.ef = icmp samesign ugt i32 %i.y, 4
  %i.eg = select i1 %i.ef, i32 4, i32 5
  %i.eh = select i1 %i.ee, i32 6, i32 %i.eg
  %i.ei = call range(i32 2, 7) i32 @llvm.umin.i32(i32 range(i32 2, -2147483648) %.131.lcssa.i.i.i, i32 %i.eh) ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 %i.ei, ptr %i.ej, align 8, !tbaa !34
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 76 ; 2 uses
  store i32 %i.ei, ptr %i.ek, align 4, !tbaa !35
  br i1 %i.z, label %.preheader.preheader.i.thread, label %bb.g

.preheader.preheader.i.thread:                    ; preds = %GetHistoBits.exit.i
  %i.el = select i1 %i.ad, i32 4, i32 3
  store i32 %i.el, ptr %3, align 16, !tbaa !37
  %i.em = select i1 %i.ad, i32 0, i32 3
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.em, ptr %i.en, align 4, !tbaa !38
  br label %.preheader.i.us.preheader

bb.g:                                             ; preds = %GetHistoBits.exit.i
  %i.eo = icmp slt i32 %spec.select.i, 17
  %i.ep = add i32 %spec.select.i, -17
  %.not.i125.a = icmp ult i32 %i.ep, -16          ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !39 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.et = load i32, ptr %i.es, align 8, !tbaa !40
  %or.cond.i.i = and i1 %i.ad, %i.eo
  br i1 %or.cond.i.i, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.eu = call ptr @WebPSafeCalloc(i64 noundef 1, i64 noundef 13312) #7 ; 30 uses
  %.not.i115.i = icmp eq ptr %i.eu, null
  br i1 %.not.i115.i, label %EncoderAnalyze.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ev = icmp sgt i32 %i.v, 0
  br i1 %i.ev, label %.preheader.lr.ph.i.i, label %._crit_edge108.split.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.i
  %i.ew = icmp sgt i32 %i.t, 0
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 4096
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 2048
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 6144
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 1024
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 5120
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 3072
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eu, i64 7168
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eu, i64 8192
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 10240
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eu, i64 9216
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eu, i64 11264
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eu, i64 12288
  %i.fj = sext i32 %i.et to i64
  br i1 %i.ew, label %.preheader.preheader.i.i, label %._crit_edge108.split.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.i.i
  %i.fk = load i32, ptr %i.er, align 4, !tbaa !41
  %wide.trip.count.i.i = zext nneg i32 %i.t to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.preheader.i.i
  %.090107.i.i = phi i32 [ %i.fm, %._crit_edge.i.i ], [ %i.fk, %.preheader.preheader.i.i ]
  %.091106.i.i = phi ptr [ %i.jc, %._crit_edge.i.i ], [ %i.er, %.preheader.preheader.i.i ] ; 3 uses
  %.092105.i.i = phi ptr [ %.091106.i.i, %._crit_edge.i.i ], [ null, %.preheader.preheader.i.i ] ; 2 uses
  %.093104.i.i = phi i32 [ %i.jd, %._crit_edge.i.i ], [ 0, %.preheader.preheader.i.i ]
  %.not101.i.i = icmp eq ptr %.092105.i.i, null
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.n ] ; 3 uses
  %.1103.i.i = phi i32 [ %.090107.i.i, %.preheader.i.i ], [ %i.fm, %bb.n ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.091106.i.i, i64 %indvars.iv.i.i
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !41 ; 13 uses
  %i.fn = or i32 %i.fm, 16711680
  %i.fo = and i32 %.1103.i.i, -16711936
  %i.fp = sub i32 %i.fn, %i.fo                    ; 3 uses
  %i.fq = or i32 %i.fm, 65280
  %i.fr = and i32 %.1103.i.i, 16711935
  %i.fs = sub i32 %i.fq, %i.fr                    ; 3 uses
  %i.ft = and i32 %i.fp, -16711936
  %i.fu = and i32 %i.fs, 16711935
  %i.fv = or disjoint i32 %i.ft, %i.fu            ; 3 uses
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.not101.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.092105.i.i, i64 %indvars.iv.i.i
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !41
  %i.fz = icmp eq i32 %i.fm, %i.fy
  br i1 %i.fz, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ga = lshr i32 %i.fm, 24
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.gb ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !41
  %i.ge = add i32 %i.gd, 1
  store i32 %i.ge, ptr %i.gc, align 4, !tbaa !41
  %i.gf = lshr i32 %i.fm, 16                      ; 2 uses
  %i.gg = and i32 %i.gf, 255
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.gh ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !41
  %i.gk = add i32 %i.gj, 1
  store i32 %i.gk, ptr %i.gi, align 4, !tbaa !41
  %i.gl = lshr i32 %i.fm, 8
  %i.gm = and i32 %i.gl, 255
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.gn ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !41
  %i.gq = add i32 %i.gp, 1
  store i32 %i.gq, ptr %i.go, align 4, !tbaa !41
  %i.gr = and i32 %i.fm, 255
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.gs ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !41
  %i.gv = add i32 %i.gu, 1
  store i32 %i.gv, ptr %i.gt, align 4, !tbaa !41
  %i.gw = lshr i32 %i.fp, 24
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.gx ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !41
  %i.ha = add i32 %i.gz, 1
  store i32 %i.ha, ptr %i.gy, align 4, !tbaa !41
  %i.hb = lshr i32 %i.fv, 16                      ; 2 uses
  %i.hc = and i32 %i.hb, 255
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.hd ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !41
  %i.hg = add i32 %i.hf, 1
  store i32 %i.hg, ptr %i.he, align 4, !tbaa !41
  %i.hh = lshr i32 %i.fp, 8
  %i.hi = and i32 %i.hh, 255
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.hj ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !41
  %i.hm = add i32 %i.hl, 1
  store i32 %i.hm, ptr %i.hk, align 4, !tbaa !41
  %i.hn = and i32 %i.fs, 255
  %i.ho = zext nneg i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.ho ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !41
  %i.hr = add i32 %i.hq, 1
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !41
  %i.hs = ashr i32 %i.fm, 8                       ; 2 uses
  %i.ht = sub nsw i32 %i.gf, %i.hs
  %i.hu = and i32 %i.ht, 255
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.hv ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !41
  %i.hy = add i32 %i.hx, 1
  store i32 %i.hy, ptr %i.hw, align 4, !tbaa !41
  %i.hz = sub nsw i32 %i.fm, %i.hs
  %i.ia = and i32 %i.hz, 255
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.ib ; 2 uses
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !41
  %i.ie = add i32 %i.id, 1
  store i32 %i.ie, ptr %i.ic, align 4, !tbaa !41
  %i.if = ashr i32 %i.fv, 8                       ; 2 uses
  %i.ig = sub nsw i32 %i.hb, %i.if
  %i.ih = and i32 %i.ig, 255
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.ii ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !41
  %i.il = add i32 %i.ik, 1
  store i32 %i.il, ptr %i.ij, align 4, !tbaa !41
  %i.im = sub i32 %i.fs, %i.if
  %i.in = and i32 %i.im, 255
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.io ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !41
  %i.ir = add i32 %i.iq, 1
  store i32 %i.ir, ptr %i.ip, align 4, !tbaa !41
  %i.is = zext i32 %i.fm to i64
  %i.it = lshr i32 %i.fm, 19
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = add nuw nsw i64 %i.iu, %i.is
  %i.iw = mul nuw nsw i64 %i.iv, 969276327
  %i.ix = lshr i64 %i.iw, 24
  %i.iy = and i64 %i.ix, 255
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.iy ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !41
  %i.jb = add i32 %i.ja, 1
  store i32 %i.jb, ptr %i.iz, align 4, !tbaa !41
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.j, !llvm.loop !86

._crit_edge.i.i:                                  ; preds = %bb.n
  %i.jc = getelementptr inbounds [4 x i8], ptr %.091106.i.i, i64 %i.fj
  %i.jd = add nuw nsw i32 %.093104.i.i, 1         ; 2 uses
  %exitcond113.not.i.i = icmp eq i32 %i.jd, %i.v
  br i1 %exitcond113.not.i.i, label %._crit_edge108.split.i.i, label %.preheader.i.i, !llvm.loop !87

._crit_edge108.split.i.i:                         ; preds = %._crit_edge.i.i, %.preheader.lr.ph.i.i, %bb.i
  %i.je = getelementptr inbounds nuw i8, ptr %i.eu, i64 9216 ; 3 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !41
  %i.jg = add i32 %i.jf, 1
  store i32 %i.jg, ptr %i.je, align 4, !tbaa !41
  %i.jh = getelementptr inbounds nuw i8, ptr %i.eu, i64 11264 ; 3 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !41
  %i.jj = add i32 %i.ji, 1
  store i32 %i.jj, ptr %i.jh, align 4, !tbaa !41
  %i.jk = getelementptr inbounds nuw i8, ptr %i.eu, i64 5120 ; 3 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !41
  %i.jm = add i32 %i.jl, 1
  store i32 %i.jm, ptr %i.jk, align 4, !tbaa !41
  %i.jn = getelementptr inbounds nuw i8, ptr %i.eu, i64 3072 ; 3 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !41
  %i.jp = add i32 %i.jo, 1
  store i32 %i.jp, ptr %i.jn, align 4, !tbaa !41
  %i.jq = getelementptr inbounds nuw i8, ptr %i.eu, i64 7168 ; 3 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !41
  %i.js = add i32 %i.jr, 1
  store i32 %i.js, ptr %i.jq, align 4, !tbaa !41
  %i.jt = getelementptr inbounds nuw i8, ptr %i.eu, i64 1024 ; 3 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !41
  %i.jv = add i32 %i.ju, 1
  store i32 %i.jv, ptr %i.jt, align 4, !tbaa !41
  %i.jw = call i64 @VP8LBitsEntropy(ptr noundef %i.eu, i32 noundef 256) #7
  %i.jx = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.jt, i32 noundef 256) #7
  %i.jy = getelementptr inbounds nuw i8, ptr %i.eu, i64 2048
  %i.jz = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.jy, i32 noundef 256) #7
  %i.ka = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.jn, i32 noundef 256) #7
  %i.kb = getelementptr inbounds nuw i8, ptr %i.eu, i64 4096
  %i.kc = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.kb, i32 noundef 256) #7
  %i.kd = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.jk, i32 noundef 256) #7
  %i.ke = getelementptr inbounds nuw i8, ptr %i.eu, i64 6144
  %i.kf = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.ke, i32 noundef 256) #7
  %i.kg = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.jq, i32 noundef 256) #7
  %i.kh = getelementptr inbounds nuw i8, ptr %i.eu, i64 8192
  %i.ki = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.kh, i32 noundef 256) #7
  %i.kj = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.je, i32 noundef 256) #7
  %i.kk = getelementptr inbounds nuw i8, ptr %i.eu, i64 10240
  %i.kl = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.kk, i32 noundef 256) #7
  %i.km = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.jh, i32 noundef 256) #7
  %i.kn = getelementptr inbounds nuw i8, ptr %i.eu, i64 12288
  %i.ko = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.kn, i32 noundef 256) #7
  %i.kp = add i64 %i.jz, %i.jw                    ; 2 uses
  %i.kq = add i64 %i.ka, %i.jx                    ; 2 uses
  %i.kr = add i64 %i.ki, %i.kp
  %i.ks = add i64 %i.kr, %i.kl                    ; 2 uses
  %i.kt = add i64 %i.kj, %i.kq
  %i.ku = add i64 %i.kt, %i.km
  %i.kv = shl nuw nsw i32 1, %i.ei                ; 2 uses
  %i.kw = add i32 %i.t, -1
  %i.kx = add i32 %i.kw, %i.kv
  %i.ky = lshr i32 %i.kx, %i.ei
  %i.kz = zext nneg i32 %i.ky to i64
  %i.la = add i32 %i.v, -1
  %i.lb = add i32 %i.la, %i.kv
  %i.lc = lshr i32 %i.lb, %i.ei
  %i.ld = zext nneg i32 %i.lc to i64
  %i.le = mul nuw nsw i64 %i.kz, %i.ld            ; 2 uses
  %i.lf = load i32, ptr getelementptr inbounds nuw (i8, ptr @kLog2Table, i64 96), align 16, !tbaa !41
  %i.lg = zext i32 %i.lf to i64
  %i.lh = mul i64 %i.le, %i.lg
  %i.li = add i64 %i.ku, %i.lh                    ; 2 uses
  %i.lj = sext i32 %spec.select.i to i64
  %i.lk = shl nsw i64 %i.lj, 26
  %i.ll = add i64 %i.ko, %i.lk
  %i.lm = add i64 %i.kc, %i.kp
  %i.ln = add i64 %i.lm, %i.kf                    ; 2 uses
  %i.lo = add i64 %i.kd, %i.kq
  %i.lp = add i64 %i.lo, %i.kg
  %i.lq = load i32, ptr getelementptr inbounds nuw (i8, ptr @kLog2Table, i64 56), align 8, !tbaa !41
  %i.lr = zext i32 %i.lq to i64
  %i.ls = mul i64 %i.le, %i.lr
  %i.lt = add i64 %i.lp, %i.ls                    ; 2 uses
  %i.lu = call i64 @llvm.umin.i64(i64 %i.ln, i64 %i.lt) ; 2 uses
  %i.lv = call i64 @llvm.umin.i64(i64 %i.lu, i64 %i.ks) ; 2 uses
  %i.lw = icmp ugt i64 %i.lu, %i.ks
  %i.lx = icmp ugt i64 %i.ln, %i.lt
  %spec.select125.i = zext i1 %i.lx to i32
  %spec.select125.i.1 = select i1 %i.lw, i32 2, i32 %spec.select125.i
  %i.ly = icmp ugt i64 %i.lv, %i.li
  %spec.select125.i.2 = select i1 %i.ly, i32 3, i32 %spec.select125.i.1 ; 2 uses
  br i1 %i.ad, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge108.split.i.i
  %i.lz = call i64 @llvm.umin.i64(i64 %i.lv, i64 %i.li)
  %i.ma = icmp ugt i64 %i.lz, %i.ll
  %spec.select125.i.3 = select i1 %i.ma, i32 4, i32 %spec.select125.i.2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge108.split.i.i
  %spec.select125.i.lcssa = phi i32 [ %spec.select125.i.3, %bb.o ], [ %spec.select125.i.2, %._crit_edge108.split.i.i ] ; 2 uses
  %i.mb = zext i32 %spec.select125.i.lcssa to i64
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr @AnalyzeEntropy.kHistoPairs, i64 %i.mb ; 2 uses
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !42
  %i.me = zext i8 %i.md to i64
  %i.mf = getelementptr inbounds nuw [1024 x i8], ptr %i.eu, i64 %i.me ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mc, i64 1
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !42
  %i.mi = zext i8 %i.mh to i64
  %i.mj = getelementptr inbounds nuw [1024 x i8], ptr %i.eu, i64 %i.mi ; 3 uses
  br label %bb.t

bb.q:                                             ; preds = %bb.t
  %indvars.iv.next124.i.i = add nuw nsw i64 %indvars.iv123.i.i, 1 ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv.next124.i.i
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !41
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %indvars.iv.next124.i.i
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !41
  %i.mo = or i32 %i.mn, %i.ml
  %.not100.i.i.1 = icmp eq i32 %i.mo, 0
  br i1 %.not100.i.i.1, label %bb.r, label %.loopexit.i.i

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next124.i.i.1 = add nuw nsw i64 %indvars.iv123.i.i, 2 ; 2 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv.next124.i.i.1
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !41
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %indvars.iv.next124.i.i.1
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !41
  %i.mt = or i32 %i.ms, %i.mq
  %.not100.i.i.2 = icmp eq i32 %i.mt, 0
  br i1 %.not100.i.i.2, label %bb.s, label %.loopexit.i.i

bb.s:                                             ; preds = %bb.r
  %indvars.iv.next124.i.i.2 = add nuw nsw i64 %indvars.iv123.i.i, 3 ; 2 uses
  %exitcond126.not.i.i.2 = icmp eq i64 %indvars.iv.next124.i.i.2, 256
  br i1 %exitcond126.not.i.i.2, label %.loopexit.i.i, label %bb.t, !llvm.loop !88

bb.t:                                             ; preds = %bb.s, %bb.p
  %indvars.iv123.i.i = phi i64 [ 1, %bb.p ], [ %indvars.iv.next124.i.i.2, %bb.s ] ; 5 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv123.i.i
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !41
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %indvars.iv123.i.i
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !41
  %i.my = or i32 %i.mx, %i.mv
  %.not100.i.i = icmp eq i32 %i.my, 0
  br i1 %.not100.i.i, label %bb.q, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.s, %bb.r, %bb.q, %bb.t
  %.0192 = phi i32 [ 1, %bb.s ], [ 0, %bb.t ], [ 0, %bb.q ], [ 0, %bb.r ]
  call void @WebPSafeFree(ptr noundef nonnull %i.eu) #7
  br label %bb.u

bb.u:                                             ; preds = %bb.g, %.loopexit.i.i
  %.1193 = phi i32 [ %.0192, %.loopexit.i.i ], [ 1, %bb.g ] ; 5 uses
  %.2120.ph.i = phi i32 [ %spec.select125.i.lcssa, %.loopexit.i.i ], [ 4, %bb.g ] ; 2 uses
  %i.mz = icmp eq i32 %i.y, 6
  %i.na = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.nb = load float, ptr %i.na, align 4, !tbaa !43 ; 2 uses
  %i.nc = fcmp oeq float %i.nb, 1.000000e+02
  %or.cond.i = select i1 %i.mz, i1 %i.nc, i1 false
  br i1 %or.cond.i, label %.loopexit.3.i, label %._crit_edge.i

.loopexit.3.i:                                    ; preds = %bb.u
  store i32 0, ptr %3, align 16, !tbaa !37
  %i.nd = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 3, ptr %i.nd, align 4, !tbaa !38
  %i.ne = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 1, ptr %i.ne, align 4, !tbaa !37
  %i.nf = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 3, ptr %i.nf, align 16, !tbaa !38
  %i.ng = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 2, ptr %i.ng, align 8, !tbaa !37
  %i.nh = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 3, ptr %i.nh, align 4, !tbaa !38
  %i.ni = getelementptr inbounds nuw i8, ptr %3, i64 84
  store i32 3, ptr %i.ni, align 4, !tbaa !37
  %i.nj = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i32 3, ptr %i.nj, align 8, !tbaa !38
  br i1 %i.ad, label %.loopexit.loopexit.5.i, label %.preheader.preheader.i

.loopexit.loopexit.5.i:                           ; preds = %.loopexit.3.i
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i32 4, ptr %11, align 16, !tbaa !37
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 116
  store i32 1, ptr %12, align 4, !tbaa !38
  %i.nk = getelementptr inbounds nuw i8, ptr %3, i64 140
  store i32 4, ptr %i.nk, align 4, !tbaa !37
  %i.nl = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i32 2, ptr %i.nl, align 16, !tbaa !38
  %i.nm = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i32 5, ptr %i.nm, align 8, !tbaa !37
  %i.nn = getelementptr inbounds nuw i8, ptr %3, i64 172
  store i32 1, ptr %i.nn, align 4, !tbaa !38
  %i.no = getelementptr inbounds nuw i8, ptr %3, i64 196
  store i32 5, ptr %i.no, align 4, !tbaa !37
  %i.np = getelementptr inbounds nuw i8, ptr %3, i64 200
  store i32 2, ptr %i.np, align 8, !tbaa !38
  br i1 %.not.i125.a, label %.preheader.i.us.preheader, label %.preheader.i.preheader

._crit_edge.i:                                    ; preds = %bb.u
  store i32 %.2120.ph.i, ptr %3, align 16, !tbaa !37
  %i.nq = select i1 %i.ad, i32 1, i32 3
  %i.nr = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.nq, ptr %i.nr, align 4, !tbaa !38
  %i.ns = fcmp oge float %i.nb, 7.500000e+01
  %i.nt = icmp eq i32 %i.y, 5
  %or.cond9.i = select i1 %i.ns, i1 %i.nt, i1 false
  br i1 %or.cond9.i, label %bb.v, label %.preheader.preheader.i

bb.v:                                             ; preds = %._crit_edge.i
  %i.nu = icmp eq i32 %.2120.ph.i, 4
  br i1 %i.nu, label %.preheader.preheader.i.sink.split, label %.preheader.preheader.i

.preheader.preheader.i.sink.split:                ; preds = %bb.v
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 5, ptr %13, align 4, !tbaa !37
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %14, align 16, !tbaa !38
  br i1 %.not.i125.a, label %.preheader.i.us.preheader, label %.preheader.i.preheader

.preheader.preheader.i:                           ; preds = %.loopexit.3.i, %bb.v, %._crit_edge.i
  %.2196 = phi i32 [ 1, %._crit_edge.i ], [ 1, %bb.v ], [ 4, %.loopexit.3.i ] ; 3 uses
  %.2155.i = phi i32 [ 0, %._crit_edge.i ], [ 1, %bb.v ], [ 1, %.loopexit.3.i ] ; 2 uses
  %i.nv = zext nneg i32 %.2196 to i64             ; 2 uses
  br i1 %.not.i125.a, label %.preheader.i.us.preheader, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.preheader.i.sink.split, %.loopexit.loopexit.5.i, %.preheader.preheader.i
  %15 = phi i64 [ 8, %.loopexit.loopexit.5.i ], [ %i.nv, %.preheader.preheader.i ], [ 2, %.preheader.preheader.i.sink.split ] ; 4 uses
  %.2155.i271 = phi i32 [ 1, %.loopexit.loopexit.5.i ], [ %.2155.i, %.preheader.preheader.i ], [ 1, %.preheader.preheader.i.sink.split ] ; 6 uses
  %.2196269 = phi i32 [ 8, %.loopexit.loopexit.5.i ], [ %.2196, %.preheader.preheader.i ], [ 2, %.preheader.preheader.i.sink.split ] ; 2 uses
  %xtraiter = and i64 %15, 1
  %i.nw = icmp eq i64 %15, 1
  br i1 %i.nw, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %15, 2147483646
  br label %.preheader.i

.preheader.i.us.preheader:                        ; preds = %.preheader.preheader.i.sink.split, %.loopexit.loopexit.5.i, %.preheader.preheader.i.thread, %.preheader.preheader.i
  %16 = phi i64 [ 1, %.preheader.preheader.i.thread ], [ %i.nv, %.preheader.preheader.i ], [ 8, %.loopexit.loopexit.5.i ], [ 2, %.preheader.preheader.i.sink.split ] ; 3 uses
  %.2155.i268 = phi i32 [ 0, %.preheader.preheader.i.thread ], [ %.2155.i, %.preheader.preheader.i ], [ 1, %.loopexit.loopexit.5.i ], [ 1, %.preheader.preheader.i.sink.split ] ; 5 uses
  %.2267 = phi i32 [ 0, %.preheader.preheader.i.thread ], [ %.1193, %.preheader.preheader.i ], [ %.1193, %.loopexit.loopexit.5.i ], [ %.1193, %.preheader.preheader.i.sink.split ] ; 2 uses
  %.2196265 = phi i32 [ 1, %.preheader.preheader.i.thread ], [ %.2196, %.preheader.preheader.i ], [ 8, %.loopexit.loopexit.5.i ], [ 2, %.preheader.preheader.i.sink.split ] ; 2 uses
  %i.nx = add nsw i64 %16, -1
  %xtraiter304 = and i64 %16, 3                   ; 3 uses
  %i.ny = icmp ult i64 %i.nx, 3
  br i1 %i.ny, label %.preheader.i.us.epil.preheader, label %.preheader.i.us.preheader.new

.preheader.i.us.preheader.new:                    ; preds = %.preheader.i.us.preheader
  %unroll_iter307 = and i64 %16, 2147483644
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.i.us, %.preheader.i.us.preheader.new
  %indvars.iv143.i.us = phi i64 [ 0, %.preheader.i.us.preheader.new ], [ %indvars.iv.next144.i.us.3, %.preheader.i.us ] ; 5 uses
  %niter308 = phi i64 [ 0, %.preheader.i.us.preheader.new ], [ %niter308.next.3, %.preheader.i.us ]
  %i.nz = getelementptr inbounds nuw [28 x i8], ptr %3, i64 %indvars.iv143.i.us ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  store i32 3, ptr %i.oa, align 8, !tbaa !45
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 12
  store i32 %.2155.i268, ptr %i.ob, align 4, !tbaa !46
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  store i32 1, ptr %i.oc, align 8, !tbaa !47
  %i.od = getelementptr inbounds nuw [28 x i8], ptr %3, i64 %indvars.iv143.i.us ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 36
  store i32 3, ptr %i.oe, align 4, !tbaa !45
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 40
  store i32 %.2155.i268, ptr %i.of, align 8, !tbaa !46
  %i.og = getelementptr inbounds nuw i8, ptr %i.od, i64 52
  store i32 1, ptr %i.og, align 4, !tbaa !47
  %i.oh = getelementptr inbounds nuw [28 x i8], ptr %3, i64 %indvars.iv143.i.us ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 64
  store i32 3, ptr %i.oi, align 16, !tbaa !45
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 68
  store i32 %.2155.i268, ptr %i.oj, align 4, !tbaa !46
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oh, i64 80
  store i32 1, ptr %i.ok, align 16, !tbaa !47
  %i.ol = getelementptr inbounds nuw [28 x i8], ptr %3, i64 %indvars.iv143.i.us ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 92
  store i32 3, ptr %i.om, align 4, !tbaa !45
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 96
  store i32 %.2155.i268, ptr %i.on, align 16, !tbaa !46
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ol, i64 108
  store i32 1, ptr %i.oo, align 4, !tbaa !47
  %indvars.iv.next144.i.us.3 = add nuw nsw i64 %indvars.iv143.i.us, 4 ; 2 uses
  %niter308.next.3 = add i64 %niter308, 4         ; 2 uses
  %niter308.ncmp.3 = icmp eq i64 %niter308.next.3, %unroll_iter307
  br i1 %niter308.ncmp.3, label %EncoderAnalyze.exit.loopexit.unr-lcssa, label %.preheader.i.us, !llvm.loop !89

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %indvars.iv143.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %indvars.iv.next144.i.1, %.preheader.i ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %.preheader.i ]
  %i.op = getelementptr inbounds nuw [28 x i8], ptr %3, i64 %indvars.iv143.i ; 5 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  store i32 3, ptr %i.oq, align 8, !tbaa !45
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 12
  store i32 %.2155.i271, ptr %i.or, align 4, !tbaa !46
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  store i32 4, ptr %i.os, align 8, !tbaa !45
  %i.ot = getelementptr inbounds nuw i8, ptr %i.op, i64 20
  store i32 %.2155.i271, ptr %i.ot, align 4, !tbaa !46
  %i.ou = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  store i32 2, ptr %i.ou, align 8, !tbaa !47
  %i.ov = getelementptr inbounds nuw [28 x i8], ptr %3, i64 %indvars.iv143.i ; 5 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 36
  store i32 3, ptr %i.ow, align 4, !tbaa !45
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ov, i64 40
  store i32 %.2155.i271, ptr %i.ox, align 8, !tbaa !46
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 44
  store i32 4, ptr %i.oy, align 4, !tbaa !45
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ov, i64 48
  store i32 %.2155.i271, ptr %i.oz, align 8, !tbaa !46
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ov, i64 52
  store i32 2, ptr %i.pa, align 4, !tbaa !47
  %indvars.iv.next144.i.1 = add nuw nsw i64 %indvars.iv143.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %EncoderAnalyze.exit.loopexit298.unr-lcssa, label %.preheader.i, !llvm.loop !89

EncoderAnalyze.exit.loopexit.unr-lcssa:           ; preds = %.preheader.i.us
  %lcmp.mod305.not = icmp eq i64 %xtraiter304, 0
  br i1 %lcmp.mod305.not, label %EncoderAnalyze.exit, label %.preheader.i.us.epil.preheader

.preheader.i.us.epil.preheader:                   ; preds = %EncoderAnalyze.exit.loopexit.unr-lcssa, %.preheader.i.us.preheader
  %indvars.iv143.i.us.epil.init = phi i64 [ 0, %.preheader.i.us.preheader ], [ %indvars.iv.next144.i.us.3, %EncoderAnalyze.exit.loopexit.unr-lcssa ]
  %lcmp.mod306 = icmp ne i64 %xtraiter304, 0
  call void @llvm.assume(i1 %lcmp.mod306)
  br label %.preheader.i.us.epil

.preheader.i.us.epil:                             ; preds = %.preheader.i.us.epil, %.preheader.i.us.epil.preheader
  %indvars.iv143.i.us.epil = phi i64 [ %indvars.iv.next144.i.us.epil, %.preheader.i.us.epil ], [ %indvars.iv143.i.us.epil.init, %.preheader.i.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.us.epil ], [ 0, %.preheader.i.us.epil.preheader ]
  %i.pb = getelementptr inbounds nuw [28 x i8], ptr %3, i64 %indvars.iv143.i.us.epil ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  store i32 3, ptr %i.pc, align 4, !tbaa !45
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 12
  store i32 %.2155.i268, ptr %i.pd, align 4, !tbaa !46
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pb, i64 24
  store i32 1, ptr %i.pe, align 4, !tbaa !47
  %indvars.iv.next144.i.us.epil = add nuw nsw i64 %indvars.iv143.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter304
  br i1 %epil.iter.cmp.not, label %EncoderAnalyze.exit, label %.preheader.i.us.epil, !llvm.loop !90

EncoderAnalyze.exit.loopexit298.unr-lcssa:        ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %EncoderAnalyze.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %EncoderAnalyze.exit.loopexit298.unr-lcssa, %.preheader.i.preheader
  %indvars.iv143.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %indvars.iv.next144.i.1, %EncoderAnalyze.exit.loopexit298.unr-lcssa ]
  %lcmp.mod303 = trunc i64 %15 to i1
  call void @llvm.assume(i1 %lcmp.mod303)
  %i.pf = getelementptr inbounds nuw [28 x i8], ptr %3, i64 %indvars.iv143.i.epil.init ; 5 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  store i32 3, ptr %i.pg, align 4, !tbaa !45
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pf, i64 12
  store i32 %.2155.i271, ptr %i.ph, align 4, !tbaa !46
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  store i32 4, ptr %i.pi, align 4, !tbaa !45
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pf, i64 20
  store i32 %.2155.i271, ptr %i.pj, align 4, !tbaa !46
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pf, i64 24
  store i32 2, ptr %i.pk, align 4, !tbaa !47
  br label %EncoderAnalyze.exit

EncoderAnalyze.exit:                              ; preds = %.preheader.i.epil.preheader, %EncoderAnalyze.exit.loopexit298.unr-lcssa, %EncoderAnalyze.exit.loopexit.unr-lcssa, %.preheader.i.us.epil
  %.2268 = phi i32 [ %.2267, %EncoderAnalyze.exit.loopexit.unr-lcssa ], [ %.2267, %.preheader.i.us.epil ], [ %.1193, %EncoderAnalyze.exit.loopexit298.unr-lcssa ], [ %.1193, %.preheader.i.epil.preheader ] ; 2 uses
  %.2197266 = phi i32 [ %.2196265, %EncoderAnalyze.exit.loopexit.unr-lcssa ], [ %.2196265, %.preheader.i.us.epil ], [ %.2196269, %EncoderAnalyze.exit.loopexit298.unr-lcssa ], [ %.2196269, %.preheader.i.epil.preheader ] ; 3 uses
  %i.pl = load ptr, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.pn = load i32, ptr %i.pm, align 8, !tbaa !25
  %i.po = getelementptr inbounds nuw i8, ptr %i.pl, i64 12
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !26
  %i.pq = mul nsw i32 %i.pp, %i.pn                ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.a, i64 2312
  %i.ps = call i32 @VP8LHashChainInit(ptr noundef nonnull %i.pr, i32 noundef %i.pq) #7
  %.not.i126 = icmp eq i32 %i.ps, 0
  br i1 %.not.i126, label %EncoderAnalyze.exit.thread, label %bb.w

EncoderAnalyze.exit.thread:                       ; preds = %EncoderAnalyze.exit, %bb.h
  %i.pt = call i32 @WebPEncodingSetError(ptr noundef %1, i32 noundef 1) #7 ; 0 uses
  br label %VP8LEncoderDelete.exit134

bb.w:                                             ; preds = %EncoderAnalyze.exit
  %i.pu = add nsw i32 %i.pq, -1
  %i.pv = sdiv i32 %i.pu, 16
  %i.pw = add nsw i32 %i.pv, 1                    ; 4 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.a, i64 2152
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.px, i32 noundef %i.pw) #7
  %i.py = getelementptr inbounds nuw i8, ptr %i.a, i64 2192
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.py, i32 noundef %i.pw) #7
  %i.pz = getelementptr inbounds nuw i8, ptr %i.a, i64 2232
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.pz, i32 noundef %i.pw) #7
  %i.qa = getelementptr inbounds nuw i8, ptr %i.a, i64 2272
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.qa, i32 noundef %i.pw) #7
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !91
  %i.qd = icmp sgt i32 %i.qc, 0
  br i1 %i.qd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.qe = lshr i32 %.2197266, 1                   ; 5 uses
  %.not230 = icmp eq i32 %i.qe, 0
  br i1 %.not230, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.qf = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.qg = sub nsw i32 %.2197266, %i.qe
  %narrow = mul nsw i32 %i.qg, 28
  %i.qh = sext i32 %narrow to i64
  %scevgep = getelementptr i8, ptr %3, i64 %i.qh
  %i.qi = add nsw i32 %i.qe, -1
  %i.qj = zext nneg i32 %i.qi to i64
  %i.qk = mul nuw nsw i64 %i.qj, 28
  %i.ql = add nuw nsw i64 %i.qk, 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.qf, ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i64 %i.ql, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.x
  %i.qm = getelementptr inbounds nuw i8, ptr %7, i64 424
  store i32 %i.qe, ptr %i.qm, align 8, !tbaa !50
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %bb.w
  %.0102 = phi i32 [ %i.qe, %._crit_edge ], [ 0, %bb.w ] ; 2 uses
  %i.qn = sub nsw i32 %.2197266, %.0102           ; 3 uses
  %i.qo = icmp sgt i32 %i.qn, 0
  br i1 %i.qo, label %.lr.ph226, label %._crit_edge227

.lr.ph226:                                        ; preds = %bb.y
  %i.qp = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.qq = zext nneg i32 %i.qn to i64
  %i.qr = mul nuw nsw i64 %i.qq, 28
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.qp, ptr nonnull align 16 %3, i64 %i.qr, i1 false)
  br label %._crit_edge227

._crit_edge227:                                   ; preds = %.lr.ph226, %bb.y
  %i.qs = getelementptr inbounds nuw i8, ptr %6, i64 424
  store i32 %i.qn, ptr %i.qs, align 8, !tbaa !50
  %.inv.not = icmp eq i32 %.0102, 0               ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qu = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.qv = getelementptr inbounds nuw i8, ptr %10, i64 144
  %.sroa.gep139 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %.sroa.gep142 = getelementptr inbounds nuw i8, ptr %7, i64 432
  %.sroa.gep145 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.qx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.gep148 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.gep150 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.gep153 = getelementptr inbounds nuw i8, ptr %6, i64 432
  %.sroa.gep156 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.gep159 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %0, ptr %6, align 8, !tbaa !51
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %6, i64 428
  store i32 %.2268, ptr %.sroa.gep, align 4, !tbaa !52
  store ptr %1, ptr %.sroa.gep150, align 8, !tbaa !53
  %i.qy = load ptr, ptr %i.qw, align 8, !tbaa !54
  store ptr %i.qy, ptr %.sroa.gep153, align 8, !tbaa !55
  store ptr %2, ptr %.sroa.gep156, align 8, !tbaa !56
  store ptr %i.a, ptr %.sroa.gep159, align 8, !tbaa !57
  %i.qz = load ptr, ptr %i.g, align 8, !tbaa !93
  call void %i.qz(ptr noundef nonnull %4) #7
  store ptr %6, ptr %..sroa.sel.v.sroa.gep248.a, align 8, !tbaa !95
  store ptr null, ptr %.sink280.sroa.gep, align 8, !tbaa !96
  store ptr @EncodeStreamHook, ptr %.sink282.sroa.gep, align 8, !tbaa !97
  br i1 %.inv.not, label %bb.ab, label %._crit_edge227.peel.newph

._crit_edge227.peel.newph:                        ; preds = %._crit_edge227
  %.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %7, i64 428
  store ptr %0, ptr %7, align 8, !tbaa !51
  store i32 %.2268, ptr %.sroa.sel.v.sroa.sel, align 4, !tbaa !52
  %i.ra = load i32, ptr %i.qt, align 8, !tbaa !25
  %i.rb = load i32, ptr %i.qu, align 4, !tbaa !26
  %i.rc = call i32 @WebPPictureView(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %i.ra, i32 noundef %i.rb, ptr noundef nonnull %10) #7 ; 0 uses
  store ptr null, ptr %i.qv, align 8, !tbaa !98
  store ptr %10, ptr %.sroa.gep139, align 8, !tbaa !53
  %i.rd = load ptr, ptr %i.qw, align 8, !tbaa !54
  %i.re = icmp eq ptr %i.rd, null
  %i.rf = select i1 %i.re, ptr null, ptr %8
  store ptr %i.rf, ptr %.sroa.gep142, align 8, !tbaa !55
  %i.rg = call i32 @VP8LBitWriterClone(ptr noundef %2, ptr noundef nonnull %9) #7
  %.not118 = icmp eq i32 %i.rg, 0
  br i1 %.not118, label %.loopexit, label %bb.z

.loopexit:                                        ; preds = %._crit_edge227.peel.newph
  %i.rh = call i32 @WebPEncodingSetError(ptr noundef nonnull %1, i32 noundef 1) #7 ; 0 uses
  br label %VP8LEncoderDelete.exit134

bb.z:                                             ; preds = %._crit_edge227.peel.newph
  store ptr %9, ptr %.sroa.gep145, align 8, !tbaa !56
  %i.ri = call ptr @WebPSafeCalloc(i64 noundef 1, i64 noundef 2328) #7 ; 18 uses
  %i.rj = icmp eq ptr %i.ri, null
  br i1 %i.rj, label %VP8LEncoderNew.exit128.thread, label %bb.aa

VP8LEncoderNew.exit128.thread:                    ; preds = %bb.z
  %i.rk = call i32 @WebPEncodingSetError(ptr noundef nonnull %10, i32 noundef 1) #7 ; 0 uses
  br label %EncoderInit.exit132.thread

bb.aa:                                            ; preds = %bb.z
  store ptr %0, ptr %i.ri, align 8, !tbaa !18
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ri, i64 8 ; 2 uses
  store ptr %10, ptr %i.rl, align 8, !tbaa !19
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ri, i64 24
  store i32 0, ptr %i.rm, align 8, !tbaa !20
  call void @VP8LEncDspInit() #7
  %i.rn = load ptr, ptr %i.rl, align 8, !tbaa !19 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  %i.rp = load i32, ptr %i.ro, align 8, !tbaa !25
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rn, i64 12
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !26
  %i.rs = mul nsw i32 %i.rr, %i.rp                ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ri, i64 2312
  %i.ru = call i32 @VP8LHashChainInit(ptr noundef nonnull %i.rt, i32 noundef %i.rs) #7
  %.not.i129 = icmp eq i32 %i.ru, 0
  br i1 %.not.i129, label %EncoderInit.exit132.thread, label %.loopexit310

EncoderInit.exit132.thread:                       ; preds = %bb.aa, %VP8LEncoderNew.exit128.thread
  %i.rv = phi ptr [ %i.ri, %VP8LEncoderNew.exit128.thread ], [ %i.ri, %bb.aa ]
  %i.rw = call i32 @WebPEncodingSetError(ptr noundef nonnull %1, i32 noundef 1) #7 ; 0 uses
  br label %VP8LEncoderDelete.exit134

.loopexit310:                                     ; preds = %bb.aa
  %i.rx = add nsw i32 %i.rs, -1
  %i.ry = sdiv i32 %i.rx, 16
  %i.rz = add nsw i32 %i.ry, 1                    ; 4 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ri, i64 2152
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.sa, i32 noundef %i.rz) #7
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ri, i64 2192
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.sb, i32 noundef %i.rz) #7
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ri, i64 2232
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.sc, i32 noundef %i.rz) #7
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ri, i64 2272
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.sd, i32 noundef %i.rz) #7
  %i.se = getelementptr inbounds nuw i8, ptr %i.ri, i64 68
  %i.sf = load <2 x i32>, ptr %i.ed, align 4, !tbaa !41
  store <2 x i32> %i.sf, ptr %i.se, align 4, !tbaa !41
  %i.sg = load i32, ptr %i.ek, align 4, !tbaa !35
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ri, i64 76
  store i32 %i.sg, ptr %i.sh, align 4, !tbaa !35
  %i.si = load i32, ptr %i.ac, align 4, !tbaa !30
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ri, i64 100
  store i32 %i.si, ptr %i.sj, align 4, !tbaa !30
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ri, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.sk, ptr noundef nonnull align 8 dereferenceable(1024) %i.qx, i64 1024, i1 false)
  %i.sl = getelementptr inbounds nuw i8, ptr %i.ri, i64 1128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.sl, ptr noundef nonnull align 8 dereferenceable(1024) %i.aa, i64 1024, i1 false)
  store ptr %i.ri, ptr %.sroa.gep148, align 8, !tbaa !57
  %i.sm = load ptr, ptr %i.g, align 8, !tbaa !93
  call void %i.sm(ptr noundef nonnull %5) #7
  store ptr %7, ptr %..sroa.sel.v.sroa.gep249, align 8, !tbaa !95
  store ptr null, ptr %.sink280.sroa.gep312, align 8, !tbaa !96
  store ptr @EncodeStreamHook, ptr %.sink282.sroa.gep313, align 8, !tbaa !97
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit310, %._crit_edge227
  %.1104.lcssa = phi ptr [ null, %._crit_edge227 ], [ %i.ri, %.loopexit310 ] ; 7 uses
  br i1 %.inv.not, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.sn = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !99
  %i.sp = call i32 %i.so(ptr noundef nonnull %5) #7
  %.not121 = icmp eq i32 %i.sp, 0
  br i1 %.not121, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.sq = call i32 @WebPEncodingSetError(ptr noundef nonnull %1, i32 noundef 1) #7 ; 0 uses
  br label %VP8LEncoderDelete.exit134

bb.ae:                                            ; preds = %bb.ac
  %i.sr = load ptr, ptr %i.qw, align 8, !tbaa !54 ; 2 uses
  %.not122 = icmp eq ptr %i.sr, null
  br i1 %.not122, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(188) %8, ptr noundef nonnull align 4 dereferenceable(188) %i.sr, i64 188, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.ss = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !100
  call void %i.st(ptr noundef nonnull %5) #7
  %i.su = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !101
  call void %i.sv(ptr noundef nonnull %4) #7
  %i.sw = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !102
  %i.sy = call i32 %i.sx(ptr noundef nonnull %4) #7
  %i.sz = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !103
  call void %i.ta(ptr noundef nonnull %4) #7
  %i.tb = load ptr, ptr %i.sw, align 8, !tbaa !102
  %i.tc = call i32 %i.tb(ptr noundef nonnull %5) #7
  %i.td = load ptr, ptr %i.sz, align 8, !tbaa !103
  call void %i.td(ptr noundef nonnull %5) #7
  %i.te = icmp ne i32 %i.sy, 0
  %i.tf = icmp ne i32 %i.tc, 0
  %or.cond = select i1 %i.te, i1 %i.tf, i1 false
  br i1 %or.cond, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.tg = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.th = load i32, ptr %i.tg, align 8, !tbaa !58
  %i.ti = icmp eq i32 %i.th, 0
  br i1 %i.ti, label %bb.ai, label %VP8LEncoderDelete.exit134

bb.ai:                                            ; preds = %bb.ah
  %i.tj = getelementptr inbounds nuw i8, ptr %10, i64 136
  %i.tk = load i32, ptr %i.tj, align 8, !tbaa !58
  %i.tl = call i32 @WebPEncodingSetError(ptr noundef nonnull %1, i32 noundef %i.tk) #7 ; 0 uses
  br label %VP8LEncoderDelete.exit134

bb.aj:                                            ; preds = %bb.ag
  %i.tm = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !60
  %i.to = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !61
  %i.tq = ptrtoint ptr %i.tn to i64
  %i.tr = ptrtoint ptr %i.tp to i64
  %i.ts = sub i64 %i.tq, %i.tr
  %i.tt = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.tu = load i32, ptr %i.tt, align 8, !tbaa !62
  %i.tv = add nsw i32 %i.tu, 7
  %i.tw = ashr i32 %i.tv, 3
  %i.tx = sext i32 %i.tw to i64
  %i.ty = add nsw i64 %i.ts, %i.tx
  %i.tz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !60
  %i.ub = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !61
  %i.ud = ptrtoint ptr %i.ua to i64
  %i.ue = ptrtoint ptr %i.uc to i64
  %i.uf = sub i64 %i.ud, %i.ue
  %i.ug = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.uh = load i32, ptr %i.ug, align 8, !tbaa !62
  %i.ui = add nsw i32 %i.uh, 7
  %i.uj = ashr i32 %i.ui, 3
  %i.uk = sext i32 %i.uj to i64
  %i.ul = add nsw i64 %i.uf, %i.uk
  %i.um = icmp ult i64 %i.ty, %i.ul
  br i1 %i.um, label %bb.ak, label %VP8LEncoderDelete.exit134

bb.ak:                                            ; preds = %bb.aj
  call void @VP8LBitWriterSwap(ptr noundef nonnull %2, ptr noundef nonnull %9) #7
  %i.un = load ptr, ptr %i.qw, align 8, !tbaa !54 ; 2 uses
  %.not123 = icmp eq ptr %i.un, null
  br i1 %.not123, label %VP8LEncoderDelete.exit134, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(188) %i.un, ptr noundef nonnull align 4 dereferenceable(188) %8, i64 188, i1 false)
  br label %VP8LEncoderDelete.exit134

.critedge:                                        ; preds = %bb.ab
  %i.uo = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !101
  call void %i.up(ptr noundef nonnull %4) #7
  %i.uq = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !102
  %i.us = call i32 %i.ur(ptr noundef nonnull %4) #7 ; 0 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !103
  call void %i.uu(ptr noundef nonnull %4) #7
  br label %VP8LEncoderDelete.exit134

VP8LEncoderDelete.exit134:                        ; preds = %.loopexit, %EncoderInit.exit132.thread, %bb.ai, %bb.ah, %bb.ak, %bb.al, %bb.aj, %.critedge, %bb.d, %bb.ad, %EncoderAnalyze.exit.thread
  %.4 = phi ptr [ %.1104.lcssa, %.critedge ], [ null, %bb.d ], [ %i.rv, %EncoderInit.exit132.thread ], [ %.1104.lcssa, %bb.ad ], [ %.1104.lcssa, %bb.ai ], [ null, %EncoderAnalyze.exit.thread ], [ %.1104.lcssa, %bb.aj ], [ %.1104.lcssa, %bb.al ], [ %.1104.lcssa, %bb.ak ], [ %.1104.lcssa, %bb.ah ], [ null, %.loopexit ] ; 8 uses
  call void @VP8LBitWriterWipeOut(ptr noundef nonnull %9) #7
  %i.uv = getelementptr inbounds nuw i8, ptr %i.a, i64 2312
  call void @VP8LHashChainClear(ptr noundef nonnull %i.uv) #7
  %i.uw = getelementptr inbounds nuw i8, ptr %i.a, i64 2152
  call void @VP8LBackwardRefsClear(ptr noundef nonnull %i.uw) #7
  %i.ux = getelementptr inbounds nuw i8, ptr %i.a, i64 2192
  call void @VP8LBackwardRefsClear(ptr noundef nonnull %i.ux) #7
  %i.uy = getelementptr inbounds nuw i8, ptr %i.a, i64 2232
  call void @VP8LBackwardRefsClear(ptr noundef nonnull %i.uy) #7
  %i.uz = getelementptr inbounds nuw i8, ptr %i.a, i64 2272
  call void @VP8LBackwardRefsClear(ptr noundef nonnull %i.uz) #7
  %i.va = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !21
  call void @WebPSafeFree(ptr noundef %i.vb) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.va, i8 0, i64 16, i1 false)
  call void @WebPSafeFree(ptr noundef nonnull %i.a) #7
  %.not.i135 = icmp eq ptr %.4, null
  br i1 %.not.i135, label %VP8LEncoderDelete.exit136, label %bb.am

bb.am:                                            ; preds = %VP8LEncoderDelete.exit134
  %i.vc = getelementptr inbounds nuw i8, ptr %.4, i64 2312
  call void @VP8LHashChainClear(ptr noundef nonnull %i.vc) #7
  %i.vd = getelementptr inbounds nuw i8, ptr %.4, i64 2152
  call void @VP8LBackwardRefsClear(ptr noundef nonnull %i.vd) #7
  %i.ve = getelementptr inbounds nuw i8, ptr %.4, i64 2192
  call void @VP8LBackwardRefsClear(ptr noundef nonnull %i.ve) #7
  %i.vf = getelementptr inbounds nuw i8, ptr %.4, i64 2232
  call void @VP8LBackwardRefsClear(ptr noundef nonnull %i.vf) #7
  %i.vg = getelementptr inbounds nuw i8, ptr %.4, i64 2272
  call void @VP8LBackwardRefsClear(ptr noundef nonnull %i.vg) #7
  %i.vh = getelementptr inbounds nuw i8, ptr %.4, i64 48 ; 2 uses
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !21
  call void @WebPSafeFree(ptr noundef %i.vi) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vh, i8 0, i64 16, i1 false)
  call void @WebPSafeFree(ptr noundef nonnull %.4) #7
  br label %VP8LEncoderDelete.exit136

VP8LEncoderDelete.exit136:                        ; preds = %VP8LEncoderDelete.exit134, %bb.am
  %i.vj = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.vk = load i32, ptr %i.vj, align 8, !tbaa !58
  %i.vl = icmp eq i32 %i.vk, 0
  %i.vm = zext i1 %i.vl to i32
  br label %bb.an

bb.an:                                            ; preds = %VP8LEncoderDelete.exit136, %bb.c
  %.0106 = phi i32 [ %i.p, %bb.c ], [ %i.vm, %VP8LEncoderDelete.exit136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i32 %.0106
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
define internal range(i32 0, 2) i32 @EncodeStreamHook(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
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
end_hunk_0
