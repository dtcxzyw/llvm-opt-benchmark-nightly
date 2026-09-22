Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/huffman_encode_utils?download=true
inline.NumInlined: 7
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@kReversedBits = internal unnamed_addr constant [16 x i8] c"\00\08\04\0C\02\0A\06\0E\01\09\05\0D\03\0B\07\0F", align 16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @VP8LCreateCompressedHuffmanTree(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !12     ; 4 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph52, label %._crit_edge

.lr.ph52:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = zext nneg i32 %i.a to i64                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph52, %CodeRepeatedZeros.exit
  %.02851 = phi i32 [ 0, %.lr.ph52 ], [ %.0.lcssa, %CodeRepeatedZeros.exit ] ; 4 uses
  %.02950 = phi i32 [ 8, %.lr.ph52 ], [ %.1, %CodeRepeatedZeros.exit ] ; 4 uses
  %.03049 = phi ptr [ %1, %.lr.ph52 ], [ %.131, %CodeRepeatedZeros.exit ] ; 10 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.f = zext nneg i32 %.02851 to i64             ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14    ; 7 uses
  %i.i = zext i8 %i.h to i32                      ; 6 uses
  %i.j = add nuw nsw i32 %.02851, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 %i.j) ; 2 uses
  %indvars.iv.next91 = add nuw nsw i64 %i.f, 1    ; 2 uses
  %i.k = icmp samesign ult i64 %indvars.iv.next91, %i.d
  br i1 %i.k, label %.lr.ph94, label %.critedge

bb.c:                                             ; preds = %.lr.ph94
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next92, 1 ; 2 uses
  %i.l = icmp samesign ult i64 %indvars.iv.next, %i.d
  br i1 %i.l, label %.lr.ph94, label %.critedge, !llvm.loop !23

.lr.ph94:                                         ; preds = %bb.b, %bb.c
  %indvars.iv.next92 = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.next91, %bb.b ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next92
  %i.n = load i8, ptr %i.m, align 1, !tbaa !14
  %i.o = icmp eq i8 %i.n, %i.h
  br i1 %i.o, label %bb.c, label %.critedge.split.loop.exit78, !llvm.loop !23

.critedge.split.loop.exit78:                      ; preds = %.lr.ph94
  %i.p = trunc nuw nsw i64 %indvars.iv.next92 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b, %.critedge.split.loop.exit78
  %.0.lcssa = phi i32 [ %i.p, %.critedge.split.loop.exit78 ], [ %smax, %bb.b ], [ %smax, %bb.c ] ; 4 uses
  %i.q = sub i32 %.0.lcssa, %.02851               ; 13 uses
  %i.r = icmp eq i8 %i.h, 0
  br i1 %i.r, label %.lr.ph.i.preheader, label %bb.g

.lr.ph.i.preheader:                               ; preds = %.critedge
  %3 = icmp samesign ult i32 %i.q, 3
  br i1 %3, label %.lr.ph35.preheader.i, label %.lr.ph.i.preheader.a

.lr.ph.i.preheader.a:                             ; preds = %.lr.ph.i.preheader
  %4 = tail call i32 @llvm.smin.i32(i32 %i.q, i32 140)
  %5 = add i32 %.0.lcssa, 137
  %6 = sub i32 %5, %.02851                        ; 3 uses
  %7 = sub i32 %6, %4
  %8 = udiv i32 %7, 138
  %9 = tail call i32 @llvm.smin.i32(i32 %i.q, i32 10)
  %10 = sub i32 %6, %9
  %11 = udiv i32 %10, 138
  %12 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 138)
  %13 = sub i32 %6, %12
  %14 = udiv i32 %13, 138
  %15 = tail call i32 @llvm.umin.i32(i32 %8, i32 %11)
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 %14) ; 2 uses
  %i.s = icmp samesign ult i32 %16, 16
  br i1 %i.s, label %.lr.ph46.preheader130, label %vector.ph

.lr.ph46.preheader130:                            ; preds = %vector.body, %.lr.ph.i.preheader.a
  %.02331.i45.ph = phi i32 [ %i.q, %.lr.ph.i.preheader.a ], [ %23, %vector.body ]
  %.02232.i44.ph = phi ptr [ %.03049, %.lr.ph.i.preheader.a ], [ %25, %vector.body ]
  br label %.lr.ph46

vector.ph:                                        ; preds = %.lr.ph.i.preheader.a
  %narrow129 = add nuw nsw i32 %16, 1
  %17 = zext nneg i32 %narrow129 to i64           ; 2 uses
  %18 = and i64 %17, 15                           ; 2 uses
  %19 = icmp eq i64 %18, 0
  %20 = select i1 %19, i64 16, i64 %18
  %n.vec = sub nsw i64 %17, %20                   ; 3 uses
  %21 = trunc nsw i64 %n.vec to i32
  %22 = mul i32 %21, -138
  %23 = add i32 %i.q, %22
  %24 = shl nsw i64 %n.vec, 1
  %25 = getelementptr i8, ptr %.03049, i64 %24
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %26 = shl i64 %index, 1                         ; 2 uses
  %next.gep = getelementptr i8, ptr %.03049, i64 %26
  %27 = getelementptr i8, ptr %.03049, i64 %26
  %next.gep91 = getelementptr i8, ptr %27, i64 16
  store <16 x i8> <i8 18, i8 127, i8 18, i8 127, i8 18, i8 127, i8 18, i8 127, i8 18, i8 127, i8 18, i8 127, i8 18, i8 127, i8 18, i8 127>, ptr %next.gep, align 1, !tbaa !14
  store <16 x i8> <i8 18, i8 127, i8 18, i8 127, i8 18, i8 127, i8 18, i8 127, i8 18, i8 127, i8 18, i8 127, i8 18, i8 127, i8 18, i8 127>, ptr %next.gep91, align 1, !tbaa !14
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %28 = icmp eq i64 %index.next, %n.vec
  br i1 %28, label %.lr.ph46.preheader130, label %vector.body, !llvm.loop !24

.lr.ph35.preheader.i:                             ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.02232.i.lcssa = phi ptr [ %.03049, %.lr.ph.i.preheader ], [ %i.ah, %.lr.ph.i ]
  %29 = add nuw i32 %i.q, 137                     ; 2 uses
  %smin.i = tail call i32 @llvm.smin.i32(i32 %i.q, i32 10)
  %30 = sub nuw i32 %29, %smin.i
  %31 = udiv i32 %30, 138
  %smin44.i = tail call i32 @llvm.smin.i32(i32 %i.q, i32 2)
  %32 = sub nuw i32 %29, %smin44.i
  %33 = udiv i32 %32, 138
  %umin.i = tail call i32 @llvm.umin.i32(i32 %31, i32 %33)
  %34 = add nsw i32 %i.q, -1
  %35 = udiv i32 %34, 138
  %umin45.i = tail call i32 @llvm.umin.i32(i32 %umin.i, i32 %35) ; 2 uses
  %.neg.i = mul i32 %umin45.i, -138
  %36 = add i32 %.neg.i, %i.q
  %i.t = tail call i32 @llvm.smax.i32(i32 %36, i32 1)
  %i.u = shl nuw i32 %i.t, 1
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.02232.i.lcssa, i8 0, i64 %i.v, i1 false), !tbaa !14
  %37 = shl nuw nsw i32 %umin45.i, 1
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr i8, ptr %.03049, i64 %38
  %scevgep.i = getelementptr i8, ptr %39, i64 %i.v
  br label %CodeRepeatedZeros.exit

.lr.ph46:                                         ; preds = %.lr.ph46.preheader130, %.lr.ph.i
  %.02331.i45 = phi i32 [ %i.ai, %.lr.ph.i ], [ %.02331.i45.ph, %.lr.ph46.preheader130 ] ; 6 uses
  %.02232.i44 = phi ptr [ %i.ah, %.lr.ph.i ], [ %.02232.i44.ph, %.lr.ph46.preheader130 ] ; 8 uses
  %i.w = icmp samesign ult i32 %.02331.i45, 11
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph46
  store i8 17, ptr %.02232.i44, align 1, !tbaa !33
  %i.x = trunc nuw nsw i32 %.02331.i45 to i8
  %i.y = add nsw i8 %i.x, -3
  %i.z = getelementptr inbounds nuw i8, ptr %.02232.i44, i64 1
  store i8 %i.y, ptr %i.z, align 1, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %.02232.i44, i64 2
  br label %CodeRepeatedZeros.exit

bb.e:                                             ; preds = %.lr.ph46
  %i.ab = icmp samesign ult i32 %.02331.i45, 139
  store i8 18, ptr %.02232.i44, align 1, !tbaa !33
  br i1 %i.ab, label %bb.f, label %.lr.ph.i

bb.f:                                             ; preds = %bb.e
  %i.ac = trunc nuw i32 %.02331.i45 to i8
  %i.ad = add i8 %i.ac, -11
  %i.ae = getelementptr inbounds nuw i8, ptr %.02232.i44, i64 1
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %.02232.i44, i64 2
  br label %CodeRepeatedZeros.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.02232.i44, i64 1
  store i8 127, ptr %i.ag, align 1, !tbaa !34
  %i.ah = getelementptr i8, ptr %.02232.i44, i64 2 ; 2 uses
  %i.ai = add nsw i32 %.02331.i45, -138
  %i.aj = icmp slt i32 %.02331.i45, 141
  br i1 %i.aj, label %.lr.ph35.preheader.i, label %.lr.ph46, !llvm.loop !25

bb.g:                                             ; preds = %.critedge
  %.not.i = icmp eq i32 %.02950, %i.i
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 %i.h, ptr %.03049, align 1, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %.03049, i64 1
  store i8 0, ptr %i.ak, align 1, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %.03049, i64 2
  %i.am = add nsw i32 %i.q, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.026.i = phi ptr [ %i.al, %bb.h ], [ %.03049, %bb.g ] ; 6 uses
  %.025.i = phi i32 [ %i.am, %bb.h ], [ %i.q, %bb.g ] ; 7 uses
  %i.an = icmp sgt i32 %.025.i, 0
  br i1 %i.an, label %.lr.ph.i34.preheader, label %CodeRepeatedZeros.exit

.lr.ph.i34.preheader:                             ; preds = %bb.i
  %i.ao = icmp samesign ult i32 %.025.i, 3
  br i1 %i.ao, label %iter.check, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i34.preheader
  %i.ap = tail call i32 @llvm.usub.sat.i32(i32 %.025.i, i32 8)
  %i.aq = add nuw i32 %i.ap, 5
  %i.ar = udiv i32 %i.aq, 6
  %i.as = add nsw i32 %.025.i, -1
  %i.at = udiv i32 %i.as, 6
  %i.au = tail call i32 @llvm.umin.i32(i32 %i.ar, i32 %i.at) ; 2 uses
  %min.iters.check109 = icmp samesign ult i32 %i.au, 16
  br i1 %min.iters.check109, label %.lr.ph.preheader119, label %vector.ph110

.lr.ph.preheader119:                              ; preds = %vector.body112, %.lr.ph.preheader
  %.12734.i42.ph = phi ptr [ %.026.i, %.lr.ph.preheader ], [ %i.ba, %vector.body112 ]
  %.135.i41.ph = phi i32 [ %.025.i, %.lr.ph.preheader ], [ %i.bd, %vector.body112 ]
  br label %.lr.ph

vector.ph110:                                     ; preds = %.lr.ph.preheader
  %narrow = add nuw nsw i32 %i.au, 1
  %i.av = zext nneg i32 %narrow to i64            ; 2 uses
  %i.aw = and i64 %i.av, 15                       ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  %i.ay = select i1 %i.ax, i64 16, i64 %i.aw
  %n.vec111 = sub nsw i64 %i.av, %i.ay            ; 3 uses
  %i.az = shl nsw i64 %n.vec111, 1
  %i.ba = getelementptr i8, ptr %.026.i, i64 %i.az
  %i.bb = trunc i64 %n.vec111 to i32
  %i.bc = mul i32 %i.bb, -6
  %i.bd = add i32 %.025.i, %i.bc
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph110
  %index113 = phi i64 [ 0, %vector.ph110 ], [ %index.next116, %vector.body112 ] ; 2 uses
  %i.be = shl i64 %index113, 1                    ; 2 uses
  %next.gep114 = getelementptr i8, ptr %.026.i, i64 %i.be
  %i.bf = getelementptr i8, ptr %.026.i, i64 %i.be
  %next.gep115 = getelementptr i8, ptr %i.bf, i64 16
  store <16 x i8> <i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3>, ptr %next.gep114, align 1, !tbaa !14
  store <16 x i8> <i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3>, ptr %next.gep115, align 1, !tbaa !14
  %index.next116 = add nuw i64 %index113, 16      ; 2 uses
  %i.bg = icmp eq i64 %index.next116, %n.vec111
  br i1 %i.bg, label %.lr.ph.preheader119, label %vector.body112, !llvm.loop !26

iter.check:                                       ; preds = %.lr.ph.i34, %.lr.ph.i34.preheader
  %.135.i.lcssa = phi i32 [ %.025.i, %.lr.ph.i34.preheader ], [ %i.cg, %.lr.ph.i34 ] ; 2 uses
  %.12734.i.lcssa = phi ptr [ %.026.i, %.lr.ph.i34.preheader ], [ %i.cf, %.lr.ph.i34 ] ; 6 uses
  %i.bh = add i32 %.135.i.lcssa, -1               ; 3 uses
  %i.bi = zext i32 %i.bh to i64
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bh, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check95 = icmp ult i32 %i.bh, 15
  br i1 %min.iters.check95, label %vec.epilog.ph, label %vector.ph.a

vector.ph.a:                                      ; preds = %vector.main.loop.iter.check
  %i.bk = and i64 %i.bj, 12
  %n.vec.a = and i64 %i.bj, 8589934576            ; 5 uses
  %i.bl = trunc i64 %n.vec.a to i32
  %i.bm = shl nuw nsw i64 %n.vec.a, 1
  %i.bn = getelementptr i8, ptr %.12734.i.lcssa, i64 %i.bm ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.h, i64 0
  %interleaved.vec = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> zeroinitializer, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15> ; 2 uses
  br label %vector.body.a

vector.body.a:                                    ; preds = %vector.body.a, %vector.ph.a
  %index.a = phi i64 [ 0, %vector.ph.a ], [ %index.next.a, %vector.body.a ] ; 2 uses
  %i.bo = shl i64 %index.a, 1                     ; 2 uses
  %next.gep.a = getelementptr i8, ptr %.12734.i.lcssa, i64 %i.bo
  %i.bp = getelementptr i8, ptr %.12734.i.lcssa, i64 %i.bo
  %next.gep96 = getelementptr i8, ptr %i.bp, i64 16
  store <16 x i8> %interleaved.vec, ptr %next.gep.a, align 1, !tbaa !14
  store <16 x i8> %interleaved.vec, ptr %next.gep96, align 1, !tbaa !14
  %index.next.a = add nuw i64 %index.a, 16        ; 2 uses
  %i.bq = icmp eq i64 %index.next.a, %n.vec.a
  br i1 %i.bq, label %middle.block, label %vector.body.a, !llvm.loop !27

middle.block:                                     ; preds = %vector.body.a
  %cmp.n = icmp eq i64 %i.bj, %n.vec.a
  br i1 %cmp.n, label %CodeRepeatedZeros.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bk, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !35

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec.a, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec99 = and i64 %i.bj, 8589934588            ; 4 uses
  %i.br = trunc i64 %n.vec99 to i32
  %i.bs = shl nuw nsw i64 %n.vec99, 1
  %i.bt = getelementptr i8, ptr %.12734.i.lcssa, i64 %i.bs ; 2 uses
  %broadcast.splatinsert100 = insertelement <4 x i8> poison, i8 %i.h, i64 0
  %interleaved.vec104 = shufflevector <4 x i8> %broadcast.splatinsert100, <4 x i8> zeroinitializer, <8 x i32> <i32 0, i32 4, i32 0, i32 5, i32 0, i32 6, i32 0, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index102 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next105, %vec.epilog.vector.body ] ; 2 uses
  %i.bu = shl i64 %index102, 1
  %next.gep103 = getelementptr i8, ptr %.12734.i.lcssa, i64 %i.bu
  store <8 x i8> %interleaved.vec104, ptr %next.gep103, align 1, !tbaa !14
  %index.next105 = add nuw i64 %index102, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next105, %n.vec99
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !28

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n106 = icmp eq i64 %i.bj, %n.vec99
  br i1 %cmp.n106, label %CodeRepeatedZeros.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.037.i.ph = phi i32 [ 0, %iter.check ], [ %i.bl, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ]
  %.236.i.ph = phi ptr [ %.12734.i.lcssa, %iter.check ], [ %i.bn, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.037.i = phi i32 [ %i.by, %vec.epilog.scalar.ph ], [ %.037.i.ph, %vec.epilog.scalar.ph.preheader ]
  %.236.i = phi ptr [ %i.bx, %vec.epilog.scalar.ph ], [ %.236.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  store i8 %i.h, ptr %.236.i, align 1, !tbaa !33
  %i.bw = getelementptr inbounds nuw i8, ptr %.236.i, i64 1
  store i8 0, ptr %i.bw, align 1, !tbaa !34
  %i.bx = getelementptr inbounds nuw i8, ptr %.236.i, i64 2 ; 2 uses
  %i.by = add nuw nsw i32 %.037.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.by, %.135.i.lcssa
  br i1 %exitcond.not.i, label %CodeRepeatedZeros.exit, label %vec.epilog.scalar.ph, !llvm.loop !29

.lr.ph:                                           ; preds = %.lr.ph.preheader119, %.lr.ph.i34
  %.12734.i42 = phi ptr [ %i.cf, %.lr.ph.i34 ], [ %.12734.i42.ph, %.lr.ph.preheader119 ] ; 5 uses
  %.135.i41 = phi i32 [ %i.cg, %.lr.ph.i34 ], [ %.135.i41.ph, %.lr.ph.preheader119 ] ; 4 uses
  %i.bz = icmp samesign ult i32 %.135.i41, 7
  store i8 16, ptr %.12734.i42, align 1, !tbaa !33
  br i1 %i.bz, label %bb.j, label %.lr.ph.i34

bb.j:                                             ; preds = %.lr.ph
  %i.ca = trunc nuw nsw i32 %.135.i41 to i8
  %i.cb = add nsw i8 %i.ca, -3
  %i.cc = getelementptr inbounds nuw i8, ptr %.12734.i42, i64 1
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !34
  %i.cd = getelementptr inbounds nuw i8, ptr %.12734.i42, i64 2
  br label %CodeRepeatedZeros.exit

.lr.ph.i34:                                       ; preds = %.lr.ph
  %i.ce = getelementptr inbounds nuw i8, ptr %.12734.i42, i64 1
  store i8 3, ptr %i.ce, align 1, !tbaa !34
  %i.cf = getelementptr inbounds nuw i8, ptr %.12734.i42, i64 2 ; 2 uses
  %i.cg = add nsw i32 %.135.i41, -6               ; 2 uses
  %i.ch = icmp samesign ult i32 %.135.i41, 9
  br i1 %i.ch, label %iter.check, label %.lr.ph, !llvm.loop !30

CodeRepeatedZeros.exit:                           ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.j, %bb.i, %bb.f, %bb.d, %.lr.ph35.preheader.i
  %.131 = phi ptr [ %i.cd, %bb.j ], [ %scevgep.i, %.lr.ph35.preheader.i ], [ %i.aa, %bb.d ], [ %i.af, %bb.f ], [ %.026.i, %bb.i ], [ %i.bt, %vec.epilog.middle.block ], [ %i.bn, %middle.block ], [ %i.bx, %vec.epilog.scalar.ph ] ; 2 uses
  %.1 = phi i32 [ %i.i, %bb.j ], [ %.02950, %.lr.ph35.preheader.i ], [ %.02950, %bb.d ], [ %.02950, %bb.f ], [ %i.i, %bb.i ], [ %i.i, %vec.epilog.middle.block ], [ %i.i, %middle.block ], [ %i.i, %vec.epilog.scalar.ph ]
  %i.ci = icmp slt i32 %.0.lcssa, %i.a
  br i1 %i.ci, label %bb.b, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %CodeRepeatedZeros.exit, %bb.a
  %.030.lcssa = phi ptr [ %1, %bb.a ], [ %.131, %CodeRepeatedZeros.exit ]
  %i.cj = ptrtoint ptr %.030.lcssa to i64
  %i.ck = ptrtoint ptr %1 to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = lshr exact i64 %i.cl, 1
  %i.cn = trunc i64 %i.cm to i32
  ret i32 %i.cn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define hidden void @VP8LCreateHuffmanTree(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 19 uses
  %i.b = alloca [16 x i32], align 16              ; 22 uses
  %i.c = load i32, ptr %4, align 8, !tbaa !12     ; 10 uses
  %i.d = sext i32 %i.c to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %i.d, i1 false)
  %i.e = icmp sgt i32 %i.c, -1
  br i1 %i.e, label %.lr.ph.i.preheader, label %OptimizeHuffmanForRle.exit.thread

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.f = icmp eq i32 %i.c, 0
  br i1 %i.f, label %OptimizeHuffmanForRle.exit.thread45, label %.lr.ph

OptimizeHuffmanForRle.exit.thread45:              ; preds = %.lr.ph.i.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %GenerateOptimalTree.exit

OptimizeHuffmanForRle.exit.thread:                ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %GenerateOptimalTree.exit

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0100124.i31 = phi i32 [ %i.m, %.lr.ph.i ], [ %i.c, %.lr.ph.i.preheader ] ; 4 uses
  %i.i = zext nneg i32 %.0100124.i31 to i64       ; 4 uses
  %i.j = getelementptr [4 x i8], ptr %0, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !56
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %.lr.ph.i, label %.lr.ph138.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.m = add nsw i32 %.0100124.i31, -1            ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %OptimizeHuffmanForRle.exit, label %.lr.ph

.lr.ph138.preheader.i:                            ; preds = %.lr.ph
  %i.o = load i32, ptr %0, align 4, !tbaa !56
  %i.p = add nuw i32 %.0100124.i31, 1
  %wide.trip.count.i = zext i32 %i.p to i64       ; 2 uses
  br label %.lr.ph138.i

.lr.ph138.i:                                      ; preds = %bb.g, %.lr.ph138.preheader.i
  %indvar.i = phi i64 [ 0, %.lr.ph138.preheader.i ], [ %indvar.next.i, %bb.g ] ; 5 uses
  %.094136.i = phi i32 [ 0, %.lr.ph138.preheader.i ], [ %.195.i, %bb.g ] ; 4 uses
  %.096134.i = phi i32 [ %i.o, %.lr.ph138.preheader.i ], [ %.197.i, %bb.g ] ; 5 uses
  %scevgep.i = getelementptr i8, ptr %2, i64 %indvar.i
  %i.q = icmp eq i64 %indvar.i, %i.i              ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph138.i
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvar.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !56
  %.not110.i = icmp eq i32 %i.s, %.096134.i
  br i1 %.not110.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph138.i
  %i.t = icmp eq i32 %.096134.i, 0
  %i.u = icmp sgt i32 %.094136.i, 4
  %or.cond.i = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond.i, label %.lr.ph129.preheader.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = icmp ne i32 %.096134.i, 0
  %i.w = icmp sgt i32 %.094136.i, 6
  %or.cond148.i = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond148.i, label %.lr.ph129.preheader.i, label %.loopexit121.i

.lr.ph129.preheader.i:                            ; preds = %bb.d, %bb.c
  %i.x = zext nneg i32 %.094136.i to i64          ; 2 uses
  %i.y = sub nsw i64 0, %i.x
  %scevgep150.i = getelementptr i8, ptr %scevgep.i, i64 %i.y
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep150.i, i8 1, i64 %i.x, i1 false), !tbaa !14
  br label %.loopexit121.i

.loopexit121.i:                                   ; preds = %.lr.ph129.preheader.i, %bb.d
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.loopexit121.i
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvar.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !56
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.ab = add nsw i32 %.094136.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.loopexit121.i
  %.197.i = phi i32 [ %i.aa, %bb.e ], [ %.096134.i, %.loopexit121.i ], [ %.096134.i, %bb.f ]
  %.195.i = phi i32 [ 1, %bb.e ], [ 1, %.loopexit121.i ], [ %i.ab, %bb.f ]
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvar.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge139.i, label %.lr.ph138.i, !llvm.loop !36

._crit_edge139.i:                                 ; preds = %bb.g
  %i.ac = load i32, ptr %0, align 4, !tbaa !56
  %i.ad = add nsw i32 %.0100124.i31, -3
  %i.ae = sext i32 %i.ad to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.v, %._crit_edge139.i
  %indvars.iv156.i = phi i64 [ 0, %._crit_edge139.i ], [ %indvars.iv.next157.i, %bb.v ] ; 17 uses
  %.087145.i = phi i32 [ 0, %._crit_edge139.i ], [ %.2.i, %bb.v ] ; 4 uses
  %.088144.i = phi i32 [ %i.ac, %._crit_edge139.i ], [ %.290.i, %bb.v ] ; 2 uses
  %.091143.i = phi i32 [ 0, %._crit_edge139.i ], [ %i.ct, %bb.v ] ; 8 uses
  %i.af = trunc i64 %indvars.iv156.i to i32
  %i.ag = add i32 %i.af, -1
  %i.ah = icmp eq i64 %indvars.iv156.i, %i.i      ; 2 uses
  br i1 %i.ah, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv156.i ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !14
  %.not105.i = icmp eq i8 %i.aj, 0
  br i1 %.not105.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.not106.i = icmp eq i64 %indvars.iv156.i, 0
  br i1 %.not106.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr i8, ptr %i.ai, i64 -1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !14
  %.not107.i = icmp eq i8 %i.al, 0
  br i1 %.not107.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv156.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !56 ; 2 uses
  %reass.sub = sub i32 %i.an, %.088144.i
  %i.ao = add i32 %reass.sub, -4
  %i.ap = icmp ult i32 %i.ao, -7
  br i1 %i.ap, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i, %bb.h
  %i.aq = icmp ugt i32 %.091143.i, 3
  br i1 %i.aq, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = icmp eq i32 %.091143.i, 3
  %i.as = icmp eq i32 %.087145.i, 0
  %or.cond5.i = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond5.i, label %bb.o, label %.loopexit.i

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.at = lshr i32 %.091143.i, 1
  %i.au = add i32 %i.at, %.087145.i               ; 2 uses
  %i.av = udiv i32 %i.au, %.091143.i
  %i.aw = icmp ugt i32 %.091143.i, %i.au
  %spec.store.select.i = select i1 %i.aw, i32 1, i32 %i.av
  %i.ax = icmp eq i32 %.087145.i, 0
  %spec.store.select6.i = select i1 %i.ax, i32 0, i32 %spec.store.select.i ; 6 uses
  %wide.trip.count154.i = zext i32 %.091143.i to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %.091143.i, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb.o
  %i.ay = add nsw i64 %wide.trip.count154.i, -1   ; 2 uses
  %i.az = trunc i64 %i.ay to i32
  %i.ba = icmp ult i32 %i.ag, %i.az
  %i.bb = icmp ugt i64 %i.ay, 4294967295
  %i.bc = or i1 %i.ba, %i.bb
  br i1 %i.bc, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %wide.trip.count154.i, 4294967288 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %spec.store.select6.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = xor i64 %index, -1
  %i.be = add nsw i64 %indvars.iv156.i, %i.bd
  %i.bf = and i64 %i.be, 4294967295
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -12
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -28
  store <4 x i32> %broadcast.splat, ptr %i.bh, align 4, !tbaa !56
  store <4 x i32> %broadcast.splat, ptr %i.bi, align 4, !tbaa !56
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count154.i
  br i1 %cmp.n, label %.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %bb.o, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %bb.o ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count154.i, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bk = xor i64 %indvars.iv.i.prol, -1
  %i.bl = add nsw i64 %indvars.iv156.i, %i.bk
  %i.bm = and i64 %i.bl, 4294967295
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bm
  store i32 %spec.store.select6.i, ptr %i.bn, align 4, !tbaa !56
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !38

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.bo = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count154.i
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %.loopexit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bq = xor i64 %indvars.iv.i, -1
  %i.br = add nsw i64 %indvars.iv156.i, %i.bq
  %i.bs = and i64 %i.br, 4294967295
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bs
  store i32 %spec.store.select6.i, ptr %i.bt, align 4, !tbaa !56
  %reass.sub151 = sub i64 %indvars.iv156.i, %indvars.iv.i
  %i.bu = add i64 %reass.sub151, 4294967294
  %i.bv = and i64 %i.bu, 4294967295
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bv
  store i32 %spec.store.select6.i, ptr %i.bw, align 4, !tbaa !56
  %reass.sub152 = sub i64 %indvars.iv156.i, %indvars.iv.i
  %i.bx = add i64 %reass.sub152, 4294967293
  %i.by = and i64 %i.bx, 4294967295
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.by
  store i32 %spec.store.select6.i, ptr %i.bz, align 4, !tbaa !56
  %reass.sub153 = sub i64 %indvars.iv156.i, %indvars.iv.i
  %i.ca = add i64 %reass.sub153, 4294967292
  %i.cb = and i64 %i.ca, 4294967295
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cb
  store i32 %spec.store.select6.i, ptr %i.cc, align 4, !tbaa !56
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond155.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count154.i
  br i1 %exitcond155.not.i.3, label %.loopexit.i, label %scalar.ph, !llvm.loop !39

.loopexit.i:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.n
  %i.cd = icmp slt i64 %indvars.iv156.i, %i.ae
  br i1 %i.cd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.loopexit.i
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv156.i
  %i.cf = load <4 x i32>, ptr %i.ce, align 4, !tbaa !56
  %i.cg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cf)
  %op.rdx = add i32 %i.cg, 2
  %i.ch = lshr i32 %op.rdx, 2
  br label %bb.s

bb.q:                                             ; preds = %.loopexit.i
  %i.ci = icmp samesign ult i64 %indvars.iv156.i, %i.i
  br i1 %i.ci, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv156.i
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !56
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.189.i = phi i32 [ %i.ch, %bb.p ], [ %i.ck, %bb.r ], [ 0, %bb.q ] ; 2 uses
  br i1 %i.ah, label %bb.v, label %.thread117.i

.thread117.i:                                     ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv156.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !56
  br label %bb.v

bb.t:                                             ; preds = %bb.l
  %i.cn = add i32 %.091143.i, 1                   ; 5 uses
  %i.co = add i32 %i.an, %.087145.i               ; 3 uses
  %i.cp = icmp ugt i32 %i.cn, 3
  br i1 %i.cp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cq = lshr i32 %i.cn, 1
  %i.cr = add i32 %i.co, %i.cq
  %i.cs = udiv i32 %i.cr, %i.cn
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.thread117.i, %bb.s
  %i.ct = phi i32 [ %i.cn, %bb.u ], [ %i.cn, %bb.t ], [ 1, %bb.s ], [ 1, %.thread117.i ]
  %.290.i = phi i32 [ %i.cs, %bb.u ], [ %.088144.i, %bb.t ], [ %.189.i, %bb.s ], [ %.189.i, %.thread117.i ]
  %.2.i = phi i32 [ %i.co, %bb.u ], [ %i.co, %bb.t ], [ 0, %bb.s ], [ %i.cm, %.thread117.i ]
  %indvars.iv.next157.i = add nuw nsw i64 %indvars.iv156.i, 1 ; 2 uses
  %exitcond160.not.i = icmp eq i64 %indvars.iv.next157.i, %wide.trip.count.i
  br i1 %exitcond160.not.i, label %OptimizeHuffmanForRle.exit, label %bb.h, !llvm.loop !40

OptimizeHuffmanForRle.exit:                       ; preds = %.lr.ph.i, %bb.v
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !13 ; 12 uses
  %wide.trip.count.i12 = zext nneg i32 %i.c to i64 ; 12 uses
  %min.iters.check59 = icmp ult i32 %i.c, 8
  br i1 %min.iters.check59, label %.lr.ph.i13.preheader, label %vector.ph60

vector.ph60:                                      ; preds = %OptimizeHuffmanForRle.exit
  %n.vec61 = and i64 %wide.trip.count.i12, 2147483640 ; 3 uses
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph60
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next66, %vector.body62 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph60 ], [ %i.de, %vector.body62 ]
  %vec.phi64 = phi <4 x i32> [ zeroinitializer, %vector.ph60 ], [ %i.df, %vector.body62 ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index63 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load = load <4 x i32>, ptr %i.cw, align 4, !tbaa !56
  %wide.load65 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !56
  %i.cy = freeze <4 x i32> %wide.load
  %i.cz = freeze <4 x i32> %wide.load65
  %i.da = icmp ne <4 x i32> %i.cy, zeroinitializer
  %i.db = icmp ne <4 x i32> %i.cz, zeroinitializer
  %i.dc = zext <4 x i1> %i.da to <4 x i32>
  %i.dd = zext <4 x i1> %i.db to <4 x i32>
  %i.de = add <4 x i32> %vec.phi, %i.dc           ; 2 uses
  %i.df = add <4 x i32> %vec.phi64, %i.dd         ; 2 uses
  %index.next66 = add nuw i64 %index63, 8         ; 2 uses
  %i.dg = icmp eq i64 %index.next66, %n.vec61
  br i1 %i.dg, label %middle.block67, label %vector.body62, !llvm.loop !41

middle.block67:                                   ; preds = %vector.body62
  %bin.rdx = add <4 x i32> %i.df, %i.de
  %i.dh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n68 = icmp eq i64 %n.vec61, %wide.trip.count.i12
  br i1 %cmp.n68, label %._crit_edge.i17, label %.lr.ph.i13.preheader

.lr.ph.i13.preheader:                             ; preds = %OptimizeHuffmanForRle.exit, %middle.block67
  %indvars.iv.i14.ph = phi i64 [ 0, %OptimizeHuffmanForRle.exit ], [ %n.vec61, %middle.block67 ]
  %.0101112.i.ph = phi i32 [ 0, %OptimizeHuffmanForRle.exit ], [ %i.dh, %middle.block67 ]
  br label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.lr.ph.i13.preheader, %.lr.ph.i13
  %indvars.iv.i14 = phi i64 [ %indvars.iv.next.i15, %.lr.ph.i13 ], [ %indvars.iv.i14.ph, %.lr.ph.i13.preheader ] ; 2 uses
  %.0101112.i = phi i32 [ %spec.select.i, %.lr.ph.i13 ], [ %.0101112.i.ph, %.lr.ph.i13.preheader ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i14
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !56
  %.fr.i = freeze i32 %i.dj
  %.not109.i = icmp ne i32 %.fr.i, 0
  %i.dk = zext i1 %.not109.i to i32
  %spec.select.i = add i32 %.0101112.i, %i.dk     ; 2 uses
  %indvars.iv.next.i15 = add nuw nsw i64 %indvars.iv.i14, 1 ; 2 uses
  %exitcond.not.i16 = icmp eq i64 %indvars.iv.next.i15, %wide.trip.count.i12
  br i1 %exitcond.not.i16, label %._crit_edge.i17, label %.lr.ph.i13, !llvm.loop !42

._crit_edge.i17:                                  ; preds = %.lr.ph.i13, %middle.block67
  %spec.select.i.lcssa = phi i32 [ %i.dh, %middle.block67 ], [ %spec.select.i, %.lr.ph.i13 ] ; 5 uses
  %i.dl = icmp eq i32 %spec.select.i.lcssa, 0
  br i1 %i.dl, label %GenerateOptimalTree.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i17
  %i.dm = zext i32 %spec.select.i.lcssa to i64    ; 5 uses
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.dm ; 4 uses
  %.not111.i = icmp eq i32 %spec.select.i.lcssa, 1
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.not219.i = icmp eq i32 %i.c, 1                ; 3 uses
  br i1 %.not111.i, label %.lr.ph117.us.us.i.preheader, label %.split.i

.lr.ph117.us.us.i.preheader:                      ; preds = %bb.w
  %i.dp = add nsw i64 %wide.trip.count.i12, -1    ; 2 uses
  %min.iters.check106 = icmp ult i32 %i.c, 9
  %n.vec108 = and i64 %i.dp, -8                   ; 3 uses
  %i.dq = or disjoint i64 %n.vec108, 1
  %cmp.n120 = icmp eq i64 %i.dp, %n.vec108
  br label %.lr.ph117.us.us.i

.lr.ph117.us.us.i:                                ; preds = %.lr.ph117.us.us.i.preheader, %._crit_edge134.us.us.i
  %.0103.us.us.i = phi i32 [ %i.er, %._crit_edge134.us.us.i ], [ 1, %.lr.ph117.us.us.i.preheader ] ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %.lr.ph117.us.us.i
  %indvars.iv203.i = phi i64 [ %indvars.iv.next204.i, %bb.z ], [ 0, %.lr.ph117.us.us.i ] ; 3 uses
  %.096114.us.us.i = phi i32 [ %.197.us.us.i, %bb.z ], [ 0, %.lr.ph117.us.us.i ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv203.i
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !56 ; 2 uses
  %.not108.us.us.i = icmp eq i32 %i.ds, 0
  br i1 %.not108.us.us.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.0103..us.us.i = tail call i32 @llvm.umax.i32(i32 %i.ds, i32 %.0103.us.us.i)
  %i.dt = sext i32 %.096114.us.us.i to i64
  %i.du = getelementptr inbounds [16 x i8], ptr %3, i64 %i.dt ; 4 uses
  store i32 %.0103..us.us.i, ptr %i.du, align 4, !tbaa !19
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dw = trunc nuw nsw i64 %indvars.iv203.i to i32
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !20
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i32 -1, ptr %i.dx, align 4, !tbaa !21
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 -1, ptr %i.dy, align 4, !tbaa !22
  %i.dz = add nsw i32 %.096114.us.us.i, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.197.us.us.i = phi i32 [ %i.dz, %bb.y ], [ %.096114.us.us.i, %bb.x ]
  %indvars.iv.next204.i = add nuw nsw i64 %indvars.iv203.i, 1 ; 2 uses
  %exitcond207.not.i = icmp eq i64 %indvars.iv.next204.i, %wide.trip.count.i12
  br i1 %exitcond207.not.i, label %._crit_edge118.us.us.i, label %bb.x, !llvm.loop !43

._crit_edge118.us.us.i:                           ; preds = %bb.z
  tail call void @qsort(ptr noundef %3, i64 noundef %i.dm, i64 noundef 16, ptr noundef nonnull @CompareHuffmanTrees) #9
  %i.ea = load i32, ptr %i.do, align 4, !tbaa !20
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds i8, ptr %i.cv, i64 %i.eb
  store i8 1, ptr %i.ec, align 1, !tbaa !14
  %i.ed = load i8, ptr %i.cv, align 1, !tbaa !14
  %i.ee = zext i8 %i.ed to i32                    ; 3 uses
  br i1 %.not219.i, label %._crit_edge134.us.us.i, label %.lr.ph133.us.us.i.preheader

.lr.ph133.us.us.i.preheader:                      ; preds = %._crit_edge118.us.us.i
  br i1 %min.iters.check106, label %.lr.ph133.us.us.i.preheader123, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph133.us.us.i.preheader
  %broadcast.splatinsert109 = insertelement <4 x i32> poison, i32 %i.ee, i64 0
  %broadcast.splat110 = shufflevector <4 x i32> %broadcast.splatinsert109, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph107
  %index112 = phi i64 [ 0, %vector.ph107 ], [ %index.next117, %vector.body111 ] ; 2 uses
  %vec.phi113 = phi <4 x i32> [ %broadcast.splat110, %vector.ph107 ], [ %i.ek, %vector.body111 ]
  %vec.phi114 = phi <4 x i32> [ %broadcast.splat110, %vector.ph107 ], [ %i.el, %vector.body111 ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cv, i64 %index112 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 5
  %wide.load115 = load <4 x i8>, ptr %i.eg, align 1, !tbaa !14
  %wide.load116 = load <4 x i8>, ptr %i.eh, align 1, !tbaa !14
  %i.ei = zext <4 x i8> %wide.load115 to <4 x i32>
  %i.ej = zext <4 x i8> %wide.load116 to <4 x i32>
  %i.ek = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi113, <4 x i32> %i.ei) ; 2 uses
  %i.el = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi114, <4 x i32> %i.ej) ; 2 uses
  %index.next117 = add nuw i64 %index112, 8       ; 2 uses
  %i.em = icmp eq i64 %index.next117, %n.vec108
  br i1 %i.em, label %middle.block118, label %vector.body111, !llvm.loop !44

middle.block118:                                  ; preds = %vector.body111
  %rdx.minmax119 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.ek, <4 x i32> %i.el)
  %i.en = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax119) ; 2 uses
  br i1 %cmp.n120, label %._crit_edge134.us.us.i, label %.lr.ph133.us.us.i.preheader123

.lr.ph133.us.us.i.preheader123:                   ; preds = %.lr.ph133.us.us.i.preheader, %middle.block118
  %indvars.iv208.i.ph = phi i64 [ 1, %.lr.ph133.us.us.i.preheader ], [ %i.dq, %middle.block118 ]
  %.0131.us.us.i.ph = phi i32 [ %i.ee, %.lr.ph133.us.us.i.preheader ], [ %i.en, %middle.block118 ]
  br label %.lr.ph133.us.us.i

.lr.ph133.us.us.i:                                ; preds = %.lr.ph133.us.us.i.preheader123, %.lr.ph133.us.us.i
  %indvars.iv208.i = phi i64 [ %indvars.iv.next209.i, %.lr.ph133.us.us.i ], [ %indvars.iv208.i.ph, %.lr.ph133.us.us.i.preheader123 ] ; 2 uses
  %.0131.us.us.i = phi i32 [ %spec.select110.us.us.i, %.lr.ph133.us.us.i ], [ %.0131.us.us.i.ph, %.lr.ph133.us.us.i.preheader123 ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cv, i64 %indvars.iv208.i
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !14
  %i.eq = zext i8 %i.ep to i32
  %spec.select110.us.us.i = tail call i32 @llvm.umax.i32(i32 %.0131.us.us.i, i32 %i.eq) ; 2 uses
  %indvars.iv.next209.i = add nuw nsw i64 %indvars.iv208.i, 1 ; 2 uses
  %exitcond212.not.i = icmp eq i64 %indvars.iv.next209.i, %wide.trip.count.i12
  br i1 %exitcond212.not.i, label %._crit_edge134.us.us.i, label %.lr.ph133.us.us.i, !llvm.loop !45

._crit_edge134.us.us.i:                           ; preds = %.lr.ph133.us.us.i, %middle.block118, %._crit_edge118.us.us.i
  %.0.lcssa.us.us.i = phi i32 [ %i.ee, %._crit_edge118.us.us.i ], [ %i.en, %middle.block118 ], [ %spec.select110.us.us.i, %.lr.ph133.us.us.i ]
  %.not.us.us.i = icmp sgt i32 %.0.lcssa.us.us.i, %1
  %i.er = shl i32 %.0103.us.us.i, 1
  br i1 %.not.us.us.i, label %.lr.ph117.us.us.i, label %GenerateOptimalTree.exit

.split.i:                                         ; preds = %bb.w
  %i.es = icmp sgt i32 %spec.select.i.lcssa, 1
  br i1 %i.es, label %.split.split.us.preheader.i, label %.split.split.i.preheader

.split.split.i.preheader:                         ; preds = %.split.i
  %i.et = add nsw i64 %wide.trip.count.i12, -1    ; 2 uses
  %min.iters.check71 = icmp ult i32 %i.c, 9
  %n.vec73 = and i64 %i.et, -8                    ; 3 uses
  %i.eu = or disjoint i64 %n.vec73, 1
  %cmp.n84 = icmp eq i64 %i.et, %n.vec73
  br label %.split.split.i

.split.split.us.preheader.i:                      ; preds = %.split.i
  %i.ev = add nsw i32 %spec.select.i.lcssa, -2
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = add nsw i64 %wide.trip.count.i12, -1    ; 2 uses
  %min.iters.check88 = icmp ult i32 %i.c, 9
  %n.vec90 = and i64 %i.ex, -8                    ; 3 uses
  %i.ey = or disjoint i64 %n.vec90, 1
  %cmp.n102 = icmp eq i64 %i.ex, %n.vec90
  br label %.split.split.us.i

.split.split.us.i:                                ; preds = %._crit_edge134.us148.i, %.split.split.us.preheader.i
  %.0103.us136.i = phi i32 [ %i.gu, %._crit_edge134.us148.i ], [ 1, %.split.split.us.preheader.i ] ; 2 uses
  br label %.lr.ph117.us137.i

.lr.ph117.us137.i:                                ; preds = %bb.ab, %.split.split.us.i
  %indvars.iv175.i = phi i64 [ %indvars.iv.next176.i, %bb.ab ], [ 0, %.split.split.us.i ] ; 3 uses
  %.096114.us139.i = phi i32 [ %.197.us142.i, %bb.ab ], [ 0, %.split.split.us.i ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv175.i
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !56 ; 2 uses
  %.not108.us140.i = icmp eq i32 %i.fa, 0
  br i1 %.not108.us140.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph117.us137.i
  %.0103..us141.i = tail call i32 @llvm.umax.i32(i32 %i.fa, i32 %.0103.us136.i)
  %i.fb = sext i32 %.096114.us139.i to i64
  %i.fc = getelementptr inbounds [16 x i8], ptr %3, i64 %i.fb ; 4 uses
  store i32 %.0103..us141.i, ptr %i.fc, align 4, !tbaa !19
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = trunc nuw nsw i64 %indvars.iv175.i to i32
  store i32 %i.fe, ptr %i.fd, align 4, !tbaa !20
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i32 -1, ptr %i.ff, align 4, !tbaa !21
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  store i32 -1, ptr %i.fg, align 4, !tbaa !22
  %i.fh = add nsw i32 %.096114.us139.i, 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph117.us137.i
  %.197.us142.i = phi i32 [ %i.fh, %bb.aa ], [ %.096114.us139.i, %.lr.ph117.us137.i ]
  %indvars.iv.next176.i = add nuw nsw i64 %indvars.iv175.i, 1 ; 2 uses
  %exitcond179.not.i = icmp eq i64 %indvars.iv.next176.i, %wide.trip.count.i12
  br i1 %exitcond179.not.i, label %.preheader.us.i, label %.lr.ph117.us137.i, !llvm.loop !43

.preheader.us.i:                                  ; preds = %bb.ab
  tail call void @qsort(ptr noundef %3, i64 noundef %i.dm, i64 noundef 16, ptr noundef nonnull @CompareHuffmanTrees) #9
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge122.us.i, %.preheader.us.i
  %indvars.iv191.i = phi i64 [ %indvars.iv.next192.i, %._crit_edge122.us.i ], [ %i.dm, %.preheader.us.i ] ; 4 uses
  %indvars.iv189.i = phi i64 [ %indvars.iv.next190.i, %._crit_edge122.us.i ], [ 0, %.preheader.us.i ] ; 4 uses
  %indvars.iv187.i = phi i64 [ %indvars.iv.next188.i, %._crit_edge122.us.i ], [ %i.ew, %.preheader.us.i ] ; 3 uses
  %i.fi = or disjoint i64 %indvars.iv189.i, 1     ; 2 uses
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.dn, i64 %indvars.iv189.i ; 2 uses
  %i.fk = getelementptr [16 x i8], ptr %3, i64 %indvars.iv191.i
  %i.fl = getelementptr i8, ptr %i.fk, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fj, ptr noundef nonnull align 4 dereferenceable(16) %i.fl, i64 16, i1 false), !tbaa.struct !58
  %indvars.iv.next190.i = add nuw nsw i64 %indvars.iv189.i, 2
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.dn, i64 %i.fi ; 2 uses
  %i.fn = add nsw i64 %indvars.iv191.i, -2        ; 2 uses
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.fn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fm, ptr noundef nonnull align 4 dereferenceable(16) %i.fo, i64 16, i1 false), !tbaa.struct !58
  %i.fp = load i32, ptr %i.fm, align 4, !tbaa !19
  %i.fq = load i32, ptr %i.fj, align 4, !tbaa !19
  %i.fr = add i32 %i.fq, %i.fp                    ; 2 uses
  %i.fs = icmp sgt i64 %indvars.iv191.i, 2        ; 2 uses
  br i1 %i.fs, label %.lr.ph121.us.i, label %._crit_edge122.us.i

.lr.ph121.us.i:                                   ; preds = %bb.ac, %bb.ad
  %indvars.iv180.i = phi i64 [ %indvars.iv.next181.i, %bb.ad ], [ 0, %bb.ac ] ; 3 uses
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv180.i
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !19
  %.not107.us.i = icmp ugt i32 %i.fu, %i.fr
  br i1 %.not107.us.i, label %bb.ad, label %._crit_edge122.us.loopexit.i

bb.ad:                                            ; preds = %.lr.ph121.us.i
  %indvars.iv.next181.i = add nuw nsw i64 %indvars.iv180.i, 1 ; 2 uses
  %exitcond186.not.i = icmp eq i64 %indvars.iv.next181.i, %indvars.iv187.i
  br i1 %exitcond186.not.i, label %._crit_edge122.us.loopexit.i, label %.lr.ph121.us.i, !llvm.loop !46

._crit_edge122.us.loopexit.i:                     ; preds = %bb.ad, %.lr.ph121.us.i
  %.092.lcssa.us.ph.in.i = phi i64 [ %indvars.iv187.i, %bb.ad ], [ %indvars.iv180.i, %.lr.ph121.us.i ]
  %.092.lcssa.us.ph.i = trunc i64 %.092.lcssa.us.ph.in.i to i32
  br label %._crit_edge122.us.i

._crit_edge122.us.i:                              ; preds = %._crit_edge122.us.loopexit.i, %bb.ac
  %.092.lcssa.us.i = phi i32 [ 0, %bb.ac ], [ %.092.lcssa.us.ph.i, %._crit_edge122.us.loopexit.i ] ; 2 uses
  %i.fv = zext nneg i32 %.092.lcssa.us.i to i64
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.fv ; 6 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = sext i32 %.092.lcssa.us.i to i64
  %i.fz = sub nsw i64 %i.fn, %i.fy
  %i.ga = shl nsw i64 %i.fz, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fx, ptr align 4 %i.fw, i64 %i.ga, i1 false)
  store i32 %i.fr, ptr %i.fw, align 4, !tbaa !19
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  store i32 -1, ptr %i.gb, align 4, !tbaa !20
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gd = trunc nuw nsw i64 %i.fi to i32
  store i32 %i.gd, ptr %i.gc, align 4, !tbaa !21
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  %i.gf = trunc nuw nsw i64 %indvars.iv189.i to i32
  store i32 %i.gf, ptr %i.ge, align 4, !tbaa !22
  %indvars.iv.next192.i = add nsw i64 %indvars.iv191.i, -1
  %indvars.iv.next188.i = add nsw i64 %indvars.iv187.i, -1
  br i1 %i.fs, label %bb.ac, label %._crit_edge129.us.i, !llvm.loop !47

._crit_edge129.us.i:                              ; preds = %._crit_edge122.us.i
  tail call fastcc void @SetBitDepths(ptr noundef nonnull %3, ptr noundef nonnull %i.dn, ptr noundef %i.cv, i32 noundef 0)
  %i.gg = load i8, ptr %i.cv, align 1, !tbaa !14
  %i.gh = zext i8 %i.gg to i32                    ; 3 uses
  br i1 %.not219.i, label %._crit_edge134.us148.i, label %.lr.ph133.us144.i.preheader

.lr.ph133.us144.i.preheader:                      ; preds = %._crit_edge129.us.i
  br i1 %min.iters.check88, label %.lr.ph133.us144.i.preheader126, label %vector.ph89

vector.ph89:                                      ; preds = %.lr.ph133.us144.i.preheader
  %broadcast.splatinsert91 = insertelement <4 x i32> poison, i32 %i.gh, i64 0
  %broadcast.splat92 = shufflevector <4 x i32> %broadcast.splatinsert91, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body93

vector.body93:                                    ; preds = %vector.body93, %vector.ph89
  %index94 = phi i64 [ 0, %vector.ph89 ], [ %index.next99, %vector.body93 ] ; 2 uses
  %vec.phi95 = phi <4 x i32> [ %broadcast.splat92, %vector.ph89 ], [ %i.gn, %vector.body93 ]
  %vec.phi96 = phi <4 x i32> [ %broadcast.splat92, %vector.ph89 ], [ %i.go, %vector.body93 ]
  %i.gi = getelementptr inbounds nuw i8, ptr %i.cv, i64 %index94 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 5
  %wide.load97 = load <4 x i8>, ptr %i.gj, align 1, !tbaa !14
  %wide.load98 = load <4 x i8>, ptr %i.gk, align 1, !tbaa !14
  %i.gl = zext <4 x i8> %wide.load97 to <4 x i32>
  %i.gm = zext <4 x i8> %wide.load98 to <4 x i32>
  %i.gn = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi95, <4 x i32> %i.gl) ; 2 uses
  %i.go = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi96, <4 x i32> %i.gm) ; 2 uses
  %index.next99 = add nuw i64 %index94, 8         ; 2 uses
  %i.gp = icmp eq i64 %index.next99, %n.vec90
  br i1 %i.gp, label %middle.block100, label %vector.body93, !llvm.loop !48

middle.block100:                                  ; preds = %vector.body93
  %rdx.minmax101 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.gn, <4 x i32> %i.go)
  %i.gq = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax101) ; 2 uses
  br i1 %cmp.n102, label %._crit_edge134.us148.i, label %.lr.ph133.us144.i.preheader126

.lr.ph133.us144.i.preheader126:                   ; preds = %.lr.ph133.us144.i.preheader, %middle.block100
  %indvars.iv198.i.ph = phi i64 [ 1, %.lr.ph133.us144.i.preheader ], [ %i.ey, %middle.block100 ]
  %.0131.us145.i.ph = phi i32 [ %i.gh, %.lr.ph133.us144.i.preheader ], [ %i.gq, %middle.block100 ]
  br label %.lr.ph133.us144.i

.lr.ph133.us144.i:                                ; preds = %.lr.ph133.us144.i.preheader126, %.lr.ph133.us144.i
  %indvars.iv198.i = phi i64 [ %indvars.iv.next199.i, %.lr.ph133.us144.i ], [ %indvars.iv198.i.ph, %.lr.ph133.us144.i.preheader126 ] ; 2 uses
  %.0131.us145.i = phi i32 [ %spec.select110.us147.i, %.lr.ph133.us144.i ], [ %.0131.us145.i.ph, %.lr.ph133.us144.i.preheader126 ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.cv, i64 %indvars.iv198.i
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !14
  %i.gt = zext i8 %i.gs to i32
  %spec.select110.us147.i = tail call i32 @llvm.umax.i32(i32 %.0131.us145.i, i32 %i.gt) ; 2 uses
  %indvars.iv.next199.i = add nuw nsw i64 %indvars.iv198.i, 1 ; 2 uses
  %exitcond202.not.i = icmp eq i64 %indvars.iv.next199.i, %wide.trip.count.i12
  br i1 %exitcond202.not.i, label %._crit_edge134.us148.i, label %.lr.ph133.us144.i, !llvm.loop !49

._crit_edge134.us148.i:                           ; preds = %.lr.ph133.us144.i, %middle.block100, %._crit_edge129.us.i
  %.0.lcssa.us150.i = phi i32 [ %i.gh, %._crit_edge129.us.i ], [ %i.gq, %middle.block100 ], [ %spec.select110.us147.i, %.lr.ph133.us144.i ]
  %.not.us151.i = icmp sgt i32 %.0.lcssa.us150.i, %1
  %i.gu = shl i32 %.0103.us136.i, 1
  br i1 %.not.us151.i, label %.split.split.us.i, label %GenerateOptimalTree.exit

.split.split.i:                                   ; preds = %.split.split.i.preheader, %._crit_edge134.i
  %.0103.i = phi i32 [ %i.hs, %._crit_edge134.i ], [ 1, %.split.split.i.preheader ] ; 2 uses
  br label %.lr.ph117.i

.lr.ph117.i:                                      ; preds = %bb.af, %.split.split.i
  %indvars.iv165.i = phi i64 [ %indvars.iv.next166.i, %bb.af ], [ 0, %.split.split.i ] ; 3 uses
  %.096114.i = phi i32 [ %.197.i18, %bb.af ], [ 0, %.split.split.i ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv165.i
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !56 ; 2 uses
  %.not108.i = icmp eq i32 %i.gw, 0
  br i1 %.not108.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph117.i
  %.0103..i = tail call i32 @llvm.umax.i32(i32 %i.gw, i32 %.0103.i)
  %i.gx = sext i32 %.096114.i to i64
  %i.gy = getelementptr inbounds [16 x i8], ptr %3, i64 %i.gx ; 4 uses
  store i32 %.0103..i, ptr %i.gy, align 4, !tbaa !19
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.ha = trunc nuw nsw i64 %indvars.iv165.i to i32
  store i32 %i.ha, ptr %i.gz, align 4, !tbaa !20
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store i32 -1, ptr %i.hb, align 4, !tbaa !21
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 12
  store i32 -1, ptr %i.hc, align 4, !tbaa !22
  %i.hd = add nsw i32 %.096114.i, 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph117.i
  %.197.i18 = phi i32 [ %i.hd, %bb.ae ], [ %.096114.i, %.lr.ph117.i ]
  %indvars.iv.next166.i = add nuw nsw i64 %indvars.iv165.i, 1 ; 2 uses
  %exitcond169.not.i = icmp eq i64 %indvars.iv.next166.i, %wide.trip.count.i12
  br i1 %exitcond169.not.i, label %.preheader.i, label %.lr.ph117.i, !llvm.loop !43

.preheader.i:                                     ; preds = %bb.af
  tail call void @qsort(ptr noundef %3, i64 noundef %i.dm, i64 noundef 16, ptr noundef nonnull @CompareHuffmanTrees) #9
  tail call fastcc void @SetBitDepths(ptr noundef %3, ptr noundef nonnull %i.dn, ptr noundef %i.cv, i32 noundef 0)
  %i.he = load i8, ptr %i.cv, align 1, !tbaa !14
  %i.hf = zext i8 %i.he to i32                    ; 3 uses
  br i1 %.not219.i, label %._crit_edge134.i, label %.lr.ph133.i.preheader

.lr.ph133.i.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check71, label %.lr.ph133.i.preheader130, label %vector.ph72

vector.ph72:                                      ; preds = %.lr.ph133.i.preheader
  %broadcast.splatinsert74 = insertelement <4 x i32> poison, i32 %i.hf, i64 0
  %broadcast.splat75 = shufflevector <4 x i32> %broadcast.splatinsert74, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %vector.ph72
  %index77 = phi i64 [ 0, %vector.ph72 ], [ %index.next82, %vector.body76 ] ; 2 uses
  %vec.phi78 = phi <4 x i32> [ %broadcast.splat75, %vector.ph72 ], [ %i.hl, %vector.body76 ]
  %vec.phi79 = phi <4 x i32> [ %broadcast.splat75, %vector.ph72 ], [ %i.hm, %vector.body76 ]
  %i.hg = getelementptr inbounds nuw i8, ptr %i.cv, i64 %index77 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 1
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 5
  %wide.load80 = load <4 x i8>, ptr %i.hh, align 1, !tbaa !14
  %wide.load81 = load <4 x i8>, ptr %i.hi, align 1, !tbaa !14
  %i.hj = zext <4 x i8> %wide.load80 to <4 x i32>
  %i.hk = zext <4 x i8> %wide.load81 to <4 x i32>
  %i.hl = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi78, <4 x i32> %i.hj) ; 2 uses
  %i.hm = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi79, <4 x i32> %i.hk) ; 2 uses
  %index.next82 = add nuw i64 %index77, 8         ; 2 uses
  %i.hn = icmp eq i64 %index.next82, %n.vec73
  br i1 %i.hn, label %middle.block83, label %vector.body76, !llvm.loop !50

middle.block83:                                   ; preds = %vector.body76
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.hl, <4 x i32> %i.hm)
  %i.ho = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  br i1 %cmp.n84, label %._crit_edge134.i, label %.lr.ph133.i.preheader130

.lr.ph133.i.preheader130:                         ; preds = %.lr.ph133.i.preheader, %middle.block83
  %indvars.iv170.i.ph = phi i64 [ 1, %.lr.ph133.i.preheader ], [ %i.eu, %middle.block83 ]
  %.0131.i.ph = phi i32 [ %i.hf, %.lr.ph133.i.preheader ], [ %i.ho, %middle.block83 ]
  br label %.lr.ph133.i

.lr.ph133.i:                                      ; preds = %.lr.ph133.i.preheader130, %.lr.ph133.i
  %indvars.iv170.i = phi i64 [ %indvars.iv.next171.i, %.lr.ph133.i ], [ %indvars.iv170.i.ph, %.lr.ph133.i.preheader130 ] ; 2 uses
  %.0131.i = phi i32 [ %spec.select110.i, %.lr.ph133.i ], [ %.0131.i.ph, %.lr.ph133.i.preheader130 ]
  %i.hp = getelementptr inbounds nuw i8, ptr %i.cv, i64 %indvars.iv170.i
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !14
  %i.hr = zext i8 %i.hq to i32
  %spec.select110.i = tail call i32 @llvm.umax.i32(i32 %.0131.i, i32 %i.hr) ; 2 uses
  %indvars.iv.next171.i = add nuw nsw i64 %indvars.iv170.i, 1 ; 2 uses
  %exitcond174.not.i = icmp eq i64 %indvars.iv.next171.i, %wide.trip.count.i12
  br i1 %exitcond174.not.i, label %._crit_edge134.i, label %.lr.ph133.i, !llvm.loop !51

._crit_edge134.i:                                 ; preds = %.lr.ph133.i, %middle.block83, %.preheader.i
  %.0.lcssa.i = phi i32 [ %i.hf, %.preheader.i ], [ %i.ho, %middle.block83 ], [ %spec.select110.i, %.lr.ph133.i ]
  %.not.i19 = icmp sgt i32 %.0.lcssa.i, %1
  %i.hs = shl i32 %.0103.i, 1
  br i1 %.not.i19, label %.split.split.i, label %GenerateOptimalTree.exit

GenerateOptimalTree.exit:                         ; preds = %._crit_edge134.i, %._crit_edge134.us148.i, %._crit_edge134.us.us.i, %OptimizeHuffmanForRle.exit.thread45, %OptimizeHuffmanForRle.exit.thread, %._crit_edge.i17
  %i.ht = phi ptr [ %i.h, %OptimizeHuffmanForRle.exit.thread ], [ %i.cu, %._crit_edge134.us.us.i ], [ %i.cu, %._crit_edge.i17 ], [ %i.cu, %._crit_edge134.us148.i ], [ %i.g, %OptimizeHuffmanForRle.exit.thread45 ], [ %i.cu, %._crit_edge134.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.hu = load i32, ptr %4, align 8, !tbaa !12    ; 4 uses
  %i.hv = icmp sgt i32 %i.hu, 0                   ; 2 uses
  br i1 %i.hv, label %.lr.ph.i21, label %._crit_edge.i20

.lr.ph.i21:                                       ; preds = %GenerateOptimalTree.exit
  %i.hw = load ptr, ptr %i.ht, align 8, !tbaa !13 ; 5 uses
  %wide.trip.count.i22 = zext nneg i32 %i.hu to i64 ; 2 uses
  %xtraiter141 = and i64 %wide.trip.count.i22, 3  ; 3 uses
  %i.hx = icmp ult i32 %i.hu, 4
  br i1 %i.hx, label %.epil.preheader, label %.lr.ph.i21.new

.lr.ph.i21.new:                                   ; preds = %.lr.ph.i21
  %unroll_iter = and i64 %wide.trip.count.i22, 2147483644
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.i21.new
  %indvars.iv.i23 = phi i64 [ 0, %.lr.ph.i21.new ], [ %indvars.iv.next.i24.3, %bb.ag ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i21.new ], [ %niter.next.3, %bb.ag ]
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 %indvars.iv.i23
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !14
  %i.ia = zext i8 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ia ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !56
  %i.id = add nsw i32 %i.ic, 1
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !56
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hw, i64 %indvars.iv.i23
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 1
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !14
  %i.ih = zext i8 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ih ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !56
  %i.ik = add nsw i32 %i.ij, 1
  store i32 %i.ik, ptr %i.ii, align 4, !tbaa !56
  %i.il = getelementptr inbounds nuw i8, ptr %i.hw, i64 %indvars.iv.i23
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 2
  %i.in = load i8, ptr %i.im, align 1, !tbaa !14
  %i.io = zext i8 %i.in to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.io ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !56
  %i.ir = add nsw i32 %i.iq, 1
  store i32 %i.ir, ptr %i.ip, align 4, !tbaa !56
  %i.is = getelementptr inbounds nuw i8, ptr %i.hw, i64 %indvars.iv.i23
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 3
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !14
  %i.iv = zext i8 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.iv ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !56
  %i.iy = add nsw i32 %i.ix, 1
  store i32 %i.iy, ptr %i.iw, align 4, !tbaa !56
  %indvars.iv.next.i24.3 = add nuw nsw i64 %indvars.iv.i23, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.ag, !llvm.loop !52

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.ag
  %lcmp.mod142.not = icmp eq i64 %xtraiter141, 0
  br i1 %lcmp.mod142.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i21
  %indvars.iv.i23.epil.init = phi i64 [ 0, %.lr.ph.i21 ], [ %indvars.iv.next.i24.3, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod143 = icmp ne i64 %xtraiter141, 0
  tail call void @llvm.assume(i1 %lcmp.mod143)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.epil.preheader
  %indvars.iv.i23.epil = phi i64 [ %indvars.iv.i23.epil.init, %.epil.preheader ], [ %indvars.iv.next.i24.epil, %bb.ah ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ah ]
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hw, i64 %indvars.iv.i23.epil
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !14
  %i.jb = zext i8 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jb ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !56
  %i.je = add nsw i32 %i.jd, 1
  store i32 %i.je, ptr %i.jc, align 4, !tbaa !56
  %indvars.iv.next.i24.epil = add nuw nsw i64 %indvars.iv.i23.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter141
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %bb.ah, !llvm.loop !53

._crit_edge.loopexit.i:                           ; preds = %bb.ah, %._crit_edge.loopexit.i.unr-lcssa
  %.phi.trans.insert39.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.pre.i = load i32, ptr %.phi.trans.insert39.i, align 4, !tbaa !56
  %.phi.trans.insert41.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre42.i = load i32, ptr %.phi.trans.insert41.i, align 8, !tbaa !56
  %.phi.trans.insert44.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.pre45.i = load i32, ptr %.phi.trans.insert44.i, align 4, !tbaa !56
  %.phi.trans.insert47.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre48.i = load i32, ptr %.phi.trans.insert47.i, align 16, !tbaa !56
  %.phi.trans.insert50.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.pre51.i = load i32, ptr %.phi.trans.insert50.i, align 4, !tbaa !56
  %.phi.trans.insert53.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.pre54.i = load i32, ptr %.phi.trans.insert53.i, align 8, !tbaa !56
  %.phi.trans.insert56.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.pre57.i = load i32, ptr %.phi.trans.insert56.i, align 4, !tbaa !56
  %.phi.trans.insert59.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.pre60.i = load i32, ptr %.phi.trans.insert59.i, align 16, !tbaa !56
  %.phi.trans.insert62.i = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %.pre63.i = load i32, ptr %.phi.trans.insert62.i, align 4, !tbaa !56
  %.phi.trans.insert65.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.pre66.i = load i32, ptr %.phi.trans.insert65.i, align 8, !tbaa !56
  %.phi.trans.insert68.i = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %.pre69.i = load i32, ptr %.phi.trans.insert68.i, align 4, !tbaa !56
  %.phi.trans.insert71.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.pre72.i = load i32, ptr %.phi.trans.insert71.i, align 16, !tbaa !56
  %.phi.trans.insert74.i = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %.pre75.i = load i32, ptr %.phi.trans.insert74.i, align 4, !tbaa !56
  %.phi.trans.insert77.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.pre78.i = load i32, ptr %.phi.trans.insert77.i, align 8, !tbaa !56
  %i.jf = shl i32 %.pre.i, 1
  br label %._crit_edge.i20

._crit_edge.i20:                                  ; preds = %._crit_edge.loopexit.i, %GenerateOptimalTree.exit
  %i.jg = phi i32 [ %.pre78.i, %._crit_edge.loopexit.i ], [ 0, %GenerateOptimalTree.exit ]
  %i.jh = phi i32 [ %.pre75.i, %._crit_edge.loopexit.i ], [ 0, %GenerateOptimalTree.exit ]
  %i.ji = phi i32 [ %.pre72.i, %._crit_edge.loopexit.i ], [ 0, %GenerateOptimalTree.exit ]
  %i.jj = phi i32 [ %.pre69.i, %._crit_edge.loopexit.i ], [ 0, %GenerateOptimalTree.exit ]
  %i.jk = phi i32 [ %.pre66.i, %._crit_edge.loopexit.i ], [ 0, %GenerateOptimalTree.exit ]
  %i.jl = phi i32 [ %.pre63.i, %._crit_edge.loopexit.i ], [ 0, %GenerateOptimalTree.exit ]
  %i.jm = phi i32 [ %.pre60.i, %._crit_edge.loopexit.i ], [ 0, %GenerateOptimalTree.exit ]
  %i.jn = phi i32 [ %.pre57.i, %._crit_edge.loopexit.i ], [ 0, %GenerateOptimalTree.exit ]
  %i.jo = phi i32 [ %.pre54.i, %._crit_edge.loopexit.i ], [ 0, %GenerateOptimalTree.exit ]
  %i.jp = phi i32 [ %.pre51.i, %._crit_edge.loopexit.i ], [ 0, %GenerateOptimalTree.exit ]
  %i.jq = phi i32 [ %.pre48.i, %._crit_edge.loopexit.i ], [ 0, %GenerateOptimalTree.exit ]
  %i.jr = phi i32 [ %.pre45.i, %._crit_edge.loopexit.i ], [ 0, %GenerateOptimalTree.exit ]
  %i.js = phi i32 [ %.pre42.i, %._crit_edge.loopexit.i ], [ 0, %GenerateOptimalTree.exit ]
  %i.jt = phi i32 [ %i.jf, %._crit_edge.loopexit.i ], [ 0, %GenerateOptimalTree.exit ] ; 2 uses
  store i32 0, ptr %i.a, align 16, !tbaa !56
  %i.ju = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.ju, align 4, !tbaa !56
  %i.jv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.jt, ptr %i.jv, align 8, !tbaa !56
  %i.jw = add i32 %i.jt, %i.js
  %i.jx = shl i32 %i.jw, 1                        ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.jx, ptr %i.jy, align 4, !tbaa !56
  %i.jz = add i32 %i.jx, %i.jr
  %i.ka = shl i32 %i.jz, 1                        ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.ka, ptr %i.kb, align 16, !tbaa !56
  %i.kc = add i32 %i.ka, %i.jq
  %i.kd = shl i32 %i.kc, 1                        ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %i.kd, ptr %i.ke, align 4, !tbaa !56
  %i.kf = add i32 %i.kd, %i.jp
  %i.kg = shl i32 %i.kf, 1                        ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.kg, ptr %i.kh, align 8, !tbaa !56
  %i.ki = add i32 %i.kg, %i.jo
  %i.kj = shl i32 %i.ki, 1                        ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %i.kj, ptr %i.kk, align 4, !tbaa !56
  %i.kl = add i32 %i.kj, %i.jn
  %i.km = shl i32 %i.kl, 1                        ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %i.km, ptr %i.kn, align 16, !tbaa !56
  %i.ko = add i32 %i.km, %i.jm
  %i.kp = shl i32 %i.ko, 1                        ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 %i.kp, ptr %i.kq, align 4, !tbaa !56
  %i.kr = add i32 %i.kp, %i.jl
  %i.ks = shl i32 %i.kr, 1                        ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %i.ks, ptr %i.kt, align 8, !tbaa !56
  %i.ku = add i32 %i.ks, %i.jk
  %i.kv = shl i32 %i.ku, 1                        ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %i.kv, ptr %i.kw, align 4, !tbaa !56
  %i.kx = add i32 %i.kv, %i.jj
  %i.ky = shl i32 %i.kx, 1                        ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %i.ky, ptr %i.kz, align 16, !tbaa !56
  %i.la = add i32 %i.ky, %i.ji
  %i.lb = shl i32 %i.la, 1                        ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 %i.lb, ptr %i.lc, align 4, !tbaa !56
  %i.ld = add i32 %i.lb, %i.jh
  %i.le = shl i32 %i.ld, 1                        ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 %i.le, ptr %i.lf, align 8, !tbaa !56
  %i.lg = add i32 %i.le, %i.jg
  %i.lh = shl i32 %i.lg, 1
  %i.li = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i32 %i.lh, ptr %i.li, align 4, !tbaa !56
  br i1 %i.hv, label %.lr.ph27.i, label %ConvertBitDepthsToSymbols.exit

.lr.ph27.i:                                       ; preds = %._crit_edge.i20
  %i.lj = load ptr, ptr %i.ht, align 8, !tbaa !13
  %i.lk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !59
  %wide.trip.count37.i = zext nneg i32 %i.hu to i64
  br label %bb.ai

bb.ai:                                            ; preds = %ReverseBits.exit.i, %.lr.ph27.i
  %indvars.iv34.i = phi i64 [ 0, %.lr.ph27.i ], [ %indvars.iv.next35.i, %ReverseBits.exit.i ] ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 %indvars.iv34.i
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !14  ; 3 uses
  %i.lo = zext i8 %i.ln to i32                    ; 2 uses
  %i.lp = zext i8 %i.ln to i64
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lp ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !56 ; 3 uses
  %i.ls = add i32 %i.lr, 1
  store i32 %i.ls, ptr %i.lq, align 4, !tbaa !56
  %.not.i.i = icmp eq i8 %i.ln, 0
  br i1 %.not.i.i, label %ReverseBits.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.ai
  %i.lt = add nsw i32 %i.lo, -1                   ; 2 uses
  %i.lu = lshr i32 %i.lt, 2                       ; 2 uses
  %i.lv = add nuw nsw i32 %i.lu, 1                ; 2 uses
  %i.lw = icmp eq i32 %i.lu, 0
  br i1 %i.lw, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter149 = and i32 %i.lv, 2147483646
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.015.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.mg, %.lr.ph.i.i ] ; 3 uses
  %.01014.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.mo, %.lr.ph.i.i ]
  %.01113.i.i = phi i32 [ %i.lr, %.lr.ph.i.i.preheader.new ], [ %i.mp, %.lr.ph.i.i ] ; 3 uses
  %niter150 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter150.next.1, %.lr.ph.i.i ]
  %i.lx = and i32 %.01113.i.i, 15
  %i.ly = zext nneg i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw i8, ptr @kReversedBits, i64 %i.ly
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !14
  %i.mb = zext i8 %i.ma to i32
  %i.mc = sub nsw i32 12, %.015.i.i
  %i.md = shl nuw nsw i32 %i.mb, %i.mc
  %i.me = or i32 %i.md, %.01014.i.i
  %i.mf = lshr i32 %.01113.i.i, 4
  %i.mg = add nuw nsw i32 %.015.i.i, 8            ; 2 uses
  %i.mh = and i32 %i.mf, 15
  %i.mi = zext nneg i32 %i.mh to i64
  %i.mj = getelementptr inbounds nuw i8, ptr @kReversedBits, i64 %i.mi
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !14
  %i.ml = zext i8 %i.mk to i32
  %i.mm = sub nsw i32 8, %.015.i.i
  %i.mn = shl nuw nsw i32 %i.ml, %i.mm
  %i.mo = or i32 %i.mn, %i.me                     ; 3 uses
  %i.mp = lshr i32 %.01113.i.i, 8                 ; 2 uses
  %niter150.next.1 = add i32 %niter150, 2         ; 2 uses
  %niter150.ncmp.1.not = icmp eq i32 %niter150.next.1, %unroll_iter149
  br i1 %niter150.ncmp.1.not, label %ReverseBits.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !54

ReverseBits.exit.i.loopexit.unr-lcssa:            ; preds = %.lr.ph.i.i
  %i.mq = and i32 %i.lt, 4
  %lcmp.mod146.not.not = icmp eq i32 %i.mq, 0
  br i1 %lcmp.mod146.not.not, label %.lr.ph.i.i.epil.preheader, label %ReverseBits.exit.i

.lr.ph.i.i.epil.preheader:                        ; preds = %ReverseBits.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.015.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.mg, %ReverseBits.exit.i.loopexit.unr-lcssa ]
  %.01014.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.mo, %ReverseBits.exit.i.loopexit.unr-lcssa ]
  %.01113.i.i.epil.init = phi i32 [ %i.lr, %.lr.ph.i.i.preheader ], [ %i.mp, %ReverseBits.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod148 = trunc i32 %i.lv to i1
  tail call void @llvm.assume(i1 %lcmp.mod148)
  %i.mr = and i32 %.01113.i.i.epil.init, 15
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw i8, ptr @kReversedBits, i64 %i.ms
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !14
  %i.mv = zext i8 %i.mu to i32
  %i.mw = sub nsw i32 12, %.015.i.i.epil.init
  %i.mx = shl nuw nsw i32 %i.mv, %i.mw
  %i.my = or i32 %i.mx, %.01014.i.i.epil.init
  br label %ReverseBits.exit.i

ReverseBits.exit.i:                               ; preds = %.lr.ph.i.i.epil.preheader, %ReverseBits.exit.i.loopexit.unr-lcssa, %bb.ai
  %.010.lcssa.i.i = phi i32 [ 0, %bb.ai ], [ %i.mo, %ReverseBits.exit.i.loopexit.unr-lcssa ], [ %i.my, %.lr.ph.i.i.epil.preheader ]
  %i.mz = sub nuw nsw i32 16, %i.lo
  %i.na = lshr i32 %.010.lcssa.i.i, %i.mz
  %i.nb = trunc i32 %i.na to i16
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %i.ll, i64 %indvars.iv34.i
  store i16 %i.nb, ptr %i.nc, align 2, !tbaa !61
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %indvars.iv.next35.i, %wide.trip.count37.i
  br i1 %exitcond38.not.i, label %ConvertBitDepthsToSymbols.exit, label %bb.ai, !llvm.loop !55

ConvertBitDepthsToSymbols.exit:                   ; preds = %ReverseBits.exit.i, %._crit_edge.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @CompareHuffmanTrees(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !19     ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !19     ; 2 uses
  %i.c = icmp ugt i32 %i.a, %i.b
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %i.a, %i.b
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20
  %i.i = icmp slt i32 %i.f, %i.h
  %i.j = select i1 %i.i, i32 -1, i32 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.j, %bb.c ], [ -1, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @SetBitDepths(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %i.d = phi i32 [ %i.m, %tailrecurse ], [ %i.b, %bb.a ]
  %.tr1517 = phi i32 [ %i.g, %tailrecurse ], [ %3, %bb.a ]
  %.tr16 = phi ptr [ %i.k, %tailrecurse ], [ %0, %bb.a ]
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.e
  %i.g = add nsw i32 %.tr1517, 1                  ; 3 uses
  tail call fastcc void @SetBitDepths(ptr noundef %i.f, ptr noundef %1, ptr noundef %2, i32 noundef %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.tr16, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !22
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [16 x i8], ptr %1, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !21   ; 2 uses
  %i.n = icmp sgt i32 %i.m, -1
  br i1 %i.n, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.k, %tailrecurse ]
  %.tr15.lcssa = phi i32 [ %3, %bb.a ], [ %i.g, %tailrecurse ]
  %i.o = trunc i32 %.tr15.lcssa to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !20
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.r
  store i8 %i.o, ptr %i.s, align 1, !tbaa !14
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"p1 short", !8, i64 0}
!11 = !{!"", !5, i64 0, !9, i64 8, !10, i64 16}
!12 = !{!11, !5, i64 0}
!13 = !{!11, !9, i64 8}
!14 = !{!4, !4, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!19 = !{!18, !5, i64 0}
!20 = !{!18, !5, i64 4}
!21 = !{!18, !5, i64 8}
!22 = !{!18, !5, i64 12}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !16, !17}
!25 = distinct !{!25, !17, !16}
!26 = distinct !{!26, !16, !17}
!27 = distinct !{!27, !15, !16, !17}
!28 = distinct !{!28, !15, !16, !17}
!29 = distinct !{!29, !15, !17, !16}
!30 = distinct !{!30, !17, !16}
!31 = distinct !{!31, !15}
!32 = !{!"", !4, i64 0, !4, i64 1}
!33 = !{!32, !4, i64 0}
!34 = !{!32, !4, i64 1}
!35 = !{!"branch_weights", i32 4, i32 12}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15, !16, !17}
!38 = distinct !{!38, !57}
!39 = distinct !{!39, !15, !16}
!40 = distinct !{!40, !15}
!41 = distinct !{!41, !15, !16, !17}
!42 = distinct !{!42, !15, !17, !16}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !15, !16, !17}
!45 = distinct !{!45, !15, !17, !16}
!46 = distinct !{!46, !15}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !15, !16, !17}
!49 = distinct !{!49, !15, !17, !16}
!50 = distinct !{!50, !15, !16, !17}
!51 = distinct !{!51, !15, !17, !16}
!52 = distinct !{!52, !15}
!53 = distinct !{!53, !57}
!54 = distinct !{!54, !15}
!55 = distinct !{!55, !15}
!56 = !{!5, !5, i64 0}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{i64 0, i64 4, !56, i64 4, i64 4, !56, i64 8, i64 4, !56, i64 12, i64 4, !56}
!59 = !{!11, !10, i64 16}
!60 = !{!"short", !4, i64 0}
!61 = !{!60, !60, i64 0}
end_hunk_0
