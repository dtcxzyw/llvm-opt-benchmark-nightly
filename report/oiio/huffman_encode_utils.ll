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
  %i.a = load i32, ptr %0, align 8, !tbaa !7      ; 4 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph55, label %._crit_edge

.lr.ph55:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = zext nneg i32 %i.a to i64                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph55, %CodeRepeatedZeros.exit
  %.054 = phi ptr [ %1, %.lr.ph55 ], [ %.1, %CodeRepeatedZeros.exit ] ; 7 uses
  %.02953 = phi i32 [ 8, %.lr.ph55 ], [ %.130, %CodeRepeatedZeros.exit ] ; 5 uses
  %.03152 = phi i32 [ 0, %.lr.ph55 ], [ %.028.lcssa, %CodeRepeatedZeros.exit ] ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %i.f = zext nneg i32 %.03152 to i64             ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13    ; 7 uses
  %i.i = zext i8 %i.h to i32                      ; 6 uses
  %i.j = add nuw nsw i32 %.03152, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 %i.j) ; 2 uses
  %indvars.iv.next90 = add nuw nsw i64 %i.f, 1    ; 2 uses
  %i.k = icmp samesign ult i64 %indvars.iv.next90, %i.d
  br i1 %i.k, label %.lr.ph93, label %.critedge

bb.c:                                             ; preds = %.lr.ph93
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next91, 1 ; 2 uses
  %i.l = icmp samesign ult i64 %indvars.iv.next, %i.d
  br i1 %i.l, label %.lr.ph93, label %.critedge, !llvm.loop !14

.lr.ph93:                                         ; preds = %bb.b, %bb.c
  %indvars.iv.next91 = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.next90, %bb.b ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next91
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13
  %i.o = icmp eq i8 %i.n, %i.h
  br i1 %i.o, label %bb.c, label %.critedge.split.loop.exit78, !llvm.loop !14

.critedge.split.loop.exit78:                      ; preds = %.lr.ph93
  %i.p = trunc nuw nsw i64 %indvars.iv.next91 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b, %.critedge.split.loop.exit78
  %.028.lcssa = phi i32 [ %i.p, %.critedge.split.loop.exit78 ], [ %smax, %bb.b ], [ %smax, %bb.c ] ; 3 uses
  %i.q = sub nsw i32 %.028.lcssa, %.03152         ; 7 uses
  %i.r = icmp eq i8 %i.h, 0
  br i1 %i.r, label %3, label %bb.g

3:                                                ; preds = %.critedge
  %4 = icmp sgt i32 %i.q, 0
  br i1 %4, label %.lr.ph.preheader.i, label %CodeRepeatedZeros.exit

.lr.ph.preheader.i:                               ; preds = %3
  %i.s = add nsw i32 %i.q, -1
  %i.t = urem i32 %i.s, 138
  %i.u = icmp samesign ult i32 %i.q, 3
  br i1 %i.u, label %.lr.ph35.preheader.i, label %.lr.ph49

.lr.ph35.preheader.i:                             ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.02232.i.lcssa = phi ptr [ %.054, %.lr.ph.preheader.i ], [ %i.ai, %.lr.ph.i ] ; 2 uses
  %.02331.i.lcssa = phi i32 [ %i.q, %.lr.ph.preheader.i ], [ %i.aj, %.lr.ph.i ]
  %i.v = shl nuw nsw i32 %.02331.i.lcssa, 1
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.02232.i.lcssa, i8 0, i64 %i.w, i1 false), !tbaa !13
  %scevgep.i = getelementptr i8, ptr %.02232.i.lcssa, i64 %i.w
  br label %CodeRepeatedZeros.exit

.lr.ph49:                                         ; preds = %.lr.ph.preheader.i, %.lr.ph.i
  %.02331.i48 = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.q, %.lr.ph.preheader.i ] ; 5 uses
  %.02232.i47 = phi ptr [ %i.ai, %.lr.ph.i ], [ %.054, %.lr.ph.preheader.i ] ; 8 uses
  %i.x = icmp samesign ult i32 %.02331.i48, 11
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph49
  store i8 17, ptr %.02232.i47, align 1, !tbaa !16
  %i.y = trunc nuw nsw i32 %.02331.i48 to i8
  %i.z = add nsw i8 %i.y, -3
  %i.aa = getelementptr inbounds nuw i8, ptr %.02232.i47, i64 1
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %.02232.i47, i64 2
  br label %CodeRepeatedZeros.exit

bb.e:                                             ; preds = %.lr.ph49
  %i.ac = icmp samesign ult i32 %.02331.i48, 139
  store i8 18, ptr %.02232.i47, align 1, !tbaa !16
  br i1 %i.ac, label %bb.f, label %.lr.ph.i

bb.f:                                             ; preds = %bb.e
  %i.ad = trunc nuw i32 %i.t to i8
  %i.ae = add i8 %i.ad, -10
  %i.af = getelementptr inbounds nuw i8, ptr %.02232.i47, i64 1
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.02232.i47, i64 2
  br label %CodeRepeatedZeros.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.02232.i47, i64 1
  store i8 127, ptr %i.ah, align 1, !tbaa !18
  %i.ai = getelementptr i8, ptr %.02232.i47, i64 2 ; 2 uses
  %i.aj = add nsw i32 %.02331.i48, -138           ; 2 uses
  %5 = icmp samesign ult i32 %.02331.i48, 141
  br i1 %5, label %.lr.ph35.preheader.i, label %.lr.ph49

bb.g:                                             ; preds = %.critedge
  %.not.i = icmp eq i32 %.02953, %i.i
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 %i.h, ptr %.054, align 1, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %.054, i64 1
  store i8 0, ptr %i.ak, align 1, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %.054, i64 2
  %i.am = add nsw i32 %i.q, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.026.i = phi ptr [ %i.al, %bb.h ], [ %.054, %bb.g ] ; 6 uses
  %.025.i = phi i32 [ %i.am, %bb.h ], [ %i.q, %bb.g ] ; 8 uses
  %i.an = icmp sgt i32 %.025.i, 0
  br i1 %i.an, label %.lr.ph.preheader.i34, label %CodeRepeatedZeros.exit

.lr.ph.preheader.i34:                             ; preds = %bb.i
  %i.ao = add nsw i32 %.025.i, -1
  %i.ap = urem i32 %i.ao, 6
  %i.aq = icmp samesign ult i32 %.025.i, 3
  br i1 %i.aq, label %iter.check, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i34
  %i.ar = tail call i32 @llvm.usub.sat.i32(i32 %.025.i, i32 8)
  %i.as = add nuw i32 %i.ar, 5
  %i.at = udiv i32 %i.as, 6
  %i.au = add nsw i32 %.025.i, -1
  %i.av = udiv i32 %i.au, 6
  %i.aw = tail call i32 @llvm.umin.i32(i32 %i.at, i32 %i.av) ; 2 uses
  %min.iters.check108 = icmp samesign ult i32 %i.aw, 16
  br i1 %min.iters.check108, label %.lr.ph.preheader118, label %vector.ph109

.lr.ph.preheader118:                              ; preds = %vector.body111, %.lr.ph.preheader
  %.12734.i45.ph = phi ptr [ %.026.i, %.lr.ph.preheader ], [ %i.bc, %vector.body111 ]
  %.135.i44.ph = phi i32 [ %.025.i, %.lr.ph.preheader ], [ %i.bf, %vector.body111 ]
  br label %.lr.ph

vector.ph109:                                     ; preds = %.lr.ph.preheader
  %narrow = add nuw nsw i32 %i.aw, 1
  %i.ax = zext nneg i32 %narrow to i64            ; 2 uses
  %i.ay = and i64 %i.ax, 15                       ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  %i.ba = select i1 %i.az, i64 16, i64 %i.ay
  %n.vec110 = sub nsw i64 %i.ax, %i.ba            ; 3 uses
  %i.bb = shl nsw i64 %n.vec110, 1
  %i.bc = getelementptr i8, ptr %.026.i, i64 %i.bb
  %i.bd = trunc i64 %n.vec110 to i32
  %i.be = mul i32 %i.bd, -6
  %i.bf = add i32 %.025.i, %i.be
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next115, %vector.body111 ] ; 2 uses
  %i.bg = shl i64 %index112, 1                    ; 2 uses
  %next.gep113 = getelementptr i8, ptr %.026.i, i64 %i.bg
  %i.bh = getelementptr i8, ptr %.026.i, i64 %i.bg
  %next.gep114 = getelementptr i8, ptr %i.bh, i64 16
  store <16 x i8> <i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3>, ptr %next.gep113, align 1, !tbaa !13
  store <16 x i8> <i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3>, ptr %next.gep114, align 1, !tbaa !13
  %index.next115 = add nuw i64 %index112, 16      ; 2 uses
  %i.bi = icmp eq i64 %index.next115, %n.vec110
  br i1 %i.bi, label %.lr.ph.preheader118, label %vector.body111, !llvm.loop !19

iter.check:                                       ; preds = %.lr.ph.i36, %.lr.ph.preheader.i34
  %.135.i.lcssa = phi i32 [ %.025.i, %.lr.ph.preheader.i34 ], [ %i.ci, %.lr.ph.i36 ] ; 2 uses
  %.12734.i.lcssa = phi ptr [ %.026.i, %.lr.ph.preheader.i34 ], [ %i.ch, %.lr.ph.i36 ] ; 6 uses
  %i.bj = add i32 %.135.i.lcssa, -1               ; 3 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bj, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check94 = icmp ult i32 %i.bj, 15
  br i1 %min.iters.check94, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bm = and i64 %i.bl, 12
  %n.vec = and i64 %i.bl, 8589934576              ; 5 uses
  %i.bn = trunc i64 %n.vec to i32
  %i.bo = shl nuw nsw i64 %n.vec, 1
  %i.bp = getelementptr i8, ptr %.12734.i.lcssa, i64 %i.bo ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.h, i64 0
  %interleaved.vec = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> zeroinitializer, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.12734.i.lcssa, i64 %i.bq
  %i.br = getelementptr i8, ptr %.12734.i.lcssa, i64 %i.bq
  %next.gep95 = getelementptr i8, ptr %i.br, i64 16
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !13
  store <16 x i8> %interleaved.vec, ptr %next.gep95, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %CodeRepeatedZeros.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bm, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec98 = and i64 %i.bl, 8589934588            ; 4 uses
  %i.bt = trunc i64 %n.vec98 to i32
  %i.bu = shl nuw nsw i64 %n.vec98, 1
  %i.bv = getelementptr i8, ptr %.12734.i.lcssa, i64 %i.bu ; 2 uses
  %broadcast.splatinsert99 = insertelement <4 x i8> poison, i8 %i.h, i64 0
  %interleaved.vec103 = shufflevector <4 x i8> %broadcast.splatinsert99, <4 x i8> zeroinitializer, <8 x i32> <i32 0, i32 4, i32 0, i32 5, i32 0, i32 6, i32 0, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index101 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next104, %vec.epilog.vector.body ] ; 2 uses
  %i.bw = shl i64 %index101, 1
  %next.gep102 = getelementptr i8, ptr %.12734.i.lcssa, i64 %i.bw
  store <8 x i8> %interleaved.vec103, ptr %next.gep102, align 1, !tbaa !13
  %index.next104 = add nuw i64 %index101, 4       ; 2 uses
  %i.bx = icmp eq i64 %index.next104, %n.vec98
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !24

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n105 = icmp eq i64 %i.bl, %n.vec98
  br i1 %cmp.n105, label %CodeRepeatedZeros.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.037.i.ph = phi i32 [ 0, %iter.check ], [ %i.bn, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ]
  %.236.i.ph = phi ptr [ %.12734.i.lcssa, %iter.check ], [ %i.bp, %vec.epilog.iter.check ], [ %i.bv, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.037.i = phi i32 [ %i.ca, %vec.epilog.scalar.ph ], [ %.037.i.ph, %vec.epilog.scalar.ph.preheader ]
  %.236.i = phi ptr [ %i.bz, %vec.epilog.scalar.ph ], [ %.236.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  store i8 %i.h, ptr %.236.i, align 1, !tbaa !16
  %i.by = getelementptr inbounds nuw i8, ptr %.236.i, i64 1
  store i8 0, ptr %i.by, align 1, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %.236.i, i64 2 ; 2 uses
  %i.ca = add nuw nsw i32 %.037.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ca, %.135.i.lcssa
  br i1 %exitcond.not.i, label %CodeRepeatedZeros.exit, label %vec.epilog.scalar.ph, !llvm.loop !25

.lr.ph:                                           ; preds = %.lr.ph.preheader118, %.lr.ph.i36
  %.12734.i45 = phi ptr [ %i.ch, %.lr.ph.i36 ], [ %.12734.i45.ph, %.lr.ph.preheader118 ] ; 5 uses
  %.135.i44 = phi i32 [ %i.ci, %.lr.ph.i36 ], [ %.135.i44.ph, %.lr.ph.preheader118 ] ; 3 uses
  %i.cb = icmp samesign ult i32 %.135.i44, 7
  store i8 16, ptr %.12734.i45, align 1, !tbaa !16
  br i1 %i.cb, label %bb.j, label %.lr.ph.i36

bb.j:                                             ; preds = %.lr.ph
  %i.cc = trunc nuw nsw i32 %i.ap to i8
  %i.cd = add nsw i8 %i.cc, -2
  %i.ce = getelementptr inbounds nuw i8, ptr %.12734.i45, i64 1
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %.12734.i45, i64 2
  br label %CodeRepeatedZeros.exit

.lr.ph.i36:                                       ; preds = %.lr.ph
  %i.cg = getelementptr inbounds nuw i8, ptr %.12734.i45, i64 1
  store i8 3, ptr %i.cg, align 1, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %.12734.i45, i64 2 ; 2 uses
  %i.ci = add nsw i32 %.135.i44, -6               ; 2 uses
  %i.cj = icmp samesign ult i32 %.135.i44, 9
  br i1 %i.cj, label %iter.check, label %.lr.ph, !llvm.loop !26

CodeRepeatedZeros.exit:                           ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.j, %bb.i, %bb.f, %bb.d, %.lr.ph35.preheader.i, %3
  %.130 = phi i32 [ %.02953, %bb.f ], [ %.02953, %3 ], [ %.02953, %.lr.ph35.preheader.i ], [ %.02953, %bb.d ], [ %i.i, %bb.i ], [ %i.i, %bb.j ], [ %i.i, %middle.block ], [ %i.i, %vec.epilog.middle.block ], [ %i.i, %vec.epilog.scalar.ph ]
  %.1 = phi ptr [ %i.ag, %bb.f ], [ %.054, %3 ], [ %scevgep.i, %.lr.ph35.preheader.i ], [ %i.ab, %bb.d ], [ %.026.i, %bb.i ], [ %i.cf, %bb.j ], [ %i.bp, %middle.block ], [ %i.bv, %vec.epilog.middle.block ], [ %i.bz, %vec.epilog.scalar.ph ] ; 2 uses
  %i.ck = icmp slt i32 %.028.lcssa, %i.a
  br i1 %i.ck, label %bb.b, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %CodeRepeatedZeros.exit, %bb.a
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %.1, %CodeRepeatedZeros.exit ]
  %i.cl = ptrtoint ptr %.0.lcssa to i64
  %i.cm = ptrtoint ptr %1 to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = lshr exact i64 %i.cn, 1
  %i.cp = trunc i64 %i.co to i32
  ret i32 %i.cp
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
  %i.c = load i32, ptr %4, align 8, !tbaa !7      ; 10 uses
  %i.d = sext i32 %i.c to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %i.d, i1 false)
  %i.e = icmp sgt i32 %i.c, -1
  br i1 %i.e, label %.lr.ph.i.preheader, label %OptimizeHuffmanForRle.exit.thread

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.f = icmp eq i32 %i.c, 0
  br i1 %i.f, label %OptimizeHuffmanForRle.exit.thread44, label %.lr.ph

OptimizeHuffmanForRle.exit.thread44:              ; preds = %.lr.ph.i.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %GenerateOptimalTree.exit

OptimizeHuffmanForRle.exit.thread:                ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %GenerateOptimalTree.exit

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0100124.i30 = phi i32 [ %i.m, %.lr.ph.i ], [ %i.c, %.lr.ph.i.preheader ] ; 4 uses
  %i.i = zext nneg i32 %.0100124.i30 to i64       ; 4 uses
  %i.j = getelementptr [4 x i8], ptr %0, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %.lr.ph.i, label %.lr.ph138.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.m = add nsw i32 %.0100124.i30, -1            ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %OptimizeHuffmanForRle.exit, label %.lr.ph

.lr.ph138.preheader.i:                            ; preds = %.lr.ph
  %i.o = load i32, ptr %0, align 4, !tbaa !3
  %i.p = add nuw i32 %.0100124.i30, 1
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep150.i, i8 1, i64 %i.x, i1 false), !tbaa !13
  br label %.loopexit121.i

.loopexit121.i:                                   ; preds = %.lr.ph129.preheader.i, %bb.d
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.loopexit121.i
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvar.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.ab = add nsw i32 %.094136.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.loopexit121.i
  %.197.i = phi i32 [ %i.aa, %bb.e ], [ %.096134.i, %.loopexit121.i ], [ %.096134.i, %bb.f ]
  %.195.i = phi i32 [ 1, %bb.e ], [ 1, %.loopexit121.i ], [ %i.ab, %bb.f ]
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvar.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge139.i, label %.lr.ph138.i, !llvm.loop !28

._crit_edge139.i:                                 ; preds = %bb.g
  %i.ac = load i32, ptr %0, align 4, !tbaa !3
  %i.ad = add nsw i32 %.0100124.i30, -3
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
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !13
  %.not105.i = icmp eq i8 %i.aj, 0
  br i1 %.not105.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.not106.i = icmp eq i64 %indvars.iv156.i, 0
  br i1 %.not106.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr i8, ptr %i.ai, i64 -1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !13
  %.not107.i = icmp eq i8 %i.al, 0
  br i1 %.not107.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv156.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3  ; 2 uses
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
  store <4 x i32> %broadcast.splat, ptr %i.bh, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat, ptr %i.bi, align 4, !tbaa !3
end_hunk_0
