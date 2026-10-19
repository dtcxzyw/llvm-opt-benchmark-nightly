Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dirac_dwt?download=true
inline.NumInlined: 15
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 63
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"Unsupported bit depth = %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Unknown wavelet type %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 -1094995529, 1) i32 @ff_spatial_idwt_init(ptr nofree noundef writeonly initializes((0, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 94 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !46   ; 9 uses
  %i.f = load <2 x i32>, ptr %1, align 8, !tbaa !14
  store <2 x i32> %i.f, ptr %i.c, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !47   ; 19 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.h, ptr %i.i, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %3, ptr %i.m, align 4, !tbaa !17
  switch i32 %4, label %bb.ai [
    i32 8, label %bb.b
    i32 10, label %bb.m
    i32 12, label %bb.x
  ]

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.n, ptr %i.l, align 8, !tbaa !16
  %i.o = icmp sgt i32 %3, 0
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %.075.i = add nsw i32 %3, -1                    ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.q = zext i32 %.075.i to i64                  ; 10 uses
  switch i32 %2, label %.lr.ph.split.i.preheader [
    i32 2, label %.lr.ph.split.us.i.preheader
    i32 3, label %.lr.ph.split.us77.i
    i32 4, label %.lr.ph.split.us80.i
    i32 5, label %.lr.ph.split.us83.i.preheader
    i32 6, label %.lr.ph.split.us83.i.preheader
    i32 8, label %.lr.ph.split.us86.i.preheader
  ]

.lr.ph.split.us86.i.preheader:                    ; preds = %.lr.ph.i
  %i.r = insertelement <2 x ptr> poison, ptr %i.b, i64 0
  %i.s = shufflevector <2 x ptr> %i.r, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.us86.i

.lr.ph.split.us83.i.preheader:                    ; preds = %.lr.ph.i, %.lr.ph.i
  %smin255 = tail call i32 @llvm.smin.i32(i32 %.075.i, i32 0) ; 2 uses
  %5 = sub i32 %3, %smin255
  %xtraiter256 = and i32 %5, 7                    ; 2 uses
  %lcmp.mod257.not = icmp eq i32 %xtraiter256, 0
  br i1 %lcmp.mod257.not, label %.lr.ph.split.us83.i.prol.loopexit, label %.lr.ph.split.us83.i.prol

.lr.ph.split.us83.i.prol:                         ; preds = %.lr.ph.split.us83.i.preheader, %.lr.ph.split.us83.i.prol
  %indvars.iv95.i.prol = phi i64 [ %indvars.iv.next96.i.prol, %.lr.ph.split.us83.i.prol ], [ %i.q, %.lr.ph.split.us83.i.preheader ] ; 2 uses
  %prol.iter258 = phi i32 [ %prol.iter258.next, %.lr.ph.split.us83.i.prol ], [ 0, %.lr.ph.split.us83.i.preheader ]
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %indvars.iv95.i.prol
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  store i32 1, ptr %i.u, align 8, !tbaa !19
  %indvars.iv.next96.i.prol = add nsw i64 %indvars.iv95.i.prol, -1 ; 2 uses
  %prol.iter258.next = add i32 %prol.iter258, 1   ; 2 uses
  %prol.iter258.cmp.not = icmp eq i32 %prol.iter258.next, %xtraiter256
  br i1 %prol.iter258.cmp.not, label %.lr.ph.split.us83.i.prol.loopexit, label %.lr.ph.split.us83.i.prol, !llvm.loop !35

.lr.ph.split.us83.i.prol.loopexit:                ; preds = %.lr.ph.split.us83.i.prol, %.lr.ph.split.us83.i.preheader
  %indvars.iv95.i.unr = phi i64 [ %i.q, %.lr.ph.split.us83.i.preheader ], [ %indvars.iv.next96.i.prol, %.lr.ph.split.us83.i.prol ]
  %6 = sub i32 %smin255, %3
  %7 = icmp ugt i32 %6, -8
  br i1 %7, label %._crit_edge.i, label %.lr.ph.split.us83.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %i.v = and i32 %3, 1
  %lcmp.mod260.not = icmp eq i32 %i.v, 0
  br i1 %lcmp.mod260.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol

.lr.ph.split.us.i.prol:                           ; preds = %.lr.ph.split.us.i.preheader
  %i.w = shl i32 %i.h, %.075.i
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %i.q ; 7 uses
  store ptr %i.b, ptr %i.x, align 8, !tbaa !20
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr inbounds i8, ptr %i.b, i64 %i.y ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.b, ptr %i.ab, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %i.b, ptr %i.ad, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr %i.z, ptr %i.ae, align 8, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store i32 -5, ptr %i.af, align 8, !tbaa !19
  %indvars.iv.next105.i.prol = add nsw i64 %i.q, -1
  br label %.lr.ph.split.us.i.prol.loopexit

.lr.ph.split.us.i.prol.loopexit:                  ; preds = %.lr.ph.split.us.i.prol, %.lr.ph.split.us.i.preheader
  %indvars.iv104.i.unr = phi i64 [ %i.q, %.lr.ph.split.us.i.preheader ], [ %indvars.iv.next105.i.prol, %.lr.ph.split.us.i.prol ]
  %i.ag = icmp eq i32 %.075.i, 0
  br i1 %i.ag, label %._crit_edge.thread.i, label %.lr.ph.split.us.i

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %i.ah = and i32 %3, 7                           ; 2 uses
  %xtraiter262 = zext nneg i32 %i.ah to i64
  %lcmp.mod263.not = icmp eq i32 %i.ah, 0
  br i1 %lcmp.mod263.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol

.lr.ph.split.i.prol:                              ; preds = %.lr.ph.split.i.preheader, %.lr.ph.split.i.prol
  %indvars.iv107.i.prol = phi i64 [ %indvars.iv.next108.i.prol, %.lr.ph.split.i.prol ], [ %i.q, %.lr.ph.split.i.preheader ] ; 2 uses
  %prol.iter264 = phi i64 [ %prol.iter264.next, %.lr.ph.split.i.prol ], [ 0, %.lr.ph.split.i.preheader ]
  %i.ai = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %indvars.iv107.i.prol
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 160
  store i32 0, ptr %i.aj, align 8, !tbaa !19
  %indvars.iv.next108.i.prol = add nsw i64 %indvars.iv107.i.prol, -1 ; 2 uses
  %prol.iter264.next = add i64 %prol.iter264, 1   ; 2 uses
  %prol.iter264.cmp.not = icmp eq i64 %prol.iter264.next, %xtraiter262
  br i1 %prol.iter264.cmp.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol, !llvm.loop !36

.lr.ph.split.i.prol.loopexit:                     ; preds = %.lr.ph.split.i.prol, %.lr.ph.split.i.preheader
  %indvars.iv107.i.unr = phi i64 [ %i.q, %.lr.ph.split.i.preheader ], [ %indvars.iv.next108.i.prol, %.lr.ph.split.i.prol ]
  %i.ak = icmp ult i32 %3, 8
  br i1 %i.ak, label %._crit_edge.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i
  %indvars.iv104.i = phi i64 [ %indvars.iv.next105.i.1, %.lr.ph.split.us.i ], [ %indvars.iv104.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 4 uses
  %i.al = trunc nuw nsw i64 %indvars.iv104.i to i32
  %i.am = shl i32 %i.h, %i.al
  %i.an = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %indvars.iv104.i ; 7 uses
  store ptr %i.b, ptr %i.an, align 8, !tbaa !20
  %i.ao = sext i32 %i.am to i64
  %i.ap = getelementptr inbounds i8, ptr %i.b, i64 %i.ao ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.b, ptr %i.ar, align 8, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store ptr %i.b, ptr %i.at, align 8, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store ptr %i.ap, ptr %i.au, align 8, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  store i32 -5, ptr %i.av, align 8, !tbaa !19
  %indvars.iv.next105.i = add nsw i64 %indvars.iv104.i, -1 ; 3 uses
  %i.aw = trunc nuw nsw i64 %indvars.iv.next105.i to i32
  %i.ax = shl i32 %i.h, %i.aw
  %i.ay = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %indvars.iv.next105.i ; 7 uses
  store ptr %i.b, ptr %i.ay, align 8, !tbaa !20
  %i.az = sext i32 %i.ax to i64
  %i.ba = getelementptr inbounds i8, ptr %i.b, i64 %i.az ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !20
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr %i.b, ptr %i.bc, align 8, !tbaa !20
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store ptr %i.ba, ptr %i.bd, align 8, !tbaa !20
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store ptr %i.b, ptr %i.be, align 8, !tbaa !20
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  store ptr %i.ba, ptr %i.bf, align 8, !tbaa !20
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  store i32 -5, ptr %i.bg, align 8, !tbaa !19
  %indvars.iv.next105.i.1 = add nsw i64 %indvars.iv104.i, -2
  %.not124.i.1 = icmp eq i64 %indvars.iv.next105.i, 0
  br i1 %.not124.i.1, label %._crit_edge.thread.i, label %.lr.ph.split.us.i, !llvm.loop !37

.lr.ph.split.us77.i:                              ; preds = %.lr.ph.i, %spatial_compose53i_init_8bit.exit.us.i
  %indvars.iv101.i = phi i64 [ %indvars.iv.next102.i, %spatial_compose53i_init_8bit.exit.us.i ], [ %i.q, %.lr.ph.i ] ; 4 uses
  %i.bh = trunc nuw nsw i64 %indvars.iv101.i to i32 ; 2 uses
  %i.bi = ashr i32 %i.e, %i.bh                    ; 2 uses
  %i.bj = shl i32 %i.h, %i.bh                     ; 3 uses
  %i.bk = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %indvars.iv101.i ; 5 uses
  %i.bl = add nsw i32 %i.bi, -1                   ; 5 uses
  %.not.i8.i.us.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i8.i.us.i, label %avpriv_mirror.exit13.thread.i.us.i, label %.preheader.i.us.i

.preheader.i.us.i:                                ; preds = %.lr.ph.split.us77.i
  %i.bm = icmp ult i32 %i.bl, -2
  br i1 %i.bm, label %.lr.ph.i.us.i, label %avpriv_mirror.exit13.i.us.i

avpriv_mirror.exit13.i.us.i:                      ; preds = %.preheader.i.us.i
  %i.bn = mul nsw i32 %i.bj, -2
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds i8, ptr %i.b, i64 %i.bo
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !20
  %.not.i.us.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.us.i, label %spatial_compose53i_init_8bit.exit.us.i, label %.lr.ph17.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.preheader.i.us.i
  %i.bq = shl nsw i32 %i.bl, 1                    ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us.i
  %.09.i915.i.us.i = phi i32 [ -2, %.lr.ph.i.us.i ], [ %.1.i12.i.us.i, %bb.c ] ; 2 uses
  %i.br = icmp sgt i32 %.09.i915.i.us.i, 0
  %spec.select.i11.i.us.i = select i1 %i.br, i32 %i.bq, i32 0
  %.1.i12.i.us.i = sub nsw i32 %spec.select.i11.i.us.i, %.09.i915.i.us.i ; 3 uses
  %i.bs = icmp ugt i32 %.1.i12.i.us.i, %i.bl
  br i1 %i.bs, label %bb.c, label %avpriv_mirror.exit13.thread19.i.us.i, !llvm.loop !0

avpriv_mirror.exit13.thread19.i.us.i:             ; preds = %bb.c
  %i.bt = mul nsw i32 %.1.i12.i.us.i, %i.bj
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %i.b, i64 %i.bu
  store ptr %i.bv, ptr %i.bk, align 8, !tbaa !20
  br label %.lr.ph17.i.us.i

.lr.ph17.i.us.i:                                  ; preds = %avpriv_mirror.exit13.thread19.i.us.i, %avpriv_mirror.exit13.i.us.i
  %.pre-phi.i = phi i32 [ %i.bq, %avpriv_mirror.exit13.thread19.i.us.i ], [ -4, %avpriv_mirror.exit13.i.us.i ]
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph17.i.us.i
  %.09.i16.i.us.i = phi i32 [ -1, %.lr.ph17.i.us.i ], [ %.1.i.i.us.i, %bb.d ] ; 2 uses
  %i.bw = icmp sgt i32 %.09.i16.i.us.i, 0
  %spec.select.i.i.us.i = select i1 %i.bw, i32 %.pre-phi.i, i32 0
  %.1.i.i.us.i = sub nsw i32 %spec.select.i.i.us.i, %.09.i16.i.us.i ; 3 uses
  %i.bx = icmp ugt i32 %.1.i.i.us.i, %i.bl
  br i1 %i.bx, label %bb.d, label %spatial_compose53i_init_8bit.exit.us.i, !llvm.loop !0

avpriv_mirror.exit13.thread.i.us.i:               ; preds = %.lr.ph.split.us77.i
  store ptr %i.b, ptr %i.bk, align 8, !tbaa !20
  br label %spatial_compose53i_init_8bit.exit.us.i

spatial_compose53i_init_8bit.exit.us.i:           ; preds = %bb.d, %avpriv_mirror.exit13.thread.i.us.i, %avpriv_mirror.exit13.i.us.i
  %.0.i.i.us.i = phi i32 [ 0, %avpriv_mirror.exit13.thread.i.us.i ], [ -1, %avpriv_mirror.exit13.i.us.i ], [ %.1.i.i.us.i, %bb.d ]
  %i.by = mul nsw i32 %.0.i.i.us.i, %i.bj
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %i.b, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !20
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  store i32 -1, ptr %i.cc, align 8, !tbaa !19
  %indvars.iv.next102.i = add nsw i64 %indvars.iv101.i, -1
  %i.cd = icmp sgt i64 %indvars.iv101.i, 0
  br i1 %i.cd, label %.lr.ph.split.us77.i, label %._crit_edge.i, !llvm.loop !37

.lr.ph.split.us80.i:                              ; preds = %.lr.ph.i, %.lr.ph.split.us80.i
  %indvars.iv98.i = phi i64 [ %indvars.iv.next99.i, %.lr.ph.split.us80.i ], [ %i.q, %.lr.ph.i ] ; 4 uses
  %i.ce = trunc nuw nsw i64 %indvars.iv98.i to i32 ; 2 uses
  %i.cf = ashr i32 %i.e, %i.ce
  %i.cg = shl i32 %i.h, %i.ce                     ; 3 uses
  %i.ch = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %indvars.iv98.i ; 9 uses
  store ptr %i.b, ptr %i.ch, align 8, !tbaa !20
  %i.ci = sext i32 %i.cg to i64
  %i.cj = getelementptr inbounds i8, ptr %i.b, i64 %i.ci ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !20
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr %i.b, ptr %i.cl, align 8, !tbaa !20
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store ptr %i.cj, ptr %i.cm, align 8, !tbaa !20
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store ptr %i.b, ptr %i.cn, align 8, !tbaa !20
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  store ptr %i.cj, ptr %i.co, align 8, !tbaa !20
  %i.cp = tail call i32 @llvm.smin.i32(i32 %i.cf, i32 2) ; 2 uses
  %..i32.i.us.i = add nsw i32 %i.cp, -2
  %i.cq = mul nsw i32 %..i32.i.us.i, %i.cg
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds i8, ptr %i.b, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !20
  %..i.i.us.i = add nsw i32 %i.cp, -1
  %i.cu = mul nsw i32 %..i.i.us.i, %i.cg
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds i8, ptr %i.b, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !20
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ch, i64 64
end_hunk_0
begin_hunk_1_@ff_spatial_idwt_init:bb.a
  %i.el = icmp sgt i32 %.09.i2937.i.us.i, 0
  %spec.select.i31.i.us.i = select i1 %i.el, i32 %i.ek, i32 0
  %.1.i32.i.us.i = sub nsw i32 %spec.select.i31.i.us.i, %.09.i2937.i.us.i ; 3 uses
  %i.em = icmp ugt i32 %.1.i32.i.us.i, %i.dv
  br i1 %i.em, label %bb.e, label %avpriv_mirror.exit33.thread47.i.us.i, !llvm.loop !0

avpriv_mirror.exit33.thread47.i.us.i:             ; preds = %bb.e
  %i.en = mul nsw i32 %.1.i32.i.us.i, %i.dt
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds i8, ptr %i.b, i64 %i.eo
  store ptr %i.ep, ptr %i.du, align 8, !tbaa !20
  br label %.lr.ph39.i.us.i

.lr.ph39.i.us.i:                                  ; preds = %avpriv_mirror.exit33.thread47.i.us.i, %avpriv_mirror.exit33.i.us.i
  %.pre-phi111.i = phi i32 [ %i.ek, %avpriv_mirror.exit33.thread47.i.us.i ], [ -8, %avpriv_mirror.exit33.i.us.i ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph39.i.us.i
  %.09.i2338.i.us.i = phi i32 [ -3, %.lr.ph39.i.us.i ], [ %.1.i26.i.us.i, %bb.f ] ; 2 uses
  %i.eq = icmp sgt i32 %.09.i2338.i.us.i, 0
  %spec.select.i25.i.us.i = select i1 %i.eq, i32 %.pre-phi111.i, i32 0
  %.1.i26.i.us.i = sub nsw i32 %spec.select.i25.i.us.i, %.09.i2338.i.us.i ; 3 uses
  %i.er = icmp ugt i32 %.1.i26.i.us.i, %i.dv
  br i1 %i.er, label %bb.f, label %avpriv_mirror.exit27.thread.i.us.i, !llvm.loop !0

avpriv_mirror.exit27.thread.i.us.i:               ; preds = %bb.f
  %i.es = mul nsw i32 %.1.i26.i.us.i, %i.dt
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds i8, ptr %i.b, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !20
  br label %.lr.ph42.i.us.i

.lr.ph42.i.us.i:                                  ; preds = %avpriv_mirror.exit27.thread.i.us.i, %avpriv_mirror.exit27.i.us.i
  %.pre-phi113.i = phi i32 [ %.pre-phi111.i, %avpriv_mirror.exit27.thread.i.us.i ], [ -6, %avpriv_mirror.exit27.i.us.i ] ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph42.i.us.i
  %.09.i1741.i.us.i = phi i32 [ -2, %.lr.ph42.i.us.i ], [ %.1.i20.i.us.i, %bb.g ] ; 2 uses
  %i.ew = icmp sgt i32 %.09.i1741.i.us.i, 0
  %spec.select.i19.i.us.i = select i1 %i.ew, i32 %.pre-phi113.i, i32 0
  %.1.i20.i.us.i = sub nsw i32 %spec.select.i19.i.us.i, %.09.i1741.i.us.i ; 3 uses
  %i.ex = icmp ugt i32 %.1.i20.i.us.i, %i.dv
  br i1 %i.ex, label %bb.g, label %avpriv_mirror.exit21.thread.i.us.i, !llvm.loop !0

avpriv_mirror.exit21.thread.i.us.i:               ; preds = %bb.g
  %i.ey = mul nsw i32 %.1.i20.i.us.i, %i.dt
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds i8, ptr %i.b, i64 %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !20
  br label %.lr.ph45.i.us.i

.lr.ph45.i.us.i:                                  ; preds = %avpriv_mirror.exit21.thread.i.us.i, %avpriv_mirror.exit21.i.us.i
  %.pre-phi115.i = phi i32 [ %.pre-phi113.i, %avpriv_mirror.exit21.thread.i.us.i ], [ -4, %avpriv_mirror.exit21.i.us.i ]
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph45.i.us.i
  %.09.i44.i.us.i = phi i32 [ -1, %.lr.ph45.i.us.i ], [ %.1.i.i72.us.i, %bb.h ] ; 2 uses
  %i.fc = icmp sgt i32 %.09.i44.i.us.i, 0
  %spec.select.i.i71.us.i = select i1 %i.fc, i32 %.pre-phi115.i, i32 0
  %.1.i.i72.us.i = sub nsw i32 %spec.select.i.i71.us.i, %.09.i44.i.us.i ; 3 uses
  %i.fd = icmp ugt i32 %.1.i.i72.us.i, %i.dv
  br i1 %i.fd, label %bb.h, label %spatial_compose97i_init_8bit.exit.us.i, !llvm.loop !0

avpriv_mirror.exit33.thread.i.us.i:               ; preds = %.lr.ph.split.us86.i
  store <2 x ptr> %i.s, ptr %i.du, align 8, !tbaa !20
  %i.fe = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store ptr %i.b, ptr %i.fe, align 8, !tbaa !20
  br label %spatial_compose97i_init_8bit.exit.us.i

spatial_compose97i_init_8bit.exit.us.i:           ; preds = %bb.h, %avpriv_mirror.exit33.thread.i.us.i, %avpriv_mirror.exit21.i.us.i
  %.0.i.i73.us.i = phi i32 [ 0, %avpriv_mirror.exit33.thread.i.us.i ], [ -1, %avpriv_mirror.exit21.i.us.i ], [ %.1.i.i72.us.i, %bb.h ]
  %i.ff = mul nsw i32 %.0.i.i73.us.i, %i.dt
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds i8, ptr %i.b, i64 %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !20
  %i.fj = getelementptr inbounds nuw i8, ptr %i.du, i64 64
  store i32 -3, ptr %i.fj, align 8, !tbaa !19
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.fk = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.fk, label %.lr.ph.split.us86.i, label %._crit_edge.i, !llvm.loop !37

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i
  %indvars.iv107.i = phi i64 [ %indvars.iv.next108.i.7, %.lr.ph.split.i ], [ %indvars.iv107.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 9 uses
  %i.fl = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %indvars.iv107.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 160
  store i32 0, ptr %i.fm, align 8, !tbaa !19
  %i.fn = getelementptr [72 x i8], ptr %0, i64 %indvars.iv107.i
  %i.fo = getelementptr i8, ptr %i.fn, i64 88
  store i32 0, ptr %i.fo, align 8, !tbaa !19
  %i.fp = getelementptr [72 x i8], ptr %0, i64 %indvars.iv107.i
  %i.fq = getelementptr i8, ptr %i.fp, i64 16
  store i32 0, ptr %i.fq, align 8, !tbaa !19
  %i.fr = getelementptr [72 x i8], ptr %0, i64 %indvars.iv107.i
  %i.fs = getelementptr i8, ptr %i.fr, i64 -56
  store i32 0, ptr %i.fs, align 8, !tbaa !19
  %i.ft = getelementptr [72 x i8], ptr %0, i64 %indvars.iv107.i
  %i.fu = getelementptr i8, ptr %i.ft, i64 -128
  store i32 0, ptr %i.fu, align 8, !tbaa !19
  %i.fv = getelementptr [72 x i8], ptr %0, i64 %indvars.iv107.i
  %i.fw = getelementptr i8, ptr %i.fv, i64 -200
  store i32 0, ptr %i.fw, align 8, !tbaa !19
  %i.fx = getelementptr [72 x i8], ptr %0, i64 %indvars.iv107.i
  %i.fy = getelementptr i8, ptr %i.fx, i64 -272
  store i32 0, ptr %i.fy, align 8, !tbaa !19
  %indvars.iv.next108.i.6 = add nsw i64 %indvars.iv107.i, -7 ; 2 uses
  %i.fz = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %indvars.iv.next108.i.6
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 160
  store i32 0, ptr %i.ga, align 8, !tbaa !19
  %indvars.iv.next108.i.7 = add nsw i64 %indvars.iv107.i, -8
  %.not125.i.7 = icmp eq i64 %indvars.iv.next108.i.6, 0
  br i1 %.not125.i.7, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !37

._crit_edge.i:                                    ; preds = %spatial_compose97i_init_8bit.exit.us.i, %.lr.ph.split.us83.i.prol.loopexit, %.lr.ph.split.us83.i, %spatial_compose53i_init_8bit.exit.us.i, %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i, %bb.b
  switch i32 %2, label %spatial_idwt_init_8bit.exit [
    i32 2, label %._crit_edge.thread.i
    i32 3, label %bb.i
    i32 4, label %._crit_edge.thread118.i
    i32 5, label %bb.j
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.l
  ]

._crit_edge.thread.i:                             ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i, %._crit_edge.i
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @spatial_compose_dd97i_dy_8bit, ptr %i.gb, align 8, !tbaa !22
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @vertical_compose53iL0_8bit, ptr %i.gc, align 8, !tbaa !23
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @vertical_compose_dd97iH0_8bit, ptr %i.gd, align 8, !tbaa !23
  br label %.sink.split.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @spatial_compose_dirac53i_dy_8bit, ptr %i.ge, align 8, !tbaa !22
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @vertical_compose53iL0_8bit, ptr %i.gf, align 8, !tbaa !23
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @vertical_compose_dirac53iH0_8bit, ptr %i.gg, align 8, !tbaa !23
  br label %.sink.split.i

._crit_edge.thread118.i:                          ; preds = %.lr.ph.split.us80.i, %._crit_edge.i
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @spatial_compose_dd137i_dy_8bit, ptr %i.gh, align 8, !tbaa !22
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @vertical_compose_dd137iL0_8bit, ptr %i.gi, align 8, !tbaa !23
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @vertical_compose_dd97iH0_8bit, ptr %i.gj, align 8, !tbaa !23
  br label %.sink.split.i

bb.j:                                             ; preds = %._crit_edge.i, %._crit_edge.i
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @spatial_compose_haari_dy_8bit, ptr %i.gk, align 8, !tbaa !22
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @vertical_compose_haar_8bit, ptr %i.gl, align 8, !tbaa !24
  %i.gm = icmp eq i32 %2, 5
  %spec.select.i = select i1 %i.gm, ptr @horizontal_compose_haar0i_8bit, ptr @horizontal_compose_haar1i_8bit
  br label %.sink.split.i

bb.k:                                             ; preds = %._crit_edge.i
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @spatial_compose_fidelity_8bit, ptr %i.gn, align 8, !tbaa !22
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @vertical_compose_fidelityiL0_8bit, ptr %i.go, align 8, !tbaa !23
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @vertical_compose_fidelityiH0_8bit, ptr %i.gp, align 8, !tbaa !23
  br label %.sink.split.i

bb.l:                                             ; preds = %._crit_edge.i
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @spatial_compose_daub97i_dy_8bit, ptr %i.gq, align 8, !tbaa !22
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @vertical_compose_daub97iL0_8bit, ptr %i.gr, align 8, !tbaa !23
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @vertical_compose_daub97iH0_8bit, ptr %i.gs, align 8, !tbaa !23
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @vertical_compose_daub97iL1_8bit, ptr %i.gt, align 8, !tbaa !25
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @vertical_compose_daub97iH1_8bit, ptr %i.gu, align 8, !tbaa !26
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.l, %bb.k, %bb.j, %._crit_edge.thread118.i, %bb.i, %._crit_edge.thread.i
  %horizontal_compose_dd97i_8bit.sink.i = phi ptr [ @horizontal_compose_dd97i_8bit, %._crit_edge.thread.i ], [ @horizontal_compose_dirac53i_8bit, %bb.i ], [ @horizontal_compose_dd137i_8bit, %._crit_edge.thread118.i ], [ %spec.select.i, %bb.j ], [ @horizontal_compose_fidelityi_8bit, %bb.k ], [ @horizontal_compose_daub97i_8bit, %bb.l ]
  %.sink.i = phi i32 [ 7, %._crit_edge.thread.i ], [ 3, %bb.i ], [ 7, %._crit_edge.thread118.i ], [ 1, %bb.j ], [ 0, %bb.k ], [ 5, %bb.l ]
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %horizontal_compose_dd97i_8bit.sink.i, ptr %i.gv, align 8, !tbaa !27
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sink.i, ptr %i.gw, align 8, !tbaa !28
  br label %spatial_idwt_init_8bit.exit.thread

bb.m:                                             ; preds = %bb.a
  %i.gx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.gx, ptr %i.l, align 8, !tbaa !16
  %i.gy = icmp sgt i32 %3, 0
  br i1 %i.gy, label %.lr.ph.i34, label %._crit_edge.i27

.lr.ph.i34:                                       ; preds = %bb.m
  %.075.i26 = add nsw i32 %3, -1                  ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.ha = zext i32 %.075.i26 to i64               ; 10 uses
  switch i32 %2, label %.lr.ph.split.i101.preheader [
    i32 2, label %.lr.ph.split.us.i96.preheader
    i32 3, label %.lr.ph.split.us77.i77
    i32 4, label %.lr.ph.split.us80.i71
    i32 5, label %.lr.ph.split.us83.i68.preheader
    i32 6, label %.lr.ph.split.us83.i68.preheader
    i32 8, label %.lr.ph.split.us86.i35.preheader
  ]

.lr.ph.split.us86.i35.preheader:                  ; preds = %.lr.ph.i34
  %i.hb = insertelement <2 x ptr> poison, ptr %i.b, i64 0
  %i.hc = shufflevector <2 x ptr> %i.hb, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.us86.i35

.lr.ph.split.us83.i68.preheader:                  ; preds = %.lr.ph.i34, %.lr.ph.i34
  %smin245 = tail call i32 @llvm.smin.i32(i32 %.075.i26, i32 0) ; 2 uses
  %8 = sub i32 %3, %smin245
  %xtraiter246 = and i32 %8, 7                    ; 2 uses
  %lcmp.mod247.not = icmp eq i32 %xtraiter246, 0
  br i1 %lcmp.mod247.not, label %.lr.ph.split.us83.i68.prol.loopexit, label %.lr.ph.split.us83.i68.prol

.lr.ph.split.us83.i68.prol:                       ; preds = %.lr.ph.split.us83.i68.preheader, %.lr.ph.split.us83.i68.prol
  %indvars.iv95.i69.prol = phi i64 [ %indvars.iv.next96.i70.prol, %.lr.ph.split.us83.i68.prol ], [ %i.ha, %.lr.ph.split.us83.i68.preheader ] ; 2 uses
  %prol.iter248 = phi i32 [ %prol.iter248.next, %.lr.ph.split.us83.i68.prol ], [ 0, %.lr.ph.split.us83.i68.preheader ]
  %i.hd = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %indvars.iv95.i69.prol
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 160
  store i32 1, ptr %i.he, align 8, !tbaa !19
  %indvars.iv.next96.i70.prol = add nsw i64 %indvars.iv95.i69.prol, -1 ; 2 uses
  %prol.iter248.next = add i32 %prol.iter248, 1   ; 2 uses
  %prol.iter248.cmp.not = icmp eq i32 %prol.iter248.next, %xtraiter246
  br i1 %prol.iter248.cmp.not, label %.lr.ph.split.us83.i68.prol.loopexit, label %.lr.ph.split.us83.i68.prol, !llvm.loop !38

.lr.ph.split.us83.i68.prol.loopexit:              ; preds = %.lr.ph.split.us83.i68.prol, %.lr.ph.split.us83.i68.preheader
  %indvars.iv95.i69.unr = phi i64 [ %i.ha, %.lr.ph.split.us83.i68.preheader ], [ %indvars.iv.next96.i70.prol, %.lr.ph.split.us83.i68.prol ]
  %9 = sub i32 %smin245, %3
  %10 = icmp ugt i32 %9, -8
  br i1 %10, label %._crit_edge.i27, label %.lr.ph.split.us83.i68

.lr.ph.split.us.i96.preheader:                    ; preds = %.lr.ph.i34
  %i.hf = and i32 %3, 1
  %lcmp.mod250.not = icmp eq i32 %i.hf, 0
  br i1 %lcmp.mod250.not, label %.lr.ph.split.us.i96.prol.loopexit, label %.lr.ph.split.us.i96.prol

.lr.ph.split.us.i96.prol:                         ; preds = %.lr.ph.split.us.i96.preheader
  %i.hg = shl i32 %i.h, %.075.i26
  %i.hh = getelementptr inbounds nuw [72 x i8], ptr %i.gz, i64 %i.ha ; 7 uses
  store ptr %i.b, ptr %i.hh, align 8, !tbaa !20
  %i.hi = sext i32 %i.hg to i64
  %i.hj = getelementptr inbounds i8, ptr %i.b, i64 %i.hi ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store ptr %i.hj, ptr %i.hk, align 8, !tbaa !20
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store ptr %i.b, ptr %i.hl, align 8, !tbaa !20
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  store ptr %i.hj, ptr %i.hm, align 8, !tbaa !20
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  store ptr %i.b, ptr %i.hn, align 8, !tbaa !20
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hh, i64 40
  store ptr %i.hj, ptr %i.ho, align 8, !tbaa !20
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 64
  store i32 -5, ptr %i.hp, align 8, !tbaa !19
  %indvars.iv.next105.i98.prol = add nsw i64 %i.ha, -1
  br label %.lr.ph.split.us.i96.prol.loopexit

.lr.ph.split.us.i96.prol.loopexit:                ; preds = %.lr.ph.split.us.i96.prol, %.lr.ph.split.us.i96.preheader
  %indvars.iv104.i97.unr = phi i64 [ %i.ha, %.lr.ph.split.us.i96.preheader ], [ %indvars.iv.next105.i98.prol, %.lr.ph.split.us.i96.prol ]
  %i.hq = icmp eq i32 %.075.i26, 0
  br i1 %i.hq, label %._crit_edge.thread.i33, label %.lr.ph.split.us.i96

.lr.ph.split.i101.preheader:                      ; preds = %.lr.ph.i34
  %i.hr = and i32 %3, 7                           ; 2 uses
  %xtraiter252 = zext nneg i32 %i.hr to i64
  %lcmp.mod253.not = icmp eq i32 %i.hr, 0
  br i1 %lcmp.mod253.not, label %.lr.ph.split.i101.prol.loopexit, label %.lr.ph.split.i101.prol

.lr.ph.split.i101.prol:                           ; preds = %.lr.ph.split.i101.preheader, %.lr.ph.split.i101.prol
  %indvars.iv107.i102.prol = phi i64 [ %indvars.iv.next108.i103.prol, %.lr.ph.split.i101.prol ], [ %i.ha, %.lr.ph.split.i101.preheader ] ; 2 uses
  %prol.iter254 = phi i64 [ %prol.iter254.next, %.lr.ph.split.i101.prol ], [ 0, %.lr.ph.split.i101.preheader ]
  %i.hs = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %indvars.iv107.i102.prol
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 160
  store i32 0, ptr %i.ht, align 8, !tbaa !19
  %indvars.iv.next108.i103.prol = add nsw i64 %indvars.iv107.i102.prol, -1 ; 2 uses
  %prol.iter254.next = add i64 %prol.iter254, 1   ; 2 uses
  %prol.iter254.cmp.not = icmp eq i64 %prol.iter254.next, %xtraiter252
  br i1 %prol.iter254.cmp.not, label %.lr.ph.split.i101.prol.loopexit, label %.lr.ph.split.i101.prol, !llvm.loop !39

.lr.ph.split.i101.prol.loopexit:                  ; preds = %.lr.ph.split.i101.prol, %.lr.ph.split.i101.preheader
  %indvars.iv107.i102.unr = phi i64 [ %i.ha, %.lr.ph.split.i101.preheader ], [ %indvars.iv.next108.i103.prol, %.lr.ph.split.i101.prol ]
  %i.hu = icmp ult i32 %3, 8
  br i1 %i.hu, label %._crit_edge.i27, label %.lr.ph.split.i101

.lr.ph.split.us.i96:                              ; preds = %.lr.ph.split.us.i96.prol.loopexit, %.lr.ph.split.us.i96
  %indvars.iv104.i97 = phi i64 [ %indvars.iv.next105.i98.1, %.lr.ph.split.us.i96 ], [ %indvars.iv104.i97.unr, %.lr.ph.split.us.i96.prol.loopexit ] ; 4 uses
  %i.hv = trunc nuw nsw i64 %indvars.iv104.i97 to i32
  %i.hw = shl i32 %i.h, %i.hv
  %i.hx = getelementptr inbounds nuw [72 x i8], ptr %i.gz, i64 %indvars.iv104.i97 ; 7 uses
  store ptr %i.b, ptr %i.hx, align 8, !tbaa !20
  %i.hy = sext i32 %i.hw to i64
  %i.hz = getelementptr inbounds i8, ptr %i.b, i64 %i.hy ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store ptr %i.hz, ptr %i.ia, align 8, !tbaa !20
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store ptr %i.b, ptr %i.ib, align 8, !tbaa !20
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  store ptr %i.hz, ptr %i.ic, align 8, !tbaa !20
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 32
  store ptr %i.b, ptr %i.id, align 8, !tbaa !20
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hx, i64 40
  store ptr %i.hz, ptr %i.ie, align 8, !tbaa !20
  %i.if = getelementptr inbounds nuw i8, ptr %i.hx, i64 64
  store i32 -5, ptr %i.if, align 8, !tbaa !19
  %indvars.iv.next105.i98 = add nsw i64 %indvars.iv104.i97, -1 ; 3 uses
  %i.ig = trunc nuw nsw i64 %indvars.iv.next105.i98 to i32
  %i.ih = shl i32 %i.h, %i.ig
  %i.ii = getelementptr inbounds nuw [72 x i8], ptr %i.gz, i64 %indvars.iv.next105.i98 ; 7 uses
  store ptr %i.b, ptr %i.ii, align 8, !tbaa !20
  %i.ij = sext i32 %i.ih to i64
  %i.ik = getelementptr inbounds i8, ptr %i.b, i64 %i.ij ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store ptr %i.ik, ptr %i.il, align 8, !tbaa !20
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store ptr %i.b, ptr %i.im, align 8, !tbaa !20
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  store ptr %i.ik, ptr %i.in, align 8, !tbaa !20
  %i.io = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  store ptr %i.b, ptr %i.io, align 8, !tbaa !20
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ii, i64 40
  store ptr %i.ik, ptr %i.ip, align 8, !tbaa !20
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ii, i64 64
  store i32 -5, ptr %i.iq, align 8, !tbaa !19
  %indvars.iv.next105.i98.1 = add nsw i64 %indvars.iv104.i97, -2
  %.not124.i99.1 = icmp eq i64 %indvars.iv.next105.i98, 0
  br i1 %.not124.i99.1, label %._crit_edge.thread.i33, label %.lr.ph.split.us.i96, !llvm.loop !40

.lr.ph.split.us77.i77:                            ; preds = %.lr.ph.i34, %spatial_compose53i_init_10bit.exit.us.i
  %indvars.iv101.i78 = phi i64 [ %indvars.iv.next102.i89, %spatial_compose53i_init_10bit.exit.us.i ], [ %i.ha, %.lr.ph.i34 ] ; 4 uses
  %i.ir = trunc nuw nsw i64 %indvars.iv101.i78 to i32 ; 2 uses
  %i.is = ashr i32 %i.e, %i.ir                    ; 2 uses
  %i.it = shl i32 %i.h, %i.ir                     ; 3 uses
  %i.iu = getelementptr inbounds nuw [72 x i8], ptr %i.gz, i64 %indvars.iv101.i78 ; 5 uses
  %i.iv = add nsw i32 %i.is, -1                   ; 5 uses
  %.not.i8.i.us.i79 = icmp eq i32 %i.iv, 0
  br i1 %.not.i8.i.us.i79, label %avpriv_mirror.exit13.thread.i.us.i95, label %.preheader.i.us.i80

.preheader.i.us.i80:                              ; preds = %.lr.ph.split.us77.i77
  %i.iw = icmp ult i32 %i.iv, -2
  br i1 %i.iw, label %.lr.ph.i.us.i90, label %avpriv_mirror.exit13.i.us.i81

avpriv_mirror.exit13.i.us.i81:                    ; preds = %.preheader.i.us.i80
  %i.ix = mul nsw i32 %i.it, -2
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds i8, ptr %i.b, i64 %i.iy
  store ptr %i.iz, ptr %i.iu, align 8, !tbaa !20
  %.not.i.us.i82 = icmp eq i32 %i.is, 0
  br i1 %.not.i.us.i82, label %spatial_compose53i_init_10bit.exit.us.i, label %.lr.ph17.i.us.i83

.lr.ph.i.us.i90:                                  ; preds = %.preheader.i.us.i80
  %i.ja = shl nsw i32 %i.iv, 1                    ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.us.i90
  %.09.i915.i.us.i91 = phi i32 [ -2, %.lr.ph.i.us.i90 ], [ %.1.i12.i.us.i93, %bb.n ] ; 2 uses
  %i.jb = icmp sgt i32 %.09.i915.i.us.i91, 0
  %spec.select.i11.i.us.i92 = select i1 %i.jb, i32 %i.ja, i32 0
  %.1.i12.i.us.i93 = sub nsw i32 %spec.select.i11.i.us.i92, %.09.i915.i.us.i91 ; 3 uses
  %i.jc = icmp ugt i32 %.1.i12.i.us.i93, %i.iv
  br i1 %i.jc, label %bb.n, label %avpriv_mirror.exit13.thread19.i.us.i94, !llvm.loop !0

avpriv_mirror.exit13.thread19.i.us.i94:           ; preds = %bb.n
  %i.jd = mul nsw i32 %.1.i12.i.us.i93, %i.it
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds i8, ptr %i.b, i64 %i.je
  store ptr %i.jf, ptr %i.iu, align 8, !tbaa !20
  br label %.lr.ph17.i.us.i83

.lr.ph17.i.us.i83:                                ; preds = %avpriv_mirror.exit13.thread19.i.us.i94, %avpriv_mirror.exit13.i.us.i81
  %.pre-phi.i84 = phi i32 [ %i.ja, %avpriv_mirror.exit13.thread19.i.us.i94 ], [ -4, %avpriv_mirror.exit13.i.us.i81 ]
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph17.i.us.i83
  %.09.i16.i.us.i85 = phi i32 [ -1, %.lr.ph17.i.us.i83 ], [ %.1.i.i.us.i87, %bb.o ] ; 2 uses
  %i.jg = icmp sgt i32 %.09.i16.i.us.i85, 0
  %spec.select.i.i.us.i86 = select i1 %i.jg, i32 %.pre-phi.i84, i32 0
  %.1.i.i.us.i87 = sub nsw i32 %spec.select.i.i.us.i86, %.09.i16.i.us.i85 ; 3 uses
  %i.jh = icmp ugt i32 %.1.i.i.us.i87, %i.iv
  br i1 %i.jh, label %bb.o, label %spatial_compose53i_init_10bit.exit.us.i, !llvm.loop !0

avpriv_mirror.exit13.thread.i.us.i95:             ; preds = %.lr.ph.split.us77.i77
  store ptr %i.b, ptr %i.iu, align 8, !tbaa !20
  br label %spatial_compose53i_init_10bit.exit.us.i

spatial_compose53i_init_10bit.exit.us.i:          ; preds = %bb.o, %avpriv_mirror.exit13.thread.i.us.i95, %avpriv_mirror.exit13.i.us.i81
  %.0.i.i.us.i88 = phi i32 [ 0, %avpriv_mirror.exit13.thread.i.us.i95 ], [ -1, %avpriv_mirror.exit13.i.us.i81 ], [ %.1.i.i.us.i87, %bb.o ]
  %i.ji = mul nsw i32 %.0.i.i.us.i88, %i.it
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds i8, ptr %i.b, i64 %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store ptr %i.jk, ptr %i.jl, align 8, !tbaa !20
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iu, i64 64
  store i32 -1, ptr %i.jm, align 8, !tbaa !19
  %indvars.iv.next102.i89 = add nsw i64 %indvars.iv101.i78, -1
  %i.jn = icmp sgt i64 %indvars.iv101.i78, 0
  br i1 %i.jn, label %.lr.ph.split.us77.i77, label %._crit_edge.i27, !llvm.loop !40

.lr.ph.split.us80.i71:                            ; preds = %.lr.ph.i34, %.lr.ph.split.us80.i71
  %indvars.iv98.i72 = phi i64 [ %indvars.iv.next99.i75, %.lr.ph.split.us80.i71 ], [ %i.ha, %.lr.ph.i34 ] ; 4 uses
  %i.jo = trunc nuw nsw i64 %indvars.iv98.i72 to i32 ; 2 uses
  %i.jp = ashr i32 %i.e, %i.jo
  %i.jq = shl i32 %i.h, %i.jo                     ; 3 uses
  %i.jr = getelementptr inbounds nuw [72 x i8], ptr %i.gz, i64 %indvars.iv98.i72 ; 9 uses
  store ptr %i.b, ptr %i.jr, align 8, !tbaa !20
  %i.js = sext i32 %i.jq to i64
  %i.jt = getelementptr inbounds i8, ptr %i.b, i64 %i.js ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store ptr %i.jt, ptr %i.ju, align 8, !tbaa !20
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  store ptr %i.b, ptr %i.jv, align 8, !tbaa !20
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  store ptr %i.jt, ptr %i.jw, align 8, !tbaa !20
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jr, i64 32
  store ptr %i.b, ptr %i.jx, align 8, !tbaa !20
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jr, i64 40
  store ptr %i.jt, ptr %i.jy, align 8, !tbaa !20
  %i.jz = tail call i32 @llvm.smin.i32(i32 %i.jp, i32 2) ; 2 uses
  %..i32.i.us.i73 = add nsw i32 %i.jz, -2
  %i.ka = mul nsw i32 %..i32.i.us.i73, %i.jq
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds i8, ptr %i.b, i64 %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jr, i64 48
  store ptr %i.kc, ptr %i.kd, align 8, !tbaa !20
  %..i.i.us.i74 = add nsw i32 %i.jz, -1
  %i.ke = mul nsw i32 %..i.i.us.i74, %i.jq
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds i8, ptr %i.b, i64 %i.kf
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jr, i64 56
  store ptr %i.kg, ptr %i.kh, align 8, !tbaa !20
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jr, i64 64
end_hunk_1
begin_hunk_2_@ff_spatial_idwt_init:bb.a
  %i.lv = icmp sgt i32 %.09.i2937.i.us.i63, 0
  %spec.select.i31.i.us.i64 = select i1 %i.lv, i32 %i.lu, i32 0
  %.1.i32.i.us.i65 = sub nsw i32 %spec.select.i31.i.us.i64, %.09.i2937.i.us.i63 ; 3 uses
  %i.lw = icmp ugt i32 %.1.i32.i.us.i65, %i.lf
  br i1 %i.lw, label %bb.p, label %avpriv_mirror.exit33.thread47.i.us.i66, !llvm.loop !0

avpriv_mirror.exit33.thread47.i.us.i66:           ; preds = %bb.p
  %i.lx = mul nsw i32 %.1.i32.i.us.i65, %i.ld
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr inbounds i8, ptr %i.b, i64 %i.ly
  store ptr %i.lz, ptr %i.le, align 8, !tbaa !20
  br label %.lr.ph39.i.us.i56

.lr.ph39.i.us.i56:                                ; preds = %avpriv_mirror.exit33.thread47.i.us.i66, %avpriv_mirror.exit33.i.us.i39
  %.pre-phi111.i57 = phi i32 [ %i.lu, %avpriv_mirror.exit33.thread47.i.us.i66 ], [ -8, %avpriv_mirror.exit33.i.us.i39 ] ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph39.i.us.i56
  %.09.i2338.i.us.i58 = phi i32 [ -3, %.lr.ph39.i.us.i56 ], [ %.1.i26.i.us.i60, %bb.q ] ; 2 uses
  %i.ma = icmp sgt i32 %.09.i2338.i.us.i58, 0
  %spec.select.i25.i.us.i59 = select i1 %i.ma, i32 %.pre-phi111.i57, i32 0
  %.1.i26.i.us.i60 = sub nsw i32 %spec.select.i25.i.us.i59, %.09.i2338.i.us.i58 ; 3 uses
  %i.mb = icmp ugt i32 %.1.i26.i.us.i60, %i.lf
  br i1 %i.mb, label %bb.q, label %avpriv_mirror.exit27.thread.i.us.i61, !llvm.loop !0

avpriv_mirror.exit27.thread.i.us.i61:             ; preds = %bb.q
  %i.mc = mul nsw i32 %.1.i26.i.us.i60, %i.ld
  %i.md = sext i32 %i.mc to i64
  %i.me = getelementptr inbounds i8, ptr %i.b, i64 %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store ptr %i.me, ptr %i.mf, align 8, !tbaa !20
  br label %.lr.ph42.i.us.i50

.lr.ph42.i.us.i50:                                ; preds = %avpriv_mirror.exit27.thread.i.us.i61, %avpriv_mirror.exit27.i.us.i40
  %.pre-phi113.i51 = phi i32 [ %.pre-phi111.i57, %avpriv_mirror.exit27.thread.i.us.i61 ], [ -6, %avpriv_mirror.exit27.i.us.i40 ] ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph42.i.us.i50
  %.09.i1741.i.us.i52 = phi i32 [ -2, %.lr.ph42.i.us.i50 ], [ %.1.i20.i.us.i54, %bb.r ] ; 2 uses
  %i.mg = icmp sgt i32 %.09.i1741.i.us.i52, 0
  %spec.select.i19.i.us.i53 = select i1 %i.mg, i32 %.pre-phi113.i51, i32 0
  %.1.i20.i.us.i54 = sub nsw i32 %spec.select.i19.i.us.i53, %.09.i1741.i.us.i52 ; 3 uses
  %i.mh = icmp ugt i32 %.1.i20.i.us.i54, %i.lf
  br i1 %i.mh, label %bb.r, label %avpriv_mirror.exit21.thread.i.us.i55, !llvm.loop !0

avpriv_mirror.exit21.thread.i.us.i55:             ; preds = %bb.r
  %i.mi = mul nsw i32 %.1.i20.i.us.i54, %i.ld
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr inbounds i8, ptr %i.b, i64 %i.mj
  %i.ml = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  store ptr %i.mk, ptr %i.ml, align 8, !tbaa !20
  br label %.lr.ph45.i.us.i43

.lr.ph45.i.us.i43:                                ; preds = %avpriv_mirror.exit21.thread.i.us.i55, %avpriv_mirror.exit21.i.us.i41
  %.pre-phi115.i44 = phi i32 [ %.pre-phi113.i51, %avpriv_mirror.exit21.thread.i.us.i55 ], [ -4, %avpriv_mirror.exit21.i.us.i41 ]
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph45.i.us.i43
  %.09.i44.i.us.i45 = phi i32 [ -1, %.lr.ph45.i.us.i43 ], [ %.1.i.i72.us.i47, %bb.s ] ; 2 uses
  %i.mm = icmp sgt i32 %.09.i44.i.us.i45, 0
  %spec.select.i.i71.us.i46 = select i1 %i.mm, i32 %.pre-phi115.i44, i32 0
  %.1.i.i72.us.i47 = sub nsw i32 %spec.select.i.i71.us.i46, %.09.i44.i.us.i45 ; 3 uses
  %i.mn = icmp ugt i32 %.1.i.i72.us.i47, %i.lf
  br i1 %i.mn, label %bb.s, label %spatial_compose97i_init_10bit.exit.us.i, !llvm.loop !0

avpriv_mirror.exit33.thread.i.us.i67:             ; preds = %.lr.ph.split.us86.i35
  store <2 x ptr> %i.hc, ptr %i.le, align 8, !tbaa !20
  %i.mo = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  store ptr %i.b, ptr %i.mo, align 8, !tbaa !20
  br label %spatial_compose97i_init_10bit.exit.us.i

spatial_compose97i_init_10bit.exit.us.i:          ; preds = %bb.s, %avpriv_mirror.exit33.thread.i.us.i67, %avpriv_mirror.exit21.i.us.i41
  %.0.i.i73.us.i48 = phi i32 [ 0, %avpriv_mirror.exit33.thread.i.us.i67 ], [ -1, %avpriv_mirror.exit21.i.us.i41 ], [ %.1.i.i72.us.i47, %bb.s ]
  %i.mp = mul nsw i32 %.0.i.i73.us.i48, %i.ld
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr inbounds i8, ptr %i.b, i64 %i.mq
  %i.ms = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  store ptr %i.mr, ptr %i.ms, align 8, !tbaa !20
  %i.mt = getelementptr inbounds nuw i8, ptr %i.le, i64 64
  store i32 -3, ptr %i.mt, align 8, !tbaa !19
  %indvars.iv.next.i49 = add nsw i64 %indvars.iv.i36, -1
  %i.mu = icmp sgt i64 %indvars.iv.i36, 0
  br i1 %i.mu, label %.lr.ph.split.us86.i35, label %._crit_edge.i27, !llvm.loop !40

.lr.ph.split.i101:                                ; preds = %.lr.ph.split.i101.prol.loopexit, %.lr.ph.split.i101
  %indvars.iv107.i102 = phi i64 [ %indvars.iv.next108.i103.7, %.lr.ph.split.i101 ], [ %indvars.iv107.i102.unr, %.lr.ph.split.i101.prol.loopexit ] ; 9 uses
  %i.mv = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %indvars.iv107.i102
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 160
  store i32 0, ptr %i.mw, align 8, !tbaa !19
  %i.mx = getelementptr [72 x i8], ptr %0, i64 %indvars.iv107.i102
  %i.my = getelementptr i8, ptr %i.mx, i64 88
  store i32 0, ptr %i.my, align 8, !tbaa !19
  %i.mz = getelementptr [72 x i8], ptr %0, i64 %indvars.iv107.i102
  %i.na = getelementptr i8, ptr %i.mz, i64 16
  store i32 0, ptr %i.na, align 8, !tbaa !19
  %i.nb = getelementptr [72 x i8], ptr %0, i64 %indvars.iv107.i102
  %i.nc = getelementptr i8, ptr %i.nb, i64 -56
  store i32 0, ptr %i.nc, align 8, !tbaa !19
  %i.nd = getelementptr [72 x i8], ptr %0, i64 %indvars.iv107.i102
  %i.ne = getelementptr i8, ptr %i.nd, i64 -128
  store i32 0, ptr %i.ne, align 8, !tbaa !19
  %i.nf = getelementptr [72 x i8], ptr %0, i64 %indvars.iv107.i102
  %i.ng = getelementptr i8, ptr %i.nf, i64 -200
  store i32 0, ptr %i.ng, align 8, !tbaa !19
  %i.nh = getelementptr [72 x i8], ptr %0, i64 %indvars.iv107.i102
  %i.ni = getelementptr i8, ptr %i.nh, i64 -272
  store i32 0, ptr %i.ni, align 8, !tbaa !19
  %indvars.iv.next108.i103.6 = add nsw i64 %indvars.iv107.i102, -7 ; 2 uses
  %i.nj = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %indvars.iv.next108.i103.6
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 160
  store i32 0, ptr %i.nk, align 8, !tbaa !19
  %indvars.iv.next108.i103.7 = add nsw i64 %indvars.iv107.i102, -8
  %.not125.i104.7 = icmp eq i64 %indvars.iv.next108.i103.6, 0
  br i1 %.not125.i104.7, label %._crit_edge.i27, label %.lr.ph.split.i101, !llvm.loop !40

._crit_edge.i27:                                  ; preds = %spatial_compose97i_init_10bit.exit.us.i, %.lr.ph.split.us83.i68.prol.loopexit, %.lr.ph.split.us83.i68, %spatial_compose53i_init_10bit.exit.us.i, %.lr.ph.split.i101.prol.loopexit, %.lr.ph.split.i101, %bb.m
  switch i32 %2, label %spatial_idwt_init_8bit.exit [
    i32 2, label %._crit_edge.thread.i33
    i32 3, label %bb.t
    i32 4, label %._crit_edge.thread118.i32
    i32 5, label %bb.u
    i32 6, label %bb.u
    i32 7, label %bb.v
    i32 8, label %bb.w
  ]

._crit_edge.thread.i33:                           ; preds = %.lr.ph.split.us.i96.prol.loopexit, %.lr.ph.split.us.i96, %._crit_edge.i27
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @spatial_compose_dd97i_dy_10bit, ptr %i.nl, align 8, !tbaa !22
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @vertical_compose53iL0_10bit, ptr %i.nm, align 8, !tbaa !23
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @vertical_compose_dd97iH0_10bit, ptr %i.nn, align 8, !tbaa !23
  br label %.sink.split.i28

bb.t:                                             ; preds = %._crit_edge.i27
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @spatial_compose_dirac53i_dy_10bit, ptr %i.no, align 8, !tbaa !22
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @vertical_compose53iL0_10bit, ptr %i.np, align 8, !tbaa !23
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @vertical_compose_dirac53iH0_10bit, ptr %i.nq, align 8, !tbaa !23
  br label %.sink.split.i28

._crit_edge.thread118.i32:                        ; preds = %.lr.ph.split.us80.i71, %._crit_edge.i27
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @spatial_compose_dd137i_dy_10bit, ptr %i.nr, align 8, !tbaa !22
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @vertical_compose_dd137iL0_10bit, ptr %i.ns, align 8, !tbaa !23
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @vertical_compose_dd97iH0_10bit, ptr %i.nt, align 8, !tbaa !23
  br label %.sink.split.i28

bb.u:                                             ; preds = %._crit_edge.i27, %._crit_edge.i27
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @spatial_compose_haari_dy_10bit, ptr %i.nu, align 8, !tbaa !22
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @vertical_compose_haar_10bit, ptr %i.nv, align 8, !tbaa !24
  %i.nw = icmp eq i32 %2, 5
  %spec.select.i31 = select i1 %i.nw, ptr @horizontal_compose_haar0i_10bit, ptr @horizontal_compose_haar1i_10bit
  br label %.sink.split.i28

bb.v:                                             ; preds = %._crit_edge.i27
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @spatial_compose_fidelity_10bit, ptr %i.nx, align 8, !tbaa !22
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @vertical_compose_fidelityiL0_10bit, ptr %i.ny, align 8, !tbaa !23
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @vertical_compose_fidelityiH0_10bit, ptr %i.nz, align 8, !tbaa !23
  br label %.sink.split.i28

bb.w:                                             ; preds = %._crit_edge.i27
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @spatial_compose_daub97i_dy_10bit, ptr %i.oa, align 8, !tbaa !22
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @vertical_compose_daub97iL0_10bit, ptr %i.ob, align 8, !tbaa !23
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @vertical_compose_daub97iH0_10bit, ptr %i.oc, align 8, !tbaa !23
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @vertical_compose_daub97iL1_10bit, ptr %i.od, align 8, !tbaa !25
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @vertical_compose_daub97iH1_10bit, ptr %i.oe, align 8, !tbaa !26
  br label %.sink.split.i28

.sink.split.i28:                                  ; preds = %bb.w, %bb.v, %bb.u, %._crit_edge.thread118.i32, %bb.t, %._crit_edge.thread.i33
  %horizontal_compose_dd97i_10bit.sink.i = phi ptr [ @horizontal_compose_dd97i_10bit, %._crit_edge.thread.i33 ], [ @horizontal_compose_dirac53i_10bit, %bb.t ], [ @horizontal_compose_dd137i_10bit, %._crit_edge.thread118.i32 ], [ %spec.select.i31, %bb.u ], [ @horizontal_compose_fidelityi_10bit, %bb.v ], [ @horizontal_compose_daub97i_10bit, %bb.w ]
  %.sink.i29 = phi i32 [ 7, %._crit_edge.thread.i33 ], [ 3, %bb.t ], [ 7, %._crit_edge.thread118.i32 ], [ 1, %bb.u ], [ 0, %bb.v ], [ 5, %bb.w ]
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %horizontal_compose_dd97i_10bit.sink.i, ptr %i.of, align 8, !tbaa !27
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sink.i29, ptr %i.og, align 8, !tbaa !28
  br label %spatial_idwt_init_8bit.exit.thread

bb.x:                                             ; preds = %bb.a
  %i.oh = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.oh, ptr %i.l, align 8, !tbaa !16
  %i.oi = icmp sgt i32 %3, 0
  br i1 %i.oi, label %.lr.ph.i113, label %._crit_edge.i106

.lr.ph.i113:                                      ; preds = %bb.x
  %.075.i105 = add nsw i32 %3, -1                 ; 4 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.ok = zext i32 %.075.i105 to i64              ; 10 uses
  switch i32 %2, label %.lr.ph.split.i180.preheader [
    i32 2, label %.lr.ph.split.us.i175.preheader
    i32 3, label %.lr.ph.split.us77.i156
    i32 4, label %.lr.ph.split.us80.i150
    i32 5, label %.lr.ph.split.us83.i147.preheader
    i32 6, label %.lr.ph.split.us83.i147.preheader
    i32 8, label %.lr.ph.split.us86.i114.preheader
  ]

.lr.ph.split.us86.i114.preheader:                 ; preds = %.lr.ph.i113
  %i.ol = insertelement <2 x ptr> poison, ptr %i.b, i64 0
  %i.om = shufflevector <2 x ptr> %i.ol, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.us86.i114

.lr.ph.split.us83.i147.preheader:                 ; preds = %.lr.ph.i113, %.lr.ph.i113
  %smin = tail call i32 @llvm.smin.i32(i32 %.075.i105, i32 0) ; 2 uses
  %11 = sub i32 %3, %smin
  %xtraiter = and i32 %11, 7                      ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.us83.i147.prol.loopexit, label %.lr.ph.split.us83.i147.prol

.lr.ph.split.us83.i147.prol:                      ; preds = %.lr.ph.split.us83.i147.preheader, %.lr.ph.split.us83.i147.prol
  %indvars.iv95.i148.prol = phi i64 [ %indvars.iv.next96.i149.prol, %.lr.ph.split.us83.i147.prol ], [ %i.ok, %.lr.ph.split.us83.i147.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.split.us83.i147.prol ], [ 0, %.lr.ph.split.us83.i147.preheader ]
  %i.on = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %indvars.iv95.i148.prol
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 160
  store i32 1, ptr %i.oo, align 8, !tbaa !19
  %indvars.iv.next96.i149.prol = add nsw i64 %indvars.iv95.i148.prol, -1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us83.i147.prol.loopexit, label %.lr.ph.split.us83.i147.prol, !llvm.loop !41

.lr.ph.split.us83.i147.prol.loopexit:             ; preds = %.lr.ph.split.us83.i147.prol, %.lr.ph.split.us83.i147.preheader
  %indvars.iv95.i148.unr = phi i64 [ %i.ok, %.lr.ph.split.us83.i147.preheader ], [ %indvars.iv.next96.i149.prol, %.lr.ph.split.us83.i147.prol ]
  %12 = sub i32 %smin, %3
  %13 = icmp ugt i32 %12, -8
  br i1 %13, label %._crit_edge.i106, label %.lr.ph.split.us83.i147

.lr.ph.split.us.i175.preheader:                   ; preds = %.lr.ph.i113
  %i.op = and i32 %3, 1
  %lcmp.mod240.not = icmp eq i32 %i.op, 0
  br i1 %lcmp.mod240.not, label %.lr.ph.split.us.i175.prol.loopexit, label %.lr.ph.split.us.i175.prol

.lr.ph.split.us.i175.prol:                        ; preds = %.lr.ph.split.us.i175.preheader
  %i.oq = shl i32 %i.h, %.075.i105
  %i.or = getelementptr inbounds nuw [72 x i8], ptr %i.oj, i64 %i.ok ; 7 uses
  store ptr %i.b, ptr %i.or, align 8, !tbaa !20
  %i.os = sext i32 %i.oq to i64
  %i.ot = getelementptr inbounds i8, ptr %i.b, i64 %i.os ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  store ptr %i.ot, ptr %i.ou, align 8, !tbaa !20
  %i.ov = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  store ptr %i.b, ptr %i.ov, align 8, !tbaa !20
  %i.ow = getelementptr inbounds nuw i8, ptr %i.or, i64 24
  store ptr %i.ot, ptr %i.ow, align 8, !tbaa !20
  %i.ox = getelementptr inbounds nuw i8, ptr %i.or, i64 32
  store ptr %i.b, ptr %i.ox, align 8, !tbaa !20
  %i.oy = getelementptr inbounds nuw i8, ptr %i.or, i64 40
  store ptr %i.ot, ptr %i.oy, align 8, !tbaa !20
  %i.oz = getelementptr inbounds nuw i8, ptr %i.or, i64 64
  store i32 -5, ptr %i.oz, align 8, !tbaa !19
  %indvars.iv.next105.i177.prol = add nsw i64 %i.ok, -1
  br label %.lr.ph.split.us.i175.prol.loopexit

.lr.ph.split.us.i175.prol.loopexit:               ; preds = %.lr.ph.split.us.i175.prol, %.lr.ph.split.us.i175.preheader
  %indvars.iv104.i176.unr = phi i64 [ %i.ok, %.lr.ph.split.us.i175.preheader ], [ %indvars.iv.next105.i177.prol, %.lr.ph.split.us.i175.prol ]
  %i.pa = icmp eq i32 %.075.i105, 0
  br i1 %i.pa, label %._crit_edge.thread.i112, label %.lr.ph.split.us.i175

.lr.ph.split.i180.preheader:                      ; preds = %.lr.ph.i113
  %i.pb = and i32 %3, 7                           ; 2 uses
  %xtraiter242 = zext nneg i32 %i.pb to i64
  %lcmp.mod243.not = icmp eq i32 %i.pb, 0
  br i1 %lcmp.mod243.not, label %.lr.ph.split.i180.prol.loopexit, label %.lr.ph.split.i180.prol

.lr.ph.split.i180.prol:                           ; preds = %.lr.ph.split.i180.preheader, %.lr.ph.split.i180.prol
  %indvars.iv107.i181.prol = phi i64 [ %indvars.iv.next108.i182.prol, %.lr.ph.split.i180.prol ], [ %i.ok, %.lr.ph.split.i180.preheader ] ; 2 uses
  %prol.iter244 = phi i64 [ %prol.iter244.next, %.lr.ph.split.i180.prol ], [ 0, %.lr.ph.split.i180.preheader ]
  %i.pc = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %indvars.iv107.i181.prol
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 160
  store i32 0, ptr %i.pd, align 8, !tbaa !19
  %indvars.iv.next108.i182.prol = add nsw i64 %indvars.iv107.i181.prol, -1 ; 2 uses
  %prol.iter244.next = add i64 %prol.iter244, 1   ; 2 uses
  %prol.iter244.cmp.not = icmp eq i64 %prol.iter244.next, %xtraiter242
  br i1 %prol.iter244.cmp.not, label %.lr.ph.split.i180.prol.loopexit, label %.lr.ph.split.i180.prol, !llvm.loop !42

.lr.ph.split.i180.prol.loopexit:                  ; preds = %.lr.ph.split.i180.prol, %.lr.ph.split.i180.preheader
  %indvars.iv107.i181.unr = phi i64 [ %i.ok, %.lr.ph.split.i180.preheader ], [ %indvars.iv.next108.i182.prol, %.lr.ph.split.i180.prol ]
  %i.pe = icmp ult i32 %3, 8
  br i1 %i.pe, label %._crit_edge.i106, label %.lr.ph.split.i180

.lr.ph.split.us.i175:                             ; preds = %.lr.ph.split.us.i175.prol.loopexit, %.lr.ph.split.us.i175
  %indvars.iv104.i176 = phi i64 [ %indvars.iv.next105.i177.1, %.lr.ph.split.us.i175 ], [ %indvars.iv104.i176.unr, %.lr.ph.split.us.i175.prol.loopexit ] ; 4 uses
  %i.pf = trunc nuw nsw i64 %indvars.iv104.i176 to i32
  %i.pg = shl i32 %i.h, %i.pf
  %i.ph = getelementptr inbounds nuw [72 x i8], ptr %i.oj, i64 %indvars.iv104.i176 ; 7 uses
  store ptr %i.b, ptr %i.ph, align 8, !tbaa !20
  %i.pi = sext i32 %i.pg to i64
  %i.pj = getelementptr inbounds i8, ptr %i.b, i64 %i.pi ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  store ptr %i.pj, ptr %i.pk, align 8, !tbaa !20
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  store ptr %i.b, ptr %i.pl, align 8, !tbaa !20
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  store ptr %i.pj, ptr %i.pm, align 8, !tbaa !20
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ph, i64 32
  store ptr %i.b, ptr %i.pn, align 8, !tbaa !20
  %i.po = getelementptr inbounds nuw i8, ptr %i.ph, i64 40
  store ptr %i.pj, ptr %i.po, align 8, !tbaa !20
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ph, i64 64
  store i32 -5, ptr %i.pp, align 8, !tbaa !19
  %indvars.iv.next105.i177 = add nsw i64 %indvars.iv104.i176, -1 ; 3 uses
  %i.pq = trunc nuw nsw i64 %indvars.iv.next105.i177 to i32
  %i.pr = shl i32 %i.h, %i.pq
  %i.ps = getelementptr inbounds nuw [72 x i8], ptr %i.oj, i64 %indvars.iv.next105.i177 ; 7 uses
  store ptr %i.b, ptr %i.ps, align 8, !tbaa !20
  %i.pt = sext i32 %i.pr to i64
  %i.pu = getelementptr inbounds i8, ptr %i.b, i64 %i.pt ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  store ptr %i.pu, ptr %i.pv, align 8, !tbaa !20
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  store ptr %i.b, ptr %i.pw, align 8, !tbaa !20
  %i.px = getelementptr inbounds nuw i8, ptr %i.ps, i64 24
  store ptr %i.pu, ptr %i.px, align 8, !tbaa !20
  %i.py = getelementptr inbounds nuw i8, ptr %i.ps, i64 32
  store ptr %i.b, ptr %i.py, align 8, !tbaa !20
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ps, i64 40
  store ptr %i.pu, ptr %i.pz, align 8, !tbaa !20
  %i.qa = getelementptr inbounds nuw i8, ptr %i.ps, i64 64
  store i32 -5, ptr %i.qa, align 8, !tbaa !19
  %indvars.iv.next105.i177.1 = add nsw i64 %indvars.iv104.i176, -2
  %.not124.i178.1 = icmp eq i64 %indvars.iv.next105.i177, 0
  br i1 %.not124.i178.1, label %._crit_edge.thread.i112, label %.lr.ph.split.us.i175, !llvm.loop !43

.lr.ph.split.us77.i156:                           ; preds = %.lr.ph.i113, %spatial_compose53i_init_12bit.exit.us.i
  %indvars.iv101.i157 = phi i64 [ %indvars.iv.next102.i168, %spatial_compose53i_init_12bit.exit.us.i ], [ %i.ok, %.lr.ph.i113 ] ; 4 uses
  %i.qb = trunc nuw nsw i64 %indvars.iv101.i157 to i32 ; 2 uses
  %i.qc = ashr i32 %i.e, %i.qb                    ; 2 uses
  %i.qd = shl i32 %i.h, %i.qb                     ; 3 uses
  %i.qe = getelementptr inbounds nuw [72 x i8], ptr %i.oj, i64 %indvars.iv101.i157 ; 5 uses
  %i.qf = add nsw i32 %i.qc, -1                   ; 5 uses
  %.not.i8.i.us.i158 = icmp eq i32 %i.qf, 0
  br i1 %.not.i8.i.us.i158, label %avpriv_mirror.exit13.thread.i.us.i174, label %.preheader.i.us.i159

.preheader.i.us.i159:                             ; preds = %.lr.ph.split.us77.i156
  %i.qg = icmp ult i32 %i.qf, -2
  br i1 %i.qg, label %.lr.ph.i.us.i169, label %avpriv_mirror.exit13.i.us.i160

avpriv_mirror.exit13.i.us.i160:                   ; preds = %.preheader.i.us.i159
  %i.qh = mul nsw i32 %i.qd, -2
  %i.qi = sext i32 %i.qh to i64
  %i.qj = getelementptr inbounds i8, ptr %i.b, i64 %i.qi
  store ptr %i.qj, ptr %i.qe, align 8, !tbaa !20
  %.not.i.us.i161 = icmp eq i32 %i.qc, 0
  br i1 %.not.i.us.i161, label %spatial_compose53i_init_12bit.exit.us.i, label %.lr.ph17.i.us.i162

.lr.ph.i.us.i169:                                 ; preds = %.preheader.i.us.i159
  %i.qk = shl nsw i32 %i.qf, 1                    ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.us.i169
  %.09.i915.i.us.i170 = phi i32 [ -2, %.lr.ph.i.us.i169 ], [ %.1.i12.i.us.i172, %bb.y ] ; 2 uses
  %i.ql = icmp sgt i32 %.09.i915.i.us.i170, 0
  %spec.select.i11.i.us.i171 = select i1 %i.ql, i32 %i.qk, i32 0
  %.1.i12.i.us.i172 = sub nsw i32 %spec.select.i11.i.us.i171, %.09.i915.i.us.i170 ; 3 uses
  %i.qm = icmp ugt i32 %.1.i12.i.us.i172, %i.qf
  br i1 %i.qm, label %bb.y, label %avpriv_mirror.exit13.thread19.i.us.i173, !llvm.loop !0

avpriv_mirror.exit13.thread19.i.us.i173:          ; preds = %bb.y
  %i.qn = mul nsw i32 %.1.i12.i.us.i172, %i.qd
  %i.qo = sext i32 %i.qn to i64
  %i.qp = getelementptr inbounds i8, ptr %i.b, i64 %i.qo
  store ptr %i.qp, ptr %i.qe, align 8, !tbaa !20
  br label %.lr.ph17.i.us.i162

.lr.ph17.i.us.i162:                               ; preds = %avpriv_mirror.exit13.thread19.i.us.i173, %avpriv_mirror.exit13.i.us.i160
  %.pre-phi.i163 = phi i32 [ %i.qk, %avpriv_mirror.exit13.thread19.i.us.i173 ], [ -4, %avpriv_mirror.exit13.i.us.i160 ]
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph17.i.us.i162
  %.09.i16.i.us.i164 = phi i32 [ -1, %.lr.ph17.i.us.i162 ], [ %.1.i.i.us.i166, %bb.z ] ; 2 uses
  %i.qq = icmp sgt i32 %.09.i16.i.us.i164, 0
  %spec.select.i.i.us.i165 = select i1 %i.qq, i32 %.pre-phi.i163, i32 0
  %.1.i.i.us.i166 = sub nsw i32 %spec.select.i.i.us.i165, %.09.i16.i.us.i164 ; 3 uses
  %i.qr = icmp ugt i32 %.1.i.i.us.i166, %i.qf
  br i1 %i.qr, label %bb.z, label %spatial_compose53i_init_12bit.exit.us.i, !llvm.loop !0

avpriv_mirror.exit13.thread.i.us.i174:            ; preds = %.lr.ph.split.us77.i156
  store ptr %i.b, ptr %i.qe, align 8, !tbaa !20
  br label %spatial_compose53i_init_12bit.exit.us.i

spatial_compose53i_init_12bit.exit.us.i:          ; preds = %bb.z, %avpriv_mirror.exit13.thread.i.us.i174, %avpriv_mirror.exit13.i.us.i160
  %.0.i.i.us.i167 = phi i32 [ 0, %avpriv_mirror.exit13.thread.i.us.i174 ], [ -1, %avpriv_mirror.exit13.i.us.i160 ], [ %.1.i.i.us.i166, %bb.z ]
  %i.qs = mul nsw i32 %.0.i.i.us.i167, %i.qd
  %i.qt = sext i32 %i.qs to i64
  %i.qu = getelementptr inbounds i8, ptr %i.b, i64 %i.qt
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  store ptr %i.qu, ptr %i.qv, align 8, !tbaa !20
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qe, i64 64
  store i32 -1, ptr %i.qw, align 8, !tbaa !19
  %indvars.iv.next102.i168 = add nsw i64 %indvars.iv101.i157, -1
  %i.qx = icmp sgt i64 %indvars.iv101.i157, 0
  br i1 %i.qx, label %.lr.ph.split.us77.i156, label %._crit_edge.i106, !llvm.loop !43

.lr.ph.split.us80.i150:                           ; preds = %.lr.ph.i113, %.lr.ph.split.us80.i150
  %indvars.iv98.i151 = phi i64 [ %indvars.iv.next99.i154, %.lr.ph.split.us80.i150 ], [ %i.ok, %.lr.ph.i113 ] ; 4 uses
  %i.qy = trunc nuw nsw i64 %indvars.iv98.i151 to i32 ; 2 uses
  %i.qz = ashr i32 %i.e, %i.qy
  %i.ra = shl i32 %i.h, %i.qy                     ; 3 uses
  %i.rb = getelementptr inbounds nuw [72 x i8], ptr %i.oj, i64 %indvars.iv98.i151 ; 9 uses
  store ptr %i.b, ptr %i.rb, align 8, !tbaa !20
  %i.rc = sext i32 %i.ra to i64
  %i.rd = getelementptr inbounds i8, ptr %i.b, i64 %i.rc ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  store ptr %i.rd, ptr %i.re, align 8, !tbaa !20
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rb, i64 16
  store ptr %i.b, ptr %i.rf, align 8, !tbaa !20
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rb, i64 24
  store ptr %i.rd, ptr %i.rg, align 8, !tbaa !20
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rb, i64 32
  store ptr %i.b, ptr %i.rh, align 8, !tbaa !20
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rb, i64 40
  store ptr %i.rd, ptr %i.ri, align 8, !tbaa !20
  %i.rj = tail call i32 @llvm.smin.i32(i32 %i.qz, i32 2) ; 2 uses
  %..i32.i.us.i152 = add nsw i32 %i.rj, -2
  %i.rk = mul nsw i32 %..i32.i.us.i152, %i.ra
  %i.rl = sext i32 %i.rk to i64
  %i.rm = getelementptr inbounds i8, ptr %i.b, i64 %i.rl
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rb, i64 48
  store ptr %i.rm, ptr %i.rn, align 8, !tbaa !20
  %..i.i.us.i153 = add nsw i32 %i.rj, -1
  %i.ro = mul nsw i32 %..i.i.us.i153, %i.ra
  %i.rp = sext i32 %i.ro to i64
  %i.rq = getelementptr inbounds i8, ptr %i.b, i64 %i.rp
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rb, i64 56
  store ptr %i.rq, ptr %i.rr, align 8, !tbaa !20
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rb, i64 64
end_hunk_2
