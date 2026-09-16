Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/pliocomp?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 -2147483648, 2147483647) i32 @pl_p2li(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %2, i64 -2 ; 9 uses
  %i.b = icmp slt i32 %3, 1
  br i1 %i.b, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 -4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i16 -100, ptr %i.d, align 2, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 7, ptr %i.e, align 2, !tbaa !10
  store i16 0, ptr %2, align 2, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i16 0, ptr %i.f, align 2, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i16 0, ptr %i.g, align 2, !tbaa !10
  %i.h = add nsw i32 %3, %1                       ; 3 uses
  %i.i = add nsw i32 %i.h, -1
  %i.j = sext i32 %1 to i64                       ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !11
  %i.m = tail call i32 @llvm.smax.i32(i32 %i.l, i32 0)
  %i.n = sext i32 %i.i to i64
  %i.o = sext i32 %i.h to i64
  %4 = add i32 %1, 4095
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.p
  %indvar = phi i32 [ 0, %bb.b ], [ %indvar.next, %bb.p ] ; 2 uses
  %indvars.iv147 = phi i64 [ %i.j, %bb.b ], [ %indvars.iv.next148.pre-phi, %bb.p ] ; 5 uses
  %.0105141 = phi i32 [ %i.m, %bb.b ], [ %.2, %bb.p ] ; 13 uses
  %.0106140 = phi i32 [ 0, %bb.b ], [ %.2, %bb.p ]
  %.0108139 = phi i32 [ %1, %bb.b ], [ %.1109, %bb.p ] ; 4 uses
  %.0110138 = phi i32 [ 8, %bb.b ], [ %.6, %bb.p ] ; 9 uses
  %.0115134 = phi i32 [ 1, %bb.b ], [ %.3118, %bb.p ] ; 5 uses
  %.0119133 = phi i32 [ %1, %bb.b ], [ %.2121, %bb.p ] ; 3 uses
  %5 = add i32 %4, %indvar
  %indvars149 = trunc i64 %indvars.iv147 to i32   ; 3 uses
  %i.p = icmp slt i64 %indvars.iv147, %i.n
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = add nsw i64 %indvars.iv147, 1            ; 3 uses
  %i.r = getelementptr [4 x i8], ptr %0, i64 %indvars.iv147
  %i.s = load i32, ptr %i.r, align 4, !tbaa !11
  %i.t = tail call i32 @llvm.smax.i32(i32 %i.s, i32 0) ; 3 uses
  %i.u = icmp eq i32 %i.t, %.0105141
  br i1 %i.u, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp eq i32 %.0105141, 0
  %i.w = trunc nsw i64 %i.q to i32
  br i1 %i.v, label %bb.p, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.x = icmp eq i32 %.0105141, 0
  %spec.select = select i1 %i.x, i32 %i.h, i32 %.0119133
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1120 = phi i32 [ %.0119133, %bb.e ], [ %spec.select, %bb.f ] ; 6 uses
  %.1107 = phi i32 [ %i.t, %bb.e ], [ %.0106140, %bb.f ]
  %i.y = add i32 %indvars149, 1                   ; 2 uses
  %i.z = sub i32 %i.y, %.1120                     ; 7 uses
  %i.aa = sub i32 %.1120, %.0108139               ; 8 uses
  %i.ab = icmp sgt i32 %.0105141, 0               ; 2 uses
  br i1 %i.ab, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ac = sub nsw i32 %.0105141, %.0115134        ; 3 uses
  %.not = icmp eq i32 %.0105141, %.0115134
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add i32 %i.ac, -4096
  %i.ae = icmp ult i32 %i.ad, -8191
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = trunc i32 %.0105141 to i16
  %i.ag = and i16 %i.af, 4095
  %i.ah = or disjoint i16 %i.ag, 4096
  %i.ai = sext i32 %.0110138 to i64
  %i.aj = getelementptr [2 x i8], ptr %i.a, i64 %i.ai ; 2 uses
  store i16 %i.ah, ptr %i.aj, align 2, !tbaa !10
  %i.ak = lshr i32 %.0105141, 12
  %i.al = trunc i32 %i.ak to i16
  %i.am = getelementptr i8, ptr %i.aj, i64 2
  store i16 %i.al, ptr %i.am, align 2, !tbaa !10
  %i.an = add nsw i32 %.0110138, 2
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ao = icmp slt i32 %i.ac, 0
  %i.ap = trunc nsw i32 %i.ac to i16              ; 2 uses
  %i.aq = sext i32 %.0110138 to i64
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.aq
  %i.as = add nuw nsw i16 %i.ap, 8192
  %i.at = sub nsw i16 12288, %i.ap
  %.sink = select i1 %i.ao, i16 %i.at, i16 %i.as  ; 2 uses
  store i16 %.sink, ptr %i.ar, align 2, !tbaa !10
  %i.au = add nsw i32 %.0110138, 1                ; 2 uses
  %i.av = icmp eq i32 %.1120, %indvars149
  %i.aw = icmp eq i32 %i.aa, 0
  %or.cond = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = sext i32 %.0110138 to i64
  %i.ay = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.ax
  %i.az = or i16 %.sink, 16384
  store i16 %i.az, ptr %i.ay, align 2, !tbaa !10
  br label %.loopexit

bb.m:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.g
  %.1116 = phi i32 [ %.0105141, %bb.j ], [ %.0105141, %bb.k ], [ %.0105141, %bb.h ], [ %.0115134, %bb.g ] ; 3 uses
  %.1111 = phi i32 [ %i.an, %bb.j ], [ %i.au, %bb.k ], [ %.0110138, %bb.h ], [ %.0110138, %bb.g ] ; 2 uses
  %i.ba = icmp sgt i32 %i.aa, 0
  br i1 %i.ba, label %iter.check185, label %bb.o

iter.check185:                                    ; preds = %bb.m
  %i.bb = sext i32 %.1111 to i64                  ; 5 uses
  %6 = add i32 %.1120, 4094
  %smin167 = tail call i32 @llvm.smin.i32(i32 %i.aa, i32 4095)
  %i.bc = add i32 %.0108139, %smin167
  %7 = sub i32 %6, %i.bc                          ; 3 uses
  %i.bd = udiv i32 %7, 4095
  %narrow = add nuw nsw i32 %i.bd, 1
  %i.be = zext nneg i32 %narrow to i64            ; 5 uses
  %min.iters.check167 = icmp ult i32 %7, 12285
  br i1 %min.iters.check167, label %.preheader.preheader, label %vector.main.loop.iter.check168

vector.main.loop.iter.check168:                   ; preds = %iter.check185
  %min.iters.check169 = icmp ult i32 %7, 61425
  br i1 %min.iters.check169, label %vec.epilog.ph189, label %vector.ph170

vector.ph170:                                     ; preds = %vector.main.loop.iter.check168
  %i.bf = and i64 %i.be, 12
  %n.vec171 = and i64 %i.be, 4194288              ; 5 uses
  %i.bg = add nsw i64 %n.vec171, %i.bb            ; 3 uses
  %i.bh = trunc nuw nsw i64 %n.vec171 to i32
  %i.bi = mul i32 %i.bh, -4095
  %i.bj = add i32 %i.aa, %i.bi                    ; 2 uses
  %broadcast.splatinsert172 = insertelement <8 x i32> poison, i32 %i.aa, i64 0
  %broadcast.splat173 = shufflevector <8 x i32> %broadcast.splatinsert172, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction174 = add nsw <8 x i32> %broadcast.splat173, <i32 0, i32 -4095, i32 -8190, i32 -12285, i32 -16380, i32 -20475, i32 -24570, i32 -28665>
  %invariant.gep = getelementptr [2 x i8], ptr %i.a, i64 %i.bb
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph170
  %index176 = phi i64 [ 0, %vector.ph170 ], [ %index.next179, %vector.body175 ] ; 2 uses
  %vec.ind177 = phi <8 x i32> [ %induction174, %vector.ph170 ], [ %vec.ind.next180, %vector.body175 ] ; 3 uses
  %step.add178 = add nsw <8 x i32> %vec.ind177, splat (i32 -32760)
  %i.bk = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %vec.ind177, <8 x i32> splat (i32 4095))
  %i.bl = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %step.add178, <8 x i32> splat (i32 4095))
  %i.bm = trunc nuw nsw <8 x i32> %i.bk to <8 x i16>
  %i.bn = trunc nuw nsw <8 x i32> %i.bl to <8 x i16> ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index176 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <8 x i16> %i.bm, ptr %gep, align 2, !tbaa !10
  store <8 x i16> %i.bn, ptr %i.bo, align 2, !tbaa !10
  %index.next179 = add nuw i64 %index176, 16      ; 2 uses
  %vec.ind.next180 = add nsw <8 x i32> %vec.ind177, splat (i32 -65520)
  %i.bp = icmp eq i64 %index.next179, %n.vec171
  br i1 %i.bp, label %middle.block181, label %vector.body175, !llvm.loop !15

middle.block181:                                  ; preds = %vector.body175
  %ind.escape = add nsw i64 %i.bg, -1
  %i.bq = extractelement <8 x i16> %i.bn, i64 7
  %cmp.n182 = icmp eq i64 %n.vec171, %i.be
  br i1 %cmp.n182, label %.loopexit204, label %vec.epilog.iter.check187

vec.epilog.iter.check187:                         ; preds = %middle.block181
  %min.epilog.iters.check188 = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check188, label %.preheader.preheader, label %vec.epilog.ph189, !prof !22

vec.epilog.ph189:                                 ; preds = %vector.main.loop.iter.check168, %vec.epilog.iter.check187
  %vec.epilog.resume.val183 = phi i64 [ %n.vec171, %vec.epilog.iter.check187 ], [ 0, %vector.main.loop.iter.check168 ]
  %bc.resume.val184 = phi i32 [ %i.bj, %vec.epilog.iter.check187 ], [ %i.aa, %vector.main.loop.iter.check168 ]
  %n.vec190 = and i64 %i.be, 4194300              ; 4 uses
  %i.br = add nsw i64 %n.vec190, %i.bb            ; 3 uses
  %i.bs = trunc nuw nsw i64 %n.vec190 to i32
  %i.bt = mul i32 %i.bs, -4095
  %i.bu = add i32 %i.aa, %i.bt
  %broadcast.splatinsert191 = insertelement <4 x i32> poison, i32 %bc.resume.val184, i64 0
  %broadcast.splat192 = shufflevector <4 x i32> %broadcast.splatinsert191, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction193 = add nsw <4 x i32> %broadcast.splat192, <i32 0, i32 -4095, i32 -8190, i32 -12285>
  %invariant.gep218 = getelementptr [2 x i8], ptr %i.a, i64 %i.bb
  br label %vec.epilog.vector.body194

vec.epilog.vector.body194:                        ; preds = %vec.epilog.vector.body194, %vec.epilog.ph189
  %index195 = phi i64 [ %vec.epilog.resume.val183, %vec.epilog.ph189 ], [ %index.next197, %vec.epilog.vector.body194 ] ; 2 uses
  %vec.ind196 = phi <4 x i32> [ %induction193, %vec.epilog.ph189 ], [ %vec.ind.next198, %vec.epilog.vector.body194 ] ; 2 uses
  %i.bv = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.ind196, <4 x i32> splat (i32 4095))
  %i.bw = trunc nuw nsw <4 x i32> %i.bv to <4 x i16> ; 2 uses
  %gep219 = getelementptr [2 x i8], ptr %invariant.gep218, i64 %index195
  store <4 x i16> %i.bw, ptr %gep219, align 2, !tbaa !10
  %index.next197 = add nuw i64 %index195, 4       ; 2 uses
  %vec.ind.next198 = add nsw <4 x i32> %vec.ind196, splat (i32 -16380)
  %i.bx = icmp eq i64 %index.next197, %n.vec190
  br i1 %i.bx, label %vec.epilog.middle.block199, label %vec.epilog.vector.body194, !llvm.loop !16

vec.epilog.middle.block199:                       ; preds = %vec.epilog.vector.body194
  %ind.escape200 = add nsw i64 %i.br, -1
  %i.by = extractelement <4 x i16> %i.bw, i64 3
  %cmp.n201 = icmp eq i64 %n.vec190, %i.be
  br i1 %cmp.n201, label %.loopexit204, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check185, %vec.epilog.iter.check187, %vec.epilog.middle.block199
  %indvars.iv.ph = phi i64 [ %i.bb, %iter.check185 ], [ %i.bg, %vec.epilog.iter.check187 ], [ %i.br, %vec.epilog.middle.block199 ]
  %.0130.ph = phi i32 [ %i.aa, %iter.check185 ], [ %i.bj, %vec.epilog.iter.check187 ], [ %i.bu, %vec.epilog.middle.block199 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader ] ; 3 uses
  %.0130 = phi i32 [ %i.cc, %.preheader ], [ %.0130.ph, %.preheader.preheader ] ; 3 uses
  %i.bz = tail call i32 @llvm.umin.i32(i32 %.0130, i32 4095)
  %i.ca = trunc nuw nsw i32 %i.bz to i16          ; 2 uses
  %i.cb = getelementptr inbounds [2 x i8], ptr %i.a, i64 %indvars.iv
  store i16 %i.ca, ptr %i.cb, align 2, !tbaa !10
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cc = add nsw i32 %.0130, -4095
  %i.cd = icmp samesign ugt i32 %.0130, 4095
  br i1 %i.cd, label %.preheader, label %.loopexit204, !llvm.loop !17

.loopexit204:                                     ; preds = %.preheader, %vec.epilog.middle.block199, %middle.block181
  %indvars.iv.lcssa = phi i64 [ %ind.escape200, %vec.epilog.middle.block199 ], [ %ind.escape, %middle.block181 ], [ %indvars.iv, %.preheader ]
  %.lcssa = phi i16 [ %i.by, %vec.epilog.middle.block199 ], [ %i.bq, %middle.block181 ], [ %i.ca, %.preheader ]
  %indvars.iv.next.lcssa = phi i64 [ %i.br, %vec.epilog.middle.block199 ], [ %i.bg, %middle.block181 ], [ %indvars.iv.next, %.preheader ]
  %i.ce = trunc nsw i64 %indvars.iv.next.lcssa to i32 ; 2 uses
  %i.cf = icmp eq i32 %.1120, %indvars149
  %or.cond3 = and i1 %i.ab, %i.cf
  br i1 %or.cond3, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.loopexit204
  %i.cg = getelementptr [2 x i8], ptr %2, i64 %indvars.iv.lcssa
  %i.ch = getelementptr i8, ptr %i.cg, i64 -2
  %i.ci = add nuw nsw i16 %.lcssa, 20481
  store i16 %i.ci, ptr %i.ch, align 2, !tbaa !10
  br label %.loopexit

bb.o:                                             ; preds = %.loopexit204, %bb.m
  %.3 = phi i32 [ %i.ce, %.loopexit204 ], [ %.1111, %bb.m ] ; 2 uses
  %i.cj = icmp sgt i32 %i.z, 0
  br i1 %i.cj, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.o
  %i.ck = sext i32 %.3 to i64                     ; 5 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.z, i32 4095)
  %8 = add i32 %.1120, %smin
  %i.cl = sub i32 %5, %8                          ; 3 uses
  %i.cm = udiv i32 %i.cl, 4095
  %narrow205 = add nuw nsw i32 %i.cm, 1
  %i.cn = zext nneg i32 %narrow205 to i64         ; 5 uses
  %min.iters.check = icmp ult i32 %i.cl, 12285
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check154 = icmp ult i32 %i.cl, 61425
  br i1 %min.iters.check154, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.co = and i64 %i.cn, 12
  %n.vec = and i64 %i.cn, 4194288                 ; 5 uses
  %i.cp = add nsw i64 %n.vec, %i.ck               ; 2 uses
  %i.cq = trunc nuw nsw i64 %n.vec to i32
  %i.cr = mul i32 %i.cq, -4095
  %i.cs = add i32 %i.z, %i.cr                     ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i32> %broadcast.splat, <i32 0, i32 -4095, i32 -8190, i32 -12285, i32 -16380, i32 -20475, i32 -24570, i32 -28665>
  %invariant.gep220 = getelementptr [2 x i8], ptr %i.a, i64 %i.ck
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nsw <8 x i32> %vec.ind, splat (i32 -32760)
  %i.ct = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %vec.ind, <8 x i32> splat (i32 4095))
  %i.cu = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %step.add, <8 x i32> splat (i32 4095))
  %i.cv = trunc nuw nsw <8 x i32> %i.ct to <8 x i16>
  %i.cw = trunc nuw nsw <8 x i32> %i.cu to <8 x i16>
  %i.cx = or disjoint <8 x i16> %i.cv, splat (i16 16384)
  %i.cy = or disjoint <8 x i16> %i.cw, splat (i16 16384)
  %gep221 = getelementptr [2 x i8], ptr %invariant.gep220, i64 %index ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %gep221, i64 16
  store <8 x i16> %i.cx, ptr %gep221, align 2, !tbaa !10
  store <8 x i16> %i.cy, ptr %i.cz, align 2, !tbaa !10
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nsw <8 x i32> %vec.ind, splat (i32 -65520)
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cn
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.co, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val155 = phi i32 [ %i.cs, %vec.epilog.iter.check ], [ %i.z, %vector.main.loop.iter.check ]
  %n.vec156 = and i64 %i.cn, 4194300              ; 4 uses
  %i.db = add nsw i64 %n.vec156, %i.ck            ; 2 uses
  %i.dc = trunc nuw nsw i64 %n.vec156 to i32
  %i.dd = mul i32 %i.dc, -4095
  %i.de = add i32 %i.z, %i.dd
  %broadcast.splatinsert157 = insertelement <4 x i32> poison, i32 %bc.resume.val155, i64 0
  %broadcast.splat158 = shufflevector <4 x i32> %broadcast.splatinsert157, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction159 = add nsw <4 x i32> %broadcast.splat158, <i32 0, i32 -4095, i32 -8190, i32 -12285>
  %invariant.gep222 = getelementptr [2 x i8], ptr %i.a, i64 %i.ck
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index160 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next162, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind161 = phi <4 x i32> [ %induction159, %vec.epilog.ph ], [ %vec.ind.next163, %vec.epilog.vector.body ] ; 2 uses
  %i.df = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.ind161, <4 x i32> splat (i32 4095))
  %i.dg = trunc nuw nsw <4 x i32> %i.df to <4 x i16>
  %i.dh = or disjoint <4 x i16> %i.dg, splat (i16 16384)
  %gep223 = getelementptr [2 x i8], ptr %invariant.gep222, i64 %index160
  store <4 x i16> %i.dh, ptr %gep223, align 2, !tbaa !10
  %index.next162 = add nuw i64 %index160, 4       ; 2 uses
  %vec.ind.next163 = add nsw <4 x i32> %vec.ind161, splat (i32 -16380)
  %i.di = icmp eq i64 %index.next162, %n.vec156
  br i1 %i.di, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n164 = icmp eq i64 %n.vec156, %i.cn
  br i1 %cmp.n164, label %.loopexit.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv144.ph = phi i64 [ %i.ck, %iter.check ], [ %i.cp, %vec.epilog.iter.check ], [ %i.db, %vec.epilog.middle.block ]
  %.0113131.ph = phi i32 [ %i.z, %iter.check ], [ %i.cs, %vec.epilog.iter.check ], [ %i.de, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %.lr.ph ], [ %indvars.iv144.ph, %.lr.ph.preheader ] ; 2 uses
  %.0113131 = phi i32 [ %i.dn, %.lr.ph ], [ %.0113131.ph, %.lr.ph.preheader ] ; 3 uses
  %i.dj = tail call i32 @llvm.umin.i32(i32 %.0113131, i32 4095)
  %i.dk = trunc nuw nsw i32 %i.dj to i16
  %i.dl = or disjoint i16 %i.dk, 16384
  %i.dm = getelementptr inbounds [2 x i8], ptr %i.a, i64 %indvars.iv144
  store i16 %i.dl, ptr %i.dm, align 2, !tbaa !10
  %indvars.iv.next145 = add nsw i64 %indvars.iv144, 1 ; 2 uses
  %i.dn = add nsw i32 %.0113131, -4095
  %i.do = icmp samesign ugt i32 %.0113131, 4095
  br i1 %i.do, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !20

.loopexit.loopexit:                               ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next145.lcssa = phi i64 [ %i.db, %vec.epilog.middle.block ], [ %i.cp, %middle.block ], [ %indvars.iv.next145, %.lr.ph ]
  %i.dp = trunc nsw i64 %indvars.iv.next145.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.o, %bb.n, %bb.l
  %.2117 = phi i32 [ %.1116, %bb.n ], [ %.0105141, %bb.l ], [ %.1116, %bb.o ], [ %.1116, %.loopexit.loopexit ]
  %.5 = phi i32 [ %i.ce, %bb.n ], [ %i.au, %bb.l ], [ %.3, %bb.o ], [ %i.dp, %.loopexit.loopexit ]
  %i.dq = add nsw i64 %indvars.iv147, 1           ; 2 uses
  %i.dr = trunc nsw i64 %i.dq to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.e, %.loopexit, %bb.d
  %indvars.iv.next148.pre-phi = phi i64 [ %i.q, %bb.e ], [ %i.dq, %.loopexit ], [ %i.q, %bb.d ] ; 2 uses
  %.2121 = phi i32 [ %i.w, %bb.e ], [ %i.y, %.loopexit ], [ %.0119133, %bb.d ]
  %.3118 = phi i32 [ %.0115134, %bb.e ], [ %.2117, %.loopexit ], [ %.0115134, %bb.d ]
  %.6 = phi i32 [ %.0110138, %bb.e ], [ %.5, %.loopexit ], [ %.0110138, %bb.d ] ; 2 uses
  %.1109 = phi i32 [ %.0108139, %bb.e ], [ %i.dr, %.loopexit ], [ %.0108139, %bb.d ]
  %.2 = phi i32 [ %i.t, %bb.e ], [ %.1107, %.loopexit ], [ %.0105141, %bb.d ] ; 2 uses
  %.not.not = icmp slt i64 %indvars.iv.next148.pre-phi, %i.o
  %indvar.next = add i32 %indvar, 1
  br i1 %.not.not, label %bb.c, label %bb.q, !llvm.loop !21

bb.q:                                             ; preds = %bb.p
  %i.ds = add nsw i32 %.6, -1                     ; 3 uses
  %i.dt = srem i32 %i.ds, 32768
  %i.du = trunc nsw i32 %i.dt to i16
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !10
  %i.dw = sdiv i32 %i.ds, 32768
  %i.dx = trunc i32 %i.dw to i16
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i16 %i.dx, ptr %i.dy, align 2, !tbaa !10
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q
  %.0122 = phi i32 [ %i.ds, %bb.q ], [ 0, %bb.a ]
  ret i32 %.0122
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2147483647) i32 @pl_l2pi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 -4         ; 5 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i16, ptr %i.c, align 2, !tbaa !10   ; 2 uses
  %i.e = icmp sgt i16 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i16 %i.d to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i16, ptr %i.g, align 2, !tbaa !10
  %i.i = sext i16 %i.h to i32
  %i.j = shl nsw i32 %i.i, 15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.l = load i16, ptr %i.k, align 2, !tbaa !10
  %i.m = sext i16 %i.l to i32
  %i.n = add nsw i32 %i.j, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !10
  %i.q = sext i16 %i.p to i32
  %i.r = add nsw i32 %i.q, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0110 = phi i32 [ %i.f, %bb.b ], [ %i.n, %bb.c ] ; 3 uses
  %.098 = phi i32 [ 4, %bb.b ], [ %i.r, %bb.c ]   ; 2 uses
  %i.s = icmp slt i32 %3, 1
  %i.t = icmp slt i32 %.0110, 1
  %or.cond = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %3, %1                       ; 4 uses
  %.not138 = icmp sgt i32 %.098, %.0110
  br i1 %.not138, label %._crit_edge146, label %.lr.ph145.preheader

.lr.ph145.preheader:                              ; preds = %bb.e
  %i.v = sext i32 %.098 to i64
  %i.w = add nuw nsw i32 %.0110, 1
  %wide.trip.count = zext nneg i32 %i.w to i64
  br label %.lr.ph145

.lr.ph145:                                        ; preds = %.lr.ph145.preheader, %bb.s
  %indvars.iv156 = phi i64 [ %i.v, %.lr.ph145.preheader ], [ %indvars.iv.next157, %bb.s ] ; 2 uses
  %.0143 = phi i32 [ 0, %.lr.ph145.preheader ], [ %.2, %bb.s ]
  %.099142 = phi i32 [ 1, %.lr.ph145.preheader ], [ %.3, %bb.s ] ; 15 uses
  %.0102141 = phi i32 [ 1, %.lr.ph145.preheader ], [ %.4, %bb.s ] ; 15 uses
  %.0107139 = phi i32 [ 1, %.lr.ph145.preheader ], [ %.2109, %bb.s ] ; 10 uses
  %.not121 = icmp eq i32 %.0143, 0
  br i1 %.not121, label %bb.f, label %bb.s

bb.f:                                             ; preds = %.lr.ph145
  %i.x = getelementptr inbounds [2 x i8], ptr %i.b, i64 %indvars.iv156 ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !10   ; 4 uses
  %i.z = and i16 %i.y, 4095
  %i.aa = zext nneg i16 %i.z to i32               ; 6 uses
  %i.ab = icmp slt i16 %i.y, -4095
  br i1 %i.ab, label %.loopexit131, label %bb.m

bb.g:                                             ; preds = %bb.m, %bb.m, %bb.m
  %i.ac = add nsw i32 %.0107139, %i.aa            ; 8 uses
  %i.ad = tail call i32 @llvm.smax.i32(i32 %.0107139, i32 %1) ; 4 uses
  %i.ae = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.u) ; 4 uses
  %i.af = xor i32 %i.ad, -1
  %i.ag = add i32 %i.ae, %i.af                    ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, -1
  br i1 %i.ah, label %bb.h, label %.loopexit131

bb.h:                                             ; preds = %bb.g
  %i.ai = sub i32 %i.ae, %i.ad                    ; 2 uses
  %i.aj = add nsw i32 %i.ai, %.0102141            ; 5 uses
  %i.ak = add i32 %i.ag, %.0102141                ; 2 uses
  %i.al = and i16 %i.y, -4096                     ; 2 uses
  %i.am = icmp eq i16 %i.al, 16384
  %.not126135 = icmp sgt i32 %.0102141, %i.ak     ; 2 uses
  br i1 %i.am, label %.preheader, label %.preheader132

.preheader132:                                    ; preds = %bb.h
  br i1 %.not126135, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader132
  %i.an = sext i32 %.0102141 to i64
  %i.ao = shl nsw i64 %i.an, 2
  %scevgep153 = getelementptr i8, ptr %i.a, i64 %i.ao
  %i.ap = zext i32 %i.ai to i64
  %i.aq = shl nuw nsw i64 %i.ap, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep153, i8 0, i64 %i.aq, i1 false), !tbaa !11
  br label %._crit_edge

.preheader:                                       ; preds = %bb.h
  br i1 %.not126135, label %.loopexit131, label %.lr.ph137.preheader

.lr.ph137.preheader:                              ; preds = %.preheader
  %i.ar = sext i32 %.0102141 to i64               ; 3 uses
  %i.as = add i32 %.0102141, %i.ae
  %i.at = sub i32 %i.as, %i.ad
  %i.au = sub i32 %i.ae, %i.ad                    ; 2 uses
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.au, 8
  br i1 %min.iters.check, label %.lr.ph137.preheader170, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph137.preheader
  %n.vec = and i64 %i.av, 4294967288              ; 3 uses
  %i.aw = add nsw i64 %n.vec, %i.ar
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.099142, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.a, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !11
  store <4 x i32> %broadcast.splat, ptr %i.ax, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.av
  br i1 %cmp.n, label %.loopexit131, label %.lr.ph137.preheader170

.lr.ph137.preheader170:                           ; preds = %.lr.ph137.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ar, %.lr.ph137.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph137

.lr.ph137:                                        ; preds = %.lr.ph137.preheader170, %.lr.ph137
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph137 ], [ %indvars.iv.ph, %.lr.ph137.preheader170 ] ; 2 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %.099142, ptr %i.az, align 4, !tbaa !11
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.at, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit131, label %.lr.ph137, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader132
  %i.ba = icmp ne i16 %i.al, 20480
  %.not125 = icmp sgt i32 %i.ac, %i.u
  %or.cond129 = select i1 %i.ba, i1 true, i1 %.not125
  br i1 %or.cond129, label %.loopexit131, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.bb = sext i32 %i.ak to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bb
  store i32 %.099142, ptr %i.bc, align 4, !tbaa !11
  br label %.loopexit131

bb.j:                                             ; preds = %bb.r, %bb.q
  %.1100 = phi i32 [ %i.bp, %bb.q ], [ %i.bq, %bb.r ] ; 2 uses
  %.not122 = icmp sge i32 %.0107139, %1
  %.not123.not = icmp slt i32 %.0107139, %i.u
  %or.cond130 = select i1 %.not122, i1 %.not123.not, i1 false
  br i1 %or.cond130, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = sext i32 %.0102141 to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bd
  store i32 %.1100, ptr %i.be, align 4, !tbaa !11
  %i.bf = add nsw i32 %.0102141, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.2104 = phi i32 [ %i.bf, %bb.k ], [ %.0102141, %bb.j ]
  %i.bg = add nsw i32 %.0107139, 1
  br label %.loopexit131

bb.m:                                             ; preds = %bb.f
  %i.bh = sdiv i16 %i.y, 4096
  switch i16 %i.bh, label %default.unreachable169 [
    i16 0, label %bb.g
    i16 1, label %bb.n
    i16 2, label %bb.o
    i16 3, label %bb.p
    i16 4, label %bb.g
end_hunk_0
