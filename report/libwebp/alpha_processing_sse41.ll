Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/alpha_processing_sse41?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@WebPExtractAlpha = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @WebPInitAlphaProcessingSSE41() local_unnamed_addr #0 {
bb.a:
  store ptr @ExtractAlpha_SSE41, ptr @WebPExtractAlpha, align 8, !tbaa !9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @ExtractAlpha_SSE41(ptr noalias nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noalias nofree noundef writeonly captures(none) %4, i32 noundef %5) #1 {
bb.a:
  %i.a = add nsw i32 %2, -1
  %i.b = and i32 %i.a, -16
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %.preheader59.lr.ph, label %._crit_edge73

.preheader59.lr.ph:                               ; preds = %bb.a
  %i.d = icmp sgt i32 %2, 16
  %i.e = sext i32 %1 to i64                       ; 2 uses
  %i.f = sext i32 %5 to i64                       ; 2 uses
  br i1 %i.d, label %.preheader59.us.preheader, label %.preheader59.lr.ph.split

.preheader59.us.preheader:                        ; preds = %.preheader59.lr.ph
  %i.g = sext i32 %i.b to i64                     ; 3 uses
  %i.h = zext nneg i32 %2 to i64                  ; 2 uses
  %i.i = or disjoint i64 %i.g, 1
  %i.j = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %i.h) ; 2 uses
  %i.k = sub i64 %i.j, %i.g                       ; 2 uses
  %min.iters.check118 = icmp ult i64 %i.k, 9
  %i.l = and i64 %i.j, 7                          ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = select i1 %i.m, i64 8, i64 %i.l
  %n.vec120 = sub i64 %i.k, %i.n                  ; 2 uses
  br label %.preheader59.us

.preheader59.us:                                  ; preds = %.preheader59.us.preheader, %._crit_edge.us
  %.072.us = phi ptr [ %i.ao, %._crit_edge.us ], [ %0, %.preheader59.us.preheader ] ; 11 uses
  %.05171.us = phi ptr [ %i.ap, %._crit_edge.us ], [ %4, %.preheader59.us.preheader ] ; 4 uses
  %.05270.us = phi i32 [ %.1.lcssa.us, %._crit_edge.us ], [ 255, %.preheader59.us.preheader ] ; 3 uses
  %.05569.us = phi i32 [ %i.aq, %._crit_edge.us ], [ 0, %.preheader59.us.preheader ]
  %.05668.us = phi <2 x i64> [ %i.ae, %._crit_edge.us ], [ splat (i64 -1), %.preheader59.us.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader59.us, %bb.b
  %indvars.iv99 = phi i64 [ 0, %.preheader59.us ], [ %indvars.iv.next100, %bb.b ] ; 2 uses
  %.15761.us = phi <2 x i64> [ %.05668.us, %.preheader59.us ], [ %i.ae, %bb.b ]
  %.05860.us = phi ptr [ %.072.us, %.preheader59.us ], [ %i.af, %bb.b ] ; 5 uses
  %i.o = load <16 x i8>, ptr %.05860.us, align 1, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %.05860.us, i64 16
  %i.q = load <16 x i8>, ptr %i.p, align 1, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %.05860.us, i64 32
  %i.s = load <16 x i8>, ptr %i.r, align 1, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %.05860.us, i64 48
  %i.u = load <16 x i8>, ptr %i.t, align 1, !tbaa !16
  %i.v = shufflevector <16 x i8> %i.o, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.w = shufflevector <16 x i8> %i.q, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 0, i32 4, i32 8, i32 12, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.x = shufflevector <16 x i8> %i.s, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 0, i32 4, i32 8, i32 12, i32 16, i32 16, i32 16, i32 16>
  %i.y = shufflevector <16 x i8> %i.u, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 0, i32 4, i32 8, i32 12>
  %i.z = or <16 x i8> %i.w, %i.v
  %i.aa = or <16 x i8> %i.z, %i.x
  %i.ab = or <16 x i8> %i.aa, %i.y                ; 2 uses
  %i.ac = bitcast <16 x i8> %i.ab to <2 x i64>
  %i.ad = getelementptr inbounds nuw i8, ptr %.05171.us, i64 %indvars.iv99
  store <16 x i8> %i.ab, ptr %i.ad, align 1, !tbaa !16
  %i.ae = and <2 x i64> %.15761.us, %i.ac         ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05860.us, i64 64
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 16 ; 6 uses
  %i.ag = icmp slt i64 %indvars.iv.next100, %i.g
  br i1 %i.ag, label %bb.b, label %..preheader_crit_edge.us, !llvm.loop !10

.lr.ph66.us:                                      ; preds = %.lr.ph66.us.preheader129, %.lr.ph66.us
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %.lr.ph66.us ], [ %indvars.iv104.ph, %.lr.ph66.us.preheader129 ] ; 3 uses
  %.165.us = phi i32 [ %i.am, %.lr.ph66.us ], [ %.165.us.ph, %.lr.ph66.us.preheader129 ]
  %i.ah = shl nuw nsw i64 %indvars.iv104, 2
  %i.ai = getelementptr inbounds nuw i8, ptr %.072.us, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !16  ; 2 uses
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %.05171.us, i64 %indvars.iv104
  store i8 %i.aj, ptr %i.al, align 1, !tbaa !16
  %i.am = and i32 %.165.us, %i.ak                 ; 2 uses
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %i.an = icmp samesign ult i64 %indvars.iv.next105, %i.h
  br i1 %i.an, label %.lr.ph66.us, label %._crit_edge.us, !llvm.loop !11

._crit_edge.us:                                   ; preds = %.lr.ph66.us, %..preheader_crit_edge.us
  %.1.lcssa.us = phi i32 [ %.05270.us, %..preheader_crit_edge.us ], [ %i.am, %.lr.ph66.us ] ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.072.us, i64 %i.e
  %i.ap = getelementptr inbounds i8, ptr %.05171.us, i64 %i.f
  %i.aq = add nuw nsw i32 %.05569.us, 1           ; 2 uses
  %exitcond107.not = icmp eq i32 %i.aq, %3
  br i1 %exitcond107.not, label %._crit_edge73.loopexit, label %.preheader59.us, !llvm.loop !12

..preheader_crit_edge.us:                         ; preds = %bb.b
  %i.ar = trunc nuw nsw i64 %indvars.iv.next100 to i32
  %i.as = icmp sgt i32 %2, %i.ar
  br i1 %i.as, label %.lr.ph66.us.preheader, label %._crit_edge.us

.lr.ph66.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check118, label %.lr.ph66.us.preheader129, label %vector.ph119

vector.ph119:                                     ; preds = %.lr.ph66.us.preheader
  %i.at = add i64 %indvars.iv.next100, %n.vec120
  %i.au = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %.05270.us, i64 0
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph119
  %index122 = phi i64 [ 0, %vector.ph119 ], [ %index.next125, %vector.body121 ] ; 2 uses
  %vec.phi123 = phi <4 x i32> [ %i.au, %vector.ph119 ], [ %i.cn, %vector.body121 ]
  %vec.phi124 = phi <4 x i32> [ splat (i32 -1), %vector.ph119 ], [ %i.co, %vector.body121 ]
  %i.av = add nuw i64 %indvars.iv.next100, %index122 ; 9 uses
  %i.aw = shl nuw nsw i64 %i.av, 2
  %i.ax = shl i64 %i.av, 2
  %i.ay = shl i64 %i.av, 2
  %i.az = shl i64 %i.av, 2
  %i.ba = shl i64 %i.av, 2
  %i.bb = shl i64 %i.av, 2
  %i.bc = shl i64 %i.av, 2
  %i.bd = shl i64 %i.av, 2
  %i.be = getelementptr inbounds nuw i8, ptr %.072.us, i64 %i.aw
  %i.bf = getelementptr inbounds nuw i8, ptr %.072.us, i64 %i.ax
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %.072.us, i64 %i.ay
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.072.us, i64 %i.az
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.bl = getelementptr inbounds nuw i8, ptr %.072.us, i64 %i.ba
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %.072.us, i64 %i.bb
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  %i.bp = getelementptr inbounds nuw i8, ptr %.072.us, i64 %i.bc
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %.072.us, i64 %i.bd
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 28
  %i.bt = load i8, ptr %i.be, align 1, !tbaa !16
  %i.bu = load i8, ptr %i.bg, align 1, !tbaa !16
  %i.bv = load i8, ptr %i.bi, align 1, !tbaa !16
  %i.bw = load i8, ptr %i.bk, align 1, !tbaa !16
  %i.bx = insertelement <4 x i8> poison, i8 %i.bt, i64 0
  %i.by = insertelement <4 x i8> %i.bx, i8 %i.bu, i64 1
  %i.bz = insertelement <4 x i8> %i.by, i8 %i.bv, i64 2
  %i.ca = insertelement <4 x i8> %i.bz, i8 %i.bw, i64 3 ; 2 uses
  %i.cb = load i8, ptr %i.bm, align 1, !tbaa !16
  %i.cc = load i8, ptr %i.bo, align 1, !tbaa !16
  %i.cd = load i8, ptr %i.bq, align 1, !tbaa !16
  %i.ce = load i8, ptr %i.bs, align 1, !tbaa !16
  %i.cf = insertelement <4 x i8> poison, i8 %i.cb, i64 0
  %i.cg = insertelement <4 x i8> %i.cf, i8 %i.cc, i64 1
  %i.ch = insertelement <4 x i8> %i.cg, i8 %i.cd, i64 2
  %i.ci = insertelement <4 x i8> %i.ch, i8 %i.ce, i64 3 ; 2 uses
  %i.cj = zext <4 x i8> %i.ca to <4 x i32>
  %i.ck = zext <4 x i8> %i.ci to <4 x i32>
  %i.cl = getelementptr inbounds nuw i8, ptr %.05171.us, i64 %i.av ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store <4 x i8> %i.ca, ptr %i.cl, align 1, !tbaa !16
  store <4 x i8> %i.ci, ptr %i.cm, align 1, !tbaa !16
  %i.cn = and <4 x i32> %vec.phi123, %i.cj        ; 2 uses
  %i.co = and <4 x i32> %vec.phi124, %i.ck        ; 2 uses
  %index.next125 = add nuw i64 %index122, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next125, %n.vec120
  br i1 %i.cp, label %middle.block126, label %vector.body121, !llvm.loop !13

middle.block126:                                  ; preds = %vector.body121
  %bin.rdx = and <4 x i32> %i.co, %i.cn
  %i.cq = tail call i32 @llvm.vector.reduce.and.v4i32(<4 x i32> %bin.rdx)
  br label %.lr.ph66.us.preheader129

.lr.ph66.us.preheader129:                         ; preds = %.lr.ph66.us.preheader, %middle.block126
  %indvars.iv104.ph = phi i64 [ %indvars.iv.next100, %.lr.ph66.us.preheader ], [ %i.at, %middle.block126 ]
  %.165.us.ph = phi i32 [ %.05270.us, %.lr.ph66.us.preheader ], [ %i.cq, %middle.block126 ]
  br label %.lr.ph66.us

.preheader59.lr.ph.split:                         ; preds = %.preheader59.lr.ph
  %i.cr = icmp sgt i32 %2, 0
  br i1 %i.cr, label %.preheader59.us77.preheader, label %._crit_edge73

.preheader59.us77.preheader:                      ; preds = %.preheader59.lr.ph.split
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 5
  %i.cs = and i64 %wide.trip.count, 3             ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  %i.cu = select i1 %i.ct, i64 4, i64 %i.cs
  %n.vec = sub nsw i64 %wide.trip.count, %i.cu    ; 2 uses
  br label %.preheader59.us77

.preheader59.us77:                                ; preds = %.preheader59.us77.preheader, %._crit_edge.us85
  %.072.us78 = phi ptr [ %i.ea, %._crit_edge.us85 ], [ %0, %.preheader59.us77.preheader ] ; 6 uses
  %.05171.us79 = phi ptr [ %i.eb, %._crit_edge.us85 ], [ %4, %.preheader59.us77.preheader ] ; 3 uses
  %.05270.us80 = phi i32 [ %i.dz, %._crit_edge.us85 ], [ 255, %.preheader59.us77.preheader ] ; 2 uses
  %.05569.us81 = phi i32 [ %i.ec, %._crit_edge.us85 ], [ 0, %.preheader59.us77.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader59.us77
  %i.cv = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %.05270.us80, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <4 x i32> [ %i.cv, %vector.ph ], [ %i.dr, %vector.body ]
  %i.cw = shl nuw nsw i64 %index, 2
  %i.cx = shl i64 %index, 2
  %i.cy = shl i64 %index, 2
  %i.cz = shl i64 %index, 2
  %i.da = getelementptr inbounds nuw i8, ptr %.072.us78, i64 %i.cw
  %i.db = getelementptr inbounds nuw i8, ptr %.072.us78, i64 %i.cx
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.072.us78, i64 %i.cy
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %.072.us78, i64 %i.cz
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.dh = load i8, ptr %i.da, align 1, !tbaa !16
  %i.di = load i8, ptr %i.dc, align 1, !tbaa !16
  %i.dj = load i8, ptr %i.de, align 1, !tbaa !16
  %i.dk = load i8, ptr %i.dg, align 1, !tbaa !16
  %i.dl = insertelement <4 x i8> poison, i8 %i.dh, i64 0
  %i.dm = insertelement <4 x i8> %i.dl, i8 %i.di, i64 1
  %i.dn = insertelement <4 x i8> %i.dm, i8 %i.dj, i64 2
  %i.do = insertelement <4 x i8> %i.dn, i8 %i.dk, i64 3 ; 2 uses
  %i.dp = zext <4 x i8> %i.do to <4 x i32>
  %i.dq = getelementptr inbounds nuw i8, ptr %.05171.us79, i64 %index
  store <4 x i8> %i.do, ptr %i.dq, align 1, !tbaa !16
  %i.dr = and <4 x i32> %vec.phi, %i.dp           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %i.dt = tail call i32 @llvm.vector.reduce.and.v4i32(<4 x i32> %i.dr)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader59.us77, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader59.us77 ], [ %n.vec, %middle.block ]
  %.165.us83.ph = phi i32 [ %.05270.us80, %.preheader59.us77 ], [ %i.dt, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %.165.us83 = phi i32 [ %i.dz, %scalar.ph ], [ %.165.us83.ph, %scalar.ph.preheader ]
  %i.du = shl nuw nsw i64 %indvars.iv, 2
  %i.dv = getelementptr inbounds nuw i8, ptr %.072.us78, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !16  ; 2 uses
  %i.dx = zext i8 %i.dw to i32
  %i.dy = getelementptr inbounds nuw i8, ptr %.05171.us79, i64 %indvars.iv
  store i8 %i.dw, ptr %i.dy, align 1, !tbaa !16
  %i.dz = and i32 %.165.us83, %i.dx               ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us85, label %scalar.ph, !llvm.loop !15

._crit_edge.us85:                                 ; preds = %scalar.ph
  %i.ea = getelementptr inbounds i8, ptr %.072.us78, i64 %i.e
  %i.eb = getelementptr inbounds i8, ptr %.05171.us79, i64 %i.f
  %i.ec = add nuw nsw i32 %.05569.us81, 1         ; 2 uses
  %exitcond98.not = icmp eq i32 %i.ec, %3
  br i1 %exitcond98.not, label %._crit_edge73, label %.preheader59.us77, !llvm.loop !12

._crit_edge73.loopexit:                           ; preds = %._crit_edge.us
  %i.ed = bitcast <2 x i64> %i.ae to <16 x i8>
  %i.ee = icmp eq <16 x i8> %i.ed, splat (i8 -1)
  %i.ef = bitcast <16 x i1> %i.ee to i16
  %i.eg = zext i16 %i.ef to i32
  br label %._crit_edge73

._crit_edge73:                                    ; preds = %._crit_edge.us85, %.preheader59.lr.ph.split, %._crit_edge73.loopexit, %bb.a
  %.056.lcssa = phi i32 [ 65535, %bb.a ], [ 65535, %.preheader59.lr.ph.split ], [ %i.eg, %._crit_edge73.loopexit ], [ 65535, %._crit_edge.us85 ]
  %.052.lcssa = phi i32 [ 255, %bb.a ], [ 255, %.preheader59.lr.ph.split ], [ %.1.lcssa.us, %._crit_edge73.loopexit ], [ %i.dz, %._crit_edge.us85 ]
  %i.eh = or i32 %.052.lcssa, 65280
  %i.ei = and i32 %i.eh, %.056.lcssa
  %i.ej = icmp eq i32 %i.ei, 65535
  %i.ek = zext i1 %i.ej to i32
  ret i32 %i.ek
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.and.v4i32(<4 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = distinct !{!10, !17}
!11 = distinct !{!11, !17, !18, !19}
!12 = distinct !{!12, !17}
!13 = distinct !{!13, !17, !19, !18}
!14 = distinct !{!14, !17, !19, !18}
!15 = distinct !{!15, !17, !18, !19}
!16 = !{!4, !4, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!"llvm.loop.isvectorized", i32 1}
end_hunk_0
