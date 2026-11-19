Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetrahedralized_grid?download=true
inline.NumInlined: 171
inline.NumDeleted: 75
begin_hunk_0

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl20tetrahedralized_gridIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EENS_23TetrahedralizedGripTypeERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit:
  %i.a = load i32, ptr %0, align 4, !tbaa !45     ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !45   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !45   ; 2 uses
  %i.f = add nsw i32 %i.a, -1                     ; 3 uses
  %i.g = add nsw i32 %i.c, -1                     ; 3 uses
  %i.h = add nsw i32 %i.e, -1                     ; 3 uses
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
  %i.s = load ptr, ptr %2, align 8, !tbaa !13, !noalias !46
  %i.t = load i64, ptr %i.p, align 8, !tbaa !14, !noalias !46 ; 3 uses
  %i.u = icmp eq i64 %i.t, 1                      ; 4 uses
  %.sroa.6411.0.us.us.us.us.us.us = zext i1 %i.u to i64 ; 7 uses
  %i.v = select i1 %i.u, i64 1, i64 2             ; 2 uses
  %i.w = load i64, ptr %i.q, align 8, !tbaa !15   ; 3 uses
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
  %.0130660.us.us.us = phi i64 [ 0, %.preheader629.lr.ph.split.us.split.us.split.us ], [ %indvars.iv.next694, %._crit_edge641.split.us.split.us.us.us.us ]
  %i.ah = add nuw nsw i32 %.0129661.us.us.us, 1   ; 6 uses
  br label %.preheader.us.us.us.us.us

.preheader.us.us.us.us.us:                        ; preds = %._crit_edge.split.us.us.us.us.us.us, %.preheader629.us.us.us
  %.0128638.us.us.us.us.us = phi i32 [ 0, %.preheader629.us.us.us ], [ %i.ai, %._crit_edge.split.us.us.us.us.us.us ] ; 3 uses
  %.1637.us.us.us.us.us = phi i64 [ %.0130660.us.us.us, %.preheader629.us.us.us ], [ %indvars.iv.next694, %._crit_edge.split.us.us.us.us.us.us ]
  %i.ai = add nuw nsw i32 %.0128638.us.us.us.us.us, 1 ; 4 uses
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.us.us.us.us.us.us

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.us.us.us.us.us.us: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.us.us.us.us.us.us, %.preheader.us.us.us.us.us
  %indvars.iv693 = phi i64 [ %indvars.iv.next694, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.us.us.us.us.us.us ], [ %.1637.us.us.us.us.us, %.preheader.us.us.us.us.us ] ; 2 uses
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
  store i32 %i.am, ptr %i.bc, align 4, !tbaa !45, !noalias !47
  %i.bd = getelementptr [4 x i8], ptr %i.bc, i64 %i.x
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %.sroa.6411.0.us.us.us.us.us.us
  store i32 %i.aq, ptr %i.be, align 4, !tbaa !45
  %i.bf = getelementptr [4 x i8], ptr %i.bc, i64 %i.ac
  %i.bg = getelementptr [4 x i8], ptr %i.bf, i64 %.sroa.6411.1.us.us.us.us.us.us
  store i32 %i.bb, ptr %i.bg, align 4, !tbaa !45
  %i.bh = getelementptr [4 x i8], ptr %i.bc, i64 %i.ag
  %i.bi = getelementptr [4 x i8], ptr %i.bh, i64 %.sroa.6411.1.us.us.us.us.us.us
  %i.bj = getelementptr [4 x i8], ptr %i.bi, i64 %i.af
  store i32 %i.ba, ptr %i.bj, align 4, !tbaa !45
  %i.bk = getelementptr i8, ptr %i.bc, i64 4      ; 4 uses
  store i32 %i.am, ptr %i.bk, align 4, !tbaa !45, !noalias !48
  %i.bl = getelementptr [4 x i8], ptr %i.bk, i64 %i.x
  %i.bm = getelementptr [4 x i8], ptr %i.bl, i64 %.sroa.6411.0.us.us.us.us.us.us
  store i32 %i.bb, ptr %i.bm, align 4, !tbaa !45
  %i.bn = getelementptr [4 x i8], ptr %i.bk, i64 %i.ac
  %i.bo = getelementptr [4 x i8], ptr %i.bn, i64 %.sroa.6411.1.us.us.us.us.us.us
  store i32 %i.aw, ptr %i.bo, align 4, !tbaa !45
  %i.bp = getelementptr [4 x i8], ptr %i.bk, i64 %i.ag
  %i.bq = getelementptr [4 x i8], ptr %i.bp, i64 %.sroa.6411.1.us.us.us.us.us.us
  %i.br = getelementptr [4 x i8], ptr %i.bq, i64 %i.af
  store i32 %i.ba, ptr %i.br, align 4, !tbaa !45
  %i.bs = getelementptr i8, ptr %i.bc, i64 8      ; 4 uses
  store i32 %i.am, ptr %i.bs, align 4, !tbaa !45, !noalias !49
  %i.bt = getelementptr [4 x i8], ptr %i.bs, i64 %i.x
  %i.bu = getelementptr [4 x i8], ptr %i.bt, i64 %.sroa.6411.0.us.us.us.us.us.us
  store i32 %i.aq, ptr %i.bu, align 4, !tbaa !45
  %i.bv = getelementptr [4 x i8], ptr %i.bs, i64 %i.ac
  %i.bw = getelementptr [4 x i8], ptr %i.bv, i64 %.sroa.6411.1.us.us.us.us.us.us
  store i32 %i.ar, ptr %i.bw, align 4, !tbaa !45
  %i.bx = getelementptr [4 x i8], ptr %i.bs, i64 %i.ag
  %i.by = getelementptr [4 x i8], ptr %i.bx, i64 %.sroa.6411.1.us.us.us.us.us.us
  %i.bz = getelementptr [4 x i8], ptr %i.by, i64 %i.af
  store i32 %i.bb, ptr %i.bz, align 4, !tbaa !45
  %i.ca = getelementptr i8, ptr %i.bc, i64 12     ; 4 uses
  store i32 %i.am, ptr %i.ca, align 4, !tbaa !45, !noalias !50
  %i.cb = getelementptr [4 x i8], ptr %i.ca, i64 %i.x
  %i.cc = getelementptr [4 x i8], ptr %i.cb, i64 %.sroa.6411.0.us.us.us.us.us.us
  store i32 %i.ar, ptr %i.cc, align 4, !tbaa !45
  %i.cd = getelementptr [4 x i8], ptr %i.ca, i64 %i.ac
  %i.ce = getelementptr [4 x i8], ptr %i.cd, i64 %.sroa.6411.1.us.us.us.us.us.us
  store i32 %i.ap, ptr %i.ce, align 4, !tbaa !45
  %i.cf = getelementptr [4 x i8], ptr %i.ca, i64 %i.ag
  %i.cg = getelementptr [4 x i8], ptr %i.cf, i64 %.sroa.6411.1.us.us.us.us.us.us
  %i.ch = getelementptr [4 x i8], ptr %i.cg, i64 %i.af
  store i32 %i.bb, ptr %i.ch, align 4, !tbaa !45
  %i.ci = getelementptr i8, ptr %i.bc, i64 16     ; 4 uses
  store i32 %i.am, ptr %i.ci, align 4, !tbaa !45, !noalias !51
  %i.cj = getelementptr [4 x i8], ptr %i.ci, i64 %i.x
  %i.ck = getelementptr [4 x i8], ptr %i.cj, i64 %.sroa.6411.0.us.us.us.us.us.us
  store i32 %i.az, ptr %i.ck, align 4, !tbaa !45
  %i.cl = getelementptr [4 x i8], ptr %i.ci, i64 %i.ac
  %i.cm = getelementptr [4 x i8], ptr %i.cl, i64 %.sroa.6411.1.us.us.us.us.us.us
  store i32 %i.aw, ptr %i.cm, align 4, !tbaa !45
  %i.cn = getelementptr [4 x i8], ptr %i.ci, i64 %i.ag
  %i.co = getelementptr [4 x i8], ptr %i.cn, i64 %.sroa.6411.1.us.us.us.us.us.us
  %i.cp = getelementptr [4 x i8], ptr %i.co, i64 %i.af
  store i32 %i.bb, ptr %i.cp, align 4, !tbaa !45
  %i.cq = getelementptr i8, ptr %i.bc, i64 20     ; 4 uses
  store i32 %i.am, ptr %i.cq, align 4, !tbaa !45, !noalias !52
  %i.cr = getelementptr [4 x i8], ptr %i.cq, i64 %i.x
  %i.cs = getelementptr [4 x i8], ptr %i.cr, i64 %.sroa.6411.0.us.us.us.us.us.us
  store i32 %i.ap, ptr %i.cs, align 4, !tbaa !45
  %i.ct = getelementptr [4 x i8], ptr %i.cq, i64 %i.ac
  %i.cu = getelementptr [4 x i8], ptr %i.ct, i64 %.sroa.6411.1.us.us.us.us.us.us
  store i32 %i.az, ptr %i.cu, align 4, !tbaa !45
  %i.cv = getelementptr [4 x i8], ptr %i.cq, i64 %i.ag
  %i.cw = getelementptr [4 x i8], ptr %i.cv, i64 %.sroa.6411.1.us.us.us.us.us.us
  %i.cx = getelementptr [4 x i8], ptr %i.cw, i64 %i.af
  store i32 %i.bb, ptr %i.cx, align 4, !tbaa !45
  %indvars.iv.next694 = add nsw i64 %indvars.iv693, 1 ; 3 uses
  %exitcond696.not = icmp eq i32 %i.as, %i.h
  br i1 %exitcond696.not, label %._crit_edge.split.us.us.us.us.us.us, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.us.us.us.us.us.us, !llvm.loop !30

._crit_edge.split.us.us.us.us.us.us:              ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.us.us.us.us.us.us
  %exitcond697.not = icmp eq i32 %i.ai, %i.g
  br i1 %exitcond697.not, label %._crit_edge641.split.us.split.us.us.us.us, label %.preheader.us.us.us.us.us, !llvm.loop !31

._crit_edge641.split.us.split.us.us.us.us:        ; preds = %._crit_edge.split.us.us.us.us.us.us
  %exitcond698.not = icmp eq i32 %i.ah, %i.f
  br i1 %exitcond698.not, label %._crit_edge, label %.preheader629.us.us.us, !llvm.loop !32

.preheader629.lr.ph.split.us.split.us.split.us676: ; preds = %.preheader629.lr.ph.split.us.split.us
  %i.cy = load ptr, ptr %2, align 8, !tbaa !13, !noalias !54
  %i.cz = load i64, ptr %i.p, align 8, !tbaa !14, !noalias !54 ; 3 uses
  %i.da = icmp eq i64 %i.cz, 1                    ; 4 uses
  %.sroa.6321.0.us.us.us.us.us.us = zext i1 %i.da to i64 ; 6 uses
  %i.db = select i1 %i.da, i64 1, i64 2           ; 2 uses
  %i.dc = load i64, ptr %i.q, align 8, !tbaa !15  ; 8 uses
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
  %.0128638.us.us652.us.us.us = phi i32 [ 0, %.preheader629.us.us.us677 ], [ %i.do, %._crit_edge.split.split.us.us.us.us.us.us ] ; 4 uses
  %.1637.us.us653.us.us.us = phi i32 [ %.0130660.us.us.us679, %.preheader629.us.us.us677 ], [ %6, %._crit_edge.split.split.us.us.us.us.us.us ]
  %i.do = add nuw nsw i32 %.0128638.us.us652.us.us.us, 1 ; 4 uses
  %i.dp = xor i32 %.0128638.us.us652.us.us.us, %.0129661.us.us.us678
  br label %bb.a

bb.a:                                             ; preds = %bb.d, %.preheader.us.us651.us.us.us
  %.0127631.us633.us.us.us.us.us = phi i32 [ 0, %.preheader.us.us651.us.us.us ], [ %i.dz, %bb.d ] ; 3 uses
  %.0127631.us633.us.us.us.us.us.a = phi i32 [ %.1637.us.us653.us.us.us, %.preheader.us.us651.us.us.us ], [ %6, %bb.d ] ; 2 uses
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
  %.0480.us.us.us.us.us.us = phi i32 [ %i.dt, %bb.a ], [ %i.dx, %bb.b ]
  %.0479.us.us.us.us.us.us = phi i32 [ %i.dw, %bb.a ], [ %i.dy, %bb.b ] ; 4 uses
  %.0478.us.us.us.us.us.us = phi i32 [ %i.dx, %bb.a ], [ %i.dt, %bb.b ] ; 4 uses
  %.0477.us.us.us.us.us.us = phi i32 [ %i.dy, %bb.a ], [ %i.dw, %bb.b ]
  %.0476.us.us.us.us.us.us = phi i32 [ %i.ed, %bb.a ], [ %i.eh, %bb.b ] ; 4 uses
  %.0475.us.us.us.us.us.us = phi i32 [ %i.eg, %bb.a ], [ %i.ei, %bb.b ]
  %.0474.us.us.us.us.us.us = phi i32 [ %i.eh, %bb.a ], [ %i.ed, %bb.b ]
  %.0.us.us.us.us.us.us = phi i32 [ %i.ei, %bb.a ], [ %i.eg, %bb.b ] ; 4 uses
  %3 = mul nsw i32 %.0127631.us633.us.us.us.us.us.a, 5
  %4 = sext i32 %3 to i64
  %5 = getelementptr [4 x i8], ptr %i.cy, i64 %4  ; 11 uses
  store i32 %.0476.us.us.us.us.us.us, ptr %5, align 4, !tbaa !45, !noalias !55
  %i.el = getelementptr [4 x i8], ptr %5, i64 %i.dd
  %i.em = getelementptr [4 x i8], ptr %i.el, i64 %.sroa.6321.0.us.us.us.us.us.us
  store i32 %.0478.us.us.us.us.us.us, ptr %i.em, align 4, !tbaa !45
  %i.en = getelementptr [4 x i8], ptr %5, i64 %i.di
  %i.eo = getelementptr [4 x i8], ptr %i.en, i64 %.sroa.6321.1.us.us.us.us.us.us
  store i32 %.0479.us.us.us.us.us.us, ptr %i.eo, align 4, !tbaa !45
  %i.ep = getelementptr [4 x i8], ptr %5, i64 %i.dm
  %i.eq = getelementptr [4 x i8], ptr %i.ep, i64 %.sroa.6321.1.us.us.us.us.us.us
  %i.er = getelementptr [4 x i8], ptr %i.eq, i64 %i.dl
  store i32 %.0480.us.us.us.us.us.us, ptr %i.er, align 4, !tbaa !45
  %i.es = getelementptr i8, ptr %5, i64 4         ; 7 uses
  store i32 %.0478.us.us.us.us.us.us, ptr %i.es, align 4, !tbaa !45, !noalias !56
  %i.et = getelementptr [4 x i8], ptr %i.es, i64 %i.dd
  %i.eu = getelementptr [4 x i8], ptr %i.et, i64 %.sroa.6321.0.us.us.us.us.us.us
  store i32 %.0479.us.us.us.us.us.us, ptr %i.eu, align 4, !tbaa !45
  %i.ev = getelementptr [4 x i8], ptr %i.es, i64 %i.di
  %i.ew = getelementptr [4 x i8], ptr %i.ev, i64 %.sroa.6321.1.us.us.us.us.us.us
  store i32 %.0.us.us.us.us.us.us, ptr %i.ew, align 4, !tbaa !45
  %i.ex = getelementptr [4 x i8], ptr %i.es, i64 %i.dm
  %i.ey = getelementptr [4 x i8], ptr %i.ex, i64 %.sroa.6321.1.us.us.us.us.us.us
  %i.ez = getelementptr [4 x i8], ptr %i.ey, i64 %i.dl
  store i32 %.0476.us.us.us.us.us.us, ptr %i.ez, align 4, !tbaa !45
  %i.fa = getelementptr i8, ptr %5, i64 8         ; 7 uses
  store i32 %.0478.us.us.us.us.us.us, ptr %i.fa, align 4, !tbaa !45, !noalias !57
  %i.fb = getelementptr [4 x i8], ptr %i.fa, i64 %i.dd
  %i.fc = getelementptr [4 x i8], ptr %i.fb, i64 %.sroa.6321.0.us.us.us.us.us.us
  store i32 %.0477.us.us.us.us.us.us, ptr %i.fc, align 4, !tbaa !45
  %i.fd = getelementptr [4 x i8], ptr %i.fa, i64 %i.di
  %i.fe = getelementptr [4 x i8], ptr %i.fd, i64 %.sroa.6321.1.us.us.us.us.us.us
  store i32 %.0.us.us.us.us.us.us, ptr %i.fe, align 4, !tbaa !45
  %i.ff = getelementptr [4 x i8], ptr %i.fa, i64 %i.dm
  %i.fg = getelementptr [4 x i8], ptr %i.ff, i64 %.sroa.6321.1.us.us.us.us.us.us
  %i.fh = getelementptr [4 x i8], ptr %i.fg, i64 %i.dl
  store i32 %.0479.us.us.us.us.us.us, ptr %i.fh, align 4, !tbaa !45
  %i.fi = getelementptr i8, ptr %5, i64 12        ; 7 uses
  store i32 %.0478.us.us.us.us.us.us, ptr %i.fi, align 4, !tbaa !45, !noalias !58
  %i.fj = getelementptr [4 x i8], ptr %i.fi, i64 %i.dd
  %i.fk = getelementptr [4 x i8], ptr %i.fj, i64 %.sroa.6321.0.us.us.us.us.us.us
  store i32 %.0.us.us.us.us.us.us, ptr %i.fk, align 4, !tbaa !45
  %i.fl = getelementptr [4 x i8], ptr %i.fi, i64 %i.di
  %i.fm = getelementptr [4 x i8], ptr %i.fl, i64 %.sroa.6321.1.us.us.us.us.us.us
  store i32 %.0474.us.us.us.us.us.us, ptr %i.fm, align 4, !tbaa !45
  %i.fn = getelementptr [4 x i8], ptr %i.fi, i64 %i.dm
  %i.fo = getelementptr [4 x i8], ptr %i.fn, i64 %.sroa.6321.1.us.us.us.us.us.us
  %i.fp = getelementptr [4 x i8], ptr %i.fo, i64 %i.dl
  store i32 %.0476.us.us.us.us.us.us, ptr %i.fp, align 4, !tbaa !45
  %i.fq = getelementptr i8, ptr %5, i64 16        ; 7 uses
  store i32 %.0479.us.us.us.us.us.us, ptr %i.fq, align 4, !tbaa !45, !noalias !59
  %i.fr = getelementptr [4 x i8], ptr %i.fq, i64 %i.dd
  %i.fs = getelementptr [4 x i8], ptr %i.fr, i64 %.sroa.6321.0.us.us.us.us.us.us
  store i32 %.0475.us.us.us.us.us.us, ptr %i.fs, align 4, !tbaa !45
  %i.ft = getelementptr [4 x i8], ptr %i.fq, i64 %i.di
  %i.fu = getelementptr [4 x i8], ptr %i.ft, i64 %.sroa.6321.1.us.us.us.us.us.us
  store i32 %.0.us.us.us.us.us.us, ptr %i.fu, align 4, !tbaa !45
  %i.fv = getelementptr [4 x i8], ptr %i.fq, i64 %i.dm
  %i.fw = getelementptr [4 x i8], ptr %i.fv, i64 %.sroa.6321.1.us.us.us.us.us.us
  %i.fx = getelementptr [4 x i8], ptr %i.fw, i64 %i.dl
  store i32 %.0476.us.us.us.us.us.us, ptr %i.fx, align 4, !tbaa !45
  br i1 %.not.us.us.us.us.us.us, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit205.us.us.us.us.us.us
  %i.fy = getelementptr [4 x i8], ptr %5, i64 %i.dc ; 2 uses
  %i.fz = load i32, ptr %5, align 4, !tbaa !45
  %i.ga = load i32, ptr %i.fy, align 4, !tbaa !45
  store i32 %i.ga, ptr %5, align 4, !tbaa !45
  store i32 %i.fz, ptr %i.fy, align 4, !tbaa !45
  %i.gb = getelementptr [4 x i8], ptr %i.es, i64 %i.dc ; 2 uses
  %i.gc = load i32, ptr %i.es, align 4, !tbaa !45
  %i.gd = load i32, ptr %i.gb, align 4, !tbaa !45
  store i32 %i.gd, ptr %i.es, align 4, !tbaa !45
  store i32 %i.gc, ptr %i.gb, align 4, !tbaa !45
  %i.ge = getelementptr [4 x i8], ptr %i.fa, i64 %i.dc ; 2 uses
  %i.gf = load i32, ptr %i.fa, align 4, !tbaa !45
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !45
  store i32 %i.gg, ptr %i.fa, align 4, !tbaa !45
  store i32 %i.gf, ptr %i.ge, align 4, !tbaa !45
  %i.gh = getelementptr [4 x i8], ptr %i.fi, i64 %i.dc ; 2 uses
  %i.gi = load i32, ptr %i.fi, align 4, !tbaa !45
  %i.gj = load i32, ptr %i.gh, align 4, !tbaa !45
  store i32 %i.gj, ptr %i.fi, align 4, !tbaa !45
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !45
  %i.gk = getelementptr [4 x i8], ptr %i.fq, i64 %i.dc ; 2 uses
  %i.gl = load i32, ptr %i.fq, align 4, !tbaa !45
  %i.gm = load i32, ptr %i.gk, align 4, !tbaa !45
  store i32 %i.gm, ptr %i.fq, align 4, !tbaa !45
  store i32 %i.gl, ptr %i.gk, align 4, !tbaa !45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit205.us.us.us.us.us.us
  %6 = add nsw i32 %.0127631.us633.us.us.us.us.us.a, 1 ; 3 uses
  %exitcond.not = icmp eq i32 %i.dz, %i.h
  br i1 %exitcond.not, label %._crit_edge.split.split.us.us.us.us.us.us, label %bb.a, !llvm.loop !30

._crit_edge.split.split.us.us.us.us.us.us:        ; preds = %bb.d
  %exitcond691.not.a = icmp eq i32 %i.do, %i.g
  br i1 %exitcond691.not.a, label %._crit_edge641.split.us.split.split.us.us.us.us, label %.preheader.us.us651.us.us.us, !llvm.loop !31

._crit_edge641.split.us.split.split.us.us.us.us:  ; preds = %._crit_edge.split.split.us.us.us.us.us.us
  %exitcond692.not = icmp eq i32 %i.dn, %i.f
  br i1 %exitcond692.not, label %._crit_edge, label %.preheader629.us.us.us677, !llvm.loop !32

._crit_edge:                                      ; preds = %._crit_edge641.split.us.split.split.us.us.us.us, %._crit_edge641.split.us.split.us.us.us.us, %.preheader629.lr.ph.split.us.split.us, %.preheader629.lr.ph, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !13
  tail call void @free(ptr noundef %i.f) #5
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #5 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !61
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #6
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #7 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #5 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !61
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #6
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !15
  store i64 %3, ptr %i.c, align 8, !tbaa !14
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
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 int", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !10, i64 0, !11, i64 8, !11, i64 16}
!13 = !{!12, !10, i64 0}
!14 = !{!12, !11, i64 16}
!15 = !{!12, !11, i64 8}
!16 = distinct !{!16, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!17 = distinct !{!17, !16, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!18 = distinct !{!18, i1 true, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi"}
!19 = distinct !{!19, !18, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi: argument 0"}
!20 = distinct !{!20, i1 true, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi"}
!21 = distinct !{!21, !20, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi: argument 0"}
!22 = distinct !{!22, i1 true, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi"}
!23 = distinct !{!23, !22, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi: argument 0"}
!24 = distinct !{!24, i1 true, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi"}
!25 = distinct !{!25, !24, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi: argument 0"}
!26 = distinct !{!26, i1 true, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi"}
!27 = distinct !{!27, !26, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi: argument 0"}
!28 = distinct !{!28, i1 true, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi"}
!29 = distinct !{!29, !28, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi: argument 0"}
!30 = distinct !{!30, !53}
!31 = distinct !{!31, !53}
!32 = distinct !{!32, !53}
!33 = distinct !{!33, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!34 = distinct !{!34, !33, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!35 = distinct !{!35, i1 true, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi"}
!36 = distinct !{!36, !35, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi: argument 0"}
!37 = distinct !{!37, i1 true, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi"}
!38 = distinct !{!38, !37, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi: argument 0"}
!39 = distinct !{!39, i1 true, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi"}
!40 = distinct !{!40, !39, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi: argument 0"}
!41 = distinct !{!41, i1 true, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi"}
!42 = distinct !{!42, !41, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi: argument 0"}
!43 = distinct !{!43, i1 true, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi"}
!44 = distinct !{!44, !43, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEElsERKi: argument 0"}
!45 = !{!6, !6, i64 0}
!46 = !{!17}
!47 = !{!19}
!48 = !{!21}
!49 = !{!23}
!50 = !{!25}
!51 = !{!27}
!52 = !{!29}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!34}
!55 = !{!36}
!56 = !{!38}
!57 = !{!40}
!58 = !{!42}
!59 = !{!44}
!60 = !{!"vtable pointer", !4, i64 0}
!61 = !{!60, !60, i64 0}
end_hunk_0
