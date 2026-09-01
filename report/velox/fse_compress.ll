Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/fse_compress?download=true
inline.NumInlined: 48
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@FSE_normalizeCount.rtbTable = internal unnamed_addr constant [8 x i32] [i32 0, i32 473195, i32 504333, i32 520860, i32 550000, i32 700000, i32 750000, i32 830000], align 16
@BIT_mask = internal unnamed_addr constant [32 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535, i32 131071, i32 262143, i32 524287, i32 1048575, i32 2097151, i32 4194303, i32 8388607, i32 16777215, i32 33554431, i32 67108863, i32 134217727, i32 268435455, i32 536870911, i32 1073741823, i32 2147483647], align 16

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
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.m ; 17 uses
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
  store i16 %i.v, ptr %0, align 2, !tbaa !8
  %i.w = trunc i32 %2 to i16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.w, ptr %i.x, align 2, !tbaa !8
  store i16 0, ptr %4, align 2, !tbaa !8
  %.not170177 = icmp eq i32 %i.k, 0
  br i1 %.not170177, label %.thread, label %.lr.ph.preheader

.thread:                                          ; preds = %bb.b
  %i.y = trunc i32 %i.a to i16
  %i.z = add i16 %i.y, 1
  %i.aa = zext nneg i32 %i.k to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.aa
  store i16 %i.z, ptr %i.ab, align 2, !tbaa !8
  %i.ac = zext i32 %i.a to i64
  br label %.preheader173

.lr.ph.preheader:                                 ; preds = %bb.b
  %umax = tail call i32 @llvm.umax.i32(i32 %i.l, i32 2)
  %wide.trip.count = zext i32 %umax to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.0162178 = phi i32 [ %i.b, %.lr.ph.preheader ], [ %.1163, %bb.e ] ; 3 uses
  %i.ad = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !8  ; 2 uses
  %i.ag = icmp eq i16 %i.af, -1
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ad
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !8  ; 2 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.ak = add i16 %i.ai, 1
  store i16 %i.ak, ptr %i.aj, align 2, !tbaa !8
  %i.al = trunc i64 %i.ad to i8
  %i.am = add i32 %.0162178, -1
  %i.an = zext i32 %.0162178 to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.an
  store i8 %i.al, ptr %i.ao, align 1, !tbaa !10
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ap = add i16 %i.ai, %i.af
  store i16 %i.ap, ptr %i.aj, align 2, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1163 = phi i32 [ %i.am, %bb.c ], [ %.0162178, %bb.d ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.e
  %i.aq = trunc i32 %i.a to i16
  %i.ar = add i16 %i.aq, 1
  %i.as = zext i32 %i.k to i64                    ; 3 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.as
  store i16 %i.ar, ptr %i.at, align 2, !tbaa !8
  %i.au = icmp eq i32 %.1163, %i.b
  br i1 %i.au, label %bb.f, label %.lr.ph188

bb.f:                                             ; preds = %._crit_edge
  %i.av = zext i32 %i.a to i64                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.av
  br label %.lr.ph197

.preheader173:                                    ; preds = %._crit_edge192, %.thread
  %i.ax = phi i64 [ %i.ac, %.thread ], [ %i.av, %._crit_edge192 ] ; 4 uses
  %i.ay = zext nneg i32 %i.j to i64               ; 3 uses
  %i.az = zext i32 %i.b to i64                    ; 7 uses
  %i.ba = shl nuw i32 %i.j, 1
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %6 = add nsw i64 %i.ax, -1                      ; 2 uses
  %7 = lshr i64 %6, 1                             ; 2 uses
  %8 = add nuw nsw i64 %7, 1                      ; 2 uses
  %9 = icmp eq i64 %7, 0
  br i1 %9, label %.preheader172.epil.preheader, label %.preheader173.new

.preheader173.new:                                ; preds = %.preheader173
  %unroll_iter247 = and i64 %8, 9223372036854775806
  %10 = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ax
  %11 = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ax
  br label %.preheader172

.lr.ph197:                                        ; preds = %bb.f, %._crit_edge192
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %._crit_edge192 ], [ 0, %bb.f ] ; 2 uses
  %.0159194 = phi i64 [ %i.bw, %._crit_edge192 ], [ 0, %bb.f ] ; 4 uses
  %.0160193 = phi i64 [ %i.bv, %._crit_edge192 ], [ 0, %bb.f ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv217
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !8  ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.0160193 ; 3 uses
  store i64 %.0159194, ptr %i.be, align 1, !tbaa !13
  %i.bf = icmp sgt i16 %i.bd, 8
  br i1 %i.bf, label %.lr.ph191.preheader, label %._crit_edge192

.lr.ph191.preheader:                              ; preds = %.lr.ph197
  %i.bg = zext nneg i16 %i.bd to i64              ; 2 uses
  %i.bh = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 16)
  %i.bi = add nsw i64 %i.bh, -9                   ; 2 uses
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bi, 24
  br i1 %min.iters.check, label %.lr.ph191.preheader240, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph191.preheader
  %n.vec = and i64 %i.bk, 4611686018427387900     ; 3 uses
  %i.bl = shl i64 %n.vec, 3
  %i.bm = or disjoint i64 %i.bl, 8
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.0159194, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = shl nuw i64 %index, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store <2 x i64> %broadcast.splat, ptr %i.bp, align 1, !tbaa !13
  store <2 x i64> %broadcast.splat, ptr %i.bq, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %._crit_edge192, label %.lr.ph191.preheader240

.lr.ph191.preheader240:                           ; preds = %.lr.ph191.preheader, %middle.block
  %indvars.iv214.ph = phi i64 [ 8, %.lr.ph191.preheader ], [ %i.bm, %middle.block ]
  br label %.lr.ph191

.lr.ph191:                                        ; preds = %.lr.ph191.preheader240, %.lr.ph191
  %indvars.iv214 = phi i64 [ %indvars.iv.next215, %.lr.ph191 ], [ %indvars.iv214.ph, %.lr.ph191.preheader240 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 %indvars.iv214
  store i64 %.0159194, ptr %i.bs, align 1, !tbaa !13
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 8 ; 2 uses
  %i.bt = icmp samesign ult i64 %indvars.iv.next215, %i.bg
  br i1 %i.bt, label %.lr.ph191, label %._crit_edge192, !llvm.loop !18

._crit_edge192:                                   ; preds = %.lr.ph191, %middle.block, %.lr.ph197
  %i.bu = sext i16 %i.bd to i64
  %i.bv = add i64 %.0160193, %i.bu
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %i.bw = add i64 %.0159194, 72340172838076673
  %exitcond221.not = icmp eq i64 %indvars.iv.next218, %i.as
  br i1 %exitcond221.not, label %.preheader173, label %.lr.ph197, !llvm.loop !19

.preheader172:                                    ; preds = %.preheader172, %.preheader173.new
  %.0155200 = phi i64 [ 0, %.preheader173.new ], [ %23, %.preheader172 ] ; 3 uses
  %.0155200.a = phi i64 [ 0, %.preheader173.new ], [ %i.ch, %.preheader172 ] ; 3 uses
  %.0156199 = phi i64 [ 0, %.preheader173.new ], [ %i.ci, %.preheader172 ]
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 %.0155200 ; 2 uses
  %13 = and i64 %.0155200.a, %i.az
  %14 = load i8, ptr %12, align 1, !tbaa !10
  %15 = getelementptr inbounds nuw i8, ptr %i.n, i64 %13
  store i8 %14, ptr %15, align 1, !tbaa !10
  %16 = add nuw nsw i64 %.0155200.a, %i.ay
  %17 = and i64 %16, %i.az
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.n, i64 %17
  store i8 %19, ptr %i.bx, align 1, !tbaa !10
  %20 = add nuw nsw i64 %.0155200.a, %i.bb
  %i.by = and i64 %20, %i.az                      ; 3 uses
  %21 = getelementptr inbounds nuw i8, ptr %11, i64 %.0155200 ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 2
  %i.bz = load i8, ptr %22, align 1, !tbaa !10
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.by
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !10
  %i.cb = add nuw nsw i64 %i.by, %i.ay
  %i.cc = and i64 %i.cb, %i.az
  %i.cd = getelementptr inbounds nuw i8, ptr %21, i64 3
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !10
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cc
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !10
  %i.cg = add nuw nsw i64 %i.by, %i.bb
  %i.ch = and i64 %i.cg, %i.az                    ; 2 uses
  %23 = add nuw nsw i64 %.0155200, 4              ; 2 uses
  %i.ci = add nuw nsw i64 %.0156199, 2            ; 2 uses
  %niter248.ncmp.1.not = icmp eq i64 %i.ci, %unroll_iter247
  br i1 %niter248.ncmp.1.not, label %.loopexit174.loopexit.unr-lcssa, label %.preheader172, !llvm.loop !20

.lr.ph188:                                        ; preds = %._crit_edge, %._crit_edge184
  %indvars.iv209 = phi i64 [ %indvars.iv.next210, %._crit_edge184 ], [ 0, %._crit_edge ] ; 3 uses
  %.0152186 = phi i32 [ %.1153.lcssa, %._crit_edge184 ], [ 0, %._crit_edge ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv209
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !8  ; 5 uses
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
  %i.cp = zext i32 %.1153180 to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cp
  store i8 %i.cm, ptr %i.cq, align 1, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.1153.pn = phi i32 [ %.1153180, %bb.g ], [ %.2, %bb.h ]
  %.pn = add i32 %.1153.pn, %i.j
  %.2 = and i32 %.pn, %i.b                        ; 4 uses
  %i.cr = icmp ugt i32 %.2, %.1163
  br i1 %i.cr, label %bb.h, label %bb.i, !llvm.loop !21

bb.i:                                             ; preds = %bb.h
  %i.cs = zext i32 %.2 to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cs
  store i8 %i.cm, ptr %i.ct, align 1, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.1153.pn.1 = phi i32 [ %.2, %bb.i ], [ %.2.1, %bb.j ]
  %.pn.1 = add i32 %.1153.pn.1, %i.j
  %.2.1 = and i32 %.pn.1, %i.b                    ; 5 uses
  %i.cu = icmp ugt i32 %.2.1, %.1163
  br i1 %i.cu, label %bb.j, label %bb.k, !llvm.loop !21

bb.k:                                             ; preds = %bb.j
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge184.loopexit.unr-lcssa, label %bb.g, !llvm.loop !22

._crit_edge184.loopexit.unr-lcssa:                ; preds = %bb.k
  %i.cv = and i16 %i.ck, 1
  %lcmp.mod.not = icmp eq i16 %i.cv, 0
  br i1 %lcmp.mod.not, label %._crit_edge184, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge184.loopexit.unr-lcssa, %.lr.ph183
  %.1153180.epil.init = phi i32 [ %.0152186, %.lr.ph183 ], [ %.2.1, %._crit_edge184.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod243 = trunc i16 %i.ck to i1
  tail call void @llvm.assume(i1 %lcmp.mod243)
  %i.cw = zext i32 %.1153180.epil.init to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cw
  store i8 %i.cm, ptr %i.cx, align 1, !tbaa !10
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %.1153.pn.epil = phi i32 [ %.1153180.epil.init, %.epil.preheader ], [ %.2.epil, %bb.l ]
  %.pn.epil = add i32 %.1153.pn.epil, %i.j
  %.2.epil = and i32 %.pn.epil, %i.b              ; 3 uses
  %i.cy = icmp ugt i32 %.2.epil, %.1163
  br i1 %i.cy, label %bb.l, label %._crit_edge184, !llvm.loop !21

._crit_edge184:                                   ; preds = %._crit_edge184.loopexit.unr-lcssa, %bb.l, %.lr.ph188
  %.1153.lcssa = phi i32 [ %.0152186, %.lr.ph188 ], [ %.2.1, %._crit_edge184.loopexit.unr-lcssa ], [ %.2.epil, %bb.l ]
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %exitcond213.not = icmp eq i64 %indvars.iv.next210, %i.as
  br i1 %exitcond213.not, label %.loopexit174, label %.lr.ph188, !llvm.loop !23

.loopexit174.loopexit.unr-lcssa:                  ; preds = %.preheader172
  %24 = and i64 %6, 2
  %lcmp.mod245.not.not = icmp eq i64 %24, 0
  br i1 %lcmp.mod245.not.not, label %.preheader172.epil.preheader, label %.loopexit174

.preheader172.epil.preheader:                     ; preds = %.loopexit174.loopexit.unr-lcssa, %.preheader173
  %.0155200.epil.init = phi i64 [ 0, %.preheader173 ], [ %23, %.loopexit174.loopexit.unr-lcssa ]
  %.0156199.epil.init = phi i64 [ 0, %.preheader173 ], [ %i.ch, %.loopexit174.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod246 = trunc i64 %8 to i1
  tail call void @llvm.assume(i1 %lcmp.mod246)
  %25 = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ax
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 %.0155200.epil.init ; 2 uses
  %27 = and i64 %.0156199.epil.init, %i.az
  %28 = load i8, ptr %26, align 1, !tbaa !10
  %29 = getelementptr inbounds nuw i8, ptr %i.n, i64 %27
  store i8 %28, ptr %29, align 1, !tbaa !10
  %30 = add nuw nsw i64 %.0156199.epil.init, %i.ay
  %31 = and i64 %30, %i.az
  %32 = getelementptr inbounds nuw i8, ptr %26, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !10
  %34 = getelementptr inbounds nuw i8, ptr %i.n, i64 %31
  store i8 %33, ptr %34, align 1, !tbaa !10
  br label %.loopexit174

.loopexit174:                                     ; preds = %._crit_edge184, %.preheader172.epil.preheader, %.loopexit174.loopexit.unr-lcssa
  %wide.trip.count225 = zext i32 %i.a to i64      ; 2 uses
  %xtraiter245 = and i64 %wide.trip.count225, 1
  %i.cz = icmp eq i32 %3, 0
  br i1 %i.cz, label %.epil.preheader244, label %.loopexit174.new

.loopexit174.new:                                 ; preds = %.loopexit174
  %unroll_iter248 = and i64 %wide.trip.count225, 4294967294
  br label %bb.m

.preheader.unr-lcssa:                             ; preds = %bb.m
  %lcmp.mod246.not = icmp eq i64 %xtraiter245, 0
  br i1 %lcmp.mod246.not, label %.preheader, label %.epil.preheader244

.epil.preheader244:                               ; preds = %.preheader.unr-lcssa, %.loopexit174
  %indvars.iv222.epil.init = phi i64 [ 0, %.loopexit174 ], [ %indvars.iv.next223.1, %.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod247 = icmp eq i32 %3, 0
  tail call void @llvm.assume(i1 %lcmp.mod247)
  %i.da = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv222.epil.init
  %i.db = load i8, ptr %i.da, align 1, !tbaa !10
  %i.dc = trunc i64 %indvars.iv222.epil.init to i16
  %i.dd = add i16 %i.dc, 1
  %i.de = zext i8 %i.db to i64
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.de ; 2 uses
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !8  ; 2 uses
  %i.dh = add i16 %i.dg, 1
  store i16 %i.dh, ptr %i.df, align 2, !tbaa !8
  %i.di = zext i16 %i.dg to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.di
  store i16 %i.dd, ptr %i.dj, align 2, !tbaa !8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.unr-lcssa, %.epil.preheader244
  %i.dk = shl i32 %3, 16                          ; 2 uses
  %i.dl = sub i32 %i.dk, %i.a
  %i.dm = add i32 %i.dk, 65536
  %i.dn = sub i32 %i.dm, %i.a
  %umax230 = tail call i32 @llvm.umax.i32(i32 %i.k, i32 1)
  %wide.trip.count231 = zext i32 %umax230 to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.m, %.loopexit174.new
  %indvars.iv222 = phi i64 [ 0, %.loopexit174.new ], [ %indvars.iv.next223.1, %bb.m ] ; 4 uses
  %niter249 = phi i64 [ 0, %.loopexit174.new ], [ %niter249.next.1, %bb.m ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv222
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !10
  %i.dq = trunc i64 %indvars.iv222 to i32
  %i.dr = add i32 %i.a, %i.dq
  %i.ds = trunc i32 %i.dr to i16
  %i.dt = zext i8 %i.dp to i64
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.dt ; 2 uses
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !8  ; 2 uses
  %i.dw = add i16 %i.dv, 1
  store i16 %i.dw, ptr %i.du, align 2, !tbaa !8
  %i.dx = zext i16 %i.dv to i64
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.dx
  store i16 %i.ds, ptr %i.dy, align 2, !tbaa !8
  %indvars.iv.next223 = or disjoint i64 %indvars.iv222, 1 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv.next223
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !10
  %i.eb = trunc i64 %indvars.iv.next223 to i32
  %i.ec = add i32 %i.a, %i.eb
  %i.ed = trunc i32 %i.ec to i16
  %i.ee = zext i8 %i.ea to i64
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ee ; 2 uses
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !8  ; 2 uses
  %i.eh = add i16 %i.eg, 1
  store i16 %i.eh, ptr %i.ef, align 2, !tbaa !8
  %i.ei = zext i16 %i.eg to i64
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ei
  store i16 %i.ed, ptr %i.ej, align 2, !tbaa !8
  %indvars.iv.next223.1 = add nuw nsw i64 %indvars.iv222, 2 ; 2 uses
  %niter249.next.1 = add i64 %niter249, 2         ; 2 uses
  %niter249.ncmp.1 = icmp eq i64 %niter249.next.1, %unroll_iter248
  br i1 %niter249.ncmp.1, label %.preheader.unr-lcssa, label %bb.m, !llvm.loop !24

bb.n:                                             ; preds = %.preheader, %bb.r
  %indvars.iv227 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next228, %bb.r ] ; 5 uses
  %.0148202 = phi i32 [ 0, %.preheader ], [ %.1, %bb.r ] ; 5 uses
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv227
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !8  ; 2 uses
  switch i16 %i.el, label %bb.q [
    i16 0, label %bb.o
    i16 -1, label %bb.p
    i16 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv227
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store i32 %i.dn, ptr %i.en, align 4, !tbaa !25
  br label %bb.r

bb.p:                                             ; preds = %bb.n, %bb.n
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv227 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  store i32 %i.dl, ptr %i.ep, align 4, !tbaa !25
  %i.eq = add i32 %.0148202, -1
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !27
  %i.er = add i32 %.0148202, 1
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.es = sext i16 %i.el to i32                   ; 4 uses
  %i.et = add nsw i32 %i.es, -1
  %i.eu = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.et, i1 true)
  %i.ev = xor i32 %i.eu, 31
  %i.ew = sub i32 %3, %i.ev                       ; 2 uses
  %i.ex = shl i32 %i.es, %i.ew
  %i.ey = shl i32 %i.ew, 16
  %i.ez = sub i32 %i.ey, %i.ex
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv227 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  store i32 %i.ez, ptr %i.fb, align 4, !tbaa !25
  %i.fc = sub i32 %.0148202, %i.es
  store i32 %i.fc, ptr %i.fa, align 4, !tbaa !27
  %i.fd = add i32 %.0148202, %i.es
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.q
  %.1 = phi i32 [ %i.fd, %bb.q ], [ %.0148202, %bb.o ], [ %i.er, %bb.p ]
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond232 = icmp eq i64 %indvars.iv.next228, %wide.trip.count231
  br i1 %exitcond232, label %.loopexit, label %bb.n, !llvm.loop !28

.loopexit:                                        ; preds = %bb.r, %bb.a
  %.0 = phi i64 [ -44, %bb.a ], [ 0, %bb.r ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i64 3, 536870915) i64 @FSE_NCountWriteBound(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = add i32 %0, 1
  %i.b = mul i32 %i.a, %1
  %i.c = add i32 %i.b, 6
  %i.d = lshr i32 %i.c, 3
  %i.e = add nuw nsw i32 %i.d, 3
  %.not = icmp eq i32 %0, 0
  %narrow = select i1 %.not, i32 512, i32 %i.e
  %i.f = zext nneg i32 %narrow to i64
  ret i64 %i.f
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @FSE_writeNCount(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i32 %4, 12
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %4, 5
  br i1 %i.b, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b
  %i.c = add i32 %3, 1
  %i.d = mul i32 %i.c, %4
  %i.e = add i32 %i.d, 6
  %i.f = lshr i32 %i.e, 3
  %i.g = add nuw nsw i32 %i.f, 3
  %.not.i = icmp eq i32 %3, 0
  %narrow.i = select i1 %.not.i, i32 512, i32 %i.g
  %i.h = zext nneg i32 %narrow.i to i64
  %i.i = icmp uge i64 %1, %i.h
  %. = zext i1 %i.i to i32
  %i.j = tail call fastcc i64 @FSE_writeNCount_generic(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %.)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.0 = phi i64 [ -1, %bb.b ], [ -44, %bb.a ], [ %i.j, %.sink.split ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @FSE_writeNCount_generic(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef range(i32 5, 13) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.b = add i32 %3, 1                            ; 5 uses
  %.not247 = icmp eq i32 %i.b, 0
  br i1 %.not247, label %.thread, label %.lr.ph237

.lr.ph237:                                        ; preds = %bb.a
  %i.c = add nsw i32 %4, -5
  %i.d = shl nuw nsw i32 1, %4                    ; 2 uses
  %i.e = or disjoint i32 %i.d, 1
  %i.f = add nuw nsw i32 %4, 1
  %.not160 = icmp eq i32 %5, 0                    ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 -2 ; 3 uses
  %i.h = zext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph237, %bb.i
  %.0116235 = phi i1 [ true, %.lr.ph237 ], [ %i.bk, %bb.i ]
  %.0117234 = phi i32 [ 0, %.lr.ph237 ], [ %i.at, %bb.i ] ; 6 uses
  %.0119233 = phi i32 [ 4, %.lr.ph237 ], [ %.5, %bb.i ] ; 6 uses
  %.0122232 = phi i32 [ %i.c, %.lr.ph237 ], [ %.6128, %bb.i ] ; 6 uses
  %.0129231 = phi i32 [ %i.d, %.lr.ph237 ], [ %.1130.lcssa, %bb.i ] ; 5 uses
  %.0132230 = phi i32 [ %i.e, %.lr.ph237 ], [ %i.bc, %bb.i ] ; 4 uses
  %.0133229 = phi i32 [ %i.f, %.lr.ph237 ], [ %.1134.lcssa, %bb.i ] ; 3 uses
  %.0136228 = phi ptr [ %0, %.lr.ph237 ], [ %.5141, %bb.i ] ; 6 uses
  br i1 %.0116235, label %.thread178, label %.preheader190

.preheader190:                                    ; preds = %bb.b
  %i.i = icmp ult i32 %.0117234, %i.b
  br i1 %i.i, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader190
  %i.j = zext i32 %.0117234 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ %i.j, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  %i.l = load i16, ptr %i.k, align 2, !tbaa !8
  %.not = icmp eq i16 %i.l, 0
  br i1 %.not, label %bb.c, label %.critedge.loopexit

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %exitcond.not, label %.critedge._crit_edge, label %.lr.ph, !llvm.loop !29

.critedge.loopexit:                               ; preds = %.lr.ph
  %i.m = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader190
  %.1118.lcssa = phi i32 [ %.0117234, %.preheader190 ], [ %i.m, %.critedge.loopexit ] ; 9 uses
  %i.n = icmp eq i32 %.1118.lcssa, %i.b
  br i1 %i.n, label %.critedge._crit_edge, label %.preheader189

.preheader189:                                    ; preds = %.critedge
  %i.o = add i32 %.0117234, 24                    ; 3 uses
  %.not157206 = icmp ult i32 %.1118.lcssa, %i.o
  br i1 %.not157206, label %.preheader188, label %.lr.ph209

.lr.ph209:                                        ; preds = %.preheader189
  %i.p = shl i32 65535, %.0119233                 ; 2 uses
  br i1 %.not160, label %.lr.ph209.split, label %.lr.ph209.split.us

.lr.ph209.split.us:                               ; preds = %.lr.ph209, %.lr.ph209.split.us
  %i.q = phi i32 [ %i.v, %.lr.ph209.split.us ], [ %i.o, %.lr.ph209 ] ; 2 uses
  %.1123208.us = phi i32 [ %i.u, %.lr.ph209.split.us ], [ %.0122232, %.lr.ph209 ]
  %.1137207.us = phi ptr [ %i.t, %.lr.ph209.split.us ], [ %.0136228, %.lr.ph209 ] ; 2 uses
  %i.r = add i32 %.1123208.us, %i.p               ; 2 uses
  %i.s = trunc i32 %i.r to i16
  store i16 %i.s, ptr %.1137207.us, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %.1137207.us, i64 2 ; 2 uses
  %i.u = lshr i32 %i.r, 16                        ; 2 uses
  %i.v = add i32 %i.q, 24                         ; 2 uses
  %.not157.us = icmp ult i32 %.1118.lcssa, %i.v
  br i1 %.not157.us, label %.preheader188, label %.lr.ph209.split.us, !llvm.loop !30

.preheader188:                                    ; preds = %.lr.ph209.split.us, %bb.d, %.preheader189
  %.1137.lcssa = phi ptr [ %.0136228, %.preheader189 ], [ %i.ab, %bb.d ], [ %i.t, %.lr.ph209.split.us ] ; 4 uses
  %.1123.lcssa = phi i32 [ %.0122232, %.preheader189 ], [ %i.ac, %bb.d ], [ %i.u, %.lr.ph209.split.us ] ; 2 uses
  %.0114.lcssa = phi i32 [ %.0117234, %.preheader189 ], [ %i.x, %bb.d ], [ %i.q, %.lr.ph209.split.us ] ; 2 uses
  %i.w = add i32 %.0114.lcssa, 3                  ; 2 uses
  %.not158215 = icmp ult i32 %.1118.lcssa, %i.w
  br i1 %.not158215, label %._crit_edge, label %.lr.ph218

end_hunk_0
