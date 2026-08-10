inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.HeapElem = type { %union.anon, i32 }
%union.anon = type { i64 }

@.str = private unnamed_addr constant [64 x i8] c"Too high symbol frequencies. Tree construction is not possible\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Error building tree\0A\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 -12, 1) i32 @ff_huff_gen_len_table(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.HeapElem, align 8           ; 4 uses
  %5 = alloca %struct.HeapElem, align 8           ; 4 uses
  %6 = alloca %struct.HeapElem, align 8           ; 4 uses
  %i.a = sext i32 %2 to i64                       ; 4 uses
  %i.b = tail call ptr @av_malloc_array(i64 noundef %i.a, i64 noundef 56) #6 ; 34 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr [16 x i8], ptr %i.b, i64 %i.a ; 11 uses
  %i.d = shl i32 %2, 1
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr [4 x i8], ptr %i.c, i64 %i.e ; 16 uses
  %i.g = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.a ; 4 uses
  %i.h = icmp sgt i32 %2, 0
  br i1 %i.h, label %.lr.ph, label %.preheader110

.lr.ph:                                           ; preds = %bb.b
  %.not133 = icmp eq i32 %3, 0
  %wide.trip.count142 = zext nneg i32 %2 to i64   ; 12 uses
  br i1 %.not133, label %iter.check, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter = and i64 %wide.trip.count142, 1
  %i.i = icmp eq i32 %2, 1
  br i1 %i.i, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %wide.trip.count142, 2147483646
  br label %.lr.ph.split

iter.check:                                       ; preds = %.lr.ph
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %0, i64 %wide.trip.count142
  %i.j = shl nuw nsw i64 %i.a, 4
  %i.k = shl nsw i64 %i.e, 2
  %i.l = shl nuw nsw i64 %wide.trip.count142, 1
  %i.m = getelementptr i8, ptr %i.b, i64 %i.j
  %i.n = getelementptr i8, ptr %i.m, i64 %i.k
  %scevgep183 = getelementptr i8, ptr %i.n, i64 %i.l
  %bound0 = icmp ult ptr %0, %scevgep183
  %bound1 = icmp ult ptr %i.f, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check184 = icmp ult i32 %2, 16
  br i1 %min.iters.check184, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %wide.trip.count142, 12
  %n.vec = and i64 %wide.trip.count142, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <8 x i16> %vec.ind, splat (i16 8)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store <8 x i8> splat (i8 -1), ptr %i.p, align 1, !tbaa !9, !alias.scope !10, !noalias !13
  store <8 x i8> splat (i8 -1), ptr %i.q, align 1, !tbaa !9, !alias.scope !10, !noalias !13
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <8 x i16> %vec.ind, ptr %i.r, align 2, !tbaa !15, !alias.scope !13
  store <8 x i16> %step.add, ptr %i.s, align 2, !tbaa !15, !alias.scope !13
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count142
  br i1 %cmp.n, label %.preheader110, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.preheader, label %vec.epilog.ph, !prof !21

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec185 = and i64 %wide.trip.count142, 2147483644 ; 3 uses
  %i.u = trunc i64 %vec.epilog.resume.val to i16
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.u, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index186 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next188, %vec.epilog.vector.body ] ; 3 uses
  %vec.ind187 = phi <4 x i16> [ %induction, %vec.epilog.ph ], [ %vec.ind.next189, %vec.epilog.vector.body ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %index186
  store <4 x i8> splat (i8 -1), ptr %i.v, align 1, !tbaa !9, !alias.scope !10, !noalias !13
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %index186
  store <4 x i16> %vec.ind187, ptr %i.w, align 2, !tbaa !15, !alias.scope !13
  %index.next188 = add nuw i64 %index186, 4       ; 2 uses
  %vec.ind.next189 = add <4 x i16> %vec.ind187, splat (i16 4)
  %i.x = icmp eq i64 %index.next188, %n.vec185
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !22

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n190 = icmp eq i64 %n.vec185, %wide.trip.count142
  br i1 %cmp.n190, label %.preheader110, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv137.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec185, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter197 = and i64 %wide.trip.count142, 3   ; 2 uses
  %lcmp.mod198.not = icmp eq i64 %xtraiter197, 0
  br i1 %lcmp.mod198.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us.prol
  %indvars.iv137.prol = phi i64 [ %indvars.iv.next138.prol, %.lr.ph.split.us.prol ], [ %indvars.iv137.ph, %.lr.ph.split.us.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv137.prol
  store i8 -1, ptr %i.y, align 1, !tbaa !9
  %i.z = trunc i64 %indvars.iv137.prol to i16
  %indvars.iv.next138.prol = add nuw nsw i64 %indvars.iv137.prol, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv137.prol
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !15
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter197
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !23

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader
  %indvars.iv137.unr = phi i64 [ %indvars.iv137.ph, %.lr.ph.split.us.preheader ], [ %indvars.iv.next138.prol, %.lr.ph.split.us.prol ]
  %i.ab = sub nsw i64 %indvars.iv137.ph, %wide.trip.count142
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %.preheader110, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %indvars.iv137 = phi i64 [ %indvars.iv.next138.3, %.lr.ph.split.us ], [ %indvars.iv137.unr, %.lr.ph.split.us.prol.loopexit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv137
  store i8 -1, ptr %i.ad, align 1, !tbaa !9
  %i.ae = trunc i64 %indvars.iv137 to i16
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 3 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv137
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next138
  store i8 -1, ptr %i.ag, align 1, !tbaa !9
  %i.ah = trunc i64 %indvars.iv.next138 to i16
  %indvars.iv.next138.1 = add nuw nsw i64 %indvars.iv137, 2 ; 3 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next138
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next138.1
  store i8 -1, ptr %i.aj, align 1, !tbaa !9
  %i.ak = trunc i64 %indvars.iv.next138.1 to i16
  %indvars.iv.next138.2 = add nuw nsw i64 %indvars.iv137, 3 ; 3 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next138.1
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next138.2
  store i8 -1, ptr %i.am, align 1, !tbaa !9
  %i.an = trunc i64 %indvars.iv.next138.2 to i16
  %indvars.iv.next138.3 = add nuw nsw i64 %indvars.iv137, 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next138.2
  store i16 %i.an, ptr %i.ao, align 2, !tbaa !15
  %exitcond143.not.3 = icmp eq i64 %indvars.iv.next138.3, %wide.trip.count142
  br i1 %exitcond143.not.3, label %.preheader110, label %.lr.ph.split.us, !llvm.loop !25

.preheader110.loopexit194.unr-lcssa:              ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader110, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %.preheader110.loopexit194.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.1, %.preheader110.loopexit194.unr-lcssa ] ; 3 uses
  %.086112.epil.init = phi i32 [ 0, %.lr.ph.split.preheader ], [ %.1.1, %.preheader110.loopexit194.unr-lcssa ] ; 3 uses
  %lcmp.mod196 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod196)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.epil.init
  store i8 -1, ptr %i.ap, align 1, !tbaa !9
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !26
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %.preheader110, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.epil.preheader
  %i.at = trunc i64 %indvars.iv.epil.init to i16
  %i.au = add nsw i32 %.086112.epil.init, 1
  %i.av = sext i32 %.086112.epil.init to i64
  %i.aw = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.av
  store i16 %i.at, ptr %i.aw, align 2, !tbaa !15
  br label %.preheader110

.preheader110:                                    ; preds = %.preheader110.loopexit194.unr-lcssa, %bb.c, %.lr.ph.split.epil.preheader, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block, %vec.epilog.middle.block, %bb.b
  %.086.lcssa = phi i32 [ 0, %bb.b ], [ %2, %middle.block ], [ %2, %.lr.ph.split.us.prol.loopexit ], [ %2, %vec.epilog.middle.block ], [ %2, %.lr.ph.split.us ], [ %.1.1, %.preheader110.loopexit194.unr-lcssa ], [ %.086112.epil.init, %.lr.ph.split.epil.preheader ], [ %i.au, %bb.c ] ; 25 uses
  %i.ax = icmp sgt i32 %.086.lcssa, 0             ; 2 uses
  %i.ay = sdiv i32 %.086.lcssa, 2
  %i.az = icmp sgt i32 %.086.lcssa, 1             ; 2 uses
  %i.ba = shl i32 %.086.lcssa, 1                  ; 4 uses
  %i.bb = add i32 %i.ba, -1                       ; 3 uses
  %i.bc = icmp slt i32 %.086.lcssa, %i.bb         ; 2 uses
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr i8, ptr %i.g, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 -2
  %i.bg = add nsw i32 %i.ba, -3
  %.not92123 = icmp slt i32 %i.bg, %.086.lcssa
  %i.bh = add i32 %.086.lcssa, -1                 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 10 uses
  %i.bj = add i32 %i.ba, -3
  %i.bk = sext i32 %i.bj to i64
  %i.bl = sext i32 %.086.lcssa to i64
  %wide.trip.count147 = zext i32 %.086.lcssa to i64 ; 2 uses
  %wide.trip.count157 = zext nneg i32 %.086.lcssa to i64
  %xtraiter199 = and i64 %wide.trip.count147, 1
  %i.bm = icmp eq i32 %.086.lcssa, 1
  %unroll_iter202 = and i64 %wide.trip.count147, 2147483646
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  %lcmp.mod201 = trunc i32 %.086.lcssa to i1
  %xtraiter204 = and i32 %i.bh, 1
  %lcmp.mod205.not = icmp eq i32 %xtraiter204, 0
  %7 = add nsw i32 %.086.lcssa, 1
  %8 = icmp eq i32 %.086.lcssa, 2
  br label %bb.g

.lr.ph.split:                                     ; preds = %bb.f, %.lr.ph.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next.1, %bb.f ] ; 5 uses
  %.086112 = phi i32 [ 0, %.lr.ph.split.preheader.new ], [ %.1.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.1, %bb.f ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 -1, ptr %i.bn, align 1, !tbaa !9
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !26
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.split.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split
  %i.br = trunc i64 %indvars.iv to i16
  %i.bs = add nsw i32 %.086112, 1
  %i.bt = sext i32 %.086112 to i64
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.bt
  store i16 %i.br, ptr %i.bu, align 2, !tbaa !15
  br label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %bb.d, %.lr.ph.split
  %.1 = phi i32 [ %.086112, %.lr.ph.split ], [ %i.bs, %bb.d ] ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  store i8 -1, ptr %i.bv, align 1, !tbaa !9
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !26
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.1
  %i.bz = trunc i64 %indvars.iv.next to i16
  %i.ca = add nsw i32 %.1, 1
  %i.cb = sext i32 %.1 to i64
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.cb
  store i16 %i.bz, ptr %i.cc, align 2, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.1
  %.1.1 = phi i32 [ %.1, %.lr.ph.split.1 ], [ %i.ca, %bb.e ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader110.loopexit194.unr-lcssa, label %.lr.ph.split, !llvm.loop !28

bb.g:                                             ; preds = %._crit_edge129, %.preheader110
  %.090 = phi i32 [ %i.gv, %._crit_edge129 ], [ 1, %.preheader110 ] ; 2 uses
  br i1 %i.ax, label %.lr.ph114, label %.preheader109

.lr.ph114:                                        ; preds = %bb.g
  %i.cd = sext i32 %.090 to i64                   ; 3 uses
  br i1 %i.bm, label %.epil.preheader, label %.lr.ph114.new

.lr.ph114.new:                                    ; preds = %.lr.ph114, %.lr.ph114.new
  %indvars.iv144 = phi i64 [ %indvars.iv.next145.1, %.lr.ph114.new ], [ 0, %.lr.ph114 ] ; 5 uses
  %niter203 = phi i64 [ %niter203.next.1, %.lr.ph114.new ], [ 0, %.lr.ph114 ]
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %indvars.iv144 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = trunc nuw nsw i64 %indvars.iv144 to i32
  store i32 %i.cg, ptr %i.cf, align 8, !tbaa !29
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv144
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !15
  %i.cj = zext i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !26
  %i.cm = shl i64 %i.cl, 14
  %i.cn = add i64 %i.cm, %i.cd
  store i64 %i.cn, ptr %i.ce, align 8, !tbaa !9
  %indvars.iv.next145 = or disjoint i64 %indvars.iv144, 1 ; 3 uses
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %indvars.iv.next145 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = trunc nuw nsw i64 %indvars.iv.next145 to i32
  store i32 %i.cq, ptr %i.cp, align 8, !tbaa !29
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next145
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !15
  %i.ct = zext i16 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ct
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !26
  %i.cw = shl i64 %i.cv, 14
  %i.cx = add i64 %i.cw, %i.cd
  store i64 %i.cx, ptr %i.co, align 8, !tbaa !9
  %indvars.iv.next145.1 = add nuw nsw i64 %indvars.iv144, 2 ; 2 uses
  %niter203.next.1 = add i64 %niter203, 2         ; 2 uses
  %niter203.ncmp.1 = icmp eq i64 %niter203.next.1, %unroll_iter202
  br i1 %niter203.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph114.new, !llvm.loop !31

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph114.new
  br i1 %lcmp.mod200.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph114
  %indvars.iv144.epil.init = phi i64 [ 0, %.lr.ph114 ], [ %indvars.iv.next145.1, %._crit_edge.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod201)
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %indvars.iv144.epil.init ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = trunc nuw nsw i64 %indvars.iv144.epil.init to i32
  store i32 %i.da, ptr %i.cz, align 8, !tbaa !29
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv144.epil.init
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !15
  %i.dd = zext i16 %i.dc to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !26
  %i.dg = shl i64 %i.df, 14
  %i.dh = add i64 %i.dg, %i.cd
  store i64 %i.dh, ptr %i.cy, align 8, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  br i1 %i.az, label %.lr.ph117, label %.preheader109.thread

.preheader109:                                    ; preds = %heap_sift.exit, %bb.g
  br i1 %i.bc, label %.lr.ph119, label %._crit_edge120

.preheader109.thread:                             ; preds = %._crit_edge
  br i1 %i.bc, label %heap_sift.exit100.thread.preheader, label %._crit_edge120

.lr.ph119:                                        ; preds = %.preheader109
  br i1 %i.az, label %.lr.ph.i93.us, label %heap_sift.exit100.thread.preheader

heap_sift.exit100.thread.preheader:               ; preds = %.preheader109.thread, %.lr.ph119
  %.pre = load i64, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %.pre159 = load i32, ptr %i.bi, align 8, !tbaa !29 ; 2 uses
  br i1 %lcmp.mod205.not, label %heap_sift.exit100.thread.prol.loopexit, label %heap_sift.exit100.thread.prol

heap_sift.exit100.thread.prol:                    ; preds = %heap_sift.exit100.thread.preheader
  %9 = sext i32 %.pre159 to i64
  %10 = getelementptr inbounds [4 x i8], ptr %i.c, i64 %9
  store i32 %.086.lcssa, ptr %10, align 4, !tbaa !32
  store i64 9223372036854775807, ptr %i.b, align 8, !tbaa !9
  %11 = load i32, ptr %i.bi, align 8, !tbaa !29
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr %i.c, i64 %12
  store i32 %.086.lcssa, ptr %13, align 4, !tbaa !32
  store i32 %.086.lcssa, ptr %i.bi, align 8, !tbaa !29
  %14 = load i64, ptr %i.b, align 8, !tbaa !9
  %15 = add i64 %14, %.pre                        ; 2 uses
  store i64 %15, ptr %i.b, align 8, !tbaa !9
  br label %heap_sift.exit100.thread.prol.loopexit

heap_sift.exit100.thread.prol.loopexit:           ; preds = %heap_sift.exit100.thread.prol, %heap_sift.exit100.thread.preheader
  %.unr = phi i32 [ %.pre159, %heap_sift.exit100.thread.preheader ], [ %.086.lcssa, %heap_sift.exit100.thread.prol ]
  %.unr207 = phi i64 [ %.pre, %heap_sift.exit100.thread.preheader ], [ %15, %heap_sift.exit100.thread.prol ]
  %.087118.unr = phi i32 [ %.086.lcssa, %heap_sift.exit100.thread.preheader ], [ %7, %heap_sift.exit100.thread.prol ]
  br i1 %8, label %._crit_edge120, label %heap_sift.exit100.thread

.lr.ph.i93.us:                                    ; preds = %.lr.ph119, %heap_sift.exit108.loopexit.us
  %.087118.us = phi i32 [ %22, %heap_sift.exit108.loopexit.us ], [ %.086.lcssa, %.lr.ph119 ] ; 4 uses
  %16 = load i64, ptr %i.b, align 8, !tbaa !9
  %17 = load i32, ptr %i.bi, align 8, !tbaa !29
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr %i.c, i64 %18
  store i32 %.087118.us, ptr %19, align 4, !tbaa !32
  store i64 9223372036854775807, ptr %i.b, align 8, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.i93.us
  %i.di = phi i32 [ 1, %.lr.ph.i93.us ], [ %i.eb, %bb.j ] ; 4 uses
  %i.dj = phi i32 [ 0, %.lr.ph.i93.us ], [ %i.ea, %bb.j ]
  %.02429.i94.us = phi i32 [ 0, %.lr.ph.i93.us ], [ %.023.i97.us, %bb.j ]
  %i.dk = icmp slt i32 %i.di, %i.bh
  %i.dl = zext nneg i32 %i.di to i64              ; 2 uses
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !9  ; 3 uses
  br i1 %i.dk, label %bb.i, label %._crit_edge.i95.us

bb.i:                                             ; preds = %bb.h
  %i.do = add nuw nsw i32 %i.dj, 2                ; 2 uses
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.dp
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !9  ; 2 uses
  %i.ds = icmp ugt i64 %i.dn, %i.dr
  %spec.select.i98.us = select i1 %i.ds, i32 %i.do, i32 %i.di ; 2 uses
  %i.dt = tail call i64 @llvm.umin.i64(i64 %i.dn, i64 %i.dr)
  %.pre32.i99.us = zext nneg i32 %spec.select.i98.us to i64
  br label %._crit_edge.i95.us

._crit_edge.i95.us:                               ; preds = %bb.i, %bb.h
  %.pre-phi.i96.us = phi i64 [ %.pre32.i99.us, %bb.i ], [ %i.dl, %bb.h ]
  %i.du = phi i64 [ %i.dt, %bb.i ], [ %i.dn, %bb.h ]
  %.023.i97.us = phi i32 [ %spec.select.i98.us, %bb.i ], [ %i.di, %bb.h ] ; 2 uses
  %i.dv = zext nneg i32 %.02429.i94.us to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.dv ; 3 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !9
  %i.dy = icmp ugt i64 %i.dx, %i.du
  br i1 %i.dy, label %bb.j, label %heap_sift.exit100.us

bb.j:                                             ; preds = %._crit_edge.i95.us
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.pre-phi.i96.us ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 16, i1 false), !tbaa.struct !33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i64 16, i1 false), !tbaa.struct !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ea = shl nuw nsw i32 %.023.i97.us, 1         ; 2 uses
  %i.eb = or disjoint i32 %i.ea, 1                ; 2 uses
  %i.ec = icmp slt i32 %i.eb, %.086.lcssa
  br i1 %i.ec, label %bb.h, label %heap_sift.exit100.us

heap_sift.exit100.us:                             ; preds = %bb.j, %._crit_edge.i95.us
  %i.ed = load i32, ptr %i.bi, align 8, !tbaa !29
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ee
  store i32 %.087118.us, ptr %i.ef, align 4, !tbaa !32
  store i32 %.087118.us, ptr %i.bi, align 8, !tbaa !29
  %20 = load i64, ptr %i.b, align 8, !tbaa !9
  %21 = add i64 %20, %16
  store i64 %21, ptr %i.b, align 8, !tbaa !9
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %heap_sift.exit100.us
  %i.eg = phi i32 [ 1, %heap_sift.exit100.us ], [ %i.ez, %bb.m ] ; 4 uses
  %i.eh = phi i32 [ 0, %heap_sift.exit100.us ], [ %i.ey, %bb.m ]
  %.02429.i102.us = phi i32 [ 0, %heap_sift.exit100.us ], [ %.023.i105.us, %bb.m ]
  %i.ei = icmp slt i32 %i.eg, %i.bh
  %i.ej = zext nneg i32 %i.eg to i64              ; 2 uses
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !9  ; 3 uses
  br i1 %i.ei, label %bb.l, label %._crit_edge.i103.us

bb.l:                                             ; preds = %bb.k
  %i.em = add nuw nsw i32 %i.eh, 2                ; 2 uses
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !9  ; 2 uses
  %i.eq = icmp ugt i64 %i.el, %i.ep
  %spec.select.i106.us = select i1 %i.eq, i32 %i.em, i32 %i.eg ; 2 uses
  %i.er = tail call i64 @llvm.umin.i64(i64 %i.el, i64 %i.ep)
  %.pre32.i107.us = zext nneg i32 %spec.select.i106.us to i64
  br label %._crit_edge.i103.us

._crit_edge.i103.us:                              ; preds = %bb.l, %bb.k
  %.pre-phi.i104.us = phi i64 [ %.pre32.i107.us, %bb.l ], [ %i.ej, %bb.k ]
  %i.es = phi i64 [ %i.er, %bb.l ], [ %i.el, %bb.k ]
  %.023.i105.us = phi i32 [ %spec.select.i106.us, %bb.l ], [ %i.eg, %bb.k ] ; 2 uses
  %i.et = zext nneg i32 %.02429.i102.us to i64
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.et ; 3 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !9
  %i.ew = icmp ugt i64 %i.ev, %i.es
  br i1 %i.ew, label %bb.m, label %heap_sift.exit108.loopexit.us

bb.m:                                             ; preds = %._crit_edge.i103.us
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.pre-phi.i104.us ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ex, i64 16, i1 false), !tbaa.struct !33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ex, ptr noundef nonnull align 8 dereferenceable(16) %i.eu, i64 16, i1 false), !tbaa.struct !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ey = shl nuw nsw i32 %.023.i105.us, 1        ; 2 uses
  %i.ez = or disjoint i32 %i.ey, 1                ; 2 uses
  %i.fa = icmp slt i32 %i.ez, %.086.lcssa
  br i1 %i.fa, label %bb.k, label %heap_sift.exit108.loopexit.us

heap_sift.exit108.loopexit.us:                    ; preds = %bb.m, %._crit_edge.i103.us
  %22 = add nuw nsw i32 %.087118.us, 1            ; 2 uses
  %exitcond150.not = icmp eq i32 %22, %i.bb
  br i1 %exitcond150.not, label %._crit_edge120, label %.lr.ph.i93.us, !llvm.loop !34

.lr.ph117:                                        ; preds = %._crit_edge, %heap_sift.exit
  %.2.in115 = phi i32 [ %.2, %heap_sift.exit ], [ %i.ay, %._crit_edge ] ; 2 uses
  %.2 = add nsw i32 %.2.in115, -1                 ; 3 uses
  %23 = shl nuw nsw i32 %.2, 1                    ; 2 uses
  %24 = or disjoint i32 %23, 1                    ; 2 uses
  %25 = icmp slt i32 %24, %.086.lcssa
  br i1 %25, label %.lr.ph.i, label %heap_sift.exit

.lr.ph.i:                                         ; preds = %.lr.ph117, %bb.o
  %i.fb = phi i32 [ %i.fu, %bb.o ], [ %24, %.lr.ph117 ] ; 4 uses
  %i.fc = phi i32 [ %i.ft, %bb.o ], [ %23, %.lr.ph117 ]
  %.02429.i = phi i32 [ %.023.i, %bb.o ], [ %.2, %.lr.ph117 ]
  %i.fd = icmp slt i32 %i.fb, %i.bh
  %i.fe = zext nneg i32 %i.fb to i64              ; 2 uses
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.fe
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !9  ; 3 uses
  br i1 %i.fd, label %bb.n, label %._crit_edge.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.fh = add nuw nsw i32 %i.fc, 2                ; 2 uses
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.fi
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !9  ; 2 uses
  %i.fl = icmp ugt i64 %i.fg, %i.fk
  %spec.select.i = select i1 %i.fl, i32 %i.fh, i32 %i.fb ; 2 uses
  %i.fm = tail call i64 @llvm.umin.i64(i64 %i.fg, i64 %i.fk)
  %.pre32.i = zext nneg i32 %spec.select.i to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.n, %.lr.ph.i
  %.pre-phi.i = phi i64 [ %.pre32.i, %bb.n ], [ %i.fe, %.lr.ph.i ]
  %i.fn = phi i64 [ %i.fm, %bb.n ], [ %i.fg, %.lr.ph.i ]
  %.023.i = phi i32 [ %spec.select.i, %bb.n ], [ %i.fb, %.lr.ph.i ] ; 2 uses
  %i.fo = zext nneg i32 %.02429.i to i64
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.fo ; 3 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !9
  %i.fr = icmp ugt i64 %i.fq, %i.fn
  br i1 %i.fr, label %bb.o, label %heap_sift.exit

bb.o:                                             ; preds = %._crit_edge.i
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.pre-phi.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.fs, i64 16, i1 false), !tbaa.struct !33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fs, ptr noundef nonnull align 8 dereferenceable(16) %i.fp, i64 16, i1 false), !tbaa.struct !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ft = shl nuw nsw i32 %.023.i, 1              ; 2 uses
  %i.fu = or disjoint i32 %i.ft, 1                ; 2 uses
  %i.fv = icmp slt i32 %i.fu, %.086.lcssa
  br i1 %i.fv, label %.lr.ph.i, label %heap_sift.exit

heap_sift.exit:                                   ; preds = %._crit_edge.i, %bb.o, %.lr.ph117
  %26 = icmp sgt i32 %.2.in115, 1
  br i1 %26, label %.lr.ph117, label %.preheader109, !llvm.loop !35

heap_sift.exit100.thread:                         ; preds = %heap_sift.exit100.thread.prol.loopexit, %heap_sift.exit100.thread
  %27 = phi i32 [ %36, %heap_sift.exit100.thread ], [ %.unr, %heap_sift.exit100.thread.prol.loopexit ]
  %28 = phi i64 [ %43, %heap_sift.exit100.thread ], [ %.unr207, %heap_sift.exit100.thread.prol.loopexit ]
  %.087118 = phi i32 [ %i.fw, %heap_sift.exit100.thread ], [ %.087118.unr, %heap_sift.exit100.thread.prol.loopexit ] ; 6 uses
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds [4 x i8], ptr %i.c, i64 %29
  store i32 %.087118, ptr %30, align 4, !tbaa !32
  store i64 9223372036854775807, ptr %i.b, align 8, !tbaa !9
  %31 = load i32, ptr %i.bi, align 8, !tbaa !29
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i8], ptr %i.c, i64 %32
  store i32 %.087118, ptr %33, align 4, !tbaa !32
  store i32 %.087118, ptr %i.bi, align 8, !tbaa !29
  %34 = load i64, ptr %i.b, align 8, !tbaa !9
  %35 = add i64 %34, %28                          ; 2 uses
  store i64 %35, ptr %i.b, align 8, !tbaa !9
  %36 = add nsw i32 %.087118, 1                   ; 4 uses
  %37 = sext i32 %.087118 to i64
  %38 = getelementptr inbounds [4 x i8], ptr %i.c, i64 %37
  store i32 %36, ptr %38, align 4, !tbaa !32
  store i64 9223372036854775807, ptr %i.b, align 8, !tbaa !9
  %39 = load i32, ptr %i.bi, align 8, !tbaa !29
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i8], ptr %i.c, i64 %40
  store i32 %36, ptr %41, align 4, !tbaa !32
  store i32 %36, ptr %i.bi, align 8, !tbaa !29
  %42 = load i64, ptr %i.b, align 8, !tbaa !9
  %43 = add i64 %42, %35                          ; 2 uses
  store i64 %43, ptr %i.b, align 8, !tbaa !9
  %i.fw = add nsw i32 %.087118, 2                 ; 2 uses
  %exitcond149.not.1 = icmp eq i32 %i.fw, %i.bb
  br i1 %exitcond149.not.1, label %._crit_edge120, label %heap_sift.exit100.thread, !llvm.loop !34

._crit_edge120:                                   ; preds = %heap_sift.exit100.thread.prol.loopexit, %heap_sift.exit100.thread, %heap_sift.exit108.loopexit.us, %.preheader109.thread, %.preheader109
  store i8 0, ptr %i.bf, align 1, !tbaa !9
  br i1 %.not92123, label %.preheader, label %.lr.ph126.a

.preheader:                                       ; preds = %.lr.ph126.a, %._crit_edge120
  br i1 %i.ax, label %.lr.ph128, label %._crit_edge129

.lr.ph126.a:                                      ; preds = %._crit_edge120, %.lr.ph126.a
  %indvars.iv151 = phi i64 [ %indvars.iv.next152, %.lr.ph126.a ], [ %i.bk, %._crit_edge120 ] ; 4 uses
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv151
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !32
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds i8, ptr %i.g, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !9
  %i.gc = add i8 %i.gb, 1
  %i.gd = getelementptr inbounds i8, ptr %i.g, i64 %indvars.iv151
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !9
  %indvars.iv.next152 = add nsw i64 %indvars.iv151, -1
  %.not92.not = icmp sgt i64 %indvars.iv151, %i.bl
  br i1 %.not92.not, label %.lr.ph126.a, label %.preheader, !llvm.loop !36

.lr.ph128:                                        ; preds = %.preheader, %bb.p
  %indvars.iv154 = phi i64 [ %indvars.iv.next155, %bb.p ], [ 0, %.preheader ] ; 4 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv154
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !32
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds i8, ptr %i.g, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !9
  %i.gj = add i8 %i.gi, 1
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv154 ; 2 uses
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !15
  %i.gm = zext i16 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 %i.gm
  store i8 %i.gj, ptr %i.gn, align 1, !tbaa !9
  %i.go = load i16, ptr %i.gk, align 2, !tbaa !15
  %i.gp = zext i16 %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !9
  %i.gs = icmp ugt i8 %i.gr, 31
  br i1 %i.gs, label %._crit_edge129.loopexit, label %bb.p

bb.p:                                             ; preds = %.lr.ph128
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next155, %wide.trip.count157
  br i1 %exitcond158.not, label %._crit_edge129.thread, label %.lr.ph128, !llvm.loop !37

._crit_edge129.loopexit:                          ; preds = %.lr.ph128
  %i.gt = trunc nuw nsw i64 %indvars.iv154 to i32
  br label %._crit_edge129

._crit_edge129:                                   ; preds = %._crit_edge129.loopexit, %.preheader
  %.4.lcssa = phi i32 [ 0, %.preheader ], [ %i.gt, %._crit_edge129.loopexit ]
  %i.gu = icmp eq i32 %.4.lcssa, %.086.lcssa
  %i.gv = shl i32 %.090, 1
  br i1 %i.gu, label %._crit_edge129.thread, label %bb.g

._crit_edge129.thread:                            ; preds = %._crit_edge129, %bb.p
  tail call void @av_free(ptr noundef nonnull %i.b) #6
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %._crit_edge129.thread
  %.0 = phi i32 [ 0, %._crit_edge129.thread ], [ -12, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @av_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @ff_huff_build_tree(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %i.b = alloca [256 x i8], align 16              ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca [64 x [2 x ptr]], align 16        ; 7 uses
  %i.e = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.f = icmp ult i32 %2, 4
  br i1 %i.f, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %.0186223 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ah, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.g = trunc i64 %indvars.iv to i16
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv ; 3 uses
  store i16 %i.g, ptr %i.h, align 4, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i16 -2, ptr %i.i, align 2, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !41
  %i.l = zext i32 %i.k to i64
  %i.m = add nuw nsw i64 %.0186223, %i.l
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.n = trunc i64 %indvars.iv.next to i16
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next ; 3 uses
  store i16 %i.n, ptr %i.o, align 4, !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i16 -2, ptr %i.p, align 2, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !41
  %i.s = zext i32 %i.r to i64
  %i.t = add nuw nsw i64 %i.m, %i.s
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.u = trunc i64 %indvars.iv.next.1 to i16
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.1 ; 3 uses
  store i16 %i.u, ptr %i.v, align 4, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i16 -2, ptr %i.w, align 2, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !41
  %i.z = zext i32 %i.y to i64
  %i.aa = add nuw nsw i64 %i.t, %i.z
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ab = trunc i64 %indvars.iv.next.2 to i16
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.2 ; 3 uses
  store i16 %i.ab, ptr %i.ac, align 4, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  store i16 -2, ptr %i.ad, align 2, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !41
  %i.ag = zext i32 %i.af to i64
  %i.ah = add nuw nsw i64 %i.aa, %i.ag            ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !42

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.0186223.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ah, %._crit_edge.unr-lcssa ]
  %lcmp.mod355 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod355)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.0186223.epil = phi i64 [ %.0186223.epil.init, %.lr.ph.epil.preheader ], [ %i.ao, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ai = trunc i64 %indvars.iv.epil to i16
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.epil ; 3 uses
  store i16 %i.ai, ptr %i.aj, align 4, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store i16 -2, ptr %i.ak, align 2, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !41
  %i.an = zext i32 %i.am to i64
  %i.ao = add nuw nsw i64 %.0186223.epil, %i.an   ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa353 = phi i64 [ %i.ah, %._crit_edge.unr-lcssa ], [ %i.ao, %.lr.ph.epil ]
  %i.ap = icmp samesign ult i64 %.lcssa353, 2147483648
  br i1 %i.ap, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str) #6
  br label %bb.ac

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store ptr %4, ptr %i.d, align 16, !tbaa !44
  %i.aq = sext i32 %2 to i64                      ; 3 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %4, i64 %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %.thread
  %.0182244 = phi i32 [ 1, %._crit_edge.thread ], [ %.1183221, %.thread ] ; 2 uses
  %i.au = add nsw i32 %.0182244, -1               ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.av ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 16, !tbaa !44 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !44 ; 2 uses
  %i.ba = icmp ult ptr %i.ax, %i.az
  br i1 %i.ba, label %.lr.ph239.preheader, label %.thread

.lr.ph239.preheader:                              ; preds = %bb.c
  %i.bb = sext i32 %.0182244 to i64
  %i.bc = add nsw i64 %i.bb, -1
  br label %.lr.ph239

.lr.ph239:                                        ; preds = %.lr.ph239.preheader, %bb.v
  %indvars.iv280 = phi i64 [ %i.bc, %.lr.ph239.preheader ], [ %indvars.iv.next281, %bb.v ] ; 6 uses
  %.0176237 = phi ptr [ %i.az, %.lr.ph239.preheader ], [ %.1177, %bb.v ] ; 17 uses
  %.0179236 = phi ptr [ %i.ax, %.lr.ph239.preheader ], [ %.1180, %bb.v ] ; 16 uses
  %i.bd = getelementptr inbounds i8, ptr %.0176237, i64 -8 ; 7 uses
  %i.be = icmp ult ptr %.0179236, %i.bd
  br i1 %i.be, label %bb.d, label %bb.w

bb.d:                                             ; preds = %.lr.ph239
  %i.bf = getelementptr inbounds i8, ptr %.0176237, i64 -16 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0179236, i64 8 ; 3 uses
  %i.bh = ptrtoint ptr %.0176237 to i64           ; 2 uses
  %i.bi = ptrtoint ptr %.0179236 to i64           ; 2 uses
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr i64 %i.bj, 4
  %i.bl = getelementptr inbounds [8 x i8], ptr %.0179236, i64 %i.bk ; 13 uses
  %i.bm = tail call i32 %5(ptr noundef %.0179236, ptr noundef nonnull %.0176237) #6
  %i.bn = icmp sgt i32 %i.bm, 0
end_hunk_0
begin_hunk_1_@ff_huff_build_tree:bb.a
  br i1 %.not200, label %bb.s, label %bb.q

bb.q:                                             ; preds = %._crit_edge232
  %i.cq = getelementptr inbounds i8, ptr %.0170.lcssa, i64 -8
  %i.cr = icmp eq ptr %i.bl, %i.cq
  %i.cs = icmp eq ptr %i.bl, %.0170.lcssa
  %or.cond = or i1 %i.cs, %i.cr
  br i1 %or.cond, label %.preheader216, label %bb.s

.preheader216:                                    ; preds = %bb.q, %bb.r
  %.0169 = phi ptr [ %i.cu, %bb.r ], [ %.0179236, %bb.q ] ; 4 uses
  %i.ct = icmp ult ptr %.0169, %.0176237
  br i1 %i.ct, label %bb.r, label %.critedge4

bb.r:                                             ; preds = %.preheader216
  %i.cu = getelementptr inbounds nuw i8, ptr %.0169, i64 8 ; 2 uses
  %i.cv = tail call i32 %5(ptr noundef %.0169, ptr noundef nonnull %i.cu) #6
  %i.cw = icmp slt i32 %i.cv, 1
  br i1 %i.cw, label %.preheader216, label %.critedge4, !llvm.loop !49

.critedge4:                                       ; preds = %.preheader216, %bb.r
  %i.cx = icmp eq ptr %.0169, %.0176237
  br i1 %i.cx, label %.thread.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.q, %.critedge4, %._crit_edge232
  %i.cy = ptrtoint ptr %.0170.lcssa to i64        ; 2 uses
  %i.cz = sub i64 %i.bh, %i.cy
  %i.da = sub i64 %i.cy, %i.bi
  %i.db = icmp slt i64 %i.cz, %i.da
  br i1 %i.db, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dc = getelementptr inbounds [16 x i8], ptr %i.d, i64 %indvars.iv280 ; 2 uses
  store ptr %.0179236, ptr %i.dc, align 16, !tbaa !44
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %.0171.lcssa, ptr %i.dd, align 8, !tbaa !44
  %i.de = getelementptr inbounds nuw i8, ptr %.0170.lcssa, i64 8
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.df = getelementptr inbounds nuw i8, ptr %.0170.lcssa, i64 8
  %i.dg = getelementptr inbounds [16 x i8], ptr %i.d, i64 %indvars.iv280 ; 2 uses
  store ptr %i.df, ptr %i.dg, align 16, !tbaa !44
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %.0176237, ptr %i.dh, align 8, !tbaa !44
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.1180 = phi ptr [ %i.de, %bb.t ], [ %.0179236, %bb.u ] ; 2 uses
  %.1177 = phi ptr [ %.0176237, %bb.t ], [ %.0171.lcssa, %bb.u ] ; 2 uses
  %indvars.iv.next281 = add nsw i64 %indvars.iv280, 1 ; 2 uses
  %i.di = icmp ult ptr %.1180, %.1177
  br i1 %i.di, label %.lr.ph239, label %.thread.loopexit

bb.w:                                             ; preds = %.lr.ph239
  %i.dj = trunc nsw i64 %indvars.iv280 to i32     ; 2 uses
  %i.dk = tail call i32 %5(ptr noundef %.0179236, ptr noundef nonnull %.0176237) #6
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  %i.dm = load i64, ptr %.0176237, align 4
  %i.dn = load i64, ptr %.0179236, align 4
  store i64 %i.dn, ptr %.0176237, align 4
  store i64 %i.dm, ptr %.0179236, align 4
  br label %.thread

.thread.loopexit:                                 ; preds = %.critedge4, %bb.l, %bb.v
  %.1183221.ph.in = phi i64 [ %indvars.iv280, %.critedge4 ], [ %indvars.iv280, %bb.l ], [ %indvars.iv.next281, %bb.v ]
  %.1183221.ph = trunc i64 %.1183221.ph.in to i32
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.c, %bb.w, %bb.x
  %.1183221 = phi i32 [ %i.dj, %bb.x ], [ %i.dj, %bb.w ], [ %i.au, %bb.c ], [ %.1183221.ph, %.thread.loopexit ] ; 2 uses
  %.not197 = icmp eq i32 %.1183221, 0
  br i1 %.not197, label %bb.y, label %bb.c, !llvm.loop !50

bb.y:                                             ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  %i.do = shl nsw i32 %2, 1                       ; 2 uses
  %i.dp = add nsw i32 %i.do, -1
  %i.dq = sext i32 %i.dp to i64                   ; 3 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %4, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  store i32 0, ptr %i.ds, align 4, !tbaa !41
  br i1 %i.e, label %.lr.ph264, label %._crit_edge265

.lr.ph264:                                        ; preds = %bb.y
  %i.dt = and i32 %6, 1
  %.not198 = icmp eq i32 %i.dt, 0
  br i1 %.not198, label %.lr.ph264.split.us, label %.lr.ph264.split

.lr.ph264.split.us:                               ; preds = %.lr.ph264, %._crit_edge248.us
  %indvars.iv305 = phi i64 [ %indvars.iv.next306, %._crit_edge248.us ], [ 0, %.lr.ph264 ] ; 3 uses
  %indvars.iv301 = phi i32 [ %indvars.iv.next302, %._crit_edge248.us ], [ 2, %.lr.ph264 ] ; 2 uses
  %indvars.iv297 = phi i64 [ %indvars.iv.next298, %._crit_edge248.us ], [ %i.aq, %.lr.ph264 ] ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv305 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !41
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !41
  %i.dz = add i32 %i.dy, %i.dw                    ; 2 uses
  %indvars.iv.next306 = add nuw nsw i64 %indvars.iv305, 2 ; 4 uses
  %sext326 = shl i64 %indvars.iv297, 32
  %i.ea = ashr exact i64 %sext326, 32             ; 2 uses
  %i.eb = icmp sgt i64 %i.ea, %indvars.iv.next306
  br i1 %i.eb, label %.lr.ph247.us, label %._crit_edge248.us

.lr.ph247.us:                                     ; preds = %.lr.ph264.split.us, %bb.z
  %indvars.iv299 = phi i64 [ %indvars.iv.next300, %bb.z ], [ %indvars.iv297, %.lr.ph264.split.us ] ; 3 uses
  %i.ec = getelementptr [8 x i8], ptr %4, i64 %indvars.iv299 ; 3 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 -4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !41
  %or.cond272.not = icmp ult i32 %i.dz, %i.ee
  br i1 %or.cond272.not, label %bb.z, label %._crit_edge248.us

bb.z:                                             ; preds = %.lr.ph247.us
  %i.ef = getelementptr i8, ptr %i.ec, i64 -8
  %i.eg = load i64, ptr %i.ef, align 4
  store i64 %i.eg, ptr %i.ec, align 4
  %indvars.iv.next300 = add nsw i64 %indvars.iv299, -1 ; 2 uses
  %i.eh = icmp sgt i64 %indvars.iv.next300, %indvars.iv.next306
  br i1 %i.eh, label %.lr.ph247.us, label %._crit_edge248.us.loopexit.loopexit, !llvm.loop !51

._crit_edge248.us.loopexit.loopexit:              ; preds = %bb.z
  %i.ei = sext i32 %indvars.iv301 to i64
  br label %._crit_edge248.us

._crit_edge248.us:                                ; preds = %.lr.ph247.us, %._crit_edge248.us.loopexit.loopexit, %.lr.ph264.split.us
  %.pre-phi = phi i64 [ %i.ea, %.lr.ph264.split.us ], [ %i.ei, %._crit_edge248.us.loopexit.loopexit ], [ %indvars.iv299, %.lr.ph247.us ]
  %i.ej = getelementptr inbounds [8 x i8], ptr %4, i64 %.pre-phi ; 3 uses
  store i16 -1, ptr %i.ej, align 4, !tbaa !38
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  store i32 %i.dz, ptr %i.ek, align 4, !tbaa !41
  %i.el = trunc i64 %indvars.iv305 to i16
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  store i16 %i.el, ptr %i.em, align 2, !tbaa !40
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1
  %i.en = icmp slt i64 %indvars.iv.next306, %i.dq
  %indvars.iv.next302 = add nuw i32 %indvars.iv301, 2
  br i1 %i.en, label %.lr.ph264.split.us, label %._crit_edge265, !llvm.loop !52

.lr.ph264.split:                                  ; preds = %.lr.ph264, %._crit_edge251.split.us
  %indvars.iv291 = phi i64 [ %indvars.iv.next292, %._crit_edge251.split.us ], [ 0, %.lr.ph264 ] ; 3 uses
  %indvars.iv287 = phi i32 [ %indvars.iv.next288, %._crit_edge251.split.us ], [ 2, %.lr.ph264 ] ; 2 uses
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %._crit_edge251.split.us ], [ %i.aq, %.lr.ph264 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv291 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !41
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %i.es = load i32, ptr %i.er, align 4, !tbaa !41
  %i.et = add i32 %i.es, %i.eq                    ; 2 uses
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 2 ; 4 uses
  %sext = shl i64 %indvars.iv283, 32
  %i.eu = ashr exact i64 %sext, 32                ; 2 uses
  %i.ev = icmp sgt i64 %i.eu, %indvars.iv.next292
  br i1 %i.ev, label %.lr.ph247, label %._crit_edge251.split.us

.lr.ph247:                                        ; preds = %.lr.ph264.split, %bb.aa
  %indvars.iv285 = phi i64 [ %indvars.iv.next286, %bb.aa ], [ %indvars.iv283, %.lr.ph264.split ] ; 3 uses
  %i.ew = getelementptr [8 x i8], ptr %4, i64 %indvars.iv285 ; 3 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 -4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !41
  %i.ez = icmp ugt i32 %i.et, %i.ey
  br i1 %i.ez, label %._crit_edge251.split.us, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph247
  %i.fa = getelementptr i8, ptr %i.ew, i64 -8
  %i.fb = load i64, ptr %i.fa, align 4
  store i64 %i.fb, ptr %i.ew, align 4
  %indvars.iv.next286 = add nsw i64 %indvars.iv285, -1 ; 2 uses
  %i.fc = icmp sgt i64 %indvars.iv.next286, %indvars.iv.next292
  br i1 %i.fc, label %.lr.ph247, label %._crit_edge251.split.us.loopexit.loopexit, !llvm.loop !51

._crit_edge251.split.us.loopexit.loopexit:        ; preds = %bb.aa
  %i.fd = sext i32 %indvars.iv287 to i64
  br label %._crit_edge251.split.us

._crit_edge251.split.us:                          ; preds = %.lr.ph247, %._crit_edge251.split.us.loopexit.loopexit, %.lr.ph264.split
  %.pre-phi313 = phi i64 [ %i.eu, %.lr.ph264.split ], [ %i.fd, %._crit_edge251.split.us.loopexit.loopexit ], [ %indvars.iv285, %.lr.ph247 ]
  %i.fe = getelementptr inbounds [8 x i8], ptr %4, i64 %.pre-phi313 ; 3 uses
  store i16 -1, ptr %i.fe, align 4, !tbaa !38
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  store i32 %i.et, ptr %i.ff, align 4, !tbaa !41
  %i.fg = trunc i64 %indvars.iv291 to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  store i16 %i.fg, ptr %i.fh, align 2, !tbaa !40
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1
  %i.fi = icmp slt i64 %indvars.iv.next292, %i.dq
  %indvars.iv.next288 = add nuw i32 %indvars.iv287, 2
  br i1 %i.fi, label %.lr.ph264.split, label %._crit_edge265, !llvm.loop !52

._crit_edge265:                                   ; preds = %._crit_edge251.split.us, %._crit_edge248.us, %bb.y
  %i.fj = add nsw i32 %i.do, -2
  %i.fk = lshr i32 %6, 1
  %.lobit.i = and i32 %i.fk, 1
  %i.fl = xor i32 %.lobit.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 0, ptr %i.c, align 4, !tbaa !32
  call fastcc void @get_tree_codes(ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull readonly %4, i32 noundef range(i32 -2147483648, 2147483646) %i.fj, i32 noundef 0, ptr noundef %i.c, i32 noundef %i.fl)
  %i.fm = load i32, ptr %i.c, align 4, !tbaa !32
  %i.fn = call i32 @ff_vlc_init_from_lengths(ptr noundef %1, i32 noundef %3, i32 noundef %i.fm, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef nonnull %i.b, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %0) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.fo = icmp slt i32 %i.fn, 0
  br i1 %i.fo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge265
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.1) #6
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge265, %bb.ab, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.ab ], [ 0, %._crit_edge265 ]
  ret i32 %.0
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @get_tree_codes(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 -2147483648, 2147483646) %3, i32 noundef %4, ptr nofree noundef nonnull captures(none) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #3 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !38   ; 2 uses
  %.not38 = icmp eq i16 %i.c, -1
  br i1 %.not38, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %i.d = phi ptr [ %i.j, %tailrecurse.backedge ], [ %i.b, %bb.a ] ; 2 uses
  %.tr3740 = phi i32 [ %.sink46, %tailrecurse.backedge ], [ %6, %bb.a ]
  %.tr3539 = phi i32 [ %i.e, %tailrecurse.backedge ], [ %4, %bb.a ] ; 2 uses
  %.not30 = icmp eq i32 %.tr3740, 0
  br i1 %.not30, label %tailrecurse.backedge, label %bb.b

tailrecurse.backedge:                             ; preds = %.lr.ph, %bb.b
  %.sink46 = phi i32 [ 1, %bb.b ], [ 0, %.lr.ph ] ; 2 uses
  %i.e = add nsw i32 %.tr3539, 1                  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !40
  %i.h = sext i16 %i.g to i32
  tail call fastcc void @get_tree_codes(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %i.h, i32 noundef %i.e, ptr noundef %5, i32 noundef %.sink46)
  %.tr34.be.in.in = load i16, ptr %i.f, align 2, !tbaa !40
  %.tr34.be.in = sext i16 %.tr34.be.in.in to i64
  %i.i = getelementptr [8 x i8], ptr %2, i64 %.tr34.be.in
  %i.j = getelementptr i8, ptr %i.i, i64 8        ; 2 uses
  %i.k = load i16, ptr %i.j, align 4, !tbaa !38   ; 2 uses
  %.not = icmp eq i16 %i.k, -1
  br i1 %.not, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !41
  %.not31 = icmp eq i32 %i.m, 0
  br i1 %.not31, label %._crit_edge, label %tailrecurse.backedge

._crit_edge:                                      ; preds = %tailrecurse.backedge, %bb.b, %bb.a
  %.tr35.lcssa = phi i32 [ %4, %bb.a ], [ %.tr3539, %bb.b ], [ %i.e, %tailrecurse.backedge ]
  %.lcssa = phi i16 [ %i.c, %bb.a ], [ -1, %bb.b ], [ %i.k, %tailrecurse.backedge ]
  %i.n = trunc i32 %.tr35.lcssa to i8
  %i.o = load i32, ptr %5, align 4, !tbaa !32
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  store i8 %i.n, ptr %i.q, align 1, !tbaa !9
  %i.r = trunc i16 %.lcssa to i8
  %i.s = load i32, ptr %5, align 4, !tbaa !32
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %1, i64 %i.t
  store i8 %i.r, ptr %i.u, align 1, !tbaa !9
  %i.v = load i32, ptr %5, align 4, !tbaa !32
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %5, align 4, !tbaa !32
  ret void
}

declare i32 @ff_vlc_init_from_lengths(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11}
!11 = distinct !{!11, !12}
!12 = distinct !{!12, !"LVerDomain"}
!13 = !{!14}
!14 = distinct !{!14, !12}
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !7, i64 0}
!17 = distinct !{!17, !18, !19, !20}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = !{!"branch_weights", i32 4, i32 12}
!22 = distinct !{!22, !18, !19, !20}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = distinct !{!25, !18, !19}
!26 = !{!27, !27, i64 0}
!27 = !{!"long", !7, i64 0}
!28 = distinct !{!28, !18}
!29 = !{!30, !6, i64 8}
!30 = !{!"HeapElem", !7, i64 0, !6, i64 8}
!31 = distinct !{!31, !18}
!32 = !{!6, !6, i64 0}
!33 = !{i64 0, i64 8, !9, i64 8, i64 4, !32}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !18}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18}
!38 = !{!39, !16, i64 0}
!39 = !{!"Node", !16, i64 0, !16, i64 2, !6, i64 4}
!40 = !{!39, !16, i64 2}
!41 = !{!39, !6, i64 4}
!42 = distinct !{!42, !18}
!43 = distinct !{!43, !24}
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !7, i64 0}
!46 = distinct !{!46, !18}
!47 = distinct !{!47, !18}
!48 = distinct !{!48, !18}
!49 = distinct !{!49, !18}
!50 = distinct !{!50, !18}
!51 = distinct !{!51, !18}
!52 = distinct !{!52, !18}
end_hunk_1
