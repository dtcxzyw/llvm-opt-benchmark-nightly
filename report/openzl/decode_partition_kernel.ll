Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decode_partition_kernel?download=true
inline.NumInlined: 24
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZL_ErrorContext = type { ptr, %struct.ZL_GraphContext }
%struct.ZL_GraphContext = type { %struct.ZL_NodeID, %struct.ZL_GraphID, i32, ptr }
%struct.ZL_NodeID = type { i32 }
%struct.ZL_GraphID = type { i32 }

@ZL_partitionDecode.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str, ptr @.str.1, ptr @.str.2, i32 85, [4 x i8] zeroinitializer }, align 8
@.str = private unnamed_addr constant [58 x i8] c"Check `ZL_isError(ret)' failed: Source size too small: %s\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"/opt-bench/work/openzl/openzl/src/openzl/codecs/partition/decode_partition_kernel.c\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"ZL_partitionDecode\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Check `%s' failed\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"ZL_isError(ret)\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"\0A\09%s\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ZS_BitDStreamFF_finish.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 390, [4 x i8] zeroinitializer }, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"Unconditional failure: Generic: %s\00", align 1
@.str.8 = private unnamed_addr constant [80 x i8] c"/opt-bench/work/openzl/openzl/src/openzl/codecs/common/bitstream/ff_bitstream.h\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"ZS_BitDStreamFF_finish\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Unconditional failure: %s\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZL_partitionDecode(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  %8 = alloca %struct.ZL_ErrorContext, align 8    ; 5 uses
  %i.a = alloca [256 x i64], align 16             ; 4 uses
  %i.b = alloca [256 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #8
  store ptr %i.d, ptr %8, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @ZL_PartitionParams_computeBasesU64(ptr noundef %6, ptr noundef nonnull %i.a) #7
  call void @ZL_PartitionParams_computeBits(ptr noundef %6, ptr noundef nonnull %i.b) #7
  %i.e = icmp ugt i64 %5, 7
  br i1 %i.e, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %4, align 1, !noalias !33
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 %5 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -7
  br label %ZS_BitDStreamFF_init.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 %5 ; 2 uses
  %.not.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i, label %ZS_BitDStreamFF_loadPartial.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.i = load i8, ptr %4, align 1, !tbaa !23, !noalias !33
  %i.j = zext i8 %i.i to i64                      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %5, 1
  br i1 %exitcond.not.i.i, label %ZS_BitDStreamFF_loadPartial.exit.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !23, !noalias !33
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 8
  %i.o = or disjoint i64 %i.n, %i.j               ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %5, 2
  br i1 %exitcond.not.i.i.1, label %ZS_BitDStreamFF_loadPartial.exit.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !23, !noalias !33
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 16
  %i.t = or disjoint i64 %i.s, %i.o               ; 2 uses
  %exitcond.not.i.i.2 = icmp eq i64 %5, 3
  br i1 %exitcond.not.i.i.2, label %ZS_BitDStreamFF_loadPartial.exit.i, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %.lr.ph.i.i.2
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !23, !noalias !33
  %i.w = zext i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 24
  %i.y = or disjoint i64 %i.x, %i.t               ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %5, 4
  br i1 %exitcond.not.i.i.3, label %ZS_BitDStreamFF_loadPartial.exit.i, label %.lr.ph.i.i.4

.lr.ph.i.i.4:                                     ; preds = %.lr.ph.i.i.3
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !23, !noalias !33
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 32
  %i.ad = or disjoint i64 %i.ac, %i.y             ; 2 uses
  %exitcond.not.i.i.4 = icmp eq i64 %5, 5
  br i1 %exitcond.not.i.i.4, label %ZS_BitDStreamFF_loadPartial.exit.i, label %.lr.ph.i.i.5

.lr.ph.i.i.5:                                     ; preds = %.lr.ph.i.i.4
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 5
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !23, !noalias !33
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 40
  %i.ai = or i64 %i.ah, %i.ad                     ; 2 uses
  %exitcond.not.i.i.5 = icmp eq i64 %5, 6
  br i1 %exitcond.not.i.i.5, label %ZS_BitDStreamFF_loadPartial.exit.i, label %.lr.ph.i.i.6

.lr.ph.i.i.6:                                     ; preds = %.lr.ph.i.i.5
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !23, !noalias !33
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 48
  %i.an = or i64 %i.am, %i.ai
  br label %ZS_BitDStreamFF_loadPartial.exit.i

ZS_BitDStreamFF_loadPartial.exit.i:               ; preds = %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i.i.3, %.lr.ph.i.i.4, %.lr.ph.i.i.5, %.lr.ph.i.i.6, %bb.c
  %.07.lcssa.i.i = phi i64 [ 0, %bb.c ], [ %i.j, %.lr.ph.i.i ], [ %i.o, %.lr.ph.i.i.1 ], [ %i.t, %.lr.ph.i.i.2 ], [ %i.y, %.lr.ph.i.i.3 ], [ %i.ad, %.lr.ph.i.i.4 ], [ %i.ai, %.lr.ph.i.i.5 ], [ %i.an, %.lr.ph.i.i.6 ]
  %i.ao = shl nuw nsw i64 %5, 3
  %i.ap = sub nuw nsw i64 64, %i.ao
  br label %ZS_BitDStreamFF_init.exit

ZS_BitDStreamFF_init.exit:                        ; preds = %bb.b, %ZS_BitDStreamFF_loadPartial.exit.i
  %.sroa.30.0 = phi ptr [ %i.g, %bb.b ], [ %4, %ZS_BitDStreamFF_loadPartial.exit.i ] ; 3 uses
  %.sroa.21.1 = phi ptr [ %4, %bb.b ], [ %i.h, %ZS_BitDStreamFF_loadPartial.exit.i ]
  %.sroa.9.1 = phi i64 [ 0, %bb.b ], [ %i.ap, %ZS_BitDStreamFF_loadPartial.exit.i ]
  %.sroa.0.1 = phi i64 [ %.val.i, %bb.b ], [ %.07.lcssa.i.i, %ZS_BitDStreamFF_loadPartial.exit.i ]
  %.sink.i = phi ptr [ %i.f, %bb.b ], [ %i.h, %ZS_BitDStreamFF_loadPartial.exit.i ] ; 2 uses
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %ZS_BitDStreamFF_init.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  br label %ZS_BitDStreamFF_finish.exit.thread

.lr.ph:                                           ; preds = %ZS_BitDStreamFF_init.exit
  %i.aq = getelementptr inbounds i8, ptr %.sroa.30.0, i64 -1 ; 3 uses
  %i.ar = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.as = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.at = icmp eq i64 %i.as, 1
  %i.au = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %1, i1 true)
  br label %bb.d

._crit_edge:                                      ; preds = %ZS_BitDStreamFF_reload.exit
  %i.av = icmp ugt i64 %.sroa.9.4, 64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  br i1 %i.av, label %ZS_BitDStreamFF_finish.exit, label %ZS_BitDStreamFF_finish.exit.thread

ZS_BitDStreamFF_finish.exit.thread:               ; preds = %._crit_edge.thread, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  br label %bb.r

ZS_BitDStreamFF_finish.exit:                      ; preds = %._crit_edge
  %i.aw = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_BitDStreamFF_finish.__zl_static_error_info, ptr noundef nonnull %7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 390, i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6) #7 ; 2 uses
  %i.ax = extractvalue { i32, ptr } %i.aw, 0      ; 2 uses
  %i.ay = extractvalue { i32, ptr } %i.aw, 1
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ax, ptr %i.ay, ptr noundef nonnull @.str.11) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  %.not32 = icmp eq i32 %i.ax, 0
  br i1 %.not32, label %bb.r, label %bb.q, !prof !24

bb.d:                                             ; preds = %.lr.ph, %ZS_BitDStreamFF_reload.exit
  %.036 = phi i64 [ 0, %.lr.ph ], [ %i.dc, %ZS_BitDStreamFF_reload.exit ] ; 6 uses
  %.sroa.0.035 = phi i64 [ %.sroa.0.1, %.lr.ph ], [ %.sroa.0.3, %ZS_BitDStreamFF_reload.exit ] ; 4 uses
  %.sroa.9.034 = phi i64 [ %.sroa.9.1, %.lr.ph ], [ %.sroa.9.4, %ZS_BitDStreamFF_reload.exit ] ; 4 uses
  %.sroa.21.033 = phi ptr [ %.sroa.21.1, %.lr.ph ], [ %.sroa.21.5, %ZS_BitDStreamFF_reload.exit ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 %.036
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !23
  %i.bb = zext i8 %i.ba to i64                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !23  ; 2 uses
  %i.be = zext i8 %i.bd to i64                    ; 4 uses
  %i.bf = icmp ult i8 %i.bd, 57
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %notmask.i.i.i.i = shl nsw i64 -1, %i.be
  %i.bg = xor i64 %notmask.i.i.i.i, -1
  %i.bh = and i64 %.sroa.0.035, %i.bg
  %i.bi = lshr i64 %.sroa.0.035, %i.be
  %i.bj = add i64 %.sroa.9.034, %i.be
  br label %ZL_partitionDecode1.exit

bb.f:                                             ; preds = %bb.d
  %i.bk = and i64 %.sroa.0.035, 4294967295
  %i.bl = add i64 %.sroa.9.034, 32                ; 2 uses
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.21.033, i64 %i.bm ; 6 uses
  %i.bo = icmp ult ptr %i.bn, %.sroa.30.0
  br i1 %i.bo, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.bp = and i64 %.sroa.9.034, 7                 ; 2 uses
  %.val22.i.i.i = load i64, ptr %i.bn, align 1
  %i.bq = lshr i64 %.val22.i.i.i, %i.bp
  br label %ZS_BitDStreamFF_reload.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.br = lshr i64 %.sroa.0.035, 32
  %.not.i.i.i = icmp ult ptr %i.bn, %.sink.i
  br i1 %.not.i.i.i, label %bb.i, label %ZS_BitDStreamFF_reload.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.bs = ptrtoint ptr %i.bn to i64
  %i.bt = sub i64 %i.bs, %i.ar
  %i.bu = shl i64 %i.bt, 3
  %i.bv = and i64 %.sroa.9.034, 7                 ; 2 uses
  %.val.i11.i.i = load i64, ptr %i.aq, align 1
  %i.bw = or disjoint i64 %i.bu, %i.bv
  %i.bx = lshr i64 %.val.i11.i.i, %i.bw
  br label %ZS_BitDStreamFF_reload.exit.i.i

ZS_BitDStreamFF_reload.exit.i.i:                  ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.21.2 = phi ptr [ %i.bn, %bb.g ], [ %i.bn, %bb.i ], [ %.sroa.21.033, %bb.h ]
  %i.by = phi i64 [ %i.bp, %bb.g ], [ %i.bv, %bb.i ], [ %i.bl, %bb.h ]
  %.val.i12.i.i = phi i64 [ %i.bq, %bb.g ], [ %i.bx, %bb.i ], [ %i.br, %bb.h ] ; 2 uses
  %i.bz = add nsw i64 %i.be, -32                  ; 3 uses
  %i.ca = and i64 %i.bz, 63
  %notmask.i.i13.i.i = shl nsw i64 -1, %i.ca
  %i.cb = xor i64 %notmask.i.i13.i.i, -1
  %i.cc = and i64 %.val.i12.i.i, %i.cb
  %i.cd = lshr i64 %.val.i12.i.i, %i.bz
  %i.ce = add i64 %i.by, %i.bz
  %i.cf = shl i64 %i.cc, 32
  %i.cg = or disjoint i64 %i.cf, %i.bk
  br label %ZL_partitionDecode1.exit

ZL_partitionDecode1.exit:                         ; preds = %bb.e, %ZS_BitDStreamFF_reload.exit.i.i
  %.sroa.21.3 = phi ptr [ %.sroa.21.033, %bb.e ], [ %.sroa.21.2, %ZS_BitDStreamFF_reload.exit.i.i ] ; 2 uses
  %.sroa.9.2 = phi i64 [ %i.bj, %bb.e ], [ %i.ce, %ZS_BitDStreamFF_reload.exit.i.i ] ; 4 uses
  %.sroa.0.2 = phi i64 [ %i.bi, %bb.e ], [ %i.cd, %ZS_BitDStreamFF_reload.exit.i.i ]
  %.0.i.i = phi i64 [ %i.bh, %bb.e ], [ %i.cg, %ZS_BitDStreamFF_reload.exit.i.i ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bb
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !26
  %i.cj = add i64 %i.ci, %.0.i.i                  ; 4 uses
  br i1 %i.at, label %.split.i, label %ZL_writeValue.exit

.split.i:                                         ; preds = %ZL_partitionDecode1.exit
  switch i64 %i.au, label %ZL_writeValue.exit [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 3, label %bb.m
  ]

bb.j:                                             ; preds = %.split.i
  %i.ck = trunc i64 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %.036
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !23
  br label %ZL_writeValue.exit

bb.k:                                             ; preds = %.split.i
  %i.cm = trunc i64 %i.cj to i16
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.036
  store i16 %i.cm, ptr %i.cn, align 2, !tbaa !28
  br label %ZL_writeValue.exit

bb.l:                                             ; preds = %.split.i
  %i.co = trunc i64 %i.cj to i32
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.036
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !29
  br label %ZL_writeValue.exit

bb.m:                                             ; preds = %.split.i
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.036
  store i64 %i.cj, ptr %i.cq, align 8, !tbaa !26
  br label %ZL_writeValue.exit

ZL_writeValue.exit:                               ; preds = %ZL_partitionDecode1.exit, %.split.i, %bb.j, %bb.k, %bb.l, %bb.m
  %i.cr = lshr i64 %.sroa.9.2, 3
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.21.3, i64 %i.cr ; 6 uses
  %i.ct = icmp ult ptr %i.cs, %.sroa.30.0
  br i1 %i.ct, label %bb.n, label %bb.o, !prof !21

bb.n:                                             ; preds = %ZL_writeValue.exit
  %i.cu = and i64 %.sroa.9.2, 7                   ; 2 uses
  %.val22.i = load i64, ptr %i.cs, align 1
  %i.cv = lshr i64 %.val22.i, %i.cu
  br label %ZS_BitDStreamFF_reload.exit

bb.o:                                             ; preds = %ZL_writeValue.exit
  %.not.i = icmp ult ptr %i.cs, %.sink.i
  br i1 %.not.i, label %bb.p, label %ZS_BitDStreamFF_reload.exit

bb.p:                                             ; preds = %bb.o
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = sub i64 %i.cw, %i.ar
  %i.cy = shl i64 %i.cx, 3
  %i.cz = and i64 %.sroa.9.2, 7                   ; 2 uses
  %.val.i17 = load i64, ptr %i.aq, align 1
  %i.da = or disjoint i64 %i.cy, %i.cz
  %i.db = lshr i64 %.val.i17, %i.da
  br label %ZS_BitDStreamFF_reload.exit

ZS_BitDStreamFF_reload.exit:                      ; preds = %bb.n, %bb.p, %bb.o
  %.sroa.21.5 = phi ptr [ %.sroa.21.3, %bb.o ], [ %i.cs, %bb.p ], [ %i.cs, %bb.n ]
  %.sroa.9.4 = phi i64 [ %.sroa.9.2, %bb.o ], [ %i.cz, %bb.p ], [ %i.cu, %bb.n ] ; 2 uses
  %.sroa.0.3 = phi i64 [ %.sroa.0.2, %bb.o ], [ %i.db, %bb.p ], [ %i.cv, %bb.n ]
  %i.dc = add nuw i64 %.036, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.dc, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !13

bb.q:                                             ; preds = %ZS_BitDStreamFF_finish.exit
  %i.dd = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_partitionDecode.__zl_static_error_info, ptr noundef nonnull %8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 85, i32 noundef 3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #7 ; 2 uses
  %i.de = extractvalue { i32, ptr } %i.dd, 0      ; 2 uses
  %i.df = extractvalue { i32, ptr } %i.dd, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.de, ptr %i.df, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #7
  %i.dg = ptrtoint ptr %i.df to i64
  br label %bb.r

bb.r:                                             ; preds = %ZS_BitDStreamFF_finish.exit, %ZS_BitDStreamFF_finish.exit.thread, %bb.q
  %.sroa.015.0 = phi i32 [ %i.de, %bb.q ], [ 0, %ZS_BitDStreamFF_finish.exit.thread ], [ 0, %ZS_BitDStreamFF_finish.exit ]
  %.sroa.416.0 = phi i64 [ %i.dg, %bb.q ], [ 0, %ZS_BitDStreamFF_finish.exit.thread ], [ 0, %ZS_BitDStreamFF_finish.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.015.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.416.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @ZL_NULL_getOperationContext(ptr noundef) local_unnamed_addr #3

declare void @ZL_PartitionParams_computeBasesU64(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @ZL_PartitionParams_computeBits(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare { i32, ptr } @ZL_E_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @ZL_E_appendToMessage(i32, ptr, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!13 = distinct !{!13, !30}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!"p1 _ZTS21ZL_OperationContext_s", !14, i64 0}
!16 = !{!"", !8, i64 0}
!17 = !{!"p1 omnipotent char", !14, i64 0}
!18 = !{!"", !16, i64 0, !16, i64 4, !8, i64 8, !17, i64 16}
!19 = !{!"", !15, i64 0, !18, i64 8}
!20 = !{!19, !15, i64 0}
!21 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = !{!7, !7, i64 0}
!24 = !{!"branch_weights", !"expected", i32 2145337238, i32 2146410}
!25 = !{!"long", !7, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"short", !7, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!8, !8, i64 0}
!30 = !{!"llvm.loop.mustprogress"}
!31 = distinct !{!31, i1 false, !"ZS_BitDStreamFF_init"}
!32 = distinct !{!32, !31, !"ZS_BitDStreamFF_init: argument 0"}
!33 = !{!32}
end_hunk_0
