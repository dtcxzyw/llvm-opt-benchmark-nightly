inline.NumInlined: 171
inline.NumDeleted: 75
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN3igl20tetrahedralized_gridIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EENS_23TetrahedralizedGripTypeERNS1_15PlainObjectBaseIT0_EE = comdat any

$_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl20tetrahedralized_gridIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EENS_23TetrahedralizedGripTypeERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit:
  %i.a = load i32, ptr %0, align 4, !tbaa !9      ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !9    ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9    ; 2 uses
  %i.f = add nsw i32 %i.a, -1                     ; 3 uses
  %i.g = add nsw i32 %i.c, -1                     ; 3 uses
  %i.h = add nsw i32 %i.e, -1                     ; 5 uses
  %switch.selectcmp = icmp eq i32 %1, 1
  %switch.select = select i1 %switch.selectcmp, i32 6, i32 -1
  %switch.selectcmp132 = icmp eq i32 %1, 0
  %switch.select133 = select i1 %switch.selectcmp132, i32 5, i32 %switch.select
  %i.i = mul i32 %i.f, %switch.select133
  %i.j = mul i32 %i.i, %i.g
  %i.k = mul i32 %i.j, %i.h
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = shl nsw i64 %i.l, 2
  tail call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.m, i64 noundef %i.l, i64 noundef 4)
  %i.n = icmp sgt i32 %i.a, 1
  br i1 %i.n, label %.preheader629.lr.ph, label %._crit_edge

.preheader629.lr.ph:                              ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.o = icmp sgt i32 %i.c, 1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = icmp sgt i32 %i.e, 1
  %or.cond = and i1 %i.o, %i.r
  br i1 %or.cond, label %.preheader629.lr.ph.split.us.split.us, label %._crit_edge

.preheader629.lr.ph.split.us.split.us:            ; preds = %.preheader629.lr.ph
  switch i32 %1, label %._crit_edge [
    i32 1, label %.preheader629.lr.ph.split.us.split.us.split.us
    i32 0, label %.preheader629.lr.ph.split.us.split.us.split.us676
  ]

.preheader629.lr.ph.split.us.split.us.split.us:   ; preds = %.preheader629.lr.ph.split.us.split.us
  %i.s = load ptr, ptr %2, align 8, !tbaa !10, !noalias !15
  %i.t = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !15 ; 3 uses
  %i.u = icmp eq i64 %i.t, 1                      ; 4 uses
  %.sroa.6411.0.us.us.us.us.us.us = zext i1 %i.u to i64 ; 7 uses
  %i.v = select i1 %i.u, i64 1, i64 2             ; 2 uses
  %i.w = load i64, ptr %i.q, align 8, !tbaa !19   ; 3 uses
  %i.x = select i1 %i.u, i64 0, i64 %i.w          ; 6 uses
  %i.y = icmp eq i64 %i.v, %i.t                   ; 2 uses
  %i.z = select i1 %i.u, i64 2, i64 1
  %.sroa.6411.1.us.us.us.us.us.us = select i1 %i.y, i64 %i.z, i64 %.sroa.6411.0.us.us.us.us.us.us ; 12 uses
  %i.aa = select i1 %i.y, i64 0, i64 %i.v         ; 2 uses
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %i.ac = mul nsw i64 %i.aa, %i.w                 ; 6 uses
  %i.ad = icmp eq i64 %i.ab, %i.t                 ; 2 uses
  %i.ae = select i1 %i.ad, i64 0, i64 %i.ab
  %i.af = zext i1 %i.ad to i64                    ; 6 uses
  %i.ag = mul nsw i64 %i.ae, %i.w                 ; 6 uses
  br label %.preheader629.us.us.us

.preheader629.us.us.us:                           ; preds = %._crit_edge641.split.us.split.us.us.us.us, %.preheader629.lr.ph.split.us.split.us.split.us
  %.0129661.us.us.us = phi i32 [ 0, %.preheader629.lr.ph.split.us.split.us.split.us ], [ %i.ah, %._crit_edge641.split.us.split.us.us.us.us ] ; 5 uses
  %.0130660.us.us.us = phi i32 [ 0, %.preheader629.lr.ph.split.us.split.us.split.us ], [ %4, %._crit_edge641.split.us.split.us.us.us.us ]
  %i.ah = add nuw nsw i32 %.0129661.us.us.us, 1   ; 6 uses
  br label %.preheader.us.us.us.us.us

.preheader.us.us.us.us.us:                        ; preds = %._crit_edge.split.us.us.us.us.us.us, %.preheader629.us.us.us
  %indvars.iv695 = phi i32 [ %indvars.iv.next696, %._crit_edge.split.us.us.us.us.us.us ], [ %.0130660.us.us.us, %.preheader629.us.us.us ] ; 2 uses
  %.0128638.us.us.us.us.us = phi i32 [ %i.ai, %._crit_edge.split.us.us.us.us.us.us ], [ 0, %.preheader629.us.us.us ] ; 3 uses
  %3 = sext i32 %indvars.iv695 to i64
  %i.ai = add nuw nsw i32 %.0128638.us.us.us.us.us, 1 ; 4 uses
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.us.us.us.us.us.us

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.us.us.us.us.us.us: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.us.us.us.us.us.us, %.preheader.us.us.us.us.us
  %indvars.iv693 = phi i64 [ %indvars.iv.next694, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.us.us.us.us.us.us ], [ %3, %.preheader.us.us.us.us.us ] ; 2 uses
  %.0127631.us.us.us.us.us.us = phi i32 [ %i.as, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.us.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us.us ] ; 2 uses
  %i.aj = mul nuw nsw i32 %.0127631.us.us.us.us.us.us, %i.c ; 2 uses
  %i.ak = add nuw nsw i32 %i.aj, %.0128638.us.us.us.us.us
  %i.al = mul nuw nsw i32 %i.ak, %i.a             ; 2 uses
  %i.am = add nuw nsw i32 %i.al, %.0129661.us.us.us ; 6 uses
  %i.an = add nuw nsw i32 %i.aj, %i.ai
  %i.ao = mul nuw nsw i32 %i.an, %i.a             ; 2 uses
  %i.ap = add nuw nsw i32 %i.ao, %.0129661.us.us.us ; 2 uses
  %i.aq = add nuw nsw i32 %i.al, %i.ah            ; 2 uses
  %i.ar = add nuw nsw i32 %i.ao, %i.ah            ; 2 uses
  %i.as = add nuw nsw i32 %.0127631.us.us.us.us.us.us, 1 ; 3 uses
  %i.at = mul nuw nsw i32 %i.as, %i.c             ; 2 uses
  %i.au = add nuw nsw i32 %i.at, %.0128638.us.us.us.us.us
  %i.av = mul nuw nsw i32 %i.au, %i.a             ; 2 uses
  %i.aw = add nuw nsw i32 %i.av, %.0129661.us.us.us ; 2 uses
  %i.ax = add nuw nsw i32 %i.at, %i.ai
  %i.ay = mul nuw nsw i32 %i.ax, %i.a             ; 2 uses
  %i.az = add nuw nsw i32 %i.ay, %.0129661.us.us.us ; 2 uses
  %i.ba = add nuw nsw i32 %i.av, %i.ah            ; 2 uses
  %i.bb = add nuw nsw i32 %i.ay, %i.ah            ; 6 uses
  %.idx706 = mul i64 %indvars.iv693, 24
  %i.bc = getelementptr i8, ptr %i.s, i64 %.idx706 ; 9 uses
  store i32 %i.am, ptr %i.bc, align 4, !tbaa !9, !noalias !20
  %i.bd = getelementptr [4 x i8], ptr %i.bc, i64 %i.x
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %.sroa.6411.0.us.us.us.us.us.us
  store i32 %i.aq, ptr %i.be, align 4, !tbaa !9
  %i.bf = getelementptr [4 x i8], ptr %i.bc, i64 %i.ac
  %i.bg = getelementptr [4 x i8], ptr %i.bf, i64 %.sroa.6411.1.us.us.us.us.us.us
  store i32 %i.bb, ptr %i.bg, align 4, !tbaa !9
  %i.bh = getelementptr [4 x i8], ptr %i.bc, i64 %i.ag
  %i.bi = getelementptr [4 x i8], ptr %i.bh, i64 %.sroa.6411.1.us.us.us.us.us.us
  %i.bj = getelementptr [4 x i8], ptr %i.bi, i64 %i.af
  store i32 %i.ba, ptr %i.bj, align 4, !tbaa !9
  %i.bk = getelementptr i8, ptr %i.bc, i64 4      ; 4 uses
  store i32 %i.am, ptr %i.bk, align 4, !tbaa !9, !noalias !23
  %i.bl = getelementptr [4 x i8], ptr %i.bk, i64 %i.x
  %i.bm = getelementptr [4 x i8], ptr %i.bl, i64 %.sroa.6411.0.us.us.us.us.us.us
  store i32 %i.bb, ptr %i.bm, align 4, !tbaa !9
  %i.bn = getelementptr [4 x i8], ptr %i.bk, i64 %i.ac
  %i.bo = getelementptr [4 x i8], ptr %i.bn, i64 %.sroa.6411.1.us.us.us.us.us.us
  store i32 %i.aw, ptr %i.bo, align 4, !tbaa !9
  %i.bp = getelementptr [4 x i8], ptr %i.bk, i64 %i.ag
  %i.bq = getelementptr [4 x i8], ptr %i.bp, i64 %.sroa.6411.1.us.us.us.us.us.us
  %i.br = getelementptr [4 x i8], ptr %i.bq, i64 %i.af
  store i32 %i.ba, ptr %i.br, align 4, !tbaa !9
  %i.bs = getelementptr i8, ptr %i.bc, i64 8      ; 4 uses
  store i32 %i.am, ptr %i.bs, align 4, !tbaa !9, !noalias !26
  %i.bt = getelementptr [4 x i8], ptr %i.bs, i64 %i.x
  %i.bu = getelementptr [4 x i8], ptr %i.bt, i64 %.sroa.6411.0.us.us.us.us.us.us
  store i32 %i.aq, ptr %i.bu, align 4, !tbaa !9
  %i.bv = getelementptr [4 x i8], ptr %i.bs, i64 %i.ac
  %i.bw = getelementptr [4 x i8], ptr %i.bv, i64 %.sroa.6411.1.us.us.us.us.us.us
  store i32 %i.ar, ptr %i.bw, align 4, !tbaa !9
  %i.bx = getelementptr [4 x i8], ptr %i.bs, i64 %i.ag
  %i.by = getelementptr [4 x i8], ptr %i.bx, i64 %.sroa.6411.1.us.us.us.us.us.us
  %i.bz = getelementptr [4 x i8], ptr %i.by, i64 %i.af
  store i32 %i.bb, ptr %i.bz, align 4, !tbaa !9
  %i.ca = getelementptr i8, ptr %i.bc, i64 12     ; 4 uses
  store i32 %i.am, ptr %i.ca, align 4, !tbaa !9, !noalias !29
  %i.cb = getelementptr [4 x i8], ptr %i.ca, i64 %i.x
  %i.cc = getelementptr [4 x i8], ptr %i.cb, i64 %.sroa.6411.0.us.us.us.us.us.us
  store i32 %i.ar, ptr %i.cc, align 4, !tbaa !9
  %i.cd = getelementptr [4 x i8], ptr %i.ca, i64 %i.ac
  %i.ce = getelementptr [4 x i8], ptr %i.cd, i64 %.sroa.6411.1.us.us.us.us.us.us
  store i32 %i.ap, ptr %i.ce, align 4, !tbaa !9
  %i.cf = getelementptr [4 x i8], ptr %i.ca, i64 %i.ag
  %i.cg = getelementptr [4 x i8], ptr %i.cf, i64 %.sroa.6411.1.us.us.us.us.us.us
  %i.ch = getelementptr [4 x i8], ptr %i.cg, i64 %i.af
  store i32 %i.bb, ptr %i.ch, align 4, !tbaa !9
  %i.ci = getelementptr i8, ptr %i.bc, i64 16     ; 4 uses
  store i32 %i.am, ptr %i.ci, align 4, !tbaa !9, !noalias !32
  %i.cj = getelementptr [4 x i8], ptr %i.ci, i64 %i.x
  %i.ck = getelementptr [4 x i8], ptr %i.cj, i64 %.sroa.6411.0.us.us.us.us.us.us
  store i32 %i.az, ptr %i.ck, align 4, !tbaa !9
  %i.cl = getelementptr [4 x i8], ptr %i.ci, i64 %i.ac
  %i.cm = getelementptr [4 x i8], ptr %i.cl, i64 %.sroa.6411.1.us.us.us.us.us.us
  store i32 %i.aw, ptr %i.cm, align 4, !tbaa !9
  %i.cn = getelementptr [4 x i8], ptr %i.ci, i64 %i.ag
  %i.co = getelementptr [4 x i8], ptr %i.cn, i64 %.sroa.6411.1.us.us.us.us.us.us
  %i.cp = getelementptr [4 x i8], ptr %i.co, i64 %i.af
  store i32 %i.bb, ptr %i.cp, align 4, !tbaa !9
  %i.cq = getelementptr i8, ptr %i.bc, i64 20     ; 4 uses
  store i32 %i.am, ptr %i.cq, align 4, !tbaa !9, !noalias !35
  %i.cr = getelementptr [4 x i8], ptr %i.cq, i64 %i.x
  %i.cs = getelementptr [4 x i8], ptr %i.cr, i64 %.sroa.6411.0.us.us.us.us.us.us
  store i32 %i.ap, ptr %i.cs, align 4, !tbaa !9
  %i.ct = getelementptr [4 x i8], ptr %i.cq, i64 %i.ac
  %i.cu = getelementptr [4 x i8], ptr %i.ct, i64 %.sroa.6411.1.us.us.us.us.us.us
  store i32 %i.az, ptr %i.cu, align 4, !tbaa !9
  %i.cv = getelementptr [4 x i8], ptr %i.cq, i64 %i.ag
  %i.cw = getelementptr [4 x i8], ptr %i.cv, i64 %.sroa.6411.1.us.us.us.us.us.us
  %i.cx = getelementptr [4 x i8], ptr %i.cw, i64 %i.af
  store i32 %i.bb, ptr %i.cx, align 4, !tbaa !9
  %indvars.iv.next694 = add nsw i64 %indvars.iv693, 1 ; 2 uses
  %exitcond696.not = icmp eq i32 %i.as, %i.h
  br i1 %exitcond696.not, label %._crit_edge.split.us.us.us.us.us.us, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.us.us.us.us.us.us, !llvm.loop !38

._crit_edge.split.us.us.us.us.us.us:              ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.us.us.us.us.us.us
  %indvars.iv.next696 = add i32 %indvars.iv695, %i.h
  %exitcond697.not = icmp eq i32 %i.ai, %i.g
  br i1 %exitcond697.not, label %._crit_edge641.split.us.split.us.us.us.us, label %.preheader.us.us.us.us.us, !llvm.loop !40

._crit_edge641.split.us.split.us.us.us.us:        ; preds = %._crit_edge.split.us.us.us.us.us.us
  %4 = trunc nsw i64 %indvars.iv.next694 to i32
  %exitcond698.not = icmp eq i32 %i.ah, %i.f
  br i1 %exitcond698.not, label %._crit_edge, label %.preheader629.us.us.us, !llvm.loop !41

.preheader629.lr.ph.split.us.split.us.split.us676: ; preds = %.preheader629.lr.ph.split.us.split.us
  %i.cy = load ptr, ptr %2, align 8, !tbaa !10, !noalias !42
  %i.cz = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !42 ; 3 uses
  %i.da = icmp eq i64 %i.cz, 1                    ; 4 uses
  %.sroa.6321.0.us.us.us.us.us.us = zext i1 %i.da to i64 ; 6 uses
  %i.db = select i1 %i.da, i64 1, i64 2           ; 2 uses
  %i.dc = load i64, ptr %i.q, align 8, !tbaa !19  ; 8 uses
  %i.dd = select i1 %i.da, i64 0, i64 %i.dc       ; 5 uses
  %i.de = icmp eq i64 %i.db, %i.cz                ; 2 uses
  %i.df = select i1 %i.da, i64 2, i64 1
  %.sroa.6321.1.us.us.us.us.us.us = select i1 %i.de, i64 %i.df, i64 %.sroa.6321.0.us.us.us.us.us.us ; 10 uses
  %i.dg = select i1 %i.de, i64 0, i64 %i.db       ; 2 uses
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %i.di = mul nsw i64 %i.dg, %i.dc                ; 5 uses
  %i.dj = icmp eq i64 %i.dh, %i.cz                ; 2 uses
  %i.dk = select i1 %i.dj, i64 0, i64 %i.dh
  %i.dl = zext i1 %i.dj to i64                    ; 5 uses
  %i.dm = mul nsw i64 %i.dk, %i.dc                ; 5 uses
  br label %.preheader629.us.us.us677

.preheader629.us.us.us677:                        ; preds = %._crit_edge641.split.us.split.split.us.us.us.us, %.preheader629.lr.ph.split.us.split.us.split.us676
  %.0129661.us.us.us678 = phi i32 [ 0, %.preheader629.lr.ph.split.us.split.us.split.us676 ], [ %i.dn, %._crit_edge641.split.us.split.split.us.us.us.us ] ; 6 uses
  %.0130660.us.us.us679 = phi i32 [ 0, %.preheader629.lr.ph.split.us.split.us.split.us676 ], [ %6, %._crit_edge641.split.us.split.split.us.us.us.us ]
  %i.dn = add nuw nsw i32 %.0129661.us.us.us678, 1 ; 6 uses
  br label %.preheader.us.us651.us.us.us

.preheader.us.us651.us.us.us:                     ; preds = %._crit_edge.split.split.us.us.us.us.us.us, %.preheader629.us.us.us677
  %indvars.iv = phi i32 [ %indvars.iv.next, %._crit_edge.split.split.us.us.us.us.us.us ], [ %.0130660.us.us.us679, %.preheader629.us.us.us677 ] ; 2 uses
  %.0128638.us.us652.us.us.us = phi i32 [ %i.do, %._crit_edge.split.split.us.us.us.us.us.us ], [ 0, %.preheader629.us.us.us677 ] ; 4 uses
  %5 = sext i32 %indvars.iv to i64
  %i.do = add nuw nsw i32 %.0128638.us.us652.us.us.us, 1 ; 4 uses
  %i.dp = xor i32 %.0128638.us.us652.us.us.us, %.0129661.us.us.us678
  br label %bb.a

bb.a:                                             ; preds = %bb.d, %.preheader.us.us651.us.us.us
  %indvars.iv.a = phi i64 [ %indvars.iv.next.a, %bb.d ], [ %5, %.preheader.us.us651.us.us.us ] ; 2 uses
  %.0127631.us633.us.us.us.us.us = phi i32 [ %i.dz, %bb.d ], [ 0, %.preheader.us.us651.us.us.us ] ; 3 uses
  %i.dq = mul nuw nsw i32 %.0127631.us633.us.us.us.us.us, %i.c ; 2 uses
  %i.dr = add nuw nsw i32 %i.dq, %.0128638.us.us652.us.us.us
  %i.ds = mul nuw nsw i32 %i.dr, %i.a             ; 2 uses
  %i.dt = add nuw nsw i32 %i.ds, %.0129661.us.us.us678 ; 2 uses
  %i.du = add nuw nsw i32 %i.dq, %i.do
  %i.dv = mul nuw nsw i32 %i.du, %i.a             ; 2 uses
  %i.dw = add nuw nsw i32 %i.dv, %.0129661.us.us.us678 ; 2 uses
  %i.dx = add nuw nsw i32 %i.ds, %i.dn            ; 2 uses
  %i.dy = add nuw nsw i32 %i.dv, %i.dn            ; 2 uses
  %i.dz = add nuw nsw i32 %.0127631.us633.us.us.us.us.us, 1 ; 3 uses
  %i.ea = mul nuw nsw i32 %i.dz, %i.c             ; 2 uses
  %i.eb = add nuw nsw i32 %i.ea, %.0128638.us.us652.us.us.us
  %i.ec = mul nuw nsw i32 %i.eb, %i.a             ; 2 uses
  %i.ed = add nuw nsw i32 %i.ec, %.0129661.us.us.us678 ; 2 uses
  %i.ee = add nuw nsw i32 %i.ea, %i.do
  %i.ef = mul nuw nsw i32 %i.ee, %i.a             ; 2 uses
  %i.eg = add nuw nsw i32 %i.ef, %.0129661.us.us.us678 ; 2 uses
  %i.eh = add nuw nsw i32 %i.ec, %i.dn            ; 2 uses
  %i.ei = add nuw nsw i32 %i.ef, %i.dn            ; 2 uses
  %i.ej = xor i32 %i.dp, %.0127631.us633.us.us.us.us.us
  %i.ek = and i32 %i.ej, 1
  %.not.us.us.us.us.us.us = icmp eq i32 %i.ek, 0  ; 2 uses
  br i1 %.not.us.us.us.us.us.us, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit205.us.us.us.us.us.us, label %bb.b

bb.b:                                             ; preds = %bb.a
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit205.us.us.us.us.us.us

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit205.us.us.us.us.us.us: ; preds = %bb.b, %bb.a
  %.0480.us.us.us.us.us.us = phi i32 [ %i.ei, %bb.a ], [ %i.eg, %bb.b ] ; 4 uses
  %.0479.us.us.us.us.us.us = phi i32 [ %i.eh, %bb.a ], [ %i.ed, %bb.b ]
  %.0478.us.us.us.us.us.us = phi i32 [ %i.eg, %bb.a ], [ %i.ei, %bb.b ]
  %.0477.us.us.us.us.us.us = phi i32 [ %i.ed, %bb.a ], [ %i.eh, %bb.b ] ; 4 uses
  %.0476.us.us.us.us.us.us = phi i32 [ %i.dy, %bb.a ], [ %i.dw, %bb.b ]
  %.0475.us.us.us.us.us.us = phi i32 [ %i.dx, %bb.a ], [ %i.dt, %bb.b ] ; 4 uses
  %.0474.us.us.us.us.us.us = phi i32 [ %i.dw, %bb.a ], [ %i.dy, %bb.b ] ; 4 uses
  %.0.us.us.us.us.us.us = phi i32 [ %i.dt, %bb.a ], [ %i.dx, %bb.b ]
  %.idx = mul i64 %indvars.iv.a, 20
  %i.el = getelementptr i8, ptr %i.cy, i64 %.idx  ; 11 uses
  store i32 %.0477.us.us.us.us.us.us, ptr %i.el, align 4, !tbaa !9, !noalias !45
  %i.em = getelementptr [4 x i8], ptr %i.el, i64 %i.dd
  %i.en = getelementptr [4 x i8], ptr %i.em, i64 %.sroa.6321.0.us.us.us.us.us.us
  store i32 %.0475.us.us.us.us.us.us, ptr %i.en, align 4, !tbaa !9
  %i.eo = getelementptr [4 x i8], ptr %i.el, i64 %i.di
  %i.ep = getelementptr [4 x i8], ptr %i.eo, i64 %.sroa.6321.1.us.us.us.us.us.us
  store i32 %.0474.us.us.us.us.us.us, ptr %i.ep, align 4, !tbaa !9
  %i.eq = getelementptr [4 x i8], ptr %i.el, i64 %i.dm
  %i.er = getelementptr [4 x i8], ptr %i.eq, i64 %.sroa.6321.1.us.us.us.us.us.us
  %i.es = getelementptr [4 x i8], ptr %i.er, i64 %i.dl
  store i32 %.0.us.us.us.us.us.us, ptr %i.es, align 4, !tbaa !9
  %i.et = getelementptr i8, ptr %i.el, i64 4      ; 7 uses
  store i32 %.0475.us.us.us.us.us.us, ptr %i.et, align 4, !tbaa !9, !noalias !48
  %i.eu = getelementptr [4 x i8], ptr %i.et, i64 %i.dd
  %i.ev = getelementptr [4 x i8], ptr %i.eu, i64 %.sroa.6321.0.us.us.us.us.us.us
  store i32 %.0474.us.us.us.us.us.us, ptr %i.ev, align 4, !tbaa !9
  %i.ew = getelementptr [4 x i8], ptr %i.et, i64 %i.di
  %i.ex = getelementptr [4 x i8], ptr %i.ew, i64 %.sroa.6321.1.us.us.us.us.us.us
  store i32 %.0480.us.us.us.us.us.us, ptr %i.ex, align 4, !tbaa !9
  %i.ey = getelementptr [4 x i8], ptr %i.et, i64 %i.dm
  %i.ez = getelementptr [4 x i8], ptr %i.ey, i64 %.sroa.6321.1.us.us.us.us.us.us
  %i.fa = getelementptr [4 x i8], ptr %i.ez, i64 %i.dl
  store i32 %.0477.us.us.us.us.us.us, ptr %i.fa, align 4, !tbaa !9
  %i.fb = getelementptr i8, ptr %i.el, i64 8      ; 7 uses
  store i32 %.0475.us.us.us.us.us.us, ptr %i.fb, align 4, !tbaa !9, !noalias !51
  %i.fc = getelementptr [4 x i8], ptr %i.fb, i64 %i.dd
  %i.fd = getelementptr [4 x i8], ptr %i.fc, i64 %.sroa.6321.0.us.us.us.us.us.us
  store i32 %.0476.us.us.us.us.us.us, ptr %i.fd, align 4, !tbaa !9
  %i.fe = getelementptr [4 x i8], ptr %i.fb, i64 %i.di
  %i.ff = getelementptr [4 x i8], ptr %i.fe, i64 %.sroa.6321.1.us.us.us.us.us.us
  store i32 %.0480.us.us.us.us.us.us, ptr %i.ff, align 4, !tbaa !9
  %i.fg = getelementptr [4 x i8], ptr %i.fb, i64 %i.dm
  %i.fh = getelementptr [4 x i8], ptr %i.fg, i64 %.sroa.6321.1.us.us.us.us.us.us
  %i.fi = getelementptr [4 x i8], ptr %i.fh, i64 %i.dl
  store i32 %.0474.us.us.us.us.us.us, ptr %i.fi, align 4, !tbaa !9
  %i.fj = getelementptr i8, ptr %i.el, i64 12     ; 7 uses
  store i32 %.0475.us.us.us.us.us.us, ptr %i.fj, align 4, !tbaa !9, !noalias !54
  %i.fk = getelementptr [4 x i8], ptr %i.fj, i64 %i.dd
  %i.fl = getelementptr [4 x i8], ptr %i.fk, i64 %.sroa.6321.0.us.us.us.us.us.us
  store i32 %.0480.us.us.us.us.us.us, ptr %i.fl, align 4, !tbaa !9
  %i.fm = getelementptr [4 x i8], ptr %i.fj, i64 %i.di
  %i.fn = getelementptr [4 x i8], ptr %i.fm, i64 %.sroa.6321.1.us.us.us.us.us.us
  store i32 %.0479.us.us.us.us.us.us, ptr %i.fn, align 4, !tbaa !9
  %i.fo = getelementptr [4 x i8], ptr %i.fj, i64 %i.dm
  %i.fp = getelementptr [4 x i8], ptr %i.fo, i64 %.sroa.6321.1.us.us.us.us.us.us
  %i.fq = getelementptr [4 x i8], ptr %i.fp, i64 %i.dl
  store i32 %.0477.us.us.us.us.us.us, ptr %i.fq, align 4, !tbaa !9
  %i.fr = getelementptr i8, ptr %i.el, i64 16     ; 7 uses
  store i32 %.0474.us.us.us.us.us.us, ptr %i.fr, align 4, !tbaa !9, !noalias !57
  %i.fs = getelementptr [4 x i8], ptr %i.fr, i64 %i.dd
  %i.ft = getelementptr [4 x i8], ptr %i.fs, i64 %.sroa.6321.0.us.us.us.us.us.us
  store i32 %.0478.us.us.us.us.us.us, ptr %i.ft, align 4, !tbaa !9
  %i.fu = getelementptr [4 x i8], ptr %i.fr, i64 %i.di
  %i.fv = getelementptr [4 x i8], ptr %i.fu, i64 %.sroa.6321.1.us.us.us.us.us.us
  store i32 %.0480.us.us.us.us.us.us, ptr %i.fv, align 4, !tbaa !9
  %i.fw = getelementptr [4 x i8], ptr %i.fr, i64 %i.dm
  %i.fx = getelementptr [4 x i8], ptr %i.fw, i64 %.sroa.6321.1.us.us.us.us.us.us
  %i.fy = getelementptr [4 x i8], ptr %i.fx, i64 %i.dl
  store i32 %.0477.us.us.us.us.us.us, ptr %i.fy, align 4, !tbaa !9
  br i1 %.not.us.us.us.us.us.us, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit205.us.us.us.us.us.us
  %i.fz = getelementptr [4 x i8], ptr %i.el, i64 %i.dc ; 2 uses
  %i.ga = load i32, ptr %i.el, align 4, !tbaa !9
  %i.gb = load i32, ptr %i.fz, align 4, !tbaa !9
  store i32 %i.gb, ptr %i.el, align 4, !tbaa !9
  store i32 %i.ga, ptr %i.fz, align 4, !tbaa !9
  %i.gc = getelementptr [4 x i8], ptr %i.et, i64 %i.dc ; 2 uses
  %i.gd = load i32, ptr %i.et, align 4, !tbaa !9
  %i.ge = load i32, ptr %i.gc, align 4, !tbaa !9
  store i32 %i.ge, ptr %i.et, align 4, !tbaa !9
  store i32 %i.gd, ptr %i.gc, align 4, !tbaa !9
  %i.gf = getelementptr [4 x i8], ptr %i.fb, i64 %i.dc ; 2 uses
  %i.gg = load i32, ptr %i.fb, align 4, !tbaa !9
  %i.gh = load i32, ptr %i.gf, align 4, !tbaa !9
  store i32 %i.gh, ptr %i.fb, align 4, !tbaa !9
  store i32 %i.gg, ptr %i.gf, align 4, !tbaa !9
  %i.gi = getelementptr [4 x i8], ptr %i.fj, i64 %i.dc ; 2 uses
  %i.gj = load i32, ptr %i.fj, align 4, !tbaa !9
  %i.gk = load i32, ptr %i.gi, align 4, !tbaa !9
  store i32 %i.gk, ptr %i.fj, align 4, !tbaa !9
  store i32 %i.gj, ptr %i.gi, align 4, !tbaa !9
  %i.gl = getelementptr [4 x i8], ptr %i.fr, i64 %i.dc ; 2 uses
  %i.gm = load i32, ptr %i.fr, align 4, !tbaa !9
  %i.gn = load i32, ptr %i.gl, align 4, !tbaa !9
  store i32 %i.gn, ptr %i.fr, align 4, !tbaa !9
  store i32 %i.gm, ptr %i.gl, align 4, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit205.us.us.us.us.us.us
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %i.dz, %i.h
  br i1 %exitcond.not, label %._crit_edge.split.split.us.us.us.us.us.us, label %bb.a, !llvm.loop !38

._crit_edge.split.split.us.us.us.us.us.us:        ; preds = %bb.d
  %indvars.iv.next = add i32 %indvars.iv, %i.h
  %exitcond691.not = icmp eq i32 %i.do, %i.g
  br i1 %exitcond691.not, label %._crit_edge641.split.us.split.split.us.us.us.us, label %.preheader.us.us651.us.us.us, !llvm.loop !40

._crit_edge641.split.us.split.split.us.us.us.us:  ; preds = %._crit_edge.split.split.us.us.us.us.us.us
  %6 = trunc nsw i64 %indvars.iv.next.a to i32
  %exitcond692.not = icmp eq i32 %i.dn, %i.f
  br i1 %exitcond692.not, label %._crit_edge, label %.preheader629.us.us.us677, !llvm.loop !41

._crit_edge:                                      ; preds = %._crit_edge641.split.us.split.split.us.us.us.us, %._crit_edge641.split.us.split.us.us.us.us, %.preheader629.lr.ph.split.us.split.us, %.preheader629.lr.ph, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !10
  tail call void @free(ptr noundef %i.f) #5
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #5 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !60
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #6
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #7 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #5 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !60
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #6
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !19
  store i64 %3, ptr %i.c, align 8, !tbaa !18
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }
attributes #7 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!6, !6, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !12, i64 0, !14, i64 8, !14, i64 16}
!12 = !{!"p1 int", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!17 = distinct !{!17, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!18 = !{!11, !14, i64 16}
!19 = !{!11, !14, i64 8}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi: argument 0"}
!22 = distinct !{!22, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi: argument 0"}
!25 = distinct !{!25, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi: argument 0"}
!28 = distinct !{!28, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi: argument 0"}
!31 = distinct !{!31, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi: argument 0"}
!34 = distinct !{!34, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi: argument 0"}
!37 = distinct !{!37, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi"}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = distinct !{!40, !39}
!41 = distinct !{!41, !39}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!44 = distinct !{!44, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi: argument 0"}
!47 = distinct !{!47, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi: argument 0"}
!50 = distinct !{!50, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi: argument 0"}
!53 = distinct !{!53, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi: argument 0"}
!56 = distinct !{!56, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi: argument 0"}
!59 = distinct !{!59, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi"}
!60 = !{!61, !61, i64 0}
!61 = !{!"vtable pointer", !8, i64 0}
end_hunk_0
