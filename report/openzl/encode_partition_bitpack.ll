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
  %i.e = alloca [256 x i32], align 16             ; 30 uses
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
  br label %bb.bn

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.q = tail call i64 @ZL_Graph_getLocalIntParam(ptr noundef %0, i32 noundef 0) #8
  %i.r = icmp ult i64 %i.k, 10
  br i1 %i.r, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.s = tail call { i32, i64 } @ZL_Edge_setDestination(ptr noundef %i.i, i32 2) #8 ; 2 uses
  %i.t = extractvalue { i32, i64 } %i.s, 0        ; 2 uses
  %.not129 = icmp eq i32 %i.t, 0
  br i1 %.not129, label %bb.bn, label %bb.e, !prof !56

bb.e:                                             ; preds = %bb.d
  %i.u = extractvalue { i32, i64 } %i.s, 1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %3, i32 %i.t, ptr %i.v, ptr nonnull @EI_partitionBitpackDynGraph.__zl_static_error_info.6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 939, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #8 ; 2 uses
  %i.x = extractvalue { i32, ptr } %i.w, 0
  %i.y = extractvalue { i32, ptr } %i.w, 1
  %i.z = ptrtoint ptr %i.y to i64
  br label %bb.bn

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
  %vec.phi323 = phi <4 x i32> [ zeroinitializer, %vector.ph319 ], [ %i.bj, %vector.body321 ]
  %vec.phi324 = phi <4 x i32> [ zeroinitializer, %vector.ph319 ], [ %i.bk, %vector.body321 ]
  %vec.phi325 = phi <4 x i32> [ splat (i32 4095), %vector.ph319 ], [ %i.bh, %vector.body321 ]
  %vec.phi326 = phi <4 x i32> [ splat (i32 4095), %vector.ph319 ], [ %i.bi, %vector.body321 ]
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %index322 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %wide.load327 = load <4 x i16>, ptr %i.bb, align 2, !tbaa !64, !noalias !57
  %wide.load328 = load <4 x i16>, ptr %i.bc, align 2, !tbaa !64, !noalias !57
  %i.bd = lshr <4 x i16> %wide.load327, splat (i16 4)
  %i.be = lshr <4 x i16> %wide.load328, splat (i16 4)
  %i.bf = zext nneg <4 x i16> %i.bd to <4 x i32>  ; 2 uses
  %i.bg = zext nneg <4 x i16> %i.be to <4 x i32>  ; 2 uses
  %i.bh = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi325, <4 x i32> %i.bf) ; 2 uses
  %i.bi = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi326, <4 x i32> %i.bg) ; 2 uses
  %i.bj = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi323, <4 x i32> %i.bf) ; 2 uses
  %i.bk = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi324, <4 x i32> %i.bg) ; 2 uses
  %index.next329 = add nuw i64 %index322, 8       ; 2 uses
  %i.bl = icmp eq i64 %index.next329, %n.vec320
  br i1 %i.bl, label %middle.block330, label %vector.body321, !llvm.loop !15

middle.block330:                                  ; preds = %vector.body321
  %rdx.minmax331 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.bj, <4 x i32> %i.bk)
  %i.bm = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax331) ; 2 uses
  %rdx.minmax332 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bh, <4 x i32> %i.bi)
  %i.bn = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %rdx.minmax332) ; 2 uses
  %cmp.n333 = icmp eq i64 %i.k, %n.vec320
  br i1 %cmp.n333, label %.split96.us.i.i, label %PB_readValue.exit88.us.i.i

PB_readValue.exit88.us.i.i:                       ; preds = %middle.block330, %PB_readValue.exit88.us.i.i
  %.07694.us.i.i = phi i64 [ %i.bu, %PB_readValue.exit88.us.i.i ], [ %n.vec320, %middle.block330 ] ; 2 uses
  %.07893.us.i.i = phi i32 [ %i.bt, %PB_readValue.exit88.us.i.i ], [ %i.bm, %middle.block330 ]
  %.08092.us.i.i = phi i32 [ %i.bs, %PB_readValue.exit88.us.i.i ], [ %i.bn, %middle.block330 ]
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %.07694.us.i.i
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !64, !noalias !57
  %i.bq = lshr i16 %i.bp, 4
  %i.br = zext nneg i16 %i.bq to i32              ; 2 uses
  %i.bs = tail call i32 @llvm.umin.i32(i32 %.08092.us.i.i, i32 %i.br) ; 2 uses
  %i.bt = tail call i32 @llvm.umax.i32(i32 %.07893.us.i.i, i32 %i.br) ; 2 uses
  %i.bu = add nuw i64 %.07694.us.i.i, 1           ; 2 uses
  %exitcond106.not.i.i = icmp eq i64 %i.bu, %i.k
  br i1 %exitcond106.not.i.i, label %.split96.us.i.i, label %PB_readValue.exit88.us.i.i, !llvm.loop !16

.split96.us.i.i:                                  ; preds = %PB_readValue.exit88.us.i.i, %middle.block330
  %.lcssa290 = phi i32 [ %i.bn, %middle.block330 ], [ %i.bs, %PB_readValue.exit88.us.i.i ]
  %.lcssa289 = phi i32 [ %i.bm, %middle.block330 ], [ %i.bt, %PB_readValue.exit88.us.i.i ] ; 2 uses
  %i.bv = zext nneg i32 %.lcssa290 to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !65, !noalias !57
  %i.by = tail call i32 @llvm.umax.i32(i32 %i.bx, i32 1)
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !65, !noalias !57
  %i.bz = zext nneg i32 %.lcssa289 to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !65, !noalias !57
  %i.cc = tail call i32 @llvm.umax.i32(i32 %i.cb, i32 1)
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !65, !noalias !57
  %i.cd = add nuw nsw i32 %.lcssa289, 1
  br label %bb.i

bb.i:                                             ; preds = %.split96.us.i.i, %.split.us.i.i
  %i.ce = phi i32 [ 3, %.split96.us.i.i ], [ 1, %.split.us.i.i ] ; 5 uses
  %.179.i.i = phi i32 [ %i.cd, %.split96.us.i.i ], [ 1, %.split.us.i.i ] ; 3 uses
  %i.cf = zext nneg i32 %.179.i.i to i64          ; 5 uses
  %xtraiter420.a = and i64 %i.cf, 3               ; 3 uses
  %i.cg = icmp ult i32 %.179.i.i, 4
  br i1 %i.cg, label %.epil.preheader419, label %.new418

.new418:                                          ; preds = %bb.i
  %unroll_iter425 = and i64 %i.cf, 2147483644
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.new418
  %.07499.i.i = phi i64 [ 0, %.new418 ], [ %i.da, %bb.j ] ; 5 uses
  %.07598.i.i = phi i32 [ 0, %.new418 ], [ %i.cz, %bb.j ] ; 2 uses
  %niter426 = phi i64 [ 0, %.new418 ], [ %niter426.next.3, %bb.j ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.07499.i.i ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !65, !noalias !57
  %i.cj = mul i32 %i.ci, %i.ce
  store i32 %.07598.i.i, ptr %i.ch, align 4, !tbaa !65, !noalias !57
  %i.ck = add i32 %i.cj, %.07598.i.i              ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.07499.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !65, !noalias !57
  %i.co = mul i32 %i.cn, %i.ce
end_hunk_0
begin_hunk_1_@EI_partitionBitpackDynGraph:bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dk, i64 32808
  store i64 2097152, ptr %i.ea, align 8, !tbaa !59, !noalias !57
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dk, i64 32816
  store i64 4194304, ptr %i.eb, align 8, !tbaa !59, !noalias !57
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dk, i64 32824
  store i64 8388608, ptr %i.ec, align 8, !tbaa !59, !noalias !57
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dk, i64 32832
  store i64 16777216, ptr %i.ed, align 8, !tbaa !59, !noalias !57
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dk, i64 32840
  store i64 33554432, ptr %i.ee, align 8, !tbaa !59, !noalias !57
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dk, i64 32848
  store i64 67108864, ptr %i.ef, align 8, !tbaa !59, !noalias !57
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dk, i64 32856
  store i64 134217728, ptr %i.eg, align 8, !tbaa !59, !noalias !57
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dk, i64 32864
  store i64 268435456, ptr %i.eh, align 8, !tbaa !59, !noalias !57
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dk, i64 32872
  store i64 536870912, ptr %i.ei, align 8, !tbaa !59, !noalias !57
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dk, i64 32880
  store i64 1073741824, ptr %i.ej, align 8, !tbaa !59, !noalias !57
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dk, i64 32888
  store i64 2147483648, ptr %i.ek, align 8, !tbaa !59, !noalias !57
  %i.el = getelementptr inbounds nuw i8, ptr %i.dk, i64 32896
  store i64 4294967296, ptr %i.el, align 8, !tbaa !59, !noalias !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16448) %i.di, i8 0, i64 16448, i1 false), !noalias !57
  %i.em = select i1 %i.aa, i64 1, i64 3
  br label %PB_readValue.exit.i.i

.split.us.thread.i.i:                             ; preds = %PB_readValue.exit.i.i
  br i1 %i.aa, label %bb.n, label %vector.ph297

vector.ph297:                                     ; preds = %.split.us.thread.i.i
  %n.vec = and i64 %i.k, -8                       ; 3 uses
  br label %vector.body298

vector.body298:                                   ; preds = %vector.body298, %vector.ph297
  %index299 = phi i64 [ 0, %vector.ph297 ], [ %index.next304, %vector.body298 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph297 ], [ %i.fb, %vector.body298 ]
  %vec.phi300 = phi <4 x i32> [ zeroinitializer, %vector.ph297 ], [ %i.fc, %vector.body298 ]
  %vec.phi301 = phi <4 x i32> [ splat (i32 4111), %vector.ph297 ], [ %i.ez, %vector.body298 ]
  %vec.phi302 = phi <4 x i32> [ splat (i32 4111), %vector.ph297 ], [ %i.fa, %vector.body298 ]
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index299 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load = load <4 x i32>, ptr %i.en, align 4, !tbaa !65, !noalias !57 ; 3 uses
  %wide.load303 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !65, !noalias !57 ; 3 uses
  %i.ep = icmp ult <4 x i32> %wide.load, splat (i32 65536)
  %i.eq = icmp ult <4 x i32> %wide.load303, splat (i32 65536)
  %i.er = lshr <4 x i32> %wide.load, splat (i32 4)
  %i.es = lshr <4 x i32> %wide.load303, splat (i32 4)
  %i.et = tail call range(i32 0, 33) <4 x i32> @llvm.ctlz.v4i32(<4 x i32> %wide.load, i1 true)
  %i.eu = tail call range(i32 0, 33) <4 x i32> @llvm.ctlz.v4i32(<4 x i32> %wide.load303, i1 true)
  %i.ev = sub nuw nsw <4 x i32> splat (i32 4111), %i.et
  %i.ew = sub nuw nsw <4 x i32> splat (i32 4111), %i.eu
  %i.ex = select <4 x i1> %i.ep, <4 x i32> %i.er, <4 x i32> %i.ev ; 2 uses
  %i.ey = select <4 x i1> %i.eq, <4 x i32> %i.es, <4 x i32> %i.ew ; 2 uses
  %i.ez = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi301, <4 x i32> %i.ex) ; 2 uses
  %i.fa = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi302, <4 x i32> %i.ey) ; 2 uses
  %i.fb = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.ex) ; 2 uses
  %i.fc = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi300, <4 x i32> %i.ey) ; 2 uses
  %index.next304 = add nuw i64 %index299, 8       ; 2 uses
  %i.fd = icmp eq i64 %index.next304, %n.vec
  br i1 %i.fd, label %middle.block305, label %vector.body298, !llvm.loop !20

middle.block305:                                  ; preds = %vector.body298
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.fb, <4 x i32> %i.fc)
  %i.fe = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %rdx.minmax306 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ez, <4 x i32> %i.fa)
  %i.ff = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %rdx.minmax306) ; 2 uses
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %.split96.us.i55.i, label %PB_readValue.exit88.i.i

PB_readValue.exit.i.i:                            ; preds = %PB_readValue.exit.i.i, %.preheader90.i49.i
  %.07791.i.i = phi i64 [ %i.fq, %PB_readValue.exit.i.i ], [ 0, %.preheader90.i49.i ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.07791.i.i
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !65, !noalias !57 ; 3 uses
  %i.fi = icmp ult i32 %i.fh, 65536
  %i.fj = lshr i32 %i.fh, 4
  %i.fk = tail call range(i32 0, 16) i32 @llvm.ctlz.i32(i32 range(i32 65536, 0) %i.fh, i1 true)
  %i.fl = sub nuw nsw i32 4111, %i.fk
  %.0.i86.i.i = select i1 %i.fi, i32 %i.fj, i32 %i.fl
  %i.fm = zext nneg i32 %.0.i86.i.i to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.fm ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !65, !noalias !57
  %i.fp = add i32 %i.fo, 1
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !65, !noalias !57
  %i.fq = add i64 %.07791.i.i, %i.em              ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.k
  br i1 %i.fr, label %PB_readValue.exit.i.i, label %.split.us.thread.i.i, !llvm.loop !14

.split96.us.i55.i:                                ; preds = %PB_readValue.exit88.i.i, %middle.block305
  %.lcssa293 = phi i32 [ %i.ff, %middle.block305 ], [ %i.gh, %PB_readValue.exit88.i.i ]
  %.lcssa292 = phi i32 [ %i.fe, %middle.block305 ], [ %i.gi, %PB_readValue.exit88.i.i ] ; 2 uses
  %i.fs = zext nneg i32 %.lcssa293 to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.fs ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !65, !noalias !57
  %i.fv = tail call i32 @llvm.umax.i32(i32 %i.fu, i32 1)
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !65, !noalias !57
  %i.fw = zext nneg i32 %.lcssa292 to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.fw ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !65, !noalias !57
  %i.fz = tail call i32 @llvm.umax.i32(i32 %i.fy, i32 1)
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !65, !noalias !57
  %i.ga = add nuw nsw i32 %.lcssa292, 1
  br label %bb.n

PB_readValue.exit88.i.i:                          ; preds = %middle.block305, %PB_readValue.exit88.i.i
  %.07694.i.i = phi i64 [ %i.gj, %PB_readValue.exit88.i.i ], [ %n.vec, %middle.block305 ] ; 2 uses
  %.07893.i.i = phi i32 [ %i.gi, %PB_readValue.exit88.i.i ], [ %i.fe, %middle.block305 ]
  %.08092.i.i = phi i32 [ %i.gh, %PB_readValue.exit88.i.i ], [ %i.ff, %middle.block305 ]
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.07694.i.i
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !65, !noalias !57 ; 3 uses
  %i.gd = icmp ult i32 %i.gc, 65536
  %i.ge = lshr i32 %i.gc, 4
  %i.gf = tail call range(i32 0, 16) i32 @llvm.ctlz.i32(i32 range(i32 65536, 0) %i.gc, i1 true)
  %i.gg = sub nuw nsw i32 4111, %i.gf
  %.0.i89.i.i = select i1 %i.gd, i32 %i.ge, i32 %i.gg ; 2 uses
  %i.gh = tail call i32 @llvm.umin.i32(i32 %.08092.i.i, i32 %.0.i89.i.i) ; 2 uses
  %i.gi = tail call i32 @llvm.umax.i32(i32 %.07893.i.i, i32 %.0.i89.i.i) ; 2 uses
  %i.gj = add nuw i64 %.07694.i.i, 1              ; 2 uses
  %exitcond.not.i54.i = icmp eq i64 %i.gj, %i.k
  br i1 %exitcond.not.i54.i, label %.split96.us.i55.i, label %PB_readValue.exit88.i.i, !llvm.loop !21

bb.n:                                             ; preds = %.split96.us.i55.i, %.split.us.thread.i.i
  %i.gk = phi i32 [ 3, %.split96.us.i55.i ], [ 1, %.split.us.thread.i.i ] ; 5 uses
  %.179.i56.i = phi i32 [ %i.ga, %.split96.us.i55.i ], [ 1, %.split.us.thread.i.i ] ; 3 uses
  %i.gl = zext nneg i32 %.179.i56.i to i64        ; 5 uses
  %xtraiter = and i64 %i.gl, 3                    ; 3 uses
  %i.gm = icmp ult i32 %.179.i56.i, 4
  br i1 %i.gm, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.n
  %unroll_iter = and i64 %i.gl, 2147483644
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.new
  %.07499.i57.i = phi i64 [ 0, %.new ], [ %i.hg, %bb.o ] ; 5 uses
  %.07598.i58.i = phi i32 [ 0, %.new ], [ %i.hf, %bb.o ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.o ]
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.07499.i57.i ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !65, !noalias !57
  %i.gp = mul i32 %i.go, %i.gk
  store i32 %.07598.i58.i, ptr %i.gn, align 4, !tbaa !65, !noalias !57
  %i.gq = add i32 %i.gp, %.07598.i58.i            ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.07499.i57.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !65, !noalias !57
  %i.gu = mul i32 %i.gt, %i.gk
  store i32 %i.gq, ptr %i.gs, align 4, !tbaa !65, !noalias !57
  %i.gv = add i32 %i.gu, %i.gq                    ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.07499.i57.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !65, !noalias !57
  %i.gz = mul i32 %i.gy, %i.gk
  store i32 %i.gv, ptr %i.gx, align 4, !tbaa !65, !noalias !57
  %i.ha = add i32 %i.gz, %i.gv                    ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.07499.i57.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 12 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !65, !noalias !57
  %i.he = mul i32 %i.hd, %i.gk
  store i32 %i.ha, ptr %i.hc, align 4, !tbaa !65, !noalias !57
  %i.hf = add i32 %i.he, %i.ha                    ; 3 uses
  %i.hg = add nuw nsw i64 %.07499.i57.i, 4        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %PB_buildCumHist.exit61.i.unr-lcssa, label %bb.o, !llvm.loop !17

PB_buildCumHist.exit61.i.unr-lcssa:               ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %PB_buildCumHist.exit61.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %PB_buildCumHist.exit61.i.unr-lcssa, %bb.n
  %.07499.i57.i.epil.init = phi i64 [ 0, %bb.n ], [ %i.hg, %PB_buildCumHist.exit61.i.unr-lcssa ]
  %.07598.i58.i.epil.init = phi i32 [ 0, %bb.n ], [ %i.hf, %PB_buildCumHist.exit61.i.unr-lcssa ]
  %lcmp.mod416 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod416)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader
  %.07499.i57.i.epil = phi i64 [ %.07499.i57.i.epil.init, %.epil.preheader ], [ %i.hl, %bb.p ] ; 2 uses
  %.07598.i58.i.epil = phi i32 [ %.07598.i58.i.epil.init, %.epil.preheader ], [ %i.hk, %bb.p ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.p ]
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.07499.i57.i.epil ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !65, !noalias !57
  %i.hj = mul i32 %i.hi, %i.gk
  store i32 %.07598.i58.i.epil, ptr %i.hh, align 4, !tbaa !65, !noalias !57
  %i.hk = add i32 %i.hj, %.07598.i58.i.epil       ; 2 uses
  %i.hl = add nuw nsw i64 %.07499.i57.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %PB_buildCumHist.exit61.i, label %bb.p, !llvm.loop !22

PB_buildCumHist.exit61.i:                         ; preds = %bb.p, %PB_buildCumHist.exit61.i.unr-lcssa
  %.lcssa407 = phi i32 [ %i.hf, %PB_buildCumHist.exit61.i.unr-lcssa ], [ %i.hk, %bb.p ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.gl
  store i32 %.lcssa407, ptr %i.hm, align 4, !tbaa !65, !noalias !57
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.gl
  br label %bb.q

bb.q:                                             ; preds = %PB_buildCumHist.exit61.i, %PB_buildCumHist.exit.i
  %i.ho = phi i32 [ %.lcssa407, %PB_buildCumHist.exit61.i ], [ %.lcssa400.a, %PB_buildCumHist.exit.i ]
  %.pre-phi.i = phi i64 [ %i.gl, %PB_buildCumHist.exit61.i ], [ %i.cf, %PB_buildCumHist.exit.i ] ; 6 uses
  %.sroa.12.0.i = phi i32 [ %.179.i56.i, %PB_buildCumHist.exit61.i ], [ %.179.i.i, %PB_buildCumHist.exit.i ] ; 14 uses
  %.sroa.1867.0.i = phi i64 [ 268435456, %PB_buildCumHist.exit61.i ], [ 16384, %PB_buildCumHist.exit.i ] ; 11 uses
  %.sroa.7.0.i = phi ptr [ %i.dk, %PB_buildCumHist.exit61.i ], [ %i.af, %PB_buildCumHist.exit.i ] ; 34 uses
  %.sroa.0.0.i = phi ptr [ %i.di, %PB_buildCumHist.exit61.i ], [ %i.ad, %PB_buildCumHist.exit.i ] ; 27 uses
  %.073.in.in.in.i = phi ptr [ %i.hn, %PB_buildCumHist.exit61.i ], [ %i.dh, %PB_buildCumHist.exit.i ]
  %.073.in.in.i = load i64, ptr %.073.in.in.in.i, align 8, !tbaa !59, !noalias !57
  %.073.i = add i64 %.073.in.in.i, 4294967295
  %i.hp = and i64 %.073.i, 4294967295
  %i.hq = tail call range(i64 32, 65) i64 @llvm.ctlz.i64(i64 %i.hp, i1 false)
  %i.hr = sub nuw nsw i64 64, %i.hq               ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %.pre-phi.i ; 3 uses
  %i.ht = zext i32 %i.ho to i64
  %i.hu = mul nuw nsw i64 %i.hr, %i.ht
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8, !noalias !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8, !noalias !57
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %.pre-phi.i ; 2 uses
  %i.hw = icmp eq i32 %.sroa.12.0.i, 1
  %i.hx = add nsw i64 %.pre-phi.i, -1
  %i.hy = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.hx, i1 true)
  %i.hz = trunc nuw nsw i64 %i.hy to i32
  %i.ia = xor i32 %i.hz, 63
  %i.ib = shl nuw i32 1, %i.ia
  %i.ic = zext i32 %i.ib to i64                   ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.ic
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.ic
  %scevgep.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %scevgep126.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.if = add i32 %.sroa.12.0.i, 1                ; 4 uses
  %i.ig = zext i32 %i.if to i64                   ; 3 uses
  %7 = icmp ult i32 %i.if, 2
  br label %bb.r

bb.r:                                             ; preds = %PB_fixedPartitionFastInner.exit.thread.i, %bb.q
  %i.ih = phi i1 [ true, %bb.q ], [ false, %PB_fixedPartitionFastInner.exit.thread.i ]
  %.035110.i = phi i64 [ 0, %bb.q ], [ 1, %PB_fixedPartitionFastInner.exit.thread.i ]
  %.036109.i = phi i64 [ -1, %bb.q ], [ %.2.ph.i, %PB_fixedPartitionFastInner.exit.thread.i ] ; 9 uses
  %.037108.i = phi i64 [ 0, %bb.q ], [ %.239.ph.i, %PB_fixedPartitionFastInner.exit.thread.i ] ; 8 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr @__const.PB_fixedPartition.trialCounts, i64 %.035110.i
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !59, !noalias !57 ; 6 uses
  br i1 %i.aa, label %bb.an, label %PB_isLegalPartition.exit.i.i.i.i.i

PB_isLegalPartition.exit.i.i.i.i.i:               ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8, !noalias !57
  store i32 0, ptr %i.e, align 16, !tbaa !65, !noalias !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8, !noalias !57
  %i.ik = load i64, ptr %i.hv, align 8, !tbaa !59, !noalias !57 ; 2 uses
  %i.il = load i64, ptr %.sroa.7.0.i, align 8, !tbaa !59, !noalias !57 ; 2 uses
  %i.im = sub i64 %i.ik, %i.il                    ; 3 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.im, %.sroa.1867.0.i ; 2 uses
  %brmerge.i = or i1 %i.hw, %.not.i.i.i.i.i
  %.mux.i = select i1 %.not.i.i.i.i.i, i64 9223372036854775807, i64 -9223372036854775808
  br i1 %brmerge.i, label %.critedge.preheader.i.i.i.i, label %bb.s

.critedge.preheader.i.i.i.i:                      ; preds = %bb.s, %PB_isLegalPartition.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i64 [ %.mux.i, %PB_isLegalPartition.exit.i.i.i.i.i ], [ %i.jm, %bb.s ]
  store i64 %.0.i.i.i.i.i, ptr %i.b, align 16, !tbaa !59, !noalias !57
  br label %.preheader110.i.i.i.i

bb.s:                                             ; preds = %PB_isLegalPartition.exit.i.i.i.i.i
  %i.in = load i32, ptr %i.hs, align 4, !tbaa !65, !noalias !57 ; 2 uses
  %i.io = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !65, !noalias !57 ; 2 uses
  %i.ip = sub i32 %i.in, %i.io
  %i.iq = icmp ult i64 %i.im, 2
  %i.ir = add nsw i64 %i.im, -1
  %i.is = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.ir, i1 true)
  %i.it = sub nuw nsw i64 64, %i.is
  %i.iu = zext i32 %i.ip to i64
  %i.iv = select i1 %i.iq, i64 0, i64 %i.it
  %i.iw = mul nuw nsw i64 %i.iv, %i.iu
  %i.ix = load i32, ptr %i.id, align 4, !tbaa !65, !noalias !57 ; 2 uses
  %i.iy = sub i32 %i.ix, %i.io
  %i.iz = load i64, ptr %i.ie, align 8, !tbaa !59, !noalias !57 ; 2 uses
  %i.ja = sub i64 %i.iz, %i.il                    ; 2 uses
  %i.jb = icmp ult i64 %i.ja, 2
  %i.jc = add i64 %i.ja, -1
  %i.jd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.jc, i1 true)
  %.neg.i.i.i.i.i.i = or disjoint i64 %i.jd, -64
  %i.je = zext i32 %i.iy to i64
  %.neg1.i.i.i.i.i.i = select i1 %i.jb, i64 0, i64 %.neg.i.i.i.i.i.i
  %.neg2.i.i.i.i.i.i = mul nsw i64 %.neg1.i.i.i.i.i.i, %i.je
  %i.jf = sub i32 %i.in, %i.ix
  %i.jg = sub i64 %i.ik, %i.iz                    ; 2 uses
  %i.jh = icmp ult i64 %i.jg, 2
  %i.ji = add i64 %i.jg, -1
  %i.jj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.ji, i1 true)
  %.neg3.i.i.i.i.i.i = or disjoint i64 %i.jj, -64
  %i.jk = zext i32 %i.jf to i64
  %.neg4.i.i.i.i.i.i = select i1 %i.jh, i64 0, i64 %.neg3.i.i.i.i.i.i
  %.neg5.i.i.i.i.i.i = mul nsw i64 %.neg4.i.i.i.i.i.i, %i.jk
  %.neg6.i.i.i.i.i.i = add nsw i64 %i.iw, -24
  %i.jl = add nsw i64 %.neg6.i.i.i.i.i.i, %.neg5.i.i.i.i.i.i
  %i.jm = add nsw i64 %i.jl, %.neg2.i.i.i.i.i.i
  br label %.critedge.preheader.i.i.i.i

.critedge.loopexit.i.i.i.i:                       ; preds = %PB_partitionSplitGain.exit101.i.i.i.i, %PB_partitionSplitGain.exit101.i.i.i.i.1, %.preheader.i.i.i.i
  %exitcond.not.i.i.i = icmp eq i64 %i.ko, %i.ij
  br i1 %exitcond.not.i.i.i, label %PB_dividePartitions.exit.i.i.i, label %.preheader110.i.i.i.i

.preheader110.i.i.i.i:                            ; preds = %.critedge.loopexit.i.i.i.i, %.critedge.preheader.i.i.i.i
  %.sroa.33.0.i.i.i = phi i64 [ 1, %.critedge.preheader.i.i.i.i ], [ %i.ko, %.critedge.loopexit.i.i.i.i ] ; 10 uses
  br label %.lr.ph119.i.i.i.i

.lr.ph119.i.i.i.i:                                ; preds = %bb.t, %.preheader110.i.i.i.i
  %.070118.i.i.i.i = phi i64 [ %i.jr, %bb.t ], [ 0, %.preheader110.i.i.i.i ] ; 4 uses
  %.071117.i.i.i.i = phi i64 [ %spec.select86.i.i.i.i, %bb.t ], [ -1, %.preheader110.i.i.i.i ]
  %.073116.i.i.i.i = phi i64 [ %spec.select85.i.i.i.i, %bb.t ], [ -9223372036854775808, %.preheader110.i.i.i.i ] ; 2 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.070118.i.i.i.i
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !59, !noalias !57 ; 3 uses
  %i.jp = icmp eq i64 %i.jo, 9223372036854775807
  br i1 %i.jp, label %.thread.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph119.i.i.i.i
  %i.jq = icmp sgt i64 %i.jo, %.073116.i.i.i.i
  %spec.select85.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.jo, i64 %.073116.i.i.i.i)
  %spec.select86.i.i.i.i = select i1 %i.jq, i64 %.070118.i.i.i.i, i64 %.071117.i.i.i.i ; 3 uses
  %i.jr = add nuw nsw i64 %.070118.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.jr, %.sroa.33.0.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph119.i.i.i.i, !llvm.loop !23

._crit_edge.i.i.i.i:                              ; preds = %bb.t
  %i.js = icmp eq i64 %spec.select86.i.i.i.i, -1
  br i1 %i.js, label %PB_dividePartitions.exit.i.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.lr.ph119.i.i.i.i, %._crit_edge.i.i.i.i
  %.2103.i.i.i.i = phi i64 [ %spec.select86.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.070118.i.i.i.i, %.lr.ph119.i.i.i.i ] ; 11 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.2103.i.i.i.i
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !65, !noalias !57 ; 6 uses
  %i.jv = add nuw nsw i64 %.2103.i.i.i.i, 1       ; 3 uses
  %i.jw = icmp eq i64 %i.jv, %.sroa.33.0.i.i.i
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.jv ; 2 uses
  br i1 %i.jw, label %.thread.i.cont.i.i.i, label %.thread.i.else.i.i.i

.thread.i.else.i.i.i:                             ; preds = %.thread.i.i.i.i
  %.else.val29.i.i.i = load i32, ptr %i.jx, align 4, !tbaa !65, !noalias !57
  br label %.thread.i.cont.i.i.i

.thread.i.cont.i.i.i:                             ; preds = %.thread.i.else.i.i.i, %.thread.i.i.i.i
  %i.jy = phi i32 [ %.sroa.12.0.i, %.thread.i.i.i.i ], [ %.else.val29.i.i.i, %.thread.i.else.i.i.i ]
  %i.jz = sub i32 %i.jy, %i.ju                    ; 2 uses
  %i.ka = icmp ult i32 %i.jz, 2
  br i1 %i.ka, label %PB_dividePartitions.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %.thread.i.cont.i.i.i
  %i.kb = icmp ugt i64 %.sroa.33.0.i.i.i, %i.jv   ; 2 uses
  br i1 %i.kb, label %.lr.ph.preheader.i.i.i.i.i, label %PB_dividePartitionAt.exit.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.u
  %i.kc = shl nuw nsw i64 %.2103.i.i.i.i, 2
  %i.kd = getelementptr i8, ptr %i.e, i64 %i.kc   ; 2 uses
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.kd, i64 8
  %scevgep29.i.i.i.i.i = getelementptr i8, ptr %i.kd, i64 4
  %i.ke = xor i64 %.2103.i.i.i.i, -1
  %i.kf = add i64 %.sroa.33.0.i.i.i, %i.ke
  %i.kg = shl nuw i64 %i.kf, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep.i.i.i.i.i, ptr align 4 %scevgep29.i.i.i.i.i, i64 %i.kg, i1 false), !tbaa !65, !noalias !57
  br label %PB_dividePartitionAt.exit.i.i.i.i

PB_dividePartitionAt.exit.i.i.i.i:                ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.u
  %i.kh = zext i32 %i.jz to i64
  %i.ki = add nsw i64 %i.kh, -1
  %i.kj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.ki, i1 true)
  %i.kk = trunc nuw nsw i64 %i.kj to i32
  %i.kl = xor i32 %i.kk, 63
  %i.km = shl nuw i32 1, %i.kl
  %i.kn = add i32 %i.km, %i.ju
  store i32 %i.kn, ptr %i.jx, align 4, !tbaa !65, !noalias !57
  %i.ko = add nuw i64 %.sroa.33.0.i.i.i, 1        ; 2 uses
  br i1 %i.kb, label %.lr.ph121.preheader.i.i.i.i, label %.preheader.i.i.i.i

.lr.ph121.preheader.i.i.i.i:                      ; preds = %PB_dividePartitionAt.exit.i.i.i.i
  %i.kp = shl nuw nsw i64 %.2103.i.i.i.i, 3       ; 2 uses
  %scevgep125.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 %i.kp
  %scevgep127.i.i.i.i = getelementptr i8, ptr %scevgep126.i.i.i.i, i64 %i.kp
  %i.kq = xor i64 %.2103.i.i.i.i, -1
  %i.kr = add i64 %.sroa.33.0.i.i.i, %i.kq
  %i.ks = shl nuw i64 %i.kr, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep125.i.i.i.i, ptr align 8 %scevgep127.i.i.i.i, i64 %i.ks, i1 false), !tbaa !59, !noalias !57
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph121.preheader.i.i.i.i, %PB_dividePartitionAt.exit.i.i.i.i
  %.not113.i.i.i = icmp ugt i64 %.2103.i.i.i.i, %.sroa.33.0.i.i.i
  br i1 %.not113.i.i.i, label %.critedge.loopexit.i.i.i.i, label %PB_partitionEnd.exit89.i.i.i.i

PB_partitionEnd.exit89.i.i.i.i:                   ; preds = %.preheader.i.i.i.i
  %8 = add nuw i64 %.2103.i.i.i.i, 1              ; 2 uses
  %9 = getelementptr [4 x i8], ptr %i.e, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !65, !noalias !57 ; 7 uses
  %11 = icmp ult i32 %i.ju, %10
  br i1 %11, label %PB_isLegalPartition.exit.i91.i.i.i.i, label %PB_partitionSplitGain.exit101.i.i.i.i

PB_isLegalPartition.exit.i91.i.i.i.i:             ; preds = %PB_partitionEnd.exit89.i.i.i.i
  %i.kt = zext i32 %10 to i64                     ; 2 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.kt
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !59, !noalias !57 ; 2 uses
  %i.kw = zext i32 %i.ju to i64                   ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.kw
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !59, !noalias !57 ; 2 uses
  %i.kz = sub i64 %i.kv, %i.ky                    ; 3 uses
  %.not.i92.i.i.i.i = icmp ugt i64 %i.kz, %.sroa.1867.0.i
  br i1 %.not.i92.i.i.i.i, label %PB_partitionSplitGain.exit101.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %PB_isLegalPartition.exit.i91.i.i.i.i
  %i.la = sub nuw i32 %10, %i.ju                  ; 2 uses
  %i.lb = icmp ult i32 %i.la, 2
  br i1 %i.lb, label %PB_partitionSplitGain.exit101.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.kt
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !65, !noalias !57 ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.kw
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !65, !noalias !57 ; 2 uses
  %i.lg = sub i32 %i.ld, %i.lf
  %i.lh = icmp ult i64 %i.kz, 2
  %i.li = add nsw i64 %i.kz, -1
  %i.lj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.li, i1 true)
  %i.lk = sub nuw nsw i64 64, %i.lj
  %i.ll = zext i32 %i.lg to i64
  %i.lm = select i1 %i.lh, i64 0, i64 %i.lk
  %i.ln = mul nuw nsw i64 %i.lm, %i.ll
  %i.lo = zext i32 %i.la to i64
  %i.lp = add nsw i64 %i.lo, -1
  %i.lq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.lp, i1 true)
  %i.lr = trunc nuw nsw i64 %i.lq to i32
  %i.ls = xor i32 %i.lr, 63
  %i.lt = shl nuw i32 1, %i.ls
  %i.lu = add i32 %i.lt, %i.ju
  %i.lv = zext i32 %i.lu to i64                   ; 2 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.lv
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !65, !noalias !57 ; 2 uses
  %i.ly = sub i32 %i.lx, %i.lf
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.lv
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !59, !noalias !57 ; 2 uses
  %i.mb = sub i64 %i.ma, %i.ky                    ; 2 uses
  %i.mc = icmp ult i64 %i.mb, 2
  %i.md = add i64 %i.mb, -1
  %i.me = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.md, i1 true)
  %.neg.i.i94.i.i.i.i = or disjoint i64 %i.me, -64
  %i.mf = zext i32 %i.ly to i64
  %.neg1.i.i95.i.i.i.i = select i1 %i.mc, i64 0, i64 %.neg.i.i94.i.i.i.i
  %.neg2.i.i96.i.i.i.i = mul nsw i64 %.neg1.i.i95.i.i.i.i, %i.mf
  %i.mg = sub i32 %i.ld, %i.lx
  %i.mh = sub i64 %i.kv, %i.ma                    ; 2 uses
  %i.mi = icmp ult i64 %i.mh, 2
  %i.mj = add i64 %i.mh, -1
  %i.mk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.mj, i1 true)
  %.neg3.i.i97.i.i.i.i = or disjoint i64 %i.mk, -64
  %i.ml = zext i32 %i.mg to i64
  %.neg4.i.i98.i.i.i.i = select i1 %i.mi, i64 0, i64 %.neg3.i.i97.i.i.i.i
  %.neg5.i.i99.i.i.i.i = mul nsw i64 %.neg4.i.i98.i.i.i.i, %i.ml
  %.neg6.i.i100.i.i.i.i = add nsw i64 %i.ln, -24
  %i.mm = add nsw i64 %.neg6.i.i100.i.i.i.i, %.neg5.i.i99.i.i.i.i
  %i.mn = add nsw i64 %i.mm, %.neg2.i.i96.i.i.i.i
  br label %PB_partitionSplitGain.exit101.i.i.i.i

PB_partitionSplitGain.exit101.i.i.i.i:            ; preds = %bb.w, %bb.v, %PB_isLegalPartition.exit.i91.i.i.i.i, %PB_partitionEnd.exit89.i.i.i.i
  %.0.i90.i.i.i.i = phi i64 [ 9223372036854775807, %PB_isLegalPartition.exit.i91.i.i.i.i ], [ %i.mn, %bb.w ], [ -9223372036854775808, %bb.v ], [ 9223372036854775807, %PB_partitionEnd.exit89.i.i.i.i ]
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.2103.i.i.i.i
  store i64 %.0.i90.i.i.i.i, ptr %i.mo, align 8, !tbaa !59, !noalias !57
  %i.mp = icmp ult i64 %.2103.i.i.i.i, %.sroa.33.0.i.i.i
  br i1 %i.mp, label %PB_partitionEnd.exit89.i.else.i.i.i.1, label %.critedge.loopexit.i.i.i.i

PB_partitionEnd.exit89.i.else.i.i.i.1:            ; preds = %PB_partitionSplitGain.exit101.i.i.i.i
  %i.mq = getelementptr [4 x i8], ptr %i.e, i64 %.2103.i.i.i.i
  %i.mr = getelementptr i8, ptr %i.mq, i64 8
  %.else.val27.i.i.i.1 = load i32, ptr %i.mr, align 4, !tbaa !65, !noalias !57 ; 3 uses
  %12 = icmp ult i32 %10, %.else.val27.i.i.i.1
  br i1 %12, label %PB_isLegalPartition.exit.i91.i.i.i.i.1, label %PB_partitionSplitGain.exit101.i.i.i.i.1

PB_isLegalPartition.exit.i91.i.i.i.i.1:           ; preds = %PB_partitionEnd.exit89.i.else.i.i.i.1
  %i.ms = zext i32 %.else.val27.i.i.i.1 to i64    ; 2 uses
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.ms
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !59, !noalias !57 ; 2 uses
  %i.mv = zext i32 %10 to i64                     ; 2 uses
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.mv
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !59, !noalias !57 ; 2 uses
  %i.my = sub i64 %i.mu, %i.mx                    ; 3 uses
  %.not.i92.i.i.i.i.1 = icmp ugt i64 %i.my, %.sroa.1867.0.i
  br i1 %.not.i92.i.i.i.i.1, label %PB_partitionSplitGain.exit101.i.i.i.i.1, label %bb.x

bb.x:                                             ; preds = %PB_isLegalPartition.exit.i91.i.i.i.i.1
  %i.mz = sub nuw i32 %.else.val27.i.i.i.1, %10   ; 2 uses
  %i.na = icmp ult i32 %i.mz, 2
  br i1 %i.na, label %PB_partitionSplitGain.exit101.i.i.i.i.1, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.ms
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !65, !noalias !57 ; 2 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.mv
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !65, !noalias !57 ; 2 uses
  %i.nf = sub i32 %i.nc, %i.ne
  %i.ng = icmp ult i64 %i.my, 2
  %i.nh = add nsw i64 %i.my, -1
  %i.ni = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.nh, i1 true)
  %i.nj = sub nuw nsw i64 64, %i.ni
  %i.nk = zext i32 %i.nf to i64
  %i.nl = select i1 %i.ng, i64 0, i64 %i.nj
  %i.nm = mul nuw nsw i64 %i.nl, %i.nk
  %i.nn = zext i32 %i.mz to i64
  %i.no = add nsw i64 %i.nn, -1
  %i.np = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.no, i1 true)
  %i.nq = trunc nuw nsw i64 %i.np to i32
  %i.nr = xor i32 %i.nq, 63
  %i.ns = shl nuw i32 1, %i.nr
  %i.nt = add i32 %i.ns, %10
  %i.nu = zext i32 %i.nt to i64                   ; 2 uses
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.nu
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !65, !noalias !57 ; 2 uses
  %i.nx = sub i32 %i.nw, %i.ne
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.nu
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !59, !noalias !57 ; 2 uses
  %i.oa = sub i64 %i.nz, %i.mx                    ; 2 uses
  %i.ob = icmp ult i64 %i.oa, 2
  %i.oc = add i64 %i.oa, -1
  %i.od = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.oc, i1 true)
  %.neg.i.i94.i.i.i.i.1 = or disjoint i64 %i.od, -64
  %i.oe = zext i32 %i.nx to i64
  %.neg1.i.i95.i.i.i.i.1 = select i1 %i.ob, i64 0, i64 %.neg.i.i94.i.i.i.i.1
  %.neg2.i.i96.i.i.i.i.1 = mul nsw i64 %.neg1.i.i95.i.i.i.i.1, %i.oe
  %i.of = sub i32 %i.nc, %i.nw
  %i.og = sub i64 %i.mu, %i.nz                    ; 2 uses
  %i.oh = icmp ult i64 %i.og, 2
  %i.oi = add i64 %i.og, -1
  %i.oj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.oi, i1 true)
  %.neg3.i.i97.i.i.i.i.1 = or disjoint i64 %i.oj, -64
  %i.ok = zext i32 %i.of to i64
  %.neg4.i.i98.i.i.i.i.1 = select i1 %i.oh, i64 0, i64 %.neg3.i.i97.i.i.i.i.1
  %.neg5.i.i99.i.i.i.i.1 = mul nsw i64 %.neg4.i.i98.i.i.i.i.1, %i.ok
  %.neg6.i.i100.i.i.i.i.1 = add nsw i64 %i.nm, -24
  %i.ol = add nsw i64 %.neg6.i.i100.i.i.i.i.1, %.neg5.i.i99.i.i.i.i.1
  %i.om = add nsw i64 %i.ol, %.neg2.i.i96.i.i.i.i.1
  br label %PB_partitionSplitGain.exit101.i.i.i.i.1

PB_partitionSplitGain.exit101.i.i.i.i.1:          ; preds = %bb.y, %bb.x, %PB_isLegalPartition.exit.i91.i.i.i.i.1, %PB_partitionEnd.exit89.i.else.i.i.i.1
  %.0.i90.i.i.i.i.1 = phi i64 [ 9223372036854775807, %PB_isLegalPartition.exit.i91.i.i.i.i.1 ], [ %i.om, %bb.y ], [ -9223372036854775808, %bb.x ], [ 9223372036854775807, %PB_partitionEnd.exit89.i.else.i.i.i.1 ]
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %8
  store i64 %.0.i90.i.i.i.i.1, ptr %i.on, align 8, !tbaa !59, !noalias !57
  br label %.critedge.loopexit.i.i.i.i

PB_dividePartitions.exit.i.i.i:                   ; preds = %.thread.i.cont.i.i.i, %._crit_edge.i.i.i.i, %.critedge.loopexit.i.i.i.i
  %.sroa.33.1.i.i.i = phi i64 [ %.sroa.33.0.i.i.i, %._crit_edge.i.i.i.i ], [ %.sroa.33.0.i.i.i, %.thread.i.cont.i.i.i ], [ %i.ij, %.critedge.loopexit.i.i.i.i ] ; 19 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8, !noalias !57
  %i.oo = load i32, ptr %i.hs, align 4, !tbaa !65, !noalias !57 ; 2 uses
  %i.op = icmp ult i32 %i.oo, 10000
  %i.oq = icmp ult i64 %.sroa.33.1.i.i.i, 2
  %or.cond.i.i.i = or i1 %i.oq, %i.op
  br i1 %or.cond.i.i.i, label %PB_iterativeImprovement.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %PB_dividePartitions.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8, !noalias !57
  br label %PB_partitionEnd.exit.i11.i.i.i

PB_partitionEnd.exit.i11.i.i.i:                   ; preds = %bb.aa, %bb.z
  %.051157.i.i.i.i = phi i64 [ 0, %bb.z ], [ %i.ot, %bb.aa ] ; 3 uses
  %.052156.i.i.i.i = phi i64 [ 0, %bb.z ], [ %i.pt, %bb.aa ]
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.051157.i.i.i.i
  %i.os = load i32, ptr %i.or, align 4, !tbaa !65, !noalias !57 ; 2 uses
  %i.ot = add nuw nsw i64 %.051157.i.i.i.i, 1     ; 3 uses
  %i.ou = icmp eq i64 %i.ot, %.sroa.33.1.i.i.i    ; 2 uses
  br i1 %i.ou, label %PB_partitionEnd.exit.i11.cont.i.i.i, label %PB_partitionEnd.exit.i11.else.i.i.i

PB_partitionEnd.exit.i11.else.i.i.i:              ; preds = %PB_partitionEnd.exit.i11.i.i.i
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ot
  %.else.val23.i.i.i = load i32, ptr %i.ov, align 4, !tbaa !65, !noalias !57
  br label %PB_partitionEnd.exit.i11.cont.i.i.i

PB_partitionEnd.exit.i11.cont.i.i.i:              ; preds = %PB_partitionEnd.exit.i11.else.i.i.i, %PB_partitionEnd.exit.i11.i.i.i
  %i.ow = phi i32 [ %.sroa.12.0.i, %PB_partitionEnd.exit.i11.i.i.i ], [ %.else.val23.i.i.i, %PB_partitionEnd.exit.i11.else.i.i.i ] ; 2 uses
  %i.ox = icmp ult i32 %i.os, %i.ow
  br i1 %i.ox, label %PB_isLegalPartition.exit.i.i.i.i, label %.thread120.i.i.i.i

PB_isLegalPartition.exit.i.i.i.i:                 ; preds = %PB_partitionEnd.exit.i11.cont.i.i.i
  %i.oy = zext i32 %i.ow to i64                   ; 2 uses
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.oy
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !59, !noalias !57
  %i.pb = zext i32 %i.os to i64                   ; 2 uses
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.pb
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !59, !noalias !57
  %i.pe = sub i64 %i.pa, %i.pd                    ; 3 uses
  %.not147.i.i.i.i = icmp ugt i64 %i.pe, %.sroa.1867.0.i
  br i1 %.not147.i.i.i.i, label %.thread120.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %PB_isLegalPartition.exit.i.i.i.i
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.oy
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !65, !noalias !57
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.pb
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !65, !noalias !57
  %i.pj = sub i32 %i.pg, %i.pi
  %i.pk = icmp ult i64 %i.pe, 2
  %i.pl = add nsw i64 %i.pe, -1
  %i.pm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.pl, i1 true)
  %i.pn = sub nuw nsw i64 64, %i.pm
  %i.po = zext i32 %i.pj to i64
  %i.pp = select i1 %i.pk, i64 0, i64 %i.pn
  %i.pq = mul nuw nsw i64 %i.pp, %i.po
  %i.pr = add nuw nsw i64 %i.pq, 24               ; 2 uses
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.051157.i.i.i.i
  store i64 %i.pr, ptr %i.ps, align 8, !tbaa !59, !noalias !57
  %i.pt = add i64 %i.pr, %.052156.i.i.i.i         ; 2 uses
  br i1 %i.ou, label %.split.us.i.i.i.i, label %PB_partitionEnd.exit.i11.i.i.i, !llvm.loop !24

.split.us.i.i.i.i:                                ; preds = %bb.aa
  %i.pu = add i64 %i.ij, -1
  %i.pv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.pu, i1 true)
  %i.pw = sub nuw nsw i64 64, %i.pv
  %i.px = zext i32 %i.oo to i64
  %i.py = mul nuw nsw i64 %i.pw, %i.px
  %i.pz = add i64 %i.pt, %i.py
  br label %.lr.ph.us.i.i.i.i

.lr.ph.us.i.i.i.i:                                ; preds = %._crit_edge.us.i.i.i.i, %.split.us.i.i.i.i
  %.0116.us.i.i.i.i = phi i64 [ %i.pz, %.split.us.i.i.i.i ], [ %.2118.us.i.i.i.i, %._crit_edge.us.i.i.i.i ] ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %PB_tryMutation.exit.us.i.i.i.i, %.lr.ph.us.i.i.i.i
  %indvar.i.i.i = phi i64 [ %indvar.next.i.i.i, %PB_tryMutation.exit.us.i.i.i.i ], [ 0, %.lr.ph.us.i.i.i.i ] ; 17 uses
  %i.qa = phi i64 [ %i.zl, %PB_tryMutation.exit.us.i.i.i.i ], [ 1, %.lr.ph.us.i.i.i.i ] ; 11 uses
  %.1117158.us.i.i.i.i = phi i64 [ %.2118.us.i.i.i.i, %PB_tryMutation.exit.us.i.i.i.i ], [ %.0116.us.i.i.i.i, %.lr.ph.us.i.i.i.i ] ; 10 uses
  %i.qb = shl nuw nsw i64 %indvar.i.i.i, 2
  %i.qc = add nuw nsw i64 %i.qb, 4                ; 2 uses
  %scevgep60.i.i.i = getelementptr i8, ptr %i.e, i64 %i.qc ; 2 uses
  %scevgep61.i.i.i = getelementptr i8, ptr %i.c, i64 %i.qc ; 2 uses
  %i.qd = xor i64 %indvar.i.i.i, -1               ; 2 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvar.i.i.i
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !65, !noalias !57 ; 7 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.qa
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !65, !noalias !57
  %i.qi = sub i32 %i.qh, %i.qf                    ; 2 uses
  %i.qj = zext i32 %i.qi to i64
  %i.qk = icmp ult i32 %i.qi, 2                   ; 2 uses
  %i.ql = add nsw i64 %i.qj, -1
  %i.qm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.ql, i1 true)
  %i.qn = trunc nuw nsw i64 %i.qm to i32          ; 2 uses
  %i.qo = sub nuw nsw i32 64, %i.qn
  %i.qp = shl nuw i32 2, %i.qo
  %i.qq = select i1 %i.qk, i32 2, i32 %i.qp       ; 3 uses
  %i.qr = add i32 %i.qq, %i.qf                    ; 2 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qa ; 2 uses
  store i32 %i.qr, ptr %i.qs, align 4, !tbaa !65, !noalias !57
  %i.qt = add nuw nsw i64 %indvar.i.i.i, 2        ; 4 uses
  %.not4952.i.us.i.i.i.i = icmp ult i64 %i.qt, %.sroa.33.1.i.i.i ; 2 uses
  br i1 %.not4952.i.us.i.i.i.i, label %.lr.ph.i.us.i.i.i.i, label %PB_growPartitions.exit.us.i.i.i.i

.lr.ph.i.us.i.i.i.i:                              ; preds = %bb.ab, %bb.ac
  %i.qu = phi i32 [ %i.rj, %bb.ac ], [ %i.qr, %bb.ab ] ; 3 uses
  %i.qv = phi i64 [ %i.rl, %bb.ac ], [ %i.qt, %bb.ab ] ; 4 uses
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.qv
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !65, !noalias !57 ; 3 uses
  %i.qy = icmp ugt i32 %i.qx, %i.qu
  %i.qz = sub i32 %i.qx, %i.qu
  %i.ra = select i1 %i.qy, i32 %i.qz, i32 1       ; 2 uses
  %i.rb = zext i32 %i.ra to i64
  %i.rc = add nsw i64 %i.rb, -1
  %i.rd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.rc, i1 true)
  %i.re = trunc nuw nsw i64 %i.rd to i32
  %i.rf = sub nuw nsw i32 64, %i.re
  %i.rg = shl nuw i32 1, %i.rf
  %.inv.i.us.i.i.i.i = icmp ugt i32 %i.ra, 1
  %i.rh = tail call i32 @llvm.umax.i32(i32 %i.qq, i32 %i.rg)
  %i.ri = select i1 %.inv.i.us.i.i.i.i, i32 %i.rh, i32 %i.qq
  %i.rj = add i32 %i.ri, %i.qu                    ; 3 uses
  %.not.i.us.i.i.i.i = icmp eq i32 %i.rj, %i.qx
  br i1 %.not.i.us.i.i.i.i, label %PB_growPartitions.exit.us.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.us.i.i.i.i
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qv
  store i32 %i.rj, ptr %i.rk, align 4, !tbaa !65, !noalias !57
  %i.rl = add nuw nsw i64 %i.qv, 1                ; 2 uses
  %exitcond.not.i.us.i.i.i.i = icmp eq i64 %i.rl, %.sroa.33.1.i.i.i
  br i1 %exitcond.not.i.us.i.i.i.i, label %PB_growPartitions.exit.us.i.i.i.i, label %.lr.ph.i.us.i.i.i.i

PB_growPartitions.exit.us.i.i.i.i:                ; preds = %bb.ac, %.lr.ph.i.us.i.i.i.i, %bb.ab
  %.lcssa.i.us.i.i.i.i = phi i64 [ %i.qt, %bb.ab ], [ %.sroa.33.1.i.i.i, %bb.ac ], [ %i.qv, %.lr.ph.i.us.i.i.i.i ]
  %spec.select.i.us.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.lcssa.i.us.i.i.i.i, i64 range(i64 2, 0) %.sroa.33.1.i.i.i) ; 9 uses
  %.not46.i.i.us.i.i.i.i = icmp ult i64 %indvar.i.i.i, %spec.select.i.us.i.i.i.i
  br i1 %.not46.i.i.us.i.i.i.i, label %.lr.ph.i.i.us.i.i.i.i, label %.loopexit.us.i.i.i.i

.lr.ph.i.i.us.i.i.i.i:                            ; preds = %PB_growPartitions.exit.us.i.i.i.i
  %i.rm = icmp ult i64 %i.qa, %spec.select.i.us.i.i.i.i ; 2 uses
  %.0.in.peel.i.i.us.v.i.i.i.i = select i1 %i.rm, ptr %i.c, ptr %i.e
  %.0.in.peel.i.i.us.i.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %.0.in.peel.i.i.us.v.i.i.i.i, i64 %i.qa
  %.0.peel.i.i.us.i.i.i.i = load i32, ptr %.0.in.peel.i.i.us.i.i.i.i, align 4, !tbaa !65, !noalias !57 ; 3 uses
  %i.rn = icmp ule i32 %.0.peel.i.i.us.i.i.i.i, %.sroa.12.0.i
  %i.ro = icmp ult i32 %i.qf, %.0.peel.i.i.us.i.i.i.i
  %or.cond.i14.i.i.i = select i1 %i.rn, i1 %i.ro, i1 false
  br i1 %or.cond.i14.i.i.i, label %PB_isLegalPartition.exit.peel.i.i.us.i.i.i.i, label %.loopexit.us.i.i.i.i

PB_isLegalPartition.exit.peel.i.i.us.i.i.i.i:     ; preds = %.lr.ph.i.i.us.i.i.i.i
  %i.rp = zext i32 %.0.peel.i.i.us.i.i.i.i to i64 ; 2 uses
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.rp
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !59, !noalias !57
  %i.rs = zext i32 %i.qf to i64                   ; 2 uses
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.rs
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !59, !noalias !57
  %i.rv = sub i64 %i.rr, %i.ru                    ; 3 uses
  %.not45.peel.i.i.us.i.i.i.i = icmp ugt i64 %i.rv, %.sroa.1867.0.i
  br i1 %.not45.peel.i.i.us.i.i.i.i, label %.loopexit.us.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %PB_isLegalPartition.exit.peel.i.i.us.i.i.i.i
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.rp
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !65, !noalias !57
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.rs
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !65, !noalias !57
  %i.sa = sub i32 %i.rx, %i.rz
  %i.sb = icmp ult i64 %i.rv, 2
  %i.sc = add nsw i64 %i.rv, -1
  %i.sd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.sc, i1 true)
  %i.se = sub nuw nsw i64 64, %i.sd
  %i.sf = zext i32 %i.sa to i64
  %i.sg = select i1 %i.sb, i64 0, i64 %i.se
  %i.sh = mul nuw nsw i64 %i.sg, %i.sf
  %i.si = add nuw nsw i64 %i.sh, 24               ; 2 uses
  %exitcond.peel.not.i.i.us.i.i.i.i = icmp eq i64 %i.qa, %spec.select.i.us.i.i.i.i
  br i1 %exitcond.peel.not.i.i.us.i.i.i.i, label %.lr.ph.preheader.i.us.i.i.i.i, label %.peel.next.i.i.us.i.i.i.i

.peel.next.i.i.us.i.i.i.i:                        ; preds = %bb.ad, %bb.af
  %.03448.i.i.us.i.i.i.i = phi i64 [ %i.sk, %bb.af ], [ %i.qa, %bb.ad ] ; 2 uses
  %.03547.i.i.us.i.i.i.i = phi i64 [ %i.tk, %bb.af ], [ %i.si, %bb.ad ]
  %.in.i.i.us.i.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.03448.i.i.us.i.i.i.i
  %i.sj = load i32, ptr %.in.i.i.us.i.i.i.i, align 4, !tbaa !65, !noalias !57 ; 2 uses
  %i.sk = add nuw nsw i64 %.03448.i.i.us.i.i.i.i, 1 ; 5 uses
  %i.sl = icmp eq i64 %i.sk, %.sroa.33.1.i.i.i
  br i1 %i.sl, label %bb.ae, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.peel.next.i.i.us.i.i.i.i
  %i.sm = icmp ult i64 %i.sk, %spec.select.i.us.i.i.i.i
  %..i.i.i = select i1 %i.sm, ptr %i.c, ptr %i.e
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %..i.i.i, i64 %i.sk
  %.0.in.i.i.us.i.sroa.speculate.load.17.i.i.i = load i32, ptr %i.sn, align 4, !tbaa !65, !noalias !57
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split.i.i.i, %.peel.next.i.i.us.i.i.i.i
  %.0.in.i.i.us.i.sroa.speculated.i.i.i = phi i32 [ %.sroa.12.0.i, %.peel.next.i.i.us.i.i.i.i ], [ %.0.in.i.i.us.i.sroa.speculate.load.17.i.i.i, %.sink.split.i.i.i ] ; 3 uses
  %i.so = icmp ule i32 %.0.in.i.i.us.i.sroa.speculated.i.i.i, %.sroa.12.0.i
  %i.sp = icmp ult i32 %i.sj, %.0.in.i.i.us.i.sroa.speculated.i.i.i
  %or.cond.i.i.us.i.i.i.i = select i1 %i.so, i1 %i.sp, i1 false
end_hunk_1
begin_hunk_2_@EI_partitionBitpackDynGraph:bb.a

bb.al:                                            ; preds = %PB_isLegalPartition.exit.i.i86.us.i.i.i.i
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.wx
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !65, !noalias !57
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.xa
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !65, !noalias !57
  %i.xi = sub i32 %i.xf, %i.xh
  %i.xj = icmp ult i64 %i.xd, 2
  %i.xk = add nsw i64 %i.xd, -1
  %i.xl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.xk, i1 true)
  %i.xm = sub nuw nsw i64 64, %i.xl
  %i.xn = zext i32 %i.xi to i64
  %i.xo = select i1 %i.xj, i64 0, i64 %i.xm
  %i.xp = mul nuw nsw i64 %i.xo, %i.xn
  %i.xq = add i64 %.03547.i.i81.us.i.i.i.i, 24
  %i.xr = add i64 %i.xq, %i.xp                    ; 3 uses
  %exitcond.not.i.i88.us.i.i.i.i = icmp eq i64 %i.wr, %.5.i127145.us.i.i.i.i
  br i1 %exitcond.not.i.i88.us.i.i.i.i, label %PB_modifiedRangeCost.exit.i89.us.i.i.i.i, label %.peel.next.i.i79.us.i.i.i.i, !llvm.loop !25

PB_modifiedRangeCost.exit.i89.us.i.i.i.i:         ; preds = %bb.al
  %i.xs = icmp eq i64 %i.xr, -1
  br i1 %i.xs, label %PB_tryMutation.exit.us.i.i.i.i, label %.lr.ph.preheader.i90.us.i.i.i.i

.lr.ph.preheader.i90.us.i.i.i.i:                  ; preds = %PB_modifiedRangeCost.exit.i89.us.i.i.i.i, %bb.aj
  %spec.select.i8285.i91.us.i.i.i.i = phi i64 [ %i.xr, %PB_modifiedRangeCost.exit.i89.us.i.i.i.i ], [ %i.wp, %bb.aj ] ; 2 uses
  %i.xt = sub i64 %.5.i127145.us.i.i.i.i, %indvar.i.i.i ; 3 uses
  %min.iters.check338 = icmp ult i64 %i.xt, 4
  br i1 %min.iters.check338, label %.lr.ph.i92.us.i.i.i.i.preheader, label %vector.ph339

vector.ph339:                                     ; preds = %.lr.ph.preheader.i90.us.i.i.i.i
  %n.vec340 = and i64 %i.xt, -4                   ; 3 uses
  %i.xu = add i64 %indvar.i.i.i, %n.vec340
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvar.i.i.i
  br label %vector.body341

vector.body341:                                   ; preds = %vector.body341, %vector.ph339
  %index342 = phi i64 [ 0, %vector.ph339 ], [ %index.next347, %vector.body341 ] ; 2 uses
  %vec.phi343 = phi <2 x i64> [ zeroinitializer, %vector.ph339 ], [ %i.xy, %vector.body341 ]
  %vec.phi344 = phi <2 x i64> [ zeroinitializer, %vector.ph339 ], [ %i.xz, %vector.body341 ]
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %i.xv, i64 %index342 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 16
  %wide.load345 = load <2 x i64>, ptr %i.xw, align 8, !tbaa !59, !noalias !57
  %wide.load346 = load <2 x i64>, ptr %i.xx, align 8, !tbaa !59, !noalias !57
  %i.xy = add <2 x i64> %wide.load345, %vec.phi343 ; 2 uses
  %i.xz = add <2 x i64> %wide.load346, %vec.phi344 ; 2 uses
  %index.next347 = add nuw i64 %index342, 4       ; 2 uses
  %i.ya = icmp eq i64 %index.next347, %n.vec340
  br i1 %i.ya, label %middle.block348, label %vector.body341, !llvm.loop !29

middle.block348:                                  ; preds = %vector.body341
  %bin.rdx = add <2 x i64> %i.xz, %i.xy
  %i.yb = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n349 = icmp eq i64 %i.xt, %n.vec340
  br i1 %cmp.n349, label %._crit_edge.i96.us.i.i.i.i, label %.lr.ph.i92.us.i.i.i.i.preheader

.lr.ph.i92.us.i.i.i.i.preheader:                  ; preds = %.lr.ph.preheader.i90.us.i.i.i.i, %middle.block348
  %.04756.i93.us.i.i.i.i.ph = phi i64 [ %indvar.i.i.i, %.lr.ph.preheader.i90.us.i.i.i.i ], [ %i.xu, %middle.block348 ]
  %.04855.i94.us.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i90.us.i.i.i.i ], [ %i.yb, %middle.block348 ]
  br label %.lr.ph.i92.us.i.i.i.i

.lr.ph.i92.us.i.i.i.i:                            ; preds = %.lr.ph.i92.us.i.i.i.i.preheader, %.lr.ph.i92.us.i.i.i.i
  %.04756.i93.us.i.i.i.i = phi i64 [ %i.yf, %.lr.ph.i92.us.i.i.i.i ], [ %.04756.i93.us.i.i.i.i.ph, %.lr.ph.i92.us.i.i.i.i.preheader ] ; 2 uses
  %.04855.i94.us.i.i.i.i = phi i64 [ %i.ye, %.lr.ph.i92.us.i.i.i.i ], [ %.04855.i94.us.i.i.i.i.ph, %.lr.ph.i92.us.i.i.i.i.preheader ]
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.04756.i93.us.i.i.i.i
  %i.yd = load i64, ptr %i.yc, align 8, !tbaa !59, !noalias !57
  %i.ye = add i64 %i.yd, %.04855.i94.us.i.i.i.i   ; 2 uses
  %i.yf = add nuw nsw i64 %.04756.i93.us.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i95.us.i.i.i.i = icmp eq i64 %i.yf, %.5.i127145.us.i.i.i.i
  br i1 %exitcond.not.i95.us.i.i.i.i, label %._crit_edge.i96.us.i.i.i.i, label %.lr.ph.i92.us.i.i.i.i, !llvm.loop !30

._crit_edge.i96.us.i.i.i.i:                       ; preds = %.lr.ph.i92.us.i.i.i.i, %middle.block348
  %.lcssa286 = phi i64 [ %i.yb, %middle.block348 ], [ %i.ye, %.lr.ph.i92.us.i.i.i.i ] ; 2 uses
  %.not.i97.us.i.i.i.i = icmp ult i64 %spec.select.i8285.i91.us.i.i.i.i, %.lcssa286
  br i1 %.not.i97.us.i.i.i.i, label %.preheader.i98.us.i.i.i.i, label %PB_tryMutation.exit.us.i.i.i.i

.preheader.i98.us.i.i.i.i:                        ; preds = %._crit_edge.i96.us.i.i.i.i
  br i1 %i.vt, label %.lr.ph59.i108.us.i.preheader.i.i.i, label %PB_partitionEnd.exit.i104.us.i.i.i.i.preheader

.lr.ph59.i108.us.i.preheader.i.i.i:               ; preds = %.preheader.i98.us.i.i.i.i
  %i.yg = add i64 %.5.i127145.us.i.i.i.i, %i.qd
  %i.yh = shl nuw i64 %i.yg, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep60.i.i.i, ptr align 4 %scevgep61.i.i.i, i64 %i.yh, i1 false), !tbaa !65, !noalias !57
  br label %PB_partitionEnd.exit.i104.us.i.i.i.i.preheader

PB_partitionEnd.exit.i104.us.i.i.i.i.preheader:   ; preds = %.lr.ph59.i108.us.i.preheader.i.i.i, %.preheader.i98.us.i.i.i.i
  br label %PB_partitionEnd.exit.i104.us.i.i.i.i

PB_partitionEnd.exit.i104.us.i.i.i.i:             ; preds = %PB_partitionEnd.exit.i104.us.i.i.i.i.preheader, %PB_partitionEnd.exit.i104.us.i.cont.i.i.i
  %.04561.i105.us.i.i.i.i = phi i64 [ %i.yk, %PB_partitionEnd.exit.i104.us.i.cont.i.i.i ], [ %indvar.i.i.i, %PB_partitionEnd.exit.i104.us.i.i.i.i.preheader ] ; 3 uses
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.04561.i105.us.i.i.i.i
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !65, !noalias !57
  %i.yk = add nuw nsw i64 %.04561.i105.us.i.i.i.i, 1 ; 4 uses
  %i.yl = icmp eq i64 %i.yk, %.sroa.33.1.i.i.i
  br i1 %i.yl, label %PB_partitionEnd.exit.i104.us.i.cont.i.i.i, label %PB_partitionEnd.exit.i104.us.i.else.i.i.i

PB_partitionEnd.exit.i104.us.i.else.i.i.i:        ; preds = %PB_partitionEnd.exit.i104.us.i.i.i.i
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.yk
  %.else.val21.i.i.i = load i32, ptr %i.ym, align 4, !tbaa !65, !noalias !57
  %.pre62.i.i.i = zext i32 %.else.val21.i.i.i to i64
  br label %PB_partitionEnd.exit.i104.us.i.cont.i.i.i

PB_partitionEnd.exit.i104.us.i.cont.i.i.i:        ; preds = %PB_partitionEnd.exit.i104.us.i.else.i.i.i, %PB_partitionEnd.exit.i104.us.i.i.i.i
  %.pre-phi63.i.i.i = phi i64 [ %.pre-phi.i, %PB_partitionEnd.exit.i104.us.i.i.i.i ], [ %.pre62.i.i.i, %PB_partitionEnd.exit.i104.us.i.else.i.i.i ] ; 2 uses
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %.pre-phi63.i.i.i
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !65, !noalias !57
  %i.yp = zext i32 %i.yj to i64                   ; 2 uses
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.yp
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !65, !noalias !57
  %i.ys = sub i32 %i.yo, %i.yr
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %.pre-phi63.i.i.i
  %i.yu = load i64, ptr %i.yt, align 8, !tbaa !59, !noalias !57
  %i.yv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.yp
  %i.yw = load i64, ptr %i.yv, align 8, !tbaa !59, !noalias !57
  %i.yx = sub i64 %i.yu, %i.yw                    ; 2 uses
  %i.yy = icmp ult i64 %i.yx, 2
  %i.yz = add i64 %i.yx, -1
  %i.za = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.yz, i1 true)
  %i.zb = sub nuw nsw i64 64, %i.za
  %i.zc = zext i32 %i.ys to i64
  %i.zd = select i1 %i.yy, i64 0, i64 %i.zb
  %i.ze = mul nuw nsw i64 %i.zd, %i.zc
  %i.zf = add nuw nsw i64 %i.ze, 24
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.04561.i105.us.i.i.i.i
  store i64 %i.zf, ptr %i.zg, align 8, !tbaa !59, !noalias !57
  %exitcond66.not.i107.us.i.i.i.i = icmp eq i64 %i.yk, %.5.i127145.us.i.i.i.i
  br i1 %exitcond66.not.i107.us.i.i.i.i, label %PB_tryMutation.exit.us.loopexit.i.i.i.i, label %PB_partitionEnd.exit.i104.us.i.i.i.i, !llvm.loop !28

PB_tryMutation.exit.us.loopexit.i.i.i.i:          ; preds = %PB_partitionEnd.exit.i104.us.i.cont.i.i.i
  %i.zh = add i64 %spec.select.i8285.i91.us.i.i.i.i, %.1117158.us.i.i.i.i
  %i.zi = sub i64 %i.zh, %.lcssa286
  br label %PB_tryMutation.exit.us.i.i.i.i

PB_tryMutation.exit.us.loopexit161.i.i.i.i:       ; preds = %PB_partitionEnd.exit.i.us.i.cont.i.i.i
  %i.zj = add i64 %spec.select.i8285.i.us.i.i.i.i, %.1117158.us.i.i.i.i
  %i.zk = sub i64 %i.zj, %.lcssa284
  br label %PB_tryMutation.exit.us.i.i.i.i

PB_tryMutation.exit.us.i.i.i.i:                   ; preds = %PB_isLegalPartition.exit.i.i86.us.i.i.i.i, %bb.ak, %PB_tryMutation.exit.us.loopexit161.i.i.i.i, %PB_tryMutation.exit.us.loopexit.i.i.i.i, %._crit_edge.i96.us.i.i.i.i, %PB_modifiedRangeCost.exit.i89.us.i.i.i.i, %PB_isLegalPartition.exit.peel.i.i75.us.i.i.i.i, %.lr.ph.i.i71.thread142.us.i.i.i.i, %PB_shrinkPartitions.exit.us.i.i.i.i, %.loopexit.us.i.i.i.i
  %.2118.us.i.i.i.i = phi i64 [ %i.zk, %PB_tryMutation.exit.us.loopexit161.i.i.i.i ], [ %.1117158.us.i.i.i.i, %.lr.ph.i.i71.thread142.us.i.i.i.i ], [ %.1117158.us.i.i.i.i, %PB_isLegalPartition.exit.peel.i.i75.us.i.i.i.i ], [ %i.zi, %PB_tryMutation.exit.us.loopexit.i.i.i.i ], [ %.1117158.us.i.i.i.i, %._crit_edge.i96.us.i.i.i.i ], [ %.1117158.us.i.i.i.i, %.loopexit.us.i.i.i.i ], [ %.1117158.us.i.i.i.i, %PB_modifiedRangeCost.exit.i89.us.i.i.i.i ], [ %.1117158.us.i.i.i.i, %PB_shrinkPartitions.exit.us.i.i.i.i ], [ %.1117158.us.i.i.i.i, %bb.ak ], [ %.1117158.us.i.i.i.i, %PB_isLegalPartition.exit.i.i86.us.i.i.i.i ] ; 3 uses
  %i.zl = add nuw nsw i64 %i.qa, 1                ; 2 uses
  %exitcond169.not.i.i.i.i = icmp eq i64 %i.zl, %.sroa.33.1.i.i.i
  %indvar.next.i.i.i = add nuw nsw i64 %indvar.i.i.i, 1
  br i1 %exitcond169.not.i.i.i.i, label %._crit_edge.us.i.i.i.i, label %bb.ab, !llvm.loop !31

._crit_edge.us.i.i.i.i:                           ; preds = %PB_tryMutation.exit.us.i.i.i.i
  %i.zm = icmp eq i64 %.2118.us.i.i.i.i, %.0116.us.i.i.i.i
  br i1 %i.zm, label %.thread120.i.i.i.i, label %.lr.ph.us.i.i.i.i

.thread120.i.i.i.i:                               ; preds = %PB_isLegalPartition.exit.i.i.i.i, %PB_partitionEnd.exit.i11.cont.i.i.i, %._crit_edge.us.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8, !noalias !57
  br label %PB_iterativeImprovement.exit.i.i.i

PB_iterativeImprovement.exit.i.i.i:               ; preds = %.thread120.i.i.i.i, %PB_dividePartitions.exit.i.i.i
  %exitcond.i.i.i.i294 = icmp eq i64 %.sroa.33.1.i.i.i, 0
  br i1 %exitcond.i.i.i.i294, label %PB_greedyOptimize.exit.i.thread.i, label %PB_partitionEnd.exit.i15.i.i.i

bb.am:                                            ; preds = %PB_isLegalPartition.exit.i17.i.i.i
  %exitcond.i.i.i.i = icmp eq i64 %i.zp, %.sroa.33.1.i.i.i
  br i1 %exitcond.i.i.i.i, label %PB_greedyOptimize.exit.i.thread.i, label %PB_partitionEnd.exit.i15.i.i.i, !llvm.loop !32

PB_greedyOptimize.exit.i.thread.i:                ; preds = %bb.am, %PB_iterativeImprovement.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8, !noalias !57
  br label %PB_fixedPartitionFastInner.exit.i

PB_partitionEnd.exit.i15.i.i.i:                   ; preds = %PB_iterativeImprovement.exit.i.i.i, %bb.am
  %.015.i.i.i.i295 = phi i64 [ %i.zp, %bb.am ], [ 0, %PB_iterativeImprovement.exit.i.i.i ] ; 2 uses
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.015.i.i.i.i295
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !65, !noalias !57 ; 2 uses
  %i.zp = add nuw nsw i64 %.015.i.i.i.i295, 1     ; 4 uses
  %i.zq = icmp eq i64 %i.zp, %.sroa.33.1.i.i.i
  br i1 %i.zq, label %PB_partitionEnd.exit.i15.cont.i.i.i, label %PB_partitionEnd.exit.i15.else.i.i.i

PB_partitionEnd.exit.i15.else.i.i.i:              ; preds = %PB_partitionEnd.exit.i15.i.i.i
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.zp
  %.else.val.i.i.i = load i32, ptr %i.zr, align 4, !tbaa !65, !noalias !57
  br label %PB_partitionEnd.exit.i15.cont.i.i.i

PB_partitionEnd.exit.i15.cont.i.i.i:              ; preds = %PB_partitionEnd.exit.i15.else.i.i.i, %PB_partitionEnd.exit.i15.i.i.i
  %i.zs = phi i32 [ %.sroa.12.0.i, %PB_partitionEnd.exit.i15.i.i.i ], [ %.else.val.i.i.i, %PB_partitionEnd.exit.i15.else.i.i.i ] ; 2 uses
  %i.zt = icmp ult i32 %i.zo, %i.zs
  br i1 %i.zt, label %PB_isLegalPartition.exit.i17.i.i.i, label %PB_greedyOptimize.exit.i.i

PB_isLegalPartition.exit.i17.i.i.i:               ; preds = %PB_partitionEnd.exit.i15.cont.i.i.i
  %i.zu = zext i32 %i.zs to i64
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.zu
  %i.zw = load i64, ptr %i.zv, align 8, !tbaa !59, !noalias !57
  %i.zx = zext i32 %i.zo to i64
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.zx
  %i.zz = load i64, ptr %i.zy, align 8, !tbaa !59, !noalias !57
  %i.aaa = sub i64 %i.zw, %i.zz
  %.not.i18.i.i.i = icmp ugt i64 %i.aaa, %.sroa.1867.0.i
  br i1 %.not.i18.i.i.i, label %PB_greedyOptimize.exit.i.i, label %bb.am, !llvm.loop !32

PB_greedyOptimize.exit.i.i:                       ; preds = %PB_isLegalPartition.exit.i17.i.i.i, %PB_partitionEnd.exit.i15.cont.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8, !noalias !57
  br label %PB_fixedPartitionFastInner.exit.thread.i

bb.an:                                            ; preds = %bb.r
  %i.aab = add i64 %i.ij, -1
  %i.aac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.aab, i1 true)
  %i.aad = trunc i64 %i.ij to i32                 ; 2 uses
  %i.aae = tail call i32 @llvm.umin.i32(i32 %.sroa.12.0.i, i32 %i.aad) ; 2 uses
  %i.aaf = add i32 %i.aae, 1
  %i.aag = zext i32 %i.aaf to i64
  %i.aah = mul nuw i64 %i.aag, %i.ig              ; 2 uses
  %i.aai = shl i64 %i.aah, 3                      ; 2 uses
  %i.aaj = shl i64 %i.aah, 2                      ; 2 uses
  %i.aak = tail call ptr @ZL_Graph_getScratchSpace(ptr noundef %0, i64 noundef %i.aai) #8, !noalias !57 ; 5 uses
  %i.aal = tail call ptr @ZL_Graph_getScratchSpace(ptr noundef %0, i64 noundef %i.aaj) #8, !noalias !57 ; 5 uses
  %i.aam = icmp ne ptr %i.aak, null
  %i.aan = icmp ne ptr %i.aal, null
  %or.cond.i8.i.i = select i1 %i.aam, i1 %i.aan, i1 false
  br i1 %or.cond.i8.i.i, label %bb.ao, label %PB_fixedPartitionFastInner.exit.thread.i

bb.ao:                                            ; preds = %bb.an
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aak, i8 -1, i64 %i.aai, i1 false), !noalias !57
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aal, i8 -1, i64 %i.aaj, i1 false), !noalias !57
  store i64 0, ptr %i.aak, align 8, !tbaa !59, !noalias !57
  store i32 0, ptr %i.aal, align 4, !tbaa !65, !noalias !57
  %.not113120.i.i.i = icmp eq i32 %i.aad, 0
  %or.cond.i.i = or i1 %7, %.not113120.i.i.i
  br i1 %or.cond.i.i, label %._crit_edge.i.i.i, label %.lr.ph123.i.preheader.i.i

.lr.ph123.i.preheader.i.i:                        ; preds = %bb.ao
  %i.aao = and i64 %i.ij, 4294967295
  %invariant.op = sub i64 64, %i.aac
  br label %.lr.ph123.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge124.i.i.i, %bb.ao
  %i.aap = zext i32 %i.aae to i64                 ; 2 uses
  br label %.lr.ph132.i.i.i

.lr.ph123.i.i.i:                                  ; preds = %._crit_edge124.i.i.i, %.lr.ph123.i.preheader.i.i
  %indvars.iv142.i.i.i = phi i64 [ %indvars.iv.next143.i.i.i, %._crit_edge124.i.i.i ], [ 1, %.lr.ph123.i.preheader.i.i ] ; 6 uses
  %umin36.i.i = tail call i64 @llvm.umin.i64(i64 %indvars.iv142.i.i.i, i64 %.pre-phi.i)
  %umin37.i.i = tail call i64 @llvm.umin.i64(i64 %umin36.i.i, i64 %i.aao)
  %umax38.i.i = tail call i64 @llvm.umax.i64(i64 %umin37.i.i, i64 1)
  %i.aaq = trunc nuw i64 %indvars.iv142.i.i.i to i32 ; 2 uses
  %i.aar = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %indvars.iv142.i.i.i
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv142.i.i.i
  br label %.lr.ph.i.i.i

._crit_edge124.i.i.i:                             ; preds = %._crit_edge.split.i.i.i
  %indvars.iv.next143.i.i.i = add nuw nsw i64 %indvars.iv142.i.i.i, 1 ; 2 uses
  %exitcond.not.i10.i.i = icmp eq i64 %indvars.iv.next143.i.i.i, %i.ig
  br i1 %exitcond.not.i10.i.i, label %._crit_edge.i.i.i, label %.lr.ph123.i.i.i, !llvm.loop !33

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.split.i.i.i, %.lr.ph123.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 1, %.lr.ph123.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.split.i.i.i ] ; 4 uses
  %i.aat = add nsw i64 %indvars.iv.i.i.i, -1      ; 2 uses
  %i.aau = sub nuw nsw i64 %indvars.iv142.i.i.i, %i.aat
  %i.aav = trunc nuw i64 %i.aat to i32
  %i.aaw = mul i32 %i.if, %i.aav
  %i.aax = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.aay = mul i32 %i.if, %i.aax
  %i.aaz = add i32 %i.aay, %i.aaq
  %i.aba = zext i32 %i.aaz to i64                 ; 2 uses
  %i.abb = getelementptr inbounds nuw [8 x i8], ptr %i.aak, i64 %i.aba ; 2 uses
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.aal, i64 %i.aba
  br label %bb.ap

bb.ap:                                            ; preds = %PB_dpBucketCost.exit.thread.i.i.i, %.lr.ph.i.i.i
  %.096118.i.i.i = phi i32 [ 1, %.lr.ph.i.i.i ], [ %i.acc, %PB_dpBucketCost.exit.thread.i.i.i ] ; 3 uses
  %i.abd = sub nuw i32 %i.aaq, %.096118.i.i.i     ; 3 uses
  %i.abe = load i64, ptr %i.aar, align 8, !tbaa !59, !noalias !57
  %i.abf = zext i32 %i.abd to i64                 ; 2 uses
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.abf
  %i.abh = load i64, ptr %i.abg, align 8, !tbaa !59, !noalias !57
  %i.abi = sub i64 %i.abe, %i.abh                 ; 3 uses
  %i.abj = icmp ugt i64 %i.abi, %.sroa.1867.0.i
  br i1 %i.abj, label %._crit_edge.split.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.abk = add i32 %i.abd, %i.aaw
  %i.abl = zext i32 %i.abk to i64
  %i.abm = getelementptr inbounds nuw [8 x i8], ptr %i.aak, i64 %i.abl
  %i.abn = load i64, ptr %i.abm, align 8, !tbaa !59, !noalias !57 ; 2 uses
  %i.abo = icmp ne i64 %i.abn, -1
  %i.abp = icmp ne i32 %.096118.i.i.i, 0
  %or.cond136.i.i.i = and i1 %i.abp, %i.abo
  br i1 %or.cond136.i.i.i, label %PB_dpBucketCost.exit.i.i.i, label %PB_dpBucketCost.exit.thread.i.i.i

PB_dpBucketCost.exit.i.i.i:                       ; preds = %bb.aq
  %i.abq = load i64, ptr %i.abb, align 8, !tbaa !59, !noalias !57
  %i.abr = load i32, ptr %i.aas, align 4, !tbaa !65, !noalias !57
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.abf
  %i.abt = load i32, ptr %i.abs, align 4, !tbaa !65, !noalias !57
  %i.abu = sub i32 %i.abr, %i.abt
  %i.abv = zext i32 %i.abu to i64
  %i.abw = icmp ult i64 %i.abi, 2
  %i.abx = add nsw i64 %i.abi, -1
  %i.aby = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.abx, i1 true)
  %13 = sub nuw nsw i64 64, %i.aby
  %.0.i.i.i11.i.i = select i1 %i.abw, i64 0, i64 %13
  %.reass.i.reass.reass = add i64 %.0.i.i.i11.i.i, %invariant.op
  %i.abz = mul nuw nsw i64 %.reass.i.reass.reass, %i.abv
  %i.aca = add i64 %i.abz, %i.abn                 ; 2 uses
  %i.acb = icmp ult i64 %i.aca, %i.abq
  br i1 %i.acb, label %bb.ar, label %PB_dpBucketCost.exit.thread.i.i.i

bb.ar:                                            ; preds = %PB_dpBucketCost.exit.i.i.i
  store i64 %i.aca, ptr %i.abb, align 8, !tbaa !59, !noalias !57
  store i32 %i.abd, ptr %i.abc, align 4, !tbaa !65, !noalias !57
  br label %PB_dpBucketCost.exit.thread.i.i.i

PB_dpBucketCost.exit.thread.i.i.i:                ; preds = %bb.ar, %PB_dpBucketCost.exit.i.i.i, %bb.aq
  %i.acc = shl i32 %.096118.i.i.i, 1              ; 2 uses
  %i.acd = zext i32 %i.acc to i64
  %.not114.i.i.i = icmp samesign ult i64 %i.aau, %i.acd
  br i1 %.not114.i.i.i, label %._crit_edge.split.i.i.i, label %bb.ap, !llvm.loop !34

._crit_edge.split.i.i.i:                          ; preds = %PB_dpBucketCost.exit.thread.i.i.i, %bb.ap
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i.i, %umax38.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge124.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !35

.lr.ph132.i.i.i:                                  ; preds = %bb.as, %._crit_edge.i.i.i
  %.0130.i.i.i = phi i64 [ %i.aci, %bb.as ], [ %i.aap, %._crit_edge.i.i.i ] ; 2 uses
  %.095.in129.i.i.i = phi i32 [ %i.ach, %bb.as ], [ %.sroa.12.0.i, %._crit_edge.i.i.i ]
  %.095.i.i.i = zext i32 %.095.in129.i.i.i to i64
  %i.ace = mul i64 %.0130.i.i.i, %i.ig
  %i.acf = getelementptr [4 x i8], ptr %i.aal, i64 %i.ace
  %i.acg = getelementptr [4 x i8], ptr %i.acf, i64 %.095.i.i.i
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !65, !noalias !57 ; 4 uses
  %.not112.i.i.i = icmp eq i32 %i.ach, -1
  br i1 %.not112.i.i.i, label %PB_fixedPartitionFastInner.exit.thread.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph132.i.i.i
  %i.aci = add i64 %.0130.i.i.i, -1               ; 2 uses
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.aci
  store i32 %i.ach, ptr %i.acj, align 4, !tbaa !65, !noalias !57
  %.not.i9.i.i = icmp eq i32 %i.ach, 0
  br i1 %.not.i9.i.i, label %PB_fixedPartitionFastInner.exit.i, label %.lr.ph132.i.i.i, !llvm.loop !36

PB_fixedPartitionFastInner.exit.i:                ; preds = %bb.as, %PB_greedyOptimize.exit.i.thread.i
  %.0.i45.i = phi i64 [ %.sroa.33.1.i.i.i, %PB_greedyOptimize.exit.i.thread.i ], [ %i.aap, %bb.as ] ; 5 uses
  %i.ack = icmp eq i64 %.0.i45.i, 0
  br i1 %i.ack, label %PB_fixedPartitionFastInner.exit.thread.i, label %bb.at

bb.at:                                            ; preds = %PB_fixedPartitionFastInner.exit.i
  %i.acl = load i32, ptr %i.hs, align 4, !tbaa !65, !noalias !57
  %i.acm = add i64 %.0.i45.i, -1
  %i.acn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.acm, i1 false)
  %i.aco = sub nuw nsw i64 64, %i.acn
  %i.acp = zext i32 %i.acl to i64
  %i.acq = mul nuw nsw i64 %i.aco, %i.acp
  br label %bb.au

bb.au:                                            ; preds = %bb.av, %bb.at
  %.02737.i.i = phi i64 [ 0, %bb.at ], [ %i.act, %bb.av ] ; 2 uses
  %.02836.i.i = phi i64 [ %i.acq, %bb.at ], [ %i.ads, %bb.av ]
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.02737.i.i
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !65, !noalias !57 ; 2 uses
  %i.act = add nuw nsw i64 %.02737.i.i, 1         ; 3 uses
  %i.acu = icmp eq i64 %i.act, %.0.i45.i          ; 2 uses
  br i1 %i.acu, label %.cont.i, label %.else.i

.else.i:                                          ; preds = %bb.au
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.act
  %.else.val.i = load i32, ptr %i.acv, align 4, !tbaa !65, !noalias !57
  br label %.cont.i

.cont.i:                                          ; preds = %.else.i, %bb.au
  %i.acw = phi i32 [ %.sroa.12.0.i, %bb.au ], [ %.else.val.i, %.else.i ] ; 2 uses
  %i.acx = icmp ult i32 %i.acs, %i.acw
  br i1 %i.acx, label %PB_isLegalPartition.exit.i.i, label %PB_fixedPartitionFastInner.exit.thread.i

PB_isLegalPartition.exit.i.i:                     ; preds = %.cont.i
  %i.acy = zext i32 %i.acw to i64                 ; 2 uses
  %i.acz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.acy
  %i.ada = load i64, ptr %i.acz, align 8, !tbaa !59, !noalias !57
  %i.adb = zext i32 %i.acs to i64                 ; 2 uses
  %i.adc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.adb
  %i.add = load i64, ptr %i.adc, align 8, !tbaa !59, !noalias !57
  %i.ade = sub i64 %i.ada, %i.add                 ; 3 uses
  %.not35.i.i = icmp ugt i64 %i.ade, %.sroa.1867.0.i
  br i1 %.not35.i.i, label %PB_fixedPartitionFastInner.exit.thread.i, label %bb.av

bb.av:                                            ; preds = %PB_isLegalPartition.exit.i.i
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.acy
  %i.adg = load i32, ptr %i.adf, align 4, !tbaa !65, !noalias !57
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.adb
  %i.adi = load i32, ptr %i.adh, align 4, !tbaa !65, !noalias !57
  %i.adj = sub i32 %i.adg, %i.adi
  %i.adk = icmp ult i64 %i.ade, 2
  %i.adl = add nsw i64 %i.ade, -1
  %i.adm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.adl, i1 true)
  %i.adn = sub nuw nsw i64 64, %i.adm
  %i.ado = zext i32 %i.adj to i64
  %i.adp = select i1 %i.adk, i64 0, i64 %i.adn
  %i.adq = mul nuw nsw i64 %i.adp, %i.ado
  %i.adr = add i64 %.02836.i.i, 24
  %i.ads = add i64 %i.adr, %i.adq                 ; 5 uses
  br i1 %i.acu, label %PB_fixedBucketCost.exit.i, label %bb.au

PB_fixedBucketCost.exit.i:                        ; preds = %bb.av
  %i.adt = icmp eq i64 %i.ads, -1
  br i1 %i.adt, label %PB_fixedPartitionFastInner.exit.thread.i, label %bb.aw

bb.aw:                                            ; preds = %PB_fixedBucketCost.exit.i
  %i.adu = lshr i64 %i.ads, 6
  %i.adv = add i64 %i.adu, %i.ads
  %i.adw = icmp ult i64 %i.adv, %.036109.i
  br i1 %i.adw, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.adx = shl nuw nsw i64 %.0.i45.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull align 16 %i.e, i64 %i.adx, i1 false), !noalias !57
  br label %PB_fixedPartitionFastInner.exit.thread.i

PB_fixedPartitionFastInner.exit.thread.i:         ; preds = %.lr.ph132.i.i.i, %PB_isLegalPartition.exit.i.i, %.cont.i, %bb.ax, %PB_fixedBucketCost.exit.i, %PB_fixedPartitionFastInner.exit.i, %bb.an, %PB_greedyOptimize.exit.i.i
  %.239.ph.i = phi i64 [ %.037108.i, %PB_greedyOptimize.exit.i.i ], [ %.037108.i, %PB_fixedPartitionFastInner.exit.i ], [ %.0.i45.i, %bb.ax ], [ %.037108.i, %PB_fixedBucketCost.exit.i ], [ %.037108.i, %bb.an ], [ %.037108.i, %PB_isLegalPartition.exit.i.i ], [ %.037108.i, %.cont.i ], [ %.037108.i, %.lr.ph132.i.i.i ] ; 2 uses
  %.2.ph.i = phi i64 [ %.036109.i, %PB_greedyOptimize.exit.i.i ], [ %.036109.i, %PB_fixedPartitionFastInner.exit.i ], [ %i.ads, %bb.ax ], [ %.036109.i, %PB_fixedBucketCost.exit.i ], [ %.036109.i, %bb.an ], [ %.036109.i, %PB_isLegalPartition.exit.i.i ], [ %.036109.i, %.cont.i ], [ %.036109.i, %.lr.ph132.i.i.i ] ; 2 uses
  br i1 %i.ih, label %bb.r, label %bb.ay, !llvm.loop !37

bb.ay:                                            ; preds = %PB_fixedPartitionFastInner.exit.thread.i, %bb.aw
  %.037.lcssa.i = phi i64 [ %.037108.i, %bb.aw ], [ %.239.ph.i, %PB_fixedPartitionFastInner.exit.thread.i ] ; 13 uses
  %.036.lcssa.i = phi i64 [ %.036109.i, %bb.aw ], [ %.2.ph.i, %PB_fixedPartitionFastInner.exit.thread.i ] ; 2 uses
  %i.ady = icmp eq i64 %.037.lcssa.i, 0
  br i1 %i.ady, label %PB_fixedPartition.exit.thread141, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.adz = shl i64 %.037.lcssa.i, 3               ; 2 uses
  %i.aea = tail call ptr @ZL_Graph_getScratchSpace(ptr noundef %0, i64 noundef %i.adz) #8, !noalias !57 ; 23 uses
  %.not.i = icmp eq ptr %i.aea, null
  br i1 %.not.i, label %PB_fixedPartition.exit.thread141, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.az
  %xtraiter427 = and i64 %.037.lcssa.i, 3         ; 3 uses
  %i.aeb = icmp ult i64 %.037.lcssa.i, 4
  br i1 %i.aeb, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter431 = and i64 %.037.lcssa.i, -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.0111.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.afd, %.preheader.i ] ; 6 uses
  %niter432 = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter432.next.3, %.preheader.i ]
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0111.i
  %i.aed = load i32, ptr %i.aec, align 16, !tbaa !65, !noalias !57
  %i.aee = zext i32 %i.aed to i64
  %i.aef = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.aee
  %i.aeg = load i64, ptr %i.aef, align 8, !tbaa !59, !noalias !57
  %i.aeh = getelementptr inbounds nuw [8 x i8], ptr %i.aea, i64 %.0111.i
  store i64 %i.aeg, ptr %i.aeh, align 8, !tbaa !59, !noalias !57
  %i.aei = or disjoint i64 %.0111.i, 1            ; 2 uses
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aei
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !65, !noalias !57
  %i.ael = zext i32 %i.aek to i64
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.ael
  %i.aen = load i64, ptr %i.aem, align 8, !tbaa !59, !noalias !57
  %i.aeo = getelementptr inbounds nuw [8 x i8], ptr %i.aea, i64 %i.aei
  store i64 %i.aen, ptr %i.aeo, align 8, !tbaa !59, !noalias !57
  %i.aep = or disjoint i64 %.0111.i, 2            ; 2 uses
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aep
  %i.aer = load i32, ptr %i.aeq, align 8, !tbaa !65, !noalias !57
  %i.aes = zext i32 %i.aer to i64
  %i.aet = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.aes
  %i.aeu = load i64, ptr %i.aet, align 8, !tbaa !59, !noalias !57
  %i.aev = getelementptr inbounds nuw [8 x i8], ptr %i.aea, i64 %i.aep
  store i64 %i.aeu, ptr %i.aev, align 8, !tbaa !59, !noalias !57
  %i.aew = or disjoint i64 %.0111.i, 3            ; 2 uses
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aew
  %i.aey = load i32, ptr %i.aex, align 4, !tbaa !65, !noalias !57
  %i.aez = zext i32 %i.aey to i64
  %i.afa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.aez
  %i.afb = load i64, ptr %i.afa, align 8, !tbaa !59, !noalias !57
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr %i.aea, i64 %i.aew
  store i64 %i.afb, ptr %i.afc, align 8, !tbaa !59, !noalias !57
  %i.afd = add nuw nsw i64 %.0111.i, 4            ; 2 uses
  %niter432.next.3 = add nuw i64 %niter432, 4     ; 2 uses
  %niter432.ncmp.3 = icmp eq i64 %niter432.next.3, %unroll_iter431
  br i1 %niter432.ncmp.3, label %.unr-lcssa, label %.preheader.i, !llvm.loop !38

PB_fixedPartition.exit.thread141:                 ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8, !noalias !57
  br label %PB_fixedPartition.exit.thread

PB_fixedPartition.exit.thread:                    ; preds = %bb.m, %bb.l, %bb.h, %bb.g, %PB_fixedPartition.exit.thread141
  %i.afe = tail call { i32, i64 } @ZL_Edge_setDestination(ptr noundef %i.i, i32 2) #8 ; 2 uses
  %i.aff = extractvalue { i32, i64 } %i.afe, 0    ; 2 uses
  %.not128 = icmp eq i32 %i.aff, 0
  br i1 %.not128, label %bb.bn, label %bb.ba, !prof !56

bb.ba:                                            ; preds = %PB_fixedPartition.exit.thread
  %i.afg = extractvalue { i32, i64 } %i.afe, 1
  %i.afh = inttoptr i64 %i.afg to ptr
  %i.afi = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %3, i32 %i.aff, ptr %i.afh, ptr nonnull @EI_partitionBitpackDynGraph.__zl_static_error_info.10, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 949, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #8 ; 2 uses
  %i.afj = extractvalue { i32, ptr } %i.afi, 0
  %i.afk = extractvalue { i32, ptr } %i.afi, 1
  %i.afl = ptrtoint ptr %i.afk to i64
  br label %bb.bn

.unr-lcssa:                                       ; preds = %.preheader.i
  %lcmp.mod429.not = icmp eq i64 %xtraiter427, 0
  br i1 %lcmp.mod429.not, label %.epilog-lcssa, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.unr-lcssa, %.preheader.i.preheader
  %.0111.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.afd, %.unr-lcssa ]
  %lcmp.mod430 = icmp ne i64 %xtraiter427, 0
  tail call void @llvm.assume(i1 %lcmp.mod430)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.0111.i.epil = phi i64 [ %i.afs, %.preheader.i.epil ], [ %.0111.i.epil.init, %.preheader.i.epil.preheader ] ; 3 uses
  %epil.iter428 = phi i64 [ %epil.iter428.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0111.i.epil
  %i.afn = load i32, ptr %i.afm, align 4, !tbaa !65, !noalias !57
  %i.afo = zext i32 %i.afn to i64
  %i.afp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.i, i64 %i.afo
  %i.afq = load i64, ptr %i.afp, align 8, !tbaa !59, !noalias !57
  %i.afr = getelementptr inbounds nuw [8 x i8], ptr %i.aea, i64 %.0111.i.epil
  store i64 %i.afq, ptr %i.afr, align 8, !tbaa !59, !noalias !57
  %i.afs = add nuw nsw i64 %.0111.i.epil, 1
  %epil.iter428.next = add i64 %epil.iter428, 1   ; 2 uses
  %epil.iter428.cmp.not = icmp eq i64 %epil.iter428.next, %xtraiter427
  br i1 %epil.iter428.cmp.not, label %.epilog-lcssa, label %.preheader.i.epil, !llvm.loop !39

.epilog-lcssa:                                    ; preds = %.preheader.i.epil, %.unr-lcssa
  %i.aft = load i64, ptr %i.hv, align 8, !tbaa !59, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8, !noalias !57
  %i.afu = icmp ne i64 %.037.lcssa.i, 1
  %.not = icmp ult i64 %.036.lcssa.i, %i.hu
  %or.cond = select i1 %i.afu, i1 %.not, i1 false
  br i1 %or.cond, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %.epilog-lcssa
  %i.afv = shl nuw nsw i64 %i.l, 3
  %i.afw = icmp samesign ult i64 %i.hr, %i.afv
  %. = select i1 %i.afw, i32 10, i32 2
  %i.afx = tail call { i32, i64 } @ZL_Edge_setDestination(ptr noundef %i.i, i32 %.) #8 ; 2 uses
  %i.afy = extractvalue { i32, i64 } %i.afx, 0    ; 2 uses
  %.not127 = icmp eq i32 %i.afy, 0
end_hunk_2
