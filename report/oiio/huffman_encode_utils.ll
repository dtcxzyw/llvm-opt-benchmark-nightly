inline.NumInlined: 7
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@kReversedBits = internal unnamed_addr constant [16 x i8] c"\00\08\04\0C\02\0A\06\0E\01\09\05\0D\03\0B\07\0F", align 16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @VP8LCreateCompressedHuffmanTree(ptr noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !7      ; 4 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph60, label %._crit_edge

.lr.ph60:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = zext nneg i32 %i.a to i64                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph60, %CodeRepeatedZeros.exit
  %.059 = phi ptr [ %1, %.lr.ph60 ], [ %.1, %CodeRepeatedZeros.exit ] ; 7 uses
  %.02958 = phi i32 [ 8, %.lr.ph60 ], [ %.130, %CodeRepeatedZeros.exit ] ; 5 uses
  %.03157 = phi i32 [ 0, %.lr.ph60 ], [ %.028.lcssa, %CodeRepeatedZeros.exit ] ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %i.f = zext nneg i32 %.03157 to i64             ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13    ; 7 uses
  %i.i = zext i8 %i.h to i32                      ; 6 uses
  %i.j = add nuw nsw i32 %.03157, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 %i.j) ; 2 uses
  %indvars.iv.next99 = add nuw nsw i64 %i.f, 1    ; 2 uses
  %i.k = icmp samesign ult i64 %indvars.iv.next99, %i.d
  br i1 %i.k, label %.lr.ph102, label %.critedge

bb.c:                                             ; preds = %.lr.ph102
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next100, 1 ; 2 uses
  %i.l = icmp samesign ult i64 %indvars.iv.next, %i.d
  br i1 %i.l, label %.lr.ph102, label %.critedge, !llvm.loop !14

.lr.ph102:                                        ; preds = %bb.b, %bb.c
  %indvars.iv.next100 = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.next99, %bb.b ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next100
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13
  %i.o = icmp eq i8 %i.n, %i.h
  br i1 %i.o, label %bb.c, label %.critedge.split.loop.exit86, !llvm.loop !14

.critedge.split.loop.exit86:                      ; preds = %.lr.ph102
  %i.p = trunc nuw nsw i64 %indvars.iv.next100 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b, %.critedge.split.loop.exit86
  %.028.lcssa = phi i32 [ %i.p, %.critedge.split.loop.exit86 ], [ %smax, %bb.b ], [ %smax, %bb.c ] ; 3 uses
  %i.q = sub nsw i32 %.028.lcssa, %.03157         ; 7 uses
  %i.r = icmp eq i8 %i.h, 0
  br i1 %i.r, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.critedge
  %i.s = icmp sgt i32 %i.q, 0
  br i1 %i.s, label %.lr.ph.preheader.i, label %CodeRepeatedZeros.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.t = add nsw i32 %i.q, -1
  %i.u = urem i32 %i.t, 138
  %i.v = icmp samesign ult i32 %i.q, 3
  br i1 %i.v, label %.lr.ph35.preheader.i, label %.lr.ph53

.lr.ph35.preheader.i:                             ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.02232.i.lcssa = phi ptr [ %.059, %.lr.ph.preheader.i ], [ %5, %.lr.ph.i ] ; 2 uses
  %.02331.i.lcssa = phi i32 [ %i.q, %.lr.ph.preheader.i ], [ %i.ai, %.lr.ph.i ]
  %i.w = shl nuw nsw i32 %.02331.i.lcssa, 1
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.02232.i.lcssa, i8 0, i64 %i.x, i1 false), !tbaa !13
  %i.y = getelementptr i8, ptr %.02232.i.lcssa, i64 %i.x
  br label %CodeRepeatedZeros.exit

.lr.ph53:                                         ; preds = %.lr.ph.preheader.i, %.lr.ph.i
  %.02331.i51 = phi i32 [ %i.ai, %.lr.ph.i ], [ %i.q, %.lr.ph.preheader.i ] ; 5 uses
  %.02232.i47 = phi ptr [ %5, %.lr.ph.i ], [ %.059, %.lr.ph.preheader.i ] ; 8 uses
  %i.z = icmp samesign ult i32 %.02331.i51, 11
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph53
  store i8 17, ptr %.02232.i47, align 1, !tbaa !16
  %i.aa = trunc nuw nsw i32 %.02331.i51 to i8
  %i.ab = add nsw i8 %i.aa, -3
  %i.ac = getelementptr inbounds nuw i8, ptr %.02232.i47, i64 1
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !18
  %3 = getelementptr inbounds nuw i8, ptr %.02232.i47, i64 2
  br label %CodeRepeatedZeros.exit

bb.f:                                             ; preds = %.lr.ph53
  %i.ad = icmp samesign ult i32 %.02331.i51, 139
  store i8 18, ptr %.02232.i47, align 1, !tbaa !16
  br i1 %i.ad, label %bb.g, label %.lr.ph.i

bb.g:                                             ; preds = %bb.f
  %i.ae = trunc nuw i32 %i.u to i8
  %i.af = add i8 %i.ae, -10
  %i.ag = getelementptr inbounds nuw i8, ptr %.02232.i47, i64 1
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !18
  %4 = getelementptr inbounds nuw i8, ptr %.02232.i47, i64 2
  br label %CodeRepeatedZeros.exit

.lr.ph.i:                                         ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.02232.i47, i64 1
  store i8 127, ptr %i.ah, align 1, !tbaa !18
  %5 = getelementptr i8, ptr %.02232.i47, i64 2   ; 2 uses
  %i.ai = add nsw i32 %.02331.i51, -138           ; 2 uses
  %i.aj = icmp samesign ult i32 %.02331.i51, 141
  br i1 %i.aj, label %.lr.ph35.preheader.i, label %.lr.ph53

bb.h:                                             ; preds = %.critedge
  %.not.i = icmp eq i32 %.02958, %i.i
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 %i.h, ptr %.059, align 1, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %.059, i64 1
  store i8 0, ptr %i.ak, align 1, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %.059, i64 2
  %i.am = add nsw i32 %i.q, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.026.i = phi ptr [ %i.al, %bb.i ], [ %.059, %bb.h ] ; 6 uses
  %.025.i = phi i32 [ %i.am, %bb.i ], [ %i.q, %bb.h ] ; 8 uses
  %i.an = icmp sgt i32 %.025.i, 0
  br i1 %i.an, label %.lr.ph.preheader.i34, label %CodeRepeatedZeros.exit

.lr.ph.preheader.i34:                             ; preds = %bb.j
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
  %min.iters.check119 = icmp samesign ult i32 %i.aw, 16
  br i1 %min.iters.check119, label %.lr.ph.preheader130, label %vector.ph120

.lr.ph.preheader130:                              ; preds = %vector.body123, %.lr.ph.preheader
  %.12734.i47.ph = phi ptr [ %.026.i, %.lr.ph.preheader ], [ %i.bb, %vector.body123 ]
  %.135.i46.ph = phi i32 [ %.025.i, %.lr.ph.preheader ], [ %i.be, %vector.body123 ]
  br label %.lr.ph

vector.ph120:                                     ; preds = %.lr.ph.preheader
  %narrow = add nuw nsw i32 %i.aw, 1
  %i.ax = zext nneg i32 %narrow to i64            ; 2 uses
  %n.mod.vf121 = and i64 %i.ax, 15                ; 2 uses
  %i.ay = icmp eq i64 %n.mod.vf121, 0
  %i.az = select i1 %i.ay, i64 16, i64 %n.mod.vf121
  %n.vec122 = sub nsw i64 %i.ax, %i.az            ; 3 uses
  %i.ba = shl nsw i64 %n.vec122, 1
  %i.bb = getelementptr i8, ptr %.026.i, i64 %i.ba
  %i.bc = trunc i64 %n.vec122 to i32
  %i.bd = mul i32 %i.bc, -6
  %i.be = add i32 %.025.i, %i.bd
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph120
  %index124 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body123 ] ; 2 uses
  %i.bf = shl i64 %index124, 1                    ; 2 uses
  %next.gep125 = getelementptr i8, ptr %.026.i, i64 %i.bf
  %i.bg = getelementptr i8, ptr %.026.i, i64 %i.bf
  %next.gep126 = getelementptr i8, ptr %i.bg, i64 16
  store <16 x i8> <i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3>, ptr %next.gep125, align 1, !tbaa !13
  store <16 x i8> <i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3, i8 16, i8 3>, ptr %next.gep126, align 1, !tbaa !13
  %index.next127 = add nuw i64 %index124, 16      ; 2 uses
  %i.bh = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.bh, label %.lr.ph.preheader130, label %vector.body123, !llvm.loop !19

iter.check:                                       ; preds = %.lr.ph.i36, %.lr.ph.preheader.i34
  %.135.i.lcssa = phi i32 [ %.025.i, %.lr.ph.preheader.i34 ], [ %i.cg, %.lr.ph.i36 ] ; 2 uses
  %.12734.i.lcssa = phi ptr [ %.026.i, %.lr.ph.preheader.i34 ], [ %i.cf, %.lr.ph.i36 ] ; 6 uses
  %i.bi = add i32 %.135.i.lcssa, -1               ; 3 uses
  %i.bj = zext i32 %i.bi to i64
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bi, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check103 = icmp ult i32 %i.bi, 15
  br i1 %min.iters.check103, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bk, 12
  %n.vec = and i64 %i.bk, 8589934576              ; 5 uses
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
  %next.gep104 = getelementptr i8, ptr %i.bp, i64 16
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !13
  store <16 x i8> %interleaved.vec, ptr %next.gep104, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %CodeRepeatedZeros.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec108 = and i64 %i.bk, 8589934588           ; 4 uses
  %i.br = trunc i64 %n.vec108 to i32
  %i.bs = shl nuw nsw i64 %n.vec108, 1
  %i.bt = getelementptr i8, ptr %.12734.i.lcssa, i64 %i.bs ; 2 uses
  %broadcast.splatinsert109 = insertelement <4 x i8> poison, i8 %i.h, i64 0
  %interleaved.vec113 = shufflevector <4 x i8> %broadcast.splatinsert109, <4 x i8> zeroinitializer, <8 x i32> <i32 0, i32 4, i32 0, i32 5, i32 0, i32 6, i32 0, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index111 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next114, %vec.epilog.vector.body ] ; 2 uses
  %i.bu = shl i64 %index111, 1
  %next.gep112 = getelementptr i8, ptr %.12734.i.lcssa, i64 %i.bu
  store <8 x i8> %interleaved.vec113, ptr %next.gep112, align 1, !tbaa !13
  %index.next114 = add nuw i64 %index111, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next114, %n.vec108
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !24

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n115 = icmp eq i64 %i.bk, %n.vec108
  br i1 %cmp.n115, label %CodeRepeatedZeros.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.037.i.ph = phi i32 [ 0, %iter.check ], [ %i.bl, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ]
  %.236.i.ph = phi ptr [ %.12734.i.lcssa, %iter.check ], [ %i.bn, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.037.i = phi i32 [ %i.by, %vec.epilog.scalar.ph ], [ %.037.i.ph, %vec.epilog.scalar.ph.preheader ]
  %.236.i = phi ptr [ %i.bx, %vec.epilog.scalar.ph ], [ %.236.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  store i8 %i.h, ptr %.236.i, align 1, !tbaa !16
  %i.bw = getelementptr inbounds nuw i8, ptr %.236.i, i64 1
  store i8 0, ptr %i.bw, align 1, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %.236.i, i64 2 ; 2 uses
  %i.by = add nuw nsw i32 %.037.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.by, %.135.i.lcssa
  br i1 %exitcond.not.i, label %CodeRepeatedZeros.exit, label %vec.epilog.scalar.ph, !llvm.loop !25

.lr.ph:                                           ; preds = %.lr.ph.preheader130, %.lr.ph.i36
  %.12734.i47 = phi ptr [ %i.cf, %.lr.ph.i36 ], [ %.12734.i47.ph, %.lr.ph.preheader130 ] ; 5 uses
  %.135.i46 = phi i32 [ %i.cg, %.lr.ph.i36 ], [ %.135.i46.ph, %.lr.ph.preheader130 ] ; 3 uses
  %i.bz = icmp samesign ult i32 %.135.i46, 7
  store i8 16, ptr %.12734.i47, align 1, !tbaa !16
  br i1 %i.bz, label %bb.k, label %.lr.ph.i36

bb.k:                                             ; preds = %.lr.ph
  %i.ca = trunc nuw nsw i32 %i.ap to i8
  %i.cb = add nsw i8 %i.ca, -2
  %i.cc = getelementptr inbounds nuw i8, ptr %.12734.i47, i64 1
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !18
  %i.cd = getelementptr inbounds nuw i8, ptr %.12734.i47, i64 2
  br label %CodeRepeatedZeros.exit

.lr.ph.i36:                                       ; preds = %.lr.ph
  %i.ce = getelementptr inbounds nuw i8, ptr %.12734.i47, i64 1
  store i8 3, ptr %i.ce, align 1, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %.12734.i47, i64 2 ; 2 uses
  %i.cg = add nsw i32 %.135.i46, -6               ; 2 uses
  %i.ch = icmp samesign ult i32 %.135.i46, 9
  br i1 %i.ch, label %iter.check, label %.lr.ph, !llvm.loop !26

CodeRepeatedZeros.exit:                           ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.k, %bb.j, %bb.g, %bb.e, %.lr.ph35.preheader.i, %bb.d
  %.130 = phi i32 [ %.02958, %bb.g ], [ %.02958, %bb.d ], [ %.02958, %.lr.ph35.preheader.i ], [ %.02958, %bb.e ], [ %i.i, %bb.j ], [ %i.i, %bb.k ], [ %i.i, %middle.block ], [ %i.i, %vec.epilog.middle.block ], [ %i.i, %vec.epilog.scalar.ph ]
  %.1 = phi ptr [ %4, %bb.g ], [ %.059, %bb.d ], [ %i.y, %.lr.ph35.preheader.i ], [ %3, %bb.e ], [ %.026.i, %bb.j ], [ %i.cd, %bb.k ], [ %i.bn, %middle.block ], [ %i.bt, %vec.epilog.middle.block ], [ %i.bx, %vec.epilog.scalar.ph ] ; 2 uses
  %i.ci = icmp slt i32 %.028.lcssa, %i.a
  br i1 %i.ci, label %bb.b, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %CodeRepeatedZeros.exit, %bb.a
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %.1, %CodeRepeatedZeros.exit ]
  %i.cj = ptrtoint ptr %.0.lcssa to i64
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
define hidden void @VP8LCreateHuffmanTree(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef captures(none) %2, ptr noundef %3, ptr noundef readonly captures(none) %4) local_unnamed_addr #2 {
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
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !29

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
  store i32 %spec.store.select6.i, ptr %i.bn, align 4, !tbaa !3
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !30

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
  store i32 %spec.store.select6.i, ptr %i.bt, align 4, !tbaa !3
  %reass.sub154 = sub i64 %indvars.iv156.i, %indvars.iv.i
  %i.bu = add i64 %reass.sub154, 4294967294
  %i.bv = and i64 %i.bu, 4294967295
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bv
  store i32 %spec.store.select6.i, ptr %i.bw, align 4, !tbaa !3
  %reass.sub155 = sub i64 %indvars.iv156.i, %indvars.iv.i
  %i.bx = add i64 %reass.sub155, 4294967293
  %i.by = and i64 %i.bx, 4294967295
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.by
  store i32 %spec.store.select6.i, ptr %i.bz, align 4, !tbaa !3
  %reass.sub156 = sub i64 %indvars.iv156.i, %indvars.iv.i
  %i.ca = add i64 %reass.sub156, 4294967292
  %i.cb = and i64 %i.ca, 4294967295
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cb
  store i32 %spec.store.select6.i, ptr %i.cc, align 4, !tbaa !3
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond155.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count154.i
  br i1 %exitcond155.not.i.3, label %.loopexit.i, label %scalar.ph, !llvm.loop !32

.loopexit.i:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.n
  %i.cd = icmp slt i64 %indvars.iv156.i, %i.ae
  br i1 %i.cd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.loopexit.i
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv156.i
  %i.cf = load <4 x i32>, ptr %i.ce, align 4, !tbaa !3
  %i.cg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cf)
  %op.rdx = add i32 %i.cg, 2
  %i.ch = lshr i32 %op.rdx, 2
  br label %bb.s

bb.q:                                             ; preds = %.loopexit.i
  %i.ci = icmp samesign ult i64 %indvars.iv156.i, %i.i
  br i1 %i.ci, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv156.i
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !3
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.189.i = phi i32 [ %i.ch, %bb.p ], [ %i.ck, %bb.r ], [ 0, %bb.q ] ; 2 uses
  br i1 %i.ah, label %bb.v, label %.thread117.i

.thread117.i:                                     ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv156.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  br label %bb.v

bb.t:                                             ; preds = %bb.l
  %i.cn = add i32 %.091143.i, 1                   ; 5 uses
  %i.co = add i32 %i.an, %.087145.i               ; 3 uses
  %i.cp = icmp ugt i32 %i.cn, 3
end_hunk_0
