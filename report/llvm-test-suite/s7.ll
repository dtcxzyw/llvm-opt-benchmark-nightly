begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@str.1 = private unnamed_addr constant [46 x i8] c"Error -- S7_Datatype not supported in S7_Sort\00", align 1
@str.2 = private unnamed_addr constant [52 x i8] c"Error -- S7_Datatype not supported in S7_Index_Sort\00", align 1
@str.3 = private unnamed_addr constant [54 x i8] c"Error -- S7_Datatype not supported in S7_Indexi8_Sort\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @S7_Sort(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = sdiv i32 %1, 2                           ; 5 uses
  switch i32 %2, label %bb.aq [
    i32 11, label %.preheader303
    i32 4, label %.preheader303
    i32 5, label %.preheader
    i32 6, label %.preheader305
    i32 12, label %.preheader305
    i32 7, label %.preheader307
    i32 13, label %.preheader307
    i32 8, label %.preheader309
    i32 14, label %.preheader309
  ]

.preheader309:                                    ; preds = %bb.a, %bb.a
  br label %bb.ah

.preheader307:                                    ; preds = %bb.a, %bb.a
  br label %bb.y

.preheader305:                                    ; preds = %bb.a, %bb.a
  br label %bb.q

.preheader303:                                    ; preds = %bb.a, %bb.a
  br label %bb.b

bb.b:                                             ; preds = %.preheader303, %._crit_edge270
  %.0187 = phi i32 [ %.1188, %._crit_edge270 ], [ %i.a, %.preheader303 ] ; 3 uses
  %.0 = phi i32 [ %.1, %._crit_edge270 ], [ %1, %.preheader303 ] ; 2 uses
  %i.b = icmp sgt i32 %.0187, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i32 %.0187, -1                   ; 2 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = add nsw i32 %.0, -1                      ; 3 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = sext i32 %i.g to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %0, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %i.l = load i32, ptr %0, align 4, !tbaa !4
  store i32 %i.l, ptr %i.j, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0197 = phi i32 [ %i.f, %bb.c ], [ %i.k, %bb.e ] ; 2 uses
  %.1188 = phi i32 [ %i.c, %bb.c ], [ %.0187, %bb.e ] ; 4 uses
  %.1 = phi i32 [ %.0, %bb.c ], [ %i.g, %bb.e ]   ; 4 uses
  %.0172.in263 = shl nsw i32 %.1188, 1            ; 2 uses
  %.0172264 = or disjoint i32 %.0172.in263, 1     ; 2 uses
  %i.m = icmp slt i32 %.0172264, %.1
  br i1 %i.m, label %.lr.ph269, label %._crit_edge270

.lr.ph269:                                        ; preds = %bb.f, %bb.i
  %.0172267 = phi i32 [ %.0172, %bb.i ], [ %.0172264, %bb.f ] ; 3 uses
  %.0172.in266 = phi i32 [ %.0172.in, %bb.i ], [ %.0172.in263, %bb.f ]
  %.0182265 = phi i32 [ %.1173.a, %bb.i ], [ %.1188, %bb.f ] ; 2 uses
  %i.n = add nsw i32 %.0172.in266, 2              ; 3 uses
  %i.o = icmp slt i32 %i.n, %.1
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph269
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = sext i32 %.0172267 to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4
  %i.v = icmp sgt i32 %i.r, %i.u
  %spec.select = select i1 %i.v, i32 %i.n, i32 %.0172267
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph269
  %.1173.a = phi i32 [ %.0172267, %.lr.ph269 ], [ %spec.select, %bb.g ] ; 4 uses
  %3 = sext i32 %.1173.a to i64
  %4 = getelementptr inbounds [4 x i8], ptr %0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !4        ; 2 uses
  %i.w = icmp sgt i32 %5, %.0197
  br i1 %i.w, label %bb.i, label %._crit_edge270

bb.i:                                             ; preds = %bb.h
  %i.x = sext i32 %.0182265 to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  store i32 %5, ptr %i.y, align 4, !tbaa !4
  %.0172.in = shl nsw i32 %.1173.a, 1             ; 2 uses
  %.0172 = or disjoint i32 %.0172.in, 1           ; 2 uses
  %i.z = icmp slt i32 %.0172, %.1
  br i1 %i.z, label %.lr.ph269, label %._crit_edge270, !llvm.loop !8

._crit_edge270:                                   ; preds = %bb.i, %bb.h, %bb.f
  %.0182.lcssa = phi i32 [ %.1188, %bb.f ], [ %.0182265, %bb.h ], [ %.1173.a, %bb.i ]
  %i.aa = sext i32 %.0182.lcssa to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aa
  store i32 %.0197, ptr %i.ab, align 4, !tbaa !4
  br label %bb.b

.preheader:                                       ; preds = %bb.a, %._crit_edge259
  %.2189 = phi i32 [ %.3190, %._crit_edge259 ], [ %i.a, %bb.a ] ; 3 uses
  %.2 = phi i32 [ %.3, %._crit_edge259 ], [ %1, %bb.a ] ; 2 uses
  %i.ac = icmp sgt i32 %.2189, 0
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.preheader
  %i.ad = add nsw i32 %.2189, -1                  ; 2 uses
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !10
  br label %bb.m

bb.k:                                             ; preds = %.preheader
  %i.ah = add nsw i32 %.2, -1                     ; 3 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = sext i32 %i.ah to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aj ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !10
  %i.am = load i64, ptr %0, align 8, !tbaa !10
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.0201 = phi i64 [ %i.ag, %bb.j ], [ %i.al, %bb.l ] ; 2 uses
  %.3190 = phi i32 [ %i.ad, %bb.j ], [ %.2189, %bb.l ] ; 4 uses
  %.3 = phi i32 [ %.2, %bb.j ], [ %i.ah, %bb.l ]  ; 4 uses
  %.2174.in252 = shl nsw i32 %.3190, 1            ; 2 uses
  %.2174253 = or disjoint i32 %.2174.in252, 1     ; 2 uses
  %i.an = icmp slt i32 %.2174253, %.3
  br i1 %i.an, label %.lr.ph258, label %._crit_edge259

.lr.ph258:                                        ; preds = %bb.m, %bb.p
  %.2174256 = phi i32 [ %.2174, %bb.p ], [ %.2174253, %bb.m ] ; 3 uses
  %.2174.in255 = phi i32 [ %.2174.in, %bb.p ], [ %.2174.in252, %bb.m ]
  %.1183254 = phi i32 [ %.3175, %bb.p ], [ %.3190, %bb.m ] ; 2 uses
  %i.ao = add nsw i32 %.2174.in255, 2             ; 3 uses
  %i.ap = icmp slt i32 %i.ao, %.3
  br i1 %i.ap, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph258
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !10
  %i.at = sext i32 %.2174256 to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !10
  %i.aw = icmp sgt i64 %i.as, %i.av
  %spec.select217 = select i1 %i.aw, i32 %i.ao, i32 %.2174256
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph258
  %.3175 = phi i32 [ %.2174256, %.lr.ph258 ], [ %spec.select217, %bb.n ] ; 4 uses
  %6 = sext i32 %.3175 to i64
  %7 = getelementptr inbounds [8 x i8], ptr %0, i64 %6
  %8 = load i64, ptr %7, align 8, !tbaa !10       ; 2 uses
  %i.ax = icmp sgt i64 %8, %.0201
  br i1 %i.ax, label %bb.p, label %._crit_edge259

bb.p:                                             ; preds = %bb.o
  %i.ay = sext i32 %.1183254 to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ay
  store i64 %8, ptr %i.az, align 8, !tbaa !10
  %.2174.in = shl nsw i32 %.3175, 1               ; 2 uses
  %.2174 = or disjoint i32 %.2174.in, 1           ; 2 uses
  %i.ba = icmp slt i32 %.2174, %.3
  br i1 %i.ba, label %.lr.ph258, label %._crit_edge259, !llvm.loop !12

._crit_edge259:                                   ; preds = %bb.p, %bb.o, %bb.m
  %.1183.lcssa = phi i32 [ %.3190, %bb.m ], [ %.1183254, %bb.o ], [ %.3175, %bb.p ]
  %i.bb = sext i32 %.1183.lcssa to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bb
  store i64 %.0201, ptr %i.bc, align 8, !tbaa !10
  br label %.preheader

bb.q:                                             ; preds = %.preheader305, %._crit_edge248
  %.4191 = phi i32 [ %.5192, %._crit_edge248 ], [ %i.a, %.preheader305 ] ; 3 uses
  %.4 = phi i32 [ %.5, %._crit_edge248 ], [ %1, %.preheader305 ] ; 2 uses
  %i.bd = icmp sgt i32 %.4191, 0
  br i1 %i.bd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.be = add nsw i32 %.4191, -1                  ; 2 uses
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !13
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.bi = add nsw i32 %.4, -1                     ; 3 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = sext i32 %i.bi to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bk ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !13
  %i.bn = load i64, ptr %0, align 8, !tbaa !13
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.0200 = phi i64 [ %i.bh, %bb.r ], [ %i.bm, %bb.t ] ; 2 uses
  %.5192 = phi i32 [ %i.be, %bb.r ], [ %.4191, %bb.t ] ; 4 uses
  %.5 = phi i32 [ %.4, %bb.r ], [ %i.bi, %bb.t ]  ; 4 uses
  %.4176.in241 = shl nsw i32 %.5192, 1            ; 2 uses
  %.4176242 = or disjoint i32 %.4176.in241, 1     ; 2 uses
  %i.bo = icmp slt i32 %.4176242, %.5
  br i1 %i.bo, label %.lr.ph247, label %._crit_edge248

.lr.ph247:                                        ; preds = %bb.u, %bb.x
  %.4176245 = phi i32 [ %.4176, %bb.x ], [ %.4176242, %bb.u ] ; 3 uses
  %.4176.in244 = phi i32 [ %.4176.in, %bb.x ], [ %.4176.in241, %bb.u ]
  %.2184243 = phi i32 [ %.5177, %bb.x ], [ %.5192, %bb.u ] ; 2 uses
  %i.bp = add nsw i32 %.4176.in244, 2             ; 3 uses
  %i.bq = icmp slt i32 %i.bp, %.5
  br i1 %i.bq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph247
  %i.br = sext i32 %i.bp to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %0, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !13
  %i.bu = sext i32 %.4176245 to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !13
  %i.bx = icmp sgt i64 %i.bt, %i.bw
  %spec.select218 = select i1 %i.bx, i32 %i.bp, i32 %.4176245
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph247
  %.5177 = phi i32 [ %.4176245, %.lr.ph247 ], [ %spec.select218, %bb.v ] ; 4 uses
  %9 = sext i32 %.5177 to i64
  %10 = getelementptr inbounds [8 x i8], ptr %0, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !13     ; 2 uses
  %i.by = icmp sgt i64 %11, %.0200
  br i1 %i.by, label %bb.x, label %._crit_edge248

bb.x:                                             ; preds = %bb.w
  %i.bz = sext i32 %.2184243 to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bz
  store i64 %11, ptr %i.ca, align 8, !tbaa !13
  %.4176.in = shl nsw i32 %.5177, 1               ; 2 uses
  %.4176 = or disjoint i32 %.4176.in, 1           ; 2 uses
  %i.cb = icmp slt i32 %.4176, %.5
  br i1 %i.cb, label %.lr.ph247, label %._crit_edge248, !llvm.loop !15

._crit_edge248:                                   ; preds = %bb.x, %bb.w, %bb.u
  %.2184.lcssa = phi i32 [ %.5192, %bb.u ], [ %.2184243, %bb.w ], [ %.5177, %bb.x ]
  %i.cc = sext i32 %.2184.lcssa to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cc
  store i64 %.0200, ptr %i.cd, align 8, !tbaa !13
  br label %bb.q

bb.y:                                             ; preds = %.preheader307, %._crit_edge237
  %.6193 = phi i32 [ %.7194, %._crit_edge237 ], [ %i.a, %.preheader307 ] ; 3 uses
  %.6 = phi i32 [ %.7, %._crit_edge237 ], [ %1, %.preheader307 ] ; 2 uses
  %i.ce = icmp sgt i32 %.6193, 0
  br i1 %i.ce, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cf = add nsw i32 %.6193, -1                  ; 2 uses
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cg
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !16
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.cj = add nsw i32 %.6, -1                     ; 3 uses
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = sext i32 %i.cj to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cl ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !16
  %i.co = load float, ptr %0, align 4, !tbaa !16
  store float %i.co, ptr %i.cm, align 4, !tbaa !16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.0199 = phi float [ %i.ci, %bb.z ], [ %i.cn, %bb.ab ] ; 2 uses
  %.7194 = phi i32 [ %i.cf, %bb.z ], [ %.6193, %bb.ab ] ; 4 uses
  %.7 = phi i32 [ %.6, %bb.z ], [ %i.cj, %bb.ab ] ; 4 uses
  %.6178.in230 = shl nsw i32 %.7194, 1            ; 2 uses
  %.6178231 = or disjoint i32 %.6178.in230, 1     ; 2 uses
  %i.cp = icmp slt i32 %.6178231, %.7
  br i1 %i.cp, label %.lr.ph236, label %._crit_edge237

.lr.ph236:                                        ; preds = %bb.ac, %bb.ag
  %.6178234 = phi i32 [ %.6178, %bb.ag ], [ %.6178231, %bb.ac ] ; 4 uses
  %.6178.in233 = phi i32 [ %.6178.in, %bb.ag ], [ %.6178.in230, %bb.ac ]
  %.3185232 = phi i32 [ %.7179, %bb.ag ], [ %.7194, %bb.ac ] ; 2 uses
  %i.cq = add nsw i32 %.6178.in233, 2             ; 3 uses
  %i.cr = icmp slt i32 %i.cq, %.7
  br i1 %i.cr, label %bb.ad, label %.lr.ph236._crit_edge

.lr.ph236._crit_edge:                             ; preds = %.lr.ph236
  %.pre.a = sext i32 %.6178234 to i64
  br label %bb.af

bb.ad:                                            ; preds = %.lr.ph236
  %i.cs = sext i32 %i.cq to i64                   ; 2 uses
  %i.ct = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cs
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !16
  %i.cv = sext i32 %.6178234 to i64               ; 2 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !16
  %i.cy = fcmp ogt float %i.cu, %i.cx
  br i1 %i.cy, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph236._crit_edge, %bb.ae, %bb.ad
  %.pre-phi = phi i64 [ %.pre.a, %.lr.ph236._crit_edge ], [ %i.cs, %bb.ae ], [ %i.cv, %bb.ad ]
  %.7179 = phi i32 [ %.6178234, %.lr.ph236._crit_edge ], [ %i.cq, %bb.ae ], [ %.6178234, %bb.ad ] ; 3 uses
  %i.cz = getelementptr inbounds [4 x i8], ptr %0, i64 %.pre-phi
  %i.da = load float, ptr %i.cz, align 4, !tbaa !16 ; 2 uses
  %i.db = fcmp ogt float %i.da, %.0199
  br i1 %i.db, label %bb.ag, label %._crit_edge237

bb.ag:                                            ; preds = %bb.af
  %i.dc = sext i32 %.3185232 to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dc
  store float %i.da, ptr %i.dd, align 4, !tbaa !16
  %.6178.in = shl nsw i32 %.7179, 1               ; 2 uses
  %.6178 = or disjoint i32 %.6178.in, 1           ; 2 uses
  %i.de = icmp slt i32 %.6178, %.7
  br i1 %i.de, label %.lr.ph236, label %._crit_edge237, !llvm.loop !18

._crit_edge237:                                   ; preds = %bb.ag, %bb.af, %bb.ac
  %.3185.lcssa = phi i32 [ %.7194, %bb.ac ], [ %.3185232, %bb.af ], [ %.7179, %bb.ag ]
  %i.df = sext i32 %.3185.lcssa to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %0, i64 %i.df
  store float %.0199, ptr %i.dg, align 4, !tbaa !16
  br label %bb.y

bb.ah:                                            ; preds = %.preheader309, %._crit_edge
  %.8195 = phi i32 [ %.9196, %._crit_edge ], [ %i.a, %.preheader309 ] ; 3 uses
  %.8 = phi i32 [ %.9, %._crit_edge ], [ %1, %.preheader309 ] ; 2 uses
  %i.dh = icmp sgt i32 %.8195, 0
  br i1 %i.dh, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.di = add nsw i32 %.8195, -1                  ; 2 uses
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dj
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !19
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.dm = add nsw i32 %.8, -1                     ; 3 uses
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.do = sext i32 %i.dm to i64
  %i.dp = getelementptr inbounds [8 x i8], ptr %0, i64 %i.do ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !19
  %i.dr = load double, ptr %0, align 8, !tbaa !19
  store double %i.dr, ptr %i.dp, align 8, !tbaa !19
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %.0198 = phi double [ %i.dl, %bb.ai ], [ %i.dq, %bb.ak ] ; 2 uses
  %.9196 = phi i32 [ %i.di, %bb.ai ], [ %.8195, %bb.ak ] ; 4 uses
  %.9 = phi i32 [ %.8, %bb.ai ], [ %i.dm, %bb.ak ] ; 4 uses
  %.8180.in223 = shl nsw i32 %.9196, 1            ; 2 uses
  %.8180224 = or disjoint i32 %.8180.in223, 1     ; 2 uses
  %i.ds = icmp slt i32 %.8180224, %.9
  br i1 %i.ds, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.al, %bb.ap
  %.8180227 = phi i32 [ %.8180, %bb.ap ], [ %.8180224, %bb.al ] ; 4 uses
  %.8180.in226 = phi i32 [ %.8180.in, %bb.ap ], [ %.8180.in223, %bb.al ]
  %.4186225 = phi i32 [ %.9181, %bb.ap ], [ %.9196, %bb.al ] ; 2 uses
  %i.dt = add nsw i32 %.8180.in226, 2             ; 3 uses
  %i.du = icmp slt i32 %i.dt, %.9
  br i1 %i.du, label %bb.am, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre278 = sext i32 %.8180227 to i64
  br label %bb.ao

bb.am:                                            ; preds = %.lr.ph
  %i.dv = sext i32 %i.dt to i64                   ; 2 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !19
  %i.dy = sext i32 %.8180227 to i64               ; 2 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dy
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !19
  %i.eb = fcmp ogt double %i.dx, %i.ea
  br i1 %i.eb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph._crit_edge, %bb.an, %bb.am
  %.pre-phi279 = phi i64 [ %.pre278, %.lr.ph._crit_edge ], [ %i.dv, %bb.an ], [ %i.dy, %bb.am ]
  %.9181 = phi i32 [ %.8180227, %.lr.ph._crit_edge ], [ %i.dt, %bb.an ], [ %.8180227, %bb.am ] ; 3 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %0, i64 %.pre-phi279
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !19 ; 2 uses
  %i.ee = fcmp ogt double %i.ed, %.0198
  br i1 %i.ee, label %bb.ap, label %._crit_edge

bb.ap:                                            ; preds = %bb.ao
  %i.ef = sext i32 %.4186225 to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ef
  store double %i.ed, ptr %i.eg, align 8, !tbaa !19
  %.8180.in = shl nsw i32 %.9181, 1               ; 2 uses
  %.8180 = or disjoint i32 %.8180.in, 1           ; 2 uses
  %i.eh = icmp slt i32 %.8180, %.9
  br i1 %i.eh, label %.lr.ph, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.ap, %bb.ao, %bb.al
  %.4186.lcssa = phi i32 [ %.9196, %bb.al ], [ %.4186225, %bb.ao ], [ %.9181, %bb.ap ]
  %i.ei = sext i32 %.4186.lcssa to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ei
  store double %.0198, ptr %i.ej, align 8, !tbaa !19
  br label %bb.ah

bb.aq:                                            ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  tail call void @exit(i32 noundef 1) #3
  unreachable

.loopexit:                                        ; preds = %bb.aj, %bb.aa, %bb.s, %bb.k, %bb.d
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @S7_Sort_2Arrays(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = sdiv i32 %2, 2                           ; 5 uses
  switch i32 %3, label %bb.aq [
    i32 11, label %.preheader383
    i32 4, label %.preheader383
    i32 5, label %.preheader
    i32 6, label %.preheader385
    i32 12, label %.preheader385
    i32 7, label %.preheader387
    i32 13, label %.preheader387
    i32 8, label %.preheader389
    i32 14, label %.preheader389
  ]

.preheader389:                                    ; preds = %bb.a, %bb.a
  br label %bb.ah

.preheader387:                                    ; preds = %bb.a, %bb.a
  br label %bb.y

.preheader385:                                    ; preds = %bb.a, %bb.a
  br label %bb.q

.preheader383:                                    ; preds = %bb.a, %bb.a
  br label %bb.b

bb.b:                                             ; preds = %.preheader383, %._crit_edge350
  %.0262 = phi i32 [ %.1263, %._crit_edge350 ], [ %i.a, %.preheader383 ] ; 3 uses
  %.0 = phi i32 [ %.1, %._crit_edge350 ], [ %2, %.preheader383 ] ; 2 uses
  %i.b = icmp sgt i32 %.0262, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i32 %.0262, -1                   ; 2 uses
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.d
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.i = add nsw i32 %.0, -1                      ; 3 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = sext i32 %i.i to i64                     ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4
  %i.n = getelementptr inbounds [4 x i8], ptr %1, i64 %i.k ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = load i32, ptr %0, align 4, !tbaa !4
  store i32 %i.p, ptr %i.l, align 4, !tbaa !4
  %i.q = load i32, ptr %1, align 4, !tbaa !4
  store i32 %i.q, ptr %i.n, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0273 = phi i32 [ %i.h, %bb.c ], [ %i.o, %bb.e ]
  %.0272 = phi i32 [ %i.f, %bb.c ], [ %i.m, %bb.e ] ; 2 uses
  %.1263 = phi i32 [ %i.c, %bb.c ], [ %.0262, %bb.e ] ; 4 uses
  %.1 = phi i32 [ %.0, %bb.c ], [ %i.i, %bb.e ]   ; 4 uses
  %.0247.in343 = shl nsw i32 %.1263, 1            ; 2 uses
  %.0247344 = or disjoint i32 %.0247.in343, 1     ; 2 uses
  %i.r = icmp slt i32 %.0247344, %.1
  br i1 %i.r, label %.lr.ph349, label %._crit_edge350

.lr.ph349:                                        ; preds = %bb.f, %bb.i
  %.0247347 = phi i32 [ %.0247, %bb.i ], [ %.0247344, %bb.f ] ; 3 uses
  %.0247.in346 = phi i32 [ %.0247.in, %bb.i ], [ %.0247.in343, %bb.f ]
  %.0257345 = phi i32 [ %.1248, %bb.i ], [ %.1263, %bb.f ] ; 2 uses
  %i.s = add nsw i32 %.0247.in346, 2              ; 3 uses
  %i.t = icmp slt i32 %i.s, %.1
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph349
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = sext i32 %.0247347 to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = icmp sgt i32 %i.w, %i.z
  %spec.select = select i1 %i.aa, i32 %i.s, i32 %.0247347
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph349
  %.1248 = phi i32 [ %.0247347, %.lr.ph349 ], [ %spec.select, %bb.g ] ; 4 uses
  %4 = sext i32 %.1248 to i64                     ; 2 uses
  %5 = getelementptr inbounds [4 x i8], ptr %0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !4        ; 2 uses
  %i.ab = icmp sgt i32 %6, %.0272
  br i1 %i.ab, label %bb.i, label %._crit_edge350

bb.i:                                             ; preds = %bb.h
  %i.ac = sext i32 %.0257345 to i64               ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ac
  store i32 %6, ptr %i.ad, align 4, !tbaa !4
  %i.ae = getelementptr inbounds [4 x i8], ptr %1, i64 %4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ac
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !4
  %.0247.in = shl nsw i32 %.1248, 1               ; 2 uses
  %.0247 = or disjoint i32 %.0247.in, 1           ; 2 uses
  %i.ah = icmp slt i32 %.0247, %.1
  br i1 %i.ah, label %.lr.ph349, label %._crit_edge350, !llvm.loop !22

._crit_edge350:                                   ; preds = %bb.i, %bb.h, %bb.f
  %.0257.lcssa = phi i32 [ %.1263, %bb.f ], [ %.0257345, %bb.h ], [ %.1248, %bb.i ]
  %i.ai = sext i32 %.0257.lcssa to i64            ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ai
  store i32 %.0272, ptr %i.aj, align 4, !tbaa !4
  %i.ak = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ai
  store i32 %.0273, ptr %i.ak, align 4, !tbaa !4
  br label %bb.b

.preheader:                                       ; preds = %bb.a, %._crit_edge339
  %.2264 = phi i32 [ %.3265, %._crit_edge339 ], [ %i.a, %bb.a ] ; 3 uses
  %.2 = phi i32 [ %.3, %._crit_edge339 ], [ %2, %bb.a ] ; 2 uses
  %i.al = icmp sgt i32 %.2264, 0
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.preheader
  %i.am = add nsw i32 %.2264, -1                  ; 2 uses
  %i.an = zext nneg i32 %i.am to i64              ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !10
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.an
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !10
  br label %bb.m

bb.k:                                             ; preds = %.preheader
  %i.as = add nsw i32 %.2, -1                     ; 3 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = sext i32 %i.as to i64                   ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %i.au ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !10
  %i.ax = getelementptr inbounds [8 x i8], ptr %1, i64 %i.au ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !10
  %i.az = load i64, ptr %0, align 8, !tbaa !10
  store i64 %i.az, ptr %i.av, align 8, !tbaa !10
  %i.ba = load i64, ptr %1, align 8, !tbaa !10
  store i64 %i.ba, ptr %i.ax, align 8, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.0275 = phi i64 [ %i.ar, %bb.j ], [ %i.ay, %bb.l ]
  %.0274 = phi i64 [ %i.ap, %bb.j ], [ %i.aw, %bb.l ] ; 2 uses
  %.3265 = phi i32 [ %i.am, %bb.j ], [ %.2264, %bb.l ] ; 4 uses
  %.3 = phi i32 [ %.2, %bb.j ], [ %i.as, %bb.l ]  ; 4 uses
  %.2249.in332 = shl nsw i32 %.3265, 1            ; 2 uses
  %.2249333 = or disjoint i32 %.2249.in332, 1     ; 2 uses
  %i.bb = icmp slt i32 %.2249333, %.3
  br i1 %i.bb, label %.lr.ph338, label %._crit_edge339

.lr.ph338:                                        ; preds = %bb.m, %bb.p
  %.2249336 = phi i32 [ %.2249, %bb.p ], [ %.2249333, %bb.m ] ; 3 uses
  %.2249.in335 = phi i32 [ %.2249.in, %bb.p ], [ %.2249.in332, %bb.m ]
  %.1258334 = phi i32 [ %.3250, %bb.p ], [ %.3265, %bb.m ] ; 2 uses
  %i.bc = add nsw i32 %.2249.in335, 2             ; 3 uses
  %i.bd = icmp slt i32 %i.bc, %.3
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph338
  %i.be = sext i32 %i.bc to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !10
  %i.bh = sext i32 %.2249336 to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !10
  %i.bk = icmp sgt i64 %i.bg, %i.bj
  %spec.select297 = select i1 %i.bk, i32 %i.bc, i32 %.2249336
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph338
  %.3250 = phi i32 [ %.2249336, %.lr.ph338 ], [ %spec.select297, %bb.n ] ; 4 uses
  %7 = sext i32 %.3250 to i64                     ; 2 uses
  %8 = getelementptr inbounds [8 x i8], ptr %0, i64 %7
  %9 = load i64, ptr %8, align 8, !tbaa !10       ; 2 uses
  %i.bl = icmp sgt i64 %9, %.0274
  br i1 %i.bl, label %bb.p, label %._crit_edge339

bb.p:                                             ; preds = %bb.o
  %i.bm = sext i32 %.1258334 to i64               ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bm
  store i64 %9, ptr %i.bn, align 8, !tbaa !10
  %i.bo = getelementptr inbounds [8 x i8], ptr %1, i64 %7
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !10
  %i.bq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bm
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !10
  %.2249.in = shl nsw i32 %.3250, 1               ; 2 uses
  %.2249 = or disjoint i32 %.2249.in, 1           ; 2 uses
  %i.br = icmp slt i32 %.2249, %.3
  br i1 %i.br, label %.lr.ph338, label %._crit_edge339, !llvm.loop !23

._crit_edge339:                                   ; preds = %bb.p, %bb.o, %bb.m
  %.1258.lcssa = phi i32 [ %.3265, %bb.m ], [ %.1258334, %bb.o ], [ %.3250, %bb.p ]
  %i.bs = sext i32 %.1258.lcssa to i64            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bs
  store i64 %.0274, ptr %i.bt, align 8, !tbaa !10
  %i.bu = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bs
  store i64 %.0275, ptr %i.bu, align 8, !tbaa !10
  br label %.preheader

bb.q:                                             ; preds = %.preheader385, %._crit_edge328
  %.4266 = phi i32 [ %.5267, %._crit_edge328 ], [ %i.a, %.preheader385 ] ; 3 uses
  %.4 = phi i32 [ %.5, %._crit_edge328 ], [ %2, %.preheader385 ] ; 2 uses
  %i.bv = icmp sgt i32 %.4266, 0
  br i1 %i.bv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bw = add nsw i32 %.4266, -1                  ; 2 uses
  %i.bx = zext nneg i32 %i.bw to i64              ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !13
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bx
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !13
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.cc = add nsw i32 %.4, -1                     ; 3 uses
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = sext i32 %i.cc to i64                   ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ce ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !13
  %i.ch = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ce ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !13
  %i.cj = load i64, ptr %0, align 8, !tbaa !13
  store i64 %i.cj, ptr %i.cf, align 8, !tbaa !13
  %i.ck = load i64, ptr %1, align 8, !tbaa !13
  store i64 %i.ck, ptr %i.ch, align 8, !tbaa !13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.0277 = phi i64 [ %i.cb, %bb.r ], [ %i.ci, %bb.t ]
  %.0276 = phi i64 [ %i.bz, %bb.r ], [ %i.cg, %bb.t ] ; 2 uses
  %.5267 = phi i32 [ %i.bw, %bb.r ], [ %.4266, %bb.t ] ; 4 uses
  %.5 = phi i32 [ %.4, %bb.r ], [ %i.cc, %bb.t ]  ; 4 uses
  %.4251.in321 = shl nsw i32 %.5267, 1            ; 2 uses
  %.4251322 = or disjoint i32 %.4251.in321, 1     ; 2 uses
  %i.cl = icmp slt i32 %.4251322, %.5
  br i1 %i.cl, label %.lr.ph327, label %._crit_edge328

.lr.ph327:                                        ; preds = %bb.u, %bb.x
  %.4251325 = phi i32 [ %.4251, %bb.x ], [ %.4251322, %bb.u ] ; 3 uses
  %.4251.in324 = phi i32 [ %.4251.in, %bb.x ], [ %.4251.in321, %bb.u ]
  %.2259323 = phi i32 [ %.5252, %bb.x ], [ %.5267, %bb.u ] ; 2 uses
  %i.cm = add nsw i32 %.4251.in324, 2             ; 3 uses
  %i.cn = icmp slt i32 %i.cm, %.5
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph327
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %0, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !13
  %i.cr = sext i32 %.4251325 to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !13
  %i.cu = icmp sgt i64 %i.cq, %i.ct
  %spec.select298 = select i1 %i.cu, i32 %i.cm, i32 %.4251325
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph327
  %.5252 = phi i32 [ %.4251325, %.lr.ph327 ], [ %spec.select298, %bb.v ] ; 4 uses
  %10 = sext i32 %.5252 to i64                    ; 2 uses
  %11 = getelementptr inbounds [8 x i8], ptr %0, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !13     ; 2 uses
  %i.cv = icmp sgt i64 %12, %.0276
  br i1 %i.cv, label %bb.x, label %._crit_edge328

bb.x:                                             ; preds = %bb.w
  %i.cw = sext i32 %.2259323 to i64               ; 2 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cw
  store i64 %12, ptr %i.cx, align 8, !tbaa !13
  %i.cy = getelementptr inbounds [8 x i8], ptr %1, i64 %10
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !13
  %i.da = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cw
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !13
  %.4251.in = shl nsw i32 %.5252, 1               ; 2 uses
  %.4251 = or disjoint i32 %.4251.in, 1           ; 2 uses
  %i.db = icmp slt i32 %.4251, %.5
  br i1 %i.db, label %.lr.ph327, label %._crit_edge328, !llvm.loop !24

._crit_edge328:                                   ; preds = %bb.x, %bb.w, %bb.u
  %.2259.lcssa = phi i32 [ %.5267, %bb.u ], [ %.2259323, %bb.w ], [ %.5252, %bb.x ]
  %i.dc = sext i32 %.2259.lcssa to i64            ; 2 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dc
  store i64 %.0276, ptr %i.dd, align 8, !tbaa !13
  %i.de = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dc
  store i64 %.0277, ptr %i.de, align 8, !tbaa !13
  br label %bb.q

bb.y:                                             ; preds = %.preheader387, %._crit_edge317
  %.6268 = phi i32 [ %.7269, %._crit_edge317 ], [ %i.a, %.preheader387 ] ; 3 uses
  %.6 = phi i32 [ %.7, %._crit_edge317 ], [ %2, %.preheader387 ] ; 2 uses
  %i.df = icmp sgt i32 %.6268, 0
  br i1 %i.df, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dg = add nsw i32 %.6268, -1                  ; 2 uses
  %i.dh = zext nneg i32 %i.dg to i64              ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dh
  %i.dj = load float, ptr %i.di, align 4, !tbaa !16
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dh
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !16
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.dm = add nsw i32 %.6, -1                     ; 3 uses
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.do = sext i32 %i.dm to i64                   ; 2 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.do ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !16
  %i.dr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.do ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !16
  %i.dt = load float, ptr %0, align 4, !tbaa !16
  store float %i.dt, ptr %i.dp, align 4, !tbaa !16
  %i.du = load float, ptr %1, align 4, !tbaa !16
  store float %i.du, ptr %i.dr, align 4, !tbaa !16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.0281 = phi float [ %i.dj, %bb.z ], [ %i.dq, %bb.ab ] ; 2 uses
  %.0280 = phi float [ %i.dl, %bb.z ], [ %i.ds, %bb.ab ]
  %.7269 = phi i32 [ %i.dg, %bb.z ], [ %.6268, %bb.ab ] ; 4 uses
  %.7 = phi i32 [ %.6, %bb.z ], [ %i.dm, %bb.ab ] ; 4 uses
  %.6253.in310 = shl nsw i32 %.7269, 1            ; 2 uses
  %.6253311 = or disjoint i32 %.6253.in310, 1     ; 2 uses
  %i.dv = icmp slt i32 %.6253311, %.7
  br i1 %i.dv, label %.lr.ph316, label %._crit_edge317

.lr.ph316:                                        ; preds = %bb.ac, %bb.ag
  %.6253314 = phi i32 [ %.6253, %bb.ag ], [ %.6253311, %bb.ac ] ; 4 uses
  %.6253.in313 = phi i32 [ %.6253.in, %bb.ag ], [ %.6253.in310, %bb.ac ]
  %.3260312 = phi i32 [ %.7254, %bb.ag ], [ %.7269, %bb.ac ] ; 2 uses
  %i.dw = add nsw i32 %.6253.in313, 2             ; 3 uses
  %i.dx = icmp slt i32 %i.dw, %.7
  br i1 %i.dx, label %bb.ad, label %.lr.ph316._crit_edge

.lr.ph316._crit_edge:                             ; preds = %.lr.ph316
  %.pre.a = sext i32 %.6253314 to i64
  br label %bb.af

bb.ad:                                            ; preds = %.lr.ph316
  %i.dy = sext i32 %i.dw to i64                   ; 2 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dy
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !16
  %i.eb = sext i32 %.6253314 to i64               ; 2 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eb
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !16
  %i.ee = fcmp ogt float %i.ea, %i.ed
  br i1 %i.ee, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph316._crit_edge, %bb.ae, %bb.ad
  %.pre-phi.a = phi i64 [ %.pre.a, %.lr.ph316._crit_edge ], [ %i.dy, %bb.ae ], [ %i.eb, %bb.ad ] ; 2 uses
  %.7254 = phi i32 [ %.6253314, %.lr.ph316._crit_edge ], [ %i.dw, %bb.ae ], [ %.6253314, %bb.ad ] ; 3 uses
  %i.ef = getelementptr inbounds [4 x i8], ptr %0, i64 %.pre-phi.a
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !16 ; 2 uses
  %i.eh = fcmp ogt float %i.eg, %.0281
  br i1 %i.eh, label %bb.ag, label %._crit_edge317

bb.ag:                                            ; preds = %bb.af
  %i.ei = sext i32 %.3260312 to i64               ; 2 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ei
  store float %i.eg, ptr %i.ej, align 4, !tbaa !16
  %i.ek = getelementptr inbounds [4 x i8], ptr %1, i64 %.pre-phi.a
  %i.el = load float, ptr %i.ek, align 4, !tbaa !16
  %i.em = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ei
  store float %i.el, ptr %i.em, align 4, !tbaa !16
  %.6253.in = shl nsw i32 %.7254, 1               ; 2 uses
  %.6253 = or disjoint i32 %.6253.in, 1           ; 2 uses
  %i.en = icmp slt i32 %.6253, %.7
  br i1 %i.en, label %.lr.ph316, label %._crit_edge317, !llvm.loop !25

._crit_edge317:                                   ; preds = %bb.ag, %bb.af, %bb.ac
  %.3260.lcssa = phi i32 [ %.7269, %bb.ac ], [ %.3260312, %bb.af ], [ %.7254, %bb.ag ]
  %i.eo = sext i32 %.3260.lcssa to i64            ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eo
  store float %.0281, ptr %i.ep, align 4, !tbaa !16
  %i.eq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.eo
  store float %.0280, ptr %i.eq, align 4, !tbaa !16
  br label %bb.y

bb.ah:                                            ; preds = %.preheader389, %._crit_edge
  %.8270 = phi i32 [ %.9271, %._crit_edge ], [ %i.a, %.preheader389 ] ; 3 uses
  %.8 = phi i32 [ %.9, %._crit_edge ], [ %2, %.preheader389 ] ; 2 uses
  %i.er = icmp sgt i32 %.8270, 0
  br i1 %i.er, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.es = add nsw i32 %.8270, -1                  ; 2 uses
  %i.et = zext nneg i32 %i.es to i64              ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.et
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !19
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.et
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !19
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.ey = add nsw i32 %.8, -1                     ; 3 uses
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fa = sext i32 %i.ey to i64                   ; 2 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %0, i64 %i.fa ; 2 uses
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !19
  %i.fd = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fa ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !19
  %i.ff = load double, ptr %0, align 8, !tbaa !19
  store double %i.ff, ptr %i.fb, align 8, !tbaa !19
  %i.fg = load double, ptr %1, align 8, !tbaa !19
  store double %i.fg, ptr %i.fd, align 8, !tbaa !19
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %.0279 = phi double [ %i.ev, %bb.ai ], [ %i.fc, %bb.ak ] ; 2 uses
  %.0278 = phi double [ %i.ex, %bb.ai ], [ %i.fe, %bb.ak ]
  %.9271 = phi i32 [ %i.es, %bb.ai ], [ %.8270, %bb.ak ] ; 4 uses
  %.9 = phi i32 [ %.8, %bb.ai ], [ %i.ey, %bb.ak ] ; 4 uses
  %.8255.in303 = shl nsw i32 %.9271, 1            ; 2 uses
  %.8255304 = or disjoint i32 %.8255.in303, 1     ; 2 uses
  %i.fh = icmp slt i32 %.8255304, %.9
  br i1 %i.fh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.al, %bb.ap
  %.8255307 = phi i32 [ %.8255, %bb.ap ], [ %.8255304, %bb.al ] ; 4 uses
  %.8255.in306 = phi i32 [ %.8255.in, %bb.ap ], [ %.8255.in303, %bb.al ]
  %.4261305 = phi i32 [ %.9256, %bb.ap ], [ %.9271, %bb.al ] ; 2 uses
  %i.fi = add nsw i32 %.8255.in306, 2             ; 3 uses
  %i.fj = icmp slt i32 %i.fi, %.9
  br i1 %i.fj, label %bb.am, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre358 = sext i32 %.8255307 to i64
  br label %bb.ao

bb.am:                                            ; preds = %.lr.ph
  %i.fk = sext i32 %i.fi to i64                   ; 2 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %0, i64 %i.fk
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !19
  %i.fn = sext i32 %.8255307 to i64               ; 2 uses
  %i.fo = getelementptr inbounds [8 x i8], ptr %0, i64 %i.fn
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !19
  %i.fq = fcmp ogt double %i.fm, %i.fp
  br i1 %i.fq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph._crit_edge, %bb.an, %bb.am
  %.pre-phi359 = phi i64 [ %.pre358, %.lr.ph._crit_edge ], [ %i.fk, %bb.an ], [ %i.fn, %bb.am ] ; 2 uses
  %.9256 = phi i32 [ %.8255307, %.lr.ph._crit_edge ], [ %i.fi, %bb.an ], [ %.8255307, %bb.am ] ; 3 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %0, i64 %.pre-phi359
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !19 ; 2 uses
  %i.ft = fcmp ogt double %i.fs, %.0279
  br i1 %i.ft, label %bb.ap, label %._crit_edge

bb.ap:                                            ; preds = %bb.ao
  %i.fu = sext i32 %.4261305 to i64               ; 2 uses
  %i.fv = getelementptr inbounds [8 x i8], ptr %0, i64 %i.fu
  store double %i.fs, ptr %i.fv, align 8, !tbaa !19
  %i.fw = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi359
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !19
  %i.fy = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fu
  store double %i.fx, ptr %i.fy, align 8, !tbaa !19
  %.8255.in = shl nsw i32 %.9256, 1               ; 2 uses
  %.8255 = or disjoint i32 %.8255.in, 1           ; 2 uses
  %i.fz = icmp slt i32 %.8255, %.9
  br i1 %i.fz, label %.lr.ph, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.ap, %bb.ao, %bb.al
  %.4261.lcssa = phi i32 [ %.9271, %bb.al ], [ %.4261305, %bb.ao ], [ %.9256, %bb.ap ]
  %i.ga = sext i32 %.4261.lcssa to i64            ; 2 uses
  %i.gb = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ga
  store double %.0279, ptr %i.gb, align 8, !tbaa !19
  %i.gc = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ga
  store double %.0278, ptr %i.gc, align 8, !tbaa !19
  br label %bb.ah

bb.aq:                                            ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  tail call void @exit(i32 noundef 1) #3
  unreachable

.loopexit:                                        ; preds = %bb.aj, %bb.aa, %bb.s, %bb.k, %bb.d
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @S7_Index_Sort(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader355, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <4 x i32> %vec.ind, ptr %i.b, align 4, !tbaa !4
  store <4 x i32> %step.add, ptr %i.c, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.d = icmp eq i64 %index.next, %n.vec
  br i1 %i.d, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader355

.lr.ph.preheader355:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader355, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader355 ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.f = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.f, ptr %i.e, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.g = sdiv i32 %1, 2                           ; 5 uses
  switch i32 %2, label %bb.aq [
    i32 11, label %.preheader347
    i32 4, label %.preheader347
    i32 5, label %.preheader
    i32 6, label %.preheader349
    i32 12, label %.preheader349
    i32 7, label %.preheader351
    i32 13, label %.preheader351
    i32 8, label %.preheader353
    i32 14, label %.preheader353
  ]

.preheader353:                                    ; preds = %._crit_edge, %._crit_edge
  br label %bb.ah

.preheader351:                                    ; preds = %._crit_edge, %._crit_edge
  br label %bb.y

.preheader349:                                    ; preds = %._crit_edge, %._crit_edge
  br label %bb.q

.preheader347:                                    ; preds = %._crit_edge, %._crit_edge
  br label %bb.b

bb.b:                                             ; preds = %.preheader347, %._crit_edge317
  %.0229 = phi i32 [ %.1230, %._crit_edge317 ], [ %i.g, %.preheader347 ] ; 3 uses
  %.0 = phi i32 [ %.1, %._crit_edge317 ], [ %1, %.preheader347 ] ; 2 uses
  %i.h = icmp sgt i32 %.0229, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %.0229, -1                   ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4    ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %0, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.p = add nsw i32 %.0, -1                      ; 3 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %3, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4    ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = load i32, ptr %3, align 4, !tbaa !4
  store i32 %i.x, ptr %i.s, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0244 = phi i32 [ %i.l, %bb.c ], [ %i.t, %bb.e ]
  %.0243 = phi i32 [ %i.o, %bb.c ], [ %i.w, %bb.e ]
  %.1230 = phi i32 [ %i.i, %bb.c ], [ %.0229, %bb.e ] ; 4 uses
  %.1 = phi i32 [ %.0, %bb.c ], [ %i.p, %bb.e ]   ; 4 uses
  %.0214.in310 = shl nsw i32 %.1230, 1            ; 2 uses
  %.0214311 = or disjoint i32 %.0214.in310, 1     ; 2 uses
  %i.y = icmp slt i32 %.0214311, %.1
  br i1 %i.y, label %.lr.ph316, label %._crit_edge317

.lr.ph316:                                        ; preds = %bb.f, %bb.i
  %.0214314 = phi i32 [ %.0214, %bb.i ], [ %.0214311, %bb.f ] ; 3 uses
  %.0214.in313 = phi i32 [ %.0214.in, %bb.i ], [ %.0214.in310, %bb.f ]
  %.0224312 = phi i32 [ %.1215.a, %bb.i ], [ %.1230, %bb.f ] ; 2 uses
  %i.z = add nsw i32 %.0214.in313, 2              ; 3 uses
  %i.aa = icmp slt i32 %i.z, %.1
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph316
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = sext i32 %.0214314 to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = icmp sgt i32 %i.ag, %i.am
  %spec.select.a = select i1 %i.an, i32 %i.z, i32 %.0214314
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph316
  %.1215.a = phi i32 [ %.0214314, %.lr.ph316 ], [ %spec.select.a, %bb.g ] ; 4 uses
  %4 = sext i32 %.1215.a to i64
  %5 = getelementptr inbounds [4 x i8], ptr %3, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !4        ; 2 uses
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !4
  %i.ao = icmp sgt i32 %9, %.0243
  br i1 %i.ao, label %bb.i, label %._crit_edge317

bb.i:                                             ; preds = %bb.h
  %i.ap = sext i32 %.0224312 to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ap
  store i32 %6, ptr %i.aq, align 4, !tbaa !4
  %.0214.in = shl nsw i32 %.1215.a, 1             ; 2 uses
  %.0214 = or disjoint i32 %.0214.in, 1           ; 2 uses
  %i.ar = icmp slt i32 %.0214, %.1
  br i1 %i.ar, label %.lr.ph316, label %._crit_edge317, !llvm.loop !31

._crit_edge317:                                   ; preds = %bb.i, %bb.h, %bb.f
  %.0224.lcssa = phi i32 [ %.1230, %bb.f ], [ %.0224312, %bb.h ], [ %.1215.a, %bb.i ]
  %i.as = sext i32 %.0224.lcssa to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %3, i64 %i.as
  store i32 %.0244, ptr %i.at, align 4, !tbaa !4
  br label %bb.b

.preheader:                                       ; preds = %._crit_edge, %._crit_edge306
  %.2231 = phi i32 [ %.3232, %._crit_edge306 ], [ %i.g, %._crit_edge ] ; 3 uses
  %.2 = phi i32 [ %.3, %._crit_edge306 ], [ %1, %._crit_edge ] ; 2 uses
  %i.au = icmp sgt i32 %.2231, 0
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.preheader
  %i.av = add nsw i32 %.2231, -1                  ; 2 uses
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4  ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !10
  br label %bb.m

bb.k:                                             ; preds = %.preheader
  %i.bc = add nsw i32 %.2, -1                     ; 3 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = sext i32 %i.bc to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %3, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4  ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !10
  %i.bk = load i32, ptr %3, align 4, !tbaa !4
  store i32 %i.bk, ptr %i.bf, align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.1245 = phi i32 [ %i.ay, %bb.j ], [ %i.bg, %bb.l ]
  %.0242 = phi i64 [ %i.bb, %bb.j ], [ %i.bj, %bb.l ]
  %.3232 = phi i32 [ %i.av, %bb.j ], [ %.2231, %bb.l ] ; 4 uses
  %.3 = phi i32 [ %.2, %bb.j ], [ %i.bc, %bb.l ]  ; 4 uses
  %.2216.in299 = shl nsw i32 %.3232, 1            ; 2 uses
  %.2216300 = or disjoint i32 %.2216.in299, 1     ; 2 uses
  %i.bl = icmp slt i32 %.2216300, %.3
  br i1 %i.bl, label %.lr.ph305, label %._crit_edge306

.lr.ph305:                                        ; preds = %bb.m, %bb.p
  %.2216303 = phi i32 [ %.2216, %bb.p ], [ %.2216300, %bb.m ] ; 3 uses
  %.2216.in302 = phi i32 [ %.2216.in, %bb.p ], [ %.2216.in299, %bb.m ]
  %.1225301 = phi i32 [ %.3217, %bb.p ], [ %.3232, %bb.m ] ; 2 uses
  %i.bm = add nsw i32 %.2216.in302, 2             ; 3 uses
  %i.bn = icmp slt i32 %i.bm, %.3
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph305
  %i.bo = sext i32 %i.bm to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %0, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !10
  %i.bu = sext i32 %.2216303 to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !4
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !10
  %i.ca = icmp sgt i64 %i.bt, %i.bz
  %spec.select260.a = select i1 %i.ca, i32 %i.bm, i32 %.2216303
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph305
  %.3217 = phi i32 [ %.2216303, %.lr.ph305 ], [ %spec.select260.a, %bb.n ] ; 4 uses
  %10 = sext i32 %.3217 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %3, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !4      ; 2 uses
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8 x i8], ptr %0, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !10
  %i.cb = icmp sgt i64 %15, %.0242
  br i1 %i.cb, label %bb.p, label %._crit_edge306

bb.p:                                             ; preds = %bb.o
  %i.cc = sext i32 %.1225301 to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cc
  store i32 %12, ptr %i.cd, align 4, !tbaa !4
  %.2216.in = shl nsw i32 %.3217, 1               ; 2 uses
  %.2216 = or disjoint i32 %.2216.in, 1           ; 2 uses
  %i.ce = icmp slt i32 %.2216, %.3
  br i1 %i.ce, label %.lr.ph305, label %._crit_edge306, !llvm.loop !32

._crit_edge306:                                   ; preds = %bb.p, %bb.o, %bb.m
  %.1225.lcssa = phi i32 [ %.3232, %bb.m ], [ %.1225301, %bb.o ], [ %.3217, %bb.p ]
  %i.cf = sext i32 %.1225.lcssa to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cf
  store i32 %.1245, ptr %i.cg, align 4, !tbaa !4
  br label %.preheader

bb.q:                                             ; preds = %.preheader349, %._crit_edge295
  %.4233 = phi i32 [ %.5234, %._crit_edge295 ], [ %i.g, %.preheader349 ] ; 3 uses
  %.4 = phi i32 [ %.5, %._crit_edge295 ], [ %1, %.preheader349 ] ; 2 uses
  %i.ch = icmp sgt i32 %.4233, 0
  br i1 %i.ch, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ci = add nsw i32 %.4233, -1                  ; 2 uses
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4  ; 2 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !13
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.cp = add nsw i32 %.4, -1                     ; 3 uses
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = sext i32 %i.cp to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cr ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !4  ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !13
  %i.cx = load i32, ptr %3, align 4, !tbaa !4
  store i32 %i.cx, ptr %i.cs, align 4, !tbaa !4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.2246 = phi i32 [ %i.cl, %bb.r ], [ %i.ct, %bb.t ]
  %.0241 = phi i64 [ %i.co, %bb.r ], [ %i.cw, %bb.t ]
  %.5234 = phi i32 [ %i.ci, %bb.r ], [ %.4233, %bb.t ] ; 4 uses
  %.5 = phi i32 [ %.4, %bb.r ], [ %i.cp, %bb.t ]  ; 4 uses
  %.4218.in288 = shl nsw i32 %.5234, 1            ; 2 uses
  %.4218289 = or disjoint i32 %.4218.in288, 1     ; 2 uses
  %i.cy = icmp slt i32 %.4218289, %.5
  br i1 %i.cy, label %.lr.ph294, label %._crit_edge295

.lr.ph294:                                        ; preds = %bb.u, %bb.x
  %.4218292 = phi i32 [ %.4218, %bb.x ], [ %.4218289, %bb.u ] ; 3 uses
  %.4218.in291 = phi i32 [ %.4218.in, %bb.x ], [ %.4218.in288, %bb.u ]
  %.2226290 = phi i32 [ %.5219, %bb.x ], [ %.5234, %bb.u ] ; 2 uses
  %i.cz = add nsw i32 %.4218.in291, 2             ; 3 uses
  %i.da = icmp slt i32 %i.cz, %.5
  br i1 %i.da, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph294
  %i.db = sext i32 %i.cz to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %3, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !4
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [8 x i8], ptr %0, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !13
  %i.dh = sext i32 %.4218292 to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !4
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !13
  %i.dn = icmp sgt i64 %i.dg, %i.dm
  %spec.select261.a = select i1 %i.dn, i32 %i.cz, i32 %.4218292
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph294
  %.5219 = phi i32 [ %.4218292, %.lr.ph294 ], [ %spec.select261.a, %bb.v ] ; 4 uses
  %16 = sext i32 %.5219 to i64
  %17 = getelementptr inbounds [4 x i8], ptr %3, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !4      ; 2 uses
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i8], ptr %0, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !13
  %i.do = icmp sgt i64 %21, %.0241
  br i1 %i.do, label %bb.x, label %._crit_edge295

bb.x:                                             ; preds = %bb.w
  %i.dp = sext i32 %.2226290 to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dp
  store i32 %18, ptr %i.dq, align 4, !tbaa !4
  %.4218.in = shl nsw i32 %.5219, 1               ; 2 uses
  %.4218 = or disjoint i32 %.4218.in, 1           ; 2 uses
  %i.dr = icmp slt i32 %.4218, %.5
  br i1 %i.dr, label %.lr.ph294, label %._crit_edge295, !llvm.loop !33

._crit_edge295:                                   ; preds = %bb.x, %bb.w, %bb.u
  %.2226.lcssa = phi i32 [ %.5234, %bb.u ], [ %.2226290, %bb.w ], [ %.5219, %bb.x ]
  %i.ds = sext i32 %.2226.lcssa to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ds
  store i32 %.2246, ptr %i.dt, align 4, !tbaa !4
  br label %bb.q

bb.y:                                             ; preds = %.preheader351, %._crit_edge284
  %.6235 = phi i32 [ %.7236, %._crit_edge284 ], [ %i.g, %.preheader351 ] ; 3 uses
  %.6 = phi i32 [ %.7, %._crit_edge284 ], [ %1, %.preheader351 ] ; 2 uses
  %i.du = icmp sgt i32 %.6235, 0
  br i1 %i.du, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dv = add nsw i32 %.6235, -1                  ; 2 uses
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !4  ; 2 uses
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dz
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !16
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.ec = add nsw i32 %.6, -1                     ; 3 uses
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ee = sext i32 %i.ec to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ee ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !4  ; 2 uses
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eh
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !16
  %i.ek = load i32, ptr %3, align 4, !tbaa !4
  store i32 %i.ek, ptr %i.ef, align 4, !tbaa !4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.3247 = phi i32 [ %i.dy, %bb.z ], [ %i.eg, %bb.ab ]
  %.0240 = phi float [ %i.eb, %bb.z ], [ %i.ej, %bb.ab ]
  %.7236 = phi i32 [ %i.dv, %bb.z ], [ %.6235, %bb.ab ] ; 4 uses
  %.7 = phi i32 [ %.6, %bb.z ], [ %i.ec, %bb.ab ] ; 4 uses
  %.6220.in277 = shl nsw i32 %.7236, 1            ; 2 uses
  %.6220278 = or disjoint i32 %.6220.in277, 1     ; 2 uses
  %i.el = icmp slt i32 %.6220278, %.7
  br i1 %i.el, label %.lr.ph283, label %._crit_edge284

.lr.ph283:                                        ; preds = %bb.ac, %bb.ag
  %.6220281 = phi i32 [ %.6220, %bb.ag ], [ %.6220278, %bb.ac ] ; 4 uses
  %.6220.in280 = phi i32 [ %.6220.in, %bb.ag ], [ %.6220.in277, %bb.ac ]
  %.3227279 = phi i32 [ %.7221, %bb.ag ], [ %.7236, %bb.ac ] ; 2 uses
  %i.em = add nsw i32 %.6220.in280, 2             ; 3 uses
  %i.en = icmp slt i32 %i.em, %.7
  br i1 %i.en, label %bb.ad, label %.lr.ph283._crit_edge

.lr.ph283._crit_edge:                             ; preds = %.lr.ph283
  %.pre.a = sext i32 %.6220281 to i64
  br label %bb.af

bb.ad:                                            ; preds = %.lr.ph283
  %i.eo = sext i32 %i.em to i64                   ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %3, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !4
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %0, i64 %i.er
  %i.et = load float, ptr %i.es, align 4, !tbaa !16
  %i.eu = sext i32 %.6220281 to i64               ; 2 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr %3, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !4
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ex
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !16
  %i.fa = fcmp ogt float %i.et, %i.ez
  br i1 %i.fa, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph283._crit_edge, %bb.ae, %bb.ad
  %.pre-phi = phi i64 [ %.pre.a, %.lr.ph283._crit_edge ], [ %i.eo, %bb.ae ], [ %i.eu, %bb.ad ]
  %.7221 = phi i32 [ %.6220281, %.lr.ph283._crit_edge ], [ %i.em, %bb.ae ], [ %.6220281, %bb.ad ] ; 3 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %3, i64 %.pre-phi
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !4  ; 2 uses
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %0, i64 %i.fd
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !16
  %i.fg = fcmp ogt float %i.ff, %.0240
  br i1 %i.fg, label %bb.ag, label %._crit_edge284

bb.ag:                                            ; preds = %bb.af
  %i.fh = sext i32 %.3227279 to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %3, i64 %i.fh
  store i32 %i.fc, ptr %i.fi, align 4, !tbaa !4
  %.6220.in = shl nsw i32 %.7221, 1               ; 2 uses
  %.6220 = or disjoint i32 %.6220.in, 1           ; 2 uses
  %i.fj = icmp slt i32 %.6220, %.7
  br i1 %i.fj, label %.lr.ph283, label %._crit_edge284, !llvm.loop !34

._crit_edge284:                                   ; preds = %bb.ag, %bb.af, %bb.ac
  %.3227.lcssa = phi i32 [ %.7236, %bb.ac ], [ %.3227279, %bb.af ], [ %.7221, %bb.ag ]
  %i.fk = sext i32 %.3227.lcssa to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %3, i64 %i.fk
  store i32 %.3247, ptr %i.fl, align 4, !tbaa !4
  br label %bb.y

bb.ah:                                            ; preds = %.preheader353, %._crit_edge274
  %.8237 = phi i32 [ %.9238, %._crit_edge274 ], [ %i.g, %.preheader353 ] ; 3 uses
  %.8 = phi i32 [ %.9, %._crit_edge274 ], [ %1, %.preheader353 ] ; 2 uses
  %i.fm = icmp sgt i32 %.8237, 0
  br i1 %i.fm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fn = add nsw i32 %.8237, -1                  ; 2 uses
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !4  ; 2 uses
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %0, i64 %i.fr
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !19
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.fu = add nsw i32 %.8, -1                     ; 3 uses
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fw = sext i32 %i.fu to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %3, i64 %i.fw ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !4  ; 2 uses
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %0, i64 %i.fz
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !19
  %i.gc = load i32, ptr %3, align 4, !tbaa !4
  store i32 %i.gc, ptr %i.fx, align 4, !tbaa !4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %.4248 = phi i32 [ %i.fq, %bb.ai ], [ %i.fy, %bb.ak ]
  %.0239 = phi double [ %i.ft, %bb.ai ], [ %i.gb, %bb.ak ]
  %.9238 = phi i32 [ %i.fn, %bb.ai ], [ %.8237, %bb.ak ] ; 4 uses
  %.9 = phi i32 [ %.8, %bb.ai ], [ %i.fu, %bb.ak ] ; 4 uses
  %.8222.in267 = shl nsw i32 %.9238, 1            ; 2 uses
  %.8222268 = or disjoint i32 %.8222.in267, 1     ; 2 uses
  %i.gd = icmp slt i32 %.8222268, %.9
  br i1 %i.gd, label %.lr.ph273, label %._crit_edge274

.lr.ph273:                                        ; preds = %bb.al, %bb.ap
  %.8222271 = phi i32 [ %.8222, %bb.ap ], [ %.8222268, %bb.al ] ; 4 uses
  %.8222.in270 = phi i32 [ %.8222.in, %bb.ap ], [ %.8222.in267, %bb.al ]
  %.4228269 = phi i32 [ %.9223, %bb.ap ], [ %.9238, %bb.al ] ; 2 uses
  %i.ge = add nsw i32 %.8222.in270, 2             ; 3 uses
  %i.gf = icmp slt i32 %i.ge, %.9
  br i1 %i.gf, label %bb.am, label %.lr.ph273._crit_edge

.lr.ph273._crit_edge:                             ; preds = %.lr.ph273
  %.pre326 = sext i32 %.8222271 to i64
  br label %bb.ao

bb.am:                                            ; preds = %.lr.ph273
  %i.gg = sext i32 %i.ge to i64                   ; 2 uses
  %i.gh = getelementptr inbounds [4 x i8], ptr %3, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !4
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %0, i64 %i.gj
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !19
  %i.gm = sext i32 %.8222271 to i64               ; 2 uses
  %i.gn = getelementptr inbounds [4 x i8], ptr %3, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !4
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds [8 x i8], ptr %0, i64 %i.gp
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !19
  %i.gs = fcmp ogt double %i.gl, %i.gr
  br i1 %i.gs, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph273._crit_edge, %bb.an, %bb.am
  %.pre-phi327 = phi i64 [ %.pre326, %.lr.ph273._crit_edge ], [ %i.gg, %bb.an ], [ %i.gm, %bb.am ]
  %.9223 = phi i32 [ %.8222271, %.lr.ph273._crit_edge ], [ %i.ge, %bb.an ], [ %.8222271, %bb.am ] ; 3 uses
  %i.gt = getelementptr inbounds [4 x i8], ptr %3, i64 %.pre-phi327
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !4  ; 2 uses
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.gv
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !19
  %i.gy = fcmp ogt double %i.gx, %.0239
  br i1 %i.gy, label %bb.ap, label %._crit_edge274

bb.ap:                                            ; preds = %bb.ao
  %i.gz = sext i32 %.4228269 to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %3, i64 %i.gz
  store i32 %i.gu, ptr %i.ha, align 4, !tbaa !4
  %.8222.in = shl nsw i32 %.9223, 1               ; 2 uses
  %.8222 = or disjoint i32 %.8222.in, 1           ; 2 uses
  %i.hb = icmp slt i32 %.8222, %.9
  br i1 %i.hb, label %.lr.ph273, label %._crit_edge274, !llvm.loop !35

._crit_edge274:                                   ; preds = %bb.ap, %bb.ao, %bb.al
  %.4228.lcssa = phi i32 [ %.9238, %bb.al ], [ %.4228269, %bb.ao ], [ %.9223, %bb.ap ]
  %i.hc = sext i32 %.4228.lcssa to i64
  %i.hd = getelementptr inbounds [4 x i8], ptr %3, i64 %i.hc
  store i32 %.4248, ptr %i.hd, align 4, !tbaa !4
  br label %bb.ah

bb.aq:                                            ; preds = %._crit_edge
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  tail call void @exit(i32 noundef 1) #3
  unreachable

.loopexit:                                        ; preds = %bb.aj, %bb.aa, %bb.s, %bb.k, %bb.d
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @S7_Indexi8_Sort(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader355, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <2 x i64> %vec.ind, ptr %i.b, align 8, !tbaa !10
  store <2 x i64> %step.add, ptr %i.c, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.d = icmp eq i64 %index.next, %n.vec
  br i1 %i.d, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader355

.lr.ph.preheader355:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader355, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader355 ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store i64 %indvars.iv, ptr %i.e, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.f = sdiv i32 %1, 2                           ; 5 uses
  switch i32 %2, label %bb.aq [
    i32 11, label %.preheader347
    i32 4, label %.preheader347
    i32 5, label %.preheader
    i32 6, label %.preheader349
    i32 12, label %.preheader349
    i32 7, label %.preheader351
    i32 13, label %.preheader351
    i32 8, label %.preheader353
    i32 14, label %.preheader353
  ]

.preheader353:                                    ; preds = %._crit_edge, %._crit_edge
  br label %bb.ah

.preheader351:                                    ; preds = %._crit_edge, %._crit_edge
  br label %bb.y

.preheader349:                                    ; preds = %._crit_edge, %._crit_edge
  br label %bb.q

.preheader347:                                    ; preds = %._crit_edge, %._crit_edge
  br label %bb.b

bb.b:                                             ; preds = %.preheader347, %._crit_edge317
  %.0229 = phi i32 [ %.1230, %._crit_edge317 ], [ %i.f, %.preheader347 ] ; 3 uses
  %.0 = phi i32 [ %.1, %._crit_edge317 ], [ %1, %.preheader347 ] ; 2 uses
  %i.g = icmp sgt i32 %.0229, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %.0229, -1                   ; 2 uses
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %0, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.n = add nsw i32 %.0, -1                      ; 3 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %3, i64 %i.p ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !10   ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = load i64, ptr %3, align 8, !tbaa !10
  store i64 %i.u, ptr %i.q, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0244 = phi i64 [ %i.k, %bb.c ], [ %i.r, %bb.e ]
  %.0243 = phi i32 [ %i.m, %bb.c ], [ %i.t, %bb.e ]
  %.1230 = phi i32 [ %i.h, %bb.c ], [ %.0229, %bb.e ] ; 4 uses
  %.1 = phi i32 [ %.0, %bb.c ], [ %i.n, %bb.e ]   ; 4 uses
  %.0214.in310 = shl nsw i32 %.1230, 1            ; 2 uses
  %.0214311 = or disjoint i32 %.0214.in310, 1     ; 2 uses
  %i.v = icmp slt i32 %.0214311, %.1
  br i1 %i.v, label %.lr.ph316, label %._crit_edge317

.lr.ph316:                                        ; preds = %bb.f, %bb.i
  %.0214314 = phi i32 [ %.0214, %bb.i ], [ %.0214311, %bb.f ] ; 3 uses
  %.0214.in313 = phi i32 [ %.0214.in, %bb.i ], [ %.0214.in310, %bb.f ]
  %.0224312 = phi i32 [ %.1215.a, %bb.i ], [ %.1230, %bb.f ] ; 2 uses
  %i.w = add nsw i32 %.0214.in313, 2              ; 3 uses
  %i.x = icmp slt i32 %i.w, %.1
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph316
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %3, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !10
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = sext i32 %.0214314 to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = icmp sgt i32 %i.ac, %i.ah
  %spec.select = select i1 %i.ai, i32 %i.w, i32 %.0214314
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph316
  %.1215.a = phi i32 [ %.0214314, %.lr.ph316 ], [ %spec.select, %bb.g ] ; 4 uses
  %4 = sext i32 %.1215.a to i64
  %5 = getelementptr inbounds [8 x i8], ptr %3, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !10       ; 2 uses
  %7 = getelementptr inbounds [4 x i8], ptr %0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !4
  %i.aj = icmp sgt i32 %8, %.0243
  br i1 %i.aj, label %bb.i, label %._crit_edge317

bb.i:                                             ; preds = %bb.h
  %i.ak = sext i32 %.0224312 to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ak
  store i64 %6, ptr %i.al, align 8, !tbaa !10
  %.0214.in = shl nsw i32 %.1215.a, 1             ; 2 uses
  %.0214 = or disjoint i32 %.0214.in, 1           ; 2 uses
  %i.am = icmp slt i32 %.0214, %.1
  br i1 %i.am, label %.lr.ph316, label %._crit_edge317, !llvm.loop !38

._crit_edge317:                                   ; preds = %bb.i, %bb.h, %bb.f
  %.0224.lcssa = phi i32 [ %.1230, %bb.f ], [ %.0224312, %bb.h ], [ %.1215.a, %bb.i ]
  %i.an = sext i32 %.0224.lcssa to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %3, i64 %i.an
  store i64 %.0244, ptr %i.ao, align 8, !tbaa !10
  br label %bb.b

.preheader:                                       ; preds = %._crit_edge, %._crit_edge306
  %.2231 = phi i32 [ %.3232, %._crit_edge306 ], [ %i.f, %._crit_edge ] ; 3 uses
  %.2 = phi i32 [ %.3, %._crit_edge306 ], [ %1, %._crit_edge ] ; 2 uses
  %i.ap = icmp sgt i32 %.2231, 0
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.preheader
  %i.aq = add nsw i32 %.2231, -1                  ; 2 uses
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !10 ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !10
  br label %bb.m

bb.k:                                             ; preds = %.preheader
  %i.aw = add nsw i32 %.2, -1                     ; 3 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = sext i32 %i.aw to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ay ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !10 ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !10
  %i.bd = load i64, ptr %3, align 8, !tbaa !10
  store i64 %i.bd, ptr %i.az, align 8, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.1245 = phi i64 [ %i.at, %bb.j ], [ %i.ba, %bb.l ]
  %.0242 = phi i64 [ %i.av, %bb.j ], [ %i.bc, %bb.l ]
  %.3232 = phi i32 [ %i.aq, %bb.j ], [ %.2231, %bb.l ] ; 4 uses
  %.3 = phi i32 [ %.2, %bb.j ], [ %i.aw, %bb.l ]  ; 4 uses
  %.2216.in299 = shl nsw i32 %.3232, 1            ; 2 uses
  %.2216300 = or disjoint i32 %.2216.in299, 1     ; 2 uses
  %i.be = icmp slt i32 %.2216300, %.3
  br i1 %i.be, label %.lr.ph305, label %._crit_edge306

.lr.ph305:                                        ; preds = %bb.m, %bb.p
  %.2216303 = phi i32 [ %.2216, %bb.p ], [ %.2216300, %bb.m ] ; 3 uses
  %.2216.in302 = phi i32 [ %.2216.in, %bb.p ], [ %.2216.in299, %bb.m ]
  %.1225301 = phi i32 [ %.3217, %bb.p ], [ %.3232, %bb.m ] ; 2 uses
  %i.bf = add nsw i32 %.2216.in302, 2             ; 3 uses
  %i.bg = icmp slt i32 %i.bf, %.3
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph305
  %i.bh = sext i32 %i.bf to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !10
  %i.bk = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.bm = sext i32 %.2216303 to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !10
  %i.bp = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !10
  %i.br = icmp sgt i64 %i.bl, %i.bq
  %spec.select260 = select i1 %i.br, i32 %i.bf, i32 %.2216303
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph305
  %.3217 = phi i32 [ %.2216303, %.lr.ph305 ], [ %spec.select260, %bb.n ] ; 4 uses
  %9 = sext i32 %.3217 to i64
  %10 = getelementptr inbounds [8 x i8], ptr %3, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !10     ; 2 uses
  %12 = getelementptr inbounds [8 x i8], ptr %0, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !10
  %i.bs = icmp sgt i64 %13, %.0242
  br i1 %i.bs, label %bb.p, label %._crit_edge306

bb.p:                                             ; preds = %bb.o
  %i.bt = sext i32 %.1225301 to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bt
  store i64 %11, ptr %i.bu, align 8, !tbaa !10
  %.2216.in = shl nsw i32 %.3217, 1               ; 2 uses
  %.2216 = or disjoint i32 %.2216.in, 1           ; 2 uses
  %i.bv = icmp slt i32 %.2216, %.3
  br i1 %i.bv, label %.lr.ph305, label %._crit_edge306, !llvm.loop !39

._crit_edge306:                                   ; preds = %bb.p, %bb.o, %bb.m
  %.1225.lcssa = phi i32 [ %.3232, %bb.m ], [ %.1225301, %bb.o ], [ %.3217, %bb.p ]
  %i.bw = sext i32 %.1225.lcssa to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bw
  store i64 %.1245, ptr %i.bx, align 8, !tbaa !10
  br label %.preheader

bb.q:                                             ; preds = %.preheader349, %._crit_edge295
  %.4233 = phi i32 [ %.5234, %._crit_edge295 ], [ %i.f, %.preheader349 ] ; 3 uses
  %.4 = phi i32 [ %.5, %._crit_edge295 ], [ %1, %.preheader349 ] ; 2 uses
  %i.by = icmp sgt i32 %.4233, 0
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bz = add nsw i32 %.4233, -1                  ; 2 uses
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !10 ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !13
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.cf = add nsw i32 %.4, -1                     ; 3 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = sext i32 %i.cf to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ch ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !10 ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !13
  %i.cm = load i64, ptr %3, align 8, !tbaa !10
  store i64 %i.cm, ptr %i.ci, align 8, !tbaa !10
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.2246 = phi i64 [ %i.cc, %bb.r ], [ %i.cj, %bb.t ]
  %.0241 = phi i64 [ %i.ce, %bb.r ], [ %i.cl, %bb.t ]
  %.5234 = phi i32 [ %i.bz, %bb.r ], [ %.4233, %bb.t ] ; 4 uses
  %.5 = phi i32 [ %.4, %bb.r ], [ %i.cf, %bb.t ]  ; 4 uses
  %.4218.in288 = shl nsw i32 %.5234, 1            ; 2 uses
  %.4218289 = or disjoint i32 %.4218.in288, 1     ; 2 uses
  %i.cn = icmp slt i32 %.4218289, %.5
  br i1 %i.cn, label %.lr.ph294, label %._crit_edge295

.lr.ph294:                                        ; preds = %bb.u, %bb.x
  %.4218292 = phi i32 [ %.4218, %bb.x ], [ %.4218289, %bb.u ] ; 3 uses
  %.4218.in291 = phi i32 [ %.4218.in, %bb.x ], [ %.4218.in288, %bb.u ]
  %.2226290 = phi i32 [ %.5219, %bb.x ], [ %.5234, %bb.u ] ; 2 uses
  %i.co = add nsw i32 %.4218.in291, 2             ; 3 uses
  %i.cp = icmp slt i32 %i.co, %.5
  br i1 %i.cp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph294
  %i.cq = sext i32 %i.co to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %3, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !10
  %i.ct = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !13
  %i.cv = sext i32 %.4218292 to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %3, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !10
  %i.cy = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !13
  %i.da = icmp sgt i64 %i.cu, %i.cz
  %spec.select261 = select i1 %i.da, i32 %i.co, i32 %.4218292
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph294
  %.5219 = phi i32 [ %.4218292, %.lr.ph294 ], [ %spec.select261, %bb.v ] ; 4 uses
  %14 = sext i32 %.5219 to i64
  %15 = getelementptr inbounds [8 x i8], ptr %3, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !10     ; 2 uses
  %17 = getelementptr inbounds [8 x i8], ptr %0, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !13
  %i.db = icmp sgt i64 %18, %.0241
  br i1 %i.db, label %bb.x, label %._crit_edge295

bb.x:                                             ; preds = %bb.w
  %i.dc = sext i32 %.2226290 to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %3, i64 %i.dc
  store i64 %16, ptr %i.dd, align 8, !tbaa !10
  %.4218.in = shl nsw i32 %.5219, 1               ; 2 uses
  %.4218 = or disjoint i32 %.4218.in, 1           ; 2 uses
  %i.de = icmp slt i32 %.4218, %.5
  br i1 %i.de, label %.lr.ph294, label %._crit_edge295, !llvm.loop !40

._crit_edge295:                                   ; preds = %bb.x, %bb.w, %bb.u
  %.2226.lcssa = phi i32 [ %.5234, %bb.u ], [ %.2226290, %bb.w ], [ %.5219, %bb.x ]
  %i.df = sext i32 %.2226.lcssa to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %3, i64 %i.df
  store i64 %.2246, ptr %i.dg, align 8, !tbaa !10
  br label %bb.q

bb.y:                                             ; preds = %.preheader351, %._crit_edge284
  %.6235 = phi i32 [ %.7236, %._crit_edge284 ], [ %i.f, %.preheader351 ] ; 3 uses
  %.6 = phi i32 [ %.7, %._crit_edge284 ], [ %1, %.preheader351 ] ; 2 uses
  %i.dh = icmp sgt i32 %.6235, 0
  br i1 %i.dh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.di = add nsw i32 %.6235, -1                  ; 2 uses
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !10 ; 2 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dl
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !16
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.do = add nsw i32 %.6, -1                     ; 3 uses
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dq = sext i32 %i.do to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %3, i64 %i.dq ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !10 ; 2 uses
  %i.dt = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !16
  %i.dv = load i64, ptr %3, align 8, !tbaa !10
  store i64 %i.dv, ptr %i.dr, align 8, !tbaa !10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.3247 = phi i64 [ %i.dl, %bb.z ], [ %i.ds, %bb.ab ]
  %.0240 = phi float [ %i.dn, %bb.z ], [ %i.du, %bb.ab ]
  %.7236 = phi i32 [ %i.di, %bb.z ], [ %.6235, %bb.ab ] ; 4 uses
  %.7 = phi i32 [ %.6, %bb.z ], [ %i.do, %bb.ab ] ; 4 uses
  %.6220.in277 = shl nsw i32 %.7236, 1            ; 2 uses
  %.6220278 = or disjoint i32 %.6220.in277, 1     ; 2 uses
  %i.dw = icmp slt i32 %.6220278, %.7
  br i1 %i.dw, label %.lr.ph283, label %._crit_edge284

.lr.ph283:                                        ; preds = %bb.ac, %bb.ag
  %.6220281 = phi i32 [ %.6220, %bb.ag ], [ %.6220278, %bb.ac ] ; 4 uses
  %.6220.in280 = phi i32 [ %.6220.in, %bb.ag ], [ %.6220.in277, %bb.ac ]
  %.3227279 = phi i32 [ %.7221, %bb.ag ], [ %.7236, %bb.ac ] ; 2 uses
  %i.dx = add nsw i32 %.6220.in280, 2             ; 3 uses
  %i.dy = icmp slt i32 %i.dx, %.7
  br i1 %i.dy, label %bb.ad, label %.lr.ph283._crit_edge

.lr.ph283._crit_edge:                             ; preds = %.lr.ph283
  %.pre.a = sext i32 %.6220281 to i64
  br label %bb.af

bb.ad:                                            ; preds = %.lr.ph283
  %i.dz = sext i32 %i.dx to i64                   ; 2 uses
  %i.ea = getelementptr inbounds [8 x i8], ptr %3, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !10
  %i.ec = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eb
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !16
  %i.ee = sext i32 %.6220281 to i64               ; 2 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !10
  %i.eh = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eg
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !16
  %i.ej = fcmp ogt float %i.ed, %i.ei
  br i1 %i.ej, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph283._crit_edge, %bb.ae, %bb.ad
  %.pre-phi = phi i64 [ %.pre.a, %.lr.ph283._crit_edge ], [ %i.dz, %bb.ae ], [ %i.ee, %bb.ad ]
  %.7221 = phi i32 [ %.6220281, %.lr.ph283._crit_edge ], [ %i.dx, %bb.ae ], [ %.6220281, %bb.ad ] ; 3 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %3, i64 %.pre-phi
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !10 ; 2 uses
  %i.em = getelementptr inbounds [4 x i8], ptr %0, i64 %i.el
  %i.en = load float, ptr %i.em, align 4, !tbaa !16
  %i.eo = fcmp ogt float %i.en, %.0240
  br i1 %i.eo, label %bb.ag, label %._crit_edge284

bb.ag:                                            ; preds = %bb.af
  %i.ep = sext i32 %.3227279 to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ep
  store i64 %i.el, ptr %i.eq, align 8, !tbaa !10
  %.6220.in = shl nsw i32 %.7221, 1               ; 2 uses
  %.6220 = or disjoint i32 %.6220.in, 1           ; 2 uses
  %i.er = icmp slt i32 %.6220, %.7
  br i1 %i.er, label %.lr.ph283, label %._crit_edge284, !llvm.loop !41

._crit_edge284:                                   ; preds = %bb.ag, %bb.af, %bb.ac
  %.3227.lcssa = phi i32 [ %.7236, %bb.ac ], [ %.3227279, %bb.af ], [ %.7221, %bb.ag ]
  %i.es = sext i32 %.3227.lcssa to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %3, i64 %i.es
  store i64 %.3247, ptr %i.et, align 8, !tbaa !10
  br label %bb.y

bb.ah:                                            ; preds = %.preheader353, %._crit_edge274
  %.8237 = phi i32 [ %.9238, %._crit_edge274 ], [ %i.f, %.preheader353 ] ; 3 uses
  %.8 = phi i32 [ %.9, %._crit_edge274 ], [ %1, %.preheader353 ] ; 2 uses
  %i.eu = icmp sgt i32 %.8237, 0
  br i1 %i.eu, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ev = add nsw i32 %.8237, -1                  ; 2 uses
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ew
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !10 ; 2 uses
  %i.ez = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ey
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !19
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.fb = add nsw i32 %.8, -1                     ; 3 uses
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fd = sext i32 %i.fb to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %3, i64 %i.fd ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !10 ; 2 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ff
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !19
  %i.fi = load i64, ptr %3, align 8, !tbaa !10
  store i64 %i.fi, ptr %i.fe, align 8, !tbaa !10
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %.4248 = phi i64 [ %i.ey, %bb.ai ], [ %i.ff, %bb.ak ]
  %.0239 = phi double [ %i.fa, %bb.ai ], [ %i.fh, %bb.ak ]
  %.9238 = phi i32 [ %i.ev, %bb.ai ], [ %.8237, %bb.ak ] ; 4 uses
  %.9 = phi i32 [ %.8, %bb.ai ], [ %i.fb, %bb.ak ] ; 4 uses
  %.8222.in267 = shl nsw i32 %.9238, 1            ; 2 uses
  %.8222268 = or disjoint i32 %.8222.in267, 1     ; 2 uses
  %i.fj = icmp slt i32 %.8222268, %.9
  br i1 %i.fj, label %.lr.ph273, label %._crit_edge274

.lr.ph273:                                        ; preds = %bb.al, %bb.ap
  %.8222271 = phi i32 [ %.8222, %bb.ap ], [ %.8222268, %bb.al ] ; 4 uses
  %.8222.in270 = phi i32 [ %.8222.in, %bb.ap ], [ %.8222.in267, %bb.al ]
  %.4228269 = phi i32 [ %.9223, %bb.ap ], [ %.9238, %bb.al ] ; 2 uses
  %i.fk = add nsw i32 %.8222.in270, 2             ; 3 uses
  %i.fl = icmp slt i32 %i.fk, %.9
  br i1 %i.fl, label %bb.am, label %.lr.ph273._crit_edge

.lr.ph273._crit_edge:                             ; preds = %.lr.ph273
  %.pre326 = sext i32 %.8222271 to i64
  br label %bb.ao

bb.am:                                            ; preds = %.lr.ph273
  %i.fm = sext i32 %i.fk to i64                   ; 2 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %3, i64 %i.fm
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !10
  %i.fp = getelementptr inbounds [8 x i8], ptr %0, i64 %i.fo
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !19
  %i.fr = sext i32 %.8222271 to i64               ; 2 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %3, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !10
  %i.fu = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ft
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !19
  %i.fw = fcmp ogt double %i.fq, %i.fv
  br i1 %i.fw, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph273._crit_edge, %bb.an, %bb.am
  %.pre-phi327 = phi i64 [ %.pre326, %.lr.ph273._crit_edge ], [ %i.fm, %bb.an ], [ %i.fr, %bb.am ]
  %.9223 = phi i32 [ %.8222271, %.lr.ph273._crit_edge ], [ %i.fk, %bb.an ], [ %.8222271, %bb.am ] ; 3 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %3, i64 %.pre-phi327
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !10 ; 2 uses
  %i.fz = getelementptr inbounds [8 x i8], ptr %0, i64 %i.fy
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !19
  %i.gb = fcmp ogt double %i.ga, %.0239
  br i1 %i.gb, label %bb.ap, label %._crit_edge274

bb.ap:                                            ; preds = %bb.ao
  %i.gc = sext i32 %.4228269 to i64
  %i.gd = getelementptr inbounds [8 x i8], ptr %3, i64 %i.gc
  store i64 %i.fy, ptr %i.gd, align 8, !tbaa !10
  %.8222.in = shl nsw i32 %.9223, 1               ; 2 uses
  %.8222 = or disjoint i32 %.8222.in, 1           ; 2 uses
  %i.ge = icmp slt i32 %.8222, %.9
  br i1 %i.ge, label %.lr.ph273, label %._crit_edge274, !llvm.loop !42

._crit_edge274:                                   ; preds = %bb.ap, %bb.ao, %bb.al
  %.4228.lcssa = phi i32 [ %.9238, %bb.al ], [ %.4228269, %bb.ao ], [ %.9223, %bb.ap ]
  %i.gf = sext i32 %.4228.lcssa to i64
  %i.gg = getelementptr inbounds [8 x i8], ptr %3, i64 %i.gf
  store i64 %.4248, ptr %i.gg, align 8, !tbaa !10
  br label %bb.ah

bb.aq:                                            ; preds = %._crit_edge
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  tail call void @exit(i32 noundef 1) #3
  unreachable

.loopexit:                                        ; preds = %bb.aj, %bb.aa, %bb.s, %bb.k, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold noreturn nounwind }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = distinct !{!12, !9}
!13 = !{!14, !14, i64 0}
!14 = !{!"long long", !6, i64 0}
!15 = distinct !{!15, !9}
!16 = !{!17, !17, i64 0}
!17 = !{!"float", !6, i64 0}
!18 = distinct !{!18, !9}
!19 = !{!20, !20, i64 0}
!20 = !{!"double", !6, i64 0}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9, !28, !29}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = distinct !{!30, !9, !29, !28}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9, !28, !29}
!37 = distinct !{!37, !9, !29, !28}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
!42 = distinct !{!42, !9}
end_hunk_0
