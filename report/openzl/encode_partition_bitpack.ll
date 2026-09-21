Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_partition_bitpack?download=true
inline.NumInlined: 87
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZL_ErrorContext = type { ptr, %struct.ZL_GraphContext }
%struct.ZL_GraphContext = type { %struct.ZL_NodeID, %struct.ZL_GraphID, i32, ptr }
%struct.ZL_NodeID = type { i32 }
%struct.ZL_GraphID = type { i32 }
%struct.ZL_CopyParam = type { i32, ptr, i64 }
%struct.ZL_LocalParams = type { %struct.ZL_LocalIntParams, %struct.ZL_LocalCopyParams, %struct.ZL_LocalRefParams }
%struct.ZL_LocalIntParams = type { ptr, i64 }
%struct.ZL_LocalCopyParams = type { ptr, i64 }
%struct.ZL_LocalRefParams = type { ptr, i64 }
%union.ZL_Result_ZL_EdgeList_u = type { %struct.ZL_Result_ZL_EdgeList_inner }
%struct.ZL_Result_ZL_EdgeList_inner = type { i32, %struct.ZL_EdgeList }
%struct.ZL_EdgeList = type { %union.anon, %union.anon.0 }
%union.anon = type { ptr }
%union.anon.0 = type { i64 }

@EI_partitionBitpackDynGraph.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 55, [4 x i8] zeroinitializer, ptr @.str, ptr @.str.1, ptr @.str.2, i32 929, [4 x i8] zeroinitializer }, align 8
@.str = private unnamed_addr constant [147 x i8] c"Check `eltWidth != 2 && eltWidth != 4' failed: Input does not respect conditions for this node: Only 2-byte and 4-byte numeric values are accepted\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"/opt-bench/work/openzl/openzl/src/openzl/codecs/partition/encode_partition_bitpack.c\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"EI_partitionBitpackDynGraph\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Check `%s' failed\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"eltWidth != 2 && eltWidth != 4\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"\0A\09Only 2-byte and 4-byte numeric values are accepted\00", align 1
@EI_partitionBitpackDynGraph.__zl_static_error_info.6 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 939, [4 x i8] zeroinitializer }, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"Forwarding error: %s\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EI_partitionBitpackDynGraph.__zl_static_error_info.10 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 949, [4 x i8] zeroinitializer }, align 8
@EI_partitionBitpackDynGraph.__zl_static_error_info.11 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 958, [4 x i8] zeroinitializer }, align 8
@EI_partitionBitpackDynGraph.__zl_static_error_info.12 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 966, [4 x i8] zeroinitializer }, align 8
@EI_partitionBitpackDynGraph.__zl_static_error_info.13 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 996, [4 x i8] zeroinitializer }, align 8
@EI_partitionBitpackDynGraph.__zl_static_error_info.14 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1000, [4 x i8] zeroinitializer }, align 8
@EI_partitionBitpackDynGraph.__zl_static_error_info.15 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1002, [4 x i8] zeroinitializer }, align 8
@__const.PB_fixedPartition.trialCounts = private unnamed_addr constant [2 x i64] [i64 16, i64 32], align 16

; Function Attrs: nounwind uwtable
define { i32, i64 } @EI_partitionBitpackDynGraph(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i64], align 16             ; 9 uses
  %i.b = alloca [256 x i64], align 16             ; 8 uses
  %i.c = alloca [257 x i32], align 16             ; 13 uses
  %i.d = alloca [256 x i32], align 16             ; 9 uses
  %i.e = alloca [256 x i32], align 16             ; 32 uses
  %3 = alloca %struct.ZL_ErrorContext, align 8    ; 12 uses
  %i.f = alloca [257 x i64], align 16             ; 13 uses
  %4 = alloca %struct.ZL_CopyParam, align 8       ; 7 uses
  %5 = alloca %struct.ZL_LocalParams, align 8     ; 7 uses
  %6 = alloca %union.ZL_Result_ZL_EdgeList_u, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.h = tail call ptr @ZL_Graph_getOperationContext(ptr noundef %0) #9
  store ptr %i.h, ptr %3, align 8, !tbaa !52
  %i.i = load ptr, ptr %1, align 8, !tbaa !54     ; 6 uses
  %i.j = tail call ptr @ZL_Edge_getData(ptr noundef %i.i) #8 ; 3 uses
  %i.k = tail call i64 @ZL_Data_numElts(ptr noundef %i.j) #8 ; 10 uses
  %i.l = tail call i64 @ZL_Data_eltWidth(ptr noundef %i.j) #8 ; 4 uses
  switch i64 %i.l, label %bb.b [
    i64 4, label %bb.c
    i64 2, label %bb.c
  ], !prof !55

bb.b:                                             ; preds = %bb.a
  %i.m = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_partitionBitpackDynGraph.__zl_static_error_info, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 929, i32 noundef 55, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #8 ; 2 uses
  %i.n = extractvalue { i32, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { i32, ptr } %i.m, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.n, ptr %i.o, ptr noundef nonnull @.str.5) #8
  %i.p = ptrtoint ptr %i.o to i64
  br label %bb.bq

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.q = tail call i64 @ZL_Graph_getLocalIntParam(ptr noundef %0, i32 noundef 0) #8
  %i.r = icmp ult i64 %i.k, 10
  br i1 %i.r, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.s = tail call { i32, i64 } @ZL_Edge_setDestination(ptr noundef %i.i, i32 2) #8 ; 2 uses
  %i.t = extractvalue { i32, i64 } %i.s, 0        ; 2 uses
  %.not129 = icmp eq i32 %i.t, 0
  br i1 %.not129, label %bb.bq, label %bb.e, !prof !56

bb.e:                                             ; preds = %bb.d
  %i.u = extractvalue { i32, i64 } %i.s, 1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %3, i32 %i.t, ptr %i.v, ptr nonnull @EI_partitionBitpackDynGraph.__zl_static_error_info.6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 939, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #8 ; 2 uses
  %i.x = extractvalue { i32, ptr } %i.w, 0
  %i.y = extractvalue { i32, ptr } %i.w, 1
  %i.z = ptrtoint ptr %i.y to i64
  br label %bb.bq

bb.f:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %i.q, 4294967296            ; 5 uses
  %i.ab = tail call ptr @ZL_Data_rPtr(ptr noundef %i.j) #8 ; 6 uses
  %i.ac = icmp eq i64 %i.l, 2
  br i1 %i.ac, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call ptr @ZL_Graph_getScratchSpace(ptr noundef %0, i64 noundef 16388) #8, !noalias !57 ; 12 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %PB_fixedPartition.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = tail call ptr @ZL_Graph_getScratchSpace(ptr noundef %0, i64 noundef 32776) #8, !noalias !57 ; 6 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %PB_fixedPartition.exit.thread, label %vector.body310

vector.body310:                                   ; preds = %bb.h, %vector.body310
  %index311 = phi i64 [ %index.next314.1, %vector.body310 ], [ 0, %bb.h ] ; 3 uses
  %vec.ind312 = phi <2 x i64> [ %vec.ind.next315.1, %vector.body310 ], [ <i64 0, i64 1>, %bb.h ] ; 4 uses
  %i.ag = shl nuw nsw <2 x i64> %vec.ind312, splat (i64 4)
  %step.add313 = shl <2 x i64> %vec.ind312, splat (i64 4)
  %i.ah = add <2 x i64> %step.add313, splat (i64 32)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index311 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <2 x i64> %i.ag, ptr %i.ai, align 8, !tbaa !59, !noalias !57
  store <2 x i64> %i.ah, ptr %i.aj, align 8, !tbaa !59, !noalias !57
  %vec.ind.next315 = add nuw <2 x i64> %vec.ind312, splat (i64 4) ; 2 uses
  %i.ak = shl nuw nsw <2 x i64> %vec.ind.next315, splat (i64 4)
  %step.add313.1 = shl <2 x i64> %vec.ind.next315, splat (i64 4)
  %i.al = add <2 x i64> %step.add313.1, splat (i64 32)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index311 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store <2 x i64> %i.ak, ptr %i.an, align 8, !tbaa !59, !noalias !57
  store <2 x i64> %i.al, ptr %i.ao, align 8, !tbaa !59, !noalias !57
  %index.next314.1 = add nuw nsw i64 %index311, 8 ; 2 uses
  %vec.ind.next315.1 = add nuw <2 x i64> %vec.ind312, splat (i64 8)
  %i.ap = icmp eq i64 %index.next314.1, 4096
  br i1 %i.ap, label %.preheader90.i.i, label %vector.body310, !llvm.loop !13

.preheader90.i.i:                                 ; preds = %vector.body310
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 32768
  store i64 65536, ptr %i.aq, align 8, !tbaa !59, !noalias !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16384) %i.ad, i8 0, i64 16384, i1 false), !noalias !57
  %i.ar = select i1 %i.aa, i64 1, i64 3
  br label %PB_readValue.exit.us.i.i

PB_readValue.exit.us.i.i:                         ; preds = %PB_readValue.exit.us.i.i, %.preheader90.i.i
  %.07791.us.i.i = phi i64 [ %i.az, %PB_readValue.exit.us.i.i ], [ 0, %.preheader90.i.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %.07791.us.i.i
  %i.at = load i16, ptr %i.as, align 2, !tbaa !64, !noalias !57
  %i.au = lshr i16 %i.at, 4
  %i.av = zext nneg i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !65, !noalias !57
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !65, !noalias !57
  %i.az = add i64 %.07791.us.i.i, %i.ar           ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.k
  br i1 %i.ba, label %PB_readValue.exit.us.i.i, label %.split.us.i.i, !llvm.loop !14

.split.us.i.i:                                    ; preds = %PB_readValue.exit.us.i.i
  br i1 %i.aa, label %bb.i, label %vector.ph319

vector.ph319:                                     ; preds = %.split.us.i.i
  %n.vec320 = and i64 %i.k, -8                    ; 3 uses
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph319
  %index322 = phi i64 [ 0, %vector.ph319 ], [ %index.next329, %vector.body321 ] ; 2 uses
  %vec.phi323 = phi <4 x i16> [ zeroinitializer, %vector.ph319 ], [ %9, %vector.body321 ]
  %vec.phi324 = phi <4 x i16> [ zeroinitializer, %vector.ph319 ], [ %10, %vector.body321 ]
  %vec.phi325 = phi <4 x i16> [ splat (i16 4095), %vector.ph319 ], [ %7, %vector.body321 ]
  %vec.phi326 = phi <4 x i16> [ splat (i16 4095), %vector.ph319 ], [ %8, %vector.body321 ]
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %index322 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %wide.load327 = load <4 x i16>, ptr %i.bb, align 2, !tbaa !64, !noalias !57
  %wide.load328 = load <4 x i16>, ptr %i.bc, align 2, !tbaa !64, !noalias !57
  %i.bd = lshr <4 x i16> %wide.load327, splat (i16 4) ; 2 uses
  %i.be = lshr <4 x i16> %wide.load328, splat (i16 4) ; 2 uses
  %7 = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %vec.phi325, <4 x i16> %i.bd) ; 2 uses
  %8 = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %vec.phi326, <4 x i16> %i.be) ; 2 uses
  %9 = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %vec.phi323, <4 x i16> %i.bd) ; 2 uses
  %10 = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %vec.phi324, <4 x i16> %i.be) ; 2 uses
  %index.next329 = add nuw i64 %index322, 8       ; 2 uses
  %i.bf = icmp eq i64 %index.next329, %n.vec320
  br i1 %i.bf, label %middle.block330, label %vector.body321, !llvm.loop !15

middle.block330:                                  ; preds = %vector.body321
  %rdx.minmax331 = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %9, <4 x i16> %10)
  %11 = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %rdx.minmax331)
  %12 = zext nneg i16 %11 to i32                  ; 2 uses
  %rdx.minmax332 = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %7, <4 x i16> %8)
  %13 = tail call i16 @llvm.vector.reduce.umin.v4i16(<4 x i16> %rdx.minmax332)
  %14 = zext nneg i16 %13 to i32                  ; 2 uses
  %cmp.n333 = icmp eq i64 %i.k, %n.vec320
  br i1 %cmp.n333, label %.split96.us.i.i, label %PB_readValue.exit88.us.i.i

PB_readValue.exit88.us.i.i:                       ; preds = %middle.block330, %PB_readValue.exit88.us.i.i
  %.07694.us.i.i = phi i64 [ %i.bm, %PB_readValue.exit88.us.i.i ], [ %n.vec320, %middle.block330 ] ; 2 uses
  %.07893.us.i.i = phi i32 [ %i.bl, %PB_readValue.exit88.us.i.i ], [ %12, %middle.block330 ]
  %.08092.us.i.i = phi i32 [ %i.bk, %PB_readValue.exit88.us.i.i ], [ %14, %middle.block330 ]
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %.07694.us.i.i
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !64, !noalias !57
  %i.bi = lshr i16 %i.bh, 4
  %i.bj = zext nneg i16 %i.bi to i32              ; 2 uses
  %i.bk = tail call i32 @llvm.umin.i32(i32 %.08092.us.i.i, i32 %i.bj) ; 2 uses
  %i.bl = tail call i32 @llvm.umax.i32(i32 %.07893.us.i.i, i32 %i.bj) ; 2 uses
  %i.bm = add nuw i64 %.07694.us.i.i, 1           ; 2 uses
  %exitcond106.not.i.i = icmp eq i64 %i.bm, %i.k
  br i1 %exitcond106.not.i.i, label %.split96.us.i.i, label %PB_readValue.exit88.us.i.i, !llvm.loop !16

.split96.us.i.i:                                  ; preds = %PB_readValue.exit88.us.i.i, %middle.block330
  %.lcssa290 = phi i32 [ %14, %middle.block330 ], [ %i.bk, %PB_readValue.exit88.us.i.i ]
  %.lcssa289 = phi i32 [ %12, %middle.block330 ], [ %i.bl, %PB_readValue.exit88.us.i.i ] ; 2 uses
  %i.bn = zext nneg i32 %.lcssa290 to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !65, !noalias !57
  %i.bq = tail call i32 @llvm.umax.i32(i32 %i.bp, i32 1)
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !65, !noalias !57
  %i.br = zext nneg i32 %.lcssa289 to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !65, !noalias !57
  %i.bu = tail call i32 @llvm.umax.i32(i32 %i.bt, i32 1)
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !65, !noalias !57
  %i.bv = add nuw nsw i32 %.lcssa289, 1
  br label %bb.i

bb.i:                                             ; preds = %.split96.us.i.i, %.split.us.i.i
  %i.bw = phi i32 [ 3, %.split96.us.i.i ], [ 1, %.split.us.i.i ] ; 5 uses
  %.179.i.i = phi i32 [ %i.bv, %.split96.us.i.i ], [ 1, %.split.us.i.i ] ; 3 uses
  %i.bx = zext nneg i32 %.179.i.i to i64          ; 5 uses
  %xtraiter420 = and i64 %i.bx, 3                 ; 3 uses
  %i.by = icmp ult i32 %.179.i.i, 4
  br i1 %i.by, label %.epil.preheader419, label %.new418

.new418:                                          ; preds = %bb.i
  %unroll_iter425 = and i64 %i.bx, 2147483644
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.new418
  %.07499.i.i = phi i64 [ 0, %.new418 ], [ %i.cs, %bb.j ] ; 5 uses
  %.07598.i.i = phi i32 [ 0, %.new418 ], [ %i.cr, %bb.j ] ; 2 uses
  %niter426 = phi i64 [ 0, %.new418 ], [ %niter426.next.3, %bb.j ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.07499.i.i ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !65, !noalias !57
  %i.cb = mul i32 %i.ca, %i.bw
  store i32 %.07598.i.i, ptr %i.bz, align 4, !tbaa !65, !noalias !57
  %i.cc = add i32 %i.cb, %.07598.i.i              ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.07499.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !65, !noalias !57
  %i.cg = mul i32 %i.cf, %i.bw
  store i32 %i.cc, ptr %i.ce, align 4, !tbaa !65, !noalias !57
  %i.ch = add i32 %i.cg, %i.cc                    ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.07499.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !65, !noalias !57
  %i.cl = mul i32 %i.ck, %i.bw
  store i32 %i.ch, ptr %i.cj, align 4, !tbaa !65, !noalias !57
  %i.cm = add i32 %i.cl, %i.ch                    ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.07499.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 12 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !65, !noalias !57
  %i.cq = mul i32 %i.cp, %i.bw
  store i32 %i.cm, ptr %i.co, align 4, !tbaa !65, !noalias !57
  %i.cr = add i32 %i.cq, %i.cm                    ; 3 uses
  %i.cs = add nuw nsw i64 %.07499.i.i, 4          ; 2 uses
  %niter426.next.3 = add i64 %niter426, 4         ; 2 uses
  %niter426.ncmp.3 = icmp eq i64 %niter426.next.3, %unroll_iter425
  br i1 %niter426.ncmp.3, label %PB_buildCumHist.exit.i.unr-lcssa, label %bb.j, !llvm.loop !17

PB_buildCumHist.exit.i.unr-lcssa:                 ; preds = %bb.j
  %lcmp.mod422.not = icmp eq i64 %xtraiter420, 0
  br i1 %lcmp.mod422.not, label %PB_buildCumHist.exit.i, label %.epil.preheader419

.epil.preheader419:                               ; preds = %PB_buildCumHist.exit.i.unr-lcssa, %bb.i
  %.07499.i.i.epil.init = phi i64 [ 0, %bb.i ], [ %i.cs, %PB_buildCumHist.exit.i.unr-lcssa ]
  %.07598.i.i.epil.init = phi i32 [ 0, %bb.i ], [ %i.cr, %PB_buildCumHist.exit.i.unr-lcssa ]
  %lcmp.mod424 = icmp ne i64 %xtraiter420, 0
  tail call void @llvm.assume(i1 %lcmp.mod424)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader419
  %.07499.i.i.epil = phi i64 [ %.07499.i.i.epil.init, %.epil.preheader419 ], [ %i.cx, %bb.k ] ; 2 uses
  %.07598.i.i.epil = phi i32 [ %.07598.i.i.epil.init, %.epil.preheader419 ], [ %i.cw, %bb.k ] ; 2 uses
  %epil.iter421 = phi i64 [ 0, %.epil.preheader419 ], [ %epil.iter421.next, %bb.k ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.07499.i.i.epil ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !65, !noalias !57
  %i.cv = mul i32 %i.cu, %i.bw
  store i32 %.07598.i.i.epil, ptr %i.ct, align 4, !tbaa !65, !noalias !57
  %i.cw = add i32 %i.cv, %.07598.i.i.epil         ; 2 uses
  %i.cx = add nuw nsw i64 %.07499.i.i.epil, 1
  %epil.iter421.next = add i64 %epil.iter421, 1   ; 2 uses
  %epil.iter421.cmp.not = icmp eq i64 %epil.iter421.next, %xtraiter420
  br i1 %epil.iter421.cmp.not, label %PB_buildCumHist.exit.i, label %bb.k, !llvm.loop !18

PB_buildCumHist.exit.i:                           ; preds = %bb.k, %PB_buildCumHist.exit.i.unr-lcssa
  %.lcssa400 = phi i32 [ %i.cr, %PB_buildCumHist.exit.i.unr-lcssa ], [ %i.cw, %bb.k ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bx
  store i32 %.lcssa400, ptr %i.cy, align 4, !tbaa !65, !noalias !57
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bx
  br label %bb.q

bb.l:                                             ; preds = %bb.f
  %i.da = tail call ptr @ZL_Graph_getScratchSpace(ptr noundef %0, i64 noundef 16452) #8, !noalias !57 ; 12 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %PB_fixedPartition.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dc = tail call ptr @ZL_Graph_getScratchSpace(ptr noundef %0, i64 noundef 32904) #8, !noalias !57 ; 22 uses
  %.not.i48.i = icmp eq ptr %i.dc, null
  br i1 %.not.i48.i, label %PB_fixedPartition.exit.thread, label %vector.body

vector.body:                                      ; preds = %bb.m, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %bb.m ] ; 3 uses
  %vec.ind = phi <2 x i64> [ %vec.ind.next.1, %vector.body ], [ <i64 0, i64 1>, %bb.m ] ; 4 uses
  %i.dd = shl nuw nsw <2 x i64> %vec.ind, splat (i64 4)
  %step.add = shl <2 x i64> %vec.ind, splat (i64 4)
  %i.de = add <2 x i64> %step.add, splat (i64 32)
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %index ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store <2 x i64> %i.dd, ptr %i.df, align 8, !tbaa !59, !noalias !57
  store <2 x i64> %i.de, ptr %i.dg, align 8, !tbaa !59, !noalias !57
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4) ; 2 uses
  %i.dh = shl nuw nsw <2 x i64> %vec.ind.next, splat (i64 4)
  %step.add.1 = shl <2 x i64> %vec.ind.next, splat (i64 4)
  %i.di = add <2 x i64> %step.add.1, splat (i64 32)
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %index ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  store <2 x i64> %i.dh, ptr %i.dk, align 8, !tbaa !59, !noalias !57
  store <2 x i64> %i.di, ptr %i.dl, align 8, !tbaa !59, !noalias !57
  %index.next.1 = add nuw nsw i64 %index, 8       ; 2 uses
  %vec.ind.next.1 = add nuw <2 x i64> %vec.ind, splat (i64 8)
  %i.dm = icmp eq i64 %index.next.1, 4096
  br i1 %i.dm, label %.preheader90.i49.i, label %vector.body, !llvm.loop !19

.preheader90.i49.i:                               ; preds = %vector.body
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 32768
  store i64 65536, ptr %i.dn, align 8, !tbaa !59, !noalias !57
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 32776
  store i64 131072, ptr %i.do, align 8, !tbaa !59, !noalias !57
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dc, i64 32784
  store i64 262144, ptr %i.dp, align 8, !tbaa !59, !noalias !57
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dc, i64 32792
  store i64 524288, ptr %i.dq, align 8, !tbaa !59, !noalias !57
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dc, i64 32800
  store i64 1048576, ptr %i.dr, align 8, !tbaa !59, !noalias !57
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dc, i64 32808
  store i64 2097152, ptr %i.ds, align 8, !tbaa !59, !noalias !57
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dc, i64 32816
  store i64 4194304, ptr %i.dt, align 8, !tbaa !59, !noalias !57
  %i.du = getelementptr inbounds nuw i8, ptr %i.dc, i64 32824
  store i64 8388608, ptr %i.du, align 8, !tbaa !59, !noalias !57
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dc, i64 32832
  store i64 16777216, ptr %i.dv, align 8, !tbaa !59, !noalias !57
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dc, i64 32840
  store i64 33554432, ptr %i.dw, align 8, !tbaa !59, !noalias !57
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dc, i64 32848
  store i64 67108864, ptr %i.dx, align 8, !tbaa !59, !noalias !57
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dc, i64 32856
  store i64 134217728, ptr %i.dy, align 8, !tbaa !59, !noalias !57
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dc, i64 32864
  store i64 268435456, ptr %i.dz, align 8, !tbaa !59, !noalias !57
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dc, i64 32872
  store i64 536870912, ptr %i.ea, align 8, !tbaa !59, !noalias !57
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dc, i64 32880
  store i64 1073741824, ptr %i.eb, align 8, !tbaa !59, !noalias !57
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dc, i64 32888
  store i64 2147483648, ptr %i.ec, align 8, !tbaa !59, !noalias !57
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dc, i64 32896
  store i64 4294967296, ptr %i.ed, align 8, !tbaa !59, !noalias !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16448) %i.da, i8 0, i64 16448, i1 false), !noalias !57
  %i.ee = select i1 %i.aa, i64 1, i64 3
  br label %PB_readValue.exit.i.i

.split.us.thread.i.i:                             ; preds = %PB_readValue.exit.i.i
  br i1 %i.aa, label %bb.n, label %vector.ph297

vector.ph297:                                     ; preds = %.split.us.thread.i.i
  %n.vec = and i64 %i.k, -8                       ; 3 uses
  br label %vector.body298

vector.body298:                                   ; preds = %vector.body298, %vector.ph297
  %index299 = phi i64 [ 0, %vector.ph297 ], [ %index.next304, %vector.body298 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph297 ], [ %i.et, %vector.body298 ]
  %vec.phi300 = phi <4 x i32> [ zeroinitializer, %vector.ph297 ], [ %i.eu, %vector.body298 ]
  %vec.phi301 = phi <4 x i32> [ splat (i32 4111), %vector.ph297 ], [ %i.er, %vector.body298 ]
  %vec.phi302 = phi <4 x i32> [ splat (i32 4111), %vector.ph297 ], [ %i.es, %vector.body298 ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index299 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %wide.load = load <4 x i32>, ptr %i.ef, align 4, !tbaa !65, !noalias !57 ; 3 uses
  %wide.load303 = load <4 x i32>, ptr %i.eg, align 4, !tbaa !65, !noalias !57 ; 3 uses
  %i.eh = icmp ult <4 x i32> %wide.load, splat (i32 65536)
  %i.ei = icmp ult <4 x i32> %wide.load303, splat (i32 65536)
  %i.ej = lshr <4 x i32> %wide.load, splat (i32 4)
  %i.ek = lshr <4 x i32> %wide.load303, splat (i32 4)
  %i.el = tail call range(i32 0, 33) <4 x i32> @llvm.ctlz.v4i32(<4 x i32> %wide.load, i1 true)
  %i.em = tail call range(i32 0, 33) <4 x i32> @llvm.ctlz.v4i32(<4 x i32> %wide.load303, i1 true)
  %i.en = sub nuw nsw <4 x i32> splat (i32 4111), %i.el
  %i.eo = sub nuw nsw <4 x i32> splat (i32 4111), %i.em
  %i.ep = select <4 x i1> %i.eh, <4 x i32> %i.ej, <4 x i32> %i.en ; 2 uses
  %i.eq = select <4 x i1> %i.ei, <4 x i32> %i.ek, <4 x i32> %i.eo ; 2 uses
  %i.er = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi301, <4 x i32> %i.ep) ; 2 uses
  %i.es = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi302, <4 x i32> %i.eq) ; 2 uses
  %i.et = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.ep) ; 2 uses
  %i.eu = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi300, <4 x i32> %i.eq) ; 2 uses
  %index.next304 = add nuw i64 %index299, 8       ; 2 uses
  %i.ev = icmp eq i64 %index.next304, %n.vec
  br i1 %i.ev, label %middle.block305, label %vector.body298, !llvm.loop !20

middle.block305:                                  ; preds = %vector.body298
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.et, <4 x i32> %i.eu)
  %i.ew = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
end_hunk_0
begin_hunk_1_@EI_partitionBitpackDynGraph:bb.a
  store i32 0, ptr %i.ajz, align 4
  %i.aka = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.f, ptr %i.aka, align 8, !tbaa !72
  %i.akb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.akc = add nuw nsw i64 %i.agb, 8
  store i64 %i.akc, ptr %i.akb, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.akd = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %4, ptr %i.akd, align 8, !tbaa !75
  %i.ake = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 1, ptr %i.ake, align 8, !tbaa !76
  %i.akf = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.akf, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @ZL_Edge_runNode_withParams(ptr dead_on_unwind nonnull writable sret(%union.ZL_Result_ZL_EdgeList_u) align 8 %6, ptr noundef %i.i, i32 48, ptr noundef nonnull %5) #8
  %.sroa.090.0.copyload = load i32, ptr %6, align 8, !tbaa !65 ; 2 uses
  %.sroa.49104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not123 = icmp eq i32 %.sroa.090.0.copyload, 0
  br i1 %.not123, label %bb.bl, label %bb.bk, !prof !56

scalar.ph370:                                     ; preds = %scalar.ph370, %scalar.ph370.preheader.new
  %.0111166 = phi i64 [ %.0111166.unr, %scalar.ph370.preheader.new ], [ %i.ald, %scalar.ph370 ] ; 6 uses
  %i.akg = getelementptr inbounds nuw [8 x i8], ptr %i.agc, i64 %.0111166
  %i.akh = load i64, ptr %i.akg, align 8, !tbaa !59
  %i.aki = add nuw nsw i64 %.0111166, 1           ; 3 uses
  %i.akj = getelementptr inbounds nuw [8 x i8], ptr %i.agc, i64 %i.aki
  %i.akk = load i64, ptr %i.akj, align 8, !tbaa !59
  %i.akl = sub i64 %i.akk, %i.akh
  %i.akm = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.aki
  store i64 %i.akl, ptr %i.akm, align 8, !tbaa !59
  %i.akn = getelementptr inbounds nuw [8 x i8], ptr %i.agc, i64 %i.aki
  %i.ako = load i64, ptr %i.akn, align 8, !tbaa !59
  %i.akp = add nuw nsw i64 %.0111166, 2           ; 3 uses
  %i.akq = getelementptr inbounds nuw [8 x i8], ptr %i.agc, i64 %i.akp
  %i.akr = load i64, ptr %i.akq, align 8, !tbaa !59
  %i.aks = sub i64 %i.akr, %i.ako
  %i.akt = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.akp
  store i64 %i.aks, ptr %i.akt, align 8, !tbaa !59
  %i.aku = getelementptr inbounds nuw [8 x i8], ptr %i.agc, i64 %i.akp
  %i.akv = load i64, ptr %i.aku, align 8, !tbaa !59
  %i.akw = add nuw nsw i64 %.0111166, 3           ; 4 uses
  %i.akx = getelementptr inbounds nuw [8 x i8], ptr %i.agc, i64 %i.akw
  %i.aky = load i64, ptr %i.akx, align 8, !tbaa !59
  %i.akz = sub i64 %i.aky, %i.akv
  %i.ala = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.akw
  store i64 %i.akz, ptr %i.ala, align 8, !tbaa !59
  %i.alb = getelementptr inbounds nuw [8 x i8], ptr %i.agc, i64 %i.akw
  %i.alc = load i64, ptr %i.alb, align 8, !tbaa !59
  %i.ald = add nuw nsw i64 %.0111166, 4           ; 4 uses
  %i.ale = getelementptr inbounds nuw [8 x i8], ptr %i.agc, i64 %i.ald
  %i.alf = load i64, ptr %i.ale, align 8, !tbaa !59
  %i.alg = sub i64 %i.alf, %i.alc
  %i.alh = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ald
  store i64 %i.alg, ptr %i.alh, align 8, !tbaa !59
  %exitcond.not.3 = icmp eq i64 %.0111166, %i.ajr
  br i1 %exitcond.not.3, label %.peel.begin, label %scalar.ph370, !llvm.loop !45

bb.bk:                                            ; preds = %.peel.next
  %.sroa.49104.0.copyload = load i64, ptr %.sroa.49104.0..sroa_idx, align 8, !tbaa !77
  %i.ali = inttoptr i64 %.sroa.49104.0.copyload to ptr
  %i.alj = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %3, i32 %.sroa.090.0.copyload, ptr %i.ali, ptr nonnull @EI_partitionBitpackDynGraph.__zl_static_error_info.13, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 996, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #8 ; 2 uses
  %i.alk = extractvalue { i32, ptr } %i.alj, 0
  %i.all = extractvalue { i32, ptr } %i.alj, 1
  %i.alm = ptrtoint ptr %i.all to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.bp

bb.bl:                                            ; preds = %.peel.next
  %.sroa.020.0.copyload = load ptr, ptr %.sroa.49104.0..sroa_idx, align 8, !tbaa !77 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.aln = load ptr, ptr %.sroa.020.0.copyload, align 8, !tbaa !54
  %i.alo = call { i32, i64 } @ZL_Edge_setDestination(ptr noundef %i.aln, i32 10) #8 ; 2 uses
  %i.alp = extractvalue { i32, i64 } %i.alo, 0    ; 2 uses
  %.not124 = icmp eq i32 %i.alp, 0
  br i1 %.not124, label %bb.bn, label %bb.bm, !prof !56

bb.bm:                                            ; preds = %bb.bl
  %i.alq = extractvalue { i32, i64 } %i.alo, 1
  %i.alr = inttoptr i64 %i.alq to ptr
  %i.als = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %3, i32 %i.alp, ptr %i.alr, ptr nonnull @EI_partitionBitpackDynGraph.__zl_static_error_info.14, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 1000, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #8 ; 2 uses
  %i.alt = extractvalue { i32, ptr } %i.als, 0
  %i.alu = extractvalue { i32, ptr } %i.als, 1
  %i.alv = ptrtoint ptr %i.alu to i64
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bl
  %i.alw = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 8
  %i.alx = load ptr, ptr %i.alw, align 8, !tbaa !54
  %i.aly = call { i32, i64 } @ZL_Edge_setDestination(ptr noundef %i.alx, i32 2) #8 ; 2 uses
  %i.alz = extractvalue { i32, i64 } %i.aly, 0    ; 2 uses
  %.not125 = icmp eq i32 %i.alz, 0
  br i1 %.not125, label %bb.bp, label %bb.bo, !prof !56

bb.bo:                                            ; preds = %bb.bn
  %i.ama = extractvalue { i32, i64 } %i.aly, 1
  %i.amb = inttoptr i64 %i.ama to ptr
  %i.amc = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %3, i32 %i.alz, ptr %i.amb, ptr nonnull @EI_partitionBitpackDynGraph.__zl_static_error_info.15, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 1002, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #8 ; 2 uses
  %i.amd = extractvalue { i32, ptr } %i.amc, 0
  %i.ame = extractvalue { i32, ptr } %i.amc, 1
  %i.amf = ptrtoint ptr %i.ame to i64
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bk, %bb.bo, %bb.bm
  %.sroa.090.1 = phi i32 [ %i.alt, %bb.bm ], [ %i.amd, %bb.bo ], [ %i.alk, %bb.bk ], [ 0, %bb.bn ]
  %.sroa.49104.1 = phi i64 [ %i.alv, %bb.bm ], [ %i.amf, %bb.bo ], [ %i.alm, %bb.bk ], [ 0, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bd, %bb.bf, %bb.bp, %bb.bi, %PB_fixedPartition.exit.thread, %bb.be, %bb.bh, %bb.d, %bb.e, %bb.b
  %.sroa.090.5 = phi i32 [ %i.n, %bb.b ], [ %i.x, %bb.e ], [ 0, %bb.d ], [ %i.ahl, %bb.bd ], [ %.sroa.090.1, %bb.bp ], [ %i.aie, %bb.bf ], [ 0, %PB_fixedPartition.exit.thread ], [ %i.aiq, %bb.bi ], [ 0, %bb.be ], [ 0, %bb.bh ]
  %.sroa.49104.5 = phi i64 [ %i.p, %bb.b ], [ %i.z, %bb.e ], [ 0, %bb.d ], [ %i.ahn, %bb.bd ], [ %.sroa.49104.1, %bb.bp ], [ %i.aig, %bb.bf ], [ 0, %PB_fixedPartition.exit.thread ], [ %i.ais, %bb.bi ], [ 0, %bb.be ], [ 0, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.090.5, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.49104.5, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @ZL_Graph_getOperationContext(ptr noundef) local_unnamed_addr #3

declare ptr @ZL_Edge_getData(ptr noundef) local_unnamed_addr #4

declare { i32, ptr } @ZL_E_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @ZL_E_appendToMessage(i32, ptr, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i64 @ZL_Graph_getLocalIntParam(ptr noundef, i32 noundef) local_unnamed_addr #4

declare { i32, i64 } @ZL_Edge_setDestination(ptr noundef, i32) local_unnamed_addr #4

declare { i32, ptr } @ZL_E_addFrame(ptr noundef, i32, ptr, ptr, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @ZL_Edge_runNode_withParams(ptr dead_on_unwind writable sret(%union.ZL_Result_ZL_EdgeList_u) align 8, ptr noundef, i32, ptr noundef) local_unnamed_addr #4

declare i64 @ZL_Data_numElts(ptr noundef) local_unnamed_addr #4

declare i64 @ZL_Data_eltWidth(ptr noundef) local_unnamed_addr #4

declare ptr @ZL_Graph_getScratchSpace(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

declare ptr @ZL_Data_rPtr(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.ctlz.v4i32(<4 x i32>, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umin.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umin.v4i16(<4 x i16>, <4 x i16>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umax.v4i16(<4 x i16>, <4 x i16>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v4i16(<4 x i16>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umin.v4i16(<4 x i16>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }

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
!11 = distinct !{!11, !"PB_fixedPartition"}
!12 = distinct !{!12, !11, !"PB_fixedPartition: argument 0"}
!13 = distinct !{!13, !60, !61, !62}
!14 = distinct !{!14, !60}
!15 = distinct !{!15, !60, !61, !62}
!16 = distinct !{!16, !60, !62, !61}
!17 = distinct !{!17, !60}
!18 = distinct !{!18, !66}
!19 = distinct !{!19, !60, !61, !62}
!20 = distinct !{!20, !60, !61, !62}
!21 = distinct !{!21, !60, !62, !61}
!22 = distinct !{!22, !66}
!23 = distinct !{!23, !60}
!24 = distinct !{!24, !60}
!25 = distinct !{!25, !60, !67}
!26 = distinct !{!26, !60, !61, !62}
!27 = distinct !{!27, !60, !62, !61}
!28 = distinct !{!28, !60}
!29 = distinct !{!29, !60, !61, !62}
!30 = distinct !{!30, !60, !62, !61}
!31 = distinct !{!31, !60}
!32 = distinct !{!32, !60}
!33 = distinct !{!33, !60}
!34 = distinct !{!34, !60}
!35 = distinct !{!35, !60}
!36 = distinct !{!36, !60}
!37 = distinct !{!37, !60}
!38 = distinct !{!38, !60}
!39 = distinct !{!39, !66}
!40 = distinct !{!40, !"LVerDomain"}
!41 = distinct !{!41, !40}
!42 = distinct !{!42, !40}
!43 = distinct !{!43, !60, !67, !61, !62}
!44 = distinct !{!44, !66}
!45 = distinct !{!45, !60, !67, !61}
!46 = !{!"any pointer", !7, i64 0}
!47 = !{!"p1 _ZTS21ZL_OperationContext_s", !46, i64 0}
!48 = !{!"", !8, i64 0}
!49 = !{!"p1 omnipotent char", !46, i64 0}
!50 = !{!"", !48, i64 0, !48, i64 4, !8, i64 8, !49, i64 16}
!51 = !{!"", !47, i64 0, !50, i64 8}
!52 = !{!51, !47, i64 0}
!53 = !{!"p1 _ZTS9ZL_Edge_s", !46, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"branch_weights", i32 1, i32 1000, i32 1000}
!56 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!57 = !{!12}
!58 = !{!"long", !7, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
!63 = !{!"short", !7, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{!8, !8, i64 0}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!"llvm.loop.peeled.count", i32 1}
!68 = !{!41}
!69 = !{!42}
!70 = !{!"", !8, i64 0, !46, i64 8, !58, i64 16}
!71 = !{!70, !8, i64 0}
!72 = !{!70, !46, i64 8}
!73 = !{!70, !58, i64 16}
!74 = !{!"", !46, i64 0, !58, i64 8}
!75 = !{!74, !46, i64 0}
!76 = !{!74, !58, i64 8}
!77 = !{!7, !7, i64 0}
end_hunk_1
