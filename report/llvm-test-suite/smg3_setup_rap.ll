Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/smg3_setup_rap?download=true
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.hypre_SMG3CreateRAPOp.RAP_num_ghost = private unnamed_addr constant [6 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16

; Function Attrs: nounwind uwtable
define dso_local ptr @hypre_SMG3CreateRAPOp(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const.hypre_SMG3CreateRAPOp.RAP_num_ghost, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !36
  %.not = icmp eq i32 %i.g, 0
  %i.h = icmp slt i32 %i.e, 16                    ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %.loopexit.loopexit, label %.preheader114

.loopexit.loopexit:                               ; preds = %bb.b
  %i.i = tail call ptr @hypre_CAlloc(i32 noundef 15, i32 noundef 12) #6 ; 15 uses
  store <4 x i32> <i32 0, i32 -1, i32 -1, i32 -1>, ptr %i.i, align 4, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 0>, ptr %i.j, align 4, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store <4 x i32> <i32 -1, i32 1, i32 0, i32 -1>, ptr %i.k, align 4, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store <4 x i32> <i32 0, i32 1, i32 -1, i32 0>, ptr %i.l, align 4, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i32 -1, ptr %i.m, align 4, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  store i32 0, ptr %i.n, align 4, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i32 -1, ptr %i.o, align 4, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 76
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.p, i8 0, i64 20, i1 false)
  store <4 x i32> <i32 1, i32 0, i32 0, i32 0>, ptr %i.q, align 4, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store <4 x i32> <i32 1, i32 0, i32 0, i32 -1>, ptr %i.r, align 4, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  store <4 x i32> <i32 1, i32 -1, i32 0, i32 1>, ptr %i.s, align 4, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  store <4 x i32> <i32 0, i32 0, i32 1, i32 1>, ptr %i.t, align 4, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  store <4 x i32> <i32 0, i32 1, i32 0, i32 1>, ptr %i.u, align 4, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  store i32 1, ptr %i.v, align 4, !tbaa !7
  br label %.loopexit

.preheader114:                                    ; preds = %bb.b
  %i.w = tail call ptr @hypre_CAlloc(i32 noundef 27, i32 noundef 12) #6 ; 24 uses
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 0>, ptr %i.w, align 4, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> <i32 -1, i32 -1, i32 1, i32 -1>, ptr %i.x, align 4, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store <4 x i32> <i32 -1, i32 -1, i32 0, i32 -1>, ptr %i.y, align 4, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 1>, ptr %i.z, align 4, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store <4 x i32> <i32 0, i32 -1, i32 -1, i32 1>, ptr %i.aa, align 4, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  store <4 x i32> <i32 -1, i32 0, i32 1, i32 -1>, ptr %i.ab, align 4, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  store <4 x i32> <i32 1, i32 1, i32 -1, i32 -1>, ptr %i.ac, align 4, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  store <4 x i32> <i32 -1, i32 0, i32 0, i32 -1>, ptr %i.ad, align 4, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  store <4 x i32> <i32 0, i32 1, i32 -1, i32 0>, ptr %i.ae, align 4, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  store i32 -1, ptr %i.af, align 4, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 148
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ag, i8 0, i64 20, i1 false)
  store <4 x i32> <i32 1, i32 0, i32 0, i32 -1>, ptr %i.ah, align 4, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  store <4 x i32> <i32 1, i32 0, i32 0, i32 1>, ptr %i.ai, align 4, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 200
  store <4 x i32> <i32 0, i32 1, i32 1, i32 0>, ptr %i.aj, align 4, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 216
  store <4 x i32> <i32 -1, i32 -1, i32 1, i32 0>, ptr %i.ak, align 4, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 232
  store <4 x i32> <i32 -1, i32 1, i32 1, i32 -1>, ptr %i.al, align 4, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 248
  store <4 x i32> <i32 1, i32 -1, i32 0, i32 1>, ptr %i.am, align 4, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 264
  store <4 x i32> <i32 0, i32 0, i32 1, i32 1>, ptr %i.an, align 4, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 280
  store <4 x i32> <i32 0, i32 1, i32 -1, i32 1>, ptr %i.ao, align 4, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 296
  store <4 x i32> <i32 1, i32 0, i32 1, i32 1>, ptr %i.ap, align 4, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 312
  store i32 1, ptr %i.aq, align 4, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 316
  store i32 1, ptr %i.ar, align 4, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 320
  store i32 1, ptr %i.as, align 4, !tbaa !7
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  br i1 %i.h, label %.loopexit.loopexit158, label %.split133.us.1

.loopexit.loopexit158:                            ; preds = %bb.c
  %i.at = tail call ptr @hypre_CAlloc(i32 noundef 8, i32 noundef 12) #6 ; 9 uses
  store <4 x i32> <i32 0, i32 -1, i32 -1, i32 -1>, ptr %i.at, align 4, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 0>, ptr %i.au, align 4, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store <4 x i32> <i32 -1, i32 1, i32 0, i32 -1>, ptr %i.av, align 4, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  store <4 x i32> <i32 0, i32 1, i32 -1, i32 0>, ptr %i.aw, align 4, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  store i32 -1, ptr %i.ax, align 4, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 68
  store i32 0, ptr %i.ay, align 4, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  store i32 -1, ptr %i.az, align 4, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 76
  br label %.loopexit.sink.split

.split133.us.1:                                   ; preds = %bb.c
  %i.bb = tail call ptr @hypre_CAlloc(i32 noundef 14, i32 noundef 12) #6 ; 12 uses
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 0>, ptr %i.bb, align 4, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <4 x i32> <i32 -1, i32 -1, i32 1, i32 -1>, ptr %i.bc, align 4, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store <4 x i32> <i32 -1, i32 -1, i32 0, i32 -1>, ptr %i.bd, align 4, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 1>, ptr %i.be, align 4, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  store <4 x i32> <i32 0, i32 -1, i32 -1, i32 1>, ptr %i.bf, align 4, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  store <4 x i32> <i32 -1, i32 0, i32 1, i32 -1>, ptr %i.bg, align 4, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 96
  store <4 x i32> <i32 1, i32 1, i32 -1, i32 -1>, ptr %i.bh, align 4, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 112
  store <4 x i32> <i32 -1, i32 0, i32 0, i32 -1>, ptr %i.bi, align 4, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 128
  store <4 x i32> <i32 0, i32 1, i32 -1, i32 0>, ptr %i.bj, align 4, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  store i32 -1, ptr %i.bk, align 4, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 148
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.split133.us.1, %.loopexit.loopexit158
  %.sink = phi ptr [ %i.ba, %.loopexit.loopexit158 ], [ %i.bl, %.split133.us.1 ]
  %.0110.ph = phi ptr [ %i.at, %.loopexit.loopexit158 ], [ %i.bb, %.split133.us.1 ]
  %.0109.ph = phi i32 [ 8, %.loopexit.loopexit158 ], [ 14, %.split133.us.1 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sink, i8 0, i64 20, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %.preheader114, %.loopexit.loopexit
  %.0110 = phi ptr [ %i.w, %.preheader114 ], [ %i.i, %.loopexit.loopexit ], [ %.0110.ph, %.loopexit.sink.split ]
  %.0109 = phi i32 [ 27, %.preheader114 ], [ 15, %.loopexit.loopexit ], [ %.0109.ph, %.loopexit.sink.split ]
  %i.bm = tail call ptr @hypre_StructStencilCreate(i32 noundef 3, i32 noundef %.0109, ptr noundef nonnull %.0110) #6 ; 2 uses
  %i.bn = load i32, ptr %1, align 8, !tbaa !37
  %i.bo = tail call ptr @hypre_StructMatrixCreate(i32 noundef %i.bn, ptr noundef %3, ptr noundef %i.bm) #6 ; 3 uses
  %i.bp = tail call i32 @hypre_StructStencilDestroy(ptr noundef %i.bm) #6 ; 0 uses
  %i.bq = load i32, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !36
  %.not111 = icmp eq i32 %i.bq, 0
  br i1 %.not111, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.bs, align 4, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 0, ptr %i.bu, align 4, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  %i.bv = call i32 @hypre_StructMatrixSetNumGhost(ptr noundef nonnull %i.bo, ptr noundef nonnull %i.a) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %i.bo
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @hypre_CAlloc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @hypre_StructStencilCreate(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @hypre_StructMatrixCreate(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructStencilDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructMatrixSetNumGhost(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_SMG3BuildRAPSym(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 88 uses
  %i.b = alloca [3 x i32], align 4                ; 9 uses
  %i.c = alloca [3 x i32], align 4                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !20   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !28
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.preheader2461.lr.ph, label %._crit_edge

.preheader2461.lr.ph:                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 44 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 44 uses
  %i.aa = icmp sgt i32 %i.g, 7
  %i.ab = icmp samesign ugt i32 %i.g, 15
  %i.ac = icmp samesign ugt i32 %i.g, 19
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  br label %.preheader2461

.preheader2461:                                   ; preds = %.preheader2461.lr.ph, %.loopexit2457
  %indvars.iv2816 = phi i64 [ 0, %.preheader2461.lr.ph ], [ %indvars.iv.next2817, %.loopexit2457 ] ; 5 uses
  %.021742669 = phi ptr [ undef, %.preheader2461.lr.ph ], [ %.12175, %.loopexit2457 ]
  %.021762668 = phi ptr [ undef, %.preheader2461.lr.ph ], [ %.12177, %.loopexit2457 ]
  %.021782667 = phi ptr [ undef, %.preheader2461.lr.ph ], [ %.12179, %.loopexit2457 ]
  %.021802666 = phi ptr [ undef, %.preheader2461.lr.ph ], [ %.12181, %.loopexit2457 ]
  %.021822665 = phi ptr [ undef, %.preheader2461.lr.ph ], [ %.12183, %.loopexit2457 ]
  %.021842664 = phi ptr [ undef, %.preheader2461.lr.ph ], [ %.12185, %.loopexit2457 ]
  %.021862663 = phi ptr [ undef, %.preheader2461.lr.ph ], [ %.12187, %.loopexit2457 ] ; 3 uses
  %.021882662 = phi ptr [ undef, %.preheader2461.lr.ph ], [ %.12189, %.loopexit2457 ] ; 3 uses
  %.021902661 = phi ptr [ undef, %.preheader2461.lr.ph ], [ %.12191, %.loopexit2457 ] ; 3 uses
  %.021922660 = phi ptr [ undef, %.preheader2461.lr.ph ], [ %.12193, %.loopexit2457 ] ; 3 uses
  %.021942659 = phi ptr [ undef, %.preheader2461.lr.ph ], [ %.12195, %.loopexit2457 ] ; 3 uses
  %.021962658 = phi ptr [ undef, %.preheader2461.lr.ph ], [ %.12197, %.loopexit2457 ] ; 3 uses
  %.021982657 = phi ptr [ undef, %.preheader2461.lr.ph ], [ %.121992380, %.loopexit2457 ] ; 2 uses
  %.022002656 = phi ptr [ undef, %.preheader2461.lr.ph ], [ %.122012379, %.loopexit2457 ] ; 2 uses
  %.022022655 = phi ptr [ undef, %.preheader2461.lr.ph ], [ %.122032378, %.loopexit2457 ] ; 2 uses
  %.022042654 = phi ptr [ undef, %.preheader2461.lr.ph ], [ %.122052377, %.loopexit2457 ] ; 2 uses
  %.022062653 = phi ptr [ undef, %.preheader2461.lr.ph ], [ %.1220723592371, %.loopexit2457 ]
  %.022082652 = phi ptr [ undef, %.preheader2461.lr.ph ], [ %.1220923582372, %.loopexit2457 ]
  %.022102651 = phi ptr [ undef, %.preheader2461.lr.ph ], [ %.1221123572373, %.loopexit2457 ]
  %.022122650 = phi ptr [ undef, %.preheader2461.lr.ph ], [ %.1221323562374, %.loopexit2457 ]
  %.022142649 = phi ptr [ undef, %.preheader2461.lr.ph ], [ %.1221523552375, %.loopexit2457 ]
  %.022162648 = phi ptr [ undef, %.preheader2461.lr.ph ], [ %.1221723542376, %.loopexit2457 ]
  %.022432646 = phi i64 [ 0, %.preheader2461.lr.ph ], [ %indvars.iv, %.loopexit2457 ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv2816
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader2461
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ %.022432646, %.preheader2461 ] ; 7 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !7
  %.not = icmp eq i32 %i.am, %i.ak
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !38

bb.c:                                             ; preds = %bb.b
  %i.an = trunc nsw i64 %indvars.iv to i32        ; 27 uses
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %indvars.iv2816 ; 5 uses
  %i.aq = call i32 @hypre_StructMapCoarseToFine(ptr noundef %i.ap, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %i.b) #6 ; 0 uses
  %i.ar = load ptr, ptr %i.u, align 8, !tbaa !31
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.at = getelementptr inbounds [24 x i8], ptr %i.as, i64 %indvars.iv ; 12 uses
  %i.au = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !30
  %i.aw = getelementptr inbounds [24 x i8], ptr %i.av, i64 %indvars.iv ; 10 uses
  %i.ax = load ptr, ptr %i.w, align 8, !tbaa !31
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !30
  %i.az = getelementptr inbounds [24 x i8], ptr %i.ay, i64 %indvars.iv ; 20 uses
  %i.ba = load ptr, ptr %i.x, align 8, !tbaa !31
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !30
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %indvars.iv2816 ; 20 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.bd = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %1, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 28 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 -1, ptr %i.z, align 4, !tbaa !7
  %i.be = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %1, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 16 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.bf = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %2, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 -1, ptr %i.z, align 4, !tbaa !7
  %i.bg = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %2, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.bh = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 12 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.bi = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 12 uses
  store i32 1, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.bj = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 -1, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.bk = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 12 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 1, ptr %i.y, align 4, !tbaa !7
  store i32 0, ptr %i.z, align 4, !tbaa !7
  %i.bl = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.bm = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 8 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 -1, ptr %i.z, align 4, !tbaa !7
  %i.bn = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 12 uses
  br i1 %i.aa, label %bb.d, label %.thread2360

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.bo = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 -1, ptr %i.y, align 4, !tbaa !7
  store i32 1, ptr %i.z, align 4, !tbaa !7
  %i.bp = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.an, ptr noundef nonnull %i.a) #6 ; 3 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !7
end_hunk_0
