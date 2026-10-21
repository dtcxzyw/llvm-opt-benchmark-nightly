Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_opt_dce?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@lj_ir_mode = external hidden local_unnamed_addr constant [102 x i8], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @lj_opt_dce(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [101 x ptr], align 16             ; 55 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load i32, ptr %i.b, align 8, !tbaa !31
  %i.d = and i32 %i.c, 262144
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.f = load i16, ptr %i.e, align 2, !tbaa !32   ; 2 uses
  %.not.i = icmp eq i16 %i.f, 0
  br i1 %.not.i, label %dce_marksnap.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %wide.trip.count28.i = zext i16 %i.f to i64
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %.lr.ph21.i
  %indvars.iv25.i = phi i64 [ 0, %.lr.ph21.i ], [ %indvars.iv.next26.i, %._crit_edge.i ] ; 2 uses
  %1 = load ptr, ptr %i.g, align 8, !tbaa !33
  %2 = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv25.i ; 2 uses
  %3 = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.j = load i32, ptr %2, align 4, !tbaa !36
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.n = load i8, ptr %i.m, align 2, !tbaa !37    ; 4 uses
  %.not23.i = icmp eq i8 %i.n, 0
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %wide.trip.count.i = zext i8 %i.n to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.o = icmp eq i8 %i.n, 1
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 254
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.f ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !38
  %i.r = and i32 %i.q, 65535                      ; 2 uses
  %i.s = icmp samesign ugt i32 %i.r, 32768
  br i1 %i.s, label %bb.d, label %.lr.ph.i.1

bb.d:                                             ; preds = %.lr.ph.i
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.u = zext nneg i32 %i.r to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4, !tbaa !40
  %i.y = or i8 %i.x, 32
  store i8 %i.y, ptr %i.w, align 4, !tbaa !40
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.d, %.lr.ph.i
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !38
  %i.ac = and i32 %i.ab, 65535                    ; 2 uses
  %i.ad = icmp samesign ugt i32 %i.ac, 32768
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.1
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.af = zext nneg i32 %i.ac to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !40
  %i.aj = or i8 %i.ai, 32
  store i8 %i.aj, ptr %i.ah, align 4, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !9

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod15 = trunc i8 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod15)
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.epil.init
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !38
  %i.am = and i32 %i.al, 65535                    ; 2 uses
  %i.an = icmp samesign ugt i32 %i.am, 32768
  br i1 %i.an, label %bb.g, label %._crit_edge.i

bb.g:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.ap = zext nneg i32 %i.am to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !40
  %i.at = or i8 %i.as, 32
  store i8 %i.at, ptr %i.ar, align 4, !tbaa !40
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.g, %.lr.ph.i.epil.preheader, %bb.c
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next26.i, %wide.trip.count28.i
  br i1 %exitcond29.not.i, label %dce_marksnap.exit, label %bb.c, !llvm.loop !10

dce_marksnap.exit:                                ; preds = %._crit_edge.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 402 ; 50 uses
  %wide.gep = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 0, i64 1>
  %wide.gep14 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 2, i64 3>
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x ptr> %wide.gep, ptr %i.a, align 16, !tbaa !43
  store <2 x ptr> %wide.gep14, ptr %i.av, align 16, !tbaa !43
  %wide.gep.1 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 4, i64 5>
  %wide.gep14.1 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 6, i64 7>
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <2 x ptr> %wide.gep.1, ptr %i.aw, align 16, !tbaa !43
  store <2 x ptr> %wide.gep14.1, ptr %i.ax, align 16, !tbaa !43
  %wide.gep.2 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 8, i64 9>
  %wide.gep14.2 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 10, i64 11>
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <2 x ptr> %wide.gep.2, ptr %i.ay, align 16, !tbaa !43
  store <2 x ptr> %wide.gep14.2, ptr %i.az, align 16, !tbaa !43
  %wide.gep.3 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 12, i64 13>
  %wide.gep14.3 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 14, i64 15>
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <2 x ptr> %wide.gep.3, ptr %i.ba, align 16, !tbaa !43
  store <2 x ptr> %wide.gep14.3, ptr %i.bb, align 16, !tbaa !43
  %wide.gep.4 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 16, i64 17>
  %wide.gep14.4 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 18, i64 19>
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <2 x ptr> %wide.gep.4, ptr %i.bc, align 16, !tbaa !43
  store <2 x ptr> %wide.gep14.4, ptr %i.bd, align 16, !tbaa !43
  %wide.gep.5 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 20, i64 21>
  %wide.gep14.5 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 22, i64 23>
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <2 x ptr> %wide.gep.5, ptr %i.be, align 16, !tbaa !43
  store <2 x ptr> %wide.gep14.5, ptr %i.bf, align 16, !tbaa !43
  %wide.gep.6 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 24, i64 25>
  %wide.gep14.6 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 26, i64 27>
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <2 x ptr> %wide.gep.6, ptr %i.bg, align 16, !tbaa !43
  store <2 x ptr> %wide.gep14.6, ptr %i.bh, align 16, !tbaa !43
  %wide.gep.7 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 28, i64 29>
  %wide.gep14.7 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 30, i64 31>
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <2 x ptr> %wide.gep.7, ptr %i.bi, align 16, !tbaa !43
  store <2 x ptr> %wide.gep14.7, ptr %i.bj, align 16, !tbaa !43
  %wide.gep.8 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 32, i64 33>
  %wide.gep14.8 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 34, i64 35>
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store <2 x ptr> %wide.gep.8, ptr %i.bk, align 16, !tbaa !43
  store <2 x ptr> %wide.gep14.8, ptr %i.bl, align 16, !tbaa !43
  %wide.gep.9 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 36, i64 37>
  %wide.gep14.9 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 38, i64 39>
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store <2 x ptr> %wide.gep.9, ptr %i.bm, align 16, !tbaa !43
  store <2 x ptr> %wide.gep14.9, ptr %i.bn, align 16, !tbaa !43
  %wide.gep.10 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 40, i64 41>
  %wide.gep14.10 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 42, i64 43>
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store <2 x ptr> %wide.gep.10, ptr %i.bo, align 16, !tbaa !43
  store <2 x ptr> %wide.gep14.10, ptr %i.bp, align 16, !tbaa !43
  %wide.gep.11 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 44, i64 45>
  %wide.gep14.11 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 46, i64 47>
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store <2 x ptr> %wide.gep.11, ptr %i.bq, align 16, !tbaa !43
  store <2 x ptr> %wide.gep14.11, ptr %i.br, align 16, !tbaa !43
  %wide.gep.12 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 48, i64 49>
  %wide.gep14.12 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 50, i64 51>
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store <2 x ptr> %wide.gep.12, ptr %i.bs, align 16, !tbaa !43
  store <2 x ptr> %wide.gep14.12, ptr %i.bt, align 16, !tbaa !43
  %wide.gep.13 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 52, i64 53>
  %wide.gep14.13 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 54, i64 55>
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  store <2 x ptr> %wide.gep.13, ptr %i.bu, align 16, !tbaa !43
  store <2 x ptr> %wide.gep14.13, ptr %i.bv, align 16, !tbaa !43
  %wide.gep.14 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 56, i64 57>
  %wide.gep14.14 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 58, i64 59>
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store <2 x ptr> %wide.gep.14, ptr %i.bw, align 16, !tbaa !43
  store <2 x ptr> %wide.gep14.14, ptr %i.bx, align 16, !tbaa !43
  %wide.gep.15 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 60, i64 61>
  %wide.gep14.15 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 62, i64 63>
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  store <2 x ptr> %wide.gep.15, ptr %i.by, align 16, !tbaa !43
  store <2 x ptr> %wide.gep14.15, ptr %i.bz, align 16, !tbaa !43
  %wide.gep.16 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 64, i64 65>
  %wide.gep14.16 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 66, i64 67>
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  store <2 x ptr> %wide.gep.16, ptr %i.ca, align 16, !tbaa !43
  store <2 x ptr> %wide.gep14.16, ptr %i.cb, align 16, !tbaa !43
  %wide.gep.17 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 68, i64 69>
  %wide.gep14.17 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 70, i64 71>
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  store <2 x ptr> %wide.gep.17, ptr %i.cc, align 16, !tbaa !43
  store <2 x ptr> %wide.gep14.17, ptr %i.cd, align 16, !tbaa !43
  %wide.gep.18 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 72, i64 73>
  %wide.gep14.18 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 74, i64 75>
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  store <2 x ptr> %wide.gep.18, ptr %i.ce, align 16, !tbaa !43
  store <2 x ptr> %wide.gep14.18, ptr %i.cf, align 16, !tbaa !43
  %wide.gep.19 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 76, i64 77>
  %wide.gep14.19 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 78, i64 79>
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  store <2 x ptr> %wide.gep.19, ptr %i.cg, align 16, !tbaa !43
  store <2 x ptr> %wide.gep14.19, ptr %i.ch, align 16, !tbaa !43
  %wide.gep.20 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 80, i64 81>
  %wide.gep14.20 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 82, i64 83>
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  store <2 x ptr> %wide.gep.20, ptr %i.ci, align 16, !tbaa !43
  store <2 x ptr> %wide.gep14.20, ptr %i.cj, align 16, !tbaa !43
  %wide.gep.21 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 84, i64 85>
  %wide.gep14.21 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 86, i64 87>
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 688
  store <2 x ptr> %wide.gep.21, ptr %i.ck, align 16, !tbaa !43
  store <2 x ptr> %wide.gep14.21, ptr %i.cl, align 16, !tbaa !43
  %wide.gep.22 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 88, i64 89>
  %wide.gep14.22 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 90, i64 91>
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  store <2 x ptr> %wide.gep.22, ptr %i.cm, align 16, !tbaa !43
  store <2 x ptr> %wide.gep14.22, ptr %i.cn, align 16, !tbaa !43
  %wide.gep.23 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 92, i64 93>
  %wide.gep14.23 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 94, i64 95>
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 752
  store <2 x ptr> %wide.gep.23, ptr %i.co, align 16, !tbaa !43
  store <2 x ptr> %wide.gep14.23, ptr %i.cp, align 16, !tbaa !43
  %wide.gep.24 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 96, i64 97>
  %wide.gep14.24 = getelementptr inbounds nuw [2 x i8], ptr %i.au, <2 x i64> <i64 98, i64 99>
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 784
  store <2 x ptr> %wide.gep.24, ptr %i.cq, align 16, !tbaa !43
  store <2 x ptr> %wide.gep14.24, ptr %i.cr, align 16, !tbaa !43
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 602
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 800
  store ptr %i.cs, ptr %i.ct, align 16, !tbaa !43
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !44
  %.02326.i = add i32 %i.cv, -1                   ; 2 uses
  %i.cw = icmp ugt i32 %.02326.i, 32768
  br i1 %i.cw, label %.lr.ph.i8, label %dce_propagate.exit

.lr.ph.i8:                                        ; preds = %dce_marksnap.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.cy = zext i32 %.02326.i to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.p, %.lr.ph.i8
  %indvars.iv29.i = phi i64 [ %i.cy, %.lr.ph.i8 ], [ %indvars.iv.next30.i, %bb.p ] ; 2 uses
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !39
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv29.i ; 8 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 4, !tbaa !40  ; 3 uses
  %i.dd = and i8 %i.dc, 32
  %.not.i9 = icmp eq i8 %i.dd, 0
  br i1 %.not.i9, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.de = and i8 %i.dc, -33
  store i8 %i.de, ptr %i.db, align 4, !tbaa !40
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.da, i64 5
  %.pre.i.a = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !40
  %.pre32.i.a = zext i8 %.pre.i.a to i64
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.df = or i8 %i.dc, 96
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 5
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !40
  %i.di = zext i8 %i.dh to i64                    ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr @lj_ir_mode, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !40
  %i.dl = and i8 %i.dk, %i.df
  %i.dm = icmp ult i8 %i.dl, 96
  br i1 %i.dm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
end_hunk_0
