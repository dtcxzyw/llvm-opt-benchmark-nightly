Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/fse_compress?download=true
inline.NumInlined: 48
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@FSE_normalizeCount.rtbTable = internal unnamed_addr constant [8 x i32] [i32 0, i32 473195, i32 504333, i32 520860, i32 550000, i32 700000, i32 750000, i32 830000], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 -44, 1) i64 @FSE_buildCTable_wksp(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nuw i32 1, %3                        ; 12 uses
  %i.b = add i32 %i.a, -1                         ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %.not = icmp eq i32 %3, 0
  %i.d = lshr i32 %i.a, 1                         ; 2 uses
  %i.e = select i1 %.not, i32 1, i32 %i.d
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.f ; 3 uses
  %i.h = lshr i32 %i.a, 3
  %i.i = add nuw nsw i32 %i.h, 3
  %i.j = add nuw nsw i32 %i.i, %i.d               ; 5 uses
  %i.k = add i32 %2, 1                            ; 4 uses
  %i.l = add i32 %2, 2                            ; 2 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.m ; 11 uses
  %i.o = zext nneg i32 %3 to i64
  %i.p = shl nuw i64 1, %i.o
  %i.q = add nuw i64 %i.p, %i.m
  %i.r = shl i64 %i.q, 1
  %i.s = and i64 %i.r, -4
  %i.t = add i64 %i.s, 8
  %i.u = icmp ugt i64 %i.t, %5
  br i1 %i.u, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = trunc i32 %3 to i16
  store i16 %i.v, ptr %0, align 2, !tbaa !9
  %i.w = trunc i32 %2 to i16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.w, ptr %i.x, align 2, !tbaa !9
  store i16 0, ptr %4, align 2, !tbaa !9
  %.not170177 = icmp eq i32 %i.k, 0
  br i1 %.not170177, label %.thread, label %.lr.ph.preheader

.thread:                                          ; preds = %bb.b
  %i.y = trunc i32 %i.a to i16
  %i.z = add i16 %i.y, 1
  %i.aa = zext nneg i32 %i.k to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.aa
  store i16 %i.z, ptr %i.ab, align 2, !tbaa !9
  %i.ac = zext i32 %i.a to i64
  br label %.preheader173

.lr.ph.preheader:                                 ; preds = %bb.b
  %umax = tail call i32 @llvm.umax.i32(i32 %i.l, i32 2)
  %wide.trip.count = zext i32 %umax to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %.0162178 = phi i32 [ %i.b, %.lr.ph.preheader ], [ %.1163, %bb.e ] ; 3 uses
  %6 = getelementptr [2 x i8], ptr %1, i64 %indvars.iv
  %7 = getelementptr i8, ptr %6, i64 -2
  %i.ad = load i16, ptr %7, align 2, !tbaa !9     ; 2 uses
  %i.ae = icmp eq i16 %i.ad, -1
  %i.af = getelementptr [2 x i8], ptr %4, i64 %indvars.iv
  %8 = getelementptr i8, ptr %i.af, i64 -2
  %i.ag = load i16, ptr %8, align 2, !tbaa !9     ; 2 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.ai = add i16 %i.ag, 1
  store i16 %i.ai, ptr %i.ah, align 2, !tbaa !9
  %i.aj = trunc i64 %indvars.iv to i8
  %9 = add i8 %i.aj, -1
  %i.ak = add i32 %.0162178, -1
  %i.al = zext i32 %.0162178 to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.al
  store i8 %9, ptr %i.am, align 1, !tbaa !10
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.an = add i16 %i.ag, %i.ad
  store i16 %i.an, ptr %i.ah, align 2, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1163 = phi i32 [ %i.ak, %bb.c ], [ %.0162178, %bb.d ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.e
  %i.ao = trunc i32 %i.a to i16
  %i.ap = add i16 %i.ao, 1
  %i.aq = zext i32 %i.k to i64                    ; 3 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.aq
  store i16 %i.ap, ptr %i.ar, align 2, !tbaa !9
  %i.as = icmp eq i32 %.1163, %i.b
  br i1 %i.as, label %bb.f, label %.lr.ph188

bb.f:                                             ; preds = %._crit_edge
  %i.at = zext i32 %i.a to i64                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.at
  br label %.lr.ph197

.preheader173:                                    ; preds = %._crit_edge192, %.thread
  %i.av = phi i64 [ %i.ac, %.thread ], [ %i.at, %._crit_edge192 ] ; 2 uses
  %i.aw = zext nneg i32 %i.j to i64
  %i.ax = zext nneg i32 %i.b to i64               ; 3 uses
  %i.ay = shl nuw i32 %i.j, 1
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.av
  br label %.preheader172

.lr.ph197:                                        ; preds = %bb.f, %._crit_edge192
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %._crit_edge192 ], [ 0, %bb.f ] ; 2 uses
  %.0159194 = phi i64 [ %i.bv, %._crit_edge192 ], [ 0, %bb.f ] ; 4 uses
  %.0160193 = phi i64 [ %i.bu, %._crit_edge192 ], [ 0, %bb.f ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv217
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !9  ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 %.0160193 ; 3 uses
  store i64 %.0159194, ptr %i.bd, align 1, !tbaa !13
  %i.be = icmp sgt i16 %i.bc, 8
  br i1 %i.be, label %.lr.ph191.preheader, label %._crit_edge192

.lr.ph191.preheader:                              ; preds = %.lr.ph197
  %i.bf = zext nneg i16 %i.bc to i64              ; 2 uses
  %i.bg = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 16)
  %i.bh = add nsw i64 %i.bg, -9                   ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bh, 24
  br i1 %min.iters.check, label %.lr.ph191.preheader240, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph191.preheader
  %n.vec = and i64 %i.bj, 4611686018427387900     ; 3 uses
  %i.bk = shl i64 %n.vec, 3
  %i.bl = or disjoint i64 %i.bk, 8
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.0159194, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl nuw i64 %index, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store <2 x i64> %broadcast.splat, ptr %i.bo, align 1, !tbaa !13
  store <2 x i64> %broadcast.splat, ptr %i.bp, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %._crit_edge192, label %.lr.ph191.preheader240

.lr.ph191.preheader240:                           ; preds = %.lr.ph191.preheader, %middle.block
  %indvars.iv214.ph = phi i64 [ 8, %.lr.ph191.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph191

.lr.ph191:                                        ; preds = %.lr.ph191.preheader240, %.lr.ph191
  %indvars.iv214 = phi i64 [ %indvars.iv.next215, %.lr.ph191 ], [ %indvars.iv214.ph, %.lr.ph191.preheader240 ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv214
  store i64 %.0159194, ptr %i.br, align 1, !tbaa !13
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 8 ; 2 uses
  %i.bs = icmp samesign ult i64 %indvars.iv.next215, %i.bf
  br i1 %i.bs, label %.lr.ph191, label %._crit_edge192, !llvm.loop !20

._crit_edge192:                                   ; preds = %.lr.ph191, %middle.block, %.lr.ph197
  %i.bt = sext i16 %i.bc to i64
  %i.bu = add i64 %.0160193, %i.bt
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %i.bv = add i64 %.0159194, 72340172838076673
  %exitcond221.not = icmp eq i64 %indvars.iv.next218, %i.aq
  br i1 %exitcond221.not, label %.preheader173, label %.lr.ph197, !llvm.loop !21

.preheader172:                                    ; preds = %.preheader173, %.preheader172
  %.0155200 = phi i64 [ 0, %.preheader173 ], [ %i.ch, %.preheader172 ] ; 2 uses
  %.0156199 = phi i64 [ 0, %.preheader173 ], [ %i.cg, %.preheader172 ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.0155200 ; 2 uses
  %i.bx = and i64 %.0156199, %i.ax
  %i.by = load i8, ptr %i.bw, align 1, !tbaa !10
  %i.bz = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bx
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !10
  %i.ca = add nuw nsw i64 %.0156199, %i.aw
  %i.cb = and i64 %i.ca, %i.ax
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cb
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !10
  %i.cf = add nuw nsw i64 %.0156199, %i.az
  %i.cg = and i64 %i.cf, %i.ax
  %i.ch = add nuw nsw i64 %.0155200, 2            ; 2 uses
  %i.ci = icmp samesign ult i64 %i.ch, %i.av
  br i1 %i.ci, label %.preheader172, label %.loopexit174, !llvm.loop !22

.lr.ph188:                                        ; preds = %._crit_edge, %._crit_edge184
  %indvars.iv209 = phi i64 [ %indvars.iv.next210, %._crit_edge184 ], [ 0, %._crit_edge ] ; 3 uses
  %.0152186 = phi i32 [ %.1153.lcssa, %._crit_edge184 ], [ 0, %._crit_edge ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv209
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !9  ; 5 uses
  %i.cl = icmp sgt i16 %i.ck, 0
  br i1 %i.cl, label %.lr.ph183, label %._crit_edge184

.lr.ph183:                                        ; preds = %.lr.ph188
  %i.cm = trunc i64 %indvars.iv209 to i8          ; 3 uses
  %i.cn = icmp eq i16 %i.ck, 1
  br i1 %i.cn, label %.epil.preheader, label %.lr.ph183.new

.lr.ph183.new:                                    ; preds = %.lr.ph183
  %i.co = and i16 %i.ck, 32766
  %unroll_iter = zext nneg i16 %i.co to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph183.new
  %.1153180 = phi i32 [ %.0152186, %.lr.ph183.new ], [ %.2.1, %bb.k ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph183.new ], [ %niter.next.1, %bb.k ]
  %i.cp = zext nneg i32 %.1153180 to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cp
  store i8 %i.cm, ptr %i.cq, align 1, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.1153.pn = phi i32 [ %.1153180, %bb.g ], [ %.2, %bb.h ]
  %.pn = add nuw i32 %.1153.pn, %i.j
  %.2 = and i32 %.pn, %i.b                        ; 4 uses
  %i.cr = icmp ugt i32 %.2, %.1163
  br i1 %i.cr, label %bb.h, label %bb.i, !llvm.loop !23

bb.i:                                             ; preds = %bb.h
  %i.cs = zext nneg i32 %.2 to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cs
  store i8 %i.cm, ptr %i.ct, align 1, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.1153.pn.1 = phi i32 [ %.2, %bb.i ], [ %.2.1, %bb.j ]
  %.pn.1 = add nuw i32 %.1153.pn.1, %i.j
  %.2.1 = and i32 %.pn.1, %i.b                    ; 5 uses
  %i.cu = icmp ugt i32 %.2.1, %.1163
  br i1 %i.cu, label %bb.j, label %bb.k, !llvm.loop !23

bb.k:                                             ; preds = %bb.j
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge184.loopexit.unr-lcssa, label %bb.g, !llvm.loop !24

._crit_edge184.loopexit.unr-lcssa:                ; preds = %bb.k
  %i.cv = and i16 %i.ck, 1
  %lcmp.mod.not = icmp eq i16 %i.cv, 0
  br i1 %lcmp.mod.not, label %._crit_edge184, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge184.loopexit.unr-lcssa, %.lr.ph183
  %.1153180.epil.init = phi i32 [ %.0152186, %.lr.ph183 ], [ %.2.1, %._crit_edge184.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod243 = trunc i16 %i.ck to i1
  tail call void @llvm.assume(i1 %lcmp.mod243)
  %i.cw = zext nneg i32 %.1153180.epil.init to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cw
  store i8 %i.cm, ptr %i.cx, align 1, !tbaa !10
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %.1153.pn.epil = phi i32 [ %.1153180.epil.init, %.epil.preheader ], [ %.2.epil, %bb.l ]
  %.pn.epil = add nuw i32 %.1153.pn.epil, %i.j
  %.2.epil = and i32 %.pn.epil, %i.b              ; 3 uses
  %i.cy = icmp ugt i32 %.2.epil, %.1163
  br i1 %i.cy, label %bb.l, label %._crit_edge184, !llvm.loop !23

._crit_edge184:                                   ; preds = %._crit_edge184.loopexit.unr-lcssa, %bb.l, %.lr.ph188
  %.1153.lcssa = phi i32 [ %.0152186, %.lr.ph188 ], [ %.2.1, %._crit_edge184.loopexit.unr-lcssa ], [ %.2.epil, %bb.l ]
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %exitcond213.not = icmp eq i64 %indvars.iv.next210, %i.aq
  br i1 %exitcond213.not, label %.loopexit174, label %.lr.ph188, !llvm.loop !25

.loopexit174:                                     ; preds = %._crit_edge184, %.preheader172
  %wide.trip.count225 = zext i32 %i.a to i64      ; 2 uses
end_hunk_0
