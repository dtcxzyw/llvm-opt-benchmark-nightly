begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@WebPExtractAlpha = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @WebPInitAlphaProcessingSSE41() local_unnamed_addr #0 {
bb.a:
  store ptr @ExtractAlpha_SSE41, ptr @WebPExtractAlpha, align 8, !tbaa !7
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
  %umax = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %i.h) ; 2 uses
  %i.j = sub i64 %umax, %i.g                      ; 2 uses
  %min.iters.check118 = icmp ult i64 %i.j, 9
  %n.mod.vf120 = and i64 %umax, 7                 ; 2 uses
  %i.k = icmp eq i64 %n.mod.vf120, 0
  %i.l = select i1 %i.k, i64 8, i64 %n.mod.vf120
  %n.vec121 = sub i64 %i.j, %i.l                  ; 2 uses
  br label %.preheader59.us

.preheader59.us:                                  ; preds = %.preheader59.us.preheader, %._crit_edge.us
  %.072.us = phi ptr [ %i.m, %._crit_edge.us ], [ %0, %.preheader59.us.preheader ] ; 11 uses
  %.05171.us = phi ptr [ %i.n, %._crit_edge.us ], [ %4, %.preheader59.us.preheader ] ; 4 uses
  %.05270.us = phi i32 [ %.1.lcssa.us, %._crit_edge.us ], [ 255, %.preheader59.us.preheader ] ; 3 uses
  %.05569.us = phi i32 [ %i.o, %._crit_edge.us ], [ 0, %.preheader59.us.preheader ]
  %.05668.us = phi <2 x i64> [ %i.am, %._crit_edge.us ], [ splat (i64 -1), %.preheader59.us.preheader ]
  br label %bb.b

._crit_edge.us:                                   ; preds = %.lr.ph66.us, %..preheader_crit_edge.us
  %.1.lcssa.us = phi i32 [ %.05270.us, %..preheader_crit_edge.us ], [ %i.u, %.lr.ph66.us ] ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.072.us, i64 %i.e
  %i.n = getelementptr inbounds i8, ptr %.05171.us, i64 %i.f
  %i.o = add nuw nsw i32 %.05569.us, 1            ; 2 uses
  %exitcond107.not = icmp eq i32 %i.o, %3
  br i1 %exitcond107.not, label %._crit_edge73.loopexit, label %.preheader59.us, !llvm.loop !9

.lr.ph66.us:                                      ; preds = %.lr.ph66.us.preheader130, %.lr.ph66.us
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %.lr.ph66.us ], [ %indvars.iv104.ph, %.lr.ph66.us.preheader130 ] ; 3 uses
  %.165.us = phi i32 [ %i.u, %.lr.ph66.us ], [ %.165.us.ph, %.lr.ph66.us.preheader130 ]
  %i.p = shl nsw i64 %indvars.iv104, 2
  %i.q = getelementptr inbounds nuw i8, ptr %.072.us, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !11    ; 2 uses
  %i.s = zext i8 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %.05171.us, i64 %indvars.iv104
  store i8 %i.r, ptr %i.t, align 1, !tbaa !11
  %i.u = and i32 %.165.us, %i.s                   ; 2 uses
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %i.v = icmp samesign ult i64 %indvars.iv.next105, %i.h
  br i1 %i.v, label %.lr.ph66.us, label %._crit_edge.us, !llvm.loop !12

bb.b:                                             ; preds = %.preheader59.us, %bb.b
  %indvars.iv102 = phi i64 [ 16, %.preheader59.us ], [ %indvars.iv.next103, %bb.b ] ; 4 uses
  %indvars.iv99 = phi i64 [ 0, %.preheader59.us ], [ %indvars.iv.next100, %bb.b ] ; 2 uses
  %.15761.us = phi <2 x i64> [ %.05668.us, %.preheader59.us ], [ %i.am, %bb.b ]
  %.05860.us = phi ptr [ %.072.us, %.preheader59.us ], [ %i.an, %bb.b ] ; 5 uses
  %i.w = load <16 x i8>, ptr %.05860.us, align 1, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %.05860.us, i64 16
  %i.y = load <16 x i8>, ptr %i.x, align 1, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %.05860.us, i64 32
  %i.aa = load <16 x i8>, ptr %i.z, align 1, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %.05860.us, i64 48
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !11
  %i.ad = shufflevector <16 x i8> %i.w, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.ae = shufflevector <16 x i8> %i.y, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 0, i32 4, i32 8, i32 12, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.af = shufflevector <16 x i8> %i.aa, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 0, i32 4, i32 8, i32 12, i32 16, i32 16, i32 16, i32 16>
  %i.ag = shufflevector <16 x i8> %i.ac, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 0, i32 4, i32 8, i32 12>
  %i.ah = or <16 x i8> %i.ae, %i.ad
  %i.ai = or <16 x i8> %i.ah, %i.af
  %i.aj = or <16 x i8> %i.ai, %i.ag               ; 2 uses
  %i.ak = bitcast <16 x i8> %i.aj to <2 x i64>
  %i.al = getelementptr inbounds nuw i8, ptr %.05171.us, i64 %indvars.iv99
  store <16 x i8> %i.aj, ptr %i.al, align 1, !tbaa !11
  %i.am = and <2 x i64> %.15761.us, %i.ak         ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.05860.us, i64 64
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 16 ; 3 uses
  %i.ao = icmp slt i64 %indvars.iv.next100, %i.g
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 16
  br i1 %i.ao, label %bb.b, label %..preheader_crit_edge.us, !llvm.loop !15

..preheader_crit_edge.us:                         ; preds = %bb.b
  %i.ap = trunc nuw nsw i64 %indvars.iv.next100 to i32
  %i.aq = icmp sgt i32 %2, %i.ap
  br i1 %i.aq, label %.lr.ph66.us.preheader, label %._crit_edge.us

.lr.ph66.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check118, label %.lr.ph66.us.preheader130, label %vector.ph119

vector.ph119:                                     ; preds = %.lr.ph66.us.preheader
  %i.ar = add i64 %indvars.iv102, %n.vec121
  %i.as = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %.05270.us, i64 0
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph119
  %index123 = phi i64 [ 0, %vector.ph119 ], [ %index.next126, %vector.body122 ] ; 2 uses
  %vec.phi124 = phi <4 x i32> [ %i.as, %vector.ph119 ], [ %i.cl, %vector.body122 ]
  %vec.phi125 = phi <4 x i32> [ splat (i32 -1), %vector.ph119 ], [ %i.cm, %vector.body122 ]
  %i.at = add i64 %indvars.iv102, %index123       ; 9 uses
  %i.au = shl nsw i64 %i.at, 2
  %i.av = shl i64 %i.at, 2
  %i.aw = shl i64 %i.at, 2
  %i.ax = shl i64 %i.at, 2
  %i.ay = shl i64 %i.at, 2
  %i.az = shl i64 %i.at, 2
  %i.ba = shl i64 %i.at, 2
  %i.bb = shl i64 %i.at, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %.072.us, i64 %i.au
  %i.bd = getelementptr inbounds nuw i8, ptr %.072.us, i64 %i.av
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %.072.us, i64 %i.aw
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.072.us, i64 %i.ax
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.bj = getelementptr inbounds nuw i8, ptr %.072.us, i64 %i.ay
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %.072.us, i64 %i.az
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  %i.bn = getelementptr inbounds nuw i8, ptr %.072.us, i64 %i.ba
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %.072.us, i64 %i.bb
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 28
  %i.br = load i8, ptr %i.bc, align 1, !tbaa !11
  %i.bs = load i8, ptr %i.be, align 1, !tbaa !11
  %i.bt = load i8, ptr %i.bg, align 1, !tbaa !11
  %i.bu = load i8, ptr %i.bi, align 1, !tbaa !11
  %i.bv = insertelement <4 x i8> poison, i8 %i.br, i64 0
  %i.bw = insertelement <4 x i8> %i.bv, i8 %i.bs, i64 1
  %i.bx = insertelement <4 x i8> %i.bw, i8 %i.bt, i64 2
  %i.by = insertelement <4 x i8> %i.bx, i8 %i.bu, i64 3 ; 2 uses
  %i.bz = load i8, ptr %i.bk, align 1, !tbaa !11
  %i.ca = load i8, ptr %i.bm, align 1, !tbaa !11
  %i.cb = load i8, ptr %i.bo, align 1, !tbaa !11
  %i.cc = load i8, ptr %i.bq, align 1, !tbaa !11
  %i.cd = insertelement <4 x i8> poison, i8 %i.bz, i64 0
  %i.ce = insertelement <4 x i8> %i.cd, i8 %i.ca, i64 1
  %i.cf = insertelement <4 x i8> %i.ce, i8 %i.cb, i64 2
  %i.cg = insertelement <4 x i8> %i.cf, i8 %i.cc, i64 3 ; 2 uses
  %i.ch = zext <4 x i8> %i.by to <4 x i32>
  %i.ci = zext <4 x i8> %i.cg to <4 x i32>
  %i.cj = getelementptr inbounds nuw i8, ptr %.05171.us, i64 %i.at ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store <4 x i8> %i.by, ptr %i.cj, align 1, !tbaa !11
  store <4 x i8> %i.cg, ptr %i.ck, align 1, !tbaa !11
  %i.cl = and <4 x i32> %vec.phi124, %i.ch        ; 2 uses
  %i.cm = and <4 x i32> %vec.phi125, %i.ci        ; 2 uses
  %index.next126 = add nuw i64 %index123, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next126, %n.vec121
  br i1 %i.cn, label %middle.block127, label %vector.body122, !llvm.loop !16

middle.block127:                                  ; preds = %vector.body122
  %bin.rdx = and <4 x i32> %i.cm, %i.cl
  %i.co = tail call i32 @llvm.vector.reduce.and.v4i32(<4 x i32> %bin.rdx)
  br label %.lr.ph66.us.preheader130

.lr.ph66.us.preheader130:                         ; preds = %.lr.ph66.us.preheader, %middle.block127
  %indvars.iv104.ph = phi i64 [ %indvars.iv102, %.lr.ph66.us.preheader ], [ %i.ar, %middle.block127 ]
  %.165.us.ph = phi i32 [ %.05270.us, %.lr.ph66.us.preheader ], [ %i.co, %middle.block127 ]
  br label %.lr.ph66.us

.preheader59.lr.ph.split:                         ; preds = %.preheader59.lr.ph
  %i.cp = icmp sgt i32 %2, 0
  br i1 %i.cp, label %.preheader59.us77.preheader, label %._crit_edge73

.preheader59.us77.preheader:                      ; preds = %.preheader59.lr.ph.split
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 5
  %n.mod.vf = and i64 %wide.trip.count, 3         ; 2 uses
  %i.cq = icmp eq i64 %n.mod.vf, 0
  %i.cr = select i1 %i.cq, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %wide.trip.count, %i.cr    ; 2 uses
  br label %.preheader59.us77

.preheader59.us77:                                ; preds = %.preheader59.us77.preheader, %._crit_edge.us86
  %.072.us78 = phi ptr [ %i.dx, %._crit_edge.us86 ], [ %0, %.preheader59.us77.preheader ] ; 6 uses
  %.05171.us79 = phi ptr [ %i.dy, %._crit_edge.us86 ], [ %4, %.preheader59.us77.preheader ] ; 3 uses
  %.05270.us80 = phi i32 [ %i.dw, %._crit_edge.us86 ], [ 255, %.preheader59.us77.preheader ] ; 2 uses
  %.05569.us81 = phi i32 [ %i.dz, %._crit_edge.us86 ], [ 0, %.preheader59.us77.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader59.us77
  %i.cs = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %.05270.us80, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <4 x i32> [ %i.cs, %vector.ph ], [ %i.do, %vector.body ]
  %i.ct = shl nsw i64 %index, 2
  %i.cu = shl i64 %index, 2
  %i.cv = shl i64 %index, 2
  %i.cw = shl i64 %index, 2
  %i.cx = getelementptr inbounds nuw i8, ptr %.072.us78, i64 %i.ct
  %i.cy = getelementptr inbounds nuw i8, ptr %.072.us78, i64 %i.cu
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %.072.us78, i64 %i.cv
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %.072.us78, i64 %i.cw
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %i.de = load i8, ptr %i.cx, align 1, !tbaa !11
  %i.df = load i8, ptr %i.cz, align 1, !tbaa !11
  %i.dg = load i8, ptr %i.db, align 1, !tbaa !11
  %i.dh = load i8, ptr %i.dd, align 1, !tbaa !11
  %i.di = insertelement <4 x i8> poison, i8 %i.de, i64 0
  %i.dj = insertelement <4 x i8> %i.di, i8 %i.df, i64 1
  %i.dk = insertelement <4 x i8> %i.dj, i8 %i.dg, i64 2
  %i.dl = insertelement <4 x i8> %i.dk, i8 %i.dh, i64 3 ; 2 uses
  %i.dm = zext <4 x i8> %i.dl to <4 x i32>
  %i.dn = getelementptr inbounds nuw i8, ptr %.05171.us79, i64 %index
  store <4 x i8> %i.dl, ptr %i.dn, align 1, !tbaa !11
  %i.do = and <4 x i32> %vec.phi, %i.dm           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %i.dq = tail call i32 @llvm.vector.reduce.and.v4i32(<4 x i32> %i.do)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader59.us77, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader59.us77 ], [ %n.vec, %middle.block ]
end_hunk_0
