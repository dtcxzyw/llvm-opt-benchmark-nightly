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
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.0162178 = phi i32 [ %i.b, %.lr.ph.preheader ], [ %.1163, %bb.e ] ; 3 uses
  %i.ad = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !9  ; 2 uses
  %i.ag = icmp eq i16 %i.af, -1
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ad
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !9  ; 2 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.ak = add i16 %i.ai, 1
  store i16 %i.ak, ptr %i.aj, align 2, !tbaa !9
  %i.al = trunc i64 %i.ad to i8
  %i.am = add i32 %.0162178, -1
  %i.an = zext i32 %.0162178 to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.an
  store i8 %i.al, ptr %i.ao, align 1, !tbaa !10
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ap = add i16 %i.ai, %i.af
  store i16 %i.ap, ptr %i.aj, align 2, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1163 = phi i32 [ %i.am, %bb.c ], [ %.0162178, %bb.d ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.e
  %i.aq = trunc i32 %i.a to i16
  %i.ar = add i16 %i.aq, 1
  %i.as = zext i32 %i.k to i64                    ; 3 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.as
  store i16 %i.ar, ptr %i.at, align 2, !tbaa !9
  %i.au = icmp eq i32 %.1163, %i.b
  br i1 %i.au, label %bb.f, label %.lr.ph188

bb.f:                                             ; preds = %._crit_edge
  %i.av = zext i32 %i.a to i64                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.av
  br label %.lr.ph197

.preheader173:                                    ; preds = %._crit_edge192, %.thread
  %i.ax = phi i64 [ %i.ac, %.thread ], [ %i.av, %._crit_edge192 ] ; 2 uses
  %i.ay = zext nneg i32 %i.j to i64
  %i.az = zext nneg i32 %i.b to i64               ; 3 uses
  %i.ba = shl nuw i32 %i.j, 1
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ax
  br label %.preheader172

.lr.ph197:                                        ; preds = %bb.f, %._crit_edge192
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %._crit_edge192 ], [ 0, %bb.f ] ; 2 uses
  %.0159194 = phi i64 [ %i.bx, %._crit_edge192 ], [ 0, %bb.f ] ; 4 uses
  %.0160193 = phi i64 [ %i.bw, %._crit_edge192 ], [ 0, %bb.f ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv217
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !9  ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.0160193 ; 3 uses
  store i64 %.0159194, ptr %i.bf, align 1, !tbaa !13
  %i.bg = icmp sgt i16 %i.be, 8
  br i1 %i.bg, label %.lr.ph191.preheader, label %._crit_edge192

.lr.ph191.preheader:                              ; preds = %.lr.ph197
  %i.bh = zext nneg i16 %i.be to i64              ; 2 uses
  %i.bi = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 16)
  %i.bj = add nsw i64 %i.bi, -9                   ; 2 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 24
  br i1 %min.iters.check, label %.lr.ph191.preheader240, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph191.preheader
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %i.bm = shl i64 %n.vec, 3
  %i.bn = or disjoint i64 %i.bm, 8
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.0159194, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = shl nuw i64 %index, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store <2 x i64> %broadcast.splat, ptr %i.bq, align 1, !tbaa !13
  store <2 x i64> %broadcast.splat, ptr %i.br, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %._crit_edge192, label %.lr.ph191.preheader240

.lr.ph191.preheader240:                           ; preds = %.lr.ph191.preheader, %middle.block
  %indvars.iv214.ph = phi i64 [ 8, %.lr.ph191.preheader ], [ %i.bn, %middle.block ]
  br label %.lr.ph191

.lr.ph191:                                        ; preds = %.lr.ph191.preheader240, %.lr.ph191
  %indvars.iv214 = phi i64 [ %indvars.iv.next215, %.lr.ph191 ], [ %indvars.iv214.ph, %.lr.ph191.preheader240 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 %indvars.iv214
  store i64 %.0159194, ptr %i.bt, align 1, !tbaa !13
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 8 ; 2 uses
  %i.bu = icmp samesign ult i64 %indvars.iv.next215, %i.bh
  br i1 %i.bu, label %.lr.ph191, label %._crit_edge192, !llvm.loop !20

._crit_edge192:                                   ; preds = %.lr.ph191, %middle.block, %.lr.ph197
  %i.bv = sext i16 %i.be to i64
  %i.bw = add i64 %.0160193, %i.bv
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %i.bx = add i64 %.0159194, 72340172838076673
  %exitcond221.not = icmp eq i64 %indvars.iv.next218, %i.as
  br i1 %exitcond221.not, label %.preheader173, label %.lr.ph197, !llvm.loop !21

.preheader172:                                    ; preds = %.preheader173, %.preheader172
  %.0155200 = phi i64 [ 0, %.preheader173 ], [ %i.cj, %.preheader172 ] ; 2 uses
  %.0156199 = phi i64 [ 0, %.preheader173 ], [ %i.ci, %.preheader172 ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.0155200 ; 2 uses
  %i.bz = and i64 %.0156199, %i.az
  %i.ca = load i8, ptr %i.by, align 1, !tbaa !10
  %i.cb = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bz
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !10
  %i.cc = add nuw nsw i64 %.0156199, %i.ay
  %i.cd = and i64 %i.cc, %i.az
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !10
  %i.cg = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cd
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !10
  %i.ch = add nuw nsw i64 %.0156199, %i.bb
  %i.ci = and i64 %i.ch, %i.az
  %i.cj = add nuw nsw i64 %.0155200, 2            ; 2 uses
  %i.ck = icmp samesign ult i64 %i.cj, %i.ax
  br i1 %i.ck, label %.preheader172, label %.loopexit174, !llvm.loop !22

.lr.ph188:                                        ; preds = %._crit_edge, %._crit_edge184
  %indvars.iv209 = phi i64 [ %indvars.iv.next210, %._crit_edge184 ], [ 0, %._crit_edge ] ; 3 uses
  %.0152186 = phi i32 [ %.1153.lcssa, %._crit_edge184 ], [ 0, %._crit_edge ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv209
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !9  ; 5 uses
  %i.cn = icmp sgt i16 %i.cm, 0
  br i1 %i.cn, label %.lr.ph183, label %._crit_edge184

.lr.ph183:                                        ; preds = %.lr.ph188
  %i.co = trunc i64 %indvars.iv209 to i8          ; 3 uses
  %i.cp = icmp eq i16 %i.cm, 1
  br i1 %i.cp, label %.epil.preheader, label %.lr.ph183.new

.lr.ph183.new:                                    ; preds = %.lr.ph183
  %i.cq = and i16 %i.cm, 32766
  %unroll_iter = zext nneg i16 %i.cq to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph183.new
  %.1153180 = phi i32 [ %.0152186, %.lr.ph183.new ], [ %.2.1, %bb.k ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph183.new ], [ %niter.next.1, %bb.k ]
  %i.cr = zext nneg i32 %.1153180 to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cr
  store i8 %i.co, ptr %i.cs, align 1, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.1153.pn = phi i32 [ %.1153180, %bb.g ], [ %.2, %bb.h ]
  %.pn = add nuw i32 %.1153.pn, %i.j
  %.2 = and i32 %.pn, %i.b                        ; 4 uses
  %i.ct = icmp ugt i32 %.2, %.1163
  br i1 %i.ct, label %bb.h, label %bb.i, !llvm.loop !23

bb.i:                                             ; preds = %bb.h
  %i.cu = zext nneg i32 %.2 to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cu
  store i8 %i.co, ptr %i.cv, align 1, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.1153.pn.1 = phi i32 [ %.2, %bb.i ], [ %.2.1, %bb.j ]
  %.pn.1 = add nuw i32 %.1153.pn.1, %i.j
  %.2.1 = and i32 %.pn.1, %i.b                    ; 5 uses
  %i.cw = icmp ugt i32 %.2.1, %.1163
  br i1 %i.cw, label %bb.j, label %bb.k, !llvm.loop !23

bb.k:                                             ; preds = %bb.j
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge184.loopexit.unr-lcssa, label %bb.g, !llvm.loop !24

._crit_edge184.loopexit.unr-lcssa:                ; preds = %bb.k
  %i.cx = and i16 %i.cm, 1
  %lcmp.mod.not = icmp eq i16 %i.cx, 0
  br i1 %lcmp.mod.not, label %._crit_edge184, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge184.loopexit.unr-lcssa, %.lr.ph183
  %.1153180.epil.init = phi i32 [ %.0152186, %.lr.ph183 ], [ %.2.1, %._crit_edge184.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod243 = trunc i16 %i.cm to i1
  tail call void @llvm.assume(i1 %lcmp.mod243)
  %i.cy = zext nneg i32 %.1153180.epil.init to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cy
  store i8 %i.co, ptr %i.cz, align 1, !tbaa !10
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %.1153.pn.epil = phi i32 [ %.1153180.epil.init, %.epil.preheader ], [ %.2.epil, %bb.l ]
  %.pn.epil = add nuw i32 %.1153.pn.epil, %i.j
  %.2.epil = and i32 %.pn.epil, %i.b              ; 3 uses
  %i.da = icmp ugt i32 %.2.epil, %.1163
  br i1 %i.da, label %bb.l, label %._crit_edge184, !llvm.loop !23

._crit_edge184:                                   ; preds = %._crit_edge184.loopexit.unr-lcssa, %bb.l, %.lr.ph188
  %.1153.lcssa = phi i32 [ %.0152186, %.lr.ph188 ], [ %.2.1, %._crit_edge184.loopexit.unr-lcssa ], [ %.2.epil, %bb.l ]
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %exitcond213.not = icmp eq i64 %indvars.iv.next210, %i.as
  br i1 %exitcond213.not, label %.loopexit174, label %.lr.ph188, !llvm.loop !25

.loopexit174:                                     ; preds = %._crit_edge184, %.preheader172
  %wide.trip.count225 = zext i32 %i.a to i64      ; 2 uses
  %xtraiter245 = and i64 %wide.trip.count225, 1
  %i.db = icmp eq i32 %3, 0
  br i1 %i.db, label %.epil.preheader244, label %.loopexit174.new

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
  %i.dc = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv222.epil.init
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !10
  %i.de = trunc i64 %indvars.iv222.epil.init to i16
  %i.df = add i16 %i.de, 1
  %i.dg = zext i8 %i.dd to i64
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.dg ; 2 uses
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !9  ; 2 uses
  %i.dj = add i16 %i.di, 1
  store i16 %i.dj, ptr %i.dh, align 2, !tbaa !9
  %i.dk = zext i16 %i.di to i64
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.dk
  store i16 %i.df, ptr %i.dl, align 2, !tbaa !9
  br label %.preheader

.preheader:                                       ; preds = %.preheader.unr-lcssa, %.epil.preheader244
  %i.dm = shl i32 %3, 16                          ; 2 uses
  %i.dn = sub i32 %i.dm, %i.a
  %i.do = add i32 %i.dm, 65536
  %i.dp = sub i32 %i.do, %i.a
  %umax230 = tail call i32 @llvm.umax.i32(i32 %i.k, i32 1)
  %wide.trip.count231 = zext i32 %umax230 to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.m, %.loopexit174.new
  %indvars.iv222 = phi i64 [ 0, %.loopexit174.new ], [ %indvars.iv.next223.1, %bb.m ] ; 4 uses
  %niter249 = phi i64 [ 0, %.loopexit174.new ], [ %niter249.next.1, %bb.m ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv222
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !10
  %6 = trunc nuw i64 %indvars.iv222 to i32
  %7 = add i32 %i.a, %6
  %8 = trunc i32 %7 to i16
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ds ; 2 uses
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !9  ; 2 uses
  %i.dv = add i16 %i.du, 1
  store i16 %i.dv, ptr %i.dt, align 2, !tbaa !9
  %i.dw = zext i16 %i.du to i64
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.dw
  store i16 %8, ptr %i.dx, align 2, !tbaa !9
  %indvars.iv.next223 = or disjoint i64 %indvars.iv222, 1 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv.next223
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !10
  %9 = trunc nuw i64 %indvars.iv.next223 to i32
  %10 = add i32 %i.a, %9
  %11 = trunc i32 %10 to i16
  %i.ea = zext i8 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ea ; 2 uses
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !9  ; 2 uses
  %i.ed = add i16 %i.ec, 1
  store i16 %i.ed, ptr %i.eb, align 2, !tbaa !9
  %i.ee = zext i16 %i.ec to i64
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ee
  store i16 %11, ptr %i.ef, align 2, !tbaa !9
  %indvars.iv.next223.1 = add nuw nsw i64 %indvars.iv222, 2 ; 2 uses
  %niter249.next.1 = add i64 %niter249, 2         ; 2 uses
  %niter249.ncmp.1 = icmp eq i64 %niter249.next.1, %unroll_iter248
  br i1 %niter249.ncmp.1, label %.preheader.unr-lcssa, label %bb.m, !llvm.loop !26

bb.n:                                             ; preds = %.preheader, %bb.r
  %indvars.iv227 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next228, %bb.r ] ; 5 uses
  %.0148202 = phi i32 [ 0, %.preheader ], [ %.1, %bb.r ] ; 5 uses
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv227
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !9  ; 2 uses
  switch i16 %i.eh, label %bb.q [
    i16 0, label %bb.o
    i16 -1, label %bb.p
    i16 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv227
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  store i32 %i.dp, ptr %i.ej, align 4, !tbaa !15
  br label %bb.r

bb.p:                                             ; preds = %bb.n, %bb.n
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv227 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  store i32 %i.dn, ptr %i.el, align 4, !tbaa !15
  %i.em = add i32 %.0148202, -1
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !16
  %i.en = add i32 %.0148202, 1
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.eo = sext i16 %i.eh to i32                   ; 4 uses
  %i.ep = add nsw i32 %i.eo, -1
  %i.eq = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ep, i1 true)
  %i.er = xor i32 %i.eq, 31
  %i.es = sub i32 %3, %i.er                       ; 2 uses
  %i.et = shl i32 %i.eo, %i.es
  %i.eu = shl i32 %i.es, 16
  %i.ev = sub i32 %i.eu, %i.et
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv227 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  store i32 %i.ev, ptr %i.ex, align 4, !tbaa !15
  %i.ey = sub i32 %.0148202, %i.eo
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !16
  %i.ez = add i32 %.0148202, %i.eo
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.q
  %.1 = phi i32 [ %i.ez, %bb.q ], [ %.0148202, %bb.o ], [ %i.en, %bb.p ]
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond232 = icmp eq i64 %indvars.iv.next228, %wide.trip.count231
  br i1 %exitcond232, label %.loopexit, label %bb.n, !llvm.loop !27

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
  %i.l = load i16, ptr %i.k, align 2, !tbaa !9
  %.not = icmp eq i16 %i.l, 0
  br i1 %.not, label %bb.c, label %.critedge.loopexit

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %exitcond.not, label %.critedge._crit_edge, label %.lr.ph, !llvm.loop !30

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
  br i1 %.not157.us, label %.preheader188, label %.lr.ph209.split.us, !llvm.loop !31

.preheader188:                                    ; preds = %.lr.ph209.split.us, %bb.d, %.preheader189
  %.1137.lcssa = phi ptr [ %.0136228, %.preheader189 ], [ %i.ab, %bb.d ], [ %i.t, %.lr.ph209.split.us ] ; 4 uses
  %.1123.lcssa = phi i32 [ %.0122232, %.preheader189 ], [ %i.ac, %bb.d ], [ %i.u, %.lr.ph209.split.us ] ; 2 uses
  %.0114.lcssa = phi i32 [ %.0117234, %.preheader189 ], [ %i.x, %bb.d ], [ %i.q, %.lr.ph209.split.us ] ; 2 uses
  %i.w = add i32 %.0114.lcssa, 3                  ; 2 uses
  %.not158215 = icmp ult i32 %.1118.lcssa, %i.w
  br i1 %.not158215, label %._crit_edge, label %.lr.ph218

.lr.ph209.split:                                  ; preds = %.lr.ph209, %bb.d
  %i.x = phi i32 [ %i.ad, %bb.d ], [ %i.o, %.lr.ph209 ] ; 2 uses
  %.1123208 = phi i32 [ %i.ac, %bb.d ], [ %.0122232, %.lr.ph209 ]
  %.1137207 = phi ptr [ %i.ab, %bb.d ], [ %.0136228, %.lr.ph209 ] ; 3 uses
  %i.y = icmp ugt ptr %.1137207, %i.g
  br i1 %i.y, label %.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph209.split
  %i.z = add i32 %.1123208, %i.p                  ; 2 uses
  %i.aa = trunc i32 %i.z to i16
end_hunk_0
begin_hunk_1_@FSE_writeNCount_generic:bb.a
  %i.bc = sub nsw i32 %.0132230, %i.bb            ; 6 uses
  %i.bd = add nsw i32 %i.ax, 1                    ; 2 uses
  %.not163 = icmp slt i32 %i.bd, %.0129231
  %i.be = select i1 %.not163, i32 0, i32 %i.ba
  %spec.select = add nsw i32 %i.be, %i.bd         ; 3 uses
  %i.bf = shl i32 %spec.select, %.4
  %i.bg = add i32 %i.bf, %.5127                   ; 3 uses
  %i.bh = add nsw i32 %.4, %.0133229
  %i.bi = icmp slt i32 %spec.select, %i.ba
  %.neg = sext i1 %i.bi to i32
  %i.bj = add i32 %i.bh, %.neg                    ; 3 uses
  %i.bk = icmp ne i32 %spec.select, 1
  %i.bl = icmp sgt i32 %i.bc, 0
  br i1 %i.bl, label %.preheader, label %.thread

.preheader:                                       ; preds = %.thread178
  %i.bm = icmp slt i32 %i.bc, %.0129231
  br i1 %i.bm, label %.lr.ph224, label %._crit_edge225

.lr.ph224:                                        ; preds = %.preheader, %.lr.ph224
  %.1130223 = phi i32 [ %i.bo, %.lr.ph224 ], [ %.0129231, %.preheader ]
  %.1134222 = phi i32 [ %i.bn, %.lr.ph224 ], [ %.0133229, %.preheader ]
  %i.bn = add nsw i32 %.1134222, -1               ; 2 uses
  %i.bo = ashr i32 %.1130223, 1                   ; 3 uses
  %i.bp = icmp slt i32 %i.bc, %i.bo
  br i1 %i.bp, label %.lr.ph224, label %._crit_edge225, !llvm.loop !33

._crit_edge225:                                   ; preds = %.lr.ph224, %.preheader
  %.1134.lcssa = phi i32 [ %.0133229, %.preheader ], [ %i.bn, %.lr.ph224 ]
  %.1130.lcssa = phi i32 [ %.0129231, %.preheader ], [ %i.bo, %.lr.ph224 ]
  %i.bq = icmp sgt i32 %i.bj, 16
  br i1 %i.bq, label %bb.g, label %bb.i

bb.g:                                             ; preds = %._crit_edge225
  %i.br = icmp ugt ptr %.4140, %i.g
  %or.cond169 = select i1 %.not160, i1 %i.br, i1 false
  br i1 %or.cond169, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = trunc i32 %i.bg to i16
  store i16 %i.bs, ptr %.4140, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.4140, i64 2
  %i.bu = lshr i32 %i.bg, 16
  %i.bv = add nsw i32 %i.bj, -16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge225
  %.5141 = phi ptr [ %i.bt, %bb.h ], [ %.4140, %._crit_edge225 ] ; 2 uses
  %.6128 = phi i32 [ %i.bu, %bb.h ], [ %i.bg, %._crit_edge225 ] ; 2 uses
  %.5 = phi i32 [ %i.bv, %bb.h ], [ %i.bj, %._crit_edge225 ] ; 2 uses
  %i.bw = icmp ult i32 %i.at, %i.b
  %i.bx = icmp ne i32 %i.bc, 1
  %i.by = and i1 %i.bw, %i.bx
  br i1 %i.by, label %bb.b, label %.critedge._crit_edge, !llvm.loop !34

.critedge._crit_edge:                             ; preds = %bb.i, %.critedge, %bb.c
  %.0136.lcssa.ph = phi ptr [ %.0136228, %bb.c ], [ %.0136228, %.critedge ], [ %.5141, %bb.i ] ; 3 uses
  %.0132.lcssa.ph = phi i32 [ %.0132230, %bb.c ], [ %.0132230, %.critedge ], [ %i.bc, %bb.i ]
  %.0122.lcssa.ph = phi i32 [ %.0122232, %bb.c ], [ %.0122232, %.critedge ], [ %.6128, %bb.i ]
  %.0119.lcssa.ph = phi i32 [ %.0119233, %bb.c ], [ %.0119233, %.critedge ], [ %.5, %bb.i ]
  %i.bz = icmp eq i32 %.0132.lcssa.ph, 1
  %i.ca = add nsw i32 %.0119.lcssa.ph, 7
  %i.cb = sdiv i32 %i.ca, 8
  %i.cc = sext i32 %i.cb to i64
  br i1 %i.bz, label %bb.j, label %.thread

bb.j:                                             ; preds = %.critedge._crit_edge
  %.not162 = icmp eq i32 %5, 0
  %i.cd = getelementptr inbounds i8, ptr %i.a, i64 -2
  %i.ce = icmp ugt ptr %.0136.lcssa.ph, %i.cd
  %or.cond171 = select i1 %.not162, i1 %i.ce, i1 false
  br i1 %or.cond171, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = trunc i32 %.0122.lcssa.ph to i16
  store i16 %i.cf, ptr %.0136.lcssa.ph, align 1
  %i.cg = getelementptr inbounds i8, ptr %.0136.lcssa.ph, i64 %i.cc
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %0 to i64
  %i.cj = sub i64 %i.ch, %i.ci
  br label %.thread

.thread:                                          ; preds = %.thread178, %bb.e, %bb.g, %.lr.ph209.split, %bb.a, %bb.j, %.critedge._crit_edge, %bb.k
  %.4147 = phi i64 [ %i.cj, %bb.k ], [ -1, %.critedge._crit_edge ], [ -70, %bb.j ], [ -70, %.lr.ph209.split ], [ -1, %bb.a ], [ -70, %bb.g ], [ -1, %.thread178 ], [ -70, %bb.e ]
  ret i64 %.4147
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 5, 13) i32 @FSE_optimalTableLog_internal(i32 noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = trunc i64 %1 to i32                      ; 2 uses
  %i.b = add i32 %i.a, -1
  %i.c = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.b, i1 true)
  %i.d = xor i32 %i.c, 31
  %i.e = sub i32 %i.d, %3
  %i.f = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.a, i1 true)
  %i.g = sub nuw nsw i32 32, %i.f
  %i.h = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true)
  %i.i = sub nuw nsw i32 33, %i.h
  %i.j = tail call range(i32 1, 33) i32 @llvm.umin.i32(i32 %i.g, i32 %i.i)
  %i.k = icmp eq i32 %0, 0
  %spec.store.select = select i1 %i.k, i32 11, i32 %0
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %spec.store.select)
  %.1 = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %spec.select)
  %spec.store.select1 = tail call i32 @llvm.umax.i32(i32 %.1, i32 5)
  %spec.store.select2 = tail call i32 @llvm.umin.i32(i32 %spec.store.select1, i32 12)
  ret i32 %spec.store.select2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 5, 13) i32 @FSE_optimalTableLog(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = trunc i64 %1 to i32                      ; 2 uses
  %i.b = add i32 %i.a, -1
  %i.c = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.b, i1 true)
  %i.d = sub nsw i32 29, %i.c
  %i.e = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.a, i1 true)
  %i.f = sub nuw nsw i32 32, %i.e
  %i.g = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true)
  %i.h = sub nuw nsw i32 33, %i.g
  %i.i = tail call range(i32 1, 33) i32 @llvm.umin.i32(i32 %i.f, i32 %i.h)
  %i.j = icmp eq i32 %0, 0
  %spec.store.select.i = select i1 %i.j, i32 11, i32 %0
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %spec.store.select.i)
  %.1.i = tail call i32 @llvm.umax.i32(i32 %i.i, i32 %spec.select.i)
  %spec.store.select1.i = tail call i32 @llvm.umax.i32(i32 %.1.i, i32 5)
  %spec.store.select2.i = tail call range(i32 5, 13) i32 @llvm.umin.i32(i32 %spec.store.select1.i, i32 12)
  ret i32 %spec.store.select2.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i64 -44, 13) i64 @FSE_normalizeCount(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %spec.store.select = select i1 %i.a, i32 11, i32 %1 ; 7 uses
  %i.b = icmp ult i32 %spec.store.select, 5
  br i1 %i.b, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i32 %spec.store.select, 12
  br i1 %i.c, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = trunc i64 %3 to i32
  %i.e = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.d, i1 true)
  %i.f = sub nuw nsw i32 32, %i.e
  %i.g = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %4, i1 true)
  %i.h = sub nuw nsw i32 33, %i.g
  %i.i = tail call range(i32 1, 33) i32 @llvm.umin.i32(i32 %i.f, i32 %i.h)
  %i.j = icmp samesign ult i32 %spec.store.select, %i.i
  br i1 %i.j, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %5, 0
  %i.k = select i1 %.not, i16 1, i16 -1           ; 2 uses
  %i.l = sub nuw nsw i32 62, %spec.store.select
  %i.m = zext nneg i32 %i.l to i64                ; 7 uses
  %i.n = and i64 %3, 4294967295
  %i.o = udiv i64 4611686018427387904, %i.n
  %i.p = add nsw i64 %i.m, -20
  %i.q = shl nuw nsw i32 1, %spec.store.select    ; 3 uses
  %i.r = zext nneg i32 %spec.store.select to i64  ; 7 uses
  %i.s = lshr i64 %3, %i.r
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.m
  %.073104 = phi i16 [ 0, %bb.d ], [ %.275, %bb.m ] ; 4 uses
  %.076103 = phi i32 [ 0, %bb.d ], [ %.278, %bb.m ] ; 3 uses
  %.079102 = phi i32 [ 0, %bb.d ], [ %i.as, %bb.m ] ; 3 uses
  %.080101 = phi i32 [ %i.q, %bb.d ], [ %.181, %bb.m ] ; 3 uses
  %i.u = zext i32 %.079102 to i64                 ; 4 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !17   ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = icmp eq i64 %3, %i.x
  br i1 %i.y, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = icmp eq i32 %i.w, 0
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.u
  store i16 0, ptr %i.aa, align 2, !tbaa !9
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %.not88 = icmp ugt i32 %i.w, %i.t
  br i1 %.not88, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.u
  store i16 %i.k, ptr %i.ab, align 2, !tbaa !9
  %i.ac = add nsw i32 %.080101, -1
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ad = mul i64 %i.o, %i.x                      ; 2 uses
  %i.ae = lshr i64 %i.ad, %i.m                    ; 4 uses
  %i.af = trunc nuw nsw i64 %i.ae to i16
  %6 = trunc nuw nsw i64 %i.ae to i32             ; 2 uses
  %7 = and i32 %6, 65528
  %i.ag = icmp eq i32 %7, 0
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @FSE_normalizeCount.rtbTable, i64 %i.ae
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !17
  %i.aj = zext i32 %i.ai to i64
  %i.ak = shl i64 %i.aj, %i.p
  %i.al = shl i64 %i.ae, %i.m
  %i.am = sub i64 %i.ad, %i.al
  %i.an = icmp ugt i64 %i.am, %i.ak
  %8 = zext i1 %i.an to i32
  %9 = add nuw nsw i32 %8, %6
  %10 = trunc nuw nsw i32 %9 to i16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.070 = phi i16 [ %10, %bb.k ], [ %i.af, %bb.j ] ; 4 uses
  %i.ao = zext nneg i16 %.070 to i32
  %i.ap = icmp ugt i16 %.070, %.073104
  %spec.select = select i1 %i.ap, i32 %.079102, i32 %.076103
  %spec.select89 = tail call i16 @llvm.umax.i16(i16 %.070, i16 %.073104)
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.u
  store i16 %.070, ptr %i.aq, align 2, !tbaa !9
  %i.ar = sub nsw i32 %.080101, %i.ao
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.g
  %.181 = phi i32 [ %.080101, %bb.g ], [ %i.ac, %bb.i ], [ %i.ar, %bb.l ] ; 3 uses
  %.278 = phi i32 [ %.076103, %bb.g ], [ %.076103, %bb.i ], [ %spec.select, %bb.l ] ; 2 uses
  %.275 = phi i16 [ %.073104, %bb.g ], [ %.073104, %bb.i ], [ %spec.select89, %bb.l ]
  %i.as = add i32 %.079102, 1                     ; 2 uses
  %.not85 = icmp ugt i32 %i.as, %4
  br i1 %.not85, label %bb.n, label %bb.e, !llvm.loop !35

bb.n:                                             ; preds = %bb.m
  %i.at = sub nsw i32 0, %.181
  %i.au = zext i32 %.278 to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.au ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !9  ; 2 uses
  %i.ax = ashr i16 %i.aw, 1
  %i.ay = sext i16 %i.ax to i32
  %.not86 = icmp sgt i32 %i.ay, %i.at
  br i1 %.not86, label %bb.as, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = mul i64 %3, 3
  %i.ba = add nuw nsw i32 %spec.store.select, 1
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = lshr i64 %i.az, %i.bb                   ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = add nuw i32 %4, 1                       ; 3 uses
  %wide.trip.count.i = zext i32 %i.be to i64      ; 5 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.w, %bb.o
  %indvars.iv.i = phi i64 [ 0, %bb.o ], [ %indvars.iv.next.i, %bb.w ] ; 5 uses
  %.0118156.i = phi i32 [ 0, %bb.o ], [ %.1119.i, %bb.w ] ; 4 uses
  %.0131154.i = phi i64 [ %3, %bb.o ], [ %.1132.i, %bb.w ] ; 4 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !17 ; 5 uses
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  store i16 0, ptr %i.bi, align 2, !tbaa !9
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %.not148.i = icmp ugt i32 %i.bg, %i.t
  br i1 %.not148.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  store i16 %i.k, ptr %i.bj, align 2, !tbaa !9
  %i.bk = add i32 %.0118156.i, 1
  %i.bl = zext i32 %i.bg to i64
  %i.bm = sub i64 %.0131154.i, %i.bl
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %.not149.i = icmp ugt i32 %i.bg, %i.bd
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  br i1 %.not149.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i16 1, ptr %i.bn, align 2, !tbaa !9
  %i.bo = add i32 %.0118156.i, 1
  %i.bp = zext i32 %i.bg to i64
  %i.bq = sub i64 %.0131154.i, %i.bp
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  store i16 -2, ptr %i.bn, align 2, !tbaa !9
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s, %bb.q
  %.1132.i = phi i64 [ %.0131154.i, %bb.q ], [ %i.bm, %bb.s ], [ %i.bq, %bb.u ], [ %.0131154.i, %bb.v ] ; 6 uses
  %.1119.i = phi i32 [ %.0118156.i, %bb.q ], [ %i.bk, %bb.s ], [ %i.bo, %bb.u ], [ %.0118156.i, %bb.v ] ; 5 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.i, label %bb.x, label %bb.p, !llvm.loop !36

bb.x:                                             ; preds = %bb.w
  %i.br = sub i32 %i.q, %.1119.i                  ; 4 uses
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %select.unfold, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = zext i32 %i.br to i64
  %i.bu = udiv i64 %.1132.i, %i.bt
  %i.bv = and i64 %i.bc, 4294967295
  %i.bw = icmp ugt i64 %i.bu, %i.bv
  br i1 %i.bw, label %bb.z, label %bb.aj

bb.z:                                             ; preds = %bb.y
  %i.bx = mul i64 %.1132.i, 3
  %i.by = shl i32 %i.br, 1
  %i.bz = zext i32 %i.by to i64
  %i.ca = udiv i64 %i.bx, %i.bz
  %i.cb = trunc i64 %i.ca to i32                  ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.cc = icmp eq i32 %4, 0
  br i1 %i.cc, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.z
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ag, %.new
  %indvars.iv170.i = phi i64 [ 0, %.new ], [ %indvars.iv.next171.i.1, %bb.ag ] ; 4 uses
  %.2120159.i = phi i32 [ %.1119.i, %.new ], [ %.3.i.1, %bb.ag ] ; 3 uses
  %.2133157.i = phi i64 [ %.1132.i, %.new ], [ %.3134.i.1, %bb.ag ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.ag ]
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv170.i ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !9
  %i.cf = icmp eq i16 %i.ce, -2
  br i1 %i.cf, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv170.i
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !17 ; 2 uses
  %.not147.i = icmp ugt i32 %i.ch, %i.cb
  br i1 %.not147.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i16 1, ptr %i.cd, align 2, !tbaa !9
  %i.ci = add i32 %.2120159.i, 1
  %i.cj = zext i32 %i.ch to i64
  %i.ck = sub i64 %.2133157.i, %i.cj
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %.3134.i = phi i64 [ %i.ck, %bb.ac ], [ %.2133157.i, %bb.ab ], [ %.2133157.i, %bb.aa ] ; 3 uses
  %.3.i = phi i32 [ %i.ci, %bb.ac ], [ %.2120159.i, %bb.ab ], [ %.2120159.i, %bb.aa ] ; 3 uses
  %indvars.iv.next171.i = or disjoint i64 %indvars.iv170.i, 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next171.i ; 2 uses
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !9
  %i.cn = icmp eq i16 %i.cm, -2
  br i1 %i.cn, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next171.i
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !17 ; 2 uses
  %.not147.i.1 = icmp ugt i32 %i.cp, %i.cb
  br i1 %.not147.i.1, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i16 1, ptr %i.cl, align 2, !tbaa !9
  %i.cq = add i32 %.3.i, 1
  %i.cr = zext i32 %i.cp to i64
  %i.cs = sub i64 %.3134.i, %i.cr
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.3134.i.1 = phi i64 [ %i.cs, %bb.af ], [ %.3134.i, %bb.ae ], [ %.3134.i, %bb.ad ] ; 3 uses
  %.3.i.1 = phi i32 [ %i.cq, %bb.af ], [ %.3.i, %bb.ae ], [ %.3.i, %bb.ad ] ; 3 uses
  %indvars.iv.next171.i.1 = add nuw nsw i64 %indvars.iv170.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.aa, !llvm.loop !37

.unr-lcssa:                                       ; preds = %bb.ag
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.z
  %indvars.iv170.i.epil.init = phi i64 [ 0, %bb.z ], [ %indvars.iv.next171.i.1, %.unr-lcssa ] ; 2 uses
  %.2120159.i.epil.init = phi i32 [ %.1119.i, %bb.z ], [ %.3.i.1, %.unr-lcssa ] ; 3 uses
  %.2133157.i.epil.init = phi i64 [ %.1132.i, %bb.z ], [ %.3134.i.1, %.unr-lcssa ] ; 3 uses
  %lcmp.mod126 = trunc i32 %i.be to i1
  tail call void @llvm.assume(i1 %lcmp.mod126)
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv170.i.epil.init ; 2 uses
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !9
  %i.cv = icmp eq i16 %i.cu, -2
  br i1 %i.cv, label %bb.ah, label %.epilog-lcssa

bb.ah:                                            ; preds = %.epil.preheader
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv170.i.epil.init
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !17 ; 2 uses
  %.not147.i.epil = icmp ugt i32 %i.cx, %i.cb
  br i1 %.not147.i.epil, label %.epilog-lcssa, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i16 1, ptr %i.ct, align 2, !tbaa !9
  %i.cy = add i32 %.2120159.i.epil.init, 1
  %i.cz = zext i32 %i.cx to i64
  %i.da = sub i64 %.2133157.i.epil.init, %i.cz
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader, %bb.ah, %bb.ai, %.unr-lcssa
  %.3134.i.lcssa = phi i64 [ %.3134.i.1, %.unr-lcssa ], [ %i.da, %bb.ai ], [ %.2133157.i.epil.init, %bb.ah ], [ %.2133157.i.epil.init, %.epil.preheader ]
  %.3.i.lcssa = phi i32 [ %.3.i.1, %.unr-lcssa ], [ %i.cy, %bb.ai ], [ %.2120159.i.epil.init, %bb.ah ], [ %.2120159.i.epil.init, %.epil.preheader ] ; 2 uses
  %i.db = sub i32 %i.q, %.3.i.lcssa
  br label %bb.aj

bb.aj:                                            ; preds = %.epilog-lcssa, %bb.y
end_hunk_1
