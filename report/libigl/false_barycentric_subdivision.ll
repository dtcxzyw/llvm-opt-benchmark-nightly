inline.NumInlined: 313
inline.NumDeleted: 209
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3igl29false_barycentric_subdivisionIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S4_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EERNSE_IT2_EE:bb.a
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.by
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.prol
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !54
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !54
  %i.cc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.prol, !llvm.loop !68

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.us.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.preheader ], [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.prol ]
  %i.cd = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.ph, %i.be
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %.loopexit192, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.i.i.i.i.us:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us
  %.05.i.i.i.i.i.i.i.i.i.i.us = phi i64 [ %i.cy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit ] ; 6 uses
  %i.cf = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us, %i.bg
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.cf
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %.05.i.i.i.i.i.i.i.i.i.i.us
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !54
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !54
  %i.cj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us, 1 ; 2 uses
  %i.ck = mul nsw i64 %i.cj, %i.bg
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.ck
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %i.cj
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !54
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !54
  %i.co = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us, 2 ; 2 uses
  %i.cp = mul nsw i64 %i.co, %i.bg
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.cp
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %i.co
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !54
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !54
  %i.ct = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us, 3 ; 2 uses
  %i.cu = mul nsw i64 %i.ct, %i.bg
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.cu
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %i.ct
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !54
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !54
  %i.cy = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.3 = icmp eq i64 %i.cy, %i.be
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.3, label %.loopexit192, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us, !llvm.loop !70

.loopexit192:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us, %middle.block189
  %i.cz = add i32 %i.bq, 1
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.da ; 6 uses
  br i1 %or.cond193, label %vector.body170, label %.lr.ph.i.i.i.i.i.i.i.i.i.i88.us.preheader

vector.body170:                                   ; preds = %.loopexit192, %vector.body170
  %index171 = phi i64 [ %index.next174, %vector.body170 ], [ 0, %.loopexit192 ] ; 3 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.db, i64 %index171 ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %index171 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load172 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !54
  %wide.load173 = load <4 x i32>, ptr %i.de, align 4, !tbaa !54
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <4 x i32> %wide.load172, ptr %i.dc, align 4, !tbaa !54
  store <4 x i32> %wide.load173, ptr %i.df, align 4, !tbaa !54
  %index.next174 = add nuw i64 %index171, 8       ; 2 uses
  %i.dg = icmp eq i64 %index.next174, %n.vec169
  br i1 %i.dg, label %middle.block175, label %vector.body170, !llvm.loop !71

middle.block175:                                  ; preds = %vector.body170
  br i1 %cmp.n176, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i88.us.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i88.us.preheader:        ; preds = %.loopexit192, %middle.block175
  %.05.i.i.i.i.i.i.i.i.i.i89.us.ph = phi i64 [ 0, %.loopexit192 ], [ %n.vec169, %middle.block175 ] ; 3 uses
  br i1 %lcmp.mod196.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i88.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i88.us.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i88.us.prol:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i88.us.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i88.us.prol
  %.05.i.i.i.i.i.i.i.i.i.i89.us.prol = phi i64 [ %i.dl, %.lr.ph.i.i.i.i.i.i.i.i.i.i88.us.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i89.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i88.us.preheader ] ; 3 uses
  %prol.iter197 = phi i64 [ %prol.iter197.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i88.us.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i88.us.preheader ]
  %i.dh = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i89.us.prol, %i.bg
  %i.di = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.dh
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %.05.i.i.i.i.i.i.i.i.i.i89.us.prol
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !54
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !54
  %i.dl = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i89.us.prol, 1 ; 2 uses
  %prol.iter197.next = add i64 %prol.iter197, 1   ; 2 uses
  %prol.iter197.cmp.not = icmp eq i64 %prol.iter197.next, %xtraiter195
  br i1 %prol.iter197.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i88.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i88.us.prol, !llvm.loop !72

.lr.ph.i.i.i.i.i.i.i.i.i.i88.us.prol.loopexit:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i88.us.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i88.us.preheader
  %.05.i.i.i.i.i.i.i.i.i.i89.us.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i89.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i88.us.preheader ], [ %i.dl, %.lr.ph.i.i.i.i.i.i.i.i.i.i88.us.prol ]
  %i.dm = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i89.us.ph, %i.be
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i88.us

.lr.ph.i.i.i.i.i.i.i.i.i.i88.us:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i88.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i88.us
  %.05.i.i.i.i.i.i.i.i.i.i89.us = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i.i.i.i.i.i88.us ], [ %.05.i.i.i.i.i.i.i.i.i.i89.us.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i88.us.prol.loopexit ] ; 6 uses
  %i.do = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i89.us, %i.bg
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.do
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %.05.i.i.i.i.i.i.i.i.i.i89.us
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !54
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !54
  %i.ds = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i89.us, 1 ; 2 uses
  %i.dt = mul nsw i64 %i.ds, %i.bg
  %i.du = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.dt
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %i.ds
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !54
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !54
  %i.dx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i89.us, 2 ; 2 uses
  %i.dy = mul nsw i64 %i.dx, %i.bg
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.dy
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %i.dx
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !54
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !54
  %i.ec = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i89.us, 3 ; 2 uses
  %i.ed = mul nsw i64 %i.ec, %i.bg
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.ed
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %i.ec
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !54
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !54
  %i.eh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i89.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i90.us.3 = icmp eq i64 %i.eh, %i.be
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i90.us.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i88.us, !llvm.loop !73

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i88.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i88.us, %middle.block175
  %i.ei = add i32 %i.bq, 2
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.ej ; 6 uses
  br i1 %or.cond194, label %vector.body, label %.lr.ph.i.i.i.i.i.i.i.i.i.i92.us.preheader

vector.body:                                      ; preds = %.loopexit, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.loopexit ] ; 3 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %index ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %index ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load = load <4 x i32>, ptr %i.em, align 4, !tbaa !54
  %wide.load163 = load <4 x i32>, ptr %i.en, align 4, !tbaa !54
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store <4 x i32> %wide.load, ptr %i.el, align 4, !tbaa !54
  store <4 x i32> %wide.load163, ptr %i.eo, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ep = icmp eq i64 %index.next, %n.vec
  br i1 %i.ep, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IiLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit95.loopexit.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i92.us.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i92.us.preheader:        ; preds = %.loopexit, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i93.us.ph = phi i64 [ 0, %.loopexit ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod199.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i92.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i92.us.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i92.us.prol:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i92.us.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i92.us.prol
  %.05.i.i.i.i.i.i.i.i.i.i93.us.prol = phi i64 [ %i.eu, %.lr.ph.i.i.i.i.i.i.i.i.i.i92.us.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i93.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i92.us.preheader ] ; 3 uses
  %prol.iter200 = phi i64 [ %prol.iter200.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i92.us.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i92.us.preheader ]
  %i.eq = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i93.us.prol, %i.bg
  %i.er = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.eq
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %.05.i.i.i.i.i.i.i.i.i.i93.us.prol
  %i.et = load i32, ptr %i.es, align 4, !tbaa !54
  store i32 %i.et, ptr %i.er, align 4, !tbaa !54
  %i.eu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i93.us.prol, 1 ; 2 uses
  %prol.iter200.next = add i64 %prol.iter200, 1   ; 2 uses
  %prol.iter200.cmp.not = icmp eq i64 %prol.iter200.next, %xtraiter198
  br i1 %prol.iter200.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i92.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i92.us.prol, !llvm.loop !75

.lr.ph.i.i.i.i.i.i.i.i.i.i92.us.prol.loopexit:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i92.us.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i92.us.preheader
  %.05.i.i.i.i.i.i.i.i.i.i93.us.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i93.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i92.us.preheader ], [ %i.eu, %.lr.ph.i.i.i.i.i.i.i.i.i.i92.us.prol ]
  %i.ev = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i93.us.ph, %i.be
  %i.ew = icmp ugt i64 %i.ev, -4
  br i1 %i.ew, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IiLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit95.loopexit.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i92.us

.lr.ph.i.i.i.i.i.i.i.i.i.i92.us:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i92.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i92.us
  %.05.i.i.i.i.i.i.i.i.i.i93.us = phi i64 [ %i.fq, %.lr.ph.i.i.i.i.i.i.i.i.i.i92.us ], [ %.05.i.i.i.i.i.i.i.i.i.i93.us.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i92.us.prol.loopexit ] ; 6 uses
  %i.ex = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i93.us, %i.bg
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.ex
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %.05.i.i.i.i.i.i.i.i.i.i93.us
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !54
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !54
  %i.fb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i93.us, 1 ; 2 uses
  %i.fc = mul nsw i64 %i.fb, %i.bg
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.fc
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %i.fb
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !54
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !54
  %i.fg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i93.us, 2 ; 2 uses
  %i.fh = mul nsw i64 %i.fg, %i.bg
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.fh
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %i.fg
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !54
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !54
  %i.fl = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i93.us, 3 ; 2 uses
  %i.fm = mul nsw i64 %i.fl, %i.bg
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.fm
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %i.fl
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !54
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !54
  %i.fq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i93.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i94.us.3 = icmp eq i64 %i.fq, %i.be
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i94.us.3, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IiLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit95.loopexit.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i92.us, !llvm.loop !76

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IiLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit95.loopexit.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i92.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i92.us, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %i.fr = add i32 %.0155.us, 1                    ; 2 uses
  %i.fs = zext i32 %i.fr to i64                   ; 2 uses
  %18 = icmp sgt i64 %i.au, %i.fs
  br i1 %18, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.us, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge, !llvm.loop !77

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge: ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IiLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit95.loopexit.us, %.lr.ph, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.ft = load ptr, ptr %12, align 8, !tbaa !20
  call void @free(ptr noundef %i.ft) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  ret void

bb.f:                                             ; preds = %.invoke, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i60, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.a
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.pn48.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fv, %bb.g ], [ %i.fu, %bb.f ], [ %i.fw, %bb.h ]
  %i.fx = load ptr, ptr %12, align 8, !tbaa !20
  call void @free(ptr noundef %i.fx) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  resume { ptr, i32 } %.pn48.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN3igl10barycenterIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !78
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.f) #11
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !47
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #12
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #13 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !47
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #12
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !9
  store i64 %3, ptr %i.c, align 8, !tbaa !78
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79, !nonnull !81, !align !82 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !24   ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSC_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !24   ; 9 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSC_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !81, !align !82 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %0, align 8, !nonnull !81, !align !82 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !33   ; 3 uses
  %i.r = load i64, ptr %i.p, align 8, !tbaa !24   ; 3 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !83   ; 3 uses
  %i.t = load i64, ptr %i.n, align 8, !tbaa !32   ; 3 uses
  %i.u = add nsw i64 %i.g, -1                     ; 2 uses
  %i.v = mul i64 %i.r, %i.u
  %i.w = add i64 %i.v, %i.j
  %i.x = shl i64 %i.w, 3
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.x
  %i.y = mul i64 %i.t, %i.u
  %i.z = add i64 %i.y, %i.j
  %i.aa = shl i64 %i.z, 3
  %scevgep67 = getelementptr i8, ptr %i.s, i64 %i.aa
  %min.iters.check = icmp ult i64 %i.j, 8
  %bound0 = icmp ult ptr %i.q, %scevgep67
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.ab = or i64 %i.t, %i.r
  %i.ac = and i64 %i.ab, 1152921504606846976
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = or i1 %found.conflict, %i.ad
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.as, %._crit_edge.i ] ; 3 uses
  %i.af = mul nsw i64 %.0810.i, %i.r
  %i.ag = getelementptr [8 x i8], ptr %i.q, i64 %i.af ; 6 uses
  %i.ah = mul nsw i64 %.0810.i, %i.t
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.s, i64 %i.ah ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ae
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i ] ; 3 uses
  %i.ai = getelementptr [8 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  %wide.load = load <2 x double>, ptr %i.aj, align 8, !tbaa !85, !alias.scope !87
  %wide.load69 = load <2 x double>, ptr %i.ak, align 8, !tbaa !85, !alias.scope !87
  %i.al = getelementptr i8, ptr %i.ai, i64 16
  store <2 x double> %wide.load, ptr %i.ai, align 8, !tbaa !85, !alias.scope !90, !noalias !87
  store <2 x double> %wide.load69, ptr %i.al, align 8, !tbaa !85, !alias.scope !90, !noalias !87
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.prol = phi i64 [ %i.ap, %scalar.ph.prol ], [ %.09.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.an = getelementptr [8 x i8], ptr %i.ag, i64 %.09.i.prol
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.09.i.prol
  %i.ao = load double, ptr %gep.i.prol, align 8, !tbaa !85
  store double %i.ao, ptr %i.an, align 8, !tbaa !85
end_hunk_0
