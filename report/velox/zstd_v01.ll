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
  %i.h = load i8, ptr %.051110, align 1, !tbaa !8
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
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %i.o = zext i8 %i.n to i32
  %i.p = or disjoint i32 %i.l, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.051110, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8
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
  %i.a = alloca [256 x i16], align 16             ; 6 uses
  %i.b = alloca [2 x i64], align 16               ; 5 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca [128 x i16], align 16             ; 12 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %5 = alloca %struct.FSE_DStream_t, align 8      ; 17 uses
  %6 = alloca %struct.FSE_DStream_t, align 8      ; 10 uses
  %i.j = alloca [256 x i16], align 16             ; 7 uses
  %i.k = alloca [256 x i16], align 16             ; 8 uses
  %i.l = alloca [4097 x i32], align 16            ; 6 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 6 uses
  %i.o = alloca [256 x i8], align 16              ; 21 uses
  %i.p = alloca [17 x i32], align 16              ; 12 uses
  %i.q = alloca [4097 x i16], align 16            ; 7 uses
  %i.r = getelementptr i8, ptr %1, i64 %2         ; 12 uses
  %i.s = icmp ult i64 %4, 3
  br i1 %i.s, label %ZSTD_decompressSequences.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = load i8, ptr %3, align 1, !tbaa !8       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = zext i8 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 8
  %i.ab = zext i8 %i.t to i32                     ; 2 uses
  %i.ac = shl nuw nsw i32 %i.ab, 16
  %i.ad = and i32 %i.ac, 458752
  %i.ae = or disjoint i32 %i.ad, %i.w
  %i.af = or disjoint i32 %i.ae, %i.aa            ; 3 uses
  %i.ag = lshr i32 %i.ab, 6                       ; 2 uses
  switch i32 %i.ag, label %bb.c [
    i32 3, label %ZSTD_decompressSequences.exit
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.ah = zext nneg i32 %i.af to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i.ph.i = phi i64 [ %i.ah, %bb.c ], [ 1, %bb.b ] ; 6 uses
  %i.ai = add i64 %4, -3
  %i.aj = icmp ugt i64 %.0.i.ph.i, %i.ai
  br i1 %i.aj, label %ZSTD_decompressSequences.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 3 ; 5 uses
  switch i32 %i.ag, label %default.unreachable.i [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 0, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.0.i.ph.i
  br label %ZSTDv01_decodeLiteralsBlock.exit

bb.g:                                             ; preds = %bb.e
  %i.am = zext nneg i32 %i.af to i64              ; 4 uses
  %i.an = icmp ult i64 %2, %i.am
  br i1 %i.an, label %ZSTD_decompressSequences.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not60.i = icmp eq i32 %i.af, 0
  br i1 %.not60.i, label %.thread12.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = sub nsw i64 0, %i.am                    ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.r, i64 %i.ao
  %i.aq = load i8, ptr %i.ak, align 1, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ap, i8 %i.aq, i64 %i.am, i1 false)
  br label %.thread12.i

.thread12.i:                                      ; preds = %bb.i, %bb.h
  %.pre-phi.i = phi i64 [ %i.ao, %bb.i ], [ 0, %bb.h ]
  %i.ar = getelementptr inbounds i8, ptr %i.r, i64 %.pre-phi.i
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %ZSTDv01_decodeLiteralsBlock.exit

bb.j:                                             ; preds = %bb.e
  %i.at = icmp samesign ult i64 %.0.i.ph.i, 4
  br i1 %i.at, label %ZSTD_decompressSequences.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.av = load i8, ptr %i.au, align 1, !tbaa !8
  %i.aw = zext i8 %i.av to i64
  %i.ax = load i8, ptr %i.ak, align 1, !tbaa !8
  %i.ay = zext i8 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 8
  %i.ba = or disjoint i64 %i.az, %i.aw
  %i.bb = lshr i8 %i.t, 3
  %i.bc = and i8 %i.bb, 7
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 16
  %i.bf = or disjoint i64 %i.ba, %i.be            ; 5 uses
  %i.bg = icmp ugt i64 %i.bf, %2
  br i1 %i.bg, label %ZSTD_decompressSequences.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = sub nsw i64 0, %i.bf
  %i.bi = getelementptr inbounds i8, ptr %i.r, i64 %i.bh ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 5 ; 2 uses
  %i.bk = add nsw i64 %.0.i.ph.i, -2              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8194) %i.q, i8 0, i64 8194, i1 false)
  store i16 12, ptr %i.q, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 21 uses
  %i.bm = load i8, ptr %i.bj, align 1, !tbaa !8   ; 4 uses
  %i.bn = zext i8 %i.bm to i64                    ; 12 uses
  %i.bo = icmp slt i8 %i.bm, 0
  br i1 %i.bo, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bp = icmp samesign ugt i8 %i.bm, -15
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr [4 x i8], ptr @HUF_readDTable.l, i64 %i.bn
  %i.br = getelementptr i8, ptr %i.bq, i64 -968
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !9
  %i.bt = sext i32 %i.bs to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.o, i8 1, i64 256, i1 false)
  br label %.loopexit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bu = add nsw i64 %i.bn, -127                 ; 5 uses
  %i.bv = add nsw i64 %i.bn, -126
  %i.bw = lshr i64 %i.bv, 1                       ; 2 uses
  %.not99.i.i.i.i = icmp samesign ult i64 %i.bw, %i.bk
  br i1 %.not99.i.i.i.i, label %iter.check, label %HUF_readDTable.exit.thread.i.i.i

iter.check:                                       ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 2)
  %i.by = add nsw i64 %umax, -1
  %i.bz = lshr i64 %i.by, 1
  %i.ca = add nuw i64 %i.bz, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.bu, 7
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check520 = icmp ult i64 %i.bu, 31
  br i1 %min.iters.check520, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cb = and i64 %i.ca, 12
  %n.vec = and i64 %i.ca, -16                     ; 5 uses
  %i.cc = shl i64 %n.vec, 1
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 14
  %wide.load = load <8 x i8>, ptr %i.bx, align 1, !tbaa !8 ; 2 uses
  %wide.load521 = load <8 x i8>, ptr %i.cd, align 1, !tbaa !8 ; 2 uses
  %i.ce = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.cf = lshr <8 x i8> %wide.load521, splat (i8 4)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ch = and <8 x i8> %wide.load, splat (i8 15)
  %i.ci = and <8 x i8> %wide.load521, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.ce, <8 x i8> %i.ch, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.o, align 16, !tbaa !8
  %interleaved.vec522 = shufflevector <8 x i8> %i.cf, <8 x i8> %i.ci, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec522, ptr %i.cg, align 16, !tbaa !8
  %i.cj = icmp eq i64 %n.vec, 16
  br i1 %i.cj, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 30
  %wide.load.1 = load <8 x i8>, ptr %i.ck, align 1, !tbaa !8 ; 2 uses
  %wide.load521.1 = load <8 x i8>, ptr %i.cl, align 1, !tbaa !8 ; 2 uses
  %i.cm = lshr <8 x i8> %wide.load.1, splat (i8 4)
  %i.cn = lshr <8 x i8> %wide.load521.1, splat (i8 4)
  %i.co = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.cq = and <8 x i8> %wide.load.1, splat (i8 15)
  %i.cr = and <8 x i8> %wide.load521.1, splat (i8 15)
  %interleaved.vec.1 = shufflevector <8 x i8> %i.cm, <8 x i8> %i.cq, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.1, ptr %i.co, align 16, !tbaa !8
  %interleaved.vec522.1 = shufflevector <8 x i8> %i.cn, <8 x i8> %i.cr, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec522.1, ptr %i.cp, align 16, !tbaa !8
  %i.cs = icmp eq i64 %n.vec, 32
  br i1 %i.cs, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 38
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 46
  %wide.load.2 = load <8 x i8>, ptr %i.ct, align 1, !tbaa !8 ; 2 uses
  %wide.load521.2 = load <8 x i8>, ptr %i.cu, align 1, !tbaa !8 ; 2 uses
  %i.cv = lshr <8 x i8> %wide.load.2, splat (i8 4)
  %i.cw = lshr <8 x i8> %wide.load521.2, splat (i8 4)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.cz = and <8 x i8> %wide.load.2, splat (i8 15)
  %i.da = and <8 x i8> %wide.load521.2, splat (i8 15)
  %interleaved.vec.2 = shufflevector <8 x i8> %i.cv, <8 x i8> %i.cz, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.2, ptr %i.cx, align 16, !tbaa !8
  %interleaved.vec522.2 = shufflevector <8 x i8> %i.cw, <8 x i8> %i.da, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec522.2, ptr %i.cy, align 16, !tbaa !8
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %.loopexit.thread.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !10

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec523 = and i64 %i.ca, -4                   ; 3 uses
end_hunk_0
begin_hunk_1_@ZSTD_decompressBlock:bb.a
  %i.yf = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !9  ; 2 uses
  %i.yh = icmp ugt i32 %i.yg, 1
  %i.yi = and i32 %i.yg, 1
  %.not102.i.i.i.i = icmp eq i32 %i.yi, 0
  %or.cond.i.i.i.i = and i1 %i.yh, %.not102.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %.preheader109.preheader.i.i.i.i, label %HUF_readDTable.exit.thread.i.i.i

.preheader109.preheader.i.i.i.i:                  ; preds = %bb.cu
  %i.yj = sub nuw nsw i32 33, %i.xq
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.yj to i64
  %i.yk = add nsw i64 %wide.trip.count.i.i.i.i, -1 ; 3 uses
  %xtraiter729 = and i64 %i.yk, 1
  %i.yl = icmp eq i32 %i.xq, 31
  br i1 %i.yl, label %.preheader109.i.i.i.i.epil.preheader, label %.preheader109.preheader.i.i.i.i.new

.preheader109.preheader.i.i.i.i.new:              ; preds = %.preheader109.preheader.i.i.i.i
  %unroll_iter732 = and i64 %i.yk, -2
  br label %.preheader109.i.i.i.i

.preheader.i.i.i.i.unr-lcssa:                     ; preds = %.preheader109.i.i.i.i
  %lcmp.mod730.not = icmp eq i64 %xtraiter729, 0
  br i1 %lcmp.mod730.not, label %.preheader.i.i.i.i, label %.preheader109.i.i.i.i.epil.preheader

.preheader109.i.i.i.i.epil.preheader:             ; preds = %.preheader.i.i.i.i.unr-lcssa, %.preheader109.preheader.i.i.i.i
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 1, %.preheader109.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.1, %.preheader.i.i.i.i.unr-lcssa ]
  %.081190.i.i.i.i.epil.init = phi i32 [ 0, %.preheader109.preheader.i.i.i.i ], [ %i.za, %.preheader.i.i.i.i.unr-lcssa ]
  %lcmp.mod731 = trunc i64 %i.yk to i1
  tail call void @llvm.assume(i1 %lcmp.mod731)
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i.i.i.i.epil.init
  store i32 %.081190.i.i.i.i.epil.init, ptr %i.ym, align 4, !tbaa !9
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.unr-lcssa, %.preheader109.i.i.i.i.epil.preheader
  %i.yn = trunc nuw nsw i32 %i.xr to i8
  %i.yo = add nuw nsw i8 %i.yn, 2
  br label %bb.cv

.preheader109.i.i.i.i:                            ; preds = %.preheader109.i.i.i.i, %.preheader109.preheader.i.i.i.i.new
  %indvars.iv.i.i.i.i = phi i64 [ 1, %.preheader109.preheader.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.1, %.preheader109.i.i.i.i ] ; 4 uses
  %.081190.i.i.i.i = phi i32 [ 0, %.preheader109.preheader.i.i.i.i.new ], [ %i.za, %.preheader109.i.i.i.i ] ; 2 uses
  %niter733 = phi i64 [ 0, %.preheader109.preheader.i.i.i.i.new ], [ %niter733.next.1, %.preheader109.i.i.i.i ]
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !9
  %i.yr = trunc i64 %indvars.iv.i.i.i.i to i32
  %i.ys = add nsw i32 %i.yr, -1
  %i.yt = shl i32 %i.yq, %i.ys
  %i.yu = add i32 %i.yt, %.081190.i.i.i.i         ; 2 uses
  store i32 %.081190.i.i.i.i, ptr %i.yp, align 4, !tbaa !9
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next.i.i.i.i ; 2 uses
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !9
  %i.yx = trunc i64 %indvars.iv.next.i.i.i.i to i32
  %i.yy = add i32 %i.yx, -1
  %i.yz = shl i32 %i.yw, %i.yy
  %i.za = add i32 %i.yz, %i.yu                    ; 2 uses
  store i32 %i.yu, ptr %i.yv, align 4, !tbaa !9
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %niter733.next.1 = add nuw i64 %niter733, 2     ; 2 uses
  %niter733.ncmp.1 = icmp eq i64 %niter733.next.1, %unroll_iter732
  br i1 %niter733.ncmp.1, label %.preheader.i.i.i.i.unr-lcssa, label %.preheader109.i.i.i.i, !llvm.loop !32

bb.cv:                                            ; preds = %._crit_edge194.i.i.i.i, %.preheader.i.i.i.i
  %indvars.iv283.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %indvars.iv.next284.i.i.i.i, %._crit_edge194.i.i.i.i ] ; 3 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv283.i.i.i.i
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !8   ; 3 uses
  %i.zd = zext nneg i8 %i.zc to i32
  %i.ze = shl nuw i32 1, %i.zd
  %i.zf = ashr i32 %i.ze, 1
  %i.zg = trunc i64 %indvars.iv283.i.i.i.i to i8  ; 3 uses
  %i.zh = sub i8 %i.yo, %i.zc                     ; 3 uses
  %i.zi = zext i8 %i.zc to i64
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.zi ; 2 uses
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !9  ; 3 uses
  %i.zl = add i32 %i.zf, %i.zk                    ; 3 uses
  %i.zm = icmp ult i32 %i.zk, %i.zl
  br i1 %i.zm, label %iter.check545, label %._crit_edge194.i.i.i.i

iter.check545:                                    ; preds = %bb.cv
  %i.zn = zext i32 %i.zk to i64                   ; 6 uses
  %wide.trip.count281.i.i.i.i = zext i32 %i.zl to i64 ; 2 uses
  %i.zo = sub nsw i64 %wide.trip.count281.i.i.i.i, %i.zn ; 7 uses
  %min.iters.check530 = icmp ult i64 %i.zo, 4
  br i1 %min.iters.check530, label %.lr.ph193.i.i.i.i.preheader, label %vector.main.loop.iter.check531

vector.main.loop.iter.check531:                   ; preds = %iter.check545
  %min.iters.check532 = icmp ult i64 %i.zo, 16
  br i1 %min.iters.check532, label %vec.epilog.ph549, label %vector.ph533

vector.ph533:                                     ; preds = %vector.main.loop.iter.check531
  %i.zp = and i64 %i.zo, 12
  %n.vec534 = and i64 %i.zo, -16                  ; 4 uses
  %i.zq = add nsw i64 %n.vec534, %i.zn
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.zg, i64 0
  %broadcast.splatinsert535 = insertelement <8 x i8> poison, i8 %i.zh, i64 0
  %interleaved.vec539 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %broadcast.splatinsert535, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  br label %vector.body537

vector.body537:                                   ; preds = %vector.body537, %vector.ph533
  %index538 = phi i64 [ 0, %vector.ph533 ], [ %index.next541, %vector.body537 ] ; 2 uses
  %i.zr = add nuw i64 %index538, %i.zn            ; 2 uses
  %i.zs = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.zr
  %i.zt = getelementptr [2 x i8], ptr %i.bl, i64 %i.zr
  %i.zu = getelementptr i8, ptr %i.zt, i64 16
  store <16 x i8> %interleaved.vec539, ptr %i.zs, align 2, !tbaa !8
  store <16 x i8> %interleaved.vec539, ptr %i.zu, align 2, !tbaa !8
  %index.next541 = add nuw i64 %index538, 16      ; 2 uses
  %i.zv = icmp eq i64 %index.next541, %n.vec534
  br i1 %i.zv, label %middle.block542, label %vector.body537, !llvm.loop !33

middle.block542:                                  ; preds = %vector.body537
  %cmp.n543 = icmp eq i64 %i.zo, %n.vec534
  br i1 %cmp.n543, label %._crit_edge194.i.i.i.i, label %vec.epilog.iter.check547

vec.epilog.iter.check547:                         ; preds = %middle.block542
  %min.epilog.iters.check548 = icmp eq i64 %i.zp, 0
  br i1 %min.epilog.iters.check548, label %.lr.ph193.i.i.i.i.preheader, label %vec.epilog.ph549, !prof !10

vec.epilog.ph549:                                 ; preds = %vector.main.loop.iter.check531, %vec.epilog.iter.check547
  %vec.epilog.resume.val544 = phi i64 [ %n.vec534, %vec.epilog.iter.check547 ], [ 0, %vector.main.loop.iter.check531 ]
  %n.vec550 = and i64 %i.zo, -4                   ; 3 uses
  %i.zw = add nsw i64 %n.vec550, %i.zn
  %broadcast.splatinsert551 = insertelement <4 x i8> poison, i8 %i.zg, i64 0
  %broadcast.splatinsert553 = insertelement <4 x i8> poison, i8 %i.zh, i64 0
  %invariant.gep = getelementptr [2 x i8], ptr %i.bl, i64 %i.zn
  %interleaved.vec557 = shufflevector <4 x i8> %broadcast.splatinsert551, <4 x i8> %broadcast.splatinsert553, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  br label %vec.epilog.vector.body555

vec.epilog.vector.body555:                        ; preds = %vec.epilog.vector.body555, %vec.epilog.ph549
  %index556 = phi i64 [ %vec.epilog.resume.val544, %vec.epilog.ph549 ], [ %index.next558, %vec.epilog.vector.body555 ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index556
  store <8 x i8> %interleaved.vec557, ptr %gep, align 2, !tbaa !8
  %index.next558 = add nuw i64 %index556, 4       ; 2 uses
  %i.zx = icmp eq i64 %index.next558, %n.vec550
  br i1 %i.zx, label %vec.epilog.middle.block559, label %vec.epilog.vector.body555, !llvm.loop !34

vec.epilog.middle.block559:                       ; preds = %vec.epilog.vector.body555
  %cmp.n560 = icmp eq i64 %i.zo, %n.vec550
  br i1 %cmp.n560, label %._crit_edge194.i.i.i.i, label %.lr.ph193.i.i.i.i.preheader

.lr.ph193.i.i.i.i.preheader:                      ; preds = %iter.check545, %vec.epilog.iter.check547, %vec.epilog.middle.block559
  %indvars.iv277.i.i.i.i.ph = phi i64 [ %i.zn, %iter.check545 ], [ %i.zq, %vec.epilog.iter.check547 ], [ %i.zw, %vec.epilog.middle.block559 ]
  br label %.lr.ph193.i.i.i.i

.lr.ph193.i.i.i.i:                                ; preds = %.lr.ph193.i.i.i.i.preheader, %.lr.ph193.i.i.i.i
  %indvars.iv277.i.i.i.i = phi i64 [ %indvars.iv.next278.i.i.i.i, %.lr.ph193.i.i.i.i ], [ %indvars.iv277.i.i.i.i.ph, %.lr.ph193.i.i.i.i.preheader ] ; 2 uses
  %i.zy = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %indvars.iv277.i.i.i.i ; 2 uses
  store i8 %i.zg, ptr %i.zy, align 2, !tbaa !8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.zy, i64 1
  store i8 %i.zh, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1, !tbaa !8
  %indvars.iv.next278.i.i.i.i = add nuw nsw i64 %indvars.iv277.i.i.i.i, 1 ; 2 uses
  %exitcond282.not.i.i.i.i = icmp eq i64 %indvars.iv.next278.i.i.i.i, %wide.trip.count281.i.i.i.i
  br i1 %exitcond282.not.i.i.i.i, label %._crit_edge194.i.i.i.i, label %.lr.ph193.i.i.i.i, !llvm.loop !35

._crit_edge194.i.i.i.i:                           ; preds = %.lr.ph193.i.i.i.i, %middle.block542, %vec.epilog.middle.block559, %bb.cv
  store i32 %i.zl, ptr %i.zj, align 4, !tbaa !9
  %indvars.iv.next284.i.i.i.i = add i64 %indvars.iv283.i.i.i.i, 1 ; 2 uses
  %i.zz = and i64 %indvars.iv.next284.i.i.i.i, 4294967295
  %.not104.i.i.i.i = icmp ult i64 %.084337.i.i.i.i, %i.zz
  br i1 %.not104.i.i.i.i, label %HUF_readDTable.exit.i.i.i, label %bb.cv, !llvm.loop !36

HUF_readDTable.exit.thread.i.i.i:                 ; preds = %.lr.ph188.i.i.i.i, %bb.cu, %bb.ct, %bb.cs, %._crit_edge.i.i.i.i, %.loopexit.i.i.i.i, %FSE_decompress.exit.i.i.i.i, %FSE_decompress.exit.thread.i.i.i.i, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #16
  br label %.sink.split.i.i

HUF_readDTable.exit.i.i.i:                        ; preds = %._crit_edge194.i.i.i.i
  %i.aaa = add nuw nsw i64 %.085335.i.i.i.i, 1    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #16
  %.not17.i.i.i = icmp ult i64 %i.aaa, %i.bk
  br i1 %.not17.i.i.i, label %bb.cw, label %.sink.split.i.i

bb.cw:                                            ; preds = %HUF_readDTable.exit.i.i.i
  %i.aab = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.aaa ; 12 uses
  %i.aac = sub nuw nsw i64 %i.bk, %i.aaa          ; 3 uses
  %i.aad = icmp ult i64 %i.aac, 6
  br i1 %i.aad, label %.sink.split.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.aae = icmp samesign ult i64 %i.bf, 15
  %i.aaf = getelementptr inbounds i8, ptr %i.r, i64 -15
  %i.aag = select i1 %i.aae, ptr %i.bi, ptr %i.aaf ; 2 uses
  %i.aah = zext nneg i16 %i.xt to i32             ; 2 uses
  %.val123.i.i.i.i = load i16, ptr %i.aab, align 1 ; 5 uses
  %i.aai = zext i16 %.val123.i.i.i.i to i64       ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aab, i64 2
  %.val122.i.i.i.i = load i16, ptr %i.aaj, align 1 ; 5 uses
  %i.aak = zext i16 %.val122.i.i.i.i to i64       ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aab, i64 4
  %.val.i.i.i.i = load i16, ptr %i.aal, align 1   ; 5 uses
  %i.aam = zext i16 %.val.i.i.i.i to i64          ; 2 uses
  %i.aan = add nsw i64 %i.aac, -6
  %i.aao = add nuw nsw i64 %i.aak, %i.aai
  %i.aap = add nuw nsw i64 %i.aao, %i.aam         ; 2 uses
  %i.aaq = sub nsw i64 %i.aan, %i.aap
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aab, i64 6 ; 12 uses
  %i.aas = getelementptr i8, ptr %i.aar, i64 %i.aai ; 13 uses
  %i.aat = getelementptr i8, ptr %i.aas, i64 %i.aak ; 16 uses
  %i.aau = getelementptr i8, ptr %i.aat, i64 %i.aam ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.aav = add nuw nsw i64 %i.aap, 6
  %.not.i18.i.i.i = icmp uge i64 %i.aav, %i.aac
  %i.aaw = icmp eq i16 %.val123.i.i.i.i, 0
  %or.cond.i19.i.i.i = or i1 %i.aaw, %.not.i18.i.i.i
  br i1 %or.cond.i19.i.i.i, label %HUF_decompress.exit.thread257.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.aax = icmp ugt i16 %.val123.i.i.i.i, 7
  br i1 %i.aax, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.aay = getelementptr i8, ptr %i.aas, i64 -1
  %i.aaz = load i8, ptr %i.aay, align 1, !tbaa !8 ; 2 uses
  %i.aba = icmp eq i8 %i.aaz, 0
  br i1 %i.aba, label %HUF_decompress.exit.thread257.i.i, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.cz
  %i.abb = getelementptr inbounds i8, ptr %i.aas, i64 -8 ; 2 uses
  %.val.i.i.i.i.i = load i64, ptr %i.abb, align 1
  %i.abc = zext i8 %i.aaz to i32
  %i.abd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.abc, i1 true)
  %i.abe = xor i32 %i.abd, 31
  %i.abf = sub nuw nsw i32 8, %i.abe
  br label %bb.di

bb.da:                                            ; preds = %bb.cy
  %i.abg = load i8, ptr %i.aar, align 1, !tbaa !8
  %i.abh = zext i8 %i.abg to i64                  ; 7 uses
  switch i16 %.val123.i.i.i.i, label %bb.dh [
    i16 7, label %bb.db
    i16 6, label %bb.dc
    i16 5, label %bb.dd
    i16 4, label %bb.de
    i16 3, label %bb.df
    i16 2, label %bb.dg
  ]

bb.db:                                            ; preds = %bb.da
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aab, i64 12
  %i.abj = load i8, ptr %i.abi, align 1, !tbaa !8
  %i.abk = zext i8 %i.abj to i64
  %i.abl = shl nuw nsw i64 %i.abk, 48
  %i.abm = or disjoint i64 %i.abl, %i.abh
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.abn = phi i64 [ %i.abm, %bb.db ], [ %i.abh, %bb.da ]
  %i.abo = getelementptr inbounds nuw i8, ptr %i.aab, i64 11
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !8
  %i.abq = zext i8 %i.abp to i64
  %i.abr = shl nuw nsw i64 %i.abq, 40
  %i.abs = add nuw nsw i64 %i.abr, %i.abn
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.da
  %i.abt = phi i64 [ %i.abs, %bb.dc ], [ %i.abh, %bb.da ]
  %i.abu = getelementptr inbounds nuw i8, ptr %i.aab, i64 10
  %i.abv = load i8, ptr %i.abu, align 1, !tbaa !8
  %i.abw = zext i8 %i.abv to i64
  %i.abx = shl nuw nsw i64 %i.abw, 32
  %i.aby = add nuw nsw i64 %i.abx, %i.abt
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.da
  %i.abz = phi i64 [ %i.aby, %bb.dd ], [ %i.abh, %bb.da ]
  %i.aca = getelementptr inbounds nuw i8, ptr %i.aab, i64 9
  %i.acb = load i8, ptr %i.aca, align 1, !tbaa !8
  %i.acc = zext i8 %i.acb to i64
  %i.acd = shl nuw nsw i64 %i.acc, 24
  %i.ace = add nuw nsw i64 %i.acd, %i.abz
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.da
  %i.acf = phi i64 [ %i.ace, %bb.de ], [ %i.abh, %bb.da ]
  %i.acg = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  %i.ach = load i8, ptr %i.acg, align 1, !tbaa !8
  %i.aci = zext i8 %i.ach to i64
  %i.acj = shl nuw nsw i64 %i.aci, 16
  %i.ack = add nuw nsw i64 %i.acj, %i.acf
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.da
  %i.acl = phi i64 [ %i.ack, %bb.df ], [ %i.abh, %bb.da ]
  %i.acm = getelementptr inbounds nuw i8, ptr %i.aab, i64 7
  %i.acn = load i8, ptr %i.acm, align 1, !tbaa !8
  %i.aco = zext i8 %i.acn to i64
  %i.acp = shl nuw nsw i64 %i.aco, 8
  %i.acq = add nuw nsw i64 %i.acp, %i.acl
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.da
  %.sroa.0218.1.i.i.i.i = phi i64 [ %i.abh, %bb.da ], [ %i.acq, %bb.dg ]
  %i.acr = getelementptr i8, ptr %i.aas, i64 -1
  %i.acs = load i8, ptr %i.acr, align 1, !tbaa !8 ; 2 uses
  %i.act = icmp eq i8 %i.acs, 0
  br i1 %i.act, label %HUF_decompress.exit.thread257.i.i, label %.thread48.i.i.i.i.i

.thread48.i.i.i.i.i:                              ; preds = %bb.dh
  %i.acu = zext i8 %i.acs to i32
  %i.acv = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.acu, i1 true)
  %i.acw = shl nuw nsw i16 %.val123.i.i.i.i, 3
  %i.acx = zext nneg i16 %i.acw to i32
  %reass.sub134 = sub nsw i32 %i.acv, %i.acx
  %i.acy = add nsw i32 %reass.sub134, 41
  br label %bb.di

bb.di:                                            ; preds = %.thread48.i.i.i.i.i, %.thread.i.i.i.i.i
  %.sroa.17.1.i.i.i.i = phi i32 [ %i.abf, %.thread.i.i.i.i.i ], [ %i.acy, %.thread48.i.i.i.i.i ] ; 2 uses
  %.sroa.0218.2.i.i.i.i = phi i64 [ %.val.i.i.i.i.i, %.thread.i.i.i.i.i ], [ %.sroa.0218.1.i.i.i.i, %.thread48.i.i.i.i.i ] ; 2 uses
  %.sroa.31228.1.i.i.i.i = phi ptr [ %i.abb, %.thread.i.i.i.i.i ], [ %i.aar, %.thread48.i.i.i.i.i ] ; 2 uses
  %i.acz = icmp eq i16 %.val122.i.i.i.i, 0
  br i1 %i.acz, label %HUF_decompress.exit.thread257.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ada = icmp ugt i16 %.val122.i.i.i.i, 7
  %i.adb = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.aas, ptr %i.adb, align 8, !tbaa !37
  br i1 %i.ada, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.adc = getelementptr inbounds i8, ptr %i.aat, i64 -8 ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.adc, ptr %i.add, align 8, !tbaa !42
  %.val.i126.i.i.i.i = load i64, ptr %i.adc, align 1 ; 2 uses
  store i64 %.val.i126.i.i.i.i, ptr %5, align 8, !tbaa !43
  %i.ade = lshr i64 %.val.i126.i.i.i.i, 56        ; 2 uses
  %i.adf = icmp eq i64 %i.ade, 0
  br i1 %i.adf, label %HUF_decompress.exit.thread257.i.i, label %.thread.i127.i.i.i.i

.thread.i127.i.i.i.i:                             ; preds = %bb.dk
  %i.adg = trunc nuw nsw i64 %i.ade to i32
  %i.adh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.adg, i1 true)
  %i.adi = xor i32 %i.adh, 31
  %i.adj = sub nuw nsw i32 8, %i.adi
  %i.adk = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.adj, ptr %i.adk, align 8, !tbaa !44
  br label %bb.dt

bb.dl:                                            ; preds = %bb.dj
  %i.adl = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.aas, ptr %i.adl, align 8, !tbaa !42
  %i.adm = load i8, ptr %i.aas, align 1, !tbaa !8
  %i.adn = zext i8 %i.adm to i64                  ; 7 uses
  store i64 %i.adn, ptr %5, align 8, !tbaa !43
  switch i16 %.val122.i.i.i.i, label %bb.ds [
    i16 7, label %bb.dm
    i16 6, label %bb.dn
    i16 5, label %bb.do
    i16 4, label %bb.dp
    i16 3, label %bb.dq
    i16 2, label %bb.dr
  ]

bb.dm:                                            ; preds = %bb.dl
  %i.ado = getelementptr inbounds nuw i8, ptr %i.aas, i64 6
  %i.adp = load i8, ptr %i.ado, align 1, !tbaa !8
  %i.adq = zext i8 %i.adp to i64
  %i.adr = shl nuw nsw i64 %i.adq, 48
  %i.ads = or disjoint i64 %i.adr, %i.adn
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.adt = phi i64 [ %i.ads, %bb.dm ], [ %i.adn, %bb.dl ]
  %i.adu = getelementptr inbounds nuw i8, ptr %i.aas, i64 5
  %i.adv = load i8, ptr %i.adu, align 1, !tbaa !8
  %i.adw = zext i8 %i.adv to i64
  %i.adx = shl nuw nsw i64 %i.adw, 40
  %i.ady = add nuw nsw i64 %i.adx, %i.adt
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dl
  %i.adz = phi i64 [ %i.ady, %bb.dn ], [ %i.adn, %bb.dl ]
  %i.aea = getelementptr inbounds nuw i8, ptr %i.aas, i64 4
  %i.aeb = load i8, ptr %i.aea, align 1, !tbaa !8
  %i.aec = zext i8 %i.aeb to i64
  %i.aed = shl nuw nsw i64 %i.aec, 32
  %i.aee = add nuw nsw i64 %i.aed, %i.adz
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dl
  %i.aef = phi i64 [ %i.aee, %bb.do ], [ %i.adn, %bb.dl ]
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aas, i64 3
  %i.aeh = load i8, ptr %i.aeg, align 1, !tbaa !8
  %i.aei = zext i8 %i.aeh to i64
  %i.aej = shl nuw nsw i64 %i.aei, 24
  %i.aek = add nuw nsw i64 %i.aej, %i.aef
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.dl
  %i.ael = phi i64 [ %i.aek, %bb.dp ], [ %i.adn, %bb.dl ]
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aas, i64 2
  %i.aen = load i8, ptr %i.aem, align 1, !tbaa !8
  %i.aeo = zext i8 %i.aen to i64
  %i.aep = shl nuw nsw i64 %i.aeo, 16
  %i.aeq = add nuw nsw i64 %i.aep, %i.ael
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dl
  %i.aer = phi i64 [ %i.aeq, %bb.dq ], [ %i.adn, %bb.dl ]
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aas, i64 1
  %i.aet = load i8, ptr %i.aes, align 1, !tbaa !8
  %i.aeu = zext i8 %i.aet to i64
  %i.aev = shl nuw nsw i64 %i.aeu, 8
  %i.aew = add nuw nsw i64 %i.aev, %i.aer
  store i64 %i.aew, ptr %5, align 8, !tbaa !43
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dl
  %i.aex = getelementptr i8, ptr %i.aat, i64 -1
  %i.aey = load i8, ptr %i.aex, align 1, !tbaa !8 ; 2 uses
  %i.aez = icmp eq i8 %i.aey, 0
  br i1 %i.aez, label %HUF_decompress.exit.thread257.i.i, label %.thread48.i124.i.i.i.i

.thread48.i124.i.i.i.i:                           ; preds = %bb.ds
  %i.afa = zext i8 %i.aey to i32
  %i.afb = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.afa, i1 true)
  %i.afc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.afd = shl nuw nsw i16 %.val122.i.i.i.i, 3
  %i.afe = zext nneg i16 %i.afd to i32
  %reass.sub135 = sub nsw i32 %i.afb, %i.afe
  %i.aff = add nsw i32 %reass.sub135, 41
  store i32 %i.aff, ptr %i.afc, align 8, !tbaa !44
  br label %bb.dt

bb.dt:                                            ; preds = %.thread48.i124.i.i.i.i, %.thread.i127.i.i.i.i
  %i.afg = icmp eq i16 %.val.i.i.i.i, 0
  br i1 %i.afg, label %HUF_decompress.exit.thread257.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.afh = icmp ugt i16 %.val.i.i.i.i, 7
  br i1 %i.afh, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.afi = getelementptr i8, ptr %i.aau, i64 -1
  %i.afj = load i8, ptr %i.afi, align 1, !tbaa !8 ; 2 uses
  %i.afk = icmp eq i8 %i.afj, 0
  br i1 %i.afk, label %HUF_decompress.exit.thread257.i.i, label %.thread.i132.i.i.i.i

.thread.i132.i.i.i.i:                             ; preds = %bb.dv
  %i.afl = getelementptr inbounds i8, ptr %i.aau, i64 -8 ; 2 uses
  %.val.i131.i.i.i.i = load i64, ptr %i.afl, align 1
  %i.afm = zext i8 %i.afj to i32
  %i.afn = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.afm, i1 true)
  %i.afo = xor i32 %i.afn, 31
  %i.afp = sub nuw nsw i32 8, %i.afo
  br label %bb.ee

bb.dw:                                            ; preds = %bb.du
  %i.afq = load i8, ptr %i.aat, align 1, !tbaa !8
  %i.afr = zext i8 %i.afq to i64                  ; 7 uses
  switch i16 %.val.i.i.i.i, label %bb.ed [
    i16 7, label %bb.dx
    i16 6, label %bb.dy
    i16 5, label %bb.dz
    i16 4, label %bb.ea
    i16 3, label %bb.eb
    i16 2, label %bb.ec
  ]

bb.dx:                                            ; preds = %bb.dw
  %i.afs = getelementptr inbounds nuw i8, ptr %i.aat, i64 6
  %i.aft = load i8, ptr %i.afs, align 1, !tbaa !8
  %i.afu = zext i8 %i.aft to i64
  %i.afv = shl nuw nsw i64 %i.afu, 48
  %i.afw = or disjoint i64 %i.afv, %i.afr
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.afx = phi i64 [ %i.afw, %bb.dx ], [ %i.afr, %bb.dw ]
  %i.afy = getelementptr inbounds nuw i8, ptr %i.aat, i64 5
  %i.afz = load i8, ptr %i.afy, align 1, !tbaa !8
  %i.aga = zext i8 %i.afz to i64
  %i.agb = shl nuw nsw i64 %i.aga, 40
  %i.agc = add nuw nsw i64 %i.agb, %i.afx
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dw
  %i.agd = phi i64 [ %i.agc, %bb.dy ], [ %i.afr, %bb.dw ]
  %i.age = getelementptr inbounds nuw i8, ptr %i.aat, i64 4
  %i.agf = load i8, ptr %i.age, align 1, !tbaa !8
  %i.agg = zext i8 %i.agf to i64
  %i.agh = shl nuw nsw i64 %i.agg, 32
  %i.agi = add nuw nsw i64 %i.agh, %i.agd
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dw
  %i.agj = phi i64 [ %i.agi, %bb.dz ], [ %i.afr, %bb.dw ]
  %i.agk = getelementptr inbounds nuw i8, ptr %i.aat, i64 3
  %i.agl = load i8, ptr %i.agk, align 1, !tbaa !8
  %i.agm = zext i8 %i.agl to i64
  %i.agn = shl nuw nsw i64 %i.agm, 24
  %i.ago = add nuw nsw i64 %i.agn, %i.agj
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dw
  %i.agp = phi i64 [ %i.ago, %bb.ea ], [ %i.afr, %bb.dw ]
  %i.agq = getelementptr inbounds nuw i8, ptr %i.aat, i64 2
  %i.agr = load i8, ptr %i.agq, align 1, !tbaa !8
  %i.ags = zext i8 %i.agr to i64
  %i.agt = shl nuw nsw i64 %i.ags, 16
  %i.agu = add nuw nsw i64 %i.agt, %i.agp
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.dw
  %i.agv = phi i64 [ %i.agu, %bb.eb ], [ %i.afr, %bb.dw ]
  %i.agw = getelementptr inbounds nuw i8, ptr %i.aat, i64 1
  %i.agx = load i8, ptr %i.agw, align 1, !tbaa !8
  %i.agy = zext i8 %i.agx to i64
  %i.agz = shl nuw nsw i64 %i.agy, 8
  %i.aha = add nuw nsw i64 %i.agz, %i.agv
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.dw
  %.sroa.0209.1.i.i.i.i = phi i64 [ %i.afr, %bb.dw ], [ %i.aha, %bb.ec ]
  %i.ahb = getelementptr i8, ptr %i.aau, i64 -1
  %i.ahc = load i8, ptr %i.ahb, align 1, !tbaa !8 ; 2 uses
  %i.ahd = icmp eq i8 %i.ahc, 0
  br i1 %i.ahd, label %HUF_decompress.exit.thread257.i.i, label %.thread48.i129.i.i.i.i

.thread48.i129.i.i.i.i:                           ; preds = %bb.ed
  %i.ahe = zext i8 %i.ahc to i32
  %i.ahf = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ahe, i1 true)
  %i.ahg = shl nuw nsw i16 %.val.i.i.i.i, 3
  %i.ahh = zext nneg i16 %i.ahg to i32
  %reass.sub136 = sub nsw i32 %i.ahf, %i.ahh
  %i.ahi = add nsw i32 %reass.sub136, 41
  br label %bb.ee

bb.ee:                                            ; preds = %.thread48.i129.i.i.i.i, %.thread.i132.i.i.i.i
  %.sroa.29217.1.i.i.i.i = phi ptr [ %i.afl, %.thread.i132.i.i.i.i ], [ %i.aat, %.thread48.i129.i.i.i.i ]
  %.sroa.16.1.i.i.i.i = phi i32 [ %i.afp, %.thread.i132.i.i.i.i ], [ %i.ahi, %.thread48.i129.i.i.i.i ]
  %.sroa.0209.2.i.i.i.i = phi i64 [ %.val.i131.i.i.i.i, %.thread.i132.i.i.i.i ], [ %.sroa.0209.1.i.i.i.i, %.thread48.i129.i.i.i.i ]
  %i.ahj = call fastcc i64 @FSE_initDStream(ptr noundef %6, ptr noundef nonnull %i.aau, i64 noundef %i.aaq)
  %i.ahk = icmp ult i64 %i.ahj, -7
  br i1 %i.ahk, label %bb.ef, label %HUF_decompress.exit.thread257.i.i

bb.ef:                                            ; preds = %bb.ee
  %i.ahl = call fastcc i32 @FSE_reloadDStream(ptr noundef %5) ; 2 uses
  %i.ahm = icmp samesign ult i32 %i.ahl, 2
  %i.ahn = icmp ult ptr %i.bi, %i.aag
  %i.aho = select i1 %i.ahm, i1 %i.ahn, i1 false
  br i1 %i.aho, label %.lr.ph.i23.i.i.i, label %._crit_edge.i21.i.i.i

.lr.ph.i23.i.i.i:                                 ; preds = %bb.ef
  %.promoted261.i.i.i.i = load i64, ptr %6, align 8
  %.promoted.i.i.i.i = load i64, ptr %5, align 8
  %i.ahp = sub nsw i32 0, %i.aah
  %i.ahq = and i32 %i.ahp, 63
  %i.ahr = zext nneg i32 %i.ahq to i64            ; 16 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.aat, i64 8
  %i.ahw = ptrtoint ptr %i.aat to i64
  %i.ahx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ahz = load ptr, ptr %i.ahy, align 8          ; 4 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 8
  %i.aib = ptrtoint ptr %i.ahz to i64
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aab, i64 14
  %i.aid = ptrtoint ptr %i.aar to i64
  %.promoted277.i.i.i.i = load i32, ptr %i.ahs, align 8, !tbaa !44
  %.promoted280.i.i.i.i = load i32, ptr %i.aht, align 8, !tbaa !44
  %.promoted283.i.i.i.i = load ptr, ptr %i.ahu, align 8
  %.promoted284.i.i.i.i = load ptr, ptr %i.ahx, align 8
  %i.aie = load ptr, ptr %i.adb, align 8          ; 4 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 8
  %i.aig = ptrtoint ptr %i.aie to i64
  br label %bb.eg

bb.eg:                                            ; preds = %FSE_reloadDStream.exit192.i.i.i.i, %.lr.ph.i23.i.i.i
  %i.aih = phi ptr [ %.promoted284.i.i.i.i, %.lr.ph.i23.i.i.i ], [ %i.arn, %FSE_reloadDStream.exit192.i.i.i.i ] ; 8 uses
  %i.aii = phi ptr [ %.promoted283.i.i.i.i, %.lr.ph.i23.i.i.i ], [ %i.apx, %FSE_reloadDStream.exit192.i.i.i.i ] ; 8 uses
  %.val7.i140282.i.i.i.i = phi i32 [ %.promoted280.i.i.i.i, %.lr.ph.i23.i.i.i ], [ %.val7.i140281.i.i.i.i, %FSE_reloadDStream.exit192.i.i.i.i ] ; 2 uses
  %.val7.i136279.i.i.i.i = phi i32 [ %.promoted277.i.i.i.i, %.lr.ph.i23.i.i.i ], [ %.val7.i136278.i.i.i.i, %FSE_reloadDStream.exit192.i.i.i.i ] ; 2 uses
  %.0112272.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i23.i.i.i ], [ %i.apc, %FSE_reloadDStream.exit192.i.i.i.i ] ; 17 uses
  %.sroa.0209.0271.i.i.i.i = phi i64 [ %.sroa.0209.2.i.i.i.i, %.lr.ph.i23.i.i.i ], [ %.sroa.0209.3.i.i.i.i, %FSE_reloadDStream.exit192.i.i.i.i ] ; 6 uses
  %.sroa.16.0270.i.i.i.i = phi i32 [ %.sroa.16.1.i.i.i.i, %.lr.ph.i23.i.i.i ], [ %.sroa.16.2.i.i.i.i, %FSE_reloadDStream.exit192.i.i.i.i ] ; 2 uses
  %.sroa.31228.0269.i.i.i.i = phi ptr [ %.sroa.31228.1.i.i.i.i, %.lr.ph.i23.i.i.i ], [ %.sroa.31228.2.i.i.i.i, %FSE_reloadDStream.exit192.i.i.i.i ] ; 7 uses
  %.sroa.29217.0268.i.i.i.i = phi ptr [ %.sroa.29217.1.i.i.i.i, %.lr.ph.i23.i.i.i ], [ %.sroa.29217.2.i.i.i.i, %FSE_reloadDStream.exit192.i.i.i.i ] ; 7 uses
  %.sroa.0218.0267.i.i.i.i = phi i64 [ %.sroa.0218.2.i.i.i.i, %.lr.ph.i23.i.i.i ], [ %.sroa.0218.3.i.i.i.i, %FSE_reloadDStream.exit192.i.i.i.i ] ; 6 uses
  %.sroa.17.0266.i.i.i.i = phi i32 [ %.sroa.17.1.i.i.i.i, %.lr.ph.i23.i.i.i ], [ %.sroa.17.2.i.i.i.i, %FSE_reloadDStream.exit192.i.i.i.i ] ; 2 uses
  %.val.i165260265.i.i.i.i = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.i23.i.i.i ], [ %.val.i165259.i.i.i.i, %FSE_reloadDStream.exit192.i.i.i.i ] ; 6 uses
  %.val.i180263264.i.i.i.i = phi i64 [ %.promoted261.i.i.i.i, %.lr.ph.i23.i.i.i ], [ %.val.i180262.i.i.i.i, %FSE_reloadDStream.exit192.i.i.i.i ] ; 6 uses
  %i.aij = and i32 %.sroa.17.0266.i.i.i.i, 63
  %i.aik = zext nneg i32 %i.aij to i64
  %i.ail = shl i64 %.sroa.0218.0267.i.i.i.i, %i.aik
  %i.aim = lshr i64 %i.ail, %i.ahr
  %i.ain = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.aim ; 2 uses
  %i.aio = load i8, ptr %i.ain, align 2, !tbaa !45
  %i.aip = getelementptr inbounds nuw i8, ptr %i.ain, i64 1
  %i.aiq = load i8, ptr %i.aip, align 1, !tbaa !47
  %i.air = zext i8 %i.aiq to i32
  %i.ais = add i32 %.sroa.17.0266.i.i.i.i, %i.air ; 2 uses
  store i8 %i.aio, ptr %.0112272.i.i.i.i, align 1, !tbaa !8
  %i.ait = and i32 %.val7.i136279.i.i.i.i, 63
  %i.aiu = zext nneg i32 %i.ait to i64
  %i.aiv = shl i64 %.val.i165260265.i.i.i.i, %i.aiu
  %i.aiw = lshr i64 %i.aiv, %i.ahr
  %i.aix = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.aiw ; 2 uses
  %i.aiy = load i8, ptr %i.aix, align 2, !tbaa !45
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aix, i64 1
  %i.aja = load i8, ptr %i.aiz, align 1, !tbaa !47
  %i.ajb = zext i8 %i.aja to i32
  %i.ajc = add i32 %.val7.i136279.i.i.i.i, %i.ajb ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 1
  store i8 %i.aiy, ptr %i.ajd, align 1, !tbaa !8
  %i.aje = and i32 %.sroa.16.0270.i.i.i.i, 63
  %i.ajf = zext nneg i32 %i.aje to i64
  %i.ajg = shl i64 %.sroa.0209.0271.i.i.i.i, %i.ajf
  %i.ajh = lshr i64 %i.ajg, %i.ahr
  %i.aji = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.ajh ; 2 uses
  %i.ajj = load i8, ptr %i.aji, align 2, !tbaa !45
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aji, i64 1
  %i.ajl = load i8, ptr %i.ajk, align 1, !tbaa !47
  %i.ajm = zext i8 %i.ajl to i32
  %i.ajn = add i32 %.sroa.16.0270.i.i.i.i, %i.ajm ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 2
  store i8 %i.ajj, ptr %i.ajo, align 1, !tbaa !8
  %i.ajp = and i32 %.val7.i140282.i.i.i.i, 63
  %i.ajq = zext nneg i32 %i.ajp to i64
  %i.ajr = shl i64 %.val.i180263264.i.i.i.i, %i.ajq
  %i.ajs = lshr i64 %i.ajr, %i.ahr
  %i.ajt = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.ajs ; 2 uses
  %i.aju = load i8, ptr %i.ajt, align 2, !tbaa !45
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajt, i64 1
  %i.ajw = load i8, ptr %i.ajv, align 1, !tbaa !47
  %i.ajx = zext i8 %i.ajw to i32
  %i.ajy = add i32 %.val7.i140282.i.i.i.i, %i.ajx ; 2 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 3
  store i8 %i.aju, ptr %i.ajz, align 1, !tbaa !8
  %i.aka = and i32 %i.ais, 63
  %i.akb = zext nneg i32 %i.aka to i64
  %i.akc = shl i64 %.sroa.0218.0267.i.i.i.i, %i.akb
  %i.akd = lshr i64 %i.akc, %i.ahr
  %i.ake = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.akd ; 2 uses
  %i.akf = load i8, ptr %i.ake, align 2, !tbaa !45
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ake, i64 1
  %i.akh = load i8, ptr %i.akg, align 1, !tbaa !47
  %i.aki = zext i8 %i.akh to i32
  %i.akj = add i32 %i.ais, %i.aki                 ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 4
  store i8 %i.akf, ptr %i.akk, align 1, !tbaa !8
  %i.akl = and i32 %i.ajc, 63
  %i.akm = zext nneg i32 %i.akl to i64
  %i.akn = shl i64 %.val.i165260265.i.i.i.i, %i.akm
  %i.ako = lshr i64 %i.akn, %i.ahr
  %i.akp = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.ako ; 2 uses
  %i.akq = load i8, ptr %i.akp, align 2, !tbaa !45
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akp, i64 1
  %i.aks = load i8, ptr %i.akr, align 1, !tbaa !47
  %i.akt = zext i8 %i.aks to i32
  %i.aku = add i32 %i.ajc, %i.akt                 ; 2 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 5
  store i8 %i.akq, ptr %i.akv, align 1, !tbaa !8
  %i.akw = and i32 %i.ajn, 63
  %i.akx = zext nneg i32 %i.akw to i64
  %i.aky = shl i64 %.sroa.0209.0271.i.i.i.i, %i.akx
  %i.akz = lshr i64 %i.aky, %i.ahr
  %i.ala = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.akz ; 2 uses
  %i.alb = load i8, ptr %i.ala, align 2, !tbaa !45
  %i.alc = getelementptr inbounds nuw i8, ptr %i.ala, i64 1
  %i.ald = load i8, ptr %i.alc, align 1, !tbaa !47
  %i.ale = zext i8 %i.ald to i32
  %i.alf = add i32 %i.ajn, %i.ale                 ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 6
  store i8 %i.alb, ptr %i.alg, align 1, !tbaa !8
  %i.alh = and i32 %i.ajy, 63
  %i.ali = zext nneg i32 %i.alh to i64
  %i.alj = shl i64 %.val.i180263264.i.i.i.i, %i.ali
  %i.alk = lshr i64 %i.alj, %i.ahr
  %i.all = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.alk ; 2 uses
  %i.alm = load i8, ptr %i.all, align 2, !tbaa !45
  %i.aln = getelementptr inbounds nuw i8, ptr %i.all, i64 1
  %i.alo = load i8, ptr %i.aln, align 1, !tbaa !47
  %i.alp = zext i8 %i.alo to i32
  %i.alq = add i32 %i.ajy, %i.alp                 ; 2 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 7
  store i8 %i.alm, ptr %i.alr, align 1, !tbaa !8
  %i.als = and i32 %i.akj, 63
  %i.alt = zext nneg i32 %i.als to i64
  %i.alu = shl i64 %.sroa.0218.0267.i.i.i.i, %i.alt
  %i.alv = lshr i64 %i.alu, %i.ahr
  %i.alw = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.alv ; 2 uses
  %i.alx = load i8, ptr %i.alw, align 2, !tbaa !45
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alw, i64 1
  %i.alz = load i8, ptr %i.aly, align 1, !tbaa !47
  %i.ama = zext i8 %i.alz to i32
  %i.amb = add i32 %i.akj, %i.ama                 ; 2 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 8
  store i8 %i.alx, ptr %i.amc, align 1, !tbaa !8
  %i.amd = and i32 %i.aku, 63
  %i.ame = zext nneg i32 %i.amd to i64
  %i.amf = shl i64 %.val.i165260265.i.i.i.i, %i.ame
  %i.amg = lshr i64 %i.amf, %i.ahr
  %i.amh = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.amg ; 2 uses
  %i.ami = load i8, ptr %i.amh, align 2, !tbaa !45
  %i.amj = getelementptr inbounds nuw i8, ptr %i.amh, i64 1
  %i.amk = load i8, ptr %i.amj, align 1, !tbaa !47
  %i.aml = zext i8 %i.amk to i32
  %i.amm = add i32 %i.aku, %i.aml                 ; 2 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 9
  store i8 %i.ami, ptr %i.amn, align 1, !tbaa !8
  %i.amo = and i32 %i.alf, 63
  %i.amp = zext nneg i32 %i.amo to i64
  %i.amq = shl i64 %.sroa.0209.0271.i.i.i.i, %i.amp
  %i.amr = lshr i64 %i.amq, %i.ahr
  %i.ams = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.amr ; 2 uses
  %i.amt = load i8, ptr %i.ams, align 2, !tbaa !45
  %i.amu = getelementptr inbounds nuw i8, ptr %i.ams, i64 1
  %i.amv = load i8, ptr %i.amu, align 1, !tbaa !47
  %i.amw = zext i8 %i.amv to i32
  %i.amx = add i32 %i.alf, %i.amw                 ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 10
  store i8 %i.amt, ptr %i.amy, align 1, !tbaa !8
  %i.amz = and i32 %i.alq, 63
  %i.ana = zext nneg i32 %i.amz to i64
  %i.anb = shl i64 %.val.i180263264.i.i.i.i, %i.ana
  %i.anc = lshr i64 %i.anb, %i.ahr
  %i.and = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.anc ; 2 uses
  %i.ane = load i8, ptr %i.and, align 2, !tbaa !45
  %i.anf = getelementptr inbounds nuw i8, ptr %i.and, i64 1
  %i.ang = load i8, ptr %i.anf, align 1, !tbaa !47
  %i.anh = zext i8 %i.ang to i32
  %i.ani = add i32 %i.alq, %i.anh                 ; 2 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 11
  store i8 %i.ane, ptr %i.anj, align 1, !tbaa !8
  %i.ank = and i32 %i.amb, 63
  %i.anl = zext nneg i32 %i.ank to i64
  %i.anm = shl i64 %.sroa.0218.0267.i.i.i.i, %i.anl
  %i.ann = lshr i64 %i.anm, %i.ahr
  %i.ano = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.ann ; 2 uses
  %i.anp = load i8, ptr %i.ano, align 2, !tbaa !45
  %i.anq = getelementptr inbounds nuw i8, ptr %i.ano, i64 1
  %i.anr = load i8, ptr %i.anq, align 1, !tbaa !47
  %i.ans = zext i8 %i.anr to i32
  %i.ant = add i32 %i.amb, %i.ans                 ; 7 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 12
  store i8 %i.anp, ptr %i.anu, align 1, !tbaa !8
  %i.anv = and i32 %i.amm, 63
  %i.anw = zext nneg i32 %i.anv to i64
  %i.anx = shl i64 %.val.i165260265.i.i.i.i, %i.anw
  %i.any = lshr i64 %i.anx, %i.ahr
  %i.anz = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.any ; 2 uses
  %i.aoa = load i8, ptr %i.anz, align 2, !tbaa !45
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anz, i64 1
  %i.aoc = load i8, ptr %i.aob, align 1, !tbaa !47
  %i.aod = zext i8 %i.aoc to i32
  %i.aoe = add i32 %i.amm, %i.aod                 ; 9 uses
  store i32 %i.aoe, ptr %i.ahs, align 8, !tbaa !44
  %i.aof = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 13
  store i8 %i.aoa, ptr %i.aof, align 1, !tbaa !8
  %i.aog = and i32 %i.amx, 63
  %i.aoh = zext nneg i32 %i.aog to i64
  %i.aoi = shl i64 %.sroa.0209.0271.i.i.i.i, %i.aoh
  %i.aoj = lshr i64 %i.aoi, %i.ahr
  %i.aok = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.aoj ; 2 uses
  %i.aol = load i8, ptr %i.aok, align 2, !tbaa !45
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aok, i64 1
  %i.aon = load i8, ptr %i.aom, align 1, !tbaa !47
  %i.aoo = zext i8 %i.aon to i32
  %i.aop = add i32 %i.amx, %i.aoo                 ; 8 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 14
  store i8 %i.aol, ptr %i.aoq, align 1, !tbaa !8
  %i.aor = and i32 %i.ani, 63
  %i.aos = zext nneg i32 %i.aor to i64
  %i.aot = shl i64 %.val.i180263264.i.i.i.i, %i.aos
  %i.aou = lshr i64 %i.aot, %i.ahr
  %i.aov = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.aou ; 2 uses
  %i.aow = load i8, ptr %i.aov, align 2, !tbaa !45
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aov, i64 1
  %i.aoy = load i8, ptr %i.aox, align 1, !tbaa !47
  %i.aoz = zext i8 %i.aoy to i32
  %i.apa = add i32 %i.ani, %i.aoz                 ; 9 uses
  store i32 %i.apa, ptr %i.aht, align 8, !tbaa !44
  %i.apb = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 15
  store i8 %i.aow, ptr %i.apb, align 1, !tbaa !8
  %i.apc = getelementptr inbounds nuw i8, ptr %.0112272.i.i.i.i, i64 16 ; 3 uses
  %i.apd = icmp ugt i32 %i.aoe, 64
  br i1 %i.apd, label %FSE_reloadDStream.exit.i.i.i.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %.not.i.i.i.i.i = icmp ult ptr %i.aii, %i.aif
  br i1 %.not.i.i.i.i.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ape = lshr i32 %i.aoe, 3
  %i.apf = zext nneg i32 %i.ape to i64
  %i.apg = sub nsw i64 0, %i.apf
  %i.aph = getelementptr inbounds i8, ptr %i.aii, i64 %i.apg ; 3 uses
  store ptr %i.aph, ptr %i.ahu, align 8, !tbaa !42
  %i.api = and i32 %i.aoe, 7                      ; 2 uses
  store i32 %i.api, ptr %i.ahs, align 8, !tbaa !44
  %.val30.i.i.i.i.i = load i64, ptr %i.aph, align 1 ; 2 uses
  store i64 %.val30.i.i.i.i.i, ptr %5, align 8, !tbaa !43
  br label %FSE_reloadDStream.exit.i.i.i.i

bb.ej:                                            ; preds = %bb.eh
  %i.apj = icmp eq ptr %i.aii, %i.aie
  br i1 %i.apj, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %.not29.i.i.i.i.i = icmp eq i32 %i.aoe, 64
  %..i.i.i.i.i = select i1 %.not29.i.i.i.i.i, i32 2, i32 1
  br label %FSE_reloadDStream.exit.i.i.i.i

bb.el:                                            ; preds = %bb.ej
  %i.apk = lshr i32 %i.aoe, 3                     ; 2 uses
  %i.apl = zext nneg i32 %i.apk to i64
  %i.apm = sub nsw i64 0, %i.apl
  %i.apn = getelementptr inbounds i8, ptr %i.aii, i64 %i.apm
  %i.apo = icmp ult ptr %i.apn, %i.aie            ; 2 uses
  %i.app = ptrtoint ptr %i.aii to i64
  %i.apq = sub i64 %i.app, %i.aig
  %i.apr = trunc i64 %i.apq to i32
  %.024.i.i.i.i.i = select i1 %i.apo, i32 %i.apr, i32 %i.apk ; 2 uses
  %.0.i.i24.i.i.i = zext i1 %i.apo to i32
  %i.aps = zext i32 %.024.i.i.i.i.i to i64
  %i.apt = sub nsw i64 0, %i.aps
  %i.apu = getelementptr inbounds i8, ptr %i.aii, i64 %i.apt ; 3 uses
  store ptr %i.apu, ptr %i.ahu, align 8, !tbaa !42
  %i.apv = shl i32 %.024.i.i.i.i.i, 3
  %i.apw = sub i32 %i.aoe, %i.apv                 ; 2 uses
  store i32 %i.apw, ptr %i.ahs, align 8, !tbaa !44
  %.val.i165.i.i.i.i = load i64, ptr %i.apu, align 1 ; 2 uses
  store i64 %.val.i165.i.i.i.i, ptr %5, align 8, !tbaa !43
  br label %FSE_reloadDStream.exit.i.i.i.i

FSE_reloadDStream.exit.i.i.i.i:                   ; preds = %bb.el, %bb.ek, %bb.ei, %bb.eg
  %i.apx = phi ptr [ %i.apu, %bb.el ], [ %i.aph, %bb.ei ], [ %i.aii, %bb.ek ], [ %i.aii, %bb.eg ]
  %.val7.i136278.i.i.i.i = phi i32 [ %i.apw, %bb.el ], [ %i.api, %bb.ei ], [ %i.aoe, %bb.ek ], [ %i.aoe, %bb.eg ]
  %.val.i165259.i.i.i.i = phi i64 [ %.val.i165.i.i.i.i, %bb.el ], [ %.val30.i.i.i.i.i, %bb.ei ], [ %.val.i165260265.i.i.i.i, %bb.ek ], [ %.val.i165260265.i.i.i.i, %bb.eg ]
  %.025.i.i.i.i.i = phi i32 [ %.0.i.i24.i.i.i, %bb.el ], [ 0, %bb.ei ], [ %..i.i.i.i.i, %bb.ek ], [ 3, %bb.eg ]
  %i.apy = icmp ugt i32 %i.aop, 64
  br i1 %i.apy, label %FSE_reloadDStream.exit174.i.i.i.i, label %bb.em

bb.em:                                            ; preds = %FSE_reloadDStream.exit.i.i.i.i
  %.not.i166.i.i.i.i = icmp ult ptr %.sroa.29217.0268.i.i.i.i, %i.ahv
  br i1 %.not.i166.i.i.i.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.apz = lshr i32 %i.aop, 3
  %i.aqa = zext nneg i32 %i.apz to i64
  %i.aqb = sub nsw i64 0, %i.aqa
  %i.aqc = getelementptr inbounds i8, ptr %.sroa.29217.0268.i.i.i.i, i64 %i.aqb ; 2 uses
  %i.aqd = and i32 %i.aop, 7
  %.val30.i167.i.i.i.i = load i64, ptr %i.aqc, align 1
  br label %FSE_reloadDStream.exit174.i.i.i.i

bb.eo:                                            ; preds = %bb.em
  %i.aqe = icmp eq ptr %.sroa.29217.0268.i.i.i.i, %i.aat
  br i1 %i.aqe, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %.not29.i172.i.i.i.i = icmp eq i32 %i.aop, 64
  %..i173.i.i.i.i = select i1 %.not29.i172.i.i.i.i, i32 2, i32 1
  br label %FSE_reloadDStream.exit174.i.i.i.i

bb.eq:                                            ; preds = %bb.eo
  %i.aqf = lshr i32 %i.aop, 3                     ; 2 uses
  %i.aqg = zext nneg i32 %i.aqf to i64
  %i.aqh = sub nsw i64 0, %i.aqg
  %i.aqi = getelementptr inbounds i8, ptr %.sroa.29217.0268.i.i.i.i, i64 %i.aqh
  %i.aqj = icmp ult ptr %i.aqi, %i.aat            ; 2 uses
  %i.aqk = ptrtoint ptr %.sroa.29217.0268.i.i.i.i to i64
  %i.aql = sub i64 %i.aqk, %i.ahw
  %i.aqm = trunc i64 %i.aql to i32
  %.024.i169.i.i.i.i = select i1 %i.aqj, i32 %i.aqm, i32 %i.aqf ; 2 uses
  %.0.i170.i.i.i.i = zext i1 %i.aqj to i32
  %i.aqn = zext i32 %.024.i169.i.i.i.i to i64
  %i.aqo = sub nsw i64 0, %i.aqn
  %i.aqp = getelementptr inbounds i8, ptr %.sroa.29217.0268.i.i.i.i, i64 %i.aqo ; 2 uses
  %i.aqq = shl i32 %.024.i169.i.i.i.i, 3
  %i.aqr = sub i32 %i.aop, %i.aqq
  %.val.i171.i.i.i.i = load i64, ptr %i.aqp, align 1
  br label %FSE_reloadDStream.exit174.i.i.i.i

FSE_reloadDStream.exit174.i.i.i.i:                ; preds = %bb.eq, %bb.ep, %bb.en, %FSE_reloadDStream.exit.i.i.i.i
  %.sroa.29217.2.i.i.i.i = phi ptr [ %.sroa.29217.0268.i.i.i.i, %FSE_reloadDStream.exit.i.i.i.i ], [ %i.aat, %bb.ep ], [ %i.aqp, %bb.eq ], [ %i.aqc, %bb.en ]
  %.sroa.16.2.i.i.i.i = phi i32 [ %i.aop, %FSE_reloadDStream.exit.i.i.i.i ], [ %i.aop, %bb.ep ], [ %i.aqr, %bb.eq ], [ %i.aqd, %bb.en ]
  %.sroa.0209.3.i.i.i.i = phi i64 [ %.sroa.0209.0271.i.i.i.i, %FSE_reloadDStream.exit.i.i.i.i ], [ %.sroa.0209.0271.i.i.i.i, %bb.ep ], [ %.val.i171.i.i.i.i, %bb.eq ], [ %.val30.i167.i.i.i.i, %bb.en ]
  %.025.i168.i.i.i.i = phi i32 [ 3, %FSE_reloadDStream.exit.i.i.i.i ], [ %..i173.i.i.i.i, %bb.ep ], [ %.0.i170.i.i.i.i, %bb.eq ], [ 0, %bb.en ]
  %i.aqs = or i32 %.025.i168.i.i.i.i, %.025.i.i.i.i.i
  %i.aqt = icmp ugt i32 %i.apa, 64
  br i1 %i.aqt, label %FSE_reloadDStream.exit183.i.i.i.i, label %bb.er

bb.er:                                            ; preds = %FSE_reloadDStream.exit174.i.i.i.i
  %.not.i175.i.i.i.i = icmp ult ptr %i.aih, %i.aia
  br i1 %.not.i175.i.i.i.i, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.aqu = lshr i32 %i.apa, 3
  %i.aqv = zext nneg i32 %i.aqu to i64
  %i.aqw = sub nsw i64 0, %i.aqv
  %i.aqx = getelementptr inbounds i8, ptr %i.aih, i64 %i.aqw ; 3 uses
  store ptr %i.aqx, ptr %i.ahx, align 8, !tbaa !42
  %i.aqy = and i32 %i.apa, 7                      ; 2 uses
  store i32 %i.aqy, ptr %i.aht, align 8, !tbaa !44
  %.val30.i176.i.i.i.i = load i64, ptr %i.aqx, align 1 ; 2 uses
  store i64 %.val30.i176.i.i.i.i, ptr %6, align 8, !tbaa !43
  br label %FSE_reloadDStream.exit183.i.i.i.i

bb.et:                                            ; preds = %bb.er
  %i.aqz = icmp eq ptr %i.aih, %i.ahz
  br i1 %i.aqz, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %.not29.i181.i.i.i.i = icmp eq i32 %i.apa, 64
  %..i182.i.i.i.i = select i1 %.not29.i181.i.i.i.i, i32 2, i32 1
  br label %FSE_reloadDStream.exit183.i.i.i.i

bb.ev:                                            ; preds = %bb.et
  %i.ara = lshr i32 %i.apa, 3                     ; 2 uses
  %i.arb = zext nneg i32 %i.ara to i64
  %i.arc = sub nsw i64 0, %i.arb
  %i.ard = getelementptr inbounds i8, ptr %i.aih, i64 %i.arc
  %i.are = icmp ult ptr %i.ard, %i.ahz            ; 2 uses
  %i.arf = ptrtoint ptr %i.aih to i64
  %i.arg = sub i64 %i.arf, %i.aib
  %i.arh = trunc i64 %i.arg to i32
  %.024.i178.i.i.i.i = select i1 %i.are, i32 %i.arh, i32 %i.ara ; 2 uses
  %.0.i179.i.i.i.i = zext i1 %i.are to i32
  %i.ari = zext i32 %.024.i178.i.i.i.i to i64
  %i.arj = sub nsw i64 0, %i.ari
  %i.ark = getelementptr inbounds i8, ptr %i.aih, i64 %i.arj ; 3 uses
  store ptr %i.ark, ptr %i.ahx, align 8, !tbaa !42
  %i.arl = shl i32 %.024.i178.i.i.i.i, 3
  %i.arm = sub i32 %i.apa, %i.arl                 ; 2 uses
  store i32 %i.arm, ptr %i.aht, align 8, !tbaa !44
  %.val.i180.i.i.i.i = load i64, ptr %i.ark, align 1 ; 2 uses
  store i64 %.val.i180.i.i.i.i, ptr %6, align 8, !tbaa !43
  br label %FSE_reloadDStream.exit183.i.i.i.i

FSE_reloadDStream.exit183.i.i.i.i:                ; preds = %bb.ev, %bb.eu, %bb.es, %FSE_reloadDStream.exit174.i.i.i.i
  %i.arn = phi ptr [ %i.ark, %bb.ev ], [ %i.aqx, %bb.es ], [ %i.aih, %bb.eu ], [ %i.aih, %FSE_reloadDStream.exit174.i.i.i.i ]
  %.val7.i140281.i.i.i.i = phi i32 [ %i.arm, %bb.ev ], [ %i.aqy, %bb.es ], [ %i.apa, %bb.eu ], [ %i.apa, %FSE_reloadDStream.exit174.i.i.i.i ]
  %.val.i180262.i.i.i.i = phi i64 [ %.val.i180.i.i.i.i, %bb.ev ], [ %.val30.i176.i.i.i.i, %bb.es ], [ %.val.i180263264.i.i.i.i, %bb.eu ], [ %.val.i180263264.i.i.i.i, %FSE_reloadDStream.exit174.i.i.i.i ]
  %.025.i177.i.i.i.i = phi i32 [ %.0.i179.i.i.i.i, %bb.ev ], [ 0, %bb.es ], [ %..i182.i.i.i.i, %bb.eu ], [ 3, %FSE_reloadDStream.exit174.i.i.i.i ]
  %i.aro = or i32 %i.aqs, %.025.i177.i.i.i.i      ; 2 uses
  %i.arp = icmp ugt i32 %i.ant, 64
  br i1 %i.arp, label %FSE_reloadDStream.exit192.i.i.i.i, label %bb.ew

bb.ew:                                            ; preds = %FSE_reloadDStream.exit183.i.i.i.i
  %.not.i184.i.i.i.i = icmp ult ptr %.sroa.31228.0269.i.i.i.i, %i.aic
  br i1 %.not.i184.i.i.i.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.arq = lshr i32 %i.ant, 3
  %i.arr = zext nneg i32 %i.arq to i64
  %i.ars = sub nsw i64 0, %i.arr
  %i.art = getelementptr inbounds i8, ptr %.sroa.31228.0269.i.i.i.i, i64 %i.ars ; 2 uses
  %i.aru = and i32 %i.ant, 7
  %.val30.i185.i.i.i.i = load i64, ptr %i.art, align 1
  br label %FSE_reloadDStream.exit192.i.i.i.i

bb.ey:                                            ; preds = %bb.ew
  %i.arv = icmp eq ptr %.sroa.31228.0269.i.i.i.i, %i.aar
  br i1 %i.arv, label %FSE_reloadDStream.exit192.i.i.i.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.arw = lshr i32 %i.ant, 3                     ; 2 uses
  %i.arx = zext nneg i32 %i.arw to i64
  %i.ary = sub nsw i64 0, %i.arx
  %i.arz = getelementptr inbounds i8, ptr %.sroa.31228.0269.i.i.i.i, i64 %i.ary
  %i.asa = icmp ult ptr %i.arz, %i.aar
  %i.asb = ptrtoint ptr %.sroa.31228.0269.i.i.i.i to i64
  %i.asc = sub i64 %i.asb, %i.aid
  %i.asd = trunc i64 %i.asc to i32
  %.024.i187.i.i.i.i = select i1 %i.asa, i32 %i.asd, i32 %i.arw ; 2 uses
  %i.ase = zext i32 %.024.i187.i.i.i.i to i64
  %i.asf = sub nsw i64 0, %i.ase
  %i.asg = getelementptr inbounds i8, ptr %.sroa.31228.0269.i.i.i.i, i64 %i.asf ; 2 uses
  %i.ash = shl i32 %.024.i187.i.i.i.i, 3
  %i.asi = sub i32 %i.ant, %i.ash
  %.val.i189.i.i.i.i = load i64, ptr %i.asg, align 1
  br label %FSE_reloadDStream.exit192.i.i.i.i

FSE_reloadDStream.exit192.i.i.i.i:                ; preds = %bb.ez, %bb.ey, %bb.ex, %FSE_reloadDStream.exit183.i.i.i.i
  %.sroa.17.2.i.i.i.i = phi i32 [ %i.ant, %FSE_reloadDStream.exit183.i.i.i.i ], [ %i.aru, %bb.ex ], [ %i.asi, %bb.ez ], [ %i.ant, %bb.ey ] ; 2 uses
  %.sroa.0218.3.i.i.i.i = phi i64 [ %.sroa.0218.0267.i.i.i.i, %FSE_reloadDStream.exit183.i.i.i.i ], [ %.val30.i185.i.i.i.i, %bb.ex ], [ %.val.i189.i.i.i.i, %bb.ez ], [ %.sroa.0218.0267.i.i.i.i, %bb.ey ] ; 2 uses
  %.sroa.31228.2.i.i.i.i = phi ptr [ %.sroa.31228.0269.i.i.i.i, %FSE_reloadDStream.exit183.i.i.i.i ], [ %i.art, %bb.ex ], [ %i.asg, %bb.ez ], [ %i.aar, %bb.ey ] ; 2 uses
  %i.asj = icmp samesign ult i32 %i.aro, 2
  %i.ask = icmp ult ptr %i.apc, %i.aag
  %i.asl = select i1 %i.asj, i1 %i.ask, i1 false
  br i1 %i.asl, label %bb.eg, label %._crit_edge.i21.i.i.i, !llvm.loop !48

._crit_edge.i21.i.i.i:                            ; preds = %FSE_reloadDStream.exit192.i.i.i.i, %bb.ef
  %.sroa.17.0.lcssa.i.i.i.i = phi i32 [ %.sroa.17.1.i.i.i.i, %bb.ef ], [ %.sroa.17.2.i.i.i.i, %FSE_reloadDStream.exit192.i.i.i.i ] ; 2 uses
  %.sroa.0218.0.lcssa.i.i.i.i = phi i64 [ %.sroa.0218.2.i.i.i.i, %bb.ef ], [ %.sroa.0218.3.i.i.i.i, %FSE_reloadDStream.exit192.i.i.i.i ]
  %.sroa.31228.0.lcssa.i.i.i.i = phi ptr [ %.sroa.31228.1.i.i.i.i, %bb.ef ], [ %.sroa.31228.2.i.i.i.i, %FSE_reloadDStream.exit192.i.i.i.i ]
  %.0112.lcssa.i.i.i.i = phi ptr [ %i.bi, %bb.ef ], [ %i.apc, %FSE_reloadDStream.exit192.i.i.i.i ]
  %.0111.lcssa.i.i.i.i = phi i32 [ %i.ahl, %bb.ef ], [ %i.aro, %FSE_reloadDStream.exit192.i.i.i.i ]
  %.not120.i.i.i.i = icmp ne i32 %.0111.lcssa.i.i.i.i, 2
  %i.asm = icmp ugt i32 %.sroa.17.0.lcssa.i.i.i.i, 64
  %or.cond340.i.i = select i1 %.not120.i.i.i.i, i1 true, i1 %i.asm
  br i1 %or.cond340.i.i, label %HUF_decompress.exit.thread257.i.i, label %.lr.ph289.i.i.i.i

.lr.ph289.i.i.i.i:                                ; preds = %._crit_edge.i21.i.i.i
  %i.asn = getelementptr inbounds nuw i8, ptr %i.aab, i64 14
  %i.aso = ptrtoint ptr %i.aar to i64
  %i.asp = sub nsw i32 0, %i.aah
  %i.asq = and i32 %i.asp, 63
  %i.asr = zext nneg i32 %i.asq to i64
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ff, %.lr.ph289.i.i.i.i
  %.1288.i.i.i.i = phi ptr [ %.0112.lcssa.i.i.i.i, %.lr.ph289.i.i.i.i ], [ %i.atx, %bb.ff ] ; 4 uses
  %.sroa.0.0287.i.i.i.i = phi i64 [ %.sroa.0218.0.lcssa.i.i.i.i, %.lr.ph289.i.i.i.i ], [ %.sroa.0.1.i.i.i.i, %bb.ff ]
  %.sroa.6.0286.i.i.i.i = phi i32 [ %.sroa.17.0.lcssa.i.i.i.i, %.lr.ph289.i.i.i.i ], [ %i.atw, %bb.ff ] ; 6 uses
  %.sroa.13206.0285.i.i.i.i = phi ptr [ %.sroa.31228.0.lcssa.i.i.i.i, %.lr.ph289.i.i.i.i ], [ %.sroa.13206.1.i.i.i.i, %bb.ff ] ; 6 uses
  %.not.i193.i.i.i.i = icmp ult ptr %.sroa.13206.0285.i.i.i.i, %i.asn
  br i1 %.not.i193.i.i.i.i, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ass = lshr i32 %.sroa.6.0286.i.i.i.i, 3
  %i.ast = zext nneg i32 %i.ass to i64
  %i.asu = sub nsw i64 0, %i.ast
  %i.asv = getelementptr inbounds i8, ptr %.sroa.13206.0285.i.i.i.i, i64 %i.asu ; 2 uses
  %i.asw = and i32 %.sroa.6.0286.i.i.i.i, 7
  %.val30.i194.i.i.i.i = load i64, ptr %i.asv, align 1
  br label %FSE_reloadDStream.exit201.i.i.i.i

bb.fc:                                            ; preds = %bb.fa
  %i.asx = icmp eq ptr %.sroa.13206.0285.i.i.i.i, %i.aar
  br i1 %i.asx, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %.not29.i199.i.i.i.i = icmp ne i32 %.sroa.6.0286.i.i.i.i, 64
  br label %FSE_reloadDStream.exit201.i.i.i.i

bb.fe:                                            ; preds = %bb.fc
  %i.asy = lshr i32 %.sroa.6.0286.i.i.i.i, 3      ; 2 uses
  %i.asz = zext nneg i32 %i.asy to i64
  %i.ata = sub nsw i64 0, %i.asz
  %i.atb = getelementptr inbounds i8, ptr %.sroa.13206.0285.i.i.i.i, i64 %i.ata
  %i.atc = icmp ult ptr %i.atb, %i.aar
  %i.atd = ptrtoint ptr %.sroa.13206.0285.i.i.i.i to i64
  %i.ate = sub i64 %i.atd, %i.aso
  %i.atf = trunc i64 %i.ate to i32
  %.024.i196.i.i.i.i = select i1 %i.atc, i32 %i.atf, i32 %i.asy ; 2 uses
  %i.atg = zext i32 %.024.i196.i.i.i.i to i64
  %i.ath = sub nsw i64 0, %i.atg
  %i.ati = getelementptr inbounds i8, ptr %.sroa.13206.0285.i.i.i.i, i64 %i.ath ; 2 uses
  %i.atj = shl i32 %.024.i196.i.i.i.i, 3
  %i.atk = sub i32 %.sroa.6.0286.i.i.i.i, %i.atj
  %.val.i198.i.i.i.i = load i64, ptr %i.ati, align 1
  br label %FSE_reloadDStream.exit201.i.i.i.i

FSE_reloadDStream.exit201.i.i.i.i:                ; preds = %bb.fe, %bb.fd, %bb.fb
  %.sroa.13206.1.i.i.i.i = phi ptr [ %i.asv, %bb.fb ], [ %i.aar, %bb.fd ], [ %i.ati, %bb.fe ] ; 2 uses
  %.sroa.6.1.i.i.i.i = phi i32 [ %i.asw, %bb.fb ], [ %.sroa.6.0286.i.i.i.i, %bb.fd ], [ %i.atk, %bb.fe ] ; 3 uses
  %.sroa.0.1.i.i.i.i = phi i64 [ %.val30.i194.i.i.i.i, %bb.fb ], [ %.sroa.0.0287.i.i.i.i, %bb.fd ], [ %.val.i198.i.i.i.i, %bb.fe ] ; 2 uses
  %.025.i195.i.i.i.i = phi i1 [ true, %bb.fb ], [ %.not29.i199.i.i.i.i, %bb.fd ], [ true, %bb.fe ]
  %i.atl = icmp ult ptr %.1288.i.i.i.i, %i.r
  %i.atm = select i1 %.025.i195.i.i.i.i, i1 %i.atl, i1 false
  br i1 %i.atm, label %bb.ff, label %FSE_reloadDStream.exit201.thread.i.i.i.i

bb.ff:                                            ; preds = %FSE_reloadDStream.exit201.i.i.i.i
  %i.atn = and i32 %.sroa.6.1.i.i.i.i, 63
  %i.ato = zext nneg i32 %i.atn to i64
  %i.atp = shl i64 %.sroa.0.1.i.i.i.i, %i.ato
  %i.atq = lshr i64 %i.atp, %i.asr
  %i.atr = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.atq ; 2 uses
  %i.ats = load i8, ptr %i.atr, align 2, !tbaa !45
  %i.att = getelementptr inbounds nuw i8, ptr %i.atr, i64 1
  %i.atu = load i8, ptr %i.att, align 1, !tbaa !47
  %i.atv = zext i8 %i.atu to i32
  %i.atw = add i32 %.sroa.6.1.i.i.i.i, %i.atv     ; 2 uses
  store i8 %i.ats, ptr %.1288.i.i.i.i, align 1, !tbaa !8
  %i.atx = getelementptr inbounds nuw i8, ptr %.1288.i.i.i.i, i64 1
  %i.aty = icmp ugt i32 %i.atw, 64
  br i1 %i.aty, label %HUF_decompress.exit.thread257.i.i, label %bb.fa, !llvm.loop !49

FSE_reloadDStream.exit201.thread.i.i.i.i:         ; preds = %FSE_reloadDStream.exit201.i.i.i.i
  %i.atz = icmp eq i32 %.sroa.6.1.i.i.i.i, 64
  %i.aua = icmp eq ptr %.sroa.13206.1.i.i.i.i, %i.aar
  %or.cond255.i.i.i.i = and i1 %i.aua, %i.atz
  br i1 %or.cond255.i.i.i.i, label %ZSTD_decompressLiterals.exit.i, label %HUF_decompress.exit.thread257.i.i

HUF_decompress.exit.thread257.i.i:                ; preds = %bb.ff, %FSE_reloadDStream.exit201.thread.i.i.i.i, %._crit_edge.i21.i.i.i, %bb.ee, %bb.ed, %bb.dv, %bb.dt, %bb.ds, %bb.dk, %bb.di, %bb.dh, %bb.cz, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %HUF_decompress.exit.thread257.i.i, %bb.cw, %HUF_readDTable.exit.i.i.i, %HUF_readDTable.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #16
  br label %ZSTD_decompressSequences.exit

ZSTD_decompressLiterals.exit.i:                   ; preds = %FSE_reloadDStream.exit201.thread.i.i.i.i
  %i.aub = ptrtoint ptr %.1288.i.i.i.i to i64
  %i.auc = ptrtoint ptr %i.bi to i64
  %i.aud = sub i64 %i.aub, %i.auc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #16
  %.fr.i.i = freeze i64 %i.aud
  %i.aue = icmp ult i64 %.fr.i.i, -7
  %spec.select.i.i = select i1 %i.aue, i64 %i.bf, i64 -1 ; 2 uses
  %i.auf = icmp ult i64 %spec.select.i.i, -119
  br i1 %i.auf, label %bb.fg, label %ZSTD_decompressSequences.exit

bb.fg:                                            ; preds = %ZSTD_decompressLiterals.exit.i
  %i.aug = sub nsw i64 0, %spec.select.i.i
  %i.auh = getelementptr inbounds i8, ptr %i.r, i64 %i.aug
  %i.aui = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.0.i.ph.i
  br label %ZSTDv01_decodeLiteralsBlock.exit

default.unreachable.i:                            ; preds = %bb.e
  unreachable

ZSTDv01_decodeLiteralsBlock.exit:                 ; preds = %bb.f, %.thread12.i, %bb.fg
  %.021 = phi ptr [ %i.ak, %bb.f ], [ %i.ar, %.thread12.i ], [ %i.auh, %bb.fg ] ; 2 uses
  %.020 = phi i64 [ %.0.i.ph.i, %bb.f ], [ %i.am, %.thread12.i ], [ %i.bf, %bb.fg ]
  %.2.i = phi ptr [ %i.al, %bb.f ], [ %i.as, %.thread12.i ], [ %i.aui, %bb.fg ]
  %i.auj = ptrtoint ptr %.2.i to i64              ; 2 uses
  %i.auk = ptrtoint ptr %3 to i64
  %i.aul = sub i64 %i.auj, %i.auk                 ; 4 uses
  %i.aum = icmp ult i64 %i.aul, -119
  br i1 %i.aum, label %bb.fh, label %ZSTD_decompressSequences.exit

bb.fh:                                            ; preds = %ZSTDv01_decodeLiteralsBlock.exit
  %i.aun = getelementptr inbounds nuw i8, ptr %3, i64 %i.aul ; 7 uses
  %i.auo = sub i64 %4, %i.aul                     ; 5 uses
  %i.aup = getelementptr inbounds nuw i8, ptr %.021, i64 %.020 ; 3 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %0, i64 6152 ; 4 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %0, i64 4100 ; 4 uses
  %i.aus = getelementptr inbounds nuw i8, ptr %0, i64 10264
  %i.aut = load ptr, ptr %i.aus, align 8, !tbaa !50 ; 2 uses
  %i.auu = getelementptr i8, ptr %3, i64 %4       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.auv = icmp ult i64 %i.auo, 5
  br i1 %i.auv, label %ZSTDv01_decodeSeqHeaders.exit.thread.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %.val.i.i = load i16, ptr %i.aun, align 1
  %i.auw = zext i16 %.val.i.i to i32
  %i.aux = getelementptr inbounds nuw i8, ptr %i.aun, i64 2
  %i.auy = load i8, ptr %i.aux, align 1, !tbaa !8
  %i.auz = zext i8 %i.auy to i32                  ; 5 uses
  %i.ava = lshr i32 %i.auz, 6
  %i.avb = lshr i32 %i.auz, 4
  %i.avc = and i32 %i.avb, 3
  %i.avd = lshr i32 %i.auz, 2
  %i.ave = and i32 %i.avd, 3
  %i.avf = and i32 %i.auz, 2
  %.not.i.i = icmp eq i32 %i.avf, 0
  br i1 %.not.i.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.avg = getelementptr inbounds nuw i8, ptr %i.aun, i64 4
  %i.avh = load i8, ptr %i.avg, align 1, !tbaa !8
  %i.avi = zext i8 %i.avh to i64
  %i.avj = getelementptr inbounds nuw i8, ptr %i.aun, i64 3
  %i.avk = load i8, ptr %i.avj, align 1, !tbaa !8
  %i.avl = zext i8 %i.avk to i64
  %i.avm = shl nuw nsw i64 %i.avl, 8
  %i.avn = or disjoint i64 %i.avm, %i.avi
  br label %bb.fl

bb.fk:                                            ; preds = %bb.fi
  %i.avo = getelementptr inbounds nuw i8, ptr %i.aun, i64 3
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !8
  %i.avq = shl nuw nsw i32 %i.auz, 8
  %i.avr = and i32 %i.avq, 256
  %i.avs = zext i8 %i.avp to i32
  %i.avt = or disjoint i32 %i.avr, %i.avs
  %i.avu = zext nneg i32 %i.avt to i64
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %.sink.i.i = phi i64 [ 4, %bb.fk ], [ 5, %bb.fj ] ; 2 uses
  %.074.i.i = phi i64 [ %i.avu, %bb.fk ], [ %i.avn, %bb.fj ] ; 2 uses
  %i.avv = getelementptr inbounds nuw i8, ptr %i.aun, i64 %.sink.i.i ; 2 uses
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avv, i64 %.074.i.i ; 8 uses
  %i.avx = add nuw nsw i64 %.074.i.i, %.sink.i.i  ; 2 uses
  %i.avy = add nsw i64 %i.auo, -3
  %i.avz = icmp sgt i64 %i.avx, %i.avy
  br i1 %i.avz, label %ZSTDv01_decodeSeqHeaders.exit.thread.i, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  switch i32 %i.ava, label %bb.fq [
    i32 2, label %bb.fn
    i32 1, label %bb.fo
  ]

bb.fn:                                            ; preds = %bb.fm
  store i32 0, ptr %i.c, align 4, !tbaa !9
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avw, i64 1
  %i.awb = load i8, ptr %i.avw, align 1, !tbaa !8
  %i.awc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 0, ptr %0, align 8, !tbaa !16
  %i.awd = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.awd, align 2, !tbaa !29
  store i16 0, ptr %i.awc, align 4, !tbaa !27
  %i.awe = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.awb, ptr %i.awe, align 2, !tbaa !20
  %i.awf = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 0, ptr %i.awf, align 1, !tbaa !26
  br label %FSE_buildDTable_raw.exit.i.i

bb.fo:                                            ; preds = %bb.fm
  store i32 6, ptr %i.c, align 4, !tbaa !9
  %i.awg = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  store i16 6, ptr %0, align 8, !tbaa !16
  %i.awh = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 1, ptr %i.awh, align 2, !tbaa !29
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fp, %bb.fo
  %indvars.iv.i.i.i = phi i64 [ 0, %bb.fo ], [ %indvars.iv.next.i.i.i.3, %bb.fp ] ; 6 uses
  %i.awi = getelementptr inbounds nuw [4 x i8], ptr %i.awg, i64 %indvars.iv.i.i.i ; 3 uses
  store i16 0, ptr %i.awi, align 2, !tbaa !27
  %i.awj = trunc i64 %indvars.iv.i.i.i to i8
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awi, i64 2
  store i8 %i.awj, ptr %i.awk, align 2, !tbaa !20
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awi, i64 3
  store i8 6, ptr %i.awl, align 1, !tbaa !26
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.awm = getelementptr inbounds nuw [4 x i8], ptr %i.awg, i64 %indvars.iv.next.i.i.i ; 3 uses
  store i16 0, ptr %i.awm, align 2, !tbaa !27
  %i.awn = trunc i64 %indvars.iv.next.i.i.i to i8
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awm, i64 2
  store i8 %i.awn, ptr %i.awo, align 2, !tbaa !20
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awm, i64 3
  store i8 6, ptr %i.awp, align 1, !tbaa !26
  %indvars.iv.next.i.i.i.1 = or disjoint i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.awq = getelementptr inbounds nuw [4 x i8], ptr %i.awg, i64 %indvars.iv.next.i.i.i.1 ; 3 uses
  store i16 0, ptr %i.awq, align 2, !tbaa !27
  %i.awr = trunc i64 %indvars.iv.next.i.i.i.1 to i8
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awq, i64 2
  store i8 %i.awr, ptr %i.aws, align 2, !tbaa !20
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awq, i64 3
  store i8 6, ptr %i.awt, align 1, !tbaa !26
  %indvars.iv.next.i.i.i.2 = or disjoint i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.awu = getelementptr inbounds nuw [4 x i8], ptr %i.awg, i64 %indvars.iv.next.i.i.i.2 ; 3 uses
  store i16 0, ptr %i.awu, align 2, !tbaa !27
  %i.awv = trunc i64 %indvars.iv.next.i.i.i.2 to i8
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awu, i64 2
  store i8 %i.awv, ptr %i.aww, align 2, !tbaa !20
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awu, i64 3
  store i8 6, ptr %i.awx, align 1, !tbaa !26
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, 64
  br i1 %exitcond.not.i.i.3, label %FSE_buildDTable_raw.exit.i.i, label %bb.fp, !llvm.loop !52

bb.fq:                                            ; preds = %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  store i32 63, ptr %i.g, align 4, !tbaa !9
  %gepdiff.i.i = sub nsw i64 %i.auo, %i.avx
  %i.awy = call fastcc i64 @FSE_readNCount(ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.c, ptr noundef nonnull %i.avw, i64 noundef %gepdiff.i.i) ; 2 uses
  %i.awz = icmp ult i64 %i.awy, -7
  br i1 %i.awz, label %bb.fr, label %.thread.i.i

bb.fr:                                            ; preds = %bb.fq
  %i.axa = load i32, ptr %i.c, align 4, !tbaa !9  ; 5 uses
  %i.axb = icmp ugt i32 %i.axa, 10
  br i1 %i.axb, label %.thread.i.i, label %bb.fs

.thread.i.i:                                      ; preds = %bb.fr, %bb.fq
  %.079.ph.i.i = phi i64 [ -20, %bb.fr ], [ -1, %bb.fq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  br label %ZSTDv01_decodeSeqHeaders.exit.thread.sink.split.i

bb.fs:                                            ; preds = %bb.fr
  %i.axc = getelementptr inbounds nuw i8, ptr %i.avw, i64 %i.awy
  %i.axd = load i32, ptr %i.g, align 4, !tbaa !9  ; 3 uses
  %i.axe = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %i.axf = shl nuw nsw i32 1, %i.axa              ; 5 uses
  %i.axg = add nsw i32 %i.axf, -1                 ; 5 uses
  %i.axh = lshr i32 %i.axf, 1
  %i.axi = lshr i32 %i.axf, 3
  %i.axj = add nuw nsw i32 %i.axi, 3
  %i.axk = add nuw nsw i32 %i.axj, %i.axh         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.axl = icmp ugt i32 %i.axd, 255
  br i1 %i.axl, label %FSE_buildDTable.exit.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.axm = trunc nuw nsw i32 %i.axa to i16
  store i16 %i.axm, ptr %0, align 8, !tbaa !16
  %sext.i.i = shl nuw nsw i32 32768, %i.axa
  %i.axn = lshr exact i32 %sext.i.i, 16           ; 3 uses
  %i.axo = add nuw nsw i32 %i.axd, 1              ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.axo to i64 ; 3 uses
  %xtraiter736 = and i64 %wide.trip.count.i.i, 1
  %i.axp = icmp eq i32 %i.axd, 0
  br i1 %i.axp, label %.epil.preheader735, label %.new734

.new734:                                          ; preds = %bb.ft
  %unroll_iter741 = and i64 %wide.trip.count.i.i, 510
  br label %bb.fu
end_hunk_1
begin_hunk_2_@ZSTD_decompressBlock:bb.a
  %i.bht = load i8, ptr %i.bhs, align 1, !tbaa !8 ; 2 uses
  %i.bhu = icmp eq i8 %i.bht, 0
  br i1 %i.bhu, label %ZSTD_decompressSequences.exit, label %FSE_initDStream.exit.thread145.i

FSE_initDStream.exit.thread145.i:                 ; preds = %bb.hg
  %i.bhv = zext i8 %i.bht to i32
  %i.bhw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bhv, i1 true)
  %i.bhx = trunc nuw nsw i64 %gepdiff.i to i32
  %i.bhy = shl nuw nsw i32 %i.bhx, 3
  %reass.sub137 = sub nsw i32 %i.bhw, %i.bhy
  %i.bhz = add nsw i32 %reass.sub137, 41
  br label %bb.hh

FSE_initDStream.exit.i:                           ; preds = %bb.gy
  %i.bia = getelementptr inbounds i8, ptr %i.auu, i64 -8 ; 2 uses
  %.val.i75.i = load i64, ptr %i.bia, align 1
  %i.bib = zext i8 %i.bgf to i32
  %i.bic = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bib, i1 true)
  %i.bid = xor i32 %i.bic, 31
  %i.bie = sub nuw nsw i32 8, %i.bid
  %i.bif = icmp ult i64 %gepdiff.i, -7
  br i1 %i.bif, label %bb.hh, label %ZSTD_decompressSequences.exit

bb.hh:                                            ; preds = %FSE_initDStream.exit.i, %FSE_initDStream.exit.thread145.i
  %.sroa.0.2155.i = phi i64 [ %.sroa.0.1.i, %FSE_initDStream.exit.thread145.i ], [ %.val.i75.i, %FSE_initDStream.exit.i ] ; 3 uses
  %.sroa.19.1154.i = phi i32 [ %i.bhz, %FSE_initDStream.exit.thread145.i ], [ %i.bie, %FSE_initDStream.exit.i ] ; 2 uses
  %.sroa.41113.1153.i = phi ptr [ %i.bgb, %FSE_initDStream.exit.thread145.i ], [ %i.bia, %FSE_initDStream.exit.i ] ; 6 uses
  %i.big = load i16, ptr %0, align 8, !tbaa !16
  %i.bih = zext i16 %i.big to i32                 ; 2 uses
  %i.bii = and i32 %.sroa.19.1154.i, 63
  %i.bij = zext nneg i32 %i.bii to i64
  %i.bik = shl i64 %.sroa.0.2155.i, %i.bij
  %i.bil = lshr i64 %i.bik, 1
  %i.bim = and i32 %i.bih, 63
  %i.bin = xor i32 %i.bim, 63
  %i.bio = zext nneg i32 %i.bin to i64
  %i.bip = lshr i64 %i.bil, %i.bio
  %i.biq = add nuw nsw i32 %.sroa.19.1154.i, %i.bih ; 7 uses
  %i.bir = icmp samesign ugt i32 %i.biq, 64
  br i1 %i.bir, label %FSE_initDState.exit.i, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bgb, i64 8
  %.not.i.i.i = icmp ult ptr %.sroa.41113.1153.i, %i.bis
  br i1 %.not.i.i.i, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.bit = lshr i32 %i.biq, 3
  %i.biu = and i32 %i.biq, 7
  br label %FSE_reloadDStream.exit.sink.split.i.i

bb.hk:                                            ; preds = %bb.hi
  %i.biv = icmp eq ptr %.sroa.41113.1153.i, %.7120.i.i
  br i1 %i.biv, label %FSE_initDState.exit.i, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.biw = lshr i32 %i.biq, 3                     ; 2 uses
  %i.bix = zext nneg i32 %i.biw to i64
  %i.biy = sub nsw i64 0, %i.bix
  %i.biz = getelementptr inbounds i8, ptr %.sroa.41113.1153.i, i64 %i.biy
  %i.bja = icmp ult ptr %i.biz, %.7120.i.i
  %i.bjb = ptrtoint ptr %.sroa.41113.1153.i to i64
  %i.bjc = sub i64 %i.bjb, %i.bfy
  %i.bjd = trunc i64 %i.bjc to i32
  %.024.i.i.i = select i1 %i.bja, i32 %i.bjd, i32 %i.biw ; 2 uses
  %i.bje = shl i32 %.024.i.i.i, 3
  %i.bjf = sub i32 %i.biq, %i.bje
  br label %FSE_reloadDStream.exit.sink.split.i.i

FSE_reloadDStream.exit.sink.split.i.i:            ; preds = %bb.hl, %bb.hj
  %.pn177.in.i = phi i32 [ %.024.i.i.i, %bb.hl ], [ %i.bit, %bb.hj ]
  %.sroa.19.2.i = phi i32 [ %i.bjf, %bb.hl ], [ %i.biu, %bb.hj ]
  %.pn177.i = zext i32 %.pn177.in.i to i64
  %.pn.i = sub nsw i64 0, %.pn177.i
  %.sroa.41113.2.i = getelementptr inbounds i8, ptr %.sroa.41113.1153.i, i64 %.pn.i ; 2 uses
  %.val30.i.sink.i.i = load i64, ptr %.sroa.41113.2.i, align 1
  br label %FSE_initDState.exit.i

FSE_initDState.exit.i:                            ; preds = %FSE_reloadDStream.exit.sink.split.i.i, %bb.hk, %bb.hh
  %.sroa.41113.3.i = phi ptr [ %.sroa.41113.1153.i, %bb.hh ], [ %.7120.i.i, %bb.hk ], [ %.sroa.41113.2.i, %FSE_reloadDStream.exit.sink.split.i.i ] ; 6 uses
  %.sroa.19.3.i = phi i32 [ %i.biq, %bb.hh ], [ %i.biq, %bb.hk ], [ %.sroa.19.2.i, %FSE_reloadDStream.exit.sink.split.i.i ] ; 2 uses
  %.sroa.0.3.i = phi i64 [ %.sroa.0.2155.i, %bb.hh ], [ %.sroa.0.2155.i, %bb.hk ], [ %.val30.i.sink.i.i, %FSE_reloadDStream.exit.sink.split.i.i ] ; 3 uses
  %i.bjg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bjh = load i16, ptr %i.aur, align 4, !tbaa !16
  %i.bji = zext i16 %i.bjh to i32                 ; 2 uses
  %i.bjj = and i32 %.sroa.19.3.i, 63
  %i.bjk = zext nneg i32 %i.bjj to i64
  %i.bjl = shl i64 %.sroa.0.3.i, %i.bjk
  %i.bjm = lshr i64 %i.bjl, 1
  %i.bjn = and i32 %i.bji, 63
  %i.bjo = xor i32 %i.bjn, 63
  %i.bjp = zext nneg i32 %i.bjo to i64
  %i.bjq = lshr i64 %i.bjm, %i.bjp
  %i.bjr = add i32 %.sroa.19.3.i, %i.bji          ; 7 uses
  %i.bjs = icmp ugt i32 %i.bjr, 64
  br i1 %i.bjs, label %FSE_initDState.exit84.i, label %bb.hm

bb.hm:                                            ; preds = %FSE_initDState.exit.i
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bgb, i64 8
  %.not.i.i79.i = icmp ult ptr %.sroa.41113.3.i, %i.bjt
  br i1 %.not.i.i79.i, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.bju = lshr i32 %i.bjr, 3
  %i.bjv = and i32 %i.bjr, 7
  br label %FSE_reloadDStream.exit.sink.split.i80.i

bb.ho:                                            ; preds = %bb.hm
  %i.bjw = icmp eq ptr %.sroa.41113.3.i, %.7120.i.i
  br i1 %i.bjw, label %FSE_initDState.exit84.i, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.bjx = lshr i32 %i.bjr, 3                     ; 2 uses
  %i.bjy = zext nneg i32 %i.bjx to i64
  %i.bjz = sub nsw i64 0, %i.bjy
  %i.bka = getelementptr inbounds i8, ptr %.sroa.41113.3.i, i64 %i.bjz
  %i.bkb = icmp ult ptr %i.bka, %.7120.i.i
  %i.bkc = ptrtoint ptr %.sroa.41113.3.i to i64
  %i.bkd = sub i64 %i.bkc, %i.bfy
  %i.bke = trunc i64 %i.bkd to i32
  %.024.i.i83.i = select i1 %i.bkb, i32 %i.bke, i32 %i.bjx ; 2 uses
  %i.bkf = shl i32 %.024.i.i83.i, 3
  %i.bkg = sub i32 %i.bjr, %i.bkf
  br label %FSE_reloadDStream.exit.sink.split.i80.i

FSE_reloadDStream.exit.sink.split.i80.i:          ; preds = %bb.hp, %bb.hn
  %.pn179.in.i = phi i32 [ %.024.i.i83.i, %bb.hp ], [ %i.bju, %bb.hn ]
  %.sroa.19.4.i = phi i32 [ %i.bkg, %bb.hp ], [ %i.bjv, %bb.hn ]
  %.pn179.i = zext i32 %.pn179.in.i to i64
  %.pn178.i = sub nsw i64 0, %.pn179.i
  %.sroa.41113.4.i = getelementptr inbounds i8, ptr %.sroa.41113.3.i, i64 %.pn178.i ; 2 uses
  %.val30.i.sink.i82.i = load i64, ptr %.sroa.41113.4.i, align 1
  br label %FSE_initDState.exit84.i

FSE_initDState.exit84.i:                          ; preds = %FSE_reloadDStream.exit.sink.split.i80.i, %bb.ho, %FSE_initDState.exit.i
  %.sroa.41113.5.i = phi ptr [ %.sroa.41113.3.i, %FSE_initDState.exit.i ], [ %.7120.i.i, %bb.ho ], [ %.sroa.41113.4.i, %FSE_reloadDStream.exit.sink.split.i80.i ] ; 6 uses
  %.sroa.19.5.i = phi i32 [ %i.bjr, %FSE_initDState.exit.i ], [ %i.bjr, %bb.ho ], [ %.sroa.19.4.i, %FSE_reloadDStream.exit.sink.split.i80.i ] ; 2 uses
  %.sroa.0.4.i = phi i64 [ %.sroa.0.3.i, %FSE_initDState.exit.i ], [ %.sroa.0.3.i, %bb.ho ], [ %.val30.i.sink.i82.i, %FSE_reloadDStream.exit.sink.split.i80.i ] ; 2 uses
  %i.bkh = getelementptr inbounds nuw i8, ptr %0, i64 4104
  %i.bki = load i16, ptr %i.auq, align 8, !tbaa !16
  %i.bkj = zext i16 %i.bki to i32                 ; 2 uses
  %i.bkk = and i32 %.sroa.19.5.i, 63
  %i.bkl = zext nneg i32 %i.bkk to i64
  %i.bkm = shl i64 %.sroa.0.4.i, %i.bkl
  %i.bkn = lshr i64 %i.bkm, 1
  %i.bko = and i32 %i.bkj, 63
  %i.bkp = xor i32 %i.bko, 63
  %i.bkq = zext nneg i32 %i.bkp to i64
  %i.bkr = lshr i64 %i.bkn, %i.bkq
  %i.bks = add i32 %.sroa.19.5.i, %i.bkj          ; 6 uses
  %i.bkt = icmp ugt i32 %i.bks, 64
  br i1 %i.bkt, label %ZSTD_decompressSequences.exit, label %bb.hq

bb.hq:                                            ; preds = %FSE_initDState.exit84.i
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bgb, i64 8 ; 2 uses
  %.not.i.i87.i = icmp ult ptr %.sroa.41113.5.i, %i.bku
  br i1 %.not.i.i87.i, label %bb.hr, label %FSE_initDState.exit92.thread258.i

FSE_initDState.exit92.thread258.i:                ; preds = %bb.hq
  %i.bkv = lshr i32 %i.bks, 3
  %i.bkw = and i32 %i.bks, 7
  %.pn181261.i = zext nneg i32 %i.bkv to i64
  %.pn180262.i = sub nsw i64 0, %.pn181261.i
  %.sroa.41113.6263.i = getelementptr inbounds i8, ptr %.sroa.41113.5.i, i64 %.pn180262.i ; 2 uses
  %.val30.i.sink.i90264.i = load i64, ptr %.sroa.41113.6263.i, align 1
  br label %.lr.ph.i

bb.hr:                                            ; preds = %bb.hq
  %i.bkx = icmp eq ptr %.sroa.41113.5.i, %.7120.i.i
  br i1 %i.bkx, label %.lr.ph.i, label %FSE_initDState.exit92.i

FSE_initDState.exit92.i:                          ; preds = %bb.hr
  %i.bky = lshr i32 %i.bks, 3                     ; 2 uses
  %i.bkz = zext nneg i32 %i.bky to i64
  %i.bla = sub nsw i64 0, %i.bkz
  %i.blb = getelementptr inbounds i8, ptr %.sroa.41113.5.i, i64 %i.bla
  %i.blc = icmp ult ptr %i.blb, %.7120.i.i
  %i.bld = ptrtoint ptr %.sroa.41113.5.i to i64
  %i.ble = sub i64 %i.bld, %i.bfy
  %i.blf = trunc i64 %i.ble to i32
  %.024.i.i91.i = select i1 %i.blc, i32 %i.blf, i32 %i.bky ; 2 uses
  %i.blg = shl i32 %.024.i.i91.i, 3
  %i.blh = sub i32 %i.bks, %i.blg                 ; 2 uses
  %.pn181.i = zext i32 %.024.i.i91.i to i64
  %.pn180.i = sub nsw i64 0, %.pn181.i
  %.sroa.41113.6.i = getelementptr inbounds i8, ptr %.sroa.41113.5.i, i64 %.pn180.i ; 2 uses
  %.val30.i.sink.i90.i = load i64, ptr %.sroa.41113.6.i, align 1
  %i.bli = icmp ugt i32 %i.blh, 64
  br i1 %i.bli, label %ZSTD_decompressSequences.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.hr, %FSE_initDState.exit92.i, %FSE_initDState.exit92.thread258.i
  %.sroa.0.5257.i = phi i64 [ %.val30.i.sink.i90264.i, %FSE_initDState.exit92.thread258.i ], [ %.val30.i.sink.i90.i, %FSE_initDState.exit92.i ], [ %.sroa.0.4.i, %bb.hr ]
  %.sroa.19.7256.i = phi i32 [ %i.bkw, %FSE_initDState.exit92.thread258.i ], [ %i.blh, %FSE_initDState.exit92.i ], [ %i.bks, %bb.hr ]
  %.sroa.41113.7255.i = phi ptr [ %.sroa.41113.6263.i, %FSE_initDState.exit92.thread258.i ], [ %.sroa.41113.6.i, %FSE_initDState.exit92.i ], [ %.7120.i.i, %bb.hr ]
  %i.blj = getelementptr inbounds nuw i8, ptr %0, i64 6156
  %i.blk = getelementptr inbounds i8, ptr %i.avw, i64 -3 ; 2 uses
  %i.bll = ptrtoint ptr %i.r to i64               ; 3 uses
  %i.blm = ptrtoint ptr %i.aup to i64             ; 2 uses
  %i.bln = ptrtoint ptr %i.aut to i64             ; 2 uses
  %i.blo = getelementptr inbounds i8, ptr %i.r, i64 -12
  %i.blp = getelementptr i8, ptr %i.r, i64 -8     ; 4 uses
  %i.blq = ptrtoint ptr %i.blp to i64             ; 4 uses
  br label %bb.hs

bb.hs:                                            ; preds = %ZSTD_execSequence.exit.i, %.lr.ph.i
  %.057200.i = phi ptr [ %1, %.lr.ph.i ], [ %i.bum, %ZSTD_execSequence.exit.i ] ; 8 uses
  %.sroa.0.0199.i = phi i64 [ %.sroa.0.5257.i, %.lr.ph.i ], [ %.sroa.0.6.i, %ZSTD_execSequence.exit.i ]
  %.sroa.19.0198.i = phi i32 [ %.sroa.19.7256.i, %.lr.ph.i ], [ %i.bon, %ZSTD_execSequence.exit.i ] ; 5 uses
  %.sroa.41113.0197.i = phi ptr [ %.sroa.41113.7255.i, %.lr.ph.i ], [ %.sroa.41113.8.i, %ZSTD_execSequence.exit.i ] ; 7 uses
  %.sroa.62.0196.i = phi i64 [ %i.bip, %.lr.ph.i ], [ %i.bmy, %ZSTD_execSequence.exit.i ]
  %.sroa.67.0195.i = phi i64 [ %i.bjq, %.lr.ph.i ], [ %i.bny, %ZSTD_execSequence.exit.i ]
  %.sroa.72.0194.i = phi i64 [ %i.bkr, %.lr.ph.i ], [ %i.bop, %ZSTD_execSequence.exit.i ]
  %.sroa.80.0193.i = phi ptr [ %i.avv, %.lr.ph.i ], [ %.5.i.i, %ZSTD_execSequence.exit.i ] ; 7 uses
  %.sroa.77.0192.i = phi i64 [ 1, %.lr.ph.i ], [ %.sroa.5.0191.i, %ZSTD_execSequence.exit.i ]
  %.sroa.5.0191.i = phi i64 [ 0, %.lr.ph.i ], [ %.054.i.i, %ZSTD_execSequence.exit.i ] ; 2 uses
  %.0130190.i = phi i32 [ %i.auw, %.lr.ph.i ], [ %i.bml, %ZSTD_execSequence.exit.i ] ; 2 uses
  %.0131189.i = phi ptr [ %.021, %.lr.ph.i ], [ %i.bpr, %ZSTD_execSequence.exit.i ] ; 7 uses
  %.not.i93.i = icmp ult ptr %.sroa.41113.0197.i, %i.bku
  br i1 %.not.i93.i, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.blr = lshr i32 %.sroa.19.0198.i, 3
  %i.bls = zext nneg i32 %i.blr to i64
  %i.blt = sub nsw i64 0, %i.bls
  %i.blu = getelementptr inbounds i8, ptr %.sroa.41113.0197.i, i64 %i.blt ; 2 uses
  %i.blv = and i32 %.sroa.19.0198.i, 7
  %.val30.i.i = load i64, ptr %i.blu, align 1
  br label %FSE_reloadDStream.exit.i

bb.hu:                                            ; preds = %bb.hs
  %i.blw = icmp eq ptr %.sroa.41113.0197.i, %.7120.i.i
  br i1 %i.blw, label %FSE_reloadDStream.exit.i, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.blx = lshr i32 %.sroa.19.0198.i, 3           ; 2 uses
  %i.bly = zext nneg i32 %i.blx to i64
  %i.blz = sub nsw i64 0, %i.bly
  %i.bma = getelementptr inbounds i8, ptr %.sroa.41113.0197.i, i64 %i.blz
  %i.bmb = icmp ult ptr %i.bma, %.7120.i.i
  %i.bmc = ptrtoint ptr %.sroa.41113.0197.i to i64
  %i.bmd = sub i64 %i.bmc, %i.bfy
  %i.bme = trunc i64 %i.bmd to i32
  %.024.i.i = select i1 %i.bmb, i32 %i.bme, i32 %i.blx ; 2 uses
  %i.bmf = zext i32 %.024.i.i to i64
  %i.bmg = sub nsw i64 0, %i.bmf
  %i.bmh = getelementptr inbounds i8, ptr %.sroa.41113.0197.i, i64 %i.bmg ; 2 uses
  %i.bmi = shl i32 %.024.i.i, 3
  %i.bmj = sub i32 %.sroa.19.0198.i, %i.bmi
  %.val.i94.i = load i64, ptr %i.bmh, align 1
  br label %FSE_reloadDStream.exit.i

FSE_reloadDStream.exit.i:                         ; preds = %bb.hv, %bb.hu, %bb.ht
  %.sroa.41113.8.i = phi ptr [ %i.blu, %bb.ht ], [ %i.bmh, %bb.hv ], [ %.sroa.41113.0197.i, %bb.hu ] ; 2 uses
  %.sroa.19.8.i = phi i32 [ %i.blv, %bb.ht ], [ %i.bmj, %bb.hv ], [ %.sroa.19.0198.i, %bb.hu ] ; 3 uses
  %.sroa.0.6.i = phi i64 [ %.val30.i.i, %bb.ht ], [ %.val.i94.i, %bb.hv ], [ %.sroa.0.0199.i, %bb.hu ] ; 5 uses
  %i.bmk = icmp sgt i32 %.0130190.i, 0
  br i1 %i.bmk, label %bb.hw, label %FSE_reloadDStream.exit.thread.i

bb.hw:                                            ; preds = %FSE_reloadDStream.exit.i
  %i.bml = add nsw i32 %.0130190.i, -1
  %i.bmm = getelementptr inbounds nuw [4 x i8], ptr %i.bjg, i64 %.sroa.62.0196.i ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.bmm, align 2, !tbaa !19
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bmm, i64 2
  %.sroa.4.0.copyload.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i, align 2, !tbaa !8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bmm, i64 3
  %.sroa.5.0.copyload.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i, align 1, !tbaa !8
  %i.bmn = zext i8 %.sroa.5.0.copyload.i.i.i to i32 ; 2 uses
  %i.bmo = and i32 %.sroa.19.8.i, 63
  %i.bmp = zext nneg i32 %i.bmo to i64
  %i.bmq = shl i64 %.sroa.0.6.i, %i.bmp
  %i.bmr = lshr i64 %i.bmq, 1
  %i.bms = and i32 %i.bmn, 63
  %i.bmt = xor i32 %i.bms, 63
  %i.bmu = zext nneg i32 %i.bmt to i64
  %i.bmv = lshr i64 %i.bmr, %i.bmu
  %i.bmw = add i32 %.sroa.19.8.i, %i.bmn          ; 2 uses
  %i.bmx = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.bmy = add nuw i64 %i.bmv, %i.bmx
  %i.bmz = zext i8 %.sroa.4.0.copyload.i.i.i to i64
  %.not.i95.i = icmp eq i8 %.sroa.4.0.copyload.i.i.i, 0
  %.sroa.speculated.i = select i1 %.not.i95.i, i64 %.sroa.77.0192.i, i64 %.sroa.5.0191.i
  %i.bna = icmp eq i8 %.sroa.4.0.copyload.i.i.i, 63
  br i1 %i.bna, label %bb.hx, label %bb.ib

bb.hx:                                            ; preds = %bb.hw
  %i.bnb = icmp ult ptr %.sroa.80.0193.i, %i.avw
  br i1 %i.bnb, label %bb.hy, label %.thread.i97.i

bb.hy:                                            ; preds = %bb.hx
  %i.bnc = getelementptr inbounds nuw i8, ptr %.sroa.80.0193.i, i64 1 ; 4 uses
  %i.bnd = load i8, ptr %.sroa.80.0193.i, align 1, !tbaa !8 ; 2 uses
  %i.bne = zext i8 %i.bnd to i64
  %.not65.i.i = icmp eq i8 %i.bnd, -1
  br i1 %.not65.i.i, label %bb.hz, label %.thread.i97.i

.thread.i97.i:                                    ; preds = %bb.hy, %bb.hx
  %i.bnf = phi i64 [ %i.bne, %bb.hy ], [ 0, %bb.hx ]
  %.088.i.i = phi ptr [ %i.bnc, %bb.hy ], [ %.sroa.80.0193.i, %bb.hx ]
  %narrow.i.i = add nuw nsw i64 %i.bnf, 63
  br label %bb.ib

bb.hz:                                            ; preds = %bb.hy
  %.not66.i.i = icmp ugt ptr %i.bnc, %i.blk
  br i1 %.not66.i.i, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %.0.val.i.i = load i16, ptr %i.bnc, align 1
  %i.bng = getelementptr i8, ptr %.sroa.80.0193.i, i64 3
  %.0.val71.i.i = load i8, ptr %i.bng, align 1, !tbaa !8
  %i.bnh = zext i16 %.0.val.i.i to i64
  %i.bni = zext i8 %.0.val71.i.i to i64
  %i.bnj = shl nuw nsw i64 %i.bni, 16
  %i.bnk = or disjoint i64 %i.bnj, %i.bnh
  %i.bnl = getelementptr inbounds nuw i8, ptr %.sroa.80.0193.i, i64 4
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz, %.thread.i97.i, %bb.hw
  %.156.i.i = phi i64 [ %i.bmz, %bb.hw ], [ %narrow.i.i, %.thread.i97.i ], [ %i.bnk, %bb.ia ], [ 63, %bb.hz ] ; 15 uses
  %.2.i96.i = phi ptr [ %.sroa.80.0193.i, %bb.hw ], [ %.088.i.i, %.thread.i97.i ], [ %i.bnl, %bb.ia ], [ %i.bnc, %bb.hz ] ; 7 uses
  %i.bnm = getelementptr inbounds nuw [4 x i8], ptr %i.bkh, i64 %.sroa.67.0195.i ; 3 uses
  %.sroa.0.0.copyload.i72.i.i = load i16, ptr %i.bnm, align 2, !tbaa !19
  %.sroa.4.0..sroa_idx.i73.i.i = getelementptr inbounds nuw i8, ptr %i.bnm, i64 2
  %.sroa.4.0.copyload.i74.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i73.i.i, align 2, !tbaa !8 ; 2 uses
  %.sroa.5.0..sroa_idx.i75.i.i = getelementptr inbounds nuw i8, ptr %i.bnm, i64 3
  %.sroa.5.0.copyload.i76.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i75.i.i, align 1, !tbaa !8
  %i.bnn = zext i8 %.sroa.5.0.copyload.i76.i.i to i32 ; 2 uses
  %i.bno = and i32 %i.bmw, 63
  %i.bnp = zext nneg i32 %i.bno to i64
  %i.bnq = shl i64 %.sroa.0.6.i, %i.bnp
  %i.bnr = lshr i64 %i.bnq, 1
  %i.bns = and i32 %i.bnn, 63
  %i.bnt = xor i32 %i.bns, 63
  %i.bnu = zext nneg i32 %i.bnt to i64
  %i.bnv = lshr i64 %i.bnr, %i.bnu
  %i.bnw = add i32 %i.bmw, %i.bnn                 ; 2 uses
  %i.bnx = zext i16 %.sroa.0.0.copyload.i72.i.i to i64
  %i.bny = add nuw i64 %i.bnv, %i.bnx
  %i.bnz = zext i8 %.sroa.4.0.copyload.i74.i.i to i32
  %i.boa = add nsw i32 %i.bnz, -1
  %i.bob = icmp eq i8 %.sroa.4.0.copyload.i74.i.i, 0 ; 2 uses
  %spec.store.select.i.i = select i1 %i.bob, i32 0, i32 %i.boa ; 2 uses
  %i.boc = add i32 %i.bnw, %spec.store.select.i.i ; 2 uses
  %i.bod = getelementptr inbounds nuw [4 x i8], ptr %i.blj, i64 %.sroa.72.0194.i ; 3 uses
  %.sroa.0.0.copyload.i79.i.i = load i16, ptr %i.bod, align 2, !tbaa !19
  %.sroa.4.0..sroa_idx.i80.i.i = getelementptr inbounds nuw i8, ptr %i.bod, i64 2
  %.sroa.4.0.copyload.i81.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i80.i.i, align 2, !tbaa !8 ; 2 uses
  %.sroa.5.0..sroa_idx.i82.i.i = getelementptr inbounds nuw i8, ptr %i.bod, i64 3
  %.sroa.5.0.copyload.i83.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i82.i.i, align 1, !tbaa !8
  %i.boe = zext i8 %.sroa.5.0.copyload.i83.i.i to i32 ; 2 uses
  %i.bof = and i32 %i.boc, 63
  %i.bog = zext nneg i32 %i.bof to i64
  %i.boh = shl i64 %.sroa.0.6.i, %i.bog
  %i.boi = lshr i64 %i.boh, 1
  %i.boj = and i32 %i.boe, 63
  %i.bok = xor i32 %i.boj, 63
  %i.bol = zext nneg i32 %i.bok to i64
  %i.bom = lshr i64 %i.boi, %i.bol
  %i.bon = add i32 %i.boc, %i.boe                 ; 2 uses
  %i.boo = zext i16 %.sroa.0.0.copyload.i79.i.i to i64
  %i.bop = add nuw i64 %i.bom, %i.boo
  %i.boq = zext i8 %.sroa.4.0.copyload.i81.i.i to i64
  %i.bor = icmp eq i8 %.sroa.4.0.copyload.i81.i.i, 127
  br i1 %i.bor, label %bb.ic, label %ZSTD_decodeSequence.exit.i

bb.ic:                                            ; preds = %bb.ib
  %i.bos = icmp ult ptr %.2.i96.i, %i.avw
  br i1 %i.bos, label %bb.id, label %.thread89.i.i

bb.id:                                            ; preds = %bb.ic
  %i.bot = getelementptr inbounds nuw i8, ptr %.2.i96.i, i64 1 ; 4 uses
  %i.bou = load i8, ptr %.2.i96.i, align 1, !tbaa !8 ; 2 uses
  %i.bov = zext i8 %i.bou to i64
  %.not67.i.i = icmp eq i8 %i.bou, -1
  br i1 %.not67.i.i, label %bb.ie, label %.thread89.i.i

.thread89.i.i:                                    ; preds = %bb.id, %bb.ic
  %i.bow = phi i64 [ %i.bov, %bb.id ], [ 0, %bb.ic ]
  %.392.i.i = phi ptr [ %i.bot, %bb.id ], [ %.2.i96.i, %bb.ic ]
  %narrow69.i.i = add nuw nsw i64 %i.bow, 127
  br label %ZSTD_decodeSequence.exit.i

bb.ie:                                            ; preds = %bb.id
  %.not68.i.i = icmp ugt ptr %i.bot, %i.blk
  br i1 %.not68.i.i, label %ZSTD_decodeSequence.exit.i, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %.3.val.i.i = load i16, ptr %i.bot, align 1
  %i.box = getelementptr i8, ptr %.2.i96.i, i64 3
  %.3.val70.i.i = load i8, ptr %i.box, align 1, !tbaa !8
  %i.boy = zext i16 %.3.val.i.i to i64
  %i.boz = zext i8 %.3.val70.i.i to i64
  %i.bpa = shl nuw nsw i64 %i.boz, 16
  %i.bpb = or disjoint i64 %i.bpa, %i.boy
  %i.bpc = getelementptr inbounds nuw i8, ptr %.2.i96.i, i64 4
  br label %ZSTD_decodeSequence.exit.i

ZSTD_decodeSequence.exit.i:                       ; preds = %bb.if, %bb.ie, %.thread89.i.i, %bb.ib
  %.153.i.i = phi i64 [ %i.boq, %bb.ib ], [ %narrow69.i.i, %.thread89.i.i ], [ %i.bpb, %bb.if ], [ 127, %bb.ie ] ; 4 uses
  %.5.i.i = phi ptr [ %.2.i96.i, %bb.ib ], [ %.392.i.i, %.thread89.i.i ], [ %i.bpc, %bb.if ], [ %i.bot, %bb.ie ]
  %i.bpd = and i32 %spec.store.select.i.i, 63     ; 2 uses
  %i.bpe = zext nneg i32 %i.bpd to i64
  %i.bpf = shl nuw i64 1, %i.bpe
  %i.bpg = and i32 %i.bnw, 63
  %i.bph = zext nneg i32 %i.bpg to i64
  %i.bpi = shl i64 %.sroa.0.6.i, %i.bph
  %i.bpj = lshr i64 %i.bpi, 1
  %i.bpk = xor i32 %i.bpd, 63
  %i.bpl = zext nneg i32 %i.bpk to i64
  %i.bpm = lshr i64 %i.bpj, %i.bpl
  %i.bpn = add nuw i64 %i.bpm, %i.bpf
  %.054.i.i = select i1 %i.bob, i64 %.sroa.speculated.i, i64 %i.bpn ; 7 uses
  %i.bpo = add nuw nsw i64 %.153.i.i, 4           ; 3 uses
  %i.bpp = getelementptr inbounds nuw i8, ptr %.057200.i, i64 %.156.i.i ; 10 uses
  %i.bpq = getelementptr i8, ptr %i.bpp, i64 %i.bpo ; 9 uses
  %i.bpr = getelementptr inbounds nuw i8, ptr %.0131189.i, i64 %.156.i.i ; 3 uses
  %i.bps = add nuw nsw i64 %i.bpo, %.156.i.i      ; 2 uses
  %i.bpt = ptrtoint ptr %.057200.i to i64         ; 12 uses
  %i.bpu = sub i64 %i.bll, %i.bpt
  %i.bpv = icmp ugt i64 %i.bps, %i.bpu
  br i1 %i.bpv, label %ZSTD_decompressSequences.exit, label %bb.ig

bb.ig:                                            ; preds = %ZSTD_decodeSequence.exit.i
  %i.bpw = ptrtoint ptr %.0131189.i to i64        ; 2 uses
  %i.bpx = sub i64 %i.blm, %i.bpw
  %i.bpy = icmp ugt i64 %.156.i.i, %i.bpx
  br i1 %i.bpy, label %ZSTD_decompressSequences.exit, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.bpz = ptrtoint ptr %i.bpp to i64             ; 2 uses
  %i.bqa = sub i64 %i.bpz, %i.bln
  %i.bqb = and i64 %i.bqa, 4294967295
  %i.bqc = icmp ugt i64 %.054.i.i, %i.bqb
  br i1 %i.bqc, label %ZSTD_decompressSequences.exit, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.bqd = icmp ugt ptr %i.bpq, %i.r
  br i1 %i.bqd, label %ZSTD_decompressSequences.exit, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.bqe = icmp ugt ptr %i.bpr, %i.aup
  br i1 %i.bqe, label %ZSTD_decompressSequences.exit, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.bqf = sub i64 %i.bpw, %i.bpt
  %i.bqg = icmp ugt i64 %i.bpo, %i.bqf
  br i1 %i.bqg, label %ZSTD_decompressSequences.exit, label %bb.il

bb.il:                                            ; preds = %bb.ik
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.057200.i, ptr align 1 %.0131189.i, i64 %.156.i.i, i1 false)
  %i.bqh = sub i64 %i.bll, %i.bpz
  %i.bqi = icmp slt i64 %i.bqh, 8
  br i1 %i.bqi, label %ZSTD_decompressSequences.exit, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.bqj = ptrtoint ptr %i.bpr to i64
  %i.bqk = ptrtoint ptr %i.bpq to i64             ; 2 uses
  %i.bql = sub i64 %i.bqj, %i.bqk
  %i.bqm = icmp ult i64 %i.bql, 12                ; 2 uses
  %i.bqn = sub nsw i64 0, %.054.i.i
  %i.bqo = getelementptr inbounds i8, ptr %i.bpp, i64 %i.bqn ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bqp = icmp ult ptr %i.bqo, %i.aut
  %i.bqq = icmp ugt i64 %.054.i.i, %i.bln
  %or.cond.i.i18 = or i1 %i.bqq, %i.bqp
  br i1 %or.cond.i.i18, label %ZSTD_execSequence.exit.thread167.i, label %bb.in

ZSTD_execSequence.exit.thread167.i:               ; preds = %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %ZSTD_decompressSequences.exit

bb.in:                                            ; preds = %bb.im
  br i1 %i.bqm, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %bb.in
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.bpq, i64 12
  %i.bqs = icmp ugt ptr %i.bqr, %i.r
  %i.bqt = sub i64 %i.bll, %i.bqk
  %spec.select.i.i19 = select i1 %i.bqs, i64 %i.bqt, i64 12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 1 %i.bpq, i64 %spec.select.i.i19, i1 false)
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.in
  %.183.i.i = phi i64 [ %spec.select.i.i19, %bb.io ], [ 12, %bb.in ]
  %i.bqu = icmp samesign ult i64 %.054.i.i, 8
  br i1 %i.bqu, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.bqv = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_execSequence.dec64table, i64 %.054.i.i
  %i.bqw = load i32, ptr %i.bqv, align 4, !tbaa !9
  %i.bqx = load i8, ptr %i.bqo, align 1, !tbaa !8
  store i8 %i.bqx, ptr %i.bpp, align 1, !tbaa !8
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqo, i64 1
  %i.bqz = load i8, ptr %i.bqy, align 1, !tbaa !8
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bpp, i64 1
  store i8 %i.bqz, ptr %i.bra, align 1, !tbaa !8
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bqo, i64 2
  %i.brc = load i8, ptr %i.brb, align 1, !tbaa !8
  %i.brd = getelementptr inbounds nuw i8, ptr %i.bpp, i64 2
  store i8 %i.brc, ptr %i.brd, align 1, !tbaa !8
  %i.bre = getelementptr inbounds nuw i8, ptr %i.bqo, i64 3
  %i.brf = load i8, ptr %i.bre, align 1, !tbaa !8
  %i.brg = getelementptr inbounds nuw i8, ptr %i.bpp, i64 3
  store i8 %i.brf, ptr %i.brg, align 1, !tbaa !8
  %i.brh = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_execSequence.dec32table, i64 %.054.i.i
  %i.bri = load i32, ptr %i.brh, align 4, !tbaa !9
  %i.brj = sext i32 %i.bri to i64
  %i.brk = getelementptr inbounds i8, ptr %i.bqo, i64 %i.brj ; 2 uses
  %i.brl = getelementptr inbounds nuw i8, ptr %i.bpp, i64 4
  %.val.i98.i = load i32, ptr %i.brk, align 1
  store i32 %.val.i98.i, ptr %i.brl, align 1
  %i.brm = sext i32 %i.bqw to i64
  %i.brn = sub nsw i64 0, %i.brm
  %i.bro = getelementptr inbounds i8, ptr %i.brk, i64 %i.brn
  br label %bb.is

bb.ir:                                            ; preds = %bb.ip
  %.val99.i.i = load i64, ptr %i.bqo, align 1
  store i64 %.val99.i.i, ptr %i.bpp, align 1
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %.084.i.i = phi ptr [ %i.bro, %bb.iq ], [ %i.bqo, %bb.ir ] ; 2 uses
  %.084.i.i597 = ptrtoaddr ptr %.084.i.i to i64   ; 2 uses
  %i.brp = getelementptr inbounds nuw i8, ptr %i.bpp, i64 8 ; 11 uses
  %i.brq = getelementptr inbounds nuw i8, ptr %.084.i.i, i64 8 ; 10 uses
  %i.brr = icmp ugt ptr %i.bpq, %i.blo
  br i1 %i.brr, label %bb.it, label %bb.iw

bb.it:                                            ; preds = %bb.is
  %i.brs = icmp ult ptr %i.brp, %i.blp
  br i1 %i.brs, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  %i.brt = ptrtoint ptr %i.brp to i64
  %i.bru = sub i64 %i.blq, %i.brt                 ; 2 uses
  %i.brv = icmp sgt i64 %i.bru, 0
  br i1 %i.brv, label %.lr.ph.i.i.i.preheader, label %ZSTD_wildcopy.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.iu
  %i.brw = add i64 %.156.i.i, %i.bpt
  %i.brx = add i64 %i.brw, 16
  %i.bry = tail call i64 @llvm.umax.i64(i64 %i.blq, i64 %i.brx)
  %i.brz = add i64 %i.bry, -9
  %i.bsa = add i64 %.156.i.i, %i.bpt
  %i.bsb = sub i64 %i.brz, %i.bsa                 ; 2 uses
  %i.bsc = lshr i64 %i.bsb, 3
  %i.bsd = add nuw nsw i64 %i.bsc, 1              ; 2 uses
  %min.iters.check599 = icmp ult i64 %i.bsb, 56
  br i1 %min.iters.check599, label %.lr.ph.i.i.i.preheader629, label %vector.memcheck596

vector.memcheck596:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.bse = add i64 %.156.i.i, %i.bpt
  %i.bsf = sub i64 %.084.i.i597, %i.bse
  %diff.check598 = icmp ugt i64 %i.bsf, -32
  br i1 %diff.check598, label %.lr.ph.i.i.i.preheader629, label %vector.ph600

vector.ph600:                                     ; preds = %vector.memcheck596
  %n.vec601 = and i64 %i.bsd, 4611686018427387900 ; 3 uses
  %i.bsg = shl i64 %n.vec601, 3                   ; 2 uses
  %i.bsh = getelementptr i8, ptr %i.brp, i64 %i.bsg
  %i.bsi = getelementptr i8, ptr %i.brq, i64 %i.bsg
  br label %vector.body602

vector.body602:                                   ; preds = %vector.body602, %vector.ph600
  %index603 = phi i64 [ 0, %vector.ph600 ], [ %index.next608, %vector.body602 ] ; 2 uses
  %i.bsj = shl i64 %index603, 3                   ; 2 uses
  %next.gep604 = getelementptr i8, ptr %i.brp, i64 %i.bsj ; 2 uses
  %next.gep605 = getelementptr i8, ptr %i.brq, i64 %i.bsj ; 2 uses
  %i.bsk = getelementptr i8, ptr %next.gep605, i64 16
  %wide.load606 = load <2 x i64>, ptr %next.gep605, align 1
  %wide.load607 = load <2 x i64>, ptr %i.bsk, align 1
  %i.bsl = getelementptr i8, ptr %next.gep604, i64 16
  store <2 x i64> %wide.load606, ptr %next.gep604, align 1
  store <2 x i64> %wide.load607, ptr %i.bsl, align 1
  %index.next608 = add nuw i64 %index603, 4       ; 2 uses
  %i.bsm = icmp eq i64 %index.next608, %n.vec601
  br i1 %i.bsm, label %middle.block609, label %vector.body602, !llvm.loop !53

middle.block609:                                  ; preds = %vector.body602
  %cmp.n610 = icmp eq i64 %i.bsd, %n.vec601
  br i1 %cmp.n610, label %ZSTD_wildcopy.exit.i.i, label %.lr.ph.i.i.i.preheader629

.lr.ph.i.i.i.preheader629:                        ; preds = %vector.memcheck596, %.lr.ph.i.i.i.preheader, %middle.block609
  %.011.i.i.i.ph = phi ptr [ %i.brp, %vector.memcheck596 ], [ %i.brp, %.lr.ph.i.i.i.preheader ], [ %i.bsh, %middle.block609 ]
  %.0910.i.i.i.ph = phi ptr [ %i.brq, %vector.memcheck596 ], [ %i.brq, %.lr.ph.i.i.i.preheader ], [ %i.bsi, %middle.block609 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader629, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.bsn, %.lr.ph.i.i.i ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader629 ] ; 2 uses
  %.0910.i.i.i = phi ptr [ %i.bso, %.lr.ph.i.i.i ], [ %.0910.i.i.i.ph, %.lr.ph.i.i.i.preheader629 ] ; 2 uses
  %.09.val.i.i.i = load i64, ptr %.0910.i.i.i, align 1
  store i64 %.09.val.i.i.i, ptr %.011.i.i.i, align 1
  %i.bsn = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8 ; 2 uses
  %i.bso = getelementptr inbounds nuw i8, ptr %.0910.i.i.i, i64 8
  %i.bsp = icmp ult ptr %i.bsn, %i.blp
  br i1 %i.bsp, label %.lr.ph.i.i.i, label %ZSTD_wildcopy.exit.i.i, !llvm.loop !54

ZSTD_wildcopy.exit.i.i:                           ; preds = %.lr.ph.i.i.i, %middle.block609, %bb.iu
  %i.bsq = getelementptr inbounds i8, ptr %i.brq, i64 %i.bru
  br label %bb.iv

bb.iv:                                            ; preds = %ZSTD_wildcopy.exit.i.i, %bb.it
  %.087.i.i = phi ptr [ %i.blp, %ZSTD_wildcopy.exit.i.i ], [ %i.brp, %bb.it ] ; 7 uses
  %.185.i.i = phi ptr [ %i.bsq, %ZSTD_wildcopy.exit.i.i ], [ %i.brq, %bb.it ] ; 7 uses
  %.185.i.i563 = ptrtoaddr ptr %.185.i.i to i64
  %i.bsr = icmp ult ptr %.087.i.i, %i.bpq
  br i1 %i.bsr, label %iter.check580, label %ZSTD_wildcopy.exit104.i.i

iter.check580:                                    ; preds = %bb.iv
  %i.bss = add nsw i64 %.156.i.i, 4
  %i.bst = add nsw i64 %i.bss, %.153.i.i
  %i.bsu = add i64 %i.bst, %i.bpt
  %i.bsv = add nsw i64 %.156.i.i, 8
  %i.bsw = add i64 %i.bsv, %i.bpt
  %umax564 = tail call i64 @llvm.umax.i64(i64 %i.blq, i64 %i.bsw)
  %i.bsx = sub i64 %i.bsu, %umax564               ; 7 uses
  %min.iters.check565 = icmp ult i64 %i.bsx, 4
  br i1 %min.iters.check565, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check580
  %i.bsy = add nsw i64 %.156.i.i, 8
  %i.bsz = add i64 %i.bsy, %i.bpt
  %umax562 = tail call i64 @llvm.umax.i64(i64 %i.blq, i64 %i.bsz)
  %i.bta = sub i64 %.185.i.i563, %umax562
  %diff.check = icmp ugt i64 %i.bta, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check566

vector.main.loop.iter.check566:                   ; preds = %vector.memcheck
  %min.iters.check567 = icmp ult i64 %i.bsx, 32
  br i1 %min.iters.check567, label %vec.epilog.ph584, label %vector.ph568

vector.ph568:                                     ; preds = %vector.main.loop.iter.check566
  %i.btb = and i64 %i.bsx, 28
  %n.vec569 = and i64 %i.bsx, -32                 ; 5 uses
  %i.btc = getelementptr i8, ptr %.185.i.i, i64 %n.vec569
  %i.btd = getelementptr i8, ptr %.087.i.i, i64 %n.vec569
  br label %vector.body570

vector.body570:                                   ; preds = %vector.body570, %vector.ph568
  %index571 = phi i64 [ 0, %vector.ph568 ], [ %index.next575, %vector.body570 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.185.i.i, i64 %index571 ; 2 uses
  %next.gep572 = getelementptr i8, ptr %.087.i.i, i64 %index571 ; 2 uses
  %i.bte = getelementptr i8, ptr %next.gep, i64 16
  %wide.load573 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !8
  %wide.load574 = load <16 x i8>, ptr %i.bte, align 1, !tbaa !8
  %i.btf = getelementptr i8, ptr %next.gep572, i64 16
  store <16 x i8> %wide.load573, ptr %next.gep572, align 1, !tbaa !8
  store <16 x i8> %wide.load574, ptr %i.btf, align 1, !tbaa !8
  %index.next575 = add nuw i64 %index571, 32      ; 2 uses
  %i.btg = icmp eq i64 %index.next575, %n.vec569
  br i1 %i.btg, label %middle.block576, label %vector.body570, !llvm.loop !55

middle.block576:                                  ; preds = %vector.body570
  %cmp.n577 = icmp eq i64 %i.bsx, %n.vec569
  br i1 %cmp.n577, label %ZSTD_wildcopy.exit104.i.i, label %vec.epilog.iter.check582

vec.epilog.iter.check582:                         ; preds = %middle.block576
  %min.epilog.iters.check583 = icmp eq i64 %i.btb, 0
  br i1 %min.epilog.iters.check583, label %.lr.ph.i.i.preheader, label %vec.epilog.ph584, !prof !56

vec.epilog.ph584:                                 ; preds = %vector.main.loop.iter.check566, %vec.epilog.iter.check582
  %vec.epilog.resume.val578 = phi i64 [ %n.vec569, %vec.epilog.iter.check582 ], [ 0, %vector.main.loop.iter.check566 ]
  %n.vec585 = and i64 %i.bsx, -4                  ; 4 uses
  %i.bth = getelementptr i8, ptr %.185.i.i, i64 %n.vec585
  %i.bti = getelementptr i8, ptr %.087.i.i, i64 %n.vec585
  br label %vec.epilog.vector.body586

vec.epilog.vector.body586:                        ; preds = %vec.epilog.vector.body586, %vec.epilog.ph584
  %index587 = phi i64 [ %vec.epilog.resume.val578, %vec.epilog.ph584 ], [ %index.next591, %vec.epilog.vector.body586 ] ; 3 uses
  %next.gep588 = getelementptr i8, ptr %.185.i.i, i64 %index587
  %next.gep589 = getelementptr i8, ptr %.087.i.i, i64 %index587
  %wide.load590 = load <4 x i8>, ptr %next.gep588, align 1, !tbaa !8
  store <4 x i8> %wide.load590, ptr %next.gep589, align 1, !tbaa !8
  %index.next591 = add nuw i64 %index587, 4       ; 2 uses
  %i.btj = icmp eq i64 %index.next591, %n.vec585
  br i1 %i.btj, label %vec.epilog.middle.block592, label %vec.epilog.vector.body586, !llvm.loop !57

vec.epilog.middle.block592:                       ; preds = %vec.epilog.vector.body586
  %cmp.n593 = icmp eq i64 %i.bsx, %n.vec585
  br i1 %cmp.n593, label %ZSTD_wildcopy.exit104.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check580, %vec.epilog.iter.check582, %vec.epilog.middle.block592
  %.2108.i.i.ph = phi ptr [ %.185.i.i, %iter.check580 ], [ %.185.i.i, %vector.memcheck ], [ %i.btc, %vec.epilog.iter.check582 ], [ %i.bth, %vec.epilog.middle.block592 ]
  %.188107.i.i.ph = phi ptr [ %.087.i.i, %iter.check580 ], [ %.087.i.i, %vector.memcheck ], [ %i.btd, %vec.epilog.iter.check582 ], [ %i.bti, %vec.epilog.middle.block592 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.2108.i.i = phi ptr [ %i.btk, %.lr.ph.i.i ], [ %.2108.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.188107.i.i = phi ptr [ %i.btm, %.lr.ph.i.i ], [ %.188107.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.btk = getelementptr inbounds nuw i8, ptr %.2108.i.i, i64 1
  %i.btl = load i8, ptr %.2108.i.i, align 1, !tbaa !8
  %i.btm = getelementptr inbounds nuw i8, ptr %.188107.i.i, i64 1 ; 2 uses
  store i8 %i.btl, ptr %.188107.i.i, align 1, !tbaa !8
  %i.btn = icmp ult ptr %i.btm, %i.bpq
  br i1 %i.btn, label %.lr.ph.i.i, label %ZSTD_wildcopy.exit104.i.i, !llvm.loop !58

bb.iw:                                            ; preds = %bb.is
  %i.bto = icmp samesign ugt i64 %.153.i.i, 4
  br i1 %i.bto, label %.lr.ph.i100.i.i.preheader, label %ZSTD_wildcopy.exit104.i.i

.lr.ph.i100.i.i.preheader:                        ; preds = %bb.iw
  %i.btp = add nsw i64 %.156.i.i, %.153.i.i
  %i.btq = add i64 %i.btp, %i.bpt
  %i.btr = add i64 %i.btq, 4
  %i.bts = add i64 %.156.i.i, %i.bpt
  %i.btt = add i64 %i.bts, 16
  %i.btu = tail call i64 @llvm.umax.i64(i64 %i.btr, i64 %i.btt)
  %i.btv = add i64 %i.btu, -9
  %i.btw = add i64 %.156.i.i, %i.bpt
  %i.btx = sub i64 %i.btv, %i.btw                 ; 2 uses
  %i.bty = lshr i64 %i.btx, 3
  %i.btz = add nuw nsw i64 %i.bty, 1              ; 2 uses
  %min.iters.check615 = icmp ult i64 %i.btx, 56
  br i1 %min.iters.check615, label %.lr.ph.i100.i.i.preheader630, label %vector.memcheck612

vector.memcheck612:                               ; preds = %.lr.ph.i100.i.i.preheader
  %i.bua = add i64 %.156.i.i, %i.bpt
  %i.bub = sub i64 %.084.i.i597, %i.bua
  %diff.check613 = icmp ugt i64 %i.bub, -32
  br i1 %diff.check613, label %.lr.ph.i100.i.i.preheader630, label %vector.ph616

vector.ph616:                                     ; preds = %vector.memcheck612
  %n.vec617 = and i64 %i.btz, 4611686018427387900 ; 3 uses
  %i.buc = shl i64 %n.vec617, 3                   ; 2 uses
  %i.bud = getelementptr i8, ptr %i.brp, i64 %i.buc
  %i.bue = getelementptr i8, ptr %i.brq, i64 %i.buc
  br label %vector.body618

vector.body618:                                   ; preds = %vector.body618, %vector.ph616
  %index619 = phi i64 [ 0, %vector.ph616 ], [ %index.next624, %vector.body618 ] ; 2 uses
  %i.buf = shl i64 %index619, 3                   ; 2 uses
  %next.gep620 = getelementptr i8, ptr %i.brp, i64 %i.buf ; 2 uses
  %next.gep621 = getelementptr i8, ptr %i.brq, i64 %i.buf ; 2 uses
  %i.bug = getelementptr i8, ptr %next.gep621, i64 16
  %wide.load622 = load <2 x i64>, ptr %next.gep621, align 1
  %wide.load623 = load <2 x i64>, ptr %i.bug, align 1
  %i.buh = getelementptr i8, ptr %next.gep620, i64 16
  store <2 x i64> %wide.load622, ptr %next.gep620, align 1
  store <2 x i64> %wide.load623, ptr %i.buh, align 1
  %index.next624 = add nuw i64 %index619, 4       ; 2 uses
  %i.bui = icmp eq i64 %index.next624, %n.vec617
  br i1 %i.bui, label %middle.block625, label %vector.body618, !llvm.loop !59

middle.block625:                                  ; preds = %vector.body618
  %cmp.n626 = icmp eq i64 %i.btz, %n.vec617
  br i1 %cmp.n626, label %ZSTD_wildcopy.exit104.i.i, label %.lr.ph.i100.i.i.preheader630

.lr.ph.i100.i.i.preheader630:                     ; preds = %vector.memcheck612, %.lr.ph.i100.i.i.preheader, %middle.block625
  %.011.i101.i.i.ph = phi ptr [ %i.brp, %vector.memcheck612 ], [ %i.brp, %.lr.ph.i100.i.i.preheader ], [ %i.bud, %middle.block625 ]
  %.0910.i102.i.i.ph = phi ptr [ %i.brq, %vector.memcheck612 ], [ %i.brq, %.lr.ph.i100.i.i.preheader ], [ %i.bue, %middle.block625 ]
  br label %.lr.ph.i100.i.i

.lr.ph.i100.i.i:                                  ; preds = %.lr.ph.i100.i.i.preheader630, %.lr.ph.i100.i.i
  %.011.i101.i.i = phi ptr [ %i.buj, %.lr.ph.i100.i.i ], [ %.011.i101.i.i.ph, %.lr.ph.i100.i.i.preheader630 ] ; 2 uses
  %.0910.i102.i.i = phi ptr [ %i.buk, %.lr.ph.i100.i.i ], [ %.0910.i102.i.i.ph, %.lr.ph.i100.i.i.preheader630 ] ; 2 uses
  %.09.val.i103.i.i = load i64, ptr %.0910.i102.i.i, align 1
  store i64 %.09.val.i103.i.i, ptr %.011.i101.i.i, align 1
  %i.buj = getelementptr inbounds nuw i8, ptr %.011.i101.i.i, i64 8 ; 2 uses
  %i.buk = getelementptr inbounds nuw i8, ptr %.0910.i102.i.i, i64 8
  %i.bul = icmp ult ptr %i.buj, %i.bpq
  br i1 %i.bul, label %.lr.ph.i100.i.i, label %ZSTD_wildcopy.exit104.i.i, !llvm.loop !60

ZSTD_wildcopy.exit104.i.i:                        ; preds = %.lr.ph.i100.i.i, %.lr.ph.i.i, %middle.block625, %middle.block576, %vec.epilog.middle.block592, %bb.iw, %bb.iv
  br i1 %i.bqm, label %bb.ix, label %ZSTD_execSequence.exit.i

bb.ix:                                            ; preds = %ZSTD_wildcopy.exit104.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bpq, ptr nonnull align 16 %i.b, i64 %.183.i.i, i1 false)
  br label %ZSTD_execSequence.exit.i

ZSTD_execSequence.exit.i:                         ; preds = %bb.ix, %ZSTD_wildcopy.exit104.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bum = getelementptr inbounds nuw i8, ptr %.057200.i, i64 %i.bps
  %i.bun = icmp ugt i32 %i.bon, 64
  br i1 %i.bun, label %ZSTD_decompressSequences.exit, label %bb.hs

FSE_reloadDStream.exit.thread.i:                  ; preds = %FSE_reloadDStream.exit.i
  %i.buo = icmp ne i32 %.sroa.19.8.i, 64
  %i.bup = icmp ne ptr %.sroa.41113.8.i, %.7120.i.i
  %brmerge.i = select i1 %i.bup, i1 true, i1 %i.buo
  br i1 %brmerge.i, label %ZSTD_decompressSequences.exit, label %bb.iy

bb.iy:                                            ; preds = %FSE_reloadDStream.exit.thread.i
  %i.buq = ptrtoint ptr %.0131189.i to i64
  %i.bur = sub i64 %i.blm, %i.buq                 ; 2 uses
  %i.bus = getelementptr inbounds nuw i8, ptr %.057200.i, i64 %i.bur ; 3 uses
  %.not.i = icmp ugt ptr %i.bus, %i.r
  br i1 %.not.i, label %ZSTD_decompressSequences.exit, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %.not71.i = icmp eq ptr %i.aup, %.0131189.i
  br i1 %.not71.i, label %bb.jc, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %.not72.i = icmp eq ptr %.057200.i, %.0131189.i
  br i1 %.not72.i, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.057200.i, ptr align 1 %.0131189.i, i64 %i.bur, i1 false)
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.ja, %bb.iz
  %.4.i = phi ptr [ %i.bus, %bb.ja ], [ %i.bus, %bb.jb ], [ %.057200.i, %bb.iz ]
  %i.but = ptrtoint ptr %.4.i to i64
  %i.buu = ptrtoint ptr %1 to i64
  %i.buv = sub i64 %i.but, %i.buu
  br label %ZSTD_decompressSequences.exit

ZSTD_decompressSequences.exit:                    ; preds = %ZSTD_execSequence.exit.i, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %ZSTD_decodeSequence.exit.i, %FSE_initDState.exit84.i, %FSE_initDState.exit92.i, %bb.a, %.sink.split.i.i, %bb.g, %bb.d, %bb.b, %bb.k, %bb.j, %ZSTD_decompressLiterals.exit.i, %bb.jc, %bb.iy, %FSE_reloadDStream.exit.thread.i, %ZSTD_execSequence.exit.thread167.i, %FSE_initDStream.exit.i, %bb.hg, %bb.gy, %bb.gw, %ZSTDv01_decodeSeqHeaders.exit.i, %ZSTDv01_decodeSeqHeaders.exit.thread.i, %ZSTDv01_decodeLiteralsBlock.exit
  %.0 = phi i64 [ -1, %ZSTD_decompressLiterals.exit.i ], [ %i.aul, %ZSTDv01_decodeLiteralsBlock.exit ], [ %.786.i.ph.i, %ZSTDv01_decodeSeqHeaders.exit.thread.i ], [ %i.buv, %bb.jc ], [ %i.bfz, %ZSTDv01_decodeSeqHeaders.exit.i ], [ -20, %FSE_reloadDStream.exit.thread.i ], [ -20, %bb.gw ], [ -20, %FSE_initDStream.exit.i ], [ -70, %bb.iy ], [ -20, %bb.hg ], [ -20, %ZSTD_execSequence.exit.thread167.i ], [ -20, %bb.gy ], [ -1, %.sink.split.i.i ], [ -70, %bb.g ], [ -72, %bb.d ], [ -1, %bb.b ], [ -70, %bb.k ], [ -20, %bb.j ], [ -20, %FSE_initDState.exit92.i ], [ -20, %FSE_initDState.exit84.i ], [ -72, %bb.a ], [ -20, %ZSTD_execSequence.exit.i ], [ -70, %bb.il ], [ -70, %bb.ik ], [ -20, %bb.ij ], [ -70, %bb.ii ], [ -20, %bb.ih ], [ -20, %bb.ig ], [ -70, %ZSTD_decodeSequence.exit.i ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @ZSTDv01_decompress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.ZSTDv01_Dctx_s, align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 10264
  store ptr %0, ptr %i.a, align 8, !tbaa !50
  %i.b = call i64 @ZSTDv01_decompressDCtx(ptr noundef nonnull %4, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
end_hunk_2
