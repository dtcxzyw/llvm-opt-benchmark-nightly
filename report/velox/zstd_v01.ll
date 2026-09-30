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
define noundef range(i32 0, 2) i32 @ZSTDv01_isError(i64 noundef %0) local_unnamed_addr #0 {
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
  %5 = alloca %struct.FSE_DStream_t, align 8      ; 17 uses
  %6 = alloca %struct.FSE_DStream_t, align 8      ; 10 uses
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
end_hunk_0
begin_hunk_1_@ZSTD_decompressBlock:bb.a
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
  %wide.load520 = load <8 x i8>, ptr %i.ce, align 1, !tbaa !13 ; 2 uses
  %i.cf = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.cg = lshr <8 x i8> %wide.load520, splat (i8 4)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ci = and <8 x i8> %wide.load, splat (i8 15)
  %i.cj = and <8 x i8> %wide.load520, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.cf, <8 x i8> %i.ci, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.p, align 16, !tbaa !13
  %interleaved.vec521 = shufflevector <8 x i8> %i.cg, <8 x i8> %i.cj, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec521, ptr %i.ch, align 16, !tbaa !13
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
  br i1 %cmp.n, label %.loopexit.thread.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !53

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec522 = and i64 %i.cb, -4                   ; 3 uses
  %i.dc = shl i64 %n.vec522, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index523 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next526, %vec.epilog.vector.body ] ; 3 uses
  %i.dd = shl nuw i64 %index523, 1
  %i.de = getelementptr inbounds nuw i8, ptr %i.by, i64 %index523
  %wide.load524 = load <4 x i8>, ptr %i.de, align 1, !tbaa !13 ; 2 uses
  %i.df = lshr <4 x i8> %wide.load524, splat (i8 4)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.dd
  %i.dh = and <4 x i8> %wide.load524, splat (i8 15)
  %interleaved.vec525 = shufflevector <4 x i8> %i.df, <4 x i8> %i.dh, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec525, ptr %i.dg, align 8, !tbaa !13
  %index.next526 = add nuw i64 %index523, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next526, %n.vec522
  br i1 %i.di, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n527 = icmp eq i64 %i.cb, %n.vec522
  br i1 %cmp.n527, label %.loopexit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %i.cd, %vec.epilog.iter.check ], [ %i.dc, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.dj = lshr exact i64 %indvars.iv.i.i.i.i, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !13  ; 2 uses
  %i.dm = lshr i8 %i.dl, 4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.i.i.i.i ; 2 uses
  store i8 %i.dm, ptr %i.dn, align 2, !tbaa !13
  %i.do = and i8 %i.dl, 15
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !13
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.dq = icmp samesign ugt i64 %i.bv, %indvars.iv.next.i.i.i.i
  br i1 %i.dq, label %.lr.ph.i.i.i.i, label %.loopexit.thread.i.i.i.i, !llvm.loop !38

.loopexit.thread.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i, %vec.epilog.middle.block, %middle.block
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.q, i8 0, i64 68, i1 false)
  br label %.lr.ph188.preheader.i.i.i.i

bb.p:                                             ; preds = %bb.l
  %.not97.i.i.i.i = icmp samesign ugt i64 %i.bl, %i.bo
  br i1 %.not97.i.i.i.i, label %bb.q, label %HUF_readDTable.exit.thread.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #16
  store i32 255, ptr %i.o, align 4, !tbaa !14
  %i.ds = icmp samesign ult i8 %i.bn, 2
  br i1 %i.ds, label %FSE_decompress.exit.thread.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dt = call fastcc i64 @FSE_readNCount(ptr noundef %i.l, ptr noundef %i.o, ptr noundef %i.n, ptr noundef nonnull %i.dr, i64 noundef range(i64 0, 128) %i.bo) ; 3 uses
  %.not21.i.i.i.i.i = icmp ult i64 %i.dt, %i.bo
  br i1 %.not21.i.i.i.i.i, label %bb.s, label %FSE_decompress.exit.thread.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.du = load i32, ptr %i.o, align 4, !tbaa !14  ; 3 uses
  %i.dv = load i32, ptr %i.n, align 4, !tbaa !14  ; 11 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 19 uses
  %i.dx = shl nuw i32 1, %i.dv                    ; 5 uses
  %i.dy = add i32 %i.dx, -1                       ; 5 uses
  %i.dz = lshr i32 %i.dx, 1
  %i.ea = lshr i32 %i.dx, 3
  %i.eb = add nuw nsw i32 %i.ea, 3
  %i.ec = add nuw nsw i32 %i.eb, %i.dz            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  %i.ed = icmp ugt i32 %i.du, 255
  %i.ee = icmp ugt i32 %i.dv, 12
  %or.cond339.i.i = select i1 %i.ed, i1 true, i1 %i.ee
  br i1 %or.cond339.i.i, label %FSE_buildDTable.exit.thread.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ef = trunc nuw nsw i32 %i.dv to i16
  store i16 %i.ef, ptr %i.m, align 16, !tbaa !18
  %sext.i.i.i.i.i.i = shl nuw nsw i32 32768, %i.dv
  %i.eg = lshr exact i32 %sext.i.i.i.i.i.i, 16    ; 3 uses
  %i.eh = add nuw nsw i32 %i.du, 1                ; 2 uses
  %wide.trip.count.i.i.i.i.i.i = zext nneg i32 %i.eh to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i.i.i, 1
  %i.ei = icmp eq i32 %i.du, 0
  br i1 %i.ei, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.t
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i.i.i, 510
  br label %bb.u

bb.u:                                             ; preds = %bb.aa, %.new
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.i.i.i.i.1, %bb.aa ] ; 5 uses
  %.06784.i.i.i.i.i.i = phi i16 [ 1, %.new ], [ %.2.i.i.i.i.i.i.1, %bb.aa ] ; 2 uses
  %.06983.i.i.i.i.i.i = phi i32 [ %i.dy, %.new ], [ %.170.i.i.i.i.i.i.1, %bb.aa ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.aa ]
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.i.i.i.i.i.i
  %i.ek = load i16, ptr %i.ej, align 4, !tbaa !19 ; 3 uses
  %i.el = icmp eq i16 %i.ek, -1
  br i1 %i.el, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.em = trunc i64 %indvars.iv.i.i.i.i.i.i to i8
  %i.en = add i32 %.06983.i.i.i.i.i.i, -1
  %i.eo = zext i32 %.06983.i.i.i.i.i.i to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  store i8 %i.em, ptr %i.eq, align 2, !tbaa !21
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.er = sext i16 %i.ek to i32
  %.not80.i.i.i.i.i.i = icmp sgt i32 %i.eg, %i.er
  %spec.select.i.i.i.i.i.i = select i1 %.not80.i.i.i.i.i.i, i16 %.06784.i.i.i.i.i.i, i16 0
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink.i.i.i.i.i.i = phi i16 [ 1, %bb.v ], [ %i.ek, %bb.w ]
  %.170.i.i.i.i.i.i = phi i32 [ %i.en, %bb.v ], [ %.06983.i.i.i.i.i.i, %bb.w ] ; 3 uses
  %.2.i.i.i.i.i.i = phi i16 [ %.06784.i.i.i.i.i.i, %bb.v ], [ %spec.select.i.i.i.i.i.i, %bb.w ] ; 2 uses
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.i.i.i.i.i.i
  store i16 %.sink.i.i.i.i.i.i, ptr %i.es, align 4, !tbaa !19
  %indvars.iv.next.i.i.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i.i.i, 1 ; 3 uses
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !19 ; 3 uses
  %i.ev = icmp eq i16 %i.eu, -1
  br i1 %i.ev, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ew = sext i16 %i.eu to i32
  %.not80.i.i.i.i.i.i.1 = icmp sgt i32 %i.eg, %i.ew
  %spec.select.i.i.i.i.i.i.1 = select i1 %.not80.i.i.i.i.i.i.1, i16 %.2.i.i.i.i.i.i, i16 0
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.ex = trunc i64 %indvars.iv.next.i.i.i.i.i.i to i8
  %i.ey = add i32 %.170.i.i.i.i.i.i, -1
  %i.ez = zext i32 %.170.i.i.i.i.i.i to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 2
  store i8 %i.ex, ptr %i.fb, align 2, !tbaa !21
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink.i.i.i.i.i.i.1 = phi i16 [ 1, %bb.z ], [ %i.eu, %bb.y ]
  %.170.i.i.i.i.i.i.1 = phi i32 [ %i.ey, %bb.z ], [ %.170.i.i.i.i.i.i, %bb.y ] ; 3 uses
  %.2.i.i.i.i.i.i.1 = phi i16 [ %.2.i.i.i.i.i.i, %bb.z ], [ %spec.select.i.i.i.i.i.i.1, %bb.y ] ; 3 uses
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i.i.i.i
  store i16 %.sink.i.i.i.i.i.i.1, ptr %i.fc, align 2, !tbaa !19
  %indvars.iv.next.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader81.i.i.i.i.i.i.preheader.unr-lcssa, label %bb.u, !llvm.loop !0

.preheader81.i.i.i.i.i.i.preheader.unr-lcssa:     ; preds = %bb.aa
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader81.i.i.i.i.i.i.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader81.i.i.i.i.i.i.preheader.unr-lcssa, %bb.t
  %indvars.iv.i.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.t ], [ %indvars.iv.next.i.i.i.i.i.i.1, %.preheader81.i.i.i.i.i.i.preheader.unr-lcssa ] ; 3 uses
  %.06784.i.i.i.i.i.i.epil.init = phi i16 [ 1, %bb.t ], [ %.2.i.i.i.i.i.i.1, %.preheader81.i.i.i.i.i.i.preheader.unr-lcssa ] ; 2 uses
  %.06983.i.i.i.i.i.i.epil.init = phi i32 [ %i.dy, %bb.t ], [ %.170.i.i.i.i.i.i.1, %.preheader81.i.i.i.i.i.i.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod685 = trunc i32 %i.eh to i1
  tail call void @llvm.assume(i1 %lcmp.mod685)
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.i.i.i.i.i.i.epil.init
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !19 ; 3 uses
  %i.ff = icmp eq i16 %i.fe, -1
  br i1 %i.ff, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.epil.preheader
  %i.fg = sext i16 %i.fe to i32
  %.not80.i.i.i.i.i.i.epil = icmp sgt i32 %i.eg, %i.fg
  %spec.select.i.i.i.i.i.i.epil = select i1 %.not80.i.i.i.i.i.i.epil, i16 %.06784.i.i.i.i.i.i.epil.init, i16 0
  br label %.preheader81.i.i.i.i.i.i.preheader.epilog-lcssa

bb.ac:                                            ; preds = %.epil.preheader
  %i.fh = trunc i64 %indvars.iv.i.i.i.i.i.i.epil.init to i8
  %i.fi = add i32 %.06983.i.i.i.i.i.i.epil.init, -1
  %i.fj = zext i32 %.06983.i.i.i.i.i.i.epil.init to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 2
  store i8 %i.fh, ptr %i.fl, align 2, !tbaa !21
  br label %.preheader81.i.i.i.i.i.i.preheader.epilog-lcssa

.preheader81.i.i.i.i.i.i.preheader.epilog-lcssa:  ; preds = %bb.ac, %bb.ab
  %.sink.i.i.i.i.i.i.epil = phi i16 [ 1, %bb.ac ], [ %i.fe, %bb.ab ]
  %.170.i.i.i.i.i.i.epil = phi i32 [ %i.fi, %bb.ac ], [ %.06983.i.i.i.i.i.i.epil.init, %bb.ab ]
  %.2.i.i.i.i.i.i.epil = phi i16 [ %.06784.i.i.i.i.i.i.epil.init, %bb.ac ], [ %spec.select.i.i.i.i.i.i.epil, %bb.ab ]
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.i.i.i.i.i.i.epil.init
  store i16 %.sink.i.i.i.i.i.i.epil, ptr %i.fm, align 2, !tbaa !19
  br label %.preheader81.i.i.i.i.i.i.preheader

.preheader81.i.i.i.i.i.i.preheader:               ; preds = %.preheader81.i.i.i.i.i.i.preheader.unr-lcssa, %.preheader81.i.i.i.i.i.i.preheader.epilog-lcssa
  %.170.i.i.i.i.i.i.lcssa = phi i32 [ %.170.i.i.i.i.i.i.1, %.preheader81.i.i.i.i.i.i.preheader.unr-lcssa ], [ %.170.i.i.i.i.i.i.epil, %.preheader81.i.i.i.i.i.i.preheader.epilog-lcssa ] ; 3 uses
  %.2.i.i.i.i.i.i.lcssa = phi i16 [ %.2.i.i.i.i.i.i.1, %.preheader81.i.i.i.i.i.i.preheader.unr-lcssa ], [ %.2.i.i.i.i.i.i.epil, %.preheader81.i.i.i.i.i.i.preheader.epilog-lcssa ] ; 2 uses
  br label %.preheader81.i.i.i.i.i.i

.preheader81.i.i.i.i.i.i:                         ; preds = %.preheader81.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i
  %indvars.iv92.i.i.i.i.i.i = phi i64 [ %indvars.iv.next93.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ 0, %.preheader81.i.i.i.i.i.i.preheader ] ; 3 uses
  %.07188.i.i.i.i.i.i = phi i32 [ %.172.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ 0, %.preheader81.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv92.i.i.i.i.i.i
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !19 ; 5 uses
  %i.fp = icmp sgt i16 %i.fo, 0
  br i1 %i.fp, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader81.i.i.i.i.i.i
  %i.fq = trunc i64 %indvars.iv92.i.i.i.i.i.i to i8 ; 3 uses
  %i.fr = icmp eq i16 %i.fo, 1
  br i1 %i.fr, label %.epil.preheader686, label %.lr.ph.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.new:                           ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fs = and i16 %i.fo, 32766
  %unroll_iter691 = zext nneg i16 %i.fs to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ah, %.lr.ph.i.i.i.i.i.i.new
  %.17286.i.i.i.i.i.i = phi i32 [ %.07188.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.new ], [ %.273.i.i.i.i.i.i.1, %bb.ah ] ; 2 uses
  %niter692 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.new ], [ %niter692.next.1, %bb.ah ]
  %i.ft = zext nneg i32 %.17286.i.i.i.i.i.i to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 2
  store i8 %i.fq, ptr %i.fv, align 2, !tbaa !21
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %bb.ad
  %.172.pn.i.i.i.i.i.i = phi i32 [ %.17286.i.i.i.i.i.i, %bb.ad ], [ %.273.i.i.i.i.i.i, %bb.ae ]
  %.pn.i.i.i.i.i.i = add nuw i32 %i.ec, %.172.pn.i.i.i.i.i.i
  %.273.i.i.i.i.i.i = and i32 %.pn.i.i.i.i.i.i, %i.dy ; 4 uses
  %i.fw = icmp ugt i32 %.273.i.i.i.i.i.i, %.170.i.i.i.i.i.i.lcssa
  br i1 %i.fw, label %bb.ae, label %bb.af, !llvm.loop !1

bb.af:                                            ; preds = %bb.ae
  %i.fx = zext nneg i32 %.273.i.i.i.i.i.i to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 2
  store i8 %i.fq, ptr %i.fz, align 2, !tbaa !21
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %bb.af
  %.172.pn.i.i.i.i.i.i.1 = phi i32 [ %.273.i.i.i.i.i.i, %bb.af ], [ %.273.i.i.i.i.i.i.1, %bb.ag ]
  %.pn.i.i.i.i.i.i.1 = add nuw i32 %i.ec, %.172.pn.i.i.i.i.i.i.1
  %.273.i.i.i.i.i.i.1 = and i32 %.pn.i.i.i.i.i.i.1, %i.dy ; 5 uses
  %i.ga = icmp ugt i32 %.273.i.i.i.i.i.i.1, %.170.i.i.i.i.i.i.lcssa
  br i1 %i.ga, label %bb.ag, label %bb.ah, !llvm.loop !1

bb.ah:                                            ; preds = %bb.ag
  %niter692.next.1 = add i32 %niter692, 2         ; 2 uses
  %niter692.ncmp.1 = icmp eq i32 %niter692.next.1, %unroll_iter691
  br i1 %niter692.ncmp.1, label %._crit_edge.i.i.i.i.i.i.loopexit.unr-lcssa, label %bb.ad, !llvm.loop !2

._crit_edge.i.i.i.i.i.i.loopexit.unr-lcssa:       ; preds = %bb.ah
  %i.gb = and i16 %i.fo, 1
  %lcmp.mod688.not = icmp eq i16 %i.gb, 0
  br i1 %lcmp.mod688.not, label %._crit_edge.i.i.i.i.i.i, label %.epil.preheader686

.epil.preheader686:                               ; preds = %._crit_edge.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i
  %.17286.i.i.i.i.i.i.epil.init = phi i32 [ %.07188.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.273.i.i.i.i.i.i.1, %._crit_edge.i.i.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod690 = trunc i16 %i.fo to i1
  tail call void @llvm.assume(i1 %lcmp.mod690)
end_hunk_1
