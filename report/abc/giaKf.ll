inline.NumInlined: 299
inline.NumDeleted: 103
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Kf_SetPrepare:bb.a
  store i64 0, ptr %i.k, align 8, !tbaa !101
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store i32 0, ptr %i.l, align 8, !tbaa !204
  %i.m = load i32, ptr %.03540.i, align 4, !tbaa !40
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr [4 x i8], ptr %.03540.i, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  store i32 %i.q, ptr %i.r, align 4, !tbaa !146
  %i.s = load i32, ptr %.03540.i, align 4, !tbaa !40
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr [4 x i8], ptr %.03540.i, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 %i.w, ptr %i.x, align 4, !tbaa !114
  %i.y = load i32, ptr %.03540.i, align 4, !tbaa !40 ; 3 uses
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr [4 x i8], ptr %.03540.i, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 12
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store float %i.ac, ptr %i.ad, align 8, !tbaa !115
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  store i32 %i.y, ptr %i.ae, align 4, !tbaa !99
  %i.af = icmp sgt i32 %i.y, 0
  br i1 %i.af, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %.lr.ph43.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.ah = phi i32 [ 0, %.lr.ph.i ], [ %i.aw, %bb.d ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.ai = phi i64 [ 0, %.lr.ph.i ], [ %i.aq, %bb.d ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.03540.i, i64 %indvars.iv.next.i ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !40
  %i.al = ashr i32 %i.ak, 1                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.i
  store i32 %i.al, ptr %i.am, align 4, !tbaa !40
  %i.an = and i32 %i.al, 63
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = or i64 %i.ap, %i.ai                     ; 2 uses
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !40
  %i.as = and i32 %i.ar, 1
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.at = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.au = shl nuw i32 1, %i.at
  %i.av = or i32 %i.au, %i.ah                     ; 2 uses
  store i32 %i.av, ptr %i.l, align 8, !tbaa !204
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aw = phi i32 [ %i.ah, %bb.b ], [ %i.av, %bb.c ]
  %i.ax = load i32, ptr %.03540.i, align 4, !tbaa !40
  %i.ay = sext i32 %i.ax to i64                   ; 2 uses
  %i.az = icmp slt i64 %indvars.iv.next.i, %i.ay
  br i1 %i.az, label %bb.b, label %._crit_edge.i, !llvm.loop !205

._crit_edge.i:                                    ; preds = %bb.d
  store i64 %i.aq, ptr %i.k, align 8, !tbaa !101
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %.lr.ph43.i
  %.pre-phi.i = phi i64 [ %i.ay, %._crit_edge.i ], [ %i.z, %.lr.ph43.i ]
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 3 uses
  %i.ba = getelementptr [4 x i8], ptr %.03540.i, i64 %.pre-phi.i
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  %i.bc = load i32, ptr %1, align 4, !tbaa !40
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp slt i64 %indvars.iv.next51.i, %i.bd
  br i1 %i.be, label %.lr.ph43.i, label %._crit_edge44.loopexit.i, !llvm.loop !206

._crit_edge44.loopexit.i:                         ; preds = %bb.e
  %i.bf = trunc nuw nsw i64 %indvars.iv.next51.i to i32
  br label %Kf_SetLoadCuts.exit

Kf_SetLoadCuts.exit:                              ; preds = %bb.a, %._crit_edge44.loopexit.i
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.bf, %._crit_edge44.loopexit.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.0.lcssa.i, ptr %i.bg, align 4, !tbaa !95
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 5288
  %i.bi = load i32, ptr %2, align 4, !tbaa !40
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph43.preheader.i12, label %Kf_SetLoadCuts.exit24

.lr.ph43.preheader.i12:                           ; preds = %Kf_SetLoadCuts.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.lr.ph43.i13

.lr.ph43.i13:                                     ; preds = %bb.i, %.lr.ph43.preheader.i12
  %indvars.iv50.i14 = phi i64 [ 0, %.lr.ph43.preheader.i12 ], [ %indvars.iv.next51.i17, %bb.i ] ; 2 uses
  %.03540.i15 = phi ptr [ %i.bk, %.lr.ph43.preheader.i12 ], [ %i.dc, %bb.i ] ; 9 uses
  %i.bl = getelementptr inbounds nuw [96 x i8], ptr %i.bh, i64 %indvars.iv50.i14 ; 8 uses
  store i64 0, ptr %i.bl, align 8, !tbaa !101
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  store i32 0, ptr %i.bm, align 8, !tbaa !204
  %i.bn = load i32, ptr %.03540.i15, align 4, !tbaa !40
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr [4 x i8], ptr %.03540.i15, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !40
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !146
  %i.bt = load i32, ptr %.03540.i15, align 4, !tbaa !40
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr [4 x i8], ptr %.03540.i15, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !40
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !114
  %i.bz = load i32, ptr %.03540.i15, align 4, !tbaa !40 ; 3 uses
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  %i.cb = getelementptr [4 x i8], ptr %.03540.i15, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 12
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !40
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store float %i.cd, ptr %i.ce, align 8, !tbaa !115
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bl, i64 28
  store i32 %i.bz, ptr %i.cf, align 4, !tbaa !99
  %i.cg = icmp sgt i32 %i.bz, 0
  br i1 %i.cg, label %.lr.ph.i19, label %bb.i

.lr.ph.i19:                                       ; preds = %.lr.ph43.i13
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i19
  %i.ci = phi i32 [ 0, %.lr.ph.i19 ], [ %i.cx, %bb.h ] ; 2 uses
  %indvars.iv.i20 = phi i64 [ 0, %.lr.ph.i19 ], [ %indvars.iv.next.i21, %bb.h ] ; 3 uses
  %i.cj = phi i64 [ 0, %.lr.ph.i19 ], [ %i.cr, %bb.h ]
  %indvars.iv.next.i21 = add nuw nsw i64 %indvars.iv.i20, 1 ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.03540.i15, i64 %indvars.iv.next.i21 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !40
  %i.cm = ashr i32 %i.cl, 1                       ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.i20
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !40
  %i.co = and i32 %i.cm, 63
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = shl nuw i64 1, %i.cp
  %i.cr = or i64 %i.cq, %i.cj                     ; 2 uses
  %i.cs = load i32, ptr %i.ck, align 4, !tbaa !40
  %i.ct = and i32 %i.cs, 1
  %.not.i22 = icmp eq i32 %i.ct, 0
  br i1 %.not.i22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cu = trunc nuw nsw i64 %indvars.iv.i20 to i32
  %i.cv = shl nuw i32 1, %i.cu
  %i.cw = or i32 %i.cv, %i.ci                     ; 2 uses
  store i32 %i.cw, ptr %i.bm, align 8, !tbaa !204
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cx = phi i32 [ %i.ci, %bb.f ], [ %i.cw, %bb.g ]
  %i.cy = load i32, ptr %.03540.i15, align 4, !tbaa !40
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %i.da = icmp slt i64 %indvars.iv.next.i21, %i.cz
  br i1 %i.da, label %bb.f, label %._crit_edge.i23, !llvm.loop !205

._crit_edge.i23:                                  ; preds = %bb.h
  store i64 %i.cr, ptr %i.bl, align 8, !tbaa !101
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i23, %.lr.ph43.i13
  %.pre-phi.i16 = phi i64 [ %i.cz, %._crit_edge.i23 ], [ %i.ca, %.lr.ph43.i13 ]
  %indvars.iv.next51.i17 = add nuw nsw i64 %indvars.iv50.i14, 1 ; 3 uses
  %i.db = getelementptr [4 x i8], ptr %.03540.i15, i64 %.pre-phi.i16
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  %i.dd = load i32, ptr %2, align 4, !tbaa !40
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp slt i64 %indvars.iv.next51.i17, %i.de
  br i1 %i.df, label %.lr.ph43.i13, label %._crit_edge44.loopexit.i18, !llvm.loop !206

._crit_edge44.loopexit.i18:                       ; preds = %bb.i
  %i.dg = trunc nuw nsw i64 %indvars.iv.next51.i17 to i32
  br label %Kf_SetLoadCuts.exit24

Kf_SetLoadCuts.exit24:                            ; preds = %Kf_SetLoadCuts.exit, %._crit_edge44.loopexit.i18
  %.0.lcssa.i11 = phi i32 [ 0, %Kf_SetLoadCuts.exit ], [ %i.dg, %._crit_edge44.loopexit.i18 ]
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.0.lcssa.i11, ptr %i.dh, align 8, !tbaa !96
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.di, align 4, !tbaa !102
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @Kf_SetSelectBest(ptr noundef %0, i32 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %i.c = zext i16 %i.b to i64                     ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 2144       ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8360 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 106664 ; 9 uses
  %.not.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %select.unfold._crit_edge.split.us.us
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %select.unfold._crit_edge.split.us.us ], [ 0, %bb.a ] ; 3 uses
  %.060.us = phi i32 [ %.1.lcssa.us, %select.unfold._crit_edge.split.us.us ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv76
  %i.i = load i32, ptr %i.h, align 4, !tbaa !40   ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %select.unfold._crit_edge.split.us.us, label %.lr.ph.us

select.unfold._crit_edge.split.us.us:             ; preds = %Kf_SetStoreAddOne.exit.us.us, %.split.us
  %.1.lcssa.us = phi i32 [ %.060.us, %.split.us ], [ %.0.i.us.us, %Kf_SetStoreAddOne.exit.us.us ] ; 2 uses
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  %exitcond80.not = icmp eq i64 %indvars.iv76, %i.c
  br i1 %exitcond80.not, label %.split62.us, label %.split.us, !llvm.loop !207

.lr.ph.us:                                        ; preds = %.split.us
  %i.k = load i16, ptr %i.f, align 2, !tbaa !120
  %i.l = zext i16 %i.k to i32
  %i.m = add nsw i32 %i.l, -1
  br label %bb.b

bb.b:                                             ; preds = %Kf_SetStoreAddOne.exit.us.us, %.lr.ph.us
  %.158.us.us = phi i32 [ %.060.us, %.lr.ph.us ], [ %.0.i.us.us, %Kf_SetStoreAddOne.exit.us.us ] ; 5 uses
  %.pn108.in = phi i32 [ %i.i, %.lr.ph.us ], [ %i.as, %Kf_SetStoreAddOne.exit.us.us ]
  %.pn108 = zext nneg i32 %.pn108.in to i64
  %.04457.us.us = getelementptr inbounds nuw [96 x i8], ptr %i.e, i64 %.pn108 ; 2 uses
  %i.n = sext i32 %.158.us.us to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.n
  store ptr %.04457.us.us, ptr %i.o, align 8, !tbaa !144
  %i.p = icmp eq i32 %.158.us.us, 0
  br i1 %i.p, label %Kf_SetStoreAddOne.exit.us.us, label %.preheader.i.us.us

.preheader.i.us.us:                               ; preds = %bb.b
  %i.q = icmp sgt i32 %.158.us.us, 0
  br i1 %i.q, label %.lr.ph.split.us.i.us.us, label %Kf_CutCompare.exit.thread.i.us.us

.lr.ph.split.us.i.us.us:                          ; preds = %.preheader.i.us.us, %Kf_CutCompare.exit.us.i.us.us
  %.02327.us.i.us.us = phi i32 [ %i.an, %Kf_CutCompare.exit.us.i.us.us ], [ %.158.us.us, %.preheader.i.us.us ] ; 3 uses
  %i.r = zext nneg i32 %.02327.us.i.us.us to i64
  %i.s = getelementptr [8 x i8], ptr %i.g, i64 %i.r ; 3 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -8       ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !144  ; 4 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !144  ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !114  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !114  ; 2 uses
  %i.aa = icmp slt i32 %i.x, %i.z
  br i1 %i.aa, label %Kf_CutCompare.exit.thread.i.us.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us.i.us.us
  %i.ab = icmp sgt i32 %i.x, %i.z
  br i1 %i.ab, label %Kf_CutCompare.exit.us.i.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !99 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !99 ; 2 uses
  %i.ag = icmp slt i32 %i.ad, %i.af
  br i1 %i.ag, label %Kf_CutCompare.exit.thread.i.us.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = icmp sgt i32 %i.ad, %i.af
  br i1 %i.ah, label %Kf_CutCompare.exit.us.i.us.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !115
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.al = load float, ptr %i.ak, align 8, !tbaa !115
  %i.am = fcmp ogt float %i.aj, %i.al
  br i1 %i.am, label %Kf_CutCompare.exit.us.i.us.us, label %Kf_CutCompare.exit.thread.i.us.us

Kf_CutCompare.exit.us.i.us.us:                    ; preds = %bb.f, %bb.e, %bb.c
  store ptr %i.v, ptr %i.t, align 8, !tbaa !144
  store ptr %i.u, ptr %i.s, align 8, !tbaa !144
  %i.an = add nsw i32 %.02327.us.i.us.us, -1
  %i.ao = icmp sgt i32 %.02327.us.i.us.us, 1
  br i1 %i.ao, label %.lr.ph.split.us.i.us.us, label %Kf_CutCompare.exit.thread.i.us.us, !llvm.loop !208

Kf_CutCompare.exit.thread.i.us.us:                ; preds = %.lr.ph.split.us.i.us.us, %bb.d, %bb.f, %Kf_CutCompare.exit.us.i.us.us, %.preheader.i.us.us
  %i.ap = add nsw i32 %.158.us.us, 1
  %i.aq = tail call range(i32 -2147483648, 65535) i32 @llvm.smin.i32(i32 %i.ap, i32 range(i32 -1, 65535) %i.m)
  br label %Kf_SetStoreAddOne.exit.us.us

Kf_SetStoreAddOne.exit.us.us:                     ; preds = %Kf_CutCompare.exit.thread.i.us.us, %bb.b
  %.0.i.us.us = phi i32 [ %i.aq, %Kf_CutCompare.exit.thread.i.us.us ], [ 1, %bb.b ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.04457.us.us, i64 24
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !113 ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %select.unfold._crit_edge.split.us.us, label %bb.b

.split:                                           ; preds = %bb.a, %select.unfold._crit_edge.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %select.unfold._crit_edge.split ], [ 0, %bb.a ] ; 3 uses
  %.060 = phi i32 [ %.1.lcssa, %select.unfold._crit_edge.split ], [ 0, %bb.a ] ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4, !tbaa !40 ; 2 uses
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %select.unfold._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %i.ax = load i16, ptr %i.f, align 2, !tbaa !120
  %i.ay = zext i16 %i.ax to i32
  %i.az = add nsw i32 %i.ay, -1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %Kf_SetStoreAddOne.exit
  %.158 = phi i32 [ %.060, %.lr.ph ], [ %.0.i, %Kf_SetStoreAddOne.exit ] ; 5 uses
  %.pn.in = phi i32 [ %i.av, %.lr.ph ], [ %i.ce, %Kf_SetStoreAddOne.exit ]
  %.pn = zext nneg i32 %.pn.in to i64
  %.04457 = getelementptr inbounds nuw [96 x i8], ptr %i.e, i64 %.pn ; 2 uses
  %i.ba = sext i32 %.158 to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ba
  store ptr %.04457, ptr %i.bb, align 8, !tbaa !144
  %i.bc = icmp eq i32 %.158, 0
  br i1 %i.bc, label %Kf_SetStoreAddOne.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g
  %i.bd = icmp sgt i32 %.158, 0
  br i1 %i.bd, label %.lr.ph.i, label %Kf_CutCompare.exit.thread.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.be = zext nneg i32 %.158 to i64
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %Kf_CutCompare.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.be, %.lr.ph.i ], [ %indvars.iv.next.i, %Kf_CutCompare.exit.i ] ; 3 uses
  %i.bf = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv.i ; 3 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 -8     ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !144 ; 4 uses
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !144 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !115 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !115 ; 2 uses
  %i.bn = fcmp olt float %i.bk, %i.bm
  br i1 %i.bn, label %Kf_CutCompare.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.i
  %i.bo = fcmp ogt float %i.bk, %i.bm
  br i1 %i.bo, label %Kf_CutCompare.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !114 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !114 ; 2 uses
  %i.bt = icmp slt i32 %i.bq, %i.bs
  br i1 %i.bt, label %Kf_CutCompare.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = icmp sgt i32 %i.bq, %i.bs
  br i1 %i.bu, label %Kf_CutCompare.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 28
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !99
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !99
  %i.bz = icmp sgt i32 %i.bw, %i.by
  br i1 %i.bz, label %Kf_CutCompare.exit.i, label %Kf_CutCompare.exit.thread.i

Kf_CutCompare.exit.i:                             ; preds = %bb.k, %bb.j, %bb.h
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !144
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !144
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ca = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.ca, label %.lr.ph.split.i, label %Kf_CutCompare.exit.thread.i, !llvm.loop !208

Kf_CutCompare.exit.thread.i:                      ; preds = %Kf_CutCompare.exit.i, %bb.k, %bb.i, %.lr.ph.split.i, %.preheader.i
  %i.cb = add nsw i32 %.158, 1
  %i.cc = tail call range(i32 -2147483648, 65535) i32 @llvm.smin.i32(i32 %i.cb, i32 range(i32 -1, 65535) %i.az)
  br label %Kf_SetStoreAddOne.exit

Kf_SetStoreAddOne.exit:                           ; preds = %bb.g, %Kf_CutCompare.exit.thread.i
  %.0.i = phi i32 [ %i.cc, %Kf_CutCompare.exit.thread.i ], [ 1, %bb.g ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.04457, i64 24
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !113 ; 2 uses
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %select.unfold._crit_edge.split, label %bb.g

select.unfold._crit_edge.split:                   ; preds = %Kf_SetStoreAddOne.exit, %.split
  %.1.lcssa = phi i32 [ %.060, %.split ], [ %.0.i, %Kf_SetStoreAddOne.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %i.c
  br i1 %exitcond.not, label %.split62.us, label %.split, !llvm.loop !207

.split62.us:                                      ; preds = %select.unfold._crit_edge.split, %select.unfold._crit_edge.split.us.us
  %.us-phi63 = phi i32 [ %.1.lcssa.us, %select.unfold._crit_edge.split.us.us ], [ %.1.lcssa, %select.unfold._crit_edge.split ] ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  store i32 %.us-phi63, ptr %i.cg, align 4, !tbaa !102
  %i.ch = load ptr, ptr %i.g, align 8, !tbaa !144
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 106920
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !129
  %i.cj = zext i16 %i.b to i64                    ; 2 uses
  %i.ck = shl nuw nsw i64 %i.cj, 2
  %i.cl = add nuw nsw i64 %i.ck, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.d, i8 -1, i64 %i.cl, i1 false), !tbaa !40
  %i.cm = icmp sgt i32 %.us-phi63, 0
  br i1 %i.cm, label %.lr.ph67, label %._crit_edge

.lr.ph67:                                         ; preds = %.split62.us
  %i.cn = ptrtoint ptr %i.e to i64                ; 3 uses
  %wide.trip.count87 = zext nneg i32 %.us-phi63 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count87, 1
  %2 = icmp eq i32 %.us-phi63, 1
  br i1 %2, label %.epil.preheader, label %.lr.ph67.new

.lr.ph67.new:                                     ; preds = %.lr.ph67
  %unroll_iter = and i64 %wide.trip.count87, 2147483646
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph67.new
  %indvars.iv84 = phi i64 [ 0, %.lr.ph67.new ], [ %indvars.iv.next85.1, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph67.new ], [ %niter.next.1, %bb.l ]
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv84
  %4 = load ptr, ptr %3, align 8, !tbaa !144      ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 28
  %6 = load i32, ptr %5, align 4, !tbaa !99
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr %i.d, i64 %7 ; 2 uses
  %9 = load i32, ptr %8, align 4, !tbaa !40
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %9, ptr %10, align 8, !tbaa !113
  %11 = ptrtoint ptr %4 to i64
  %12 = sub i64 %11, %i.cn
  %13 = sdiv exact i64 %12, 96
  %14 = trunc i64 %13 to i32
  store i32 %14, ptr %8, align 4, !tbaa !40
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv84
  %15 = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cp = load ptr, ptr %15, align 8, !tbaa !144  ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 28
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !99
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.cs ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !40
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store i32 %i.cu, ptr %i.cv, align 8, !tbaa !113
  %i.cw = ptrtoint ptr %i.cp to i64
  %i.cx = sub i64 %i.cw, %i.cn
  %i.cy = sdiv exact i64 %i.cx, 96
  %i.cz = trunc i64 %i.cy to i32
  store i32 %i.cz, ptr %i.ct, align 4, !tbaa !40
  %indvars.iv.next85.1 = add nuw nsw i64 %indvars.iv84, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.l, !llvm.loop !209

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph67
  %indvars.iv84.epil.init = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next85.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i32 %.us-phi63 to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %16 = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv84.epil.init
  %17 = load ptr, ptr %16, align 8, !tbaa !144    ; 3 uses
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 28
  %19 = load i32, ptr %18, align 4, !tbaa !99
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i8], ptr %i.d, i64 %20 ; 2 uses
  %22 = load i32, ptr %21, align 4, !tbaa !40
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i32 %22, ptr %23, align 8, !tbaa !113
  %24 = ptrtoint ptr %17 to i64
  %25 = sub i64 %24, %i.cn
  %26 = sdiv exact i64 %25, 96
  %27 = trunc i64 %26 to i32
  store i32 %27, ptr %21, align 4, !tbaa !40
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.split62.us
  store i32 0, ptr %i.cg, align 4, !tbaa !102
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.n
  %.promoted = phi i32 [ 0, %._crit_edge ], [ %.promoted95, %bb.n ] ; 2 uses
  %indvars.iv92 = phi i64 [ %i.cj, %._crit_edge ], [ %indvars.iv.next93, %bb.n ] ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv92
  %i.db = load i32, ptr %i.da, align 4, !tbaa !40 ; 2 uses
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %bb.n, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.m
  %i.dd = sext i32 %.promoted to i64
  br label %select.unfold50

select.unfold50:                                  ; preds = %.lr.ph71, %select.unfold50
  %indvars.iv89 = phi i64 [ %i.dd, %.lr.ph71 ], [ %indvars.iv.next90, %select.unfold50 ] ; 2 uses
  %.pn109.in = phi i32 [ %i.db, %.lr.ph71 ], [ %i.dg, %select.unfold50 ]
  %.pn109 = zext nneg i32 %.pn109.in to i64
  %.14569 = getelementptr inbounds nuw [96 x i8], ptr %i.e, i64 %.pn109 ; 2 uses
  %indvars.iv.next90 = add nsw i64 %indvars.iv89, 1 ; 2 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv89
  store ptr %.14569, ptr %i.de, align 8, !tbaa !144
  %i.df = getelementptr inbounds nuw i8, ptr %.14569, i64 24
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !113 ; 2 uses
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %select.unfold50._crit_edge, label %select.unfold50

select.unfold50._crit_edge:                       ; preds = %select.unfold50
  %i.di = trunc nsw i64 %indvars.iv.next90 to i32 ; 2 uses
  store i32 %i.di, ptr %i.cg, align 4, !tbaa !102
  br label %bb.n

bb.n:                                             ; preds = %select.unfold50._crit_edge, %bb.m
  %.promoted95 = phi i32 [ %i.di, %select.unfold50._crit_edge ], [ %.promoted, %bb.m ]
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, -1
  %i.dj = icmp sgt i64 %indvars.iv92, 0
  br i1 %i.dj, label %bb.m, label %bb.o, !llvm.loop !210

bb.o:                                             ; preds = %bb.n
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #20 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !40
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #26 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #26
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #26 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !149
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #30
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #26 ; 0 uses
  call void @free(ptr noundef %i.d) #26
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !149, !noalias !211
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #26, !inline_history !214 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #9

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #21

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #21

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #13

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @Kf_SetMergePairs(ptr nofree noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address) %2, i32 noundef %3) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !99   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %Kf_HashPopulate.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1056
  br label %bb.b

bb.b:                                             ; preds = %Kf_HashFindOrAdd.exit.i, %.lr.ph.i
  %i.k = phi i32 [ %i.b, %.lr.ph.i ], [ %i.ak, %Kf_HashFindOrAdd.exit.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %Kf_HashFindOrAdd.exit.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !40   ; 3 uses
  %i.n = load i32, ptr %i.e, align 4, !tbaa !157  ; 2 uses
  %.012.i.i.i = and i32 %i.n, %i.m                ; 3 uses
  %i.o = sext i32 %.012.i.i.i to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !40   ; 2 uses
  %.not13.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not13.i.i.i, label %Kf_HashLookup.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.r = phi i32 [ %i.w, %bb.c ], [ %i.q, %bb.b ]
  %.014.i.i.i = phi i32 [ %.0.i.i.i, %bb.c ], [ %.012.i.i.i, %bb.b ]
  %i.s = icmp eq i32 %i.r, %i.m
  br i1 %i.s, label %Kf_HashFindOrAdd.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.t = add nsw i32 %.014.i.i.i, 1
  %.0.i.i.i = and i32 %i.t, %i.n                  ; 3 uses
  %i.u = sext i32 %.0.i.i.i to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !40   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i, label %Kf_HashLookup.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !158

Kf_HashLookup.exit.i.i:                           ; preds = %bb.c, %bb.b
  %.010.i.i.i = phi i32 [ %.012.i.i.i, %bb.b ], [ %.0.i.i.i, %bb.c ] ; 3 uses
  %i.x = icmp eq i32 %.010.i.i.i, -1
  br i1 %i.x, label %Kf_HashFindOrAdd.exit.i, label %bb.d

bb.d:                                             ; preds = %Kf_HashLookup.exit.i.i
  %i.y = load i32, ptr %i.g, align 8, !tbaa !159
  %i.z = load i16, ptr %i.h, align 8, !tbaa !98
  %i.aa = zext i16 %i.z to i32
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %Kf_HashFindOrAdd.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = sext i32 %.010.i.i.i to i64             ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ac
  store i32 %i.m, ptr %i.ad, align 4, !tbaa !40
  %i.ae = load i32, ptr %i.g, align 8, !tbaa !159
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.af
  store i32 %.010.i.i.i, ptr %i.ag, align 4, !tbaa !40
  %i.ah = load i32, ptr %i.g, align 8, !tbaa !159 ; 2 uses
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.g, align 8, !tbaa !159
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ac
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !40
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !99
  br label %Kf_HashFindOrAdd.exit.i

Kf_HashFindOrAdd.exit.i:                          ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d, %Kf_HashLookup.exit.i.i
  %i.ak = phi i32 [ %.pre.i, %bb.e ], [ %i.k, %Kf_HashLookup.exit.i.i ], [ %i.k, %bb.d ], [ %i.k, %.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next.i, %i.al
  br i1 %i.am, label %bb.b, label %Kf_HashPopulate.exit, !llvm.loop !160

Kf_HashPopulate.exit:                             ; preds = %Kf_HashFindOrAdd.exit.i, %bb.a
  %i.an = sext i32 %3 to i64
  %.idx = mul nsw i64 %i.an, 96
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %.idx
  %i.ap = icmp sgt i32 %3, 0
  br i1 %i.ap, label %.lr.ph82, label %._crit_edge83

.lr.ph82:                                         ; preds = %Kf_HashPopulate.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !98
end_hunk_0
