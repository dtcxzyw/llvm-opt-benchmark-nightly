inline.NumInlined: 18
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CLzmaDec = type { %struct._CLzmaProps, ptr, ptr, ptr, i32, i32, i64, i64, i32, i32, i32, [4 x i32], i32, i32, i32, i32, i32, [20 x i8] }
%struct._CLzmaProps = type { i32, i32, i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @LzmaDec_InitDicAndState(ptr nofree noundef writeonly captures(none) initializes((92, 100), (108, 112)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 1, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.b, align 4, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.c, align 4, !tbaa !16
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.d, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.e, align 4, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 1, ptr %i.f, align 4, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not8 = icmp eq i32 %2, 0
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 1, ptr %i.g, align 4, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @LzmaDec_Init(ptr nofree noundef writeonly captures(none) initializes((48, 56), (64, 72), (92, 104), (108, 112)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 1, ptr %i.b, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.c, align 4, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.d, align 4, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.e, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.f, align 4, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 1, ptr %i.g, align 4, !tbaa !19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @LzmaDec_DecodeToDic(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = load i64, ptr %3, align 8, !tbaa !21
  store i64 0, ptr %3, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15   ; 3 uses
  %i.e = add i32 %i.d, -1
  %or.cond.i = icmp ult i32 %i.e, 273
  br i1 %or.cond.i, label %bb.b, label %LzmaDec_WriteRem.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4
  %i.n = sub i64 %1, %i.i
  %i.o = zext nneg i32 %i.d to i64
  %spec.select38.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.o) ; 3 uses
  %spec.select.i = trunc nuw nsw i64 %spec.select38.i to i32 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !18
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %._crit_edge42.i

._crit_edge42.i:                                  ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !17
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !24   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load i32, ptr %i.u, align 8, !tbaa !17   ; 3 uses
  %i.w = sub i32 %i.t, %i.v
  %.not36.i = icmp ugt i32 %i.w, %spec.select.i
  br i1 %.not36.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.t, ptr %i.p, align 4, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge42.i
  %i.x = phi i32 [ %.pre.i, %._crit_edge42.i ], [ %i.v, %bb.d ], [ %i.v, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = add i32 %i.x, %spec.select.i
  store i32 %i.z, ptr %i.y, align 8, !tbaa !17
  %i.aa = sub nsw i32 %i.d, %spec.select.i
  store i32 %i.aa, ptr %i.c, align 4, !tbaa !15
  %.not3739.i = icmp eq i64 %spec.select38.i, 0
  br i1 %.not3739.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.ab = zext i32 %i.m to i64                    ; 6 uses
  %xtraiter = and i32 %spec.select.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.ac = add nsw i32 %spec.select.i, -1
  %i.ad = sub i64 %i.i, %i.ab
  %i.ae = icmp ult i64 %i.i, %i.ab
  %i.af = select i1 %i.ae, i64 %i.k, i64 0
  %i.ag = getelementptr i8, ptr %i.g, i64 %i.ad
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.af
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !25
  %i.ak = add i64 %i.i, 1                         ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %.lcssa359.unr = phi i64 [ poison, %.lr.ph.i ], [ %i.ak, %.prol.loopexit.unr-lcssa ]
  %.041.i.unr = phi i64 [ %i.i, %.lr.ph.i ], [ %i.ak, %.prol.loopexit.unr-lcssa ]
  %.140.i.unr = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %i.ac, %.prol.loopexit.unr-lcssa ]
  %i.al = icmp eq i64 %spec.select38.i, 1
  br i1 %i.al, label %._crit_edge.i, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %.041.i = phi i64 [ %i.bc, %.lr.ph.i.new ], [ %.041.i.unr, %.prol.loopexit ] ; 5 uses
  %.140.i = phi i32 [ %i.au, %.lr.ph.i.new ], [ %.140.i.unr, %.prol.loopexit ]
  %i.am = sub i64 %.041.i, %i.ab
  %i.an = icmp ult i64 %.041.i, %i.ab
  %i.ao = select i1 %i.an, i64 %i.k, i64 0
  %i.ap = getelementptr i8, ptr %i.g, i64 %i.am
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.ao
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !25
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 %.041.i
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !25
  %i.at = add i64 %.041.i, 1                      ; 3 uses
  %i.au = add i32 %.140.i, -2                     ; 2 uses
  %i.av = sub i64 %i.at, %i.ab
  %i.aw = icmp ult i64 %i.at, %i.ab
  %i.ax = select i1 %i.aw, i64 %i.k, i64 0
  %i.ay = getelementptr i8, ptr %i.g, i64 %i.av
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.ax
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.at
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !25
  %i.bc = add i64 %.041.i, 2                      ; 2 uses
  %.not37.i.1 = icmp eq i32 %i.au, 0
  br i1 %.not37.i.1, label %._crit_edge.i, label %.lr.ph.i.new, !llvm.loop !26

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i.new, %bb.e
  %.0.lcssa.i = phi i64 [ %i.i, %bb.e ], [ %.lcssa359.unr, %.prol.loopexit ], [ %i.bc, %.lr.ph.i.new ]
  store i64 %.0.lcssa.i, ptr %i.h, align 8, !tbaa !20
  br label %LzmaDec_WriteRem.exit

LzmaDec_WriteRem.exit:                            ; preds = %bb.a, %._crit_edge.i
  store i32 0, ptr %5, align 4, !tbaa !4
  %i.bd = load i32, ptr %i.c, align 4, !tbaa !15  ; 2 uses
  %.not229 = icmp eq i32 %i.bd, 274
  br i1 %.not229, label %._crit_edge233, label %.lr.ph232

.lr.ph232:                                        ; preds = %LzmaDec_WriteRem.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 11 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 13 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 114
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 115
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bo = icmp eq i32 %4, 0                       ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.bv = ptrtoint ptr %i.bg to i64
  %i.bw = add i64 %i.a, 112
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph232, %bb.an
  %i.bx = phi i32 [ %i.bd, %.lr.ph232 ], [ %i.gu, %bb.an ]
  %.0124231 = phi ptr [ %2, %.lr.ph232 ], [ %.6130, %bb.an ] ; 9 uses
  %.0137230 = phi i64 [ %i.b, %.lr.ph232 ], [ %.6143, %bb.an ] ; 8 uses
  %i.by = load i32, ptr %i.be, align 8, !tbaa !8
  %.not155 = icmp eq i32 %i.by, 0
  br i1 %.not155, label %bb.r, label %.preheader195

.preheader195:                                    ; preds = %bb.f
  %.not156215 = icmp eq i64 %.0137230, 0
  %.pre = load i32, ptr %i.bf, align 4, !tbaa !16 ; 6 uses
  br i1 %.not156215, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader195
  %umax = tail call i32 @llvm.umax.i32(i32 %.pre, i32 5)
  %wide.trip.count = zext i32 %umax to i64        ; 4 uses
  %exitcond.not304 = icmp ugt i32 %.pre, 4
  br i1 %exitcond.not304, label %.critedge, label %.lr.ph308

.lr.ph308:                                        ; preds = %.lr.ph
  %i.bz = zext nneg i32 %.pre to i64              ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0124231, i64 1 ; 3 uses
  %i.cb = load i8, ptr %.0124231, align 1, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %i.bz, 1     ; 3 uses
  %i.cc = trunc nuw nsw i64 %indvars.iv.next to i32 ; 3 uses
  store i32 %i.cc, ptr %i.bf, align 4, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bz
  store i8 %i.cb, ptr %i.cd, align 1, !tbaa !25
  %i.ce = load i64, ptr %3, align 8, !tbaa !21
  %i.cf = add i64 %i.ce, 1
  store i64 %i.cf, ptr %3, align 8, !tbaa !21
  %i.cg = add i64 %.0137230, -1                   ; 2 uses
  %.not156 = icmp eq i64 %i.cg, 0
  br i1 %.not156, label %..critedge.loopexit_crit_edge, label %bb.g, !llvm.loop !28

bb.g:                                             ; preds = %.lr.ph308
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ch = getelementptr inbounds nuw i8, ptr %.0124231, i64 2 ; 3 uses
  %i.ci = load i8, ptr %i.ca, align 1, !tbaa !25
  %indvars.iv.next.1 = add nuw nsw i64 %i.bz, 2   ; 3 uses
  %i.cj = trunc nuw nsw i64 %indvars.iv.next.1 to i32 ; 3 uses
  store i32 %i.cj, ptr %i.bf, align 4, !tbaa !16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.next
  store i8 %i.ci, ptr %i.ck, align 1, !tbaa !25
  %i.cl = load i64, ptr %3, align 8, !tbaa !21
  %i.cm = add i64 %i.cl, 1
  store i64 %i.cm, ptr %3, align 8, !tbaa !21
  %i.cn = add i64 %.0137230, -2                   ; 2 uses
  %.not156.1 = icmp eq i64 %i.cn, 0
  br i1 %.not156.1, label %..critedge.loopexit_crit_edge, label %bb.i, !llvm.loop !28

bb.i:                                             ; preds = %bb.h
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = getelementptr inbounds nuw i8, ptr %.0124231, i64 3 ; 3 uses
  %i.cp = load i8, ptr %i.ch, align 1, !tbaa !25
  %indvars.iv.next.2 = add nuw nsw i64 %i.bz, 3   ; 3 uses
  %i.cq = trunc nuw nsw i64 %indvars.iv.next.2 to i32 ; 3 uses
  store i32 %i.cq, ptr %i.bf, align 4, !tbaa !16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.next.1
  store i8 %i.cp, ptr %i.cr, align 1, !tbaa !25
  %i.cs = load i64, ptr %3, align 8, !tbaa !21
  %i.ct = add i64 %i.cs, 1
  store i64 %i.ct, ptr %3, align 8, !tbaa !21
  %i.cu = add i64 %.0137230, -3                   ; 2 uses
  %.not156.2 = icmp eq i64 %i.cu, 0
  br i1 %.not156.2, label %..critedge.loopexit_crit_edge, label %bb.k, !llvm.loop !28

bb.k:                                             ; preds = %bb.j
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, %wide.trip.count
  br i1 %exitcond.not.2, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cv = getelementptr inbounds nuw i8, ptr %.0124231, i64 4 ; 3 uses
  %i.cw = load i8, ptr %i.co, align 1, !tbaa !25
  %indvars.iv.next.3 = add nuw nsw i64 %i.bz, 4   ; 3 uses
  %i.cx = trunc nuw nsw i64 %indvars.iv.next.3 to i32 ; 3 uses
  store i32 %i.cx, ptr %i.bf, align 4, !tbaa !16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.next.2
  store i8 %i.cw, ptr %i.cy, align 1, !tbaa !25
  %i.cz = load i64, ptr %3, align 8, !tbaa !21
  %i.da = add i64 %i.cz, 1
  store i64 %i.da, ptr %3, align 8, !tbaa !21
  %i.db = add i64 %.0137230, -4                   ; 2 uses
  %.not156.3 = icmp eq i64 %i.db, 0
  br i1 %.not156.3, label %..critedge.loopexit_crit_edge, label %bb.m, !llvm.loop !28

bb.m:                                             ; preds = %bb.l
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %.0124231, i64 5 ; 2 uses
  %i.dd = load i8, ptr %i.cv, align 1, !tbaa !25
  %indvars.iv.next.4 = add nuw nsw i32 %.pre, 5   ; 3 uses
  store i32 %indvars.iv.next.4, ptr %i.bf, align 4, !tbaa !16
  %i.de = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.next.3
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !25
  %i.df = load i64, ptr %3, align 8, !tbaa !21
  %i.dg = add i64 %i.df, 1
  store i64 %i.dg, ptr %3, align 8, !tbaa !21
  %i.dh = add i64 %.0137230, -5                   ; 2 uses
  %.not156.4 = icmp eq i64 %i.dh, 0
  br i1 %.not156.4, label %..critedge.loopexit_crit_edge, label %.critedge, !llvm.loop !28

..critedge.loopexit_crit_edge:                    ; preds = %bb.n, %bb.l, %bb.j, %bb.h, %.lr.ph308
  %.lcssa338 = phi ptr [ %i.ca, %.lr.ph308 ], [ %i.ch, %bb.h ], [ %i.co, %bb.j ], [ %i.cv, %bb.l ], [ %i.dc, %bb.n ]
  %.lcssa336 = phi i32 [ %i.cc, %.lr.ph308 ], [ %i.cj, %bb.h ], [ %i.cq, %bb.j ], [ %i.cx, %bb.l ], [ %indvars.iv.next.4, %bb.n ]
  br label %.critedge, !llvm.loop !28

.critedge:                                        ; preds = %bb.g, %bb.i, %bb.k, %bb.m, %bb.n, %.lr.ph, %..critedge.loopexit_crit_edge, %.preheader195
  %i.di = phi i32 [ %.pre, %.preheader195 ], [ %.pre, %.lr.ph ], [ %.lcssa336, %..critedge.loopexit_crit_edge ], [ %i.cc, %bb.g ], [ %i.cj, %bb.i ], [ %i.cq, %bb.k ], [ %i.cx, %bb.m ], [ %indvars.iv.next.4, %bb.n ]
  %.1138.lcssa = phi i64 [ 0, %.preheader195 ], [ %.0137230, %.lr.ph ], [ 0, %..critedge.loopexit_crit_edge ], [ %i.cg, %bb.g ], [ %i.cn, %bb.i ], [ %i.cu, %bb.k ], [ %i.db, %bb.m ], [ %i.dh, %bb.n ]
  %.1125.lcssa = phi ptr [ %.0124231, %.preheader195 ], [ %.0124231, %.lr.ph ], [ %.lcssa338, %..critedge.loopexit_crit_edge ], [ %i.ca, %bb.g ], [ %i.ch, %bb.i ], [ %i.co, %bb.k ], [ %i.cv, %bb.m ], [ %i.dc, %bb.n ]
  %i.dj = icmp ult i32 %i.di, 5
  br i1 %i.dj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.critedge
  store i32 3, ptr %5, align 4, !tbaa !4
  br label %.thread187

bb.p:                                             ; preds = %.critedge
  %i.dk = load i8, ptr %i.bg, align 8, !tbaa !25
  %.not157 = icmp eq i8 %i.dk, 0
  br i1 %.not157, label %bb.q, label %.thread187

bb.q:                                             ; preds = %bb.p
  %i.dl = load i8, ptr %i.bh, align 1, !tbaa !25
  %i.dm = zext i8 %i.dl to i32
  %i.dn = shl nuw i32 %i.dm, 24
  %i.do = load i8, ptr %i.bi, align 2, !tbaa !25
  %i.dp = zext i8 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 16
  %i.dr = or disjoint i32 %i.dq, %i.dn
  %i.ds = load i8, ptr %i.bj, align 1, !tbaa !25
  %i.dt = zext i8 %i.ds to i32
  %i.du = shl nuw nsw i32 %i.dt, 8
  %i.dv = or disjoint i32 %i.dr, %i.du
  %i.dw = load i8, ptr %i.bk, align 4, !tbaa !25
  %i.dx = zext i8 %i.dw to i32
  %i.dy = or disjoint i32 %i.dv, %i.dx
  store i32 %i.dy, ptr %i.bl, align 4, !tbaa !29
  store i32 -1, ptr %i.bm, align 8, !tbaa !30
  store i32 0, ptr %i.be, align 8, !tbaa !8
  store i32 0, ptr %i.bf, align 4, !tbaa !16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.f
  %.2139 = phi i64 [ %.1138.lcssa, %bb.q ], [ %.0137230, %bb.f ]
  %.2126 = phi ptr [ %.1125.lcssa, %bb.q ], [ %.0124231, %bb.f ] ; 10 uses
  %.2139.fr = freeze i64 %.2139                   ; 10 uses
  %.2126315 = ptrtoaddr ptr %.2126 to i64
  %i.dz = load i64, ptr %i.bn, align 8, !tbaa !20
  %.not158 = icmp uge i64 %i.dz, %1               ; 5 uses
  br i1 %.not158, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.ea = icmp eq i32 %i.bx, 0
  br i1 %i.ea, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.eb = load i32, ptr %i.bl, align 4, !tbaa !29
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 4, ptr %5, align 4, !tbaa !4
  br label %.thread187

bb.v:                                             ; preds = %bb.t
  br i1 %i.bo, label %.loopexit, label %bb.x

.thread:                                          ; preds = %bb.s
  br i1 %i.bo, label %.loopexit, label %bb.w

.loopexit:                                        ; preds = %bb.v, %.thread
  store i32 2, ptr %5, align 4, !tbaa !4
  br label %.thread187

bb.w:                                             ; preds = %.thread
  store i32 2, ptr %5, align 4, !tbaa !4
  br label %.thread187

bb.x:                                             ; preds = %bb.v, %bb.r
  %i.ed = load i32, ptr %i.bp, align 4, !tbaa !19
  %.not160 = icmp eq i32 %i.ed, 0
  br i1 %.not160, label %bb.y, label %iter.check

iter.check:                                       ; preds = %bb.x
  %i.ee = load i32, ptr %0, align 8, !tbaa !31
  %i.ef = load i32, ptr %i.bq, align 4, !tbaa !32
  %i.eg = add i32 %i.ef, %i.ee
  %i.eh = shl i32 768, %i.eg
  %i.ei = add nuw i32 %i.eh, 1846
  %i.ej = load ptr, ptr %i.br, align 8, !tbaa !33 ; 4 uses
  %wide.trip.count.i = zext i32 %i.ei to i64      ; 3 uses
  %n.vec321 = add nsw i64 %wide.trip.count.i, -6  ; 2 uses
  br label %vector.body322

vector.body322:                                   ; preds = %vector.body322, %iter.check
  %index323 = phi i64 [ 0, %iter.check ], [ %index.next324, %vector.body322 ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %index323 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store <8 x i16> splat (i16 1024), ptr %i.ek, align 2, !tbaa !34
  store <8 x i16> splat (i16 1024), ptr %i.el, align 2, !tbaa !34
  %index.next324 = add nuw i64 %index323, 16      ; 2 uses
  %i.em = icmp eq i64 %index.next324, %n.vec321
  br i1 %i.em, label %vec.epilog.vector.body, label %vector.body322, !llvm.loop !36

vec.epilog.vector.body:                           ; preds = %vector.body322
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %n.vec321
  store <4 x i16> splat (i16 1024), ptr %i.en, align 2, !tbaa !34
  %i.eo = getelementptr [2 x i8], ptr %i.ej, i64 %wide.trip.count.i
  %i.ep = getelementptr i8, ptr %i.eo, i64 -4
  store i16 1024, ptr %i.ep, align 2, !tbaa !34
  %i.eq = getelementptr [2 x i8], ptr %i.ej, i64 %wide.trip.count.i
  %i.er = getelementptr i8, ptr %i.eq, i64 -2
  store i16 1024, ptr %i.er, align 2, !tbaa !34
  store i32 1, ptr %i.bs, align 8, !tbaa !4
  store <4 x i32> <i32 0, i32 1, i32 1, i32 1>, ptr %i.bt, align 8, !tbaa !4
  store i32 0, ptr %i.bp, align 4, !tbaa !19
  br label %bb.y

bb.y:                                             ; preds = %vec.epilog.vector.body, %bb.x
  %i.es = load i32, ptr %i.bf, align 4, !tbaa !16 ; 4 uses
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.z, label %.preheader

.preheader:                                       ; preds = %bb.y
  %i.eu = icmp ult i32 %i.es, 20                  ; 2 uses
  %i.ev = icmp ne i64 %.2139.fr, 0
  %i.ew = and i1 %i.eu, %i.ev
  br i1 %i.ew, label %.lr.ph224.preheader, label %._crit_edge

.lr.ph224.preheader:                              ; preds = %.preheader
  %i.ex = zext nneg i32 %i.es to i64              ; 7 uses
  %i.ey = add i64 %.2139.fr, -1
  %i.ez = sub nsw i64 19, %i.ex
  %umin = tail call i64 @llvm.umin.i64(i64 %i.ey, i64 %i.ez)
  %i.fa = add i64 %umin, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.fa, 8
  br i1 %min.iters.check, label %.lr.ph224.preheader333, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph224.preheader
  %i.fb = add i64 %i.bw, %i.ex
  %i.fc = sub i64 %.2126315, %i.fb
  %diff.check = icmp ugt i64 %i.fc, -8
  br i1 %diff.check, label %.lr.ph224.preheader333, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fa, -8                      ; 5 uses
  %i.fd = add i64 %n.vec, %i.ex                   ; 2 uses
  %i.fe = add nuw nsw i64 %i.ex, 3
  %invariant.gep = getelementptr i8, ptr %i.bg, i64 %i.ex
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %6 = phi i64 [ %i.fe, %vector.ph ], [ %7, %vector.body ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.2126, i64 %index ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %wide.load.a = load <4 x i8>, ptr %i.ff, align 1, !tbaa !25
  %wide.load316.a = load <4 x i8>, ptr %i.fg, align 1, !tbaa !25
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %gep, i64 4
  store <4 x i8> %wide.load.a, ptr %gep, align 1, !tbaa !25
  store <4 x i8> %wide.load316.a, ptr %i.fh, align 1, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %7 = add nuw nsw i64 %6, 8
  %8 = icmp eq i64 %index.next, %n.vec
  br i1 %8, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %i.fi = icmp samesign ult i64 %6, 15
  %cmp.n = icmp eq i64 %i.fa, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph224.preheader333

.lr.ph224.preheader333:                           ; preds = %vector.memcheck, %.lr.ph224.preheader, %middle.block
  %indvars.iv258.ph = phi i64 [ %i.ex, %vector.memcheck ], [ %i.ex, %.lr.ph224.preheader ], [ %i.fd, %middle.block ]
  %indvars.iv256.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph224.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph224

bb.z:                                             ; preds = %bb.y
  %i.fj = icmp ult i64 %.2139.fr, 20
  %or.cond = or i1 %i.fj, %.not158
  br i1 %or.cond, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.fk = tail call fastcc i32 @LzmaDec_TryDummy(ptr noundef nonnull %0, ptr noundef %.2126, i64 noundef %.2139.fr) ; 2 uses
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr align 1 %.2126, i64 %.2139.fr, i1 false)
  %i.fm = trunc i64 %.2139.fr to i32
  store i32 %i.fm, ptr %i.bf, align 4, !tbaa !16
  %i.fn = load i64, ptr %3, align 8, !tbaa !21
  %i.fo = add i64 %i.fn, %.2139.fr
  store i64 %i.fo, ptr %3, align 8, !tbaa !21
  store i32 3, ptr %5, align 4, !tbaa !4
  br label %.thread187

bb.ac:                                            ; preds = %bb.aa
  %i.fp = icmp ne i32 %i.fk, 2
  %or.cond7 = and i1 %.not158, %i.fp
  br i1 %or.cond7, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  store i32 2, ptr %5, align 4, !tbaa !4
  br label %.thread187

bb.ae:                                            ; preds = %bb.z
  %i.fq = getelementptr inbounds nuw i8, ptr %.2126, i64 %.2139.fr
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 -20
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ae
  %.2133 = phi ptr [ %i.fr, %bb.ae ], [ %.2126, %bb.ac ]
  store ptr %.2126, ptr %i.bu, align 8, !tbaa !40
  %i.fs = tail call fastcc i32 @LzmaDec_DecodeReal2(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %.2133)
  %.not163 = icmp eq i32 %i.fs, 0
  br i1 %.not163, label %bb.ag, label %.thread187

bb.ag:                                            ; preds = %bb.af
  %i.ft = load ptr, ptr %i.bu, align 8, !tbaa !40
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %.2126 to i64
  %i.fw = sub i64 %i.fu, %i.fv                    ; 2 uses
  %i.fx = load i64, ptr %3, align 8, !tbaa !21
  %i.fy = add i64 %i.fw, %i.fx
  store i64 %i.fy, ptr %3, align 8, !tbaa !21
  br label %bb.an

.lr.ph224:                                        ; preds = %.lr.ph224.preheader333, %.lr.ph224
  %indvars.iv258 = phi i64 [ %indvars.iv.next259, %.lr.ph224 ], [ %indvars.iv258.ph, %.lr.ph224.preheader333 ] ; 3 uses
  %indvars.iv256 = phi i64 [ %indvars.iv.next257, %.lr.ph224 ], [ %indvars.iv256.ph, %.lr.ph224.preheader333 ] ; 2 uses
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.2126, i64 %indvars.iv256
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !25
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv258
  store i8 %i.ga, ptr %i.gb, align 1, !tbaa !25
  %i.gc = icmp samesign ult i64 %indvars.iv258, 19 ; 2 uses
  %i.gd = icmp ugt i64 %.2139.fr, %indvars.iv.next257
  %i.ge = select i1 %i.gc, i1 %i.gd, i1 false
  br i1 %i.ge, label %.lr.ph224, label %._crit_edge.loopexit, !llvm.loop !41

._crit_edge.loopexit:                             ; preds = %.lr.ph224, %middle.block
  %indvars.iv.next257.lcssa = phi i64 [ %n.vec, %middle.block ], [ %indvars.iv.next257, %.lr.ph224 ] ; 2 uses
  %indvars.iv.next259.lcssa = phi i64 [ %i.fd, %middle.block ], [ %indvars.iv.next259, %.lr.ph224 ]
  %.lcssa287 = phi i1 [ %i.fi, %middle.block ], [ %i.gc, %.lr.ph224 ]
  %i.gf = trunc nuw nsw i64 %indvars.iv.next259.lcssa to i32
  %i.gg = trunc nuw nsw i64 %indvars.iv.next257.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.0123.lcssa = phi i32 [ %i.es, %.preheader ], [ %i.gf, %._crit_edge.loopexit ] ; 3 uses
  %.0122.lcssa = phi i32 [ 0, %.preheader ], [ %i.gg, %._crit_edge.loopexit ]
  %.lcssa197 = phi i1 [ %i.eu, %.preheader ], [ %.lcssa287, %._crit_edge.loopexit ]
  %.lcssa = phi i64 [ 0, %.preheader ], [ %indvars.iv.next257.lcssa, %._crit_edge.loopexit ]
  store i32 %.0123.lcssa, ptr %i.bf, align 4, !tbaa !16
  %or.cond9 = or i1 %.not158, %.lcssa197
  br i1 %or.cond9, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %._crit_edge
  %i.gh = zext i32 %.0123.lcssa to i64
  %i.gi = tail call fastcc i32 @LzmaDec_TryDummy(ptr noundef nonnull %0, ptr noundef nonnull %i.bg, i64 noundef %i.gh) ; 2 uses
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gk = load i64, ptr %3, align 8, !tbaa !21
  %i.gl = add i64 %i.gk, %.lcssa
  store i64 %i.gl, ptr %3, align 8, !tbaa !21
  store i32 3, ptr %5, align 4, !tbaa !4
  br label %.thread187

bb.aj:                                            ; preds = %bb.ah
  %i.gm = icmp ne i32 %i.gi, 2
  %or.cond11 = and i1 %.not158, %i.gm
  br i1 %or.cond11, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 2, ptr %5, align 4, !tbaa !4
  br label %.thread187

bb.al:                                            ; preds = %bb.aj, %._crit_edge
  store ptr %i.bg, ptr %i.bu, align 8, !tbaa !40
  %i.gn = tail call fastcc i32 @LzmaDec_DecodeReal2(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %i.bg)
  %.not161 = icmp eq i32 %i.gn, 0
  br i1 %.not161, label %bb.am, label %.thread187

bb.am:                                            ; preds = %bb.al
  %i.go = load ptr, ptr %i.bu, align 8, !tbaa !40
  %i.gp = ptrtoint ptr %i.go to i64
  %.neg.neg = sub i64 %i.gp, %i.bv
  %.neg162.neg234 = trunc i64 %.neg.neg to i32
  %.neg194 = sub i32 %.0122.lcssa, %.0123.lcssa
  %i.gq = add i32 %.neg194, %.neg162.neg234
  %i.gr = zext i32 %i.gq to i64                   ; 2 uses
  %i.gs = load i64, ptr %3, align 8, !tbaa !21
  %i.gt = add i64 %i.gs, %i.gr
  store i64 %i.gt, ptr %3, align 8, !tbaa !21
  store i32 0, ptr %i.bf, align 4, !tbaa !16
  br label %bb.an

bb.an:                                            ; preds = %bb.ag, %bb.am
  %.pn = phi i64 [ %i.gr, %bb.am ], [ %i.fw, %bb.ag ] ; 2 uses
  %.6130 = getelementptr inbounds nuw i8, ptr %.2126, i64 %.pn
  %.6143 = sub i64 %.2139.fr, %.pn
  %i.gu = load i32, ptr %i.c, align 4, !tbaa !15  ; 2 uses
  %.not = icmp eq i32 %i.gu, 274
  br i1 %.not, label %._crit_edge233, label %bb.f, !llvm.loop !42

._crit_edge233:                                   ; preds = %bb.an, %LzmaDec_WriteRem.exit
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !29
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.ao, label %.thread187

bb.ao:                                            ; preds = %._crit_edge233
  store i32 1, ptr %5, align 4, !tbaa !4
  %.pre263 = load i32, ptr %i.gv, align 4, !tbaa !29
  %i.gy = icmp ne i32 %.pre263, 0
  %i.gz = zext i1 %i.gy to i32
  br label %.thread187

.thread187:                                       ; preds = %bb.al, %bb.af, %bb.p, %._crit_edge233, %bb.ao, %bb.ak, %bb.ai, %bb.ad, %bb.ab, %bb.w, %.loopexit, %bb.u, %bb.o
  %.9 = phi i32 [ 1, %._crit_edge233 ], [ 0, %bb.o ], [ 0, %bb.ai ], [ 1, %bb.w ], [ 0, %.loopexit ], [ 0, %bb.u ], [ 0, %bb.ab ], [ 1, %bb.ak ], [ 1, %bb.ad ], [ %i.gz, %bb.ao ], [ 1, %bb.p ], [ 1, %bb.af ], [ 1, %bb.al ]
  ret i32 %.9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 4) i32 @LzmaDec_TryDummy(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !30   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i32, ptr %i.h, align 8, !tbaa !43   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i32, ptr %i.j, align 8, !tbaa !17   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !44
  %notmask = shl nsw i32 -1, %i.m
  %i.n = xor i32 %notmask, -1
  %i.o = and i32 %i.k, %i.n                       ; 3 uses
  %i.p = shl i32 %i.i, 4
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.q
  %i.s = zext nneg i32 %i.o to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !34
  %i.v = zext i16 %i.u to i32
  %i.w = icmp ult i32 %i.b, 16777216
  br i1 %i.w, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not.not = icmp eq i64 %2, 0
  br i1 %.not.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = shl nuw i32 %i.b, 8
  %i.y = shl i32 %i.d, 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aa = load i8, ptr %1, align 1, !tbaa !25
  %i.ab = zext i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.y, %i.ab
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0449 = phi i32 [ %i.ac, %bb.c ], [ %i.d, %bb.a ] ; 4 uses
  %.0404 = phi i32 [ %i.x, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %.0372 = phi ptr [ %i.z, %bb.c ], [ %1, %bb.a ] ; 6 uses
  %i.ad = lshr i32 %.0404, 11
  %i.ae = mul i32 %i.ad, %i.v                     ; 5 uses
  %i.af = icmp ult i32 %.0449, %i.ae
  br i1 %i.af, label %bb.e, label %bb.z

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 3692 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !18
  %i.aj = or i32 %i.ai, %i.k
  %or.cond595 = icmp eq i32 %i.aj, 0
  br i1 %or.cond595, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !32
  %notmask550 = shl nsw i32 -1, %i.al
  %i.am = xor i32 %notmask550, -1
  %i.an = and i32 %i.k, %i.am
  %i.ao = load i32, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.ap = shl i32 %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = load i64, ptr %i.as, align 8, !tbaa !20 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !23
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ax = phi i64 [ %i.aw, %bb.g ], [ %i.at, %bb.f ]
  %i.ay = getelementptr i8, ptr %i.ar, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 -1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !25
  %i.bb = zext i8 %i.ba to i32
  %i.bc = sub i32 8, %i.ao
  %i.bd = lshr i32 %i.bb, %i.bc
  %i.be = add i32 %i.bd, %i.ap
  %i.bf = mul i32 %i.be, 768
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.bg
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h
  %.0441 = phi ptr [ %i.bh, %bb.h ], [ %i.ag, %bb.e ] ; 2 uses
  %i.bi = icmp ult i32 %i.i, 7
  br i1 %i.bi, label %.preheader, label %bb.p

.preheader:                                       ; preds = %bb.i, %bb.o
  %.1450 = phi i32 [ %.3452, %bb.o ], [ %.0449, %bb.i ] ; 2 uses
  %.1405 = phi i32 [ %.3407, %bb.o ], [ %i.ae, %bb.i ] ; 3 uses
  %.0393 = phi i32 [ %.1394, %bb.o ], [ 1, %bb.i ] ; 3 uses
  %.1373 = phi ptr [ %.2374, %bb.o ], [ %.0372, %bb.i ] ; 4 uses
  %i.bj = zext nneg i32 %.0393 to i64
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.0441, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !34
  %i.bm = zext i16 %i.bl to i32
  %i.bn = icmp ult i32 %.1405, 16777216
  br i1 %i.bn, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.preheader
  %.not552 = icmp ult ptr %.1373, %i.e
  br i1 %.not552, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bo = shl nuw i32 %.1405, 8
  %i.bp = shl i32 %.1450, 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.1373, i64 1
  %i.br = load i8, ptr %.1373, align 1, !tbaa !25
  %i.bs = zext i8 %i.br to i32
  %i.bt = or disjoint i32 %i.bp, %i.bs
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.preheader
  %.2451 = phi i32 [ %i.bt, %bb.k ], [ %.1450, %.preheader ] ; 3 uses
  %.2406 = phi i32 [ %i.bo, %bb.k ], [ %.1405, %.preheader ] ; 2 uses
  %.2374 = phi ptr [ %i.bq, %bb.k ], [ %.1373, %.preheader ] ; 2 uses
  %i.bu = lshr i32 %.2406, 11
  %i.bv = mul i32 %i.bu, %i.bm                    ; 4 uses
  %i.bw = icmp ult i32 %.2451, %i.bv
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bx = shl nuw nsw i32 %.0393, 1
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.by = sub i32 %.2406, %i.bv
  %i.bz = sub nuw i32 %.2451, %i.bv
  %i.ca = shl nuw nsw i32 %.0393, 1
  %i.cb = or disjoint i32 %i.ca, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.3452 = phi i32 [ %.2451, %bb.m ], [ %i.bz, %bb.n ]
  %.3407 = phi i32 [ %i.bv, %bb.m ], [ %i.by, %bb.n ] ; 2 uses
  %.1394 = phi i32 [ %i.bx, %bb.m ], [ %i.cb, %bb.n ] ; 2 uses
  %i.cc = icmp ult i32 %.1394, 256
  br i1 %i.cc, label %.preheader, label %.thread, !llvm.loop !45

bb.p:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !22
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !20 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !4
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %i.ck = sub i64 %i.cg, %i.cj
  %i.cl = icmp ult i64 %i.cg, %i.cj
  br i1 %i.cl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !23
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.co = phi i64 [ %i.cn, %bb.q ], [ 0, %bb.p ]
  %i.cp = getelementptr i8, ptr %i.ce, i64 %i.ck
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.co
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !25
  %i.cs = zext i8 %i.cr to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.y, %bb.r
  %.5454 = phi i32 [ %.0449, %bb.r ], [ %.8457.ph, %bb.y ] ; 2 uses
  %.5409 = phi i32 [ %i.ae, %bb.r ], [ %.8412.ph, %bb.y ] ; 3 uses
  %.0392 = phi i32 [ %i.cs, %bb.r ], [ %i.ct, %bb.y ]
  %.0389 = phi i32 [ 256, %bb.r ], [ %.2391.ph, %bb.y ] ; 3 uses
  %.0386 = phi i32 [ 1, %bb.r ], [ %.2388.ph, %bb.y ] ; 3 uses
  %.4376 = phi ptr [ %.0372, %bb.r ], [ %.5377, %bb.y ] ; 4 uses
  %i.ct = shl i32 %.0392, 1                       ; 2 uses
  %i.cu = and i32 %i.ct, %.0389                   ; 3 uses
  %i.cv = zext nneg i32 %.0389 to i64
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %.0441, i64 %i.cv
  %i.cx = zext nneg i32 %i.cu to i64
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %i.cx
  %i.cz = zext nneg i32 %.0386 to i64
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %i.cz
  %i.db = load i16, ptr %i.da, align 2, !tbaa !34
  %i.dc = zext i16 %i.db to i32
  %i.dd = icmp ult i32 %.5409, 16777216
  br i1 %i.dd, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.not551 = icmp ult ptr %.4376, %i.e
  br i1 %.not551, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.de = shl nuw i32 %.5409, 8
  %i.df = shl i32 %.5454, 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.4376, i64 1
  %i.dh = load i8, ptr %.4376, align 1, !tbaa !25
  %i.di = zext i8 %i.dh to i32
  %i.dj = or disjoint i32 %i.df, %i.di
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.6455 = phi i32 [ %i.dj, %bb.u ], [ %.5454, %bb.s ] ; 3 uses
  %.6410 = phi i32 [ %i.de, %bb.u ], [ %.5409, %bb.s ] ; 2 uses
  %.5377 = phi ptr [ %i.dg, %bb.u ], [ %.4376, %bb.s ] ; 2 uses
  %i.dk = lshr i32 %.6410, 11
  %i.dl = mul i32 %i.dk, %i.dc                    ; 4 uses
  %i.dm = icmp ult i32 %.6455, %i.dl
  br i1 %i.dm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dn = shl nuw nsw i32 %.0386, 1
  %i.do = xor i32 %i.cu, %.0389
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.dp = sub i32 %.6410, %i.dl
  %i.dq = sub nuw i32 %.6455, %i.dl
  %i.dr = shl nuw nsw i32 %.0386, 1
  %i.ds = or disjoint i32 %i.dr, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.8457.ph = phi i32 [ %i.dq, %bb.x ], [ %.6455, %bb.w ]
  %.8412.ph = phi i32 [ %i.dp, %bb.x ], [ %i.dl, %bb.w ] ; 2 uses
  %.2391.ph = phi i32 [ %i.cu, %bb.x ], [ %i.do, %bb.w ]
  %.2388.ph = phi i32 [ %i.ds, %bb.x ], [ %i.dn, %bb.w ] ; 2 uses
  %i.dt = icmp ult i32 %.2388.ph, 256
  br i1 %i.dt, label %bb.s, label %.thread, !llvm.loop !46

bb.z:                                             ; preds = %bb.d
  %i.du = sub i32 %.0404, %i.ae                   ; 3 uses
  %i.dv = sub nuw i32 %.0449, %i.ae               ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.dx = zext i32 %i.i to i64                    ; 4 uses
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.dw, i64 %i.dx
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !34
  %i.ea = zext i16 %i.dz to i32
  %i.eb = icmp ult i32 %i.du, 16777216
  br i1 %i.eb, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %.not = icmp ult ptr %.0372, %i.e
  br i1 %.not, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.ec = shl nuw i32 %i.du, 8
  %i.ed = shl i32 %i.dv, 8
  %i.ee = getelementptr inbounds nuw i8, ptr %.0372, i64 1
  %i.ef = load i8, ptr %.0372, align 1, !tbaa !25
  %i.eg = zext i8 %i.ef to i32
  %i.eh = or disjoint i32 %i.ed, %i.eg
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.10459 = phi i32 [ %i.eh, %bb.ab ], [ %i.dv, %bb.z ] ; 3 uses
  %.10414 = phi i32 [ %i.ec, %bb.ab ], [ %i.du, %bb.z ] ; 2 uses
  %.8380 = phi ptr [ %i.ee, %bb.ab ], [ %.0372, %bb.z ] ; 5 uses
  %i.ei = lshr i32 %.10414, 11
  %i.ej = mul i32 %i.ei, %i.ea                    ; 4 uses
  %i.ek = icmp ult i32 %.10459, %i.ej             ; 2 uses
  br i1 %i.ek, label %bb.ax, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.el = sub i32 %.10414, %i.ej                  ; 3 uses
  %i.em = sub nuw i32 %.10459, %i.ej              ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.dx
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !34
  %i.eq = zext i16 %i.ep to i32
  %i.er = icmp ult i32 %i.el, 16777216
  br i1 %i.er, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %.not535 = icmp ult ptr %.8380, %i.e
  br i1 %.not535, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae
  %i.es = shl nuw i32 %i.el, 8
  %i.et = shl i32 %i.em, 8
  %i.eu = getelementptr inbounds nuw i8, ptr %.8380, i64 1
  %i.ev = load i8, ptr %.8380, align 1, !tbaa !25
  %i.ew = zext i8 %i.ev to i32
  %i.ex = or disjoint i32 %i.et, %i.ew
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %.11460 = phi i32 [ %i.ex, %bb.af ], [ %i.em, %bb.ad ] ; 4 uses
  %.11415 = phi i32 [ %i.es, %bb.af ], [ %i.el, %bb.ad ] ; 2 uses
  %.9381 = phi ptr [ %i.eu, %bb.af ], [ %.8380, %bb.ad ] ; 8 uses
  %i.ey = lshr i32 %.11415, 11
  %i.ez = mul i32 %i.ey, %i.eq                    ; 6 uses
  %i.fa = icmp ult i32 %.11460, %i.ez
  br i1 %i.fa, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  %i.fb = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.fb, i64 %i.q
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.fc, i64 %i.s
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !34
  %i.ff = zext i16 %i.fe to i32
  %i.fg = icmp ult i32 %i.ez, 16777216
  br i1 %i.fg, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %.not538 = icmp ult ptr %.9381, %i.e
  br i1 %.not538, label %bb.aj, label %.critedge

bb.aj:                                            ; preds = %bb.ai
  %i.fh = shl nuw i32 %i.ez, 8
  %i.fi = shl i32 %.11460, 8
  %i.fj = getelementptr inbounds nuw i8, ptr %.9381, i64 1
  %i.fk = load i8, ptr %.9381, align 1, !tbaa !25
  %i.fl = zext i8 %i.fk to i32
  %i.fm = or disjoint i32 %i.fi, %i.fl
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah
  %.12461 = phi i32 [ %i.fm, %bb.aj ], [ %.11460, %bb.ah ] ; 2 uses
  %.12416 = phi i32 [ %i.fh, %bb.aj ], [ %i.ez, %bb.ah ] ; 2 uses
  %.10382 = phi ptr [ %i.fj, %bb.aj ], [ %.9381, %bb.ah ] ; 2 uses
  %i.fn = lshr i32 %.12416, 11
  %i.fo = mul i32 %i.fn, %i.ff                    ; 4 uses
  %i.fp = icmp ult i32 %.12461, %i.fo
  br i1 %i.fp, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.fq = icmp ult i32 %i.fo, 16777216
  br i1 %i.fq, label %bb.am, label %.critedge

bb.am:                                            ; preds = %bb.al
  %.not539 = icmp ult ptr %.10382, %i.e
  %spec.select = select i1 %.not539, i32 3, i32 0
  br label %.critedge

bb.an:                                            ; preds = %bb.ak
  %i.fr = sub i32 %.12416, %i.fo
  %i.fs = sub nuw i32 %.12461, %i.fo
  br label %bb.ax

bb.ao:                                            ; preds = %bb.ag
  %i.ft = sub i32 %.11415, %i.ez                  ; 3 uses
  %i.fu = sub nuw i32 %.11460, %i.ez              ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %i.dx
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !34
  %i.fy = zext i16 %i.fx to i32
  %i.fz = icmp ult i32 %i.ft, 16777216
  br i1 %i.fz, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %.not536 = icmp ult ptr %.9381, %i.e
  br i1 %.not536, label %bb.aq, label %.critedge

bb.aq:                                            ; preds = %bb.ap
  %i.ga = shl nuw i32 %i.ft, 8
  %i.gb = shl i32 %i.fu, 8
  %i.gc = getelementptr inbounds nuw i8, ptr %.9381, i64 1
  %i.gd = load i8, ptr %.9381, align 1, !tbaa !25
  %i.ge = zext i8 %i.gd to i32
  %i.gf = or disjoint i32 %i.gb, %i.ge
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %.14463 = phi i32 [ %i.gf, %bb.aq ], [ %i.fu, %bb.ao ] ; 3 uses
  %.14418 = phi i32 [ %i.ga, %bb.aq ], [ %i.ft, %bb.ao ] ; 2 uses
  %.12384 = phi ptr [ %i.gc, %bb.aq ], [ %.9381, %bb.ao ] ; 5 uses
  %i.gg = lshr i32 %.14418, 11
  %i.gh = mul i32 %i.gg, %i.fy                    ; 4 uses
  %i.gi = icmp ult i32 %.14463, %i.gh
  br i1 %i.gi, label %bb.ax, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gj = sub i32 %.14418, %i.gh                  ; 3 uses
  %i.gk = sub nuw i32 %.14463, %i.gh              ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.g, i64 456
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.gl, i64 %i.dx
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !34
  %i.go = zext i16 %i.gn to i32
  %i.gp = icmp ult i32 %i.gj, 16777216
  br i1 %i.gp, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %.not537 = icmp ult ptr %.12384, %i.e
  br i1 %.not537, label %bb.au, label %.critedge

bb.au:                                            ; preds = %bb.at
  %i.gq = shl nuw i32 %i.gj, 8
  %i.gr = shl i32 %i.gk, 8
  %i.gs = getelementptr inbounds nuw i8, ptr %.12384, i64 1
  %i.gt = load i8, ptr %.12384, align 1, !tbaa !25
  %i.gu = zext i8 %i.gt to i32
  %i.gv = or disjoint i32 %i.gr, %i.gu
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.as
  %.15464 = phi i32 [ %i.gv, %bb.au ], [ %i.gk, %bb.as ] ; 3 uses
  %.15419 = phi i32 [ %i.gq, %bb.au ], [ %i.gj, %bb.as ] ; 2 uses
  %.13385 = phi ptr [ %i.gs, %bb.au ], [ %.12384, %bb.as ] ; 2 uses
  %i.gw = lshr i32 %.15419, 11
  %i.gx = mul i32 %i.gw, %i.go                    ; 4 uses
  %i.gy = icmp ult i32 %.15464, %i.gx
  br i1 %i.gy, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gz = sub i32 %.15419, %i.gx
  %i.ha = sub nuw i32 %.15464, %i.gx
  br label %bb.ax

bb.ax:                                            ; preds = %bb.an, %bb.aw, %bb.ar, %bb.av, %bb.ac
  %.sink = phi i64 [ 1636, %bb.ac ], [ 2664, %bb.av ], [ 2664, %bb.ar ], [ 2664, %bb.aw ], [ 2664, %bb.an ]
  %.17466 = phi i32 [ %.10459, %bb.ac ], [ %.15464, %bb.av ], [ %.14463, %bb.ar ], [ %i.ha, %bb.aw ], [ %i.fs, %bb.an ] ; 2 uses
  %.0444 = phi i32 [ 2, %bb.ac ], [ 3, %bb.av ], [ 3, %bb.ar ], [ 3, %bb.aw ], [ 3, %bb.an ] ; 3 uses
  %.17421 = phi i32 [ %i.ej, %bb.ac ], [ %i.gx, %bb.av ], [ %i.gh, %bb.ar ], [ %i.gz, %bb.aw ], [ %i.fr, %bb.an ] ; 3 uses
  %.15 = phi ptr [ %.8380, %bb.ac ], [ %.13385, %bb.av ], [ %.12384, %bb.ar ], [ %.13385, %bb.aw ], [ %.10382, %bb.an ] ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink ; 5 uses
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !34
  %i.hd = zext i16 %i.hc to i32
  %i.he = icmp ult i32 %.17421, 16777216
  br i1 %i.he, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %.not540 = icmp ult ptr %.15, %i.e
  br i1 %.not540, label %bb.az, label %.critedge

bb.az:                                            ; preds = %bb.ay
  %i.hf = shl nuw i32 %.17421, 8
  %i.hg = shl i32 %.17466, 8
  %i.hh = getelementptr inbounds nuw i8, ptr %.15, i64 1
  %i.hi = load i8, ptr %.15, align 1, !tbaa !25
  %i.hj = zext i8 %i.hi to i32
  %i.hk = or disjoint i32 %i.hg, %i.hj
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %.18467 = phi i32 [ %i.hk, %bb.az ], [ %.17466, %bb.ax ] ; 3 uses
  %.18422 = phi i32 [ %i.hf, %bb.az ], [ %.17421, %bb.ax ] ; 2 uses
  %.16 = phi ptr [ %i.hh, %bb.az ], [ %.15, %bb.ax ] ; 5 uses
  %i.hl = lshr i32 %.18422, 11
  %i.hm = mul i32 %i.hl, %i.hd                    ; 4 uses
  %i.hn = icmp ult i32 %.18467, %i.hm
  br i1 %i.hn, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.hp = shl i32 %i.o, 3
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %i.hq
  br label %bb.bi

bb.bc:                                            ; preds = %bb.ba
  %i.hs = sub i32 %.18422, %i.hm                  ; 3 uses
  %i.ht = sub nuw i32 %.18467, %i.hm              ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hb, i64 2
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !34
  %i.hw = zext i16 %i.hv to i32
  %i.hx = icmp ult i32 %i.hs, 16777216
  br i1 %i.hx, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %.not541 = icmp ult ptr %.16, %i.e
  br i1 %.not541, label %bb.be, label %.critedge

bb.be:                                            ; preds = %bb.bd
  %i.hy = shl nuw i32 %i.hs, 8
  %i.hz = shl i32 %i.ht, 8
  %i.ia = getelementptr inbounds nuw i8, ptr %.16, i64 1
  %i.ib = load i8, ptr %.16, align 1, !tbaa !25
  %i.ic = zext i8 %i.ib to i32
  %i.id = or disjoint i32 %i.hz, %i.ic
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bc
  %.19468 = phi i32 [ %i.id, %bb.be ], [ %i.ht, %bb.bc ] ; 3 uses
  %.19423 = phi i32 [ %i.hy, %bb.be ], [ %i.hs, %bb.bc ] ; 2 uses
  %.17 = phi ptr [ %i.ia, %bb.be ], [ %.16, %bb.bc ] ; 2 uses
  %i.ie = lshr i32 %.19423, 11
  %i.if = mul i32 %i.ie, %i.hw                    ; 4 uses
  %i.ig = icmp ult i32 %.19468, %i.if
  br i1 %i.ig, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hb, i64 260
  %i.ii = shl i32 %i.o, 3
  %i.ij = zext i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %i.ih, i64 %i.ij
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.il = sub i32 %.19423, %i.if
  %i.im = sub nuw i32 %.19468, %i.if
  %i.in = getelementptr inbounds nuw i8, ptr %i.hb, i64 516
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh, %bb.bb
  %.20469 = phi i32 [ %.18467, %bb.bb ], [ %.19468, %bb.bg ], [ %i.im, %bb.bh ]
  %.20424 = phi i32 [ %i.hm, %bb.bb ], [ %i.if, %bb.bg ], [ %i.il, %bb.bh ]
  %.18 = phi ptr [ %.16, %bb.bb ], [ %.17, %bb.bg ], [ %.17, %bb.bh ]
  %.0365 = phi i32 [ 8, %bb.bb ], [ 8, %bb.bg ], [ 256, %bb.bh ] ; 2 uses
  %.0364 = phi i32 [ 0, %bb.bb ], [ 8, %bb.bg ], [ 16, %bb.bh ]
  %.0363 = phi ptr [ %i.hr, %bb.bb ], [ %i.ik, %bb.bg ], [ %i.in, %bb.bh ]
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bp, %bb.bi
  %.21470 = phi i32 [ %.20469, %bb.bi ], [ %.23472, %bb.bp ] ; 2 uses
  %.21425 = phi i32 [ %.20424, %bb.bi ], [ %.23427, %bb.bp ] ; 3 uses
  %.19 = phi ptr [ %.18, %bb.bi ], [ %.20, %bb.bp ] ; 4 uses
  %.0366 = phi i32 [ 1, %bb.bi ], [ %.1367, %bb.bp ] ; 3 uses
  %i.io = zext i32 %.0366 to i64
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %.0363, i64 %i.io
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !34
  %i.ir = zext i16 %i.iq to i32
  %i.is = icmp ult i32 %.21425, 16777216
  br i1 %i.is, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %.not542 = icmp ult ptr %.19, %i.e
  br i1 %.not542, label %bb.bl, label %.critedge

bb.bl:                                            ; preds = %bb.bk
  %i.it = shl nuw i32 %.21425, 8
  %i.iu = shl i32 %.21470, 8
  %i.iv = getelementptr inbounds nuw i8, ptr %.19, i64 1
  %i.iw = load i8, ptr %.19, align 1, !tbaa !25
  %i.ix = zext i8 %i.iw to i32
  %i.iy = or disjoint i32 %i.iu, %i.ix
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bj
  %.22471 = phi i32 [ %i.iy, %bb.bl ], [ %.21470, %bb.bj ] ; 3 uses
  %.22426 = phi i32 [ %i.it, %bb.bl ], [ %.21425, %bb.bj ] ; 2 uses
  %.20 = phi ptr [ %i.iv, %bb.bl ], [ %.19, %bb.bj ] ; 3 uses
  %i.iz = lshr i32 %.22426, 11
  %i.ja = mul i32 %i.iz, %i.ir                    ; 4 uses
  %i.jb = icmp ult i32 %.22471, %i.ja
  br i1 %i.jb, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.jc = shl i32 %.0366, 1
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.jd = sub i32 %.22426, %i.ja
  %i.je = sub nuw i32 %.22471, %i.ja
  %i.jf = shl i32 %.0366, 1
  %i.jg = or disjoint i32 %i.jf, 1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %.23472 = phi i32 [ %.22471, %bb.bn ], [ %i.je, %bb.bo ] ; 2 uses
  %.23427 = phi i32 [ %i.ja, %bb.bn ], [ %i.jd, %bb.bo ] ; 3 uses
  %.1367 = phi i32 [ %i.jc, %bb.bn ], [ %i.jg, %bb.bo ] ; 3 uses
  %i.jh = icmp ult i32 %.1367, %.0365
  br i1 %i.jh, label %bb.bj, label %bb.bq, !llvm.loop !47

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.ek, label %bb.br, label %.thread

bb.br:                                            ; preds = %bb.bq
  %i.ji = sub nsw i32 %.0364, %.0365
  %i.jj = add i32 %i.ji, %.1367
  %i.jk = getelementptr inbounds nuw i8, ptr %i.g, i64 864
  %i.jl = tail call i32 @llvm.umin.i32(i32 %i.jj, i32 3)
  %i.jm = shl nuw nsw i32 %i.jl, 6
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.jk, i64 %i.jn
  br label %bb.bs

bb.bs:                                            ; preds = %bb.by, %bb.br
  %.25474 = phi i32 [ %.23472, %bb.br ], [ %.27476, %bb.by ] ; 2 uses
  %.25429 = phi i32 [ %.23427, %bb.br ], [ %.27431, %bb.by ] ; 3 uses
  %.22 = phi ptr [ %.20, %bb.br ], [ %.23, %bb.by ] ; 4 uses
  %.0361 = phi i32 [ 1, %bb.br ], [ %.1362, %bb.by ] ; 3 uses
  %i.jp = zext nneg i32 %.0361 to i64
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %i.jo, i64 %i.jp
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !34
  %i.js = zext i16 %i.jr to i32
  %i.jt = icmp ult i32 %.25429, 16777216
  br i1 %i.jt, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %.not543 = icmp ult ptr %.22, %i.e
  br i1 %.not543, label %bb.bu, label %.critedge

bb.bu:                                            ; preds = %bb.bt
  %i.ju = shl nuw i32 %.25429, 8
  %i.jv = shl i32 %.25474, 8
  %i.jw = getelementptr inbounds nuw i8, ptr %.22, i64 1
  %i.jx = load i8, ptr %.22, align 1, !tbaa !25
  %i.jy = zext i8 %i.jx to i32
  %i.jz = or disjoint i32 %i.jv, %i.jy
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bs
  %.26475 = phi i32 [ %i.jz, %bb.bu ], [ %.25474, %bb.bs ] ; 3 uses
  %.26430 = phi i32 [ %i.ju, %bb.bu ], [ %.25429, %bb.bs ] ; 2 uses
  %.23 = phi ptr [ %i.jw, %bb.bu ], [ %.22, %bb.bs ] ; 4 uses
  %i.ka = lshr i32 %.26430, 11
  %i.kb = mul i32 %i.ka, %i.js                    ; 4 uses
  %i.kc = icmp ult i32 %.26475, %i.kb
  br i1 %i.kc, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.kd = shl nuw nsw i32 %.0361, 1
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.ke = sub i32 %.26430, %i.kb
  %i.kf = sub nuw i32 %.26475, %i.kb
  %i.kg = shl nuw nsw i32 %.0361, 1
  %i.kh = or disjoint i32 %i.kg, 1
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %.27476 = phi i32 [ %.26475, %bb.bw ], [ %i.kf, %bb.bx ] ; 3 uses
  %.27431 = phi i32 [ %i.kb, %bb.bw ], [ %i.ke, %bb.bx ] ; 4 uses
  %.1362 = phi i32 [ %i.kd, %bb.bw ], [ %i.kh, %bb.bx ] ; 4 uses
  %i.ki = icmp ult i32 %.1362, 64
  br i1 %i.ki, label %bb.bs, label %bb.bz, !llvm.loop !48

bb.bz:                                            ; preds = %bb.by
  %i.kj = add nsw i32 %.1362, -64                 ; 4 uses
  %i.kk = icmp ugt i32 %i.kj, 3
  br i1 %i.kk, label %bb.ca, label %.thread

bb.ca:                                            ; preds = %bb.bz
  %i.kl = lshr i32 %i.kj, 1                       ; 2 uses
  %i.km = icmp ult i32 %i.kj, 14
  br i1 %i.km, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.kn = add nsw i32 %i.kl, -1                   ; 2 uses
  %i.ko = and i32 %.1362, 1
  %i.kp = or disjoint i32 %i.ko, 2
  %i.kq = shl i32 %i.kp, %i.kn
  %i.kr = zext i32 %i.kq to i64
  %i.ks = getelementptr [2 x i8], ptr %i.g, i64 %i.kr
  %i.kt = zext nneg i32 %i.kj to i64
  %i.ku = sub nsw i64 0, %i.kt
  %i.kv = getelementptr [2 x i8], ptr %i.ks, i64 %i.ku
  %i.kw = getelementptr i8, ptr %i.kv, i64 1374
  br label %bb.ci

bb.cc:                                            ; preds = %bb.ca
  %i.kx = add nsw i32 %i.kl, -5
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cg, %bb.cc
  %.28477 = phi i32 [ %.27476, %bb.cc ], [ %i.li, %bb.cg ] ; 2 uses
  %.28432 = phi i32 [ %.27431, %bb.cc ], [ %i.lf, %bb.cg ] ; 3 uses
  %.24 = phi ptr [ %.23, %bb.cc ], [ %.25, %bb.cg ] ; 4 uses
  %.0359 = phi i32 [ %i.kx, %bb.cc ], [ %i.lj, %bb.cg ]
  %i.ky = icmp ult i32 %.28432, 16777216
  br i1 %i.ky, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %.not544 = icmp ult ptr %.24, %i.e
  br i1 %.not544, label %bb.cf, label %.critedge

bb.cf:                                            ; preds = %bb.ce
  %i.kz = shl nuw i32 %.28432, 8
  %i.la = shl i32 %.28477, 8
  %i.lb = getelementptr inbounds nuw i8, ptr %.24, i64 1
  %i.lc = load i8, ptr %.24, align 1, !tbaa !25
  %i.ld = zext i8 %i.lc to i32
  %i.le = or disjoint i32 %i.la, %i.ld
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.cd
  %.29478 = phi i32 [ %i.le, %bb.cf ], [ %.28477, %bb.cd ] ; 2 uses
  %.29433 = phi i32 [ %i.kz, %bb.cf ], [ %.28432, %bb.cd ]
  %.25 = phi ptr [ %i.lb, %bb.cf ], [ %.24, %bb.cd ] ; 2 uses
  %i.lf = lshr i32 %.29433, 1                     ; 4 uses
  %i.lg = sub i32 %.29478, %i.lf
  %.inv = icmp slt i32 %i.lg, 0
  %i.lh = select i1 %.inv, i32 0, i32 %i.lf
  %i.li = sub i32 %.29478, %i.lh                  ; 2 uses
  %i.lj = add nsw i32 %.0359, -1                  ; 2 uses
  %.not545 = icmp eq i32 %i.lj, 0
  br i1 %.not545, label %bb.ch, label %bb.cd, !llvm.loop !49

bb.ch:                                            ; preds = %bb.cg
  %i.lk = getelementptr inbounds nuw i8, ptr %i.g, i64 1604
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cb
  %.30479 = phi i32 [ %.27476, %bb.cb ], [ %i.li, %bb.ch ]
  %.2443 = phi ptr [ %i.kw, %bb.cb ], [ %i.lk, %bb.ch ]
  %.30434 = phi i32 [ %.27431, %bb.cb ], [ %i.lf, %bb.ch ]
  %.26 = phi ptr [ %.23, %bb.cb ], [ %.25, %bb.ch ]
  %.1360 = phi i32 [ %i.kn, %bb.cb ], [ 4, %bb.ch ]
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cp, %bb.ci
  %.31480 = phi i32 [ %.30479, %bb.ci ], [ %.33482, %bb.cp ] ; 2 uses
  %.31435 = phi i32 [ %.30434, %bb.ci ], [ %.33437, %bb.cp ] ; 3 uses
  %.27 = phi ptr [ %.26, %bb.ci ], [ %.28, %bb.cp ] ; 4 uses
  %.2 = phi i32 [ %.1360, %bb.ci ], [ %i.me, %bb.cp ]
  %.0 = phi i32 [ 1, %bb.ci ], [ %.1, %bb.cp ]    ; 3 uses
  %i.ll = zext i32 %.0 to i64
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %.2443, i64 %i.ll
  %i.ln = load i16, ptr %i.lm, align 2, !tbaa !34
  %i.lo = zext i16 %i.ln to i32
  %i.lp = icmp ult i32 %.31435, 16777216
  br i1 %i.lp, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  %.not546 = icmp ult ptr %.27, %i.e
  br i1 %.not546, label %bb.cl, label %.critedge

bb.cl:                                            ; preds = %bb.ck
  %i.lq = shl nuw i32 %.31435, 8
  %i.lr = shl i32 %.31480, 8
  %i.ls = getelementptr inbounds nuw i8, ptr %.27, i64 1
  %i.lt = load i8, ptr %.27, align 1, !tbaa !25
  %i.lu = zext i8 %i.lt to i32
  %i.lv = or disjoint i32 %i.lr, %i.lu
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.cj
  %.32481 = phi i32 [ %i.lv, %bb.cl ], [ %.31480, %bb.cj ] ; 3 uses
  %.32436 = phi i32 [ %i.lq, %bb.cl ], [ %.31435, %bb.cj ] ; 2 uses
  %.28 = phi ptr [ %i.ls, %bb.cl ], [ %.27, %bb.cj ] ; 2 uses
  %i.lw = lshr i32 %.32436, 11
  %i.lx = mul i32 %i.lw, %i.lo                    ; 4 uses
  %i.ly = icmp ult i32 %.32481, %i.lx
  br i1 %i.ly, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.lz = shl i32 %.0, 1
  br label %bb.cp

bb.co:                                            ; preds = %bb.cm
  %i.ma = sub i32 %.32436, %i.lx
  %i.mb = sub nuw i32 %.32481, %i.lx
  %i.mc = shl i32 %.0, 1
  %i.md = or disjoint i32 %i.mc, 1
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cn, %bb.co
  %.33482 = phi i32 [ %.32481, %bb.cn ], [ %i.mb, %bb.co ]
  %.33437 = phi i32 [ %i.lx, %bb.cn ], [ %i.ma, %bb.co ] ; 2 uses
  %.1 = phi i32 [ %i.lz, %bb.cn ], [ %i.md, %bb.co ]
  %i.me = add nsw i32 %.2, -1                     ; 2 uses
  %.not547 = icmp eq i32 %i.me, 0
  br i1 %.not547, label %.thread, label %bb.cj, !llvm.loop !50

.thread:                                          ; preds = %bb.cp, %bb.y, %bb.o, %bb.bq, %bb.bz
  %.3447.ph = phi i32 [ %.0444, %bb.bq ], [ %.0444, %bb.bz ], [ 1, %bb.o ], [ 1, %bb.y ], [ %.0444, %bb.cp ]
  %.41.ph = phi i32 [ %.23427, %bb.bq ], [ %.27431, %bb.bz ], [ %.3407, %bb.o ], [ %.8412.ph, %bb.y ], [ %.33437, %bb.cp ]
  %.36.ph = phi ptr [ %.20, %bb.bq ], [ %.23, %bb.bz ], [ %.2374, %bb.o ], [ %.5377, %bb.y ], [ %.28, %bb.cp ]
  %i.mf = icmp ugt i32 %.41.ph, 16777215
  %.not553591 = icmp ult ptr %.36.ph, %i.e
  %or.cond592 = select i1 %i.mf, i1 true, i1 %.not553591
  %spec.select555593 = select i1 %or.cond592, i32 %.3447.ph, i32 0
  br label %.critedge

.critedge:                                        ; preds = %bb.bk, %bb.bt, %bb.ce, %bb.ck, %bb.t, %bb.j, %bb.am, %bb.b, %bb.ap, %bb.at, %bb.aa, %bb.ae, %bb.ai, %bb.al, %bb.ay, %bb.bd, %.thread
  %i.mg = phi i32 [ %spec.select555593, %.thread ], [ 0, %bb.t ], [ 0, %bb.b ], [ 0, %bb.bd ], [ 0, %bb.bt ], [ 0, %bb.ck ], [ 0, %bb.ce ], [ 0, %bb.j ], [ 3, %bb.al ], [ %spec.select, %bb.am ], [ 0, %bb.ai ], [ 0, %bb.ae ], [ 0, %bb.aa ], [ 0, %bb.ap ], [ 0, %bb.at ], [ 0, %bb.ay ], [ 0, %bb.bk ]
  ret i32 %i.mg
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @LzmaDec_DecodeReal2(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 5 uses
  %.pre.pre = load i64, ptr %i.l, align 8, !tbaa !20
  br label %bb.b

bb.b:                                             ; preds = %bb.ff, %bb.a
  %.pre = phi i64 [ %i.aho, %bb.ff ], [ %.pre.pre, %bb.a ] ; 3 uses
  %i.s = load i32, ptr %i.a, align 4, !tbaa !18   ; 4 uses
  %i.t = icmp eq i32 %i.s, 0                      ; 2 uses
  %.pre67 = load i32, ptr %i.m, align 8, !tbaa !17 ; 2 uses
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.q, align 4, !tbaa !24
  %i.v = sub i32 %i.u, %.pre67
  %i.w = sub i64 %1, %.pre
  %i.x = zext i32 %i.v to i64                     ; 2 uses
  %i.y = icmp ugt i64 %i.w, %i.x
  %i.z = add i64 %.pre, %i.x
  %spec.select = select i1 %i.y, i64 %i.z, i64 %1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.132 = phi i64 [ %spec.select, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !33  ; 13 uses
  %i.ab = load i32, ptr %i.c, align 8, !tbaa !43
  %i.ac = load i32, ptr %i.d, align 4, !tbaa !4
  %i.ad = load i32, ptr %i.e, align 8, !tbaa !4
  %i.ae = load i32, ptr %i.f, align 4, !tbaa !4
  %i.af = load i32, ptr %i.g, align 8, !tbaa !4
  %i.ag = load i32, ptr %i.h, align 8, !tbaa !44
  %notmask.i = shl nsw i32 -1, %i.ag
  %i.ah = xor i32 %notmask.i, -1
  %i.ai = load i32, ptr %i.i, align 4, !tbaa !32
  %notmask1035.i = shl nsw i32 -1, %i.ai
  %i.aj = xor i32 %notmask1035.i, -1
  %i.ak = load i32, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !22  ; 12 uses
  %i.am = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.an = load i64, ptr %i.k, align 8, !tbaa !23  ; 8 uses
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.ap = load i32, ptr %i.o, align 8, !tbaa !30
  %i.aq = load i32, ptr %i.p, align 4, !tbaa !29
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 384
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 408
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 432
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 456
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 480
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 2664
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aa, i64 1636
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aa, i64 864
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 1604 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aa, i64 1606 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 3692 ; 2 uses
  %i.bc = sub i32 8, %i.ak
  %i.bd = add i64 %i.am, -1
  br label %bb.e

bb.e:                                             ; preds = %.loopexit1142.i, %bb.d
  %.0965.i = phi i32 [ 0, %bb.d ], [ %.7972.ph.i, %.loopexit1142.i ] ; 2 uses
  %.0924.i = phi ptr [ %i.ao, %bb.d ], [ %.39963.ph.i, %.loopexit1142.i ] ; 3 uses
  %.0868.i = phi i32 [ %i.ap, %bb.d ], [ %.54922.ph.i, %.loopexit1142.i ] ; 3 uses
  %.0852.i = phi i32 [ %i.aq, %bb.d ], [ %.54.ph.i, %.loopexit1142.i ] ; 2 uses
  %.0848.i = phi i32 [ %.pre67, %bb.d ], [ %.1849.ph.i, %.loopexit1142.i ] ; 7 uses
  %.0836.i = phi i64 [ %.pre, %bb.d ], [ %.3839.ph.i, %.loopexit1142.i ] ; 23 uses
  %.0828.i = phi i32 [ %i.af, %bb.d ], [ %.7835.ph.i, %.loopexit1142.i ] ; 7 uses
  %.0805.i = phi i32 [ %i.ae, %bb.d ], [ %.6811.ph.i, %.loopexit1142.i ] ; 7 uses
  %.0794.i = phi i32 [ %i.ad, %bb.d ], [ %.5799.ph.i, %.loopexit1142.i ] ; 6 uses
  %.0785.i = phi i32 [ %i.ac, %bb.d ], [ %.5790.ph.i, %.loopexit1142.i ] ; 8 uses
  %.0777.i = phi i32 [ %i.ab, %bb.d ], [ %.7.ph.i, %.loopexit1142.i ] ; 9 uses
  %i.be = and i32 %.0848.i, %i.ah                 ; 3 uses
  %i.bf = shl i32 %.0777.i, 4
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.bg
  %i.bi = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.bi ; 3 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !34 ; 4 uses
  %i.bl = zext i16 %i.bk to i32                   ; 2 uses
  %i.bm = icmp ult i32 %.0868.i, 16777216
  br i1 %i.bm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bn = shl nuw i32 %.0868.i, 8
  %i.bo = shl i32 %.0852.i, 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.0924.i, i64 1
  %i.bq = load i8, ptr %.0924.i, align 1, !tbaa !25
  %i.br = zext i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bo, %i.br
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1925.i = phi ptr [ %i.bp, %bb.f ], [ %.0924.i, %bb.e ] ; 5 uses
  %.1869.i = phi i32 [ %i.bn, %bb.f ], [ %.0868.i, %bb.e ] ; 2 uses
  %.1853.i = phi i32 [ %i.bs, %bb.f ], [ %.0852.i, %bb.e ] ; 4 uses
  %i.bt = lshr i32 %.1869.i, 11
  %i.bu = mul i32 %i.bt, %i.bl                    ; 5 uses
  %i.bv = icmp ult i32 %.1853.i, %i.bu
  br i1 %i.bv, label %bb.h, label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.bw = sub nsw i32 2048, %i.bl
  %i.bx = lshr i32 %i.bw, 5
  %i.by = trunc i32 %i.bx to i16
  %i.bz = add i16 %i.bk, %i.by
  store i16 %i.bz, ptr %i.bj, align 2, !tbaa !34
  %i.ca = or i32 %.0848.i, %i.s
  %or.cond.not.i = icmp eq i32 %i.ca, 0
  br i1 %or.cond.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cb = and i32 %.0848.i, %i.aj
  %i.cc = shl i32 %i.cb, %i.ak
  %i.cd = icmp eq i64 %.0836.i, 0
  %i.ce = select i1 %i.cd, i64 %i.an, i64 %.0836.i
  %i.cf = getelementptr i8, ptr %i.al, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 -1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !25
  %i.ci = zext i8 %i.ch to i32
  %i.cj = lshr i32 %i.ci, %i.bc
  %i.ck = add i32 %i.cj, %i.cc
  %i.cl = mul i32 %i.ck, 768
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.cm
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0850.i = phi ptr [ %i.cn, %bb.i ], [ %i.bb, %bb.h ] ; 2 uses
  %i.co = icmp ult i32 %.0777.i, 7
  br i1 %i.co, label %.preheader, label %bb.p

.preheader:                                       ; preds = %bb.j, %bb.o
  %.2926.i = phi ptr [ %.3927.i, %bb.o ], [ %.1925.i, %bb.j ] ; 3 uses
  %.2870.i = phi i32 [ %.4872.i, %bb.o ], [ %i.bu, %bb.j ] ; 3 uses
  %.2854.i = phi i32 [ %.4856.i, %bb.o ], [ %.1853.i, %bb.j ] ; 2 uses
  %.0843.i = phi i32 [ %.1844.i, %bb.o ], [ 1, %bb.j ] ; 2 uses
  %i.cp = zext nneg i32 %.0843.i to i64
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %.0850.i, i64 %i.cp ; 2 uses
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !34 ; 4 uses
  %i.cs = zext i16 %i.cr to i32                   ; 2 uses
  %i.ct = icmp ult i32 %.2870.i, 16777216
  br i1 %i.ct, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader
  %i.cu = shl nuw i32 %.2870.i, 8
  %i.cv = shl i32 %.2854.i, 8
  %i.cw = getelementptr inbounds nuw i8, ptr %.2926.i, i64 1
  %i.cx = load i8, ptr %.2926.i, align 1, !tbaa !25
  %i.cy = zext i8 %i.cx to i32
  %i.cz = or disjoint i32 %i.cv, %i.cy
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.preheader
  %.3927.i = phi ptr [ %i.cw, %bb.k ], [ %.2926.i, %.preheader ] ; 2 uses
  %.3871.i = phi i32 [ %i.cu, %bb.k ], [ %.2870.i, %.preheader ] ; 2 uses
  %.3855.i = phi i32 [ %i.cz, %bb.k ], [ %.2854.i, %.preheader ] ; 3 uses
  %i.da = lshr i32 %.3871.i, 11
  %i.db = mul i32 %i.da, %i.cs                    ; 4 uses
  %i.dc = icmp ult i32 %.3855.i, %i.db
  %i.dd = shl nuw nsw i32 %.0843.i, 1             ; 2 uses
  br i1 %i.dc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.de = sub nsw i32 2048, %i.cs
  %i.df = lshr i32 %i.de, 5
  %i.dg = trunc i32 %i.df to i16
  %i.dh = add i16 %i.cr, %i.dg
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.di = sub i32 %.3871.i, %i.db
  %i.dj = sub nuw i32 %.3855.i, %i.db
  %i.dk = lshr i16 %i.cr, 5
  %i.dl = sub i16 %i.cr, %i.dk
  %i.dm = or disjoint i32 %i.dd, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink.i = phi i16 [ %i.dh, %bb.m ], [ %i.dl, %bb.n ]
  %.4872.i = phi i32 [ %i.db, %bb.m ], [ %i.di, %bb.n ] ; 2 uses
  %.4856.i = phi i32 [ %.3855.i, %bb.m ], [ %i.dj, %bb.n ] ; 2 uses
  %.1844.i = phi i32 [ %i.dd, %bb.m ], [ %i.dm, %bb.n ] ; 3 uses
  store i16 %.sink.i, ptr %i.cq, align 2, !tbaa !34
  %i.dn = icmp ult i32 %.1844.i, 256
  br i1 %i.dn, label %.preheader, label %.loopexit.loopexit.i, !llvm.loop !51

bb.p:                                             ; preds = %bb.j
  %i.do = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.dp = zext i32 %.0785.i to i64                ; 2 uses
  %i.dq = sub i64 %.0836.i, %i.dp
  %i.dr = icmp ult i64 %.0836.i, %i.dp
  %i.ds = select i1 %i.dr, i64 %i.an, i64 0
  %i.dt = getelementptr i8, ptr %i.do, i64 %i.dq
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.ds
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !25
  %i.dw = zext i8 %i.dv to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.v, %bb.p
  %.4928.i = phi ptr [ %.1925.i, %bb.p ], [ %.5929.i, %bb.v ] ; 3 uses
  %.5873.i = phi i32 [ %i.bu, %bb.p ], [ %.7875.i, %bb.v ] ; 3 uses
  %.5857.i = phi i32 [ %.1853.i, %bb.p ], [ %.7859.i, %bb.v ] ; 2 uses
  %.2845.i = phi i32 [ 1, %bb.p ], [ %.3846.i, %bb.v ] ; 2 uses
  %.0842.i = phi i32 [ %i.dw, %bb.p ], [ %i.dx, %bb.v ]
  %.0840.i = phi i32 [ 256, %bb.p ], [ %.1841.i, %bb.v ] ; 3 uses
  %i.dx = shl i32 %.0842.i, 1                     ; 2 uses
  %i.dy = and i32 %i.dx, %.0840.i                 ; 3 uses
  %i.dz = zext nneg i32 %.0840.i to i64
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %.0850.i, i64 %i.dz
  %i.eb = zext nneg i32 %i.dy to i64
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.ea, i64 %i.eb
  %i.ed = zext nneg i32 %.2845.i to i64
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.ec, i64 %i.ed ; 2 uses
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !34 ; 4 uses
  %i.eg = zext i16 %i.ef to i32                   ; 2 uses
  %i.eh = icmp ult i32 %.5873.i, 16777216
  br i1 %i.eh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ei = shl nuw i32 %.5873.i, 8
  %i.ej = shl i32 %.5857.i, 8
  %i.ek = getelementptr inbounds nuw i8, ptr %.4928.i, i64 1
  %i.el = load i8, ptr %.4928.i, align 1, !tbaa !25
  %i.em = zext i8 %i.el to i32
  %i.en = or disjoint i32 %i.ej, %i.em
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.5929.i = phi ptr [ %i.ek, %bb.r ], [ %.4928.i, %bb.q ] ; 2 uses
  %.6874.i = phi i32 [ %i.ei, %bb.r ], [ %.5873.i, %bb.q ] ; 2 uses
  %.6858.i = phi i32 [ %i.en, %bb.r ], [ %.5857.i, %bb.q ] ; 3 uses
  %i.eo = lshr i32 %.6874.i, 11
  %i.ep = mul i32 %i.eo, %i.eg                    ; 4 uses
  %i.eq = icmp ult i32 %.6858.i, %i.ep
  %i.er = shl nuw nsw i32 %.2845.i, 1             ; 2 uses
  br i1 %i.eq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.es = sub nsw i32 2048, %i.eg
  %i.et = lshr i32 %i.es, 5
  %i.eu = trunc i32 %i.et to i16
  %i.ev = add i16 %i.ef, %i.eu
  %i.ew = xor i32 %i.dy, %.0840.i
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ex = sub i32 %.6874.i, %i.ep
  %i.ey = sub nuw i32 %.6858.i, %i.ep
  %i.ez = lshr i16 %i.ef, 5
  %i.fa = sub i16 %i.ef, %i.ez
  %i.fb = or disjoint i32 %i.er, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sink1167.i = phi i16 [ %i.ev, %bb.t ], [ %i.fa, %bb.u ]
  %.7875.i = phi i32 [ %i.ep, %bb.t ], [ %i.ex, %bb.u ] ; 2 uses
  %.7859.i = phi i32 [ %.6858.i, %bb.t ], [ %i.ey, %bb.u ] ; 2 uses
  %.3846.i = phi i32 [ %i.er, %bb.t ], [ %i.fb, %bb.u ] ; 3 uses
  %.1841.i = phi i32 [ %i.ew, %bb.t ], [ %i.dy, %bb.u ]
  store i16 %.sink1167.i, ptr %i.ee, align 2, !tbaa !34
  %i.fc = icmp ult i32 %.3846.i, 256
  br i1 %i.fc, label %bb.q, label %.loopexit.loopexit1155.i, !llvm.loop !52

.loopexit.loopexit.i:                             ; preds = %bb.o
  %i.fd = tail call i32 @llvm.usub.sat.i32(i32 %.0777.i, i32 3)
  br label %.loopexit.i

.loopexit.loopexit1155.i:                         ; preds = %bb.v
  %i.fe = icmp ult i32 %.0777.i, 10
  %.neg1043.i = select i1 %i.fe, i32 -3, i32 -6
  %i.ff = add i32 %.neg1043.i, %.0777.i
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit1155.i, %.loopexit.loopexit.i
  %.6930.i = phi ptr [ %.3927.i, %.loopexit.loopexit.i ], [ %.5929.i, %.loopexit.loopexit1155.i ]
  %.8876.i = phi i32 [ %.4872.i, %.loopexit.loopexit.i ], [ %.7875.i, %.loopexit.loopexit1155.i ]
  %.8860.i = phi i32 [ %.4856.i, %.loopexit.loopexit.i ], [ %.7859.i, %.loopexit.loopexit1155.i ]
  %.4847.i = phi i32 [ %.1844.i, %.loopexit.loopexit.i ], [ %.3846.i, %.loopexit.loopexit1155.i ]
  %.1778.i = phi i32 [ %i.fd, %.loopexit.loopexit.i ], [ %i.ff, %.loopexit.loopexit1155.i ]
  %i.fg = trunc i32 %.4847.i to i8
  %i.fh = add i64 %.0836.i, 1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0836.i
  store i8 %i.fg, ptr %i.fi, align 1, !tbaa !25
  br label %.loopexit1142.i

bb.w:                                             ; preds = %bb.g
  %i.fj = sub i32 %.1869.i, %i.bu                 ; 3 uses
  %i.fk = sub nuw i32 %.1853.i, %i.bu             ; 2 uses
  %i.fl = lshr i16 %i.bk, 5
  %i.fm = sub i16 %i.bk, %i.fl
  store i16 %i.fm, ptr %i.bj, align 2, !tbaa !34
  %i.fn = zext i32 %.0777.i to i64                ; 4 uses
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.fn ; 3 uses
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !34 ; 4 uses
  %i.fq = zext i16 %i.fp to i32                   ; 2 uses
  %i.fr = icmp ult i32 %i.fj, 16777216
  br i1 %i.fr, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fs = shl nuw i32 %i.fj, 8
  %i.ft = shl i32 %i.fk, 8
  %i.fu = getelementptr inbounds nuw i8, ptr %.1925.i, i64 1
  %i.fv = load i8, ptr %.1925.i, align 1, !tbaa !25
  %i.fw = zext i8 %i.fv to i32
  %i.fx = or disjoint i32 %i.ft, %i.fw
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.7931.i = phi ptr [ %i.fu, %bb.x ], [ %.1925.i, %bb.w ] ; 4 uses
  %.9877.i = phi i32 [ %i.fs, %bb.x ], [ %i.fj, %bb.w ] ; 2 uses
  %.9861.i = phi i32 [ %i.fx, %bb.x ], [ %i.fk, %bb.w ] ; 3 uses
  %i.fy = lshr i32 %.9877.i, 11
  %i.fz = mul i32 %i.fy, %i.fq                    ; 4 uses
  %i.ga = icmp ult i32 %.9861.i, %i.fz
  br i1 %i.ga, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gb = sub nsw i32 2048, %i.fq
  %i.gc = lshr i32 %i.gb, 5
  %i.gd = trunc i32 %i.gc to i16
  %i.ge = add i16 %i.fp, %i.gd
  store i16 %i.ge, ptr %i.fo, align 2, !tbaa !34
  %i.gf = add i32 %.0777.i, 12
  br label %bb.au

bb.aa:                                            ; preds = %bb.y
  %i.gg = sub i32 %.9877.i, %i.fz                 ; 3 uses
  %i.gh = sub nuw i32 %.9861.i, %i.fz             ; 2 uses
  %i.gi = lshr i16 %i.fp, 5
  %i.gj = sub i16 %i.fp, %i.gi
  store i16 %i.gj, ptr %i.fo, align 2, !tbaa !34
  %i.gk = or i32 %.0848.i, %i.s
  %or.cond4.i = icmp eq i32 %i.gk, 0
  br i1 %or.cond4.i, label %LzmaDec_WriteRem.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.fn ; 3 uses
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !34 ; 4 uses
  %i.gn = zext i16 %i.gm to i32                   ; 2 uses
  %i.go = icmp ult i32 %i.gg, 16777216
  br i1 %i.go, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gp = shl nuw i32 %i.gg, 8
  %i.gq = shl i32 %i.gh, 8
  %i.gr = getelementptr inbounds nuw i8, ptr %.7931.i, i64 1
  %i.gs = load i8, ptr %.7931.i, align 1, !tbaa !25
  %i.gt = zext i8 %i.gs to i32
  %i.gu = or disjoint i32 %i.gq, %i.gt
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.8932.i = phi ptr [ %i.gr, %bb.ac ], [ %.7931.i, %bb.ab ] ; 6 uses
  %.10878.i = phi i32 [ %i.gp, %bb.ac ], [ %i.gg, %bb.ab ] ; 2 uses
  %.10862.i = phi i32 [ %i.gu, %bb.ac ], [ %i.gh, %bb.ab ] ; 4 uses
  %i.gv = lshr i32 %.10878.i, 11
  %i.gw = mul i32 %i.gv, %i.gn                    ; 6 uses
  %i.gx = icmp ult i32 %.10862.i, %i.gw
  br i1 %i.gx, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.gy = sub nsw i32 2048, %i.gn
  %i.gz = lshr i32 %i.gy, 5
  %i.ha = trunc i32 %i.gz to i16
  %i.hb = add i16 %i.gm, %i.ha
  store i16 %i.hb, ptr %i.gl, align 2, !tbaa !34
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.bg
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %i.bi ; 3 uses
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !34 ; 4 uses
  %i.hf = zext i16 %i.he to i32                   ; 2 uses
  %i.hg = icmp ult i32 %i.gw, 16777216
  br i1 %i.hg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.hh = shl nuw i32 %i.gw, 8
  %i.hi = shl i32 %.10862.i, 8
  %i.hj = getelementptr inbounds nuw i8, ptr %.8932.i, i64 1
  %i.hk = load i8, ptr %.8932.i, align 1, !tbaa !25
  %i.hl = zext i8 %i.hk to i32
  %i.hm = or disjoint i32 %i.hi, %i.hl
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.9933.i = phi ptr [ %i.hj, %bb.af ], [ %.8932.i, %bb.ae ] ; 2 uses
  %.11879.i = phi i32 [ %i.hh, %bb.af ], [ %i.gw, %bb.ae ] ; 2 uses
  %.11863.i = phi i32 [ %i.hm, %bb.af ], [ %.10862.i, %bb.ae ] ; 3 uses
  %i.hn = lshr i32 %.11879.i, 11
  %i.ho = mul i32 %i.hn, %i.hf                    ; 4 uses
  %i.hp = icmp ult i32 %.11863.i, %i.ho
  br i1 %i.hp, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.hq = sub nsw i32 2048, %i.hf
  %i.hr = lshr i32 %i.hq, 5
  %i.hs = trunc i32 %i.hr to i16
  %i.ht = add i16 %i.he, %i.hs
  store i16 %i.ht, ptr %i.hd, align 2, !tbaa !34
  %i.hu = zext i32 %.0785.i to i64                ; 2 uses
  %i.hv = sub i64 %.0836.i, %i.hu
  %i.hw = icmp ult i64 %.0836.i, %i.hu
  %i.hx = select i1 %i.hw, i64 %i.an, i64 0
  %i.hy = getelementptr i8, ptr %i.al, i64 %i.hv
  %i.hz = getelementptr i8, ptr %i.hy, i64 %i.hx
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !25
  %i.ib = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0836.i
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !25
  %i.ic = add i64 %.0836.i, 1
  %i.id = icmp ult i32 %.0777.i, 7
  %i.ie = select i1 %i.id, i32 9, i32 11
  br label %.loopexit1142.i

bb.ai:                                            ; preds = %bb.ag
  %i.if = sub i32 %.11879.i, %i.ho
  %i.ig = sub nuw i32 %.11863.i, %i.ho
  %i.ih = lshr i16 %i.he, 5
  %i.ii = sub i16 %i.he, %i.ih
  store i16 %i.ii, ptr %i.hd, align 2, !tbaa !34
  br label %bb.at

bb.aj:                                            ; preds = %bb.ad
  %i.ij = sub i32 %.10878.i, %i.gw                ; 3 uses
  %i.ik = sub nuw i32 %.10862.i, %i.gw            ; 2 uses
  %i.il = lshr i16 %i.gm, 5
  %i.im = sub i16 %i.gm, %i.il
  store i16 %i.im, ptr %i.gl, align 2, !tbaa !34
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.fn ; 3 uses
  %i.io = load i16, ptr %i.in, align 2, !tbaa !34 ; 4 uses
  %i.ip = zext i16 %i.io to i32                   ; 2 uses
  %i.iq = icmp ult i32 %i.ij, 16777216
  br i1 %i.iq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ir = shl nuw i32 %i.ij, 8
  %i.is = shl i32 %i.ik, 8
  %i.it = getelementptr inbounds nuw i8, ptr %.8932.i, i64 1
  %i.iu = load i8, ptr %.8932.i, align 1, !tbaa !25
  %i.iv = zext i8 %i.iu to i32
  %i.iw = or disjoint i32 %i.is, %i.iv
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.10934.i = phi ptr [ %i.it, %bb.ak ], [ %.8932.i, %bb.aj ] ; 4 uses
  %.12880.i = phi i32 [ %i.ir, %bb.ak ], [ %i.ij, %bb.aj ] ; 2 uses
  %.12864.i = phi i32 [ %i.iw, %bb.ak ], [ %i.ik, %bb.aj ] ; 3 uses
  %i.ix = lshr i32 %.12880.i, 11
  %i.iy = mul i32 %i.ix, %i.ip                    ; 4 uses
  %i.iz = icmp ult i32 %.12864.i, %i.iy
  br i1 %i.iz, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ja = sub nsw i32 2048, %i.ip
  %i.jb = lshr i32 %i.ja, 5
  %i.jc = trunc i32 %i.jb to i16
  %i.jd = add i16 %i.io, %i.jc
  store i16 %i.jd, ptr %i.in, align 2, !tbaa !34
  br label %bb.at

bb.an:                                            ; preds = %bb.al
  %i.je = sub i32 %.12880.i, %i.iy                ; 3 uses
  %i.jf = sub nuw i32 %.12864.i, %i.iy            ; 2 uses
  %i.jg = lshr i16 %i.io, 5
  %i.jh = sub i16 %i.io, %i.jg
end_hunk_0
begin_hunk_1_@LzmaDec_DecodeReal2:bb.a
  %.13881.i = phi i32 [ %i.jm, %bb.ao ], [ %i.je, %bb.an ] ; 2 uses
  %.13865.i = phi i32 [ %i.jr, %bb.ao ], [ %i.jf, %bb.an ] ; 3 uses
  %i.js = lshr i32 %.13881.i, 11
  %i.jt = mul i32 %i.js, %i.jk                    ; 4 uses
  %i.ju = icmp ult i32 %.13865.i, %i.jt
  br i1 %i.ju, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.jv = sub nsw i32 2048, %i.jk
  %i.jw = lshr i32 %i.jv, 5
  %i.jx = trunc i32 %i.jw to i16
  %i.jy = add i16 %i.jj, %i.jx
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.jz = sub i32 %.13881.i, %i.jt
  %i.ka = sub nuw i32 %.13865.i, %i.jt
  %i.kb = lshr i16 %i.jj, 5
  %i.kc = sub i16 %i.jj, %i.kb
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %storemerge.i = phi i16 [ %i.kc, %bb.ar ], [ %i.jy, %bb.aq ]
  %.14882.i = phi i32 [ %i.jz, %bb.ar ], [ %i.jt, %bb.aq ]
  %.14866.i = phi i32 [ %i.ka, %bb.ar ], [ %.13865.i, %bb.aq ]
  %.1829.i = phi i32 [ %.0805.i, %bb.ar ], [ %.0828.i, %bb.aq ]
  %.0823.i = phi i32 [ %.0828.i, %bb.ar ], [ %.0805.i, %bb.aq ]
  store i16 %storemerge.i, ptr %i.ji, align 2, !tbaa !34
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.am, %bb.ai
  %.13937.i = phi ptr [ %.9933.i, %bb.ai ], [ %.10934.i, %bb.am ], [ %.11935.i, %bb.as ]
  %.16884.i = phi i32 [ %i.if, %bb.ai ], [ %i.iy, %bb.am ], [ %.14882.i, %bb.as ]
  %.16.i = phi i32 [ %i.ig, %bb.ai ], [ %.12864.i, %bb.am ], [ %.14866.i, %bb.as ]
  %.3831.i = phi i32 [ %.0828.i, %bb.ai ], [ %.0828.i, %bb.am ], [ %.1829.i, %bb.as ]
  %.2807.i = phi i32 [ %.0805.i, %bb.ai ], [ %.0805.i, %bb.am ], [ %.0794.i, %bb.as ]
  %.1795.i = phi i32 [ %.0794.i, %bb.ai ], [ %.0785.i, %bb.am ], [ %.0785.i, %bb.as ]
  %.1786.i = phi i32 [ %.0785.i, %bb.ai ], [ %.0794.i, %bb.am ], [ %.0823.i, %bb.as ]
  %i.kd = icmp ult i32 %.0777.i, 7
  %i.ke = select i1 %i.kd, i32 8, i32 11
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.z
  %.14938.i = phi ptr [ %.7931.i, %bb.z ], [ %.13937.i, %bb.at ] ; 3 uses
  %.17885.i = phi i32 [ %i.fz, %bb.z ], [ %.16884.i, %bb.at ] ; 3 uses
  %.17.i = phi i32 [ %.9861.i, %bb.z ], [ %.16.i, %bb.at ] ; 2 uses
  %.1851.i = phi ptr [ %i.ax, %bb.z ], [ %i.aw, %bb.at ] ; 7 uses
  %.4832.i = phi i32 [ %.0828.i, %bb.z ], [ %.3831.i, %bb.at ] ; 2 uses
  %.3808.i = phi i32 [ %.0805.i, %bb.z ], [ %.2807.i, %bb.at ] ; 3 uses
  %.2796.i = phi i32 [ %.0794.i, %bb.z ], [ %.1795.i, %bb.at ] ; 3 uses
  %.2787.i = phi i32 [ %.0785.i, %bb.z ], [ %.1786.i, %bb.at ] ; 3 uses
  %.2779.i = phi i32 [ %i.gf, %bb.z ], [ %i.ke, %bb.at ] ; 4 uses
  %i.kf = load i16, ptr %.1851.i, align 2, !tbaa !34 ; 4 uses
  %i.kg = zext i16 %i.kf to i32                   ; 2 uses
  %i.kh = icmp ult i32 %.17885.i, 16777216
  br i1 %i.kh, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ki = shl nuw i32 %.17885.i, 8
  %i.kj = shl i32 %.17.i, 8
  %i.kk = getelementptr inbounds nuw i8, ptr %.14938.i, i64 1
  %i.kl = load i8, ptr %.14938.i, align 1, !tbaa !25
  %i.km = zext i8 %i.kl to i32
  %i.kn = or disjoint i32 %i.kj, %i.km
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.15939.i = phi ptr [ %i.kk, %bb.av ], [ %.14938.i, %bb.au ] ; 4 uses
  %.18886.i = phi i32 [ %i.ki, %bb.av ], [ %.17885.i, %bb.au ] ; 2 uses
  %.18.i = phi i32 [ %i.kn, %bb.av ], [ %.17.i, %bb.au ] ; 3 uses
  %i.ko = lshr i32 %.18886.i, 11
  %i.kp = mul i32 %i.ko, %i.kg                    ; 4 uses
  %i.kq = icmp ult i32 %.18.i, %i.kp
  br i1 %i.kq, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.kr = sub nsw i32 2048, %i.kg
  %i.ks = lshr i32 %i.kr, 5
  %i.kt = trunc i32 %i.ks to i16
  %i.ku = add i16 %i.kf, %i.kt
  store i16 %i.ku, ptr %.1851.i, align 2, !tbaa !34
  %i.kv = getelementptr inbounds nuw i8, ptr %.1851.i, i64 4
  %i.kw = shl i32 %i.be, 3
  %i.kx = zext i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %i.kv, i64 %i.kx
  br label %bb.bd

bb.ay:                                            ; preds = %bb.aw
  %i.kz = sub i32 %.18886.i, %i.kp                ; 3 uses
  %i.la = sub nuw i32 %.18.i, %i.kp               ; 2 uses
  %i.lb = lshr i16 %i.kf, 5
  %i.lc = sub i16 %i.kf, %i.lb
  store i16 %i.lc, ptr %.1851.i, align 2, !tbaa !34
  %i.ld = getelementptr inbounds nuw i8, ptr %.1851.i, i64 2 ; 3 uses
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !34 ; 4 uses
  %i.lf = zext i16 %i.le to i32                   ; 2 uses
  %i.lg = icmp ult i32 %i.kz, 16777216
  br i1 %i.lg, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.lh = shl nuw i32 %i.kz, 8
  %i.li = shl i32 %i.la, 8
  %i.lj = getelementptr inbounds nuw i8, ptr %.15939.i, i64 1
  %i.lk = load i8, ptr %.15939.i, align 1, !tbaa !25
  %i.ll = zext i8 %i.lk to i32
  %i.lm = or disjoint i32 %i.li, %i.ll
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.16940.i = phi ptr [ %i.lj, %bb.az ], [ %.15939.i, %bb.ay ] ; 2 uses
  %.19887.i = phi i32 [ %i.lh, %bb.az ], [ %i.kz, %bb.ay ] ; 2 uses
  %.19.i = phi i32 [ %i.lm, %bb.az ], [ %i.la, %bb.ay ] ; 3 uses
  %i.ln = lshr i32 %.19887.i, 11
  %i.lo = mul i32 %i.ln, %i.lf                    ; 4 uses
  %i.lp = icmp ult i32 %.19.i, %i.lo
  br i1 %i.lp, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.lq = sub nsw i32 2048, %i.lf
  %i.lr = lshr i32 %i.lq, 5
  %i.ls = trunc i32 %i.lr to i16
  %i.lt = add i16 %i.le, %i.ls
  store i16 %i.lt, ptr %i.ld, align 2, !tbaa !34
  %i.lu = getelementptr inbounds nuw i8, ptr %.1851.i, i64 260
  %i.lv = shl i32 %i.be, 3
  %i.lw = zext i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %i.lu, i64 %i.lw
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.ly = sub i32 %.19887.i, %i.lo
  %i.lz = sub nuw i32 %.19.i, %i.lo
  %i.ma = lshr i16 %i.le, 5
  %i.mb = sub i16 %i.le, %i.ma
  store i16 %i.mb, ptr %i.ld, align 2, !tbaa !34
  %i.mc = getelementptr inbounds nuw i8, ptr %.1851.i, i64 516
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ax
  %.17941.i = phi ptr [ %.15939.i, %bb.ax ], [ %.16940.i, %bb.bb ], [ %.16940.i, %bb.bc ]
  %.20888.i = phi i32 [ %i.kp, %bb.ax ], [ %i.lo, %bb.bb ], [ %i.ly, %bb.bc ]
  %.20.i = phi i32 [ %.18.i, %bb.ax ], [ %.19.i, %bb.bb ], [ %i.lz, %bb.bc ]
  %.0822.i = phi i32 [ 8, %bb.ax ], [ 8, %bb.bb ], [ 256, %bb.bc ] ; 2 uses
  %.0821.i = phi i32 [ 0, %bb.ax ], [ 8, %bb.bb ], [ 16, %bb.bc ]
  %.0820.i = phi ptr [ %i.ky, %bb.ax ], [ %i.lx, %bb.bb ], [ %i.mc, %bb.bc ]
  br label %bb.be

bb.be:                                            ; preds = %bb.bj, %bb.bd
  %.1966.i = phi i32 [ 1, %bb.bd ], [ %.2967.i, %bb.bj ] ; 2 uses
  %.18942.i = phi ptr [ %.17941.i, %bb.bd ], [ %.19943.i, %bb.bj ] ; 3 uses
  %.21889.i = phi i32 [ %.20888.i, %bb.bd ], [ %.23891.i, %bb.bj ] ; 3 uses
  %.21.i = phi i32 [ %.20.i, %bb.bd ], [ %.23.i, %bb.bj ] ; 2 uses
  %i.md = zext i32 %.1966.i to i64
  %i.me = getelementptr inbounds nuw [2 x i8], ptr %.0820.i, i64 %i.md ; 2 uses
  %i.mf = load i16, ptr %i.me, align 2, !tbaa !34 ; 4 uses
  %i.mg = zext i16 %i.mf to i32                   ; 2 uses
  %i.mh = icmp ult i32 %.21889.i, 16777216
  br i1 %i.mh, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.mi = shl nuw i32 %.21889.i, 8
  %i.mj = shl i32 %.21.i, 8
  %i.mk = getelementptr inbounds nuw i8, ptr %.18942.i, i64 1
  %i.ml = load i8, ptr %.18942.i, align 1, !tbaa !25
  %i.mm = zext i8 %i.ml to i32
  %i.mn = or disjoint i32 %i.mj, %i.mm
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.19943.i = phi ptr [ %i.mk, %bb.bf ], [ %.18942.i, %bb.be ] ; 5 uses
  %.22890.i = phi i32 [ %i.mi, %bb.bf ], [ %.21889.i, %bb.be ] ; 2 uses
  %.22.i = phi i32 [ %i.mn, %bb.bf ], [ %.21.i, %bb.be ] ; 3 uses
  %i.mo = lshr i32 %.22890.i, 11
  %i.mp = mul i32 %i.mo, %i.mg                    ; 4 uses
  %i.mq = icmp ult i32 %.22.i, %i.mp
  %i.mr = shl i32 %.1966.i, 1                     ; 2 uses
  br i1 %i.mq, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ms = sub nsw i32 2048, %i.mg
  %i.mt = lshr i32 %i.ms, 5
  %i.mu = trunc i32 %i.mt to i16
  %i.mv = add i16 %i.mf, %i.mu
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.mw = sub i32 %.22890.i, %i.mp
  %i.mx = sub nuw i32 %.22.i, %i.mp
  %i.my = lshr i16 %i.mf, 5
  %i.mz = sub i16 %i.mf, %i.my
  %i.na = or disjoint i32 %i.mr, 1
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.sink1168.i = phi i16 [ %i.mv, %bb.bh ], [ %i.mz, %bb.bi ]
  %.2967.i = phi i32 [ %i.mr, %bb.bh ], [ %i.na, %bb.bi ] ; 3 uses
  %.23891.i = phi i32 [ %i.mp, %bb.bh ], [ %i.mw, %bb.bi ] ; 5 uses
  %.23.i = phi i32 [ %.22.i, %bb.bh ], [ %i.mx, %bb.bi ] ; 4 uses
  store i16 %.sink1168.i, ptr %i.me, align 2, !tbaa !34
  %i.nb = icmp ult i32 %.2967.i, %.0822.i
  br i1 %i.nb, label %bb.be, label %bb.bk, !llvm.loop !53

bb.bk:                                            ; preds = %bb.bj
  %i.nc = sub nuw i32 %.2967.i, %.0822.i
  %i.nd = add i32 %i.nc, %.0821.i                 ; 3 uses
  %i.ne = icmp ugt i32 %.2779.i, 11
  br i1 %i.ne, label %bb.bl, label %bb.ev

bb.bl:                                            ; preds = %bb.bk
  %i.nf = tail call i32 @llvm.umin.i32(i32 %i.nd, i32 3)
  %i.ng = shl nuw nsw i32 %i.nf, 6
  %i.nh = zext nneg i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.nh ; 6 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 2 ; 2 uses
  %i.nk = load i16, ptr %i.nj, align 2, !tbaa !34 ; 4 uses
  %i.nl = zext i16 %i.nk to i32                   ; 2 uses
  %i.nm = icmp ult i32 %.23891.i, 16777216
  br i1 %i.nm, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.nn = shl nuw i32 %.23891.i, 8
  %i.no = shl i32 %.23.i, 8
  %i.np = getelementptr inbounds nuw i8, ptr %.19943.i, i64 1
  %i.nq = load i8, ptr %.19943.i, align 1, !tbaa !25
  %i.nr = zext i8 %i.nq to i32
  %i.ns = or disjoint i32 %i.no, %i.nr
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.20944.i = phi ptr [ %i.np, %bb.bm ], [ %.19943.i, %bb.bl ] ; 3 uses
  %.24892.i = phi i32 [ %i.nn, %bb.bm ], [ %.23891.i, %bb.bl ] ; 2 uses
  %.24.i = phi i32 [ %i.ns, %bb.bm ], [ %.23.i, %bb.bl ] ; 3 uses
  %i.nt = lshr i32 %.24892.i, 11
  %i.nu = mul i32 %i.nt, %i.nl                    ; 4 uses
  %i.nv = icmp ult i32 %.24.i, %i.nu
  br i1 %i.nv, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.nw = sub nsw i32 2048, %i.nl
  %i.nx = lshr i32 %i.nw, 5
  %i.ny = trunc i32 %i.nx to i16
  %i.nz = add i16 %i.nk, %i.ny
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.oa = sub i32 %.24892.i, %i.nu
  %i.ob = sub nuw i32 %.24.i, %i.nu
  %i.oc = lshr i16 %i.nk, 5
  %i.od = sub i16 %i.nk, %i.oc
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %storemerge1036.i = phi i16 [ %i.od, %bb.bp ], [ %i.nz, %bb.bo ]
  %.25893.i = phi i32 [ %i.oa, %bb.bp ], [ %i.nu, %bb.bo ] ; 3 uses
  %.25.i = phi i32 [ %i.ob, %bb.bp ], [ %.24.i, %bb.bo ] ; 2 uses
  %.0812.i = phi i32 [ 3, %bb.bp ], [ 2, %bb.bo ] ; 2 uses
  store i16 %storemerge1036.i, ptr %i.nj, align 2, !tbaa !34
  %i.oe = zext nneg i32 %.0812.i to i64
  %i.of = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.oe ; 2 uses
  %i.og = load i16, ptr %i.of, align 2, !tbaa !34 ; 4 uses
  %i.oh = zext i16 %i.og to i32                   ; 2 uses
  %i.oi = icmp ult i32 %.25893.i, 16777216
  br i1 %i.oi, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.oj = shl nuw i32 %.25893.i, 8
  %i.ok = shl i32 %.25.i, 8
  %i.ol = getelementptr inbounds nuw i8, ptr %.20944.i, i64 1
  %i.om = load i8, ptr %.20944.i, align 1, !tbaa !25
  %i.on = zext i8 %i.om to i32
  %i.oo = or disjoint i32 %i.ok, %i.on
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.21945.i = phi ptr [ %i.ol, %bb.br ], [ %.20944.i, %bb.bq ] ; 3 uses
  %.26894.i = phi i32 [ %i.oj, %bb.br ], [ %.25893.i, %bb.bq ] ; 2 uses
  %.26.i = phi i32 [ %i.oo, %bb.br ], [ %.25.i, %bb.bq ] ; 3 uses
  %i.op = lshr i32 %.26894.i, 11
  %i.oq = mul i32 %i.op, %i.oh                    ; 4 uses
  %i.or = icmp ult i32 %.26.i, %i.oq
  %i.os = shl nuw nsw i32 %.0812.i, 1             ; 2 uses
  br i1 %i.or, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ot = sub nsw i32 2048, %i.oh
  %i.ou = lshr i32 %i.ot, 5
  %i.ov = trunc i32 %i.ou to i16
  %i.ow = add i16 %i.og, %i.ov
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.ox = sub i32 %.26894.i, %i.oq
  %i.oy = sub nuw i32 %.26.i, %i.oq
  %i.oz = lshr i16 %i.og, 5
  %i.pa = sub i16 %i.og, %i.oz
  %i.pb = or disjoint i32 %i.os, 1
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.sink1169.i = phi i16 [ %i.ow, %bb.bt ], [ %i.pa, %bb.bu ]
  %.27895.i = phi i32 [ %i.oq, %bb.bt ], [ %i.ox, %bb.bu ] ; 3 uses
  %.27.i = phi i32 [ %.26.i, %bb.bt ], [ %i.oy, %bb.bu ] ; 2 uses
  %.1813.i = phi i32 [ %i.os, %bb.bt ], [ %i.pb, %bb.bu ] ; 2 uses
  store i16 %.sink1169.i, ptr %i.of, align 2, !tbaa !34
  %i.pc = zext nneg i32 %.1813.i to i64
  %i.pd = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.pc ; 2 uses
  %i.pe = load i16, ptr %i.pd, align 2, !tbaa !34 ; 4 uses
  %i.pf = zext i16 %i.pe to i32                   ; 2 uses
  %i.pg = icmp ult i32 %.27895.i, 16777216
  br i1 %i.pg, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ph = shl nuw i32 %.27895.i, 8
  %i.pi = shl i32 %.27.i, 8
  %i.pj = getelementptr inbounds nuw i8, ptr %.21945.i, i64 1
  %i.pk = load i8, ptr %.21945.i, align 1, !tbaa !25
  %i.pl = zext i8 %i.pk to i32
  %i.pm = or disjoint i32 %i.pi, %i.pl
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.22946.i = phi ptr [ %i.pj, %bb.bw ], [ %.21945.i, %bb.bv ] ; 3 uses
  %.28896.i = phi i32 [ %i.ph, %bb.bw ], [ %.27895.i, %bb.bv ] ; 2 uses
  %.28.i = phi i32 [ %i.pm, %bb.bw ], [ %.27.i, %bb.bv ] ; 3 uses
  %i.pn = lshr i32 %.28896.i, 11
  %i.po = mul i32 %i.pn, %i.pf                    ; 4 uses
  %i.pp = icmp ult i32 %.28.i, %i.po
  %i.pq = shl nuw nsw i32 %.1813.i, 1             ; 2 uses
  br i1 %i.pp, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.pr = sub nsw i32 2048, %i.pf
  %i.ps = lshr i32 %i.pr, 5
  %i.pt = trunc i32 %i.ps to i16
  %i.pu = add i16 %i.pe, %i.pt
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.pv = sub i32 %.28896.i, %i.po
  %i.pw = sub nuw i32 %.28.i, %i.po
  %i.px = lshr i16 %i.pe, 5
  %i.py = sub i16 %i.pe, %i.px
  %i.pz = or disjoint i32 %i.pq, 1
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.sink1170.i = phi i16 [ %i.pu, %bb.by ], [ %i.py, %bb.bz ]
  %.29897.i = phi i32 [ %i.po, %bb.by ], [ %i.pv, %bb.bz ] ; 3 uses
  %.29.i = phi i32 [ %.28.i, %bb.by ], [ %i.pw, %bb.bz ] ; 2 uses
  %.2814.i = phi i32 [ %i.pq, %bb.by ], [ %i.pz, %bb.bz ] ; 2 uses
  store i16 %.sink1170.i, ptr %i.pd, align 2, !tbaa !34
  %i.qa = zext nneg i32 %.2814.i to i64
  %i.qb = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.qa ; 2 uses
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !34 ; 4 uses
  %i.qd = zext i16 %i.qc to i32                   ; 2 uses
  %i.qe = icmp ult i32 %.29897.i, 16777216
  br i1 %i.qe, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.qf = shl nuw i32 %.29897.i, 8
  %i.qg = shl i32 %.29.i, 8
  %i.qh = getelementptr inbounds nuw i8, ptr %.22946.i, i64 1
  %i.qi = load i8, ptr %.22946.i, align 1, !tbaa !25
  %i.qj = zext i8 %i.qi to i32
  %i.qk = or disjoint i32 %i.qg, %i.qj
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.23947.i = phi ptr [ %i.qh, %bb.cb ], [ %.22946.i, %bb.ca ] ; 3 uses
  %.30898.i = phi i32 [ %i.qf, %bb.cb ], [ %.29897.i, %bb.ca ] ; 2 uses
  %.30.i = phi i32 [ %i.qk, %bb.cb ], [ %.29.i, %bb.ca ] ; 3 uses
  %i.ql = lshr i32 %.30898.i, 11
  %i.qm = mul i32 %i.ql, %i.qd                    ; 4 uses
  %i.qn = icmp ult i32 %.30.i, %i.qm
  %i.qo = shl nuw nsw i32 %.2814.i, 1             ; 2 uses
  br i1 %i.qn, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.qp = sub nsw i32 2048, %i.qd
  %i.qq = lshr i32 %i.qp, 5
  %i.qr = trunc i32 %i.qq to i16
  %i.qs = add i16 %i.qc, %i.qr
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.qt = sub i32 %.30898.i, %i.qm
  %i.qu = sub nuw i32 %.30.i, %i.qm
  %i.qv = lshr i16 %i.qc, 5
  %i.qw = sub i16 %i.qc, %i.qv
  %i.qx = or disjoint i32 %i.qo, 1
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.sink1171.i = phi i16 [ %i.qs, %bb.cd ], [ %i.qw, %bb.ce ]
  %.31899.i = phi i32 [ %i.qm, %bb.cd ], [ %i.qt, %bb.ce ] ; 3 uses
  %.31.i = phi i32 [ %.30.i, %bb.cd ], [ %i.qu, %bb.ce ] ; 2 uses
  %.3815.i = phi i32 [ %i.qo, %bb.cd ], [ %i.qx, %bb.ce ] ; 2 uses
  store i16 %.sink1171.i, ptr %i.qb, align 2, !tbaa !34
  %i.qy = zext nneg i32 %.3815.i to i64
  %i.qz = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.qy ; 2 uses
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !34 ; 4 uses
end_hunk_1
begin_hunk_2_@LzmaDec_DecodeReal2:bb.a
  %.sink1174.i.1 = phi i16 [ %i.vc, %bb.db ], [ %i.uw, %bb.da ]
  %.38906.i.1 = phi i32 [ %i.uq, %bb.db ], [ %i.ut, %bb.da ] ; 4 uses
  %.38.i.1 = phi i32 [ %.37.i.1, %bb.db ], [ %i.uu, %bb.da ] ; 3 uses
  %.7819.i.1 = phi i32 [ %.7819.i, %bb.db ], [ %i.uy, %bb.da ] ; 3 uses
  %.1801.i.1 = phi i32 [ %i.us, %bb.db ], [ %i.ux, %bb.da ] ; 2 uses
  store i16 %.sink1174.i.1, ptr %i.uf, align 2, !tbaa !34
  %.not1037.i.1 = icmp eq i32 %i.sw, 3
  br i1 %.not1037.i.1, label %.thread1047.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.vd = zext i32 %.1801.i.1 to i64
  %i.ve = getelementptr inbounds nuw [2 x i8], ptr %i.th, i64 %i.vd ; 2 uses
  %i.vf = load i16, ptr %i.ve, align 2, !tbaa !34 ; 4 uses
  %i.vg = zext i16 %i.vf to i32                   ; 2 uses
  %i.vh = icmp ult i32 %.38906.i.1, 16777216
  br i1 %i.vh, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.vi = shl nuw i32 %.38906.i.1, 8
  %i.vj = shl i32 %.38.i.1, 8
  %i.vk = getelementptr inbounds nuw i8, ptr %.27951.i.1, i64 1
  %i.vl = load i8, ptr %.27951.i.1, align 1, !tbaa !25
  %i.vm = zext i8 %i.vl to i32
  %i.vn = or disjoint i32 %i.vj, %i.vm
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.27951.i.2 = phi ptr [ %i.vk, %bb.de ], [ %.27951.i.1, %bb.dd ] ; 4 uses
  %.37905.i.2 = phi i32 [ %i.vi, %bb.de ], [ %.38906.i.1, %bb.dd ] ; 2 uses
  %.37.i.2 = phi i32 [ %i.vn, %bb.de ], [ %.38.i.1, %bb.dd ] ; 3 uses
  %i.vo = lshr i32 %.37905.i.2, 11
  %i.vp = mul i32 %i.vo, %i.vg                    ; 4 uses
  %i.vq = icmp ult i32 %.37.i.2, %i.vp
  %i.vr = shl nsw i32 %.1801.i.1, 1               ; 2 uses
  br i1 %i.vq, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.vs = sub i32 %.37905.i.2, %i.vp
  %i.vt = sub nuw i32 %.37.i.2, %i.vp
  %i.vu = lshr i16 %i.vf, 5
  %i.vv = sub i16 %i.vf, %i.vu
  %i.vw = or disjoint i32 %i.vr, 1
  %i.vx = or i32 %.7819.i.1, 4
  br label %bb.di

bb.dh:                                            ; preds = %bb.df
  %i.vy = sub nsw i32 2048, %i.vg
  %i.vz = lshr i32 %i.vy, 5
  %i.wa = trunc i32 %i.vz to i16
  %i.wb = add i16 %i.vf, %i.wa
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.sink1174.i.2 = phi i16 [ %i.wb, %bb.dh ], [ %i.vv, %bb.dg ]
  %.38906.i.2 = phi i32 [ %i.vp, %bb.dh ], [ %i.vs, %bb.dg ] ; 4 uses
  %.38.i.2 = phi i32 [ %.37.i.2, %bb.dh ], [ %i.vt, %bb.dg ] ; 3 uses
  %.7819.i.2 = phi i32 [ %.7819.i.1, %bb.dh ], [ %i.vx, %bb.dg ] ; 3 uses
  %.1801.i.2 = phi i32 [ %i.vr, %bb.dh ], [ %i.vw, %bb.dg ] ; 2 uses
  store i16 %.sink1174.i.2, ptr %i.ve, align 2, !tbaa !34
  %.not1037.i.2 = icmp eq i32 %i.sw, 4
  br i1 %.not1037.i.2, label %.thread1047.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.wc = zext i32 %.1801.i.2 to i64
  %i.wd = getelementptr inbounds nuw [2 x i8], ptr %i.th, i64 %i.wc ; 2 uses
  %i.we = load i16, ptr %i.wd, align 2, !tbaa !34 ; 4 uses
  %i.wf = zext i16 %i.we to i32                   ; 2 uses
  %i.wg = icmp ult i32 %.38906.i.2, 16777216
  br i1 %i.wg, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.wh = shl nuw i32 %.38906.i.2, 8
  %i.wi = shl i32 %.38.i.2, 8
  %i.wj = getelementptr inbounds nuw i8, ptr %.27951.i.2, i64 1
  %i.wk = load i8, ptr %.27951.i.2, align 1, !tbaa !25
  %i.wl = zext i8 %i.wk to i32
  %i.wm = or disjoint i32 %i.wi, %i.wl
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.27951.i.3 = phi ptr [ %i.wj, %bb.dk ], [ %.27951.i.2, %bb.dj ] ; 4 uses
  %.37905.i.3 = phi i32 [ %i.wh, %bb.dk ], [ %.38906.i.2, %bb.dj ] ; 2 uses
  %.37.i.3 = phi i32 [ %i.wm, %bb.dk ], [ %.38.i.2, %bb.dj ] ; 3 uses
  %i.wn = lshr i32 %.37905.i.3, 11
  %i.wo = mul i32 %i.wn, %i.wf                    ; 4 uses
  %i.wp = icmp ult i32 %.37.i.3, %i.wo
  %i.wq = shl i32 %.1801.i.2, 1                   ; 2 uses
  br i1 %i.wp, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.wr = sub i32 %.37905.i.3, %i.wo
  %i.ws = sub nuw i32 %.37.i.3, %i.wo
  %i.wt = lshr i16 %i.we, 5
  %i.wu = sub i16 %i.we, %i.wt
  %i.wv = or disjoint i32 %i.wq, 1
  %i.ww = or i32 %.7819.i.2, 8
  br label %bb.do

bb.dn:                                            ; preds = %bb.dl
  %i.wx = sub nsw i32 2048, %i.wf
  %i.wy = lshr i32 %i.wx, 5
  %i.wz = trunc i32 %i.wy to i16
  %i.xa = add i16 %i.we, %i.wz
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.sink1174.i.3 = phi i16 [ %i.xa, %bb.dn ], [ %i.wu, %bb.dm ]
  %.38906.i.3 = phi i32 [ %i.wo, %bb.dn ], [ %i.wr, %bb.dm ] ; 4 uses
  %.38.i.3 = phi i32 [ %.37.i.3, %bb.dn ], [ %i.ws, %bb.dm ] ; 3 uses
  %.7819.i.3 = phi i32 [ %.7819.i.2, %bb.dn ], [ %i.ww, %bb.dm ] ; 3 uses
  %.1801.i.3 = phi i32 [ %i.wq, %bb.dn ], [ %i.wv, %bb.dm ]
  store i16 %.sink1174.i.3, ptr %i.wd, align 2, !tbaa !34
  %.not1037.i.3 = icmp eq i32 %i.sw, 5
  br i1 %.not1037.i.3, label %.thread1047.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.xb = zext i32 %.1801.i.3 to i64
  %i.xc = getelementptr inbounds nuw [2 x i8], ptr %i.th, i64 %i.xb ; 2 uses
  %i.xd = load i16, ptr %i.xc, align 2, !tbaa !34 ; 4 uses
  %i.xe = zext i16 %i.xd to i32                   ; 2 uses
  %i.xf = icmp ult i32 %.38906.i.3, 16777216
  br i1 %i.xf, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.xg = shl nuw i32 %.38906.i.3, 8
  %i.xh = shl i32 %.38.i.3, 8
  %i.xi = getelementptr inbounds nuw i8, ptr %.27951.i.3, i64 1
  %i.xj = load i8, ptr %.27951.i.3, align 1, !tbaa !25
  %i.xk = zext i8 %i.xj to i32
  %i.xl = or disjoint i32 %i.xh, %i.xk
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.27951.i.4 = phi ptr [ %i.xi, %bb.dq ], [ %.27951.i.3, %bb.dp ]
  %.37905.i.4 = phi i32 [ %i.xg, %bb.dq ], [ %.38906.i.3, %bb.dp ] ; 2 uses
  %.37.i.4 = phi i32 [ %i.xl, %bb.dq ], [ %.38.i.3, %bb.dp ] ; 3 uses
  %i.xm = lshr i32 %.37905.i.4, 11
  %i.xn = mul i32 %i.xm, %i.xe                    ; 4 uses
  %i.xo = icmp ult i32 %.37.i.4, %i.xn
  br i1 %i.xo, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.xp = sub i32 %.37905.i.4, %i.xn
  %i.xq = sub nuw i32 %.37.i.4, %i.xn
  %i.xr = lshr i16 %i.xd, 5
  %i.xs = sub i16 %i.xd, %i.xr
  %i.xt = or i32 %.7819.i.3, 16
  br label %bb.du

bb.dt:                                            ; preds = %bb.dr
  %i.xu = sub nsw i32 2048, %i.xe
  %i.xv = lshr i32 %i.xu, 5
  %i.xw = trunc i32 %i.xv to i16
  %i.xx = add i16 %i.xd, %i.xw
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.sink1174.i.4 = phi i16 [ %i.xx, %bb.dt ], [ %i.xs, %bb.ds ]
  %.38906.i.4 = phi i32 [ %i.xn, %bb.dt ], [ %i.xp, %bb.ds ]
  %.38.i.4 = phi i32 [ %.37.i.4, %bb.dt ], [ %i.xq, %bb.ds ]
  %.7819.i.4 = phi i32 [ %.7819.i.3, %bb.dt ], [ %i.xt, %bb.ds ]
  store i16 %.sink1174.i.4, ptr %i.xc, align 2, !tbaa !34
  br label %.thread1047.i

bb.dv:                                            ; preds = %bb.cq
  %i.xy = add nsw i32 %i.sw, -5
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dy, %bb.dv
  %.28952.i = phi ptr [ %.25949.i, %bb.dv ], [ %.29953.i, %bb.dy ] ; 3 uses
  %.39907.i = phi i32 [ %.35903.i, %bb.dv ], [ %i.yg, %bb.dy ] ; 3 uses
  %.39.i = phi i32 [ %.35.i, %bb.dv ], [ %i.ym, %bb.dy ] ; 2 uses
  %.8.i = phi i32 [ %i.sy, %bb.dv ], [ %i.yk, %bb.dy ]
  %.1804.i = phi i32 [ %i.xy, %bb.dv ], [ %i.yn, %bb.dy ]
  %i.xz = icmp ult i32 %.39907.i, 16777216
  br i1 %i.xz, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.ya = shl nuw i32 %.39907.i, 8
  %i.yb = shl i32 %.39.i, 8
  %i.yc = getelementptr inbounds nuw i8, ptr %.28952.i, i64 1
  %i.yd = load i8, ptr %.28952.i, align 1, !tbaa !25
  %i.ye = zext i8 %i.yd to i32
  %i.yf = or disjoint i32 %i.yb, %i.ye
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %.29953.i = phi ptr [ %i.yc, %bb.dx ], [ %.28952.i, %bb.dw ] ; 4 uses
  %.40908.i = phi i32 [ %i.ya, %bb.dx ], [ %.39907.i, %bb.dw ] ; 2 uses
  %.40.i = phi i32 [ %i.yf, %bb.dx ], [ %.39.i, %bb.dw ]
  %i.yg = lshr i32 %.40908.i, 1                   ; 5 uses
  %i.yh = sub i32 %.40.i, %i.yg                   ; 2 uses
  %.neg.i = ashr i32 %i.yh, 31                    ; 2 uses
  %i.yi = shl i32 %.8.i, 1
  %i.yj = or disjoint i32 %i.yi, 1
  %i.yk = add nsw i32 %i.yj, %.neg.i              ; 2 uses
  %i.yl = and i32 %.neg.i, %i.yg
  %i.ym = add i32 %i.yl, %i.yh                    ; 3 uses
  %i.yn = add nsw i32 %.1804.i, -1                ; 2 uses
  %.not.i = icmp eq i32 %i.yn, 0
  br i1 %.not.i, label %bb.dz, label %bb.dw, !llvm.loop !54

bb.dz:                                            ; preds = %bb.dy
  %i.yo = shl i32 %i.yk, 4                        ; 2 uses
  %i.yp = load i16, ptr %i.ba, align 2, !tbaa !34 ; 4 uses
  %i.yq = zext i16 %i.yp to i32                   ; 2 uses
  %i.yr = icmp ult i32 %.40908.i, 33554432
  br i1 %i.yr, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.ys = shl nuw i32 %i.yg, 8
  %i.yt = shl i32 %i.ym, 8
  %i.yu = getelementptr inbounds nuw i8, ptr %.29953.i, i64 1
  %i.yv = load i8, ptr %.29953.i, align 1, !tbaa !25
  %i.yw = zext i8 %i.yv to i32
  %i.yx = or disjoint i32 %i.yt, %i.yw
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.30954.i = phi ptr [ %i.yu, %bb.ea ], [ %.29953.i, %bb.dz ] ; 3 uses
  %.41909.i = phi i32 [ %i.ys, %bb.ea ], [ %i.yg, %bb.dz ] ; 2 uses
  %.41.i = phi i32 [ %i.yx, %bb.ea ], [ %i.ym, %bb.dz ] ; 3 uses
  %i.yy = lshr i32 %.41909.i, 11
  %i.yz = mul i32 %i.yy, %i.yq                    ; 4 uses
  %i.za = icmp ult i32 %.41.i, %i.yz
  br i1 %i.za, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.zb = sub nsw i32 2048, %i.yq
  %i.zc = lshr i32 %i.zb, 5
  %i.zd = trunc i32 %i.zc to i16
  %i.ze = add i16 %i.yp, %i.zd
  br label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  %i.zf = sub i32 %.41909.i, %i.yz
  %i.zg = sub nuw i32 %.41.i, %i.yz
  %i.zh = lshr i16 %i.yp, 5
  %i.zi = sub i16 %i.yp, %i.zh
  %i.zj = or disjoint i32 %i.yo, 1
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.sink1175.i = phi i16 [ %i.ze, %bb.ec ], [ %i.zi, %bb.ed ]
  %.42910.i = phi i32 [ %i.yz, %bb.ec ], [ %i.zf, %bb.ed ] ; 3 uses
  %.42.i = phi i32 [ %.41.i, %bb.ec ], [ %i.zg, %bb.ed ] ; 2 uses
  %.9.i = phi i32 [ %i.yo, %bb.ec ], [ %i.zj, %bb.ed ] ; 2 uses
  %.0791.i = phi i32 [ 2, %bb.ec ], [ 3, %bb.ed ] ; 2 uses
  store i16 %.sink1175.i, ptr %i.ba, align 2, !tbaa !34
  %i.zk = zext nneg i32 %.0791.i to i64
  %i.zl = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.zk ; 2 uses
  %i.zm = load i16, ptr %i.zl, align 2, !tbaa !34 ; 4 uses
  %i.zn = zext i16 %i.zm to i32                   ; 2 uses
  %i.zo = icmp ult i32 %.42910.i, 16777216
  br i1 %i.zo, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.zp = shl nuw i32 %.42910.i, 8
  %i.zq = shl i32 %.42.i, 8
  %i.zr = getelementptr inbounds nuw i8, ptr %.30954.i, i64 1
  %i.zs = load i8, ptr %.30954.i, align 1, !tbaa !25
  %i.zt = zext i8 %i.zs to i32
  %i.zu = or disjoint i32 %i.zq, %i.zt
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.31955.i = phi ptr [ %i.zr, %bb.ef ], [ %.30954.i, %bb.ee ] ; 3 uses
  %.43911.i = phi i32 [ %i.zp, %bb.ef ], [ %.42910.i, %bb.ee ] ; 2 uses
  %.43.i = phi i32 [ %i.zu, %bb.ef ], [ %.42.i, %bb.ee ] ; 3 uses
  %i.zv = lshr i32 %.43911.i, 11
  %i.zw = mul i32 %i.zv, %i.zn                    ; 4 uses
  %i.zx = icmp ult i32 %.43.i, %i.zw
  %i.zy = shl nuw nsw i32 %.0791.i, 1             ; 2 uses
  br i1 %i.zx, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.zz = sub nsw i32 2048, %i.zn
  %i.aaa = lshr i32 %i.zz, 5
  %i.aab = trunc i32 %i.aaa to i16
  %i.aac = add i16 %i.zm, %i.aab
  br label %bb.ej

bb.ei:                                            ; preds = %bb.eg
  %i.aad = sub i32 %.43911.i, %i.zw
  %i.aae = sub nuw i32 %.43.i, %i.zw
  %i.aaf = lshr i16 %i.zm, 5
  %i.aag = sub i16 %i.zm, %i.aaf
  %i.aah = or disjoint i32 %i.zy, 1
  %i.aai = or i32 %.9.i, 2
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.sink1176.i = phi i16 [ %i.aac, %bb.eh ], [ %i.aag, %bb.ei ]
  %.44912.i = phi i32 [ %i.zw, %bb.eh ], [ %i.aad, %bb.ei ] ; 3 uses
  %.44.i = phi i32 [ %.43.i, %bb.eh ], [ %i.aae, %bb.ei ] ; 2 uses
  %.10.i = phi i32 [ %.9.i, %bb.eh ], [ %i.aai, %bb.ei ] ; 2 uses
  %.1792.i = phi i32 [ %i.zy, %bb.eh ], [ %i.aah, %bb.ei ] ; 2 uses
  store i16 %.sink1176.i, ptr %i.zl, align 2, !tbaa !34
  %i.aaj = zext nneg i32 %.1792.i to i64
  %i.aak = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.aaj ; 2 uses
  %i.aal = load i16, ptr %i.aak, align 2, !tbaa !34 ; 4 uses
  %i.aam = zext i16 %i.aal to i32                 ; 2 uses
  %i.aan = icmp ult i32 %.44912.i, 16777216
  br i1 %i.aan, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.aao = shl nuw i32 %.44912.i, 8
  %i.aap = shl i32 %.44.i, 8
  %i.aaq = getelementptr inbounds nuw i8, ptr %.31955.i, i64 1
  %i.aar = load i8, ptr %.31955.i, align 1, !tbaa !25
  %i.aas = zext i8 %i.aar to i32
  %i.aat = or disjoint i32 %i.aap, %i.aas
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %.32956.i = phi ptr [ %i.aaq, %bb.ek ], [ %.31955.i, %bb.ej ] ; 3 uses
  %.45913.i = phi i32 [ %i.aao, %bb.ek ], [ %.44912.i, %bb.ej ] ; 2 uses
  %.45.i = phi i32 [ %i.aat, %bb.ek ], [ %.44.i, %bb.ej ] ; 3 uses
  %i.aau = lshr i32 %.45913.i, 11
  %i.aav = mul i32 %i.aau, %i.aam                 ; 4 uses
  %i.aaw = icmp ult i32 %.45.i, %i.aav
  %i.aax = shl nuw nsw i32 %.1792.i, 1            ; 2 uses
  br i1 %i.aaw, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.aay = sub nsw i32 2048, %i.aam
  %i.aaz = lshr i32 %i.aay, 5
  %i.aba = trunc i32 %i.aaz to i16
  %i.abb = add i16 %i.aal, %i.aba
  br label %bb.eo

bb.en:                                            ; preds = %bb.el
  %i.abc = sub i32 %.45913.i, %i.aav
  %i.abd = sub nuw i32 %.45.i, %i.aav
  %i.abe = lshr i16 %i.aal, 5
  %i.abf = sub i16 %i.aal, %i.abe
  %i.abg = or disjoint i32 %i.aax, 1
  %i.abh = or i32 %.10.i, 4
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.sink1177.i = phi i16 [ %i.abb, %bb.em ], [ %i.abf, %bb.en ]
  %.46914.i = phi i32 [ %i.aav, %bb.em ], [ %i.abc, %bb.en ] ; 3 uses
  %.46.i = phi i32 [ %.45.i, %bb.em ], [ %i.abd, %bb.en ] ; 2 uses
  %.11.i = phi i32 [ %.10.i, %bb.em ], [ %i.abh, %bb.en ] ; 2 uses
  %.2793.i = phi i32 [ %i.aax, %bb.em ], [ %i.abg, %bb.en ]
  store i16 %.sink1177.i, ptr %i.aak, align 2, !tbaa !34
  %i.abi = zext nneg i32 %.2793.i to i64
  %i.abj = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.abi ; 3 uses
  %i.abk = load i16, ptr %i.abj, align 2, !tbaa !34 ; 4 uses
  %i.abl = zext i16 %i.abk to i32                 ; 2 uses
  %i.abm = icmp ult i32 %.46914.i, 16777216
  br i1 %i.abm, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.abn = shl nuw i32 %.46914.i, 8
  %i.abo = shl i32 %.46.i, 8
  %i.abp = getelementptr inbounds nuw i8, ptr %.32956.i, i64 1
  %i.abq = load i8, ptr %.32956.i, align 1, !tbaa !25
  %i.abr = zext i8 %i.abq to i32
  %i.abs = or disjoint i32 %i.abo, %i.abr
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.33957.i = phi ptr [ %i.abp, %bb.ep ], [ %.32956.i, %bb.eo ] ; 3 uses
  %.47915.i = phi i32 [ %i.abn, %bb.ep ], [ %.46914.i, %bb.eo ] ; 2 uses
  %.47.i = phi i32 [ %i.abs, %bb.ep ], [ %.46.i, %bb.eo ] ; 3 uses
  %i.abt = lshr i32 %.47915.i, 11
  %i.abu = mul i32 %i.abt, %i.abl                 ; 4 uses
  %i.abv = icmp ult i32 %.47.i, %i.abu
  br i1 %i.abv, label %.thread.i, label %bb.er

.thread.i:                                        ; preds = %bb.eq
  %i.abw = sub nsw i32 2048, %i.abl
  %i.abx = lshr i32 %i.abw, 5
  %i.aby = trunc i32 %i.abx to i16
  %i.abz = add i16 %i.abk, %i.aby
  store i16 %i.abz, ptr %i.abj, align 2, !tbaa !34
  br label %.thread1047.i

bb.er:                                            ; preds = %bb.eq
  %i.aca = sub i32 %.47915.i, %i.abu              ; 2 uses
  %i.acb = sub nuw i32 %.47.i, %i.abu             ; 2 uses
  %i.acc = lshr i16 %i.abk, 5
  %i.acd = sub i16 %i.abk, %i.acc
  store i16 %i.acd, ptr %i.abj, align 2, !tbaa !34
  %i.ace = or i32 %.11.i, 8                       ; 2 uses
  %i.acf = icmp eq i32 %i.ace, -1
  br i1 %i.acf, label %bb.ex, label %.thread1047.i

.thread1047.i:                                    ; preds = %bb.cw, %bb.dc, %bb.di, %bb.do, %bb.du, %bb.er, %.thread.i, %bb.cp
  %.36960.i = phi ptr [ %.25949.i, %bb.cp ], [ %.33957.i, %.thread.i ], [ %.33957.i, %bb.er ], [ %.27951.i, %bb.cw ], [ %.27951.i.1, %bb.dc ], [ %.27951.i.2, %bb.di ], [ %.27951.i.3, %bb.do ], [ %.27951.i.4, %bb.du ]
  %.51919.i = phi i32 [ %.35903.i, %bb.cp ], [ %i.abu, %.thread.i ], [ %i.aca, %bb.er ], [ %.38906.i, %bb.cw ], [ %.38906.i.1, %bb.dc ], [ %.38906.i.2, %bb.di ], [ %.38906.i.3, %bb.do ], [ %.38906.i.4, %bb.du ]
  %.51.i = phi i32 [ %.35.i, %bb.cp ], [ %.47.i, %.thread.i ], [ %i.acb, %bb.er ], [ %.38.i, %bb.cw ], [ %.38.i.1, %bb.dc ], [ %.38.i.2, %bb.di ], [ %.38.i.3, %bb.do ], [ %.38.i.4, %bb.du ]
  %.15.i = phi i32 [ %i.su, %bb.cp ], [ %.11.i, %.thread.i ], [ %i.ace, %bb.er ], [ %.7819.i, %bb.cw ], [ %.7819.i.1, %bb.dc ], [ %.7819.i.2, %bb.di ], [ %.7819.i.3, %bb.do ], [ %.7819.i.4, %bb.du ] ; 3 uses
  %i.acg = add i32 %.15.i, 1
  br i1 %i.t, label %bb.es, label %bb.et

bb.es:                                            ; preds = %.thread1047.i
  %.not1039.i = icmp ult i32 %.15.i, %.0848.i
  br i1 %.not1039.i, label %bb.eu, label %LzmaDec_WriteRem.exit

bb.et:                                            ; preds = %.thread1047.i
  %.not1038.i = icmp ult i32 %.15.i, %i.s
  br i1 %.not1038.i, label %bb.eu, label %LzmaDec_WriteRem.exit

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.ach = icmp ult i32 %.2779.i, 19
  %i.aci = select i1 %i.ach, i32 7, i32 10
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.bk
  %.38962.i = phi ptr [ %.36960.i, %bb.eu ], [ %.19943.i, %bb.bk ] ; 3 uses
  %.53921.i = phi i32 [ %.51919.i, %bb.eu ], [ %.23891.i, %bb.bk ] ; 3 uses
  %.53.i = phi i32 [ %.51.i, %bb.eu ], [ %.23.i, %bb.bk ] ; 3 uses
  %.6834.i = phi i32 [ %.3808.i, %bb.eu ], [ %.4832.i, %bb.bk ] ; 3 uses
  %.5810.i = phi i32 [ %.2796.i, %bb.eu ], [ %.3808.i, %bb.bk ] ; 3 uses
  %.4798.i = phi i32 [ %.2787.i, %bb.eu ], [ %.2796.i, %bb.bk ] ; 3 uses
  %.4789.i = phi i32 [ %i.acg, %bb.eu ], [ %.2787.i, %bb.bk ] ; 4 uses
  %.6.i = phi i32 [ %i.aci, %bb.eu ], [ %.2779.i, %bb.bk ] ; 3 uses
  %i.acj = icmp eq i64 %.132, %.0836.i
  br i1 %i.acj, label %LzmaDec_WriteRem.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ack = add i32 %i.nd, 2                       ; 2 uses
  %i.acl = sub i64 %.132, %.0836.i
  %i.acm = zext i32 %i.ack to i64
  %i.acn = tail call i64 @llvm.umin.i64(i64 %i.acl, i64 %i.acm) ; 14 uses
  %i.aco = trunc nuw i64 %i.acn to i32            ; 7 uses
  %i.acp = zext i32 %.4789.i to i64               ; 3 uses
  %i.acq = sub i64 %.0836.i, %i.acp
  %i.acr = icmp ult i64 %.0836.i, %i.acp
  %i.acs = select i1 %i.acr, i64 %i.an, i64 0     ; 2 uses
  %i.act = add i64 %i.acs, %i.acq                 ; 5 uses
  %i.acu = sub i32 %i.ack, %i.aco                 ; 3 uses
  %i.acv = add i64 %i.act, %i.acn
  %.not1040.i = icmp ugt i64 %i.acv, %i.an
  br i1 %.not1040.i, label %.preheader.i.preheader, label %iter.check

.preheader.i.preheader:                           ; preds = %bb.ew
  %xtraiter175 = and i32 %i.aco, 1
  %lcmp.mod176.not = icmp eq i32 %xtraiter175, 0
  br i1 %lcmp.mod176.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader
  %i.acw = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.act
  %i.acx = load i8, ptr %i.acw, align 1, !tbaa !25
  %i.acy = add i64 %.0836.i, 1                    ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0836.i
  store i8 %i.acx, ptr %i.acz, align 1, !tbaa !25
  %i.ada = add i64 %i.act, 1                      ; 2 uses
  %i.adb = icmp eq i64 %i.ada, %i.an
  %spec.store.select.i.prol = select i1 %i.adb, i64 0, i64 %i.ada
  %i.adc = add nsw i32 %i.aco, -1
  br label %.preheader.i.prol.loopexit

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader
  %.lcssa165.unr = phi i64 [ poison, %.preheader.i.preheader ], [ %i.acy, %.preheader.i.prol ]
  %.1837.i.unr = phi i64 [ %.0836.i, %.preheader.i.preheader ], [ %i.acy, %.preheader.i.prol ]
  %.0784.i.unr = phi i32 [ %i.aco, %.preheader.i.preheader ], [ %i.adc, %.preheader.i.prol ]
  %.0783.i.unr = phi i64 [ %i.act, %.preheader.i.preheader ], [ %spec.store.select.i.prol, %.preheader.i.prol ]
  %i.add = icmp eq i64 %i.acn, 1
  br i1 %i.add, label %.loopexit1142.i, label %.preheader.i

iter.check:                                       ; preds = %bb.ew
  %i.ade = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0836.i ; 6 uses
  %i.adf = sub nsw i64 %i.act, %.0836.i           ; 11 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.ade, i64 %i.acn
  %min.iters.check = icmp samesign ult i64 %i.acn, 4
  %i.adh = sub i64 %i.acs, %i.acp
  %diff.check = icmp ugt i64 %i.adh, -32
  %or.cond162 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond162, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check152 = icmp samesign ult i64 %i.acn, 32
  br i1 %min.iters.check152, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.acn, 28
  %n.vec = and i64 %i.acn, 4294967264             ; 4 uses
  %i.adi = getelementptr i8, ptr %i.ade, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ade, i64 %index ; 3 uses
  %i.adj = getelementptr inbounds i8, ptr %next.gep, i64 %i.adf ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 16
  %wide.load = load <16 x i8>, ptr %i.adj, align 1, !tbaa !25
  %wide.load153 = load <16 x i8>, ptr %i.adk, align 1, !tbaa !25
  %i.adl = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !25
  store <16 x i8> %wide.load153, ptr %i.adl, align 1, !tbaa !25
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.adm = icmp eq i64 %index.next, %n.vec
  br i1 %i.adm, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.acn, %n.vec
  br i1 %cmp.n, label %.loopexit1142.loopexit1156.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec155 = and i64 %i.acn, 4294967292          ; 3 uses
  %i.adn = getelementptr i8, ptr %i.ade, i64 %n.vec155
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index156 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next159, %vec.epilog.vector.body ] ; 2 uses
  %next.gep157 = getelementptr i8, ptr %i.ade, i64 %index156 ; 2 uses
  %i.ado = getelementptr inbounds i8, ptr %next.gep157, i64 %i.adf
  %wide.load158 = load <4 x i8>, ptr %i.ado, align 1, !tbaa !25
  store <4 x i8> %wide.load158, ptr %next.gep157, align 1, !tbaa !25
  %index.next159 = add nuw i64 %index156, 4       ; 2 uses
  %i.adp = icmp eq i64 %index.next159, %n.vec155
  br i1 %i.adp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !57

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n160 = icmp eq i64 %i.acn, %n.vec155
  br i1 %cmp.n160, label %.loopexit1142.loopexit1156.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0782.i.ph = phi ptr [ %i.ade, %iter.check ], [ %i.adi, %vec.epilog.iter.check ], [ %i.adn, %vec.epilog.middle.block ] ; 3 uses
  %i.adq = add i64 %.0836.i, %i.am
  %.0782.i.ph174 = ptrtoint ptr %.0782.i.ph to i64 ; 2 uses
  %i.adr = sub i64 %i.adq, %.0782.i.ph174
  %i.ads = add i64 %i.adr, %i.acn
  %i.adt = add i64 %i.bd, %.0836.i
  %i.adu = sub i64 %i.adt, %.0782.i.ph174
  %i.adv = add i64 %i.adu, %i.acn
  %xtraiter = and i64 %i.ads, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0782.i.prol = phi ptr [ %i.ady, %vec.epilog.scalar.ph.prol ], [ %.0782.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.adw = getelementptr inbounds i8, ptr %.0782.i.prol, i64 %i.adf
  %i.adx = load i8, ptr %i.adw, align 1, !tbaa !25
  store i8 %i.adx, ptr %.0782.i.prol, align 1, !tbaa !25
  %i.ady = getelementptr inbounds nuw i8, ptr %.0782.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !58

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.0782.i.unr = phi ptr [ %.0782.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ady, %vec.epilog.scalar.ph.prol ]
  %i.adz = icmp ult i64 %i.adv, 7
  br i1 %i.adz, label %.loopexit1142.loopexit1156.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0782.i = phi ptr [ %i.aex, %vec.epilog.scalar.ph ], [ %.0782.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.aea = getelementptr inbounds i8, ptr %.0782.i, i64 %i.adf
  %i.aeb = load i8, ptr %i.aea, align 1, !tbaa !25
  store i8 %i.aeb, ptr %.0782.i, align 1, !tbaa !25
  %i.aec = getelementptr inbounds nuw i8, ptr %.0782.i, i64 1 ; 2 uses
  %i.aed = getelementptr inbounds i8, ptr %i.aec, i64 %i.adf
  %i.aee = load i8, ptr %i.aed, align 1, !tbaa !25
  store i8 %i.aee, ptr %i.aec, align 1, !tbaa !25
  %i.aef = getelementptr inbounds nuw i8, ptr %.0782.i, i64 2 ; 2 uses
  %i.aeg = getelementptr inbounds i8, ptr %i.aef, i64 %i.adf
  %i.aeh = load i8, ptr %i.aeg, align 1, !tbaa !25
  store i8 %i.aeh, ptr %i.aef, align 1, !tbaa !25
  %i.aei = getelementptr inbounds nuw i8, ptr %.0782.i, i64 3 ; 2 uses
  %i.aej = getelementptr inbounds i8, ptr %i.aei, i64 %i.adf
  %i.aek = load i8, ptr %i.aej, align 1, !tbaa !25
  store i8 %i.aek, ptr %i.aei, align 1, !tbaa !25
  %i.ael = getelementptr inbounds nuw i8, ptr %.0782.i, i64 4 ; 2 uses
  %i.aem = getelementptr inbounds i8, ptr %i.ael, i64 %i.adf
  %i.aen = load i8, ptr %i.aem, align 1, !tbaa !25
  store i8 %i.aen, ptr %i.ael, align 1, !tbaa !25
  %i.aeo = getelementptr inbounds nuw i8, ptr %.0782.i, i64 5 ; 2 uses
  %i.aep = getelementptr inbounds i8, ptr %i.aeo, i64 %i.adf
  %i.aeq = load i8, ptr %i.aep, align 1, !tbaa !25
  store i8 %i.aeq, ptr %i.aeo, align 1, !tbaa !25
  %i.aer = getelementptr inbounds nuw i8, ptr %.0782.i, i64 6 ; 2 uses
  %i.aes = getelementptr inbounds i8, ptr %i.aer, i64 %i.adf
  %i.aet = load i8, ptr %i.aes, align 1, !tbaa !25
  store i8 %i.aet, ptr %i.aer, align 1, !tbaa !25
  %i.aeu = getelementptr inbounds nuw i8, ptr %.0782.i, i64 7 ; 2 uses
  %i.aev = getelementptr inbounds i8, ptr %i.aeu, i64 %i.adf
  %i.aew = load i8, ptr %i.aev, align 1, !tbaa !25
  store i8 %i.aew, ptr %i.aeu, align 1, !tbaa !25
  %i.aex = getelementptr inbounds nuw i8, ptr %.0782.i, i64 8 ; 2 uses
  %.not1042.i.7 = icmp eq ptr %i.aex, %i.adg
  br i1 %.not1042.i.7, label %.loopexit1142.loopexit1156.i, label %vec.epilog.scalar.ph, !llvm.loop !60

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %.1837.i = phi i64 [ %i.aff, %.preheader.i ], [ %.1837.i.unr, %.preheader.i.prol.loopexit ] ; 3 uses
  %.0784.i = phi i32 [ %i.afk, %.preheader.i ], [ %.0784.i.unr, %.preheader.i.prol.loopexit ]
  %.0783.i = phi i64 [ %spec.store.select.i.1, %.preheader.i ], [ %.0783.i.unr, %.preheader.i.prol.loopexit ] ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0783.i
  %i.aez = load i8, ptr %i.aey, align 1, !tbaa !25
  %i.afa = getelementptr inbounds nuw i8, ptr %i.al, i64 %.1837.i
  store i8 %i.aez, ptr %i.afa, align 1, !tbaa !25
  %i.afb = add i64 %.0783.i, 1                    ; 2 uses
  %i.afc = icmp eq i64 %i.afb, %i.an
  %spec.store.select.i = select i1 %i.afc, i64 0, i64 %i.afb ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.al, i64 %spec.store.select.i
  %i.afe = load i8, ptr %i.afd, align 1, !tbaa !25
  %i.aff = add i64 %.1837.i, 2                    ; 2 uses
  %i.afg = getelementptr i8, ptr %i.al, i64 %.1837.i
  %i.afh = getelementptr i8, ptr %i.afg, i64 1
  store i8 %i.afe, ptr %i.afh, align 1, !tbaa !25
  %i.afi = add i64 %spec.store.select.i, 1        ; 2 uses
  %i.afj = icmp eq i64 %i.afi, %i.an
  %spec.store.select.i.1 = select i1 %i.afj, i64 0, i64 %i.afi
  %i.afk = add i32 %.0784.i, -2                   ; 2 uses
  %.not1041.i.1 = icmp eq i32 %i.afk, 0
  br i1 %.not1041.i.1, label %.loopexit1142.i, label %.preheader.i, !llvm.loop !61

bb.ex:                                            ; preds = %bb.er
  %i.afl = add i32 %i.nd, 274
  %i.afm = add i32 %.2779.i, -12
  br label %.loopexit1144.i

.loopexit1142.loopexit1156.i:                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.afn = add i64 %i.acn, %.0836.i
  br label %.loopexit1142.i

.loopexit1142.i:                                  ; preds = %.preheader.i.prol.loopexit, %.preheader.i, %.loopexit1142.loopexit1156.i, %bb.ah, %.loopexit.i
  %.7972.ph.i = phi i32 [ %.0965.i, %.loopexit.i ], [ %i.acu, %.loopexit1142.loopexit1156.i ], [ %.0965.i, %bb.ah ], [ %i.acu, %.preheader.i ], [ %i.acu, %.preheader.i.prol.loopexit ] ; 2 uses
  %.39963.ph.i = phi ptr [ %.6930.i, %.loopexit.i ], [ %.38962.i, %.loopexit1142.loopexit1156.i ], [ %.9933.i, %bb.ah ], [ %.38962.i, %.preheader.i ], [ %.38962.i, %.preheader.i.prol.loopexit ] ; 3 uses
  %.54922.ph.i = phi i32 [ %.8876.i, %.loopexit.i ], [ %.53921.i, %.loopexit1142.loopexit1156.i ], [ %i.ho, %bb.ah ], [ %.53921.i, %.preheader.i ], [ %.53921.i, %.preheader.i.prol.loopexit ] ; 2 uses
  %.54.ph.i = phi i32 [ %.8860.i, %.loopexit.i ], [ %.53.i, %.loopexit1142.loopexit1156.i ], [ %.11863.i, %bb.ah ], [ %.53.i, %.preheader.i ], [ %.53.i, %.preheader.i.prol.loopexit ] ; 2 uses
  %.pn.i = phi i32 [ 1, %.loopexit.i ], [ %i.aco, %.loopexit1142.loopexit1156.i ], [ 1, %bb.ah ], [ %i.aco, %.preheader.i ], [ %i.aco, %.preheader.i.prol.loopexit ]
  %.3839.ph.i = phi i64 [ %i.fh, %.loopexit.i ], [ %i.afn, %.loopexit1142.loopexit1156.i ], [ %i.ic, %bb.ah ], [ %.lcssa165.unr, %.preheader.i.prol.loopexit ], [ %i.aff, %.preheader.i ] ; 3 uses
  %.7835.ph.i = phi i32 [ %.0828.i, %.loopexit.i ], [ %.6834.i, %.loopexit1142.loopexit1156.i ], [ %.0828.i, %bb.ah ], [ %.6834.i, %.preheader.i ], [ %.6834.i, %.preheader.i.prol.loopexit ] ; 2 uses
  %.6811.ph.i = phi i32 [ %.0805.i, %.loopexit.i ], [ %.5810.i, %.loopexit1142.loopexit1156.i ], [ %.0805.i, %bb.ah ], [ %.5810.i, %.preheader.i ], [ %.5810.i, %.preheader.i.prol.loopexit ] ; 2 uses
  %.5799.ph.i = phi i32 [ %.0794.i, %.loopexit.i ], [ %.4798.i, %.loopexit1142.loopexit1156.i ], [ %.0794.i, %bb.ah ], [ %.4798.i, %.preheader.i ], [ %.4798.i, %.preheader.i.prol.loopexit ] ; 2 uses
  %.5790.ph.i = phi i32 [ %.0785.i, %.loopexit.i ], [ %.4789.i, %.loopexit1142.loopexit1156.i ], [ %.0785.i, %bb.ah ], [ %.4789.i, %.preheader.i ], [ %.4789.i, %.preheader.i.prol.loopexit ] ; 2 uses
  %.7.ph.i = phi i32 [ %.1778.i, %.loopexit.i ], [ %.6.i, %.loopexit1142.loopexit1156.i ], [ %i.ie, %bb.ah ], [ %.6.i, %.preheader.i ], [ %.6.i, %.preheader.i.prol.loopexit ] ; 2 uses
  %.1849.ph.i = add i32 %.pn.i, %.0848.i          ; 2 uses
  %i.afo = icmp ult i64 %.3839.ph.i, %.132
  %i.afp = icmp ult ptr %.39963.ph.i, %2
  %i.afq = select i1 %i.afo, i1 %i.afp, i1 false
  br i1 %i.afq, label %bb.e, label %.loopexit1144.i, !llvm.loop !62

.loopexit1144.i:                                  ; preds = %.loopexit1142.i, %bb.ex
  %.71104.i = phi i32 [ %i.afm, %bb.ex ], [ %.7.ph.i, %.loopexit1142.i ]
  %i.afr = phi i32 [ %.2787.i, %bb.ex ], [ %.5790.ph.i, %.loopexit1142.i ] ; 2 uses
  %.57991100.i = phi i32 [ %.2796.i, %bb.ex ], [ %.5799.ph.i, %.loopexit1142.i ]
  %.68111098.i = phi i32 [ %.3808.i, %bb.ex ], [ %.6811.ph.i, %.loopexit1142.i ]
  %.78351096.i = phi i32 [ %.4832.i, %bb.ex ], [ %.7835.ph.i, %.loopexit1142.i ]
  %i.afs = phi i64 [ %.0836.i, %bb.ex ], [ %.3839.ph.i, %.loopexit1142.i ] ; 9 uses
  %.18491092.i = phi i32 [ %.0848.i, %bb.ex ], [ %.1849.ph.i, %.loopexit1142.i ] ; 4 uses
  %.541090.i = phi i32 [ %i.acb, %bb.ex ], [ %.54.ph.i, %.loopexit1142.i ] ; 2 uses
  %.549221088.i = phi i32 [ %i.aca, %bb.ex ], [ %.54922.ph.i, %.loopexit1142.i ] ; 3 uses
  %.399631086.i = phi ptr [ %.33957.i, %bb.ex ], [ %.39963.ph.i, %.loopexit1142.i ] ; 3 uses
  %i.aft = phi i32 [ %i.afl, %bb.ex ], [ %.7972.ph.i, %.loopexit1142.i ] ; 4 uses
  %i.afu = icmp ult i32 %.549221088.i, 16777216
  br i1 %i.afu, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %.loopexit1144.i
  %i.afv = shl nuw i32 %.549221088.i, 8
  %i.afw = shl i32 %.541090.i, 8
  %i.afx = getelementptr inbounds nuw i8, ptr %.399631086.i, i64 1
  %i.afy = load i8, ptr %.399631086.i, align 1, !tbaa !25
  %i.afz = zext i8 %i.afy to i32
  %i.aga = or disjoint i32 %i.afw, %i.afz
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %.loopexit1144.i
  %.40964.i = phi ptr [ %i.afx, %bb.ey ], [ %.399631086.i, %.loopexit1144.i ]
  %.55923.i = phi i32 [ %i.afv, %bb.ey ], [ %.549221088.i, %.loopexit1144.i ]
  %.55.i = phi i32 [ %i.aga, %bb.ey ], [ %.541090.i, %.loopexit1144.i ]
  store ptr %.40964.i, ptr %i.n, align 8, !tbaa !40
  store i32 %.55923.i, ptr %i.o, align 8, !tbaa !30
  store i32 %.55.i, ptr %i.p, align 4, !tbaa !29
  store i32 %i.aft, ptr %i.r, align 4, !tbaa !15
  store i64 %i.afs, ptr %i.l, align 8, !tbaa !20
  store i32 %.18491092.i, ptr %i.m, align 8, !tbaa !17
  store i32 %i.afr, ptr %i.d, align 4, !tbaa !4
  store i32 %.57991100.i, ptr %i.e, align 8, !tbaa !4
  store i32 %.68111098.i, ptr %i.f, align 4, !tbaa !4
  store i32 %.78351096.i, ptr %i.g, align 8, !tbaa !4
  store i32 %.71104.i, ptr %i.c, align 8, !tbaa !43
  %i.agb = load i32, ptr %i.q, align 4, !tbaa !24 ; 4 uses
  %.not36 = icmp ult i32 %.18491092.i, %i.agb
  br i1 %.not36, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  store i32 %i.agb, ptr %i.a, align 4, !tbaa !18
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %i.agc = add i32 %i.aft, -1
  %or.cond.i = icmp ult i32 %i.agc, 273
  br i1 %or.cond.i, label %bb.fc, label %bb.fe

bb.fc:                                            ; preds = %bb.fb
  %i.agd = load ptr, ptr %i.j, align 8, !tbaa !22 ; 6 uses
  %i.age = load i64, ptr %i.k, align 8, !tbaa !23 ; 3 uses
  %i.agf = sub i64 %1, %i.afs
  %i.agg = zext nneg i32 %i.aft to i64
  %spec.select38.i = tail call i64 @llvm.umin.i64(i64 %i.agf, i64 %i.agg) ; 3 uses
  %spec.select.i = trunc nuw nsw i64 %spec.select38.i to i32 ; 6 uses
  %i.agh = load i32, ptr %i.a, align 4, !tbaa !18
  %i.agi = icmp ne i32 %i.agh, 0
  %i.agj = sub i32 %i.agb, %.18491092.i
  %.not36.i = icmp ugt i32 %i.agj, %spec.select.i
  %or.cond = select i1 %i.agi, i1 true, i1 %.not36.i
  br i1 %or.cond, label %._crit_edge42.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  store i32 %i.agb, ptr %i.a, align 4, !tbaa !18
  br label %._crit_edge42.i

._crit_edge42.i:                                  ; preds = %bb.fc, %bb.fd
  %i.agk = add i32 %.18491092.i, %spec.select.i
  store i32 %i.agk, ptr %i.m, align 8, !tbaa !17
  %i.agl = sub nsw i32 %i.aft, %spec.select.i
  store i32 %i.agl, ptr %i.r, align 4, !tbaa !15
  %.not3739.i = icmp eq i64 %spec.select38.i, 0
  br i1 %.not3739.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge42.i
  %i.agm = zext i32 %i.afr to i64                 ; 6 uses
  %xtraiter178 = and i32 %spec.select.i, 1
  %lcmp.mod179.not = icmp eq i32 %xtraiter178, 0
  br i1 %lcmp.mod179.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.agn = add nsw i32 %spec.select.i, -1
  %i.ago = sub i64 %i.afs, %i.agm
  %i.agp = icmp ult i64 %i.afs, %i.agm
  %i.agq = select i1 %i.agp, i64 %i.age, i64 0
  %i.agr = getelementptr i8, ptr %i.agd, i64 %i.ago
  %i.ags = getelementptr i8, ptr %i.agr, i64 %i.agq
  %i.agt = load i8, ptr %i.ags, align 1, !tbaa !25
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agd, i64 %i.afs
  store i8 %i.agt, ptr %i.agu, align 1, !tbaa !25
  %i.agv = add i64 %i.afs, 1                      ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %.lcssa173.unr = phi i64 [ poison, %.lr.ph.i ], [ %i.agv, %.prol.loopexit.unr-lcssa ]
  %.041.i.unr = phi i64 [ %i.afs, %.lr.ph.i ], [ %i.agv, %.prol.loopexit.unr-lcssa ]
  %.140.i.unr = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %i.agn, %.prol.loopexit.unr-lcssa ]
  %i.agw = icmp eq i64 %spec.select38.i, 1
  br i1 %i.agw, label %._crit_edge.i, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %.041.i = phi i64 [ %i.ahn, %.lr.ph.i.new ], [ %.041.i.unr, %.prol.loopexit ] ; 5 uses
  %.140.i = phi i32 [ %i.ahf, %.lr.ph.i.new ], [ %.140.i.unr, %.prol.loopexit ]
  %i.agx = sub i64 %.041.i, %i.agm
  %i.agy = icmp ult i64 %.041.i, %i.agm
  %i.agz = select i1 %i.agy, i64 %i.age, i64 0
  %i.aha = getelementptr i8, ptr %i.agd, i64 %i.agx
  %i.ahb = getelementptr i8, ptr %i.aha, i64 %i.agz
  %i.ahc = load i8, ptr %i.ahb, align 1, !tbaa !25
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agd, i64 %.041.i
  store i8 %i.ahc, ptr %i.ahd, align 1, !tbaa !25
  %i.ahe = add i64 %.041.i, 1                     ; 3 uses
  %i.ahf = add i32 %.140.i, -2                    ; 2 uses
  %i.ahg = sub i64 %i.ahe, %i.agm
  %i.ahh = icmp ult i64 %i.ahe, %i.agm
  %i.ahi = select i1 %i.ahh, i64 %i.age, i64 0
  %i.ahj = getelementptr i8, ptr %i.agd, i64 %i.ahg
  %i.ahk = getelementptr i8, ptr %i.ahj, i64 %i.ahi
  %i.ahl = load i8, ptr %i.ahk, align 1, !tbaa !25
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.agd, i64 %i.ahe
  store i8 %i.ahl, ptr %i.ahm, align 1, !tbaa !25
  %i.ahn = add i64 %.041.i, 2                     ; 2 uses
  %.not37.i.1 = icmp eq i32 %i.ahf, 0
  br i1 %.not37.i.1, label %._crit_edge.i, label %.lr.ph.i.new, !llvm.loop !26

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i.new, %._crit_edge42.i
  %.0.lcssa.i = phi i64 [ %i.afs, %._crit_edge42.i ], [ %.lcssa173.unr, %.prol.loopexit ], [ %i.ahn, %.lr.ph.i.new ] ; 2 uses
  store i64 %.0.lcssa.i, ptr %i.l, align 8, !tbaa !20
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fb, %._crit_edge.i
  %i.aho = phi i64 [ %i.afs, %bb.fb ], [ %.0.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.ahp = icmp ult i64 %i.aho, %1
  br i1 %i.ahp, label %bb.ff, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.fe
  %.pre68 = load i32, ptr %i.r, align 4, !tbaa !15
  br label %.critedge

bb.ff:                                            ; preds = %bb.fe
  %i.ahq = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.ahr = icmp ult ptr %i.ahq, %2
  %.pre69 = load i32, ptr %i.r, align 4, !tbaa !15 ; 2 uses
  %i.ahs = icmp ult i32 %.pre69, 274
  %or.cond140 = select i1 %i.ahr, i1 %i.ahs, i1 false
  br i1 %or.cond140, label %bb.b, label %.critedge, !llvm.loop !63

.critedge:                                        ; preds = %bb.ff, %..critedge_crit_edge
  %i.aht = phi i32 [ %.pre68, %..critedge_crit_edge ], [ %.pre69, %bb.ff ]
  %i.ahu = icmp ugt i32 %i.aht, 274
  br i1 %i.ahu, label %bb.fg, label %LzmaDec_WriteRem.exit

bb.fg:                                            ; preds = %.critedge
  store i32 274, ptr %i.r, align 4, !tbaa !15
  br label %LzmaDec_WriteRem.exit

LzmaDec_WriteRem.exit:                            ; preds = %bb.es, %bb.et, %bb.ev, %bb.aa, %.critedge, %bb.fg
  %.2 = phi i32 [ 0, %.critedge ], [ 0, %bb.fg ], [ 1, %bb.aa ], [ 1, %bb.ev ], [ 1, %bb.et ], [ 1, %bb.es ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @LzmaDec_DecodeToBuf(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, i32 noundef %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load i64, ptr %2, align 8, !tbaa !21
  %i.c = load i64, ptr %4, align 8, !tbaa !21
  store i64 0, ptr %2, align 8, !tbaa !21
  store i64 0, ptr %4, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.048 = phi ptr [ %3, %bb.a ], [ %i.aa, %bb.e ] ; 2 uses
  %.047 = phi i64 [ %i.b, %bb.a ], [ %i.x, %bb.e ] ; 3 uses
  %.046 = phi i64 [ %i.c, %bb.a ], [ %i.z, %bb.e ] ; 2 uses
  %.044 = phi ptr [ %1, %bb.a ], [ %i.y, %bb.e ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 %.046, ptr %i.a, align 8, !tbaa !21
  %i.g = load i64, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %i.h = load i64, ptr %i.e, align 8, !tbaa !23   ; 3 uses
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.d, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi i64 [ 0, %bb.c ], [ %i.g, %bb.b ]    ; 5 uses
  %i.k = sub i64 %i.h, %i.j
  %i.l = icmp ugt i64 %.047, %i.k                 ; 2 uses
  %i.m = add i64 %i.j, %.047
  %.045 = select i1 %i.l, i64 %i.h, i64 %i.m
  %.043 = select i1 %i.l, i32 0, i32 %5
  %i.n = call i32 @LzmaDec_DecodeToDic(ptr noundef nonnull %0, i64 noundef %.045, ptr noundef %.048, ptr noundef nonnull %i.a, i32 noundef %.043, ptr noundef %6)
  %i.o = load i64, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.p = load i64, ptr %4, align 8, !tbaa !21
  %i.q = add i64 %i.p, %i.o
  store i64 %i.q, ptr %4, align 8, !tbaa !21
  %i.r = load i64, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %i.s = sub i64 %i.r, %i.j                       ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.044, ptr align 1 %i.u, i64 %i.s, i1 false)
  %i.v = load i64, ptr %2, align 8, !tbaa !21
  %i.w = add i64 %i.v, %i.s
  store i64 %i.w, ptr %2, align 8, !tbaa !21
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.x = sub i64 %.047, %i.s                      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.044, i64 %i.s
  %i.z = sub i64 %.046, %i.o
  %i.aa = getelementptr inbounds nuw i8, ptr %.048, i64 %i.o
  %i.ab = icmp ne i64 %i.r, %i.j
  %i.ac = icmp ne i64 %i.x, 0
  %or.cond.not = select i1 %i.ab, i1 %i.ac, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br i1 %or.cond.not, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.thread
  %.152 = phi i32 [ 1, %.thread ], [ 0, %bb.e ]
  ret i32 %.152
}

; Function Attrs: nounwind uwtable
define dso_local void @LzmaDec_FreeProbs(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  tail call void %i.b(ptr noundef %1, ptr noundef %i.d) #7
  store ptr null, ptr %i.c, align 8, !tbaa !33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @LzmaDec_Free(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  tail call void %i.b(ptr noundef %1, ptr noundef %i.d) #7, !inline_history !66
  store ptr null, ptr %i.c, align 8, !tbaa !33
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  tail call void %i.e(ptr noundef %1, ptr noundef %i.g) #7, !inline_history !67
  store ptr null, ptr %i.f, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 5) i32 @LzmaProps_Decode(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i32 %2, 5
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i32, ptr %i.b, align 1
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.c, i32 4096)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %spec.store.select, ptr %i.d, align 4, !tbaa !68
  %i.e = load i8, ptr %1, align 1, !tbaa !25      ; 4 uses
  %i.f = icmp ugt i8 %i.e, -32
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = urem i8 %i.e, 9
  %i.h = zext nneg i8 %i.g to i32
  store i32 %i.h, ptr %0, align 4, !tbaa !69
  %i.i = udiv i8 %i.e, 9
  %i.j = udiv i8 %i.e, 45
  %.zext = zext nneg i8 %i.j to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.zext, ptr %i.k, align 4, !tbaa !70
  %i.l = urem i8 %i.i, 5
  %.zext19 = zext nneg i8 %i.l to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.zext19, ptr %i.m, align 4, !tbaa !71
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 4, %bb.a ], [ 4, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 5) i32 @LzmaDec_AllocateProbs(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i32 %2, 5
  br i1 %i.a, label %LzmaProps_Decode.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i32, ptr %i.b, align 1
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 %i.c, i32 4096)
  %i.d = load i8, ptr %1, align 1, !tbaa !25      ; 4 uses
  %i.e = icmp ugt i8 %i.d, -32
  br i1 %i.e, label %LzmaProps_Decode.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = urem i8 %i.d, 9
  %i.g = zext nneg i8 %i.f to i32                 ; 2 uses
  %i.h = udiv i8 %i.d, 9
  %i.i = udiv i8 %i.d, 45
  %.zext.i = zext nneg i8 %i.i to i32
  %i.j = urem i8 %i.h, 5
  %.zext19.i = zext nneg i8 %i.j to i32           ; 2 uses
  %i.k = add nuw nsw i32 %.zext19.i, %i.g
  %i.l = shl nuw nsw i32 768, %i.k
  %i.m = add nuw nsw i32 %i.l, 1846               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = load i32, ptr %i.q, align 8, !tbaa !72
  %.not.i = icmp eq i32 %i.m, %i.r
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64
  tail call void %i.t(ptr noundef %3, ptr noundef %i.o) #7, !inline_history !73
  store ptr null, ptr %i.n, align 8, !tbaa !33
  %i.u = load ptr, ptr %3, align 8, !tbaa !74
  %i.v = shl nuw nsw i32 %i.m, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = tail call ptr %i.u(ptr noundef nonnull %3, i64 noundef %i.w) #7, !inline_history !75 ; 2 uses
  store ptr %i.x, ptr %i.n, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.m, ptr %i.y, align 8, !tbaa !72
  %i.z = icmp eq ptr %i.x, null
  br i1 %i.z, label %LzmaProps_Decode.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  store i32 %i.g, ptr %0, align 8, !tbaa !4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.zext19.i, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.zext.i, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %spec.store.select.i, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !4
  br label %LzmaProps_Decode.exit.thread

LzmaProps_Decode.exit.thread:                     ; preds = %bb.e, %bb.b, %bb.a, %bb.f
  %.2 = phi i32 [ 0, %bb.f ], [ 4, %bb.b ], [ 4, %bb.a ], [ 2, %bb.e ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 5) i32 @LzmaDec_Allocate(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i32 %2, 5
  br i1 %i.a, label %LzmaProps_Decode.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i32, ptr %i.b, align 1
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 %i.c, i32 4096) ; 2 uses
  %i.d = load i8, ptr %1, align 1, !tbaa !25      ; 4 uses
  %i.e = icmp ugt i8 %i.d, -32
  br i1 %i.e, label %LzmaProps_Decode.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = urem i8 %i.d, 9
  %i.g = zext nneg i8 %i.f to i32                 ; 2 uses
  %i.h = udiv i8 %i.d, 9
  %i.i = udiv i8 %i.d, 45
  %.zext.i = zext nneg i8 %i.i to i32
  %i.j = urem i8 %i.h, 5
  %.zext19.i = zext nneg i8 %i.j to i32           ; 2 uses
  %i.k = add nuw nsw i32 %.zext19.i, %i.g
  %i.l = shl nuw nsw i32 768, %i.k
  %i.m = add nuw nsw i32 %i.l, 1846               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = load i32, ptr %i.q, align 8, !tbaa !72
  %.not.i = icmp eq i32 %i.m, %i.r
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64
  tail call void %i.t(ptr noundef %3, ptr noundef %i.o) #7, !inline_history !73
  store ptr null, ptr %i.n, align 8, !tbaa !33
  %i.u = load ptr, ptr %3, align 8, !tbaa !74
  %i.v = shl nuw nsw i32 %i.m, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = tail call ptr %i.u(ptr noundef nonnull %3, i64 noundef %i.w) #7, !inline_history !75 ; 2 uses
  store ptr %i.x, ptr %i.n, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.m, ptr %i.y, align 8, !tbaa !72
  %i.z = icmp eq ptr %i.x, null
  br i1 %i.z, label %LzmaProps_Decode.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.aa = zext i32 %spec.store.select.i to i64    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !23
  %.not29 = icmp eq i64 %i.af, %i.aa
  br i1 %.not29, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64
  tail call void %i.ah(ptr noundef %3, ptr noundef %i.ac) #7, !inline_history !67
  store ptr null, ptr %i.ab, align 8, !tbaa !22
  %i.ai = load ptr, ptr %3, align 8, !tbaa !74
  %i.aj = tail call ptr %i.ai(ptr noundef nonnull %3, i64 noundef %i.aa) #7 ; 2 uses
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !22
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !64
  %i.am = load ptr, ptr %i.n, align 8, !tbaa !33
  tail call void %i.al(ptr noundef nonnull %3, ptr noundef %i.am) #7, !inline_history !66
  store ptr null, ptr %i.n, align 8, !tbaa !33
  br label %LzmaProps_Decode.exit.thread

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.aa, ptr %i.an, align 8, !tbaa !23
  store i32 %i.g, ptr %0, align 8, !tbaa !4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.zext19.i, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.zext.i, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %spec.store.select.i, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !4
  br label %LzmaProps_Decode.exit.thread

LzmaProps_Decode.exit.thread:                     ; preds = %bb.e, %bb.b, %bb.a, %bb.j, %bb.i
  %.2 = phi i32 [ 2, %bb.i ], [ 0, %bb.j ], [ 4, %bb.b ], [ 4, %bb.a ], [ 2, %bb.e ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 7) i32 @LzmaDecode(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef captures(none) %7, ptr noundef %8) local_unnamed_addr #4 {
bb.a:
  %9 = alloca %struct.CLzmaDec, align 8           ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  %i.a = load i64, ptr %3, align 8, !tbaa !21     ; 2 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !21     ; 2 uses
  store i64 0, ptr %1, align 8, !tbaa !21
  store i64 0, ptr %3, align 8, !tbaa !21
  %i.c = icmp ult i64 %i.a, 5
  br i1 %i.c, label %LzmaDec_AllocateProbs.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.f = icmp ult i32 %5, 5
  br i1 %i.f, label %LzmaDec_AllocateProbs.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.h = load i32, ptr %i.g, align 1
  %spec.store.select.i.i = tail call i32 @llvm.umax.i32(i32 %i.h, i32 4096)
  %i.i = load i8, ptr %4, align 1, !tbaa !25      ; 4 uses
  %i.j = icmp ugt i8 %i.i, -32
  br i1 %i.j, label %LzmaDec_AllocateProbs.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = urem i8 %i.i, 9
  %i.l = zext nneg i8 %i.k to i32                 ; 2 uses
  %i.m = udiv i8 %i.i, 9
  %i.n = urem i8 %i.m, 5
  %.zext19.i.i = zext nneg i8 %i.n to i32         ; 2 uses
  %i.o = add nuw nsw i32 %.zext19.i.i, %i.l
  %i.p = shl nuw nsw i32 768, %i.o
  %i.q = add nuw nsw i32 %i.p, 1846               ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64
  tail call void %i.s(ptr noundef %8, ptr noundef null) #7, !inline_history !76
  %i.t = load ptr, ptr %8, align 8, !tbaa !74
  %i.u = shl nuw nsw i32 %i.q, 1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = tail call ptr %i.t(ptr noundef nonnull %8, i64 noundef %i.v) #7, !inline_history !77 ; 2 uses
  store ptr %i.w, ptr %i.e, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 104
  store i32 %i.q, ptr %i.x, align 8, !tbaa !72
  %i.y = icmp eq ptr %i.w, null
  br i1 %i.y, label %LzmaDec_AllocateProbs.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = udiv i8 %i.i, 45
  %.zext.i.i = zext nneg i8 %i.z to i32
  store i32 %i.l, ptr %9, align 8, !tbaa !4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %.zext19.i.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.zext.i.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %spec.store.select.i.i, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !4
  store ptr %0, ptr %i.d, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i64 %i.b, ptr %i.aa, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  store i64 0, ptr %i.ab, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 96
  store i32 1, ptr %i.ac, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 92
  store i32 0, ptr %i.ad, align 4, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 108
  store i32 0, ptr %i.ae, align 4, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 64
  store i32 0, ptr %i.af, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 68
  store i32 0, ptr %i.ag, align 4, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 100
  store i32 1, ptr %i.ah, align 4, !tbaa !19
  store i64 %i.a, ptr %3, align 8, !tbaa !21
  %i.ai = call i32 @LzmaDec_DecodeToDic(ptr noundef nonnull %9, i64 noundef %i.b, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %6, ptr noundef %7)
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = load i32, ptr %7, align 4, !tbaa !4
  %i.al = icmp eq i32 %i.ak, 3
  %spec.select = select i1 %i.al, i32 6, i32 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.024 = phi i32 [ 1, %bb.e ], [ %spec.select, %bb.f ]
  %i.am = load i64, ptr %i.ab, align 8, !tbaa !20
  store i64 %i.am, ptr %1, align 8, !tbaa !21
  %i.an = load ptr, ptr %i.r, align 8, !tbaa !64
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !33
  call void %i.an(ptr noundef nonnull %8, ptr noundef %i.ao) #7, !inline_history !66
  br label %LzmaDec_AllocateProbs.exit.thread

LzmaDec_AllocateProbs.exit.thread:                ; preds = %bb.d, %bb.b, %bb.c, %bb.a, %bb.g
  %.0 = phi i32 [ %.024, %bb.g ], [ 6, %bb.a ], [ 2, %bb.d ], [ 4, %bb.b ], [ 4, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 96}
!9 = !{!"", !10, i64 0, !11, i64 16, !13, i64 24, !13, i64 32, !5, i64 40, !5, i64 44, !14, i64 48, !14, i64 56, !5, i64 64, !5, i64 68, !5, i64 72, !6, i64 76, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !6, i64 112}
!10 = !{!"_CLzmaProps", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!11 = !{!"p1 short", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!9, !5, i64 92}
!16 = !{!9, !5, i64 108}
!17 = !{!9, !5, i64 64}
!18 = !{!9, !5, i64 68}
!19 = !{!9, !5, i64 100}
!20 = !{!9, !14, i64 48}
!21 = !{!14, !14, i64 0}
!22 = !{!9, !13, i64 24}
!23 = !{!9, !14, i64 56}
!24 = !{!9, !5, i64 12}
!25 = !{!6, !6, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = distinct !{!28, !27}
!29 = !{!9, !5, i64 44}
!30 = !{!9, !5, i64 40}
!31 = !{!9, !5, i64 0}
!32 = !{!9, !5, i64 4}
!33 = !{!9, !11, i64 16}
!34 = !{!35, !35, i64 0}
!35 = !{!"short", !6, i64 0}
!36 = distinct !{!36, !27, !37, !38}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = distinct !{!39, !27, !37, !38}
!40 = !{!9, !13, i64 32}
!41 = distinct !{!41, !27, !37}
!42 = distinct !{!42, !27}
!43 = !{!9, !5, i64 72}
!44 = !{!9, !5, i64 8}
!45 = distinct !{!45, !27}
!46 = distinct !{!46, !27}
!47 = distinct !{!47, !27}
!48 = distinct !{!48, !27}
!49 = distinct !{!49, !27}
!50 = distinct !{!50, !27}
!51 = distinct !{!51, !27}
!52 = distinct !{!52, !27}
!53 = distinct !{!53, !27}
!54 = distinct !{!54, !27}
!55 = distinct !{!55, !27, !37, !38}
!56 = !{!"branch_weights", i32 4, i32 28}
!57 = distinct !{!57, !27, !37, !38}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = distinct !{!60, !27, !37}
!61 = distinct !{!61, !27}
!62 = distinct !{!62, !27}
!63 = distinct !{!63, !27}
!64 = !{!65, !12, i64 8}
!65 = !{!"", !12, i64 0, !12, i64 8}
!66 = !{ptr @LzmaDec_FreeProbs}
!67 = distinct !{null}
!68 = !{!10, !5, i64 12}
!69 = !{!10, !5, i64 0}
!70 = !{!10, !5, i64 8}
!71 = !{!10, !5, i64 4}
!72 = !{!9, !5, i64 104}
!73 = distinct !{null, ptr @LzmaDec_FreeProbs}
!74 = !{!65, !12, i64 0}
!75 = distinct !{null}
!76 = distinct !{ptr @LzmaDec_AllocateProbs, null, ptr @LzmaDec_FreeProbs}
!77 = distinct !{ptr @LzmaDec_AllocateProbs, null}
end_hunk_2
