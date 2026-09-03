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
  br i1 %i.b, label %.lr.ph55, label %._crit_edge

.lr.ph55:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = zext nneg i32 %i.a to i64                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph55, %CodeRepeatedZeros.exit
  %.02854 = phi i32 [ 0, %.lr.ph55 ], [ %.0.lcssa, %CodeRepeatedZeros.exit ] ; 3 uses
  %.02953 = phi i32 [ 8, %.lr.ph55 ], [ %.1, %CodeRepeatedZeros.exit ] ; 4 uses
  %.03052 = phi ptr [ %1, %.lr.ph55 ], [ %.131, %CodeRepeatedZeros.exit ] ; 6 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.f = zext nneg i32 %.02854 to i64             ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14    ; 7 uses
  %i.i = zext i8 %i.h to i32                      ; 6 uses
  %i.j = add nuw nsw i32 %.02854, 1
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
  br i1 %i.o, label %bb.c, label %.critedge.split.loop.exit79, !llvm.loop !23

.critedge.split.loop.exit79:                      ; preds = %.lr.ph94
  %i.p = trunc nuw nsw i64 %indvars.iv.next92 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b, %.critedge.split.loop.exit79
  %.0.lcssa = phi i32 [ %i.p, %.critedge.split.loop.exit79 ], [ %smax, %bb.b ], [ %smax, %bb.c ] ; 3 uses
  %i.q = sub nsw i32 %.0.lcssa, %.02854           ; 5 uses
  %i.r = icmp eq i8 %i.h, 0
  br i1 %i.r, label %.lr.ph.preheader.i, label %bb.g

.lr.ph.preheader.i:                               ; preds = %.critedge
  %i.s = icmp samesign ult i32 %i.q, 3
  br i1 %i.s, label %.lr.ph35.preheader.i, label %.lr.ph49

.lr.ph35.preheader.i:                             ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.02232.i.lcssa = phi ptr [ %.03052, %.lr.ph.preheader.i ], [ %i.ah, %.lr.ph.i ] ; 2 uses
  %.02331.i.lcssa = phi i32 [ %i.q, %.lr.ph.preheader.i ], [ %i.ai, %.lr.ph.i ]
  %i.t = tail call i32 @llvm.umax.i32(i32 %.02331.i.lcssa, i32 1)
  %i.u = shl nuw nsw i32 %i.t, 1
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.02232.i.lcssa, i8 0, i64 %i.v, i1 false), !tbaa !14
  %scevgep.i = getelementptr i8, ptr %.02232.i.lcssa, i64 %i.v
  br label %CodeRepeatedZeros.exit

.lr.ph49:                                         ; preds = %.lr.ph.preheader.i, %.lr.ph.i
  %.02331.i48 = phi i32 [ %i.ai, %.lr.ph.i ], [ %i.q, %.lr.ph.preheader.i ] ; 6 uses
  %.02232.i47 = phi ptr [ %i.ah, %.lr.ph.i ], [ %.03052, %.lr.ph.preheader.i ] ; 8 uses
  %i.w = icmp samesign ult i32 %.02331.i48, 11
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph49
  store i8 17, ptr %.02232.i47, align 1, !tbaa !31
  %i.x = trunc nuw nsw i32 %.02331.i48 to i8
  %i.y = add nsw i8 %i.x, -3
  %i.z = getelementptr inbounds nuw i8, ptr %.02232.i47, i64 1
  store i8 %i.y, ptr %i.z, align 1, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %.02232.i47, i64 2
  br label %CodeRepeatedZeros.exit

bb.e:                                             ; preds = %.lr.ph49
  %i.ab = icmp samesign ult i32 %.02331.i48, 139
  store i8 18, ptr %.02232.i47, align 1, !tbaa !31
  br i1 %i.ab, label %bb.f, label %.lr.ph.i

bb.f:                                             ; preds = %bb.e
  %i.ac = trunc nuw i32 %.02331.i48 to i8
  %i.ad = add i8 %i.ac, -11
  %i.ae = getelementptr inbounds nuw i8, ptr %.02232.i47, i64 1
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %.02232.i47, i64 2
  br label %CodeRepeatedZeros.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.02232.i47, i64 1
  store i8 127, ptr %i.ag, align 1, !tbaa !32
  %i.ah = getelementptr i8, ptr %.02232.i47, i64 2 ; 2 uses
  %i.ai = add nsw i32 %.02331.i48, -138           ; 2 uses
  %i.aj = icmp slt i32 %.02331.i48, 141
  br i1 %i.aj, label %.lr.ph35.preheader.i, label %.lr.ph49

bb.g:                                             ; preds = %.critedge
  %.not.i = icmp eq i32 %.02953, %i.i
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 %i.h, ptr %.03052, align 1, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %.03052, i64 1
  store i8 0, ptr %i.ak, align 1, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %.03052, i64 2
  %i.am = add nsw i32 %i.q, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.026.i = phi ptr [ %i.al, %bb.h ], [ %.03052, %bb.g ] ; 6 uses
  %.025.i = phi i32 [ %i.am, %bb.h ], [ %i.q, %bb.g ] ; 7 uses
  %i.an = icmp sgt i32 %.025.i, 0
  br i1 %i.an, label %.lr.ph.preheader.i34, label %CodeRepeatedZeros.exit

.lr.ph.preheader.i34:                             ; preds = %bb.i
  %i.ao = icmp samesign ult i32 %.025.i, 3
  br i1 %i.ao, label %iter.check, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i34
  %i.ap = tail call i32 @llvm.usub.sat.i32(i32 %.025.i, i32 8)
  %i.aq = add nuw i32 %i.ap, 5
  %i.ar = udiv i32 %i.aq, 6
  %i.as = add nsw i32 %.025.i, -1
  %i.at = udiv i32 %i.as, 6
  %i.au = tail call i32 @llvm.umin.i32(i32 %i.ar, i32 %i.at) ; 2 uses
  %min.iters.check109 = icmp samesign ult i32 %i.au, 16
  br i1 %min.iters.check109, label %.lr.ph.preheader119, label %vector.ph110

.lr.ph.preheader119:                              ; preds = %vector.body112, %.lr.ph.preheader
  %.12734.i45.ph = phi ptr [ %.026.i, %.lr.ph.preheader ], [ %i.ba, %vector.body112 ]
  %.135.i44.ph = phi i32 [ %.025.i, %.lr.ph.preheader ], [ %i.bd, %vector.body112 ]
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
  br i1 %i.bg, label %.lr.ph.preheader119, label %vector.body112, !llvm.loop !24

iter.check:                                       ; preds = %.lr.ph.i36, %.lr.ph.preheader.i34
  %.135.i.lcssa = phi i32 [ %.025.i, %.lr.ph.preheader.i34 ], [ %i.cg, %.lr.ph.i36 ] ; 2 uses
  %.12734.i.lcssa = phi ptr [ %.026.i, %.lr.ph.preheader.i34 ], [ %i.cf, %.lr.ph.i36 ] ; 6 uses
  %i.bh = add i32 %.135.i.lcssa, -1               ; 3 uses
  %i.bi = zext i32 %i.bh to i64
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bh, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check95 = icmp ult i32 %i.bh, 15
  br i1 %min.iters.check95, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bk = and i64 %i.bj, 12
  %n.vec = and i64 %i.bj, 8589934576              ; 5 uses
  %i.bl = trunc i64 %n.vec to i32
  %i.bm = shl nuw nsw i64 %n.vec, 1
  %i.bn = getelementptr i8, ptr %.12734.i.lcssa, i64 %i.bm ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.h, i64 0
  %interleaved.vec = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> zeroinitializer, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.12734.i.lcssa, i64 %i.bo
  %i.bp = getelementptr i8, ptr %.12734.i.lcssa, i64 %i.bo
  %next.gep96 = getelementptr i8, ptr %i.bp, i64 16
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !14
  store <16 x i8> %interleaved.vec, ptr %next.gep96, align 1, !tbaa !14
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %CodeRepeatedZeros.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bk, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
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
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !26

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
  store i8 %i.h, ptr %.236.i, align 1, !tbaa !31
  %i.bw = getelementptr inbounds nuw i8, ptr %.236.i, i64 1
  store i8 0, ptr %i.bw, align 1, !tbaa !32
  %i.bx = getelementptr inbounds nuw i8, ptr %.236.i, i64 2 ; 2 uses
  %i.by = add nuw nsw i32 %.037.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.by, %.135.i.lcssa
  br i1 %exitcond.not.i, label %CodeRepeatedZeros.exit, label %vec.epilog.scalar.ph, !llvm.loop !27

.lr.ph:                                           ; preds = %.lr.ph.preheader119, %.lr.ph.i36
  %.12734.i45 = phi ptr [ %i.cf, %.lr.ph.i36 ], [ %.12734.i45.ph, %.lr.ph.preheader119 ] ; 5 uses
  %.135.i44 = phi i32 [ %i.cg, %.lr.ph.i36 ], [ %.135.i44.ph, %.lr.ph.preheader119 ] ; 4 uses
  %i.bz = icmp samesign ult i32 %.135.i44, 7
  store i8 16, ptr %.12734.i45, align 1, !tbaa !31
  br i1 %i.bz, label %bb.j, label %.lr.ph.i36

bb.j:                                             ; preds = %.lr.ph
  %i.ca = trunc nuw nsw i32 %.135.i44 to i8
  %i.cb = add nsw i8 %i.ca, -3
  %i.cc = getelementptr inbounds nuw i8, ptr %.12734.i45, i64 1
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !32
  %i.cd = getelementptr inbounds nuw i8, ptr %.12734.i45, i64 2
  br label %CodeRepeatedZeros.exit

.lr.ph.i36:                                       ; preds = %.lr.ph
  %i.ce = getelementptr inbounds nuw i8, ptr %.12734.i45, i64 1
  store i8 3, ptr %i.ce, align 1, !tbaa !32
  %i.cf = getelementptr inbounds nuw i8, ptr %.12734.i45, i64 2 ; 2 uses
  %i.cg = add nsw i32 %.135.i44, -6               ; 2 uses
  %i.ch = icmp samesign ult i32 %.135.i44, 9
  br i1 %i.ch, label %iter.check, label %.lr.ph, !llvm.loop !28

CodeRepeatedZeros.exit:                           ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.j, %bb.i, %bb.f, %bb.d, %.lr.ph35.preheader.i
  %.131 = phi ptr [ %i.cd, %bb.j ], [ %scevgep.i, %.lr.ph35.preheader.i ], [ %i.aa, %bb.d ], [ %i.af, %bb.f ], [ %.026.i, %bb.i ], [ %i.bt, %vec.epilog.middle.block ], [ %i.bn, %middle.block ], [ %i.bx, %vec.epilog.scalar.ph ] ; 2 uses
  %.1 = phi i32 [ %i.i, %bb.j ], [ %.02953, %.lr.ph35.preheader.i ], [ %.02953, %bb.d ], [ %.02953, %bb.f ], [ %i.i, %bb.i ], [ %i.i, %vec.epilog.middle.block ], [ %i.i, %middle.block ], [ %i.i, %vec.epilog.scalar.ph ]
  %i.ci = icmp slt i32 %.0.lcssa, %i.a
  br i1 %i.ci, label %bb.b, label %._crit_edge, !llvm.loop !29

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
  %i.l = load i32, ptr %i.k, align 4, !tbaa !54
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %.lr.ph.i, label %.lr.ph138.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.m = add nsw i32 %.0100124.i31, -1            ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %OptimizeHuffmanForRle.exit, label %.lr.ph

.lr.ph138.preheader.i:                            ; preds = %.lr.ph
  %i.o = load i32, ptr %0, align 4, !tbaa !54
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !54
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
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !54
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.ab = add nsw i32 %.094136.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.loopexit121.i
  %.197.i = phi i32 [ %i.aa, %bb.e ], [ %.096134.i, %.loopexit121.i ], [ %.096134.i, %bb.f ]
  %.195.i = phi i32 [ 1, %bb.e ], [ 1, %.loopexit121.i ], [ %i.ab, %bb.f ]
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvar.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge139.i, label %.lr.ph138.i, !llvm.loop !34

._crit_edge139.i:                                 ; preds = %bb.g
  %i.ac = load i32, ptr %0, align 4, !tbaa !54
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
  %i.an = load i32, ptr %i.am, align 4, !tbaa !54 ; 2 uses
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

end_hunk_0
