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
  %i.i = add nsw i64 %i.g, -16
  %i.j = or disjoint i64 %i.g, 1
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %i.h) ; 2 uses
  %i.l = sub i64 %i.k, %i.i
  %i.m = add i64 %i.l, -16                        ; 2 uses
  %min.iters.check118 = icmp ult i64 %i.m, 9
  %n.mod.vf120 = and i64 %i.k, 7                  ; 2 uses
  %i.n = icmp eq i64 %n.mod.vf120, 0
  %i.o = select i1 %i.n, i64 8, i64 %n.mod.vf120
  %n.vec121 = sub i64 %i.m, %i.o                  ; 2 uses
  br label %.preheader59.us

.preheader59.us:                                  ; preds = %.preheader59.us.preheader, %._crit_edge.us
  %.072.us = phi ptr [ %6, %._crit_edge.us ], [ %0, %.preheader59.us.preheader ] ; 11 uses
  %.05171.us = phi ptr [ %7, %._crit_edge.us ], [ %4, %.preheader59.us.preheader ] ; 4 uses
  %.05270.us = phi i32 [ %.1.lcssa.us, %._crit_edge.us ], [ 255, %.preheader59.us.preheader ] ; 3 uses
  %.05569.us = phi i32 [ %8, %._crit_edge.us ], [ 0, %.preheader59.us.preheader ]
  %.05668.us = phi <2 x i64> [ %i.af, %._crit_edge.us ], [ splat (i64 -1), %.preheader59.us.preheader ]
  br label %bb.b

._crit_edge.us:                                   ; preds = %.lr.ph66.us, %..preheader_crit_edge.us
  %.1.lcssa.us = phi i32 [ %.05270.us, %..preheader_crit_edge.us ], [ %14, %.lr.ph66.us ] ; 2 uses
  %6 = getelementptr inbounds i8, ptr %.072.us, i64 %i.e
  %7 = getelementptr inbounds i8, ptr %.05171.us, i64 %i.f
  %8 = add nuw nsw i32 %.05569.us, 1              ; 2 uses
  %exitcond107.not = icmp eq i32 %8, %3
  br i1 %exitcond107.not, label %._crit_edge73.loopexit, label %.preheader59.us, !llvm.loop !9

.lr.ph66.us:                                      ; preds = %.lr.ph66.us.preheader130, %.lr.ph66.us
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %.lr.ph66.us ], [ %indvars.iv104.ph, %.lr.ph66.us.preheader130 ] ; 3 uses
  %.165.us = phi i32 [ %14, %.lr.ph66.us ], [ %.165.us.ph, %.lr.ph66.us.preheader130 ]
  %9 = shl nuw nsw i64 %indvars.iv104, 2
  %10 = getelementptr inbounds nuw i8, ptr %.072.us, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !11      ; 2 uses
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds nuw i8, ptr %.05171.us, i64 %indvars.iv104
  store i8 %11, ptr %13, align 1, !tbaa !11
  %14 = and i32 %.165.us, %12                     ; 2 uses
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %15 = icmp samesign ult i64 %indvars.iv.next105, %i.h
  br i1 %15, label %.lr.ph66.us, label %._crit_edge.us, !llvm.loop !12

bb.b:                                             ; preds = %.preheader59.us, %bb.b
  %indvars.iv102 = phi i64 [ 16, %.preheader59.us ], [ %indvars.iv.next103, %bb.b ] ; 4 uses
  %indvars.iv99 = phi i64 [ 0, %.preheader59.us ], [ %indvars.iv.next100, %bb.b ] ; 2 uses
  %.15761.us = phi <2 x i64> [ %.05668.us, %.preheader59.us ], [ %i.af, %bb.b ]
  %.05860.us = phi ptr [ %.072.us, %.preheader59.us ], [ %i.ag, %bb.b ] ; 5 uses
  %i.p = load <16 x i8>, ptr %.05860.us, align 1, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %.05860.us, i64 16
  %i.r = load <16 x i8>, ptr %i.q, align 1, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %.05860.us, i64 32
  %i.t = load <16 x i8>, ptr %i.s, align 1, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %.05860.us, i64 48
  %i.v = load <16 x i8>, ptr %i.u, align 1, !tbaa !11
  %i.w = shufflevector <16 x i8> %i.p, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.x = shufflevector <16 x i8> %i.r, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 0, i32 4, i32 8, i32 12, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.y = shufflevector <16 x i8> %i.t, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 0, i32 4, i32 8, i32 12, i32 16, i32 16, i32 16, i32 16>
  %i.z = shufflevector <16 x i8> %i.v, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 0, i32 4, i32 8, i32 12>
  %i.aa = or <16 x i8> %i.x, %i.w
  %i.ab = or <16 x i8> %i.aa, %i.y
  %i.ac = or <16 x i8> %i.ab, %i.z                ; 2 uses
  %i.ad = bitcast <16 x i8> %i.ac to <2 x i64>
  %i.ae = getelementptr inbounds nuw i8, ptr %.05171.us, i64 %indvars.iv99
  store <16 x i8> %i.ac, ptr %i.ae, align 1, !tbaa !11
  %i.af = and <2 x i64> %.15761.us, %i.ad         ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05860.us, i64 64
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 16 ; 3 uses
  %i.ah = icmp slt i64 %indvars.iv.next100, %i.g
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 16
  br i1 %i.ah, label %bb.b, label %..preheader_crit_edge.us, !llvm.loop !15

..preheader_crit_edge.us:                         ; preds = %bb.b
  %i.ai = trunc nuw nsw i64 %indvars.iv.next100 to i32
  %i.aj = icmp sgt i32 %2, %i.ai
  br i1 %i.aj, label %.lr.ph66.us.preheader, label %._crit_edge.us

.lr.ph66.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check118, label %.lr.ph66.us.preheader130, label %vector.ph119

vector.ph119:                                     ; preds = %.lr.ph66.us.preheader
  %i.ak = add i64 %indvars.iv102, %n.vec121
  %i.al = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %.05270.us, i64 0
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph119
  %index123 = phi i64 [ 0, %vector.ph119 ], [ %index.next126, %vector.body122 ] ; 2 uses
  %vec.phi124 = phi <4 x i32> [ %i.al, %vector.ph119 ], [ %i.ce, %vector.body122 ]
  %vec.phi125 = phi <4 x i32> [ splat (i32 -1), %vector.ph119 ], [ %i.cf, %vector.body122 ]
  %i.am = add nuw i64 %indvars.iv102, %index123   ; 9 uses
  %i.an = shl nuw nsw i64 %i.am, 2
  %i.ao = shl i64 %i.am, 2
  %i.ap = shl i64 %i.am, 2
  %i.aq = shl i64 %i.am, 2
  %i.ar = shl i64 %i.am, 2
  %i.as = shl i64 %i.am, 2
  %i.at = shl i64 %i.am, 2
  %i.au = shl i64 %i.am, 2
  %i.av = getelementptr inbounds nuw i8, ptr %.072.us, i64 %i.an
  %i.aw = getelementptr inbounds nuw i8, ptr %.072.us, i64 %i.ao
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.072.us, i64 %i.ap
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.072.us, i64 %i.aq
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bc = getelementptr inbounds nuw i8, ptr %.072.us, i64 %i.ar
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %.072.us, i64 %i.as
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.bg = getelementptr inbounds nuw i8, ptr %.072.us, i64 %i.at
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %.072.us, i64 %i.au
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  %i.bk = load i8, ptr %i.av, align 1, !tbaa !11
  %i.bl = load i8, ptr %i.ax, align 1, !tbaa !11
  %i.bm = load i8, ptr %i.az, align 1, !tbaa !11
  %i.bn = load i8, ptr %i.bb, align 1, !tbaa !11
  %i.bo = insertelement <4 x i8> poison, i8 %i.bk, i64 0
  %i.bp = insertelement <4 x i8> %i.bo, i8 %i.bl, i64 1
  %i.bq = insertelement <4 x i8> %i.bp, i8 %i.bm, i64 2
  %i.br = insertelement <4 x i8> %i.bq, i8 %i.bn, i64 3 ; 2 uses
  %i.bs = load i8, ptr %i.bd, align 1, !tbaa !11
  %i.bt = load i8, ptr %i.bf, align 1, !tbaa !11
  %i.bu = load i8, ptr %i.bh, align 1, !tbaa !11
  %i.bv = load i8, ptr %i.bj, align 1, !tbaa !11
  %i.bw = insertelement <4 x i8> poison, i8 %i.bs, i64 0
  %i.bx = insertelement <4 x i8> %i.bw, i8 %i.bt, i64 1
  %i.by = insertelement <4 x i8> %i.bx, i8 %i.bu, i64 2
  %i.bz = insertelement <4 x i8> %i.by, i8 %i.bv, i64 3 ; 2 uses
  %i.ca = zext <4 x i8> %i.br to <4 x i32>
  %i.cb = zext <4 x i8> %i.bz to <4 x i32>
  %i.cc = getelementptr inbounds nuw i8, ptr %.05171.us, i64 %i.am ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store <4 x i8> %i.br, ptr %i.cc, align 1, !tbaa !11
  store <4 x i8> %i.bz, ptr %i.cd, align 1, !tbaa !11
  %i.ce = and <4 x i32> %vec.phi124, %i.ca        ; 2 uses
  %i.cf = and <4 x i32> %vec.phi125, %i.cb        ; 2 uses
  %index.next126 = add nuw i64 %index123, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next126, %n.vec121
  br i1 %i.cg, label %middle.block127, label %vector.body122, !llvm.loop !16

middle.block127:                                  ; preds = %vector.body122
  %bin.rdx = and <4 x i32> %i.cf, %i.ce
  %i.ch = tail call i32 @llvm.vector.reduce.and.v4i32(<4 x i32> %bin.rdx)
  br label %.lr.ph66.us.preheader130

.lr.ph66.us.preheader130:                         ; preds = %.lr.ph66.us.preheader, %middle.block127
  %indvars.iv104.ph = phi i64 [ %indvars.iv102, %.lr.ph66.us.preheader ], [ %i.ak, %middle.block127 ]
  %.165.us.ph = phi i32 [ %.05270.us, %.lr.ph66.us.preheader ], [ %i.ch, %middle.block127 ]
  br label %.lr.ph66.us

.preheader59.lr.ph.split:                         ; preds = %.preheader59.lr.ph
  %i.ci = icmp sgt i32 %2, 0
  br i1 %i.ci, label %.preheader59.us77.preheader, label %._crit_edge73

.preheader59.us77.preheader:                      ; preds = %.preheader59.lr.ph.split
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 5
  %n.mod.vf = and i64 %wide.trip.count, 3         ; 2 uses
  %i.cj = icmp eq i64 %n.mod.vf, 0
  %i.ck = select i1 %i.cj, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %wide.trip.count, %i.ck    ; 2 uses
  br label %.preheader59.us77

.preheader59.us77:                                ; preds = %.preheader59.us77.preheader, %._crit_edge.us86
  %.072.us78 = phi ptr [ %i.dq, %._crit_edge.us86 ], [ %0, %.preheader59.us77.preheader ] ; 6 uses
  %.05171.us79 = phi ptr [ %i.dr, %._crit_edge.us86 ], [ %4, %.preheader59.us77.preheader ] ; 3 uses
  %.05270.us80 = phi i32 [ %i.dp, %._crit_edge.us86 ], [ 255, %.preheader59.us77.preheader ] ; 2 uses
  %.05569.us81 = phi i32 [ %i.ds, %._crit_edge.us86 ], [ 0, %.preheader59.us77.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader59.us77
  %i.cl = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %.05270.us80, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <4 x i32> [ %i.cl, %vector.ph ], [ %i.dh, %vector.body ]
  %i.cm = shl nuw nsw i64 %index, 2
  %i.cn = shl i64 %index, 2
  %i.co = shl i64 %index, 2
  %i.cp = shl i64 %index, 2
  %i.cq = getelementptr inbounds nuw i8, ptr %.072.us78, i64 %i.cm
  %i.cr = getelementptr inbounds nuw i8, ptr %.072.us78, i64 %i.cn
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %.072.us78, i64 %i.co
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.072.us78, i64 %i.cp
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  %i.cx = load i8, ptr %i.cq, align 1, !tbaa !11
  %i.cy = load i8, ptr %i.cs, align 1, !tbaa !11
  %i.cz = load i8, ptr %i.cu, align 1, !tbaa !11
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !11
  %i.db = insertelement <4 x i8> poison, i8 %i.cx, i64 0
  %i.dc = insertelement <4 x i8> %i.db, i8 %i.cy, i64 1
  %i.dd = insertelement <4 x i8> %i.dc, i8 %i.cz, i64 2
  %i.de = insertelement <4 x i8> %i.dd, i8 %i.da, i64 3 ; 2 uses
  %i.df = zext <4 x i8> %i.de to <4 x i32>
  %i.dg = getelementptr inbounds nuw i8, ptr %.05171.us79, i64 %index
  store <4 x i8> %i.de, ptr %i.dg, align 1, !tbaa !11
  %i.dh = and <4 x i32> %vec.phi, %i.df           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %i.dj = tail call i32 @llvm.vector.reduce.and.v4i32(<4 x i32> %i.dh)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader59.us77, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader59.us77 ], [ %n.vec, %middle.block ]
  %.165.us83.ph = phi i32 [ %.05270.us80, %.preheader59.us77 ], [ %i.dj, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %.165.us83 = phi i32 [ %i.dp, %scalar.ph ], [ %.165.us83.ph, %scalar.ph.preheader ]
  %i.dk = shl nuw nsw i64 %indvars.iv, 2
  %i.dl = getelementptr inbounds nuw i8, ptr %.072.us78, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !11  ; 2 uses
  %i.dn = zext i8 %i.dm to i32
  %i.do = getelementptr inbounds nuw i8, ptr %.05171.us79, i64 %indvars.iv
  store i8 %i.dm, ptr %i.do, align 1, !tbaa !11
  %i.dp = and i32 %.165.us83, %i.dn               ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us86, label %scalar.ph, !llvm.loop !18

._crit_edge.us86:                                 ; preds = %scalar.ph
  %i.dq = getelementptr inbounds i8, ptr %.072.us78, i64 %i.e
  %i.dr = getelementptr inbounds i8, ptr %.05171.us79, i64 %i.f
  %i.ds = add nuw nsw i32 %.05569.us81, 1         ; 2 uses
  %exitcond98.not = icmp eq i32 %i.ds, %3
  br i1 %exitcond98.not, label %._crit_edge73, label %.preheader59.us77, !llvm.loop !9

._crit_edge73.loopexit:                           ; preds = %._crit_edge.us
  %i.dt = bitcast <2 x i64> %i.af to <16 x i8>
  %i.du = icmp eq <16 x i8> %i.dt, splat (i8 -1)
  %i.dv = bitcast <16 x i1> %i.du to i16
  %i.dw = zext i16 %i.dv to i32
  br label %._crit_edge73

._crit_edge73:                                    ; preds = %._crit_edge.us86, %.preheader59.lr.ph.split, %._crit_edge73.loopexit, %bb.a
  %.056.lcssa = phi i32 [ 65535, %bb.a ], [ 65535, %.preheader59.lr.ph.split ], [ %i.dw, %._crit_edge73.loopexit ], [ 65535, %._crit_edge.us86 ]
  %.052.lcssa = phi i32 [ 255, %bb.a ], [ 255, %.preheader59.lr.ph.split ], [ %.1.lcssa.us, %._crit_edge73.loopexit ], [ %i.dp, %._crit_edge.us86 ]
  %i.dx = or i32 %.052.lcssa, 65280
  %i.dy = and i32 %i.dx, %.056.lcssa
  %i.dz = icmp eq i32 %i.dy, 65535
  %i.ea = zext i1 %i.dz to i32
  ret i32 %i.ea
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
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!5, !5, i64 0}
!12 = distinct !{!12, !10, !13, !14}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10, !14, !13}
!17 = distinct !{!17, !10, !14, !13}
!18 = distinct !{!18, !10, !13, !14}
end_hunk_0
