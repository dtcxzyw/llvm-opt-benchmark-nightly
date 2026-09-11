Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v01?download=true
inline.NumInlined: 186
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FSE_DStream_t = type { i64, i32, ptr, ptr }
%struct.ZSTDv01_Dctx_s = type { [1025 x i32], [513 x i32], [1025 x i32], ptr, ptr, i64, i32, i32 }

@HUF_readDTable.l = internal unnamed_addr constant [14 x i32] [i32 1, i32 2, i32 3, i32 4, i32 7, i32 8, i32 15, i32 16, i32 31, i32 32, i32 63, i32 64, i32 127, i32 128], align 16
@ZSTD_execSequence.dec32table = internal unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 1, i32 4, i32 4, i32 4, i32 4], align 16
@ZSTD_execSequence.dec64table = internal unnamed_addr constant [8 x i32] [i32 8, i32 8, i32 8, i32 7, i32 8, i32 9, i32 10, i32 11], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @ZSTDv01_isError(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %0, -120
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @ZSTDv01_decompressDCtx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.c = icmp ult i64 %4, 7
  br i1 %i.c, label %.thread83, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %3, align 1
  %.not = icmp eq i32 %i.d, 515190781
  br i1 %.not, label %.lr.ph, label %.thread83

.lr.ph:                                           ; preds = %bb.b
  %i.e = ptrtoint ptr %i.a to i64
  %gepdiff = add i64 %4, -4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = ptrtoint ptr %i.b to i64                 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.i
  %.047112 = phi i64 [ %gepdiff, %.lr.ph ], [ %i.aj, %bb.i ] ; 2 uses
  %.049111 = phi ptr [ %1, %.lr.ph ], [ %i.ah, %bb.i ] ; 6 uses
  %.051110 = phi ptr [ %i.f, %.lr.ph ], [ %i.ai, %bb.i ] ; 4 uses
  %i.h = load i8, ptr %.051110, align 1, !tbaa !13
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = lshr i32 %i.i, 6                         ; 2 uses
  switch i32 %i.j, label %bb.d [
    i32 3, label %.thread73
    i32 2, label %bb.e
  ]

.thread73:                                        ; preds = %bb.c
  %.not61 = icmp eq i64 %.047112, 3
  br i1 %.not61, label %ZSTD_copyUncompressedBlock.exit.ZSTD_copyUncompressedBlock.exit.thread80_crit_edge, label %.thread83

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw nsw i32 %i.i, 16
  %i.l = and i32 %i.k, 458752
  %i.m = getelementptr inbounds nuw i8, ptr %.051110, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13
  %i.o = zext i8 %i.n to i32
  %i.p = or disjoint i32 %i.l, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.051110, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !13
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 8
  %i.u = or disjoint i32 %i.t, %i.p
  %i.v = zext nneg i32 %i.u to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0.i.ph = phi i64 [ %i.v, %bb.d ], [ 1, %bb.c ] ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.051110, i64 3 ; 3 uses
  %i.x = add i64 %.047112, -3                     ; 2 uses
  %i.y = icmp ugt i64 %.0.i.ph, %i.x
  br i1 %i.y, label %.thread83, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %i.j, label %.thread83 [
    i32 0, label %ZSTD_copyUncompressedBlock.exit
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.z = ptrtoint ptr %.049111 to i64             ; 2 uses
  %i.aa = sub i64 %i.g, %i.z
  %i.ab = icmp ugt i64 %.0.i.ph, %i.aa
  br i1 %i.ab, label %.thread83, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq i64 %.0.i.ph, 0
  br i1 %.not.i, label %ZSTD_copyUncompressedBlock.exit.thread80, label %ZSTD_copyUncompressedBlock.exit.thread.thread

ZSTD_copyUncompressedBlock.exit.thread.thread:    ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.049111, ptr nonnull readonly align 1 %i.w, i64 %.0.i.ph, i1 false)
  br label %bb.i

ZSTD_copyUncompressedBlock.exit:                  ; preds = %bb.f
  %i.ac = ptrtoint ptr %.049111 to i64
  %i.ad = sub i64 %i.g, %i.ac
  %i.ae = tail call fastcc i64 @ZSTD_decompressBlock(ptr noundef %0, ptr noundef %.049111, i64 noundef %i.ad, ptr noundef nonnull %i.w, i64 noundef %.0.i.ph) ; 3 uses
  %i.af = icmp eq i64 %.0.i.ph, 0
  br i1 %i.af, label %ZSTD_copyUncompressedBlock.exit.ZSTD_copyUncompressedBlock.exit.thread80_crit_edge, label %ZSTD_copyUncompressedBlock.exit.thread

ZSTD_copyUncompressedBlock.exit.ZSTD_copyUncompressedBlock.exit.thread80_crit_edge: ; preds = %ZSTD_copyUncompressedBlock.exit, %.thread73
  %.pre = ptrtoint ptr %.049111 to i64
  br label %ZSTD_copyUncompressedBlock.exit.thread80

ZSTD_copyUncompressedBlock.exit.thread:           ; preds = %ZSTD_copyUncompressedBlock.exit
  %i.ag = icmp ult i64 %i.ae, -119
  br i1 %i.ag, label %bb.i, label %.thread83

bb.i:                                             ; preds = %ZSTD_copyUncompressedBlock.exit.thread.thread, %ZSTD_copyUncompressedBlock.exit.thread
  %.179103 = phi i64 [ %.0.i.ph, %ZSTD_copyUncompressedBlock.exit.thread.thread ], [ %i.ae, %ZSTD_copyUncompressedBlock.exit.thread ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.049111, i64 %.179103
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 %.0.i.ph ; 2 uses
  %i.aj = sub i64 %i.x, %.0.i.ph
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.e, %i.ak
  %i.am = icmp ult i64 %i.al, 3
  br i1 %i.am, label %.thread83, label %bb.c

ZSTD_copyUncompressedBlock.exit.thread80:         ; preds = %bb.h, %ZSTD_copyUncompressedBlock.exit.ZSTD_copyUncompressedBlock.exit.thread80_crit_edge
  %.pre-phi = phi i64 [ %.pre, %ZSTD_copyUncompressedBlock.exit.ZSTD_copyUncompressedBlock.exit.thread80_crit_edge ], [ %i.z, %bb.h ]
  %i.an = ptrtoint ptr %1 to i64
  %i.ao = sub i64 %.pre-phi, %i.an
  br label %.thread83

.thread83:                                        ; preds = %bb.e, %bb.f, %ZSTD_copyUncompressedBlock.exit.thread, %bb.g, %bb.i, %.thread73, %bb.b, %bb.a, %ZSTD_copyUncompressedBlock.exit.thread80
  %.255 = phi i64 [ %i.ao, %ZSTD_copyUncompressedBlock.exit.thread80 ], [ -72, %bb.a ], [ -10, %bb.b ], [ -72, %.thread73 ], [ -70, %bb.g ], [ %i.ae, %ZSTD_copyUncompressedBlock.exit.thread ], [ -72, %bb.e ], [ -1, %bb.f ], [ -72, %bb.i ]
  ret i64 %.255
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_decompressBlock(ptr nofree noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = alloca [256 x i16], align 16             ; 6 uses
  %i.c = alloca [2 x i64], align 16               ; 5 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca [128 x i16], align 16             ; 12 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 6 uses
  %5 = alloca %struct.FSE_DStream_t, align 8      ; 16 uses
  %6 = alloca %struct.FSE_DStream_t, align 8      ; 9 uses
  %i.k = alloca [256 x i16], align 16             ; 7 uses
  %i.l = alloca [256 x i16], align 16             ; 8 uses
  %i.m = alloca [4097 x i32], align 16            ; 6 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 6 uses
  %i.p = alloca [256 x i8], align 16              ; 21 uses
  %i.q = alloca [17 x i32], align 16              ; 12 uses
  %i.r = alloca [4097 x i16], align 16            ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 12 uses
  %i.t = icmp ult i64 %4, 3
  br i1 %i.t, label %ZSTD_decompressSequences.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = load i8, ptr %3, align 1, !tbaa !13      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !13
  %i.x = zext i8 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  %i.ac = zext i8 %i.u to i32                     ; 2 uses
  %i.ad = shl nuw nsw i32 %i.ac, 16
  %i.ae = and i32 %i.ad, 458752
  %i.af = or disjoint i32 %i.ae, %i.x
  %i.ag = or disjoint i32 %i.af, %i.ab            ; 3 uses
  %i.ah = lshr i32 %i.ac, 6                       ; 2 uses
  switch i32 %i.ah, label %bb.c [
    i32 3, label %ZSTD_decompressSequences.exit
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.ai = zext nneg i32 %i.ag to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i.ph.i = phi i64 [ %i.ai, %bb.c ], [ 1, %bb.b ] ; 6 uses
  %i.aj = add i64 %4, -3
  %i.ak = icmp ugt i64 %.0.i.ph.i, %i.aj
  br i1 %i.ak, label %ZSTD_decompressSequences.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 3 ; 5 uses
  switch i32 %i.ah, label %default.unreachable.i [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 0, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0.i.ph.i
  br label %ZSTDv01_decodeLiteralsBlock.exit

bb.g:                                             ; preds = %bb.e
  %i.an = zext nneg i32 %i.ag to i64              ; 4 uses
  %i.ao = icmp ult i64 %2, %i.an
  br i1 %i.ao, label %ZSTD_decompressSequences.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not60.i = icmp eq i32 %i.ag, 0
  br i1 %.not60.i, label %.thread12.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = sub nsw i64 0, %i.an                    ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.s, i64 %i.ap
  %i.ar = load i8, ptr %i.al, align 1, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aq, i8 %i.ar, i64 %i.an, i1 false)
  br label %.thread12.i

.thread12.i:                                      ; preds = %bb.i, %bb.h
  %.pre-phi.i = phi i64 [ %i.ap, %bb.i ], [ 0, %bb.h ]
  %i.as = getelementptr inbounds i8, ptr %i.s, i64 %.pre-phi.i
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %ZSTDv01_decodeLiteralsBlock.exit

bb.j:                                             ; preds = %bb.e
  %i.au = icmp samesign ult i64 %.0.i.ph.i, 4
  br i1 %i.au, label %ZSTD_decompressSequences.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !13
  %i.ax = zext i8 %i.aw to i64
  %i.ay = load i8, ptr %i.al, align 1, !tbaa !13
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 8
  %i.bb = or disjoint i64 %i.ba, %i.ax
  %i.bc = lshr i8 %i.u, 3
  %i.bd = and i8 %i.bc, 7
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 16
  %i.bg = or disjoint i64 %i.bb, %i.bf            ; 5 uses
  %i.bh = icmp ugt i64 %i.bg, %2
  br i1 %i.bh, label %ZSTD_decompressSequences.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = sub nsw i64 0, %i.bg
  %i.bj = getelementptr inbounds i8, ptr %i.s, i64 %i.bi ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 5 ; 2 uses
  %i.bl = add nsw i64 %.0.i.ph.i, -2              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8194) %i.r, i8 0, i64 8194, i1 false)
  store i16 12, ptr %i.r, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 2 ; 21 uses
  %i.bn = load i8, ptr %i.bk, align 1, !tbaa !13  ; 4 uses
  %i.bo = zext i8 %i.bn to i64                    ; 12 uses
  %i.bp = icmp slt i8 %i.bn, 0
  br i1 %i.bp, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bq = icmp samesign ugt i8 %i.bn, -15
  br i1 %i.bq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr [4 x i8], ptr @HUF_readDTable.l, i64 %i.bo
  %i.bs = getelementptr i8, ptr %i.br, i64 -968
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !14
  %i.bu = sext i32 %i.bt to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.p, i8 1, i64 256, i1 false)
  br label %.loopexit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bv = add nsw i64 %i.bo, -127                 ; 5 uses
  %i.bw = add nsw i64 %i.bo, -126
  %i.bx = lshr i64 %i.bw, 1                       ; 2 uses
  %.not99.i.i.i.i = icmp samesign ult i64 %i.bx, %i.bl
  br i1 %.not99.i.i.i.i, label %iter.check, label %HUF_readDTable.exit.thread.i.i.i

iter.check:                                       ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 2)
  %i.bz = add nsw i64 %umax, -1
  %i.ca = lshr i64 %i.bz, 1
  %i.cb = add nuw i64 %i.ca, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.bv, 7
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check519 = icmp ult i64 %i.bv, 31
  br i1 %min.iters.check519, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cc = and i64 %i.cb, 12
  %n.vec = and i64 %i.cb, -16                     ; 5 uses
  %i.cd = shl i64 %n.vec, 1
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 14
  %wide.load = load <8 x i8>, ptr %i.by, align 1, !tbaa !13 ; 2 uses
  %wide.load520.a = load <8 x i8>, ptr %i.ce, align 1, !tbaa !13 ; 2 uses
  %i.cf = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.cg = lshr <8 x i8> %wide.load520.a, splat (i8 4)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ci = and <8 x i8> %wide.load, splat (i8 15)
  %i.cj = and <8 x i8> %wide.load520.a, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.cf, <8 x i8> %i.ci, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.p, align 16, !tbaa !13
  %interleaved.vec521.a = shufflevector <8 x i8> %i.cg, <8 x i8> %i.cj, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec521.a, ptr %i.ch, align 16, !tbaa !13
  %i.ck = icmp eq i64 %n.vec, 16
  br i1 %i.ck, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 30
  %wide.load.1 = load <8 x i8>, ptr %i.cl, align 1, !tbaa !13 ; 2 uses
  %wide.load520.1 = load <8 x i8>, ptr %i.cm, align 1, !tbaa !13 ; 2 uses
  %i.cn = lshr <8 x i8> %wide.load.1, splat (i8 4)
  %i.co = lshr <8 x i8> %wide.load520.1, splat (i8 4)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.cr = and <8 x i8> %wide.load.1, splat (i8 15)
  %i.cs = and <8 x i8> %wide.load520.1, splat (i8 15)
  %interleaved.vec.1 = shufflevector <8 x i8> %i.cn, <8 x i8> %i.cr, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.1, ptr %i.cp, align 16, !tbaa !13
  %interleaved.vec521.1 = shufflevector <8 x i8> %i.co, <8 x i8> %i.cs, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec521.1, ptr %i.cq, align 16, !tbaa !13
  %i.ct = icmp eq i64 %n.vec, 32
  br i1 %i.ct, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 38
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 46
  %wide.load.2 = load <8 x i8>, ptr %i.cu, align 1, !tbaa !13 ; 2 uses
  %wide.load520.2 = load <8 x i8>, ptr %i.cv, align 1, !tbaa !13 ; 2 uses
  %i.cw = lshr <8 x i8> %wide.load.2, splat (i8 4)
  %i.cx = lshr <8 x i8> %wide.load520.2, splat (i8 4)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.da = and <8 x i8> %wide.load.2, splat (i8 15)
  %i.db = and <8 x i8> %wide.load520.2, splat (i8 15)
  %interleaved.vec.2 = shufflevector <8 x i8> %i.cw, <8 x i8> %i.da, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.2, ptr %i.cy, align 16, !tbaa !13
  %interleaved.vec521.2 = shufflevector <8 x i8> %i.cx, <8 x i8> %i.db, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec521.2, ptr %i.cz, align 16, !tbaa !13
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.cb, %n.vec
end_hunk_0
begin_hunk_1_@ZSTD_decompressBlock:bb.a
    i16 3, label %bb.dq
    i16 2, label %bb.dr
  ]

bb.dm:                                            ; preds = %bb.dl
  %i.ade = getelementptr inbounds nuw i8, ptr %i.aai, i64 6
  %i.adf = load i8, ptr %i.ade, align 1, !tbaa !13
  %i.adg = zext i8 %i.adf to i64
  %i.adh = shl nuw nsw i64 %i.adg, 48
  %i.adi = or disjoint i64 %i.adh, %i.add
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.adj = phi i64 [ %i.adi, %bb.dm ], [ %i.add, %bb.dl ]
  %i.adk = getelementptr inbounds nuw i8, ptr %i.aai, i64 5
  %i.adl = load i8, ptr %i.adk, align 1, !tbaa !13
  %i.adm = zext i8 %i.adl to i64
  %i.adn = shl nuw nsw i64 %i.adm, 40
  %i.ado = add nuw nsw i64 %i.adn, %i.adj
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dl
  %i.adp = phi i64 [ %i.ado, %bb.dn ], [ %i.add, %bb.dl ]
  %i.adq = getelementptr inbounds nuw i8, ptr %i.aai, i64 4
  %i.adr = load i8, ptr %i.adq, align 1, !tbaa !13
  %i.ads = zext i8 %i.adr to i64
  %i.adt = shl nuw nsw i64 %i.ads, 32
  %i.adu = add nuw nsw i64 %i.adt, %i.adp
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dl
  %i.adv = phi i64 [ %i.adu, %bb.do ], [ %i.add, %bb.dl ]
  %i.adw = getelementptr inbounds nuw i8, ptr %i.aai, i64 3
  %i.adx = load i8, ptr %i.adw, align 1, !tbaa !13
  %i.ady = zext i8 %i.adx to i64
  %i.adz = shl nuw nsw i64 %i.ady, 24
  %i.aea = add nuw nsw i64 %i.adz, %i.adv
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.dl
  %i.aeb = phi i64 [ %i.aea, %bb.dp ], [ %i.add, %bb.dl ]
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aai, i64 2
  %i.aed = load i8, ptr %i.aec, align 1, !tbaa !13
  %i.aee = zext i8 %i.aed to i64
  %i.aef = shl nuw nsw i64 %i.aee, 16
  %i.aeg = add nuw nsw i64 %i.aef, %i.aeb
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dl
  %i.aeh = phi i64 [ %i.aeg, %bb.dq ], [ %i.add, %bb.dl ]
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aai, i64 1
  %i.aej = load i8, ptr %i.aei, align 1, !tbaa !13
  %i.aek = zext i8 %i.aej to i64
  %i.ael = shl nuw nsw i64 %i.aek, 8
  %i.aem = add nuw nsw i64 %i.ael, %i.aeh
  store i64 %i.aem, ptr %5, align 8, !tbaa !31
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dl
  %i.aen = getelementptr i8, ptr %i.aaj, i64 -1
  %i.aeo = load i8, ptr %i.aen, align 1, !tbaa !13 ; 2 uses
  %i.aep = icmp eq i8 %i.aeo, 0
  br i1 %i.aep, label %HUF_decompress.exit.thread257.i.i, label %.thread48.i124.i.i.i.i

.thread48.i124.i.i.i.i:                           ; preds = %bb.ds
  %i.aeq = zext i8 %i.aeo to i32
  %i.aer = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aeq, i1 true)
  %i.aes = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aet = shl nuw nsw i16 %.val122.i.i.i.i, 3
  %i.aeu = zext nneg i16 %i.aet to i32
  %reass.sub135 = sub nsw i32 %i.aer, %i.aeu
  %i.aev = add nsw i32 %reass.sub135, 41
  store i32 %i.aev, ptr %i.aes, align 8, !tbaa !32
  br label %bb.dt

bb.dt:                                            ; preds = %.thread48.i124.i.i.i.i, %.thread.i127.i.i.i.i
  %i.aew = icmp eq i16 %.val.i.i.i.i, 0
  br i1 %i.aew, label %HUF_decompress.exit.thread257.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.aex = icmp ugt i16 %.val.i.i.i.i, 7
  br i1 %i.aex, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.aey = getelementptr i8, ptr %i.aak, i64 -1
  %i.aez = load i8, ptr %i.aey, align 1, !tbaa !13 ; 2 uses
  %i.afa = icmp eq i8 %i.aez, 0
  br i1 %i.afa, label %HUF_decompress.exit.thread257.i.i, label %.thread.i132.i.i.i.i

.thread.i132.i.i.i.i:                             ; preds = %bb.dv
  %i.afb = getelementptr inbounds i8, ptr %i.aak, i64 -8 ; 2 uses
  %.val.i131.i.i.i.i = load i64, ptr %i.afb, align 1
  %i.afc = zext i8 %i.aez to i32
  %i.afd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.afc, i1 true)
  %i.afe = xor i32 %i.afd, 31
  %i.aff = sub nuw nsw i32 8, %i.afe
  br label %bb.ee

bb.dw:                                            ; preds = %bb.du
  %i.afg = load i8, ptr %i.aaj, align 1, !tbaa !13
  %i.afh = zext i8 %i.afg to i64                  ; 7 uses
  switch i16 %.val.i.i.i.i, label %bb.ed [
    i16 7, label %bb.dx
    i16 6, label %bb.dy
    i16 5, label %bb.dz
    i16 4, label %bb.ea
    i16 3, label %bb.eb
    i16 2, label %bb.ec
  ]

bb.dx:                                            ; preds = %bb.dw
  %i.afi = getelementptr inbounds nuw i8, ptr %i.aaj, i64 6
  %i.afj = load i8, ptr %i.afi, align 1, !tbaa !13
  %i.afk = zext i8 %i.afj to i64
  %i.afl = shl nuw nsw i64 %i.afk, 48
  %i.afm = or disjoint i64 %i.afl, %i.afh
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.afn = phi i64 [ %i.afm, %bb.dx ], [ %i.afh, %bb.dw ]
  %i.afo = getelementptr inbounds nuw i8, ptr %i.aaj, i64 5
  %i.afp = load i8, ptr %i.afo, align 1, !tbaa !13
  %i.afq = zext i8 %i.afp to i64
  %i.afr = shl nuw nsw i64 %i.afq, 40
  %i.afs = add nuw nsw i64 %i.afr, %i.afn
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dw
  %i.aft = phi i64 [ %i.afs, %bb.dy ], [ %i.afh, %bb.dw ]
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aaj, i64 4
  %i.afv = load i8, ptr %i.afu, align 1, !tbaa !13
  %i.afw = zext i8 %i.afv to i64
  %i.afx = shl nuw nsw i64 %i.afw, 32
  %i.afy = add nuw nsw i64 %i.afx, %i.aft
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dw
  %i.afz = phi i64 [ %i.afy, %bb.dz ], [ %i.afh, %bb.dw ]
  %i.aga = getelementptr inbounds nuw i8, ptr %i.aaj, i64 3
  %i.agb = load i8, ptr %i.aga, align 1, !tbaa !13
  %i.agc = zext i8 %i.agb to i64
  %i.agd = shl nuw nsw i64 %i.agc, 24
  %i.age = add nuw nsw i64 %i.agd, %i.afz
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dw
  %i.agf = phi i64 [ %i.age, %bb.ea ], [ %i.afh, %bb.dw ]
  %i.agg = getelementptr inbounds nuw i8, ptr %i.aaj, i64 2
  %i.agh = load i8, ptr %i.agg, align 1, !tbaa !13
  %i.agi = zext i8 %i.agh to i64
  %i.agj = shl nuw nsw i64 %i.agi, 16
  %i.agk = add nuw nsw i64 %i.agj, %i.agf
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.dw
  %i.agl = phi i64 [ %i.agk, %bb.eb ], [ %i.afh, %bb.dw ]
  %i.agm = getelementptr inbounds nuw i8, ptr %i.aaj, i64 1
  %i.agn = load i8, ptr %i.agm, align 1, !tbaa !13
  %i.ago = zext i8 %i.agn to i64
  %i.agp = shl nuw nsw i64 %i.ago, 8
  %i.agq = add nuw nsw i64 %i.agp, %i.agl
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.dw
  %.sroa.0209.1.i.i.i.i = phi i64 [ %i.afh, %bb.dw ], [ %i.agq, %bb.ec ]
  %i.agr = getelementptr i8, ptr %i.aak, i64 -1
  %i.ags = load i8, ptr %i.agr, align 1, !tbaa !13 ; 2 uses
  %i.agt = icmp eq i8 %i.ags, 0
  br i1 %i.agt, label %HUF_decompress.exit.thread257.i.i, label %.thread48.i129.i.i.i.i

.thread48.i129.i.i.i.i:                           ; preds = %bb.ed
  %i.agu = zext i8 %i.ags to i32
  %i.agv = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.agu, i1 true)
  %i.agw = shl nuw nsw i16 %.val.i.i.i.i, 3
  %i.agx = zext nneg i16 %i.agw to i32
  %reass.sub136 = sub nsw i32 %i.agv, %i.agx
  %i.agy = add nsw i32 %reass.sub136, 41
  br label %bb.ee

bb.ee:                                            ; preds = %.thread48.i129.i.i.i.i, %.thread.i132.i.i.i.i
  %.sroa.29217.1.i.i.i.i = phi ptr [ %i.afb, %.thread.i132.i.i.i.i ], [ %i.aaj, %.thread48.i129.i.i.i.i ]
  %.sroa.16.1.i.i.i.i = phi i32 [ %i.aff, %.thread.i132.i.i.i.i ], [ %i.agy, %.thread48.i129.i.i.i.i ]
  %.sroa.0209.2.i.i.i.i = phi i64 [ %.val.i131.i.i.i.i, %.thread.i132.i.i.i.i ], [ %.sroa.0209.1.i.i.i.i, %.thread48.i129.i.i.i.i ]
  %i.agz = call fastcc i64 @FSE_initDStream(ptr noundef %6, ptr noundef nonnull %i.aak, i64 noundef %i.aag)
  %i.aha = icmp ult i64 %i.agz, -7
  br i1 %i.aha, label %bb.ef, label %HUF_decompress.exit.thread257.i.i

bb.ef:                                            ; preds = %bb.ee
  %i.ahb = call fastcc i32 @FSE_reloadDStream(ptr noundef %5) ; 2 uses
  %i.ahc = icmp samesign ult i32 %i.ahb, 2
  %i.ahd = icmp ult ptr %i.bj, %i.zw
  %i.ahe = select i1 %i.ahc, i1 %i.ahd, i1 false
  br i1 %i.ahe, label %.lr.ph.i23.i.i.i, label %._crit_edge.i21.i.i.i

.lr.ph.i23.i.i.i:                                 ; preds = %bb.ef
  %.promoted261.i.i.i.i = load i64, ptr %6, align 8
  %.promoted.i.i.i.i = load i64, ptr %5, align 8
  %i.ahf = sub nsw i32 0, %i.zx
  %i.ahg = and i32 %i.ahf, 63
  %i.ahh = zext nneg i32 %i.ahg to i64            ; 16 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.aaj, i64 8
  %i.ahm = ptrtoint ptr %i.aaj to i64
  %i.ahn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ahp = load ptr, ptr %i.aho, align 8          ; 3 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahp, i64 8
  %i.ahr = ptrtoint ptr %i.ahp to i64
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.zr, i64 14
  %i.aht = ptrtoint ptr %i.aah to i64
  %.promoted277.i.i.i.i = load i32, ptr %i.ahi, align 8, !tbaa !32
  %.promoted280.i.i.i.i = load i32, ptr %i.ahj, align 8, !tbaa !32
  %.promoted283.i.i.i.i = load ptr, ptr %i.ahk, align 8
  %.promoted284.i.i.i.i = load ptr, ptr %i.ahn, align 8
  %i.ahu = load ptr, ptr %i.acr, align 8          ; 3 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 8
  %i.ahw = ptrtoint ptr %i.ahu to i64
  br label %bb.eg

bb.eg:                                            ; preds = %FSE_reloadDStream.exit192.i.i.i.i, %.lr.ph.i23.i.i.i
  %i.ahx = phi ptr [ %.promoted284.i.i.i.i, %.lr.ph.i23.i.i.i ], [ %10, %FSE_reloadDStream.exit192.i.i.i.i ] ; 5 uses
  %i.ahy = phi ptr [ %.promoted283.i.i.i.i, %.lr.ph.i23.i.i.i ], [ %8, %FSE_reloadDStream.exit192.i.i.i.i ] ; 5 uses
  %.val7.i140282.i.i.i.i = phi i32 [ %.promoted280.i.i.i.i, %.lr.ph.i23.i.i.i ], [ %.val7.i140281.i.i.i.i, %FSE_reloadDStream.exit192.i.i.i.i ] ; 2 uses
  %.val7.i136279.i.i.i.i = phi i32 [ %.promoted277.i.i.i.i, %.lr.ph.i23.i.i.i ], [ %.val7.i136278.i.i.i.i, %FSE_reloadDStream.exit192.i.i.i.i ] ; 2 uses
  %.0112272.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i23.i.i.i ], [ %i.aos, %FSE_reloadDStream.exit192.i.i.i.i ] ; 17 uses
  %.sroa.0209.0271.i.i.i.i = phi i64 [ %.sroa.0209.2.i.i.i.i, %.lr.ph.i23.i.i.i ], [ %.sroa.0209.3.i.i.i.i, %FSE_reloadDStream.exit192.i.i.i.i ] ; 6 uses
  %.sroa.16.0270.i.i.i.i = phi i32 [ %.sroa.16.1.i.i.i.i, %.lr.ph.i23.i.i.i ], [ %.sroa.16.2.i.i.i.i, %FSE_reloadDStream.exit192.i.i.i.i ] ; 2 uses
  %.sroa.31228.0269.i.i.i.i = phi ptr [ %.sroa.31228.1.i.i.i.i, %.lr.ph.i23.i.i.i ], [ %.sroa.31228.2.i.i.i.i, %FSE_reloadDStream.exit192.i.i.i.i ] ; 7 uses
  %.sroa.29217.0268.i.i.i.i = phi ptr [ %.sroa.29217.1.i.i.i.i, %.lr.ph.i23.i.i.i ], [ %.sroa.29217.2.i.i.i.i, %FSE_reloadDStream.exit192.i.i.i.i ] ; 7 uses
  %.sroa.0218.0267.i.i.i.i = phi i64 [ %.sroa.0218.2.i.i.i.i, %.lr.ph.i23.i.i.i ], [ %.sroa.0218.3.i.i.i.i, %FSE_reloadDStream.exit192.i.i.i.i ] ; 6 uses
  %.sroa.17.0266.i.i.i.i = phi i32 [ %.sroa.17.1.i.i.i.i, %.lr.ph.i23.i.i.i ], [ %.sroa.17.2.i.i.i.i, %FSE_reloadDStream.exit192.i.i.i.i ] ; 2 uses
  %.val.i165260265.i.i.i.i = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.i23.i.i.i ], [ %.val.i165259.i.i.i.i, %FSE_reloadDStream.exit192.i.i.i.i ] ; 5 uses
  %.val.i180263264.i.i.i.i = phi i64 [ %.promoted261.i.i.i.i, %.lr.ph.i23.i.i.i ], [ %.val.i180262.i.i.i.i, %FSE_reloadDStream.exit192.i.i.i.i ] ; 5 uses
  %i.ahz = and i32 %.sroa.17.0266.i.i.i.i, 63
  %i.aia = zext nneg i32 %i.ahz to i64
  %i.aib = shl i64 %.sroa.0218.0267.i.i.i.i, %i.aia
  %i.aic = lshr i64 %i.aib, %i.ahh
  %i.aid = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.aic ; 2 uses
  %i.aie = load i8, ptr %i.aid, align 2, !tbaa !57
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aid, i64 1
  %i.aig = load i8, ptr %i.aif, align 1, !tbaa !58
  %i.aih = zext i8 %i.aig to i32
  %i.aii = add i32 %.sroa.17.0266.i.i.i.i, %i.aih ; 2 uses
  store i8 %i.aie, ptr %.0112272.i.i.i.i, align 1, !tbaa !13
  %i.aij = and i32 %.val7.i136279.i.i.i.i, 63
  %i.aik = zext nneg i32 %i.aij to i64
  %i.ail = shl i64 %.val.i165260265.i.i.i.i, %i.aik
  %i.aim = lshr i64 %i.ail, %i.ahh
  %i.ain = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.aim ; 2 uses
  %i.aio = load i8, ptr %i.ain, align 2, !tbaa !57
  %i.aip = getelementptr inbounds nuw i8, ptr %i.ain, i64 1
  %i.aiq = load i8, ptr %i.aip, align 1, !tbaa !58
  %i.air = zext i8 %i.aiq to i32
  %i.ais = add i32 %.val7.i136279.i.i.i.i, %i.air ; 2 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 1
  store i8 %i.aio, ptr %i.ait, align 1, !tbaa !13
  %i.aiu = and i32 %.sroa.16.0270.i.i.i.i, 63
  %i.aiv = zext nneg i32 %i.aiu to i64
  %i.aiw = shl i64 %.sroa.0209.0271.i.i.i.i, %i.aiv
  %i.aix = lshr i64 %i.aiw, %i.ahh
  %i.aiy = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.aix ; 2 uses
  %i.aiz = load i8, ptr %i.aiy, align 2, !tbaa !57
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiy, i64 1
  %i.ajb = load i8, ptr %i.aja, align 1, !tbaa !58
  %i.ajc = zext i8 %i.ajb to i32
  %i.ajd = add i32 %.sroa.16.0270.i.i.i.i, %i.ajc ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 2
  store i8 %i.aiz, ptr %i.aje, align 1, !tbaa !13
  %i.ajf = and i32 %.val7.i140282.i.i.i.i, 63
  %i.ajg = zext nneg i32 %i.ajf to i64
  %i.ajh = shl i64 %.val.i180263264.i.i.i.i, %i.ajg
  %i.aji = lshr i64 %i.ajh, %i.ahh
  %i.ajj = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.aji ; 2 uses
  %i.ajk = load i8, ptr %i.ajj, align 2, !tbaa !57
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajj, i64 1
  %i.ajm = load i8, ptr %i.ajl, align 1, !tbaa !58
  %i.ajn = zext i8 %i.ajm to i32
  %i.ajo = add i32 %.val7.i140282.i.i.i.i, %i.ajn ; 2 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 3
  store i8 %i.ajk, ptr %i.ajp, align 1, !tbaa !13
  %i.ajq = and i32 %i.aii, 63
  %i.ajr = zext nneg i32 %i.ajq to i64
  %i.ajs = shl i64 %.sroa.0218.0267.i.i.i.i, %i.ajr
  %i.ajt = lshr i64 %i.ajs, %i.ahh
  %i.aju = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.ajt ; 2 uses
  %i.ajv = load i8, ptr %i.aju, align 2, !tbaa !57
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.aju, i64 1
  %i.ajx = load i8, ptr %i.ajw, align 1, !tbaa !58
  %i.ajy = zext i8 %i.ajx to i32
  %i.ajz = add i32 %i.aii, %i.ajy                 ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 4
  store i8 %i.ajv, ptr %i.aka, align 1, !tbaa !13
  %i.akb = and i32 %i.ais, 63
  %i.akc = zext nneg i32 %i.akb to i64
  %i.akd = shl i64 %.val.i165260265.i.i.i.i, %i.akc
  %i.ake = lshr i64 %i.akd, %i.ahh
  %i.akf = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.ake ; 2 uses
  %i.akg = load i8, ptr %i.akf, align 2, !tbaa !57
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akf, i64 1
  %i.aki = load i8, ptr %i.akh, align 1, !tbaa !58
  %i.akj = zext i8 %i.aki to i32
  %i.akk = add i32 %i.ais, %i.akj                 ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 5
  store i8 %i.akg, ptr %i.akl, align 1, !tbaa !13
  %i.akm = and i32 %i.ajd, 63
  %i.akn = zext nneg i32 %i.akm to i64
  %i.ako = shl i64 %.sroa.0209.0271.i.i.i.i, %i.akn
  %i.akp = lshr i64 %i.ako, %i.ahh
  %i.akq = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.akp ; 2 uses
  %i.akr = load i8, ptr %i.akq, align 2, !tbaa !57
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akq, i64 1
  %i.akt = load i8, ptr %i.aks, align 1, !tbaa !58
  %i.aku = zext i8 %i.akt to i32
  %i.akv = add i32 %i.ajd, %i.aku                 ; 2 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 6
  store i8 %i.akr, ptr %i.akw, align 1, !tbaa !13
  %i.akx = and i32 %i.ajo, 63
  %i.aky = zext nneg i32 %i.akx to i64
  %i.akz = shl i64 %.val.i180263264.i.i.i.i, %i.aky
  %i.ala = lshr i64 %i.akz, %i.ahh
  %i.alb = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.ala ; 2 uses
  %i.alc = load i8, ptr %i.alb, align 2, !tbaa !57
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alb, i64 1
  %i.ale = load i8, ptr %i.ald, align 1, !tbaa !58
  %i.alf = zext i8 %i.ale to i32
  %i.alg = add i32 %i.ajo, %i.alf                 ; 2 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 7
  store i8 %i.alc, ptr %i.alh, align 1, !tbaa !13
  %i.ali = and i32 %i.ajz, 63
  %i.alj = zext nneg i32 %i.ali to i64
  %i.alk = shl i64 %.sroa.0218.0267.i.i.i.i, %i.alj
  %i.all = lshr i64 %i.alk, %i.ahh
  %i.alm = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.all ; 2 uses
  %i.aln = load i8, ptr %i.alm, align 2, !tbaa !57
  %i.alo = getelementptr inbounds nuw i8, ptr %i.alm, i64 1
  %i.alp = load i8, ptr %i.alo, align 1, !tbaa !58
  %i.alq = zext i8 %i.alp to i32
  %i.alr = add i32 %i.ajz, %i.alq                 ; 2 uses
  %i.als = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 8
  store i8 %i.aln, ptr %i.als, align 1, !tbaa !13
  %i.alt = and i32 %i.akk, 63
  %i.alu = zext nneg i32 %i.alt to i64
  %i.alv = shl i64 %.val.i165260265.i.i.i.i, %i.alu
  %i.alw = lshr i64 %i.alv, %i.ahh
  %i.alx = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.alw ; 2 uses
  %i.aly = load i8, ptr %i.alx, align 2, !tbaa !57
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alx, i64 1
  %i.ama = load i8, ptr %i.alz, align 1, !tbaa !58
  %i.amb = zext i8 %i.ama to i32
  %i.amc = add i32 %i.akk, %i.amb                 ; 2 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 9
  store i8 %i.aly, ptr %i.amd, align 1, !tbaa !13
  %i.ame = and i32 %i.akv, 63
  %i.amf = zext nneg i32 %i.ame to i64
  %i.amg = shl i64 %.sroa.0209.0271.i.i.i.i, %i.amf
  %i.amh = lshr i64 %i.amg, %i.ahh
  %i.ami = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.amh ; 2 uses
  %i.amj = load i8, ptr %i.ami, align 2, !tbaa !57
  %i.amk = getelementptr inbounds nuw i8, ptr %i.ami, i64 1
  %i.aml = load i8, ptr %i.amk, align 1, !tbaa !58
  %i.amm = zext i8 %i.aml to i32
  %i.amn = add i32 %i.akv, %i.amm                 ; 2 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 10
  store i8 %i.amj, ptr %i.amo, align 1, !tbaa !13
  %i.amp = and i32 %i.alg, 63
  %i.amq = zext nneg i32 %i.amp to i64
  %i.amr = shl i64 %.val.i180263264.i.i.i.i, %i.amq
  %i.ams = lshr i64 %i.amr, %i.ahh
  %i.amt = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.ams ; 2 uses
  %i.amu = load i8, ptr %i.amt, align 2, !tbaa !57
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amt, i64 1
  %i.amw = load i8, ptr %i.amv, align 1, !tbaa !58
  %i.amx = zext i8 %i.amw to i32
  %i.amy = add i32 %i.alg, %i.amx                 ; 2 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 11
  store i8 %i.amu, ptr %i.amz, align 1, !tbaa !13
  %i.ana = and i32 %i.alr, 63
  %i.anb = zext nneg i32 %i.ana to i64
  %i.anc = shl i64 %.sroa.0218.0267.i.i.i.i, %i.anb
  %i.and = lshr i64 %i.anc, %i.ahh
  %i.ane = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.and ; 2 uses
  %i.anf = load i8, ptr %i.ane, align 2, !tbaa !57
  %i.ang = getelementptr inbounds nuw i8, ptr %i.ane, i64 1
  %i.anh = load i8, ptr %i.ang, align 1, !tbaa !58
  %i.ani = zext i8 %i.anh to i32
  %i.anj = add i32 %i.alr, %i.ani                 ; 7 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 12
  store i8 %i.anf, ptr %i.ank, align 1, !tbaa !13
  %i.anl = and i32 %i.amc, 63
  %i.anm = zext nneg i32 %i.anl to i64
  %i.ann = shl i64 %.val.i165260265.i.i.i.i, %i.anm
  %i.ano = lshr i64 %i.ann, %i.ahh
  %i.anp = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.ano ; 2 uses
  %i.anq = load i8, ptr %i.anp, align 2, !tbaa !57
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anp, i64 1
  %i.ans = load i8, ptr %i.anr, align 1, !tbaa !58
  %i.ant = zext i8 %i.ans to i32
  %i.anu = add i32 %i.amc, %i.ant                 ; 6 uses
  store i32 %i.anu, ptr %i.ahi, align 8, !tbaa !32
  %i.anv = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 13
  store i8 %i.anq, ptr %i.anv, align 1, !tbaa !13
  %i.anw = and i32 %i.amn, 63
  %i.anx = zext nneg i32 %i.anw to i64
  %i.any = shl i64 %.sroa.0209.0271.i.i.i.i, %i.anx
  %i.anz = lshr i64 %i.any, %i.ahh
  %i.aoa = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.anz ; 2 uses
  %i.aob = load i8, ptr %i.aoa, align 2, !tbaa !57
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aoa, i64 1
  %i.aod = load i8, ptr %i.aoc, align 1, !tbaa !58
  %i.aoe = zext i8 %i.aod to i32
  %i.aof = add i32 %i.amn, %i.aoe                 ; 8 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 14
  store i8 %i.aob, ptr %i.aog, align 1, !tbaa !13
  %i.aoh = and i32 %i.amy, 63
  %i.aoi = zext nneg i32 %i.aoh to i64
  %i.aoj = shl i64 %.val.i180263264.i.i.i.i, %i.aoi
  %i.aok = lshr i64 %i.aoj, %i.ahh
  %i.aol = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.aok ; 2 uses
  %i.aom = load i8, ptr %i.aol, align 2, !tbaa !57
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aol, i64 1
  %i.aoo = load i8, ptr %i.aon, align 1, !tbaa !58
  %i.aop = zext i8 %i.aoo to i32
  %i.aoq = add i32 %i.amy, %i.aop                 ; 6 uses
  store i32 %i.aoq, ptr %i.ahj, align 8, !tbaa !32
  %i.aor = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 15
  store i8 %i.aom, ptr %i.aor, align 1, !tbaa !13
  %i.aos = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 16 ; 3 uses
  %i.aot = icmp ugt i32 %i.anu, 64
  br i1 %i.aot, label %FSE_reloadDStream.exit.i.i.i.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %.not.i.i.i.i.i = icmp ult ptr %i.ahy, %i.ahv
  %i.aou = lshr i32 %i.anu, 3                     ; 2 uses
  %i.aov = zext nneg i32 %i.aou to i64
  %i.aow = sub nsw i64 0, %i.aov
  %i.aox = getelementptr inbounds i8, ptr %i.ahy, i64 %i.aow ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %7 = and i32 %i.anu, 7
  br label %FSE_reloadDStream.exit.sink.split.i.i.i.i

bb.ej:                                            ; preds = %bb.eh
  %i.aoy = icmp ult ptr %i.aox, %i.ahu            ; 2 uses
  %i.aoz = ptrtoint ptr %i.ahy to i64
  %i.apa = sub i64 %i.aoz, %i.ahw
  %i.apb = trunc i64 %i.apa to i32
  %.024.i.i.i.i.i = select i1 %i.aoy, i32 %i.apb, i32 %i.aou ; 2 uses
  %.0.i.i24.i.i.i = zext i1 %i.aoy to i32
  %i.apc = zext i32 %.024.i.i.i.i.i to i64
  %i.apd = sub nsw i64 0, %i.apc
  %i.ape = getelementptr inbounds i8, ptr %i.ahy, i64 %i.apd
  %i.apf = shl i32 %.024.i.i.i.i.i, 3
  %i.apg = sub i32 %i.anu, %i.apf
  br label %FSE_reloadDStream.exit.sink.split.i.i.i.i

FSE_reloadDStream.exit.sink.split.i.i.i.i:        ; preds = %bb.ej, %bb.ei
  %.sink.i.i.i = phi ptr [ %i.ape, %bb.ej ], [ %i.aox, %bb.ei ] ; 3 uses
  %.val7.i136278.ph.i.i.i.i = phi i32 [ %i.apg, %bb.ej ], [ %7, %bb.ei ] ; 2 uses
  %.025.i.ph.i.i.i.i = phi i32 [ %.0.i.i24.i.i.i, %bb.ej ], [ 0, %bb.ei ]
  store ptr %.sink.i.i.i, ptr %i.ahk, align 8, !tbaa !30
  store i32 %.val7.i136278.ph.i.i.i.i, ptr %i.ahi, align 8, !tbaa !32
  %.val30.i.sink.i.i.i.i = load i64, ptr %.sink.i.i.i, align 1 ; 2 uses
  store i64 %.val30.i.sink.i.i.i.i, ptr %5, align 8, !tbaa !31
  br label %FSE_reloadDStream.exit.i.i.i.i

FSE_reloadDStream.exit.i.i.i.i:                   ; preds = %FSE_reloadDStream.exit.sink.split.i.i.i.i, %bb.eg
  %8 = phi ptr [ %i.ahy, %bb.eg ], [ %.sink.i.i.i, %FSE_reloadDStream.exit.sink.split.i.i.i.i ]
  %.val7.i136278.i.i.i.i = phi i32 [ %i.anu, %bb.eg ], [ %.val7.i136278.ph.i.i.i.i, %FSE_reloadDStream.exit.sink.split.i.i.i.i ]
  %.val.i165259.i.i.i.i = phi i64 [ %.val.i165260265.i.i.i.i, %bb.eg ], [ %.val30.i.sink.i.i.i.i, %FSE_reloadDStream.exit.sink.split.i.i.i.i ]
  %.025.i.i.i.i.i = phi i32 [ 3, %bb.eg ], [ %.025.i.ph.i.i.i.i, %FSE_reloadDStream.exit.sink.split.i.i.i.i ]
  %i.aph = icmp ugt i32 %i.aof, 64
  br i1 %i.aph, label %FSE_reloadDStream.exit174.i.i.i.i, label %bb.ek

bb.ek:                                            ; preds = %FSE_reloadDStream.exit.i.i.i.i
  %.not.i166.i.i.i.i = icmp ult ptr %.sroa.29217.0268.i.i.i.i, %i.ahl
  br i1 %.not.i166.i.i.i.i, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.api = lshr i32 %i.aof, 3
  %i.apj = zext nneg i32 %i.api to i64
  %i.apk = sub nsw i64 0, %i.apj
  %i.apl = getelementptr inbounds i8, ptr %.sroa.29217.0268.i.i.i.i, i64 %i.apk ; 2 uses
  %i.apm = and i32 %i.aof, 7
  %.val30.i167.i.i.i.i = load i64, ptr %i.apl, align 1
  br label %FSE_reloadDStream.exit174.i.i.i.i

bb.em:                                            ; preds = %bb.ek
  %i.apn = icmp eq ptr %.sroa.29217.0268.i.i.i.i, %i.aaj
  br i1 %i.apn, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %.not29.i172.i.i.i.i = icmp eq i32 %i.aof, 64
  %..i173.i.i.i.i = select i1 %.not29.i172.i.i.i.i, i32 2, i32 1
  br label %FSE_reloadDStream.exit174.i.i.i.i

bb.eo:                                            ; preds = %bb.em
  %i.apo = lshr i32 %i.aof, 3                     ; 2 uses
  %i.app = zext nneg i32 %i.apo to i64
  %i.apq = sub nsw i64 0, %i.app
  %i.apr = getelementptr inbounds i8, ptr %.sroa.29217.0268.i.i.i.i, i64 %i.apq
  %i.aps = icmp ult ptr %i.apr, %i.aaj            ; 2 uses
  %i.apt = ptrtoint ptr %.sroa.29217.0268.i.i.i.i to i64
  %i.apu = sub i64 %i.apt, %i.ahm
  %i.apv = trunc i64 %i.apu to i32
  %.024.i169.i.i.i.i = select i1 %i.aps, i32 %i.apv, i32 %i.apo ; 2 uses
  %.0.i170.i.i.i.i = zext i1 %i.aps to i32
  %i.apw = zext i32 %.024.i169.i.i.i.i to i64
  %i.apx = sub nsw i64 0, %i.apw
  %i.apy = getelementptr inbounds i8, ptr %.sroa.29217.0268.i.i.i.i, i64 %i.apx ; 2 uses
  %i.apz = shl i32 %.024.i169.i.i.i.i, 3
  %i.aqa = sub i32 %i.aof, %i.apz
  %.val.i171.i.i.i.i = load i64, ptr %i.apy, align 1
  br label %FSE_reloadDStream.exit174.i.i.i.i

FSE_reloadDStream.exit174.i.i.i.i:                ; preds = %bb.eo, %bb.en, %bb.el, %FSE_reloadDStream.exit.i.i.i.i
  %.sroa.29217.2.i.i.i.i = phi ptr [ %.sroa.29217.0268.i.i.i.i, %FSE_reloadDStream.exit.i.i.i.i ], [ %i.aaj, %bb.en ], [ %i.apy, %bb.eo ], [ %i.apl, %bb.el ]
  %.sroa.16.2.i.i.i.i = phi i32 [ %i.aof, %FSE_reloadDStream.exit.i.i.i.i ], [ %i.aof, %bb.en ], [ %i.aqa, %bb.eo ], [ %i.apm, %bb.el ]
  %.sroa.0209.3.i.i.i.i = phi i64 [ %.sroa.0209.0271.i.i.i.i, %FSE_reloadDStream.exit.i.i.i.i ], [ %.sroa.0209.0271.i.i.i.i, %bb.en ], [ %.val.i171.i.i.i.i, %bb.eo ], [ %.val30.i167.i.i.i.i, %bb.el ]
  %.025.i168.i.i.i.i = phi i32 [ 3, %FSE_reloadDStream.exit.i.i.i.i ], [ %..i173.i.i.i.i, %bb.en ], [ %.0.i170.i.i.i.i, %bb.eo ], [ 0, %bb.el ]
  %i.aqb = or i32 %.025.i168.i.i.i.i, %.025.i.i.i.i.i
  %i.aqc = icmp ugt i32 %i.aoq, 64
  br i1 %i.aqc, label %FSE_reloadDStream.exit183.i.i.i.i, label %bb.ep

bb.ep:                                            ; preds = %FSE_reloadDStream.exit174.i.i.i.i
  %.not.i175.i.i.i.i = icmp ult ptr %i.ahx, %i.ahq
  %i.aqd = lshr i32 %i.aoq, 3                     ; 2 uses
  %i.aqe = zext nneg i32 %i.aqd to i64
  %i.aqf = sub nsw i64 0, %i.aqe
  %i.aqg = getelementptr inbounds i8, ptr %i.ahx, i64 %i.aqf ; 2 uses
  br i1 %.not.i175.i.i.i.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %9 = and i32 %i.aoq, 7
  br label %FSE_reloadDStream.exit183.sink.split.i.i.i.i

bb.er:                                            ; preds = %bb.ep
  %i.aqh = icmp ult ptr %i.aqg, %i.ahp            ; 2 uses
  %i.aqi = ptrtoint ptr %i.ahx to i64
  %i.aqj = sub i64 %i.aqi, %i.ahr
  %i.aqk = trunc i64 %i.aqj to i32
  %.024.i178.i.i.i.i = select i1 %i.aqh, i32 %i.aqk, i32 %i.aqd ; 2 uses
  %.0.i179.i.i.i.i = zext i1 %i.aqh to i32
  %i.aql = zext i32 %.024.i178.i.i.i.i to i64
  %i.aqm = sub nsw i64 0, %i.aql
  %i.aqn = getelementptr inbounds i8, ptr %i.ahx, i64 %i.aqm
  %i.aqo = shl i32 %.024.i178.i.i.i.i, 3
  %i.aqp = sub i32 %i.aoq, %i.aqo
  br label %FSE_reloadDStream.exit183.sink.split.i.i.i.i

FSE_reloadDStream.exit183.sink.split.i.i.i.i:     ; preds = %bb.er, %bb.eq
  %.sink199.i.i.i = phi ptr [ %i.aqn, %bb.er ], [ %i.aqg, %bb.eq ] ; 3 uses
  %.val7.i140281.ph.i.i.i.i = phi i32 [ %i.aqp, %bb.er ], [ %9, %bb.eq ] ; 2 uses
  %.025.i177.ph.i.i.i.i = phi i32 [ %.0.i179.i.i.i.i, %bb.er ], [ 0, %bb.eq ]
  store ptr %.sink199.i.i.i, ptr %i.ahn, align 8, !tbaa !30
  store i32 %.val7.i140281.ph.i.i.i.i, ptr %i.ahj, align 8, !tbaa !32
  %.val30.i176.sink.i.i.i.i = load i64, ptr %.sink199.i.i.i, align 1 ; 2 uses
  store i64 %.val30.i176.sink.i.i.i.i, ptr %6, align 8, !tbaa !31
  br label %FSE_reloadDStream.exit183.i.i.i.i

FSE_reloadDStream.exit183.i.i.i.i:                ; preds = %FSE_reloadDStream.exit183.sink.split.i.i.i.i, %FSE_reloadDStream.exit174.i.i.i.i
  %10 = phi ptr [ %i.ahx, %FSE_reloadDStream.exit174.i.i.i.i ], [ %.sink199.i.i.i, %FSE_reloadDStream.exit183.sink.split.i.i.i.i ]
  %.val7.i140281.i.i.i.i = phi i32 [ %i.aoq, %FSE_reloadDStream.exit174.i.i.i.i ], [ %.val7.i140281.ph.i.i.i.i, %FSE_reloadDStream.exit183.sink.split.i.i.i.i ]
  %.val.i180262.i.i.i.i = phi i64 [ %.val.i180263264.i.i.i.i, %FSE_reloadDStream.exit174.i.i.i.i ], [ %.val30.i176.sink.i.i.i.i, %FSE_reloadDStream.exit183.sink.split.i.i.i.i ]
  %.025.i177.i.i.i.i = phi i32 [ 3, %FSE_reloadDStream.exit174.i.i.i.i ], [ %.025.i177.ph.i.i.i.i, %FSE_reloadDStream.exit183.sink.split.i.i.i.i ]
  %i.aqq = or i32 %i.aqb, %.025.i177.i.i.i.i      ; 2 uses
  %i.aqr = icmp ugt i32 %i.anj, 64
  br i1 %i.aqr, label %FSE_reloadDStream.exit192.i.i.i.i, label %bb.es

bb.es:                                            ; preds = %FSE_reloadDStream.exit183.i.i.i.i
  %.not.i184.i.i.i.i = icmp ult ptr %.sroa.31228.0269.i.i.i.i, %i.ahs
  br i1 %.not.i184.i.i.i.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.aqs = lshr i32 %i.anj, 3
  %i.aqt = zext nneg i32 %i.aqs to i64
  %i.aqu = sub nsw i64 0, %i.aqt
  %i.aqv = getelementptr inbounds i8, ptr %.sroa.31228.0269.i.i.i.i, i64 %i.aqu ; 2 uses
  %i.aqw = and i32 %i.anj, 7
  %.val30.i185.i.i.i.i = load i64, ptr %i.aqv, align 1
  br label %FSE_reloadDStream.exit192.i.i.i.i

bb.eu:                                            ; preds = %bb.es
  %i.aqx = icmp eq ptr %.sroa.31228.0269.i.i.i.i, %i.aah
  br i1 %i.aqx, label %FSE_reloadDStream.exit192.i.i.i.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.aqy = lshr i32 %i.anj, 3                     ; 2 uses
  %i.aqz = zext nneg i32 %i.aqy to i64
  %i.ara = sub nsw i64 0, %i.aqz
  %i.arb = getelementptr inbounds i8, ptr %.sroa.31228.0269.i.i.i.i, i64 %i.ara
  %i.arc = icmp ult ptr %i.arb, %i.aah
  %i.ard = ptrtoint ptr %.sroa.31228.0269.i.i.i.i to i64
  %i.are = sub i64 %i.ard, %i.aht
  %i.arf = trunc i64 %i.are to i32
  %.024.i187.i.i.i.i = select i1 %i.arc, i32 %i.arf, i32 %i.aqy ; 2 uses
  %i.arg = zext i32 %.024.i187.i.i.i.i to i64
  %i.arh = sub nsw i64 0, %i.arg
  %i.ari = getelementptr inbounds i8, ptr %.sroa.31228.0269.i.i.i.i, i64 %i.arh ; 2 uses
  %i.arj = shl i32 %.024.i187.i.i.i.i, 3
  %i.ark = sub i32 %i.anj, %i.arj
  %.val.i189.i.i.i.i = load i64, ptr %i.ari, align 1
  br label %FSE_reloadDStream.exit192.i.i.i.i

FSE_reloadDStream.exit192.i.i.i.i:                ; preds = %bb.ev, %bb.eu, %bb.et, %FSE_reloadDStream.exit183.i.i.i.i
  %.sroa.17.2.i.i.i.i = phi i32 [ %i.anj, %FSE_reloadDStream.exit183.i.i.i.i ], [ %i.aqw, %bb.et ], [ %i.ark, %bb.ev ], [ %i.anj, %bb.eu ] ; 2 uses
  %.sroa.0218.3.i.i.i.i = phi i64 [ %.sroa.0218.0267.i.i.i.i, %FSE_reloadDStream.exit183.i.i.i.i ], [ %.val30.i185.i.i.i.i, %bb.et ], [ %.val.i189.i.i.i.i, %bb.ev ], [ %.sroa.0218.0267.i.i.i.i, %bb.eu ] ; 2 uses
  %.sroa.31228.2.i.i.i.i = phi ptr [ %.sroa.31228.0269.i.i.i.i, %FSE_reloadDStream.exit183.i.i.i.i ], [ %i.aqv, %bb.et ], [ %i.ari, %bb.ev ], [ %i.aah, %bb.eu ] ; 2 uses
  %i.arl = icmp samesign ult i32 %i.aqq, 2
  %i.arm = icmp ult ptr %i.aos, %i.zw
  %i.arn = select i1 %i.arl, i1 %i.arm, i1 false
  br i1 %i.arn, label %bb.eg, label %._crit_edge.i21.i.i.i, !llvm.loop !46

._crit_edge.i21.i.i.i:                            ; preds = %FSE_reloadDStream.exit192.i.i.i.i, %bb.ef
  %.sroa.17.0.lcssa.i.i.i.i = phi i32 [ %.sroa.17.1.i.i.i.i, %bb.ef ], [ %.sroa.17.2.i.i.i.i, %FSE_reloadDStream.exit192.i.i.i.i ] ; 2 uses
  %.sroa.0218.0.lcssa.i.i.i.i = phi i64 [ %.sroa.0218.2.i.i.i.i, %bb.ef ], [ %.sroa.0218.3.i.i.i.i, %FSE_reloadDStream.exit192.i.i.i.i ]
  %.sroa.31228.0.lcssa.i.i.i.i = phi ptr [ %.sroa.31228.1.i.i.i.i, %bb.ef ], [ %.sroa.31228.2.i.i.i.i, %FSE_reloadDStream.exit192.i.i.i.i ]
  %.0112.lcssa.i.i.i.i = phi ptr [ %i.bj, %bb.ef ], [ %i.aos, %FSE_reloadDStream.exit192.i.i.i.i ]
  %.0111.lcssa.i.i.i.i = phi i32 [ %i.ahb, %bb.ef ], [ %i.aqq, %FSE_reloadDStream.exit192.i.i.i.i ]
  %.not120.i.i.i.i = icmp ne i32 %.0111.lcssa.i.i.i.i, 2
  %i.aro = icmp ugt i32 %.sroa.17.0.lcssa.i.i.i.i, 64
  %or.cond340.i.i = select i1 %.not120.i.i.i.i, i1 true, i1 %i.aro
  br i1 %or.cond340.i.i, label %HUF_decompress.exit.thread257.i.i, label %.lr.ph289.i.i.i.i

.lr.ph289.i.i.i.i:                                ; preds = %._crit_edge.i21.i.i.i
  %i.arp = getelementptr inbounds nuw i8, ptr %i.zr, i64 14
  %i.arq = ptrtoint ptr %i.aah to i64
  %i.arr = sub nsw i32 0, %i.zx
  %i.ars = and i32 %i.arr, 63
  %i.art = zext nneg i32 %i.ars to i64
  br label %bb.ew

bb.ew:                                            ; preds = %bb.fb, %.lr.ph289.i.i.i.i
  %.1288.i.i.i.i = phi ptr [ %.0112.lcssa.i.i.i.i, %.lr.ph289.i.i.i.i ], [ %i.asz, %bb.fb ] ; 4 uses
  %.sroa.0.0287.i.i.i.i = phi i64 [ %.sroa.0218.0.lcssa.i.i.i.i, %.lr.ph289.i.i.i.i ], [ %.sroa.0.1.i.i.i.i, %bb.fb ]
  %.sroa.6.0286.i.i.i.i = phi i32 [ %.sroa.17.0.lcssa.i.i.i.i, %.lr.ph289.i.i.i.i ], [ %i.asy, %bb.fb ] ; 6 uses
  %.sroa.13206.0285.i.i.i.i = phi ptr [ %.sroa.31228.0.lcssa.i.i.i.i, %.lr.ph289.i.i.i.i ], [ %.sroa.13206.1.i.i.i.i, %bb.fb ] ; 6 uses
  %.not.i193.i.i.i.i = icmp ult ptr %.sroa.13206.0285.i.i.i.i, %i.arp
  br i1 %.not.i193.i.i.i.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.aru = lshr i32 %.sroa.6.0286.i.i.i.i, 3
  %i.arv = zext nneg i32 %i.aru to i64
  %i.arw = sub nsw i64 0, %i.arv
  %i.arx = getelementptr inbounds i8, ptr %.sroa.13206.0285.i.i.i.i, i64 %i.arw ; 2 uses
  %i.ary = and i32 %.sroa.6.0286.i.i.i.i, 7
  %.val30.i194.i.i.i.i = load i64, ptr %i.arx, align 1
  br label %FSE_reloadDStream.exit201.i.i.i.i

bb.ey:                                            ; preds = %bb.ew
  %i.arz = icmp eq ptr %.sroa.13206.0285.i.i.i.i, %i.aah
  br i1 %i.arz, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %.not29.i199.i.i.i.i = icmp ne i32 %.sroa.6.0286.i.i.i.i, 64
  br label %FSE_reloadDStream.exit201.i.i.i.i

bb.fa:                                            ; preds = %bb.ey
  %i.asa = lshr i32 %.sroa.6.0286.i.i.i.i, 3      ; 2 uses
  %i.asb = zext nneg i32 %i.asa to i64
  %i.asc = sub nsw i64 0, %i.asb
  %i.asd = getelementptr inbounds i8, ptr %.sroa.13206.0285.i.i.i.i, i64 %i.asc
  %i.ase = icmp ult ptr %i.asd, %i.aah
  %i.asf = ptrtoint ptr %.sroa.13206.0285.i.i.i.i to i64
  %i.asg = sub i64 %i.asf, %i.arq
  %i.ash = trunc i64 %i.asg to i32
  %.024.i196.i.i.i.i = select i1 %i.ase, i32 %i.ash, i32 %i.asa ; 2 uses
  %i.asi = zext i32 %.024.i196.i.i.i.i to i64
  %i.asj = sub nsw i64 0, %i.asi
  %i.ask = getelementptr inbounds i8, ptr %.sroa.13206.0285.i.i.i.i, i64 %i.asj ; 2 uses
  %i.asl = shl i32 %.024.i196.i.i.i.i, 3
  %i.asm = sub i32 %.sroa.6.0286.i.i.i.i, %i.asl
  %.val.i198.i.i.i.i = load i64, ptr %i.ask, align 1
  br label %FSE_reloadDStream.exit201.i.i.i.i

FSE_reloadDStream.exit201.i.i.i.i:                ; preds = %bb.fa, %bb.ez, %bb.ex
  %.sroa.13206.1.i.i.i.i = phi ptr [ %i.arx, %bb.ex ], [ %i.aah, %bb.ez ], [ %i.ask, %bb.fa ] ; 2 uses
  %.sroa.6.1.i.i.i.i = phi i32 [ %i.ary, %bb.ex ], [ %.sroa.6.0286.i.i.i.i, %bb.ez ], [ %i.asm, %bb.fa ] ; 3 uses
  %.sroa.0.1.i.i.i.i = phi i64 [ %.val30.i194.i.i.i.i, %bb.ex ], [ %.sroa.0.0287.i.i.i.i, %bb.ez ], [ %.val.i198.i.i.i.i, %bb.fa ] ; 2 uses
  %.025.i195.i.i.i.i = phi i1 [ true, %bb.ex ], [ %.not29.i199.i.i.i.i, %bb.ez ], [ true, %bb.fa ]
  %i.asn = icmp ult ptr %.1288.i.i.i.i, %i.s
  %i.aso = select i1 %.025.i195.i.i.i.i, i1 %i.asn, i1 false
  br i1 %i.aso, label %bb.fb, label %FSE_reloadDStream.exit201.thread.i.i.i.i

bb.fb:                                            ; preds = %FSE_reloadDStream.exit201.i.i.i.i
  %i.asp = and i32 %.sroa.6.1.i.i.i.i, 63
  %i.asq = zext nneg i32 %i.asp to i64
  %i.asr = shl i64 %.sroa.0.1.i.i.i.i, %i.asq
  %i.ass = lshr i64 %i.asr, %i.art
  %i.ast = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.ass ; 2 uses
  %i.asu = load i8, ptr %i.ast, align 2, !tbaa !57
  %i.asv = getelementptr inbounds nuw i8, ptr %i.ast, i64 1
  %i.asw = load i8, ptr %i.asv, align 1, !tbaa !58
  %i.asx = zext i8 %i.asw to i32
  %i.asy = add i32 %.sroa.6.1.i.i.i.i, %i.asx     ; 2 uses
  store i8 %i.asu, ptr %.1288.i.i.i.i, align 1, !tbaa !13
  %i.asz = getelementptr inbounds nuw i8, ptr %.1288.i.i.i.i, i64 1
  %i.ata = icmp ugt i32 %i.asy, 64
  br i1 %i.ata, label %HUF_decompress.exit.thread257.i.i, label %bb.ew, !llvm.loop !47

FSE_reloadDStream.exit201.thread.i.i.i.i:         ; preds = %FSE_reloadDStream.exit201.i.i.i.i
  %i.atb = icmp eq i32 %.sroa.6.1.i.i.i.i, 64
  %i.atc = icmp eq ptr %.sroa.13206.1.i.i.i.i, %i.aah
  %or.cond255.i.i.i.i = and i1 %i.atc, %i.atb
  br i1 %or.cond255.i.i.i.i, label %ZSTD_decompressLiterals.exit.i, label %HUF_decompress.exit.thread257.i.i

HUF_decompress.exit.thread257.i.i:                ; preds = %bb.fb, %FSE_reloadDStream.exit201.thread.i.i.i.i, %._crit_edge.i21.i.i.i, %bb.ee, %bb.ed, %bb.dv, %bb.dt, %bb.ds, %bb.dk, %bb.di, %bb.dh, %bb.cz, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %HUF_decompress.exit.thread257.i.i, %bb.cw, %HUF_readDTable.exit.i.i.i, %HUF_readDTable.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #16
  br label %ZSTD_decompressSequences.exit

ZSTD_decompressLiterals.exit.i:                   ; preds = %FSE_reloadDStream.exit201.thread.i.i.i.i
  %i.atd = ptrtoint ptr %.1288.i.i.i.i to i64
  %i.ate = ptrtoint ptr %i.bj to i64
  %i.atf = sub i64 %i.atd, %i.ate
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #16
  %.fr.i.i = freeze i64 %i.atf
  %i.atg = icmp ult i64 %.fr.i.i, -7
  %spec.select.i.i = select i1 %i.atg, i64 %i.bg, i64 -1 ; 2 uses
  %i.ath = icmp ult i64 %spec.select.i.i, -119
  br i1 %i.ath, label %bb.fc, label %ZSTD_decompressSequences.exit

bb.fc:                                            ; preds = %ZSTD_decompressLiterals.exit.i
  %i.ati = sub nsw i64 0, %spec.select.i.i
  %i.atj = getelementptr inbounds i8, ptr %i.s, i64 %i.ati
  %i.atk = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0.i.ph.i
  br label %ZSTDv01_decodeLiteralsBlock.exit

default.unreachable.i:                            ; preds = %bb.e
  unreachable

ZSTDv01_decodeLiteralsBlock.exit:                 ; preds = %bb.f, %.thread12.i, %bb.fc
  %.021 = phi ptr [ %i.al, %bb.f ], [ %i.as, %.thread12.i ], [ %i.atj, %bb.fc ] ; 2 uses
  %.020 = phi i64 [ %.0.i.ph.i, %bb.f ], [ %i.an, %.thread12.i ], [ %i.bg, %bb.fc ]
  %.2.i = phi ptr [ %i.am, %bb.f ], [ %i.at, %.thread12.i ], [ %i.atk, %bb.fc ]
  %i.atl = ptrtoint ptr %.2.i to i64              ; 2 uses
  %i.atm = ptrtoint ptr %3 to i64
  %i.atn = sub i64 %i.atl, %i.atm                 ; 4 uses
  %i.ato = icmp ult i64 %i.atn, -119
  br i1 %i.ato, label %bb.fd, label %ZSTD_decompressSequences.exit

bb.fd:                                            ; preds = %ZSTDv01_decodeLiteralsBlock.exit
  %i.atp = getelementptr inbounds nuw i8, ptr %3, i64 %i.atn ; 7 uses
  %i.atq = sub i64 %4, %i.atn                     ; 5 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %.021, i64 %.020 ; 3 uses
  %i.ats = getelementptr inbounds nuw i8, ptr %0, i64 6152 ; 4 uses
  %i.att = getelementptr inbounds nuw i8, ptr %0, i64 4100 ; 4 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %0, i64 10264
  %i.atv = load ptr, ptr %i.atu, align 8, !tbaa !34 ; 2 uses
  %i.atw = getelementptr i8, ptr %3, i64 %4       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.atx = icmp ult i64 %i.atq, 5
  br i1 %i.atx, label %ZSTDv01_decodeSeqHeaders.exit.thread.i, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %.val.i.i = load i16, ptr %i.atp, align 1
  %i.aty = zext i16 %.val.i.i to i32
end_hunk_1
