inline.NumInlined: 22
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@bilateralv_planes:bb.a
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !68
  %sext.i = shl i64 %i.al, 32                     ; 3 uses
  %i.au = ashr exact i64 %sext.i, 32              ; 9 uses
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au ; 4 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !65 ; 3 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.au ; 8 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !65
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.au ; 5 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !65
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.au ; 4 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !65 ; 4 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.au ; 9 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !65
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.au ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !65 ; 2 uses
  %i.bn = getelementptr [4 x i8], ptr %i.bm, i64 %i.au ; 8 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !65
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.au ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !65 ; 2 uses
  %i.bt = getelementptr [4 x i8], ptr %i.bs, i64 %i.au ; 9 uses
  %i.bu = load float, ptr %i.y, align 8, !tbaa !28
  %i.bv = fsub nsz float 1.000000e+00, %i.bu      ; 4 uses
  %i.bw = sub i32 %i.ap, %i.am                    ; 7 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = shl nsw i64 %i.bx, 2                    ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ay, ptr align 4 %i.bb, i64 %i.by, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bh, ptr align 4 %i.be, i64 %i.by, i1 false)
  %i.bz = icmp sgt i32 %i.ai, 1
  %i.ca = icmp sgt i32 %i.bw, 0                   ; 2 uses
  %or.cond.i = select i1 %i.bz, i1 %i.ca, i1 false ; 2 uses
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %._crit_edge13.split.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.cb = sext i32 %i.ar to i64                   ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.ai to i64
  br label %.lr.ph.i

._crit_edge13.split.i:                            ; preds = %._crit_edge.i, %bb.d
  %i.cc = add i32 %i.ai, -1
  %i.cd = mul i32 %i.cc, %i.ag
  %i.ce = sext i32 %i.cd to i64                   ; 10 uses
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.ce
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bt, ptr align 4 %i.cf, i64 %i.by, i1 false)
  br i1 %i.ca, label %.lr.ph17.preheader.i, label %._crit_edge18.i

.lr.ph17.preheader.i:                             ; preds = %._crit_edge13.split.i
  %wide.trip.count52.i = zext nneg i32 %i.bw to i64 ; 12 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.bh, i64 %i.ce ; 7 uses
  %min.iters.check105 = icmp ult i32 %i.bw, 8
  br i1 %min.iters.check105, label %.lr.ph17.i.preheader, label %vector.memcheck98

vector.memcheck98:                                ; preds = %.lr.ph17.preheader.i
  %i.cg = shl nsw i64 %i.ce, 2
  %i.ch = ashr exact i64 %sext.i, 30              ; 2 uses
  %i.ci = shl nuw nsw i64 %wide.trip.count52.i, 2 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.bg, i64 %i.cg
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.ch
  %scevgep99 = getelementptr i8, ptr %i.ck, i64 %i.ci
  %i.cl = getelementptr i8, ptr %i.bs, i64 %i.ch
  %scevgep100 = getelementptr i8, ptr %i.cl, i64 %i.ci
  %bound0101 = icmp ult ptr %invariant.gep.i, %scevgep100
  %bound1102 = icmp ult ptr %i.bt, %scevgep99
  %found.conflict103 = and i1 %bound0101, %bound1102
  br i1 %found.conflict103, label %.lr.ph17.i.preheader, label %vector.ph106

vector.ph106:                                     ; preds = %vector.memcheck98
  %n.vec107 = and i64 %wide.trip.count52.i, 2147483640 ; 3 uses
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph106
  %index109 = phi i64 [ 0, %vector.ph106 ], [ %index.next114, %vector.body108 ] ; 3 uses
  %i.cm = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index109 ; 3 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 16     ; 2 uses
  %wide.load110 = load <4 x float>, ptr %i.cm, align 4, !tbaa !29, !alias.scope !96, !noalias !99
  %wide.load111 = load <4 x float>, ptr %i.cn, align 4, !tbaa !29, !alias.scope !96, !noalias !99
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %index109 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %wide.load112 = load <4 x float>, ptr %i.co, align 4, !tbaa !29, !alias.scope !99
  %wide.load113 = load <4 x float>, ptr %i.cp, align 4, !tbaa !29, !alias.scope !99
  %i.cq = fadd nsz <4 x float> %wide.load110, %wide.load112
  %i.cr = fadd nsz <4 x float> %wide.load111, %wide.load113
  store <4 x float> %i.cq, ptr %i.cm, align 4, !tbaa !29, !alias.scope !96, !noalias !99
  store <4 x float> %i.cr, ptr %i.cn, align 4, !tbaa !29, !alias.scope !96, !noalias !99
  %index.next114 = add nuw i64 %index109, 8       ; 2 uses
  %i.cs = icmp eq i64 %index.next114, %n.vec107
  br i1 %i.cs, label %middle.block115, label %vector.body108, !llvm.loop !101

middle.block115:                                  ; preds = %vector.body108
  %cmp.n116 = icmp eq i64 %n.vec107, %wide.trip.count52.i
  br i1 %cmp.n116, label %.lr.ph22.preheader.i, label %.lr.ph17.i.preheader

.lr.ph17.i.preheader:                             ; preds = %vector.memcheck98, %.lr.ph17.preheader.i, %middle.block115
  %indvars.iv47.i.ph = phi i64 [ 0, %vector.memcheck98 ], [ 0, %.lr.ph17.preheader.i ], [ %n.vec107, %middle.block115 ] ; 3 uses
  %xtraiter168 = and i64 %wide.trip.count52.i, 3  ; 2 uses
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %.lr.ph17.i.prol.loopexit, label %.lr.ph17.i.prol

.lr.ph17.i.prol:                                  ; preds = %.lr.ph17.i.preheader, %.lr.ph17.i.prol
  %indvars.iv47.i.prol = phi i64 [ %indvars.iv.next48.i.prol, %.lr.ph17.i.prol ], [ %indvars.iv47.i.ph, %.lr.ph17.i.preheader ] ; 3 uses
  %prol.iter170 = phi i64 [ %prol.iter170.next, %.lr.ph17.i.prol ], [ 0, %.lr.ph17.i.preheader ]
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv47.i.prol ; 2 uses
  %i.ct = load float, ptr %gep.i.prol, align 4, !tbaa !29
  %indvars.iv.next48.i.prol = add nuw nsw i64 %indvars.iv47.i.prol, 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv47.i.prol
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !29
  %i.cw = fadd nsz float %i.ct, %i.cv
  store float %i.cw, ptr %gep.i.prol, align 4, !tbaa !29
  %prol.iter170.next = add i64 %prol.iter170, 1   ; 2 uses
  %prol.iter170.cmp.not = icmp eq i64 %prol.iter170.next, %xtraiter168
  br i1 %prol.iter170.cmp.not, label %.lr.ph17.i.prol.loopexit, label %.lr.ph17.i.prol, !llvm.loop !102

.lr.ph17.i.prol.loopexit:                         ; preds = %.lr.ph17.i.prol, %.lr.ph17.i.preheader
  %indvars.iv47.i.unr = phi i64 [ %indvars.iv47.i.ph, %.lr.ph17.i.preheader ], [ %indvars.iv.next48.i.prol, %.lr.ph17.i.prol ]
  %i.cx = sub nsw i64 %indvars.iv47.i.ph, %wide.trip.count52.i
  %i.cy = icmp ugt i64 %i.cx, -4
  br i1 %i.cy, label %.lr.ph22.preheader.i, label %.lr.ph17.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 4 uses
  %i.cz = add nsw i64 %indvars.iv.i, -1           ; 2 uses
  %i.da = mul nsw i64 %i.cz, %i.cb
  %i.db = getelementptr inbounds i8, ptr %i.av, i64 %i.da
  %i.dc = mul nsw i64 %indvars.iv.i, %i.cb
  %i.dd = getelementptr inbounds i8, ptr %i.av, i64 %i.dc
  %i.de = mul nsw i64 %indvars.iv.i, %i.aj        ; 4 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.de
  %i.dg = mul nsw i64 %i.cz, %i.aj                ; 2 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.dg
  %i.di = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.de
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.de
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.dg
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.de
  br label %bb.e

._crit_edge.i:                                    ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond46.not.i, label %._crit_edge13.split.i, label %.lr.ph.i, !llvm.loop !104

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02129.i = phi i32 [ 0, %.lr.ph.i ], [ %i.el, %bb.e ]
  %.02148.i = phi ptr [ %i.db, %.lr.ph.i ], [ %i.dp, %bb.e ] ; 2 uses
  %.02157.i = phi ptr [ %i.dd, %.lr.ph.i ], [ %i.dm, %bb.e ] ; 2 uses
  %.02176.i = phi ptr [ %i.dj, %.lr.ph.i ], [ %i.ee, %bb.e ] ; 2 uses
  %.02195.i = phi ptr [ %i.dk, %.lr.ph.i ], [ %i.eg, %bb.e ] ; 2 uses
  %.02214.i = phi ptr [ %i.dl, %.lr.ph.i ], [ %i.ek, %bb.e ] ; 2 uses
  %.02223.i = phi ptr [ %i.df, %.lr.ph.i ], [ %i.dx, %bb.e ] ; 2 uses
  %.02242.i = phi ptr [ %i.dh, %.lr.ph.i ], [ %i.dz, %bb.e ] ; 2 uses
  %.02261.i = phi ptr [ %i.di, %.lr.ph.i ], [ %i.ed, %bb.e ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.02157.i, i64 1
  %i.dn = load i8, ptr %.02157.i, align 1, !tbaa !69
  %i.do = zext i8 %i.dn to i16
  %i.dp = getelementptr inbounds nuw i8, ptr %.02148.i, i64 1
  %i.dq = load i8, ptr %.02148.i, align 1, !tbaa !69
  %i.dr = zext i8 %i.dq to i16
  %i.ds = sub nsw i16 %i.do, %i.dr
  %i.dt = tail call i16 @llvm.abs.i16(i16 %i.ds, i1 true)
  %i.du = zext nneg i16 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !29 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.02223.i, i64 4
  %i.dy = load float, ptr %.02223.i, align 4, !tbaa !29
  %i.dz = getelementptr inbounds nuw i8, ptr %.02242.i, i64 4
  %i.ea = load float, ptr %.02242.i, align 4, !tbaa !29
  %i.eb = fmul nsz float %i.dw, %i.ea
  %i.ec = tail call nsz float @llvm.fmuladd.f32(float %i.bv, float %i.dy, float %i.eb)
  %i.ed = getelementptr inbounds nuw i8, ptr %.02261.i, i64 4
  store float %i.ec, ptr %.02261.i, align 4, !tbaa !29
  %i.ee = getelementptr inbounds nuw i8, ptr %.02176.i, i64 4
  %i.ef = load float, ptr %.02176.i, align 4, !tbaa !29
  %i.eg = getelementptr inbounds nuw i8, ptr %.02195.i, i64 4
  %i.eh = load float, ptr %.02195.i, align 4, !tbaa !29
  %i.ei = fmul nsz float %i.dw, %i.eh
  %i.ej = tail call nsz float @llvm.fmuladd.f32(float %i.bv, float %i.ef, float %i.ei)
  %i.ek = getelementptr inbounds nuw i8, ptr %.02214.i, i64 4
  store float %i.ej, ptr %.02214.i, align 4, !tbaa !29
  %i.el = add nuw nsw i32 %.02129.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.el, %i.bw
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !105

._crit_edge18.i:                                  ; preds = %._crit_edge13.split.i
  %i.em = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ce
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bn, ptr align 4 %i.em, i64 %i.by, i1 false)
  br label %._crit_edge23.i

.lr.ph22.preheader.i:                             ; preds = %.lr.ph17.i.prol.loopexit, %.lr.ph17.i, %middle.block115
  %i.en = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ce
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bn, ptr align 4 %i.en, i64 %i.by, i1 false)
  %min.iters.check = icmp ult i32 %i.bw, 4
  br i1 %min.iters.check, label %.lr.ph22.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph22.preheader.i
  %i.eo = shl nsw i64 %i.ce, 2
  %i.ep = ashr exact i64 %sext.i, 30              ; 2 uses
  %i.eq = add nsw i64 %i.eo, %i.ep                ; 3 uses
  %scevgep = getelementptr i8, ptr %i.ax, i64 %i.eq ; 2 uses
  %i.er = shl nuw nsw i64 %wide.trip.count52.i, 2 ; 2 uses
  %i.es = add nsw i64 %i.eq, %i.er                ; 2 uses
  %scevgep89 = getelementptr i8, ptr %i.ax, i64 %i.es ; 2 uses
  %i.et = getelementptr i8, ptr %i.bm, i64 %i.ep
  %scevgep90 = getelementptr i8, ptr %i.et, i64 %i.er
  %scevgep91 = getelementptr i8, ptr %i.bg, i64 %i.eq
  %scevgep92 = getelementptr i8, ptr %i.bg, i64 %i.es
  %bound0 = icmp ult ptr %scevgep, %scevgep90
  %bound1 = icmp ult ptr %i.bn, %scevgep89
  %found.conflict = and i1 %bound0, %bound1
  %bound093 = icmp ult ptr %scevgep, %scevgep92
  %bound194 = icmp ult ptr %scevgep91, %scevgep89
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx = or i1 %found.conflict, %found.conflict95
  br i1 %conflict.rdx, label %.lr.ph22.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count52.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eu = add nsw i64 %index, %i.ce               ; 2 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.eu ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ev, align 4, !tbaa !29, !alias.scope !106, !noalias !109
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index
  %wide.load96 = load <4 x float>, ptr %i.ew, align 4, !tbaa !29, !alias.scope !112
  %i.ex = fadd nsz <4 x float> %wide.load, %wide.load96
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.eu
  %wide.load97 = load <4 x float>, ptr %i.ey, align 4, !tbaa !29, !alias.scope !113
  %i.ez = fdiv nsz <4 x float> %i.ex, %wide.load97
  store <4 x float> %i.ez, ptr %i.ev, align 4, !tbaa !29, !alias.scope !106, !noalias !109
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count52.i
  br i1 %cmp.n, label %._crit_edge23.i, label %.lr.ph22.i.preheader

.lr.ph22.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph22.preheader.i, %middle.block
  %indvars.iv54.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph22.preheader.i ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter171 = and i64 %wide.trip.count52.i, 1
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph22.i.prol.loopexit, label %.lr.ph22.i.prol

.lr.ph22.i.prol:                                  ; preds = %.lr.ph22.i.preheader
  %i.fb = add nsw i64 %indvars.iv54.i.ph, %i.ce   ; 2 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.fb ; 2 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !29
  %indvars.iv.next55.i.prol = or disjoint i64 %indvars.iv54.i.ph, 1
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv54.i.ph
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !29
  %i.fg = fadd nsz float %i.fd, %i.ff
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.fb
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !29
  %i.fj = fdiv nsz float %i.fg, %i.fi
  store float %i.fj, ptr %i.fc, align 4, !tbaa !29
  br label %.lr.ph22.i.prol.loopexit

.lr.ph22.i.prol.loopexit:                         ; preds = %.lr.ph22.i.prol, %.lr.ph22.i.preheader
  %indvars.iv54.i.unr = phi i64 [ %indvars.iv54.i.ph, %.lr.ph22.i.preheader ], [ %indvars.iv.next55.i.prol, %.lr.ph22.i.prol ]
  %i.fk = add nsw i64 %wide.trip.count52.i, -1
  %i.fl = icmp eq i64 %indvars.iv54.i.ph, %i.fk
  br i1 %i.fl, label %._crit_edge23.i, label %.lr.ph22.i

.lr.ph17.i:                                       ; preds = %.lr.ph17.i.prol.loopexit, %.lr.ph17.i
  %indvars.iv47.i = phi i64 [ %indvars.iv.next48.i.3, %.lr.ph17.i ], [ %indvars.iv47.i.unr, %.lr.ph17.i.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv47.i ; 2 uses
  %i.fm = load float, ptr %gep.i, align 4, !tbaa !29
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv47.i
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !29
  %i.fp = fadd nsz float %i.fm, %i.fo
  store float %i.fp, ptr %gep.i, align 4, !tbaa !29
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next48.i ; 2 uses
  %i.fq = load float, ptr %gep.i.1, align 4, !tbaa !29
  %indvars.iv.next48.i.1 = add nuw nsw i64 %indvars.iv47.i, 2 ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next48.i
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !29
  %i.ft = fadd nsz float %i.fq, %i.fs
  store float %i.ft, ptr %gep.i.1, align 4, !tbaa !29
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next48.i.1 ; 2 uses
  %i.fu = load float, ptr %gep.i.2, align 4, !tbaa !29
  %indvars.iv.next48.i.2 = add nuw nsw i64 %indvars.iv47.i, 3 ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next48.i.1
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !29
  %i.fx = fadd nsz float %i.fu, %i.fw
  store float %i.fx, ptr %gep.i.2, align 4, !tbaa !29
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next48.i.2 ; 2 uses
  %i.fy = load float, ptr %gep.i.3, align 4, !tbaa !29
  %indvars.iv.next48.i.3 = add nuw nsw i64 %indvars.iv47.i, 4 ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next48.i.2
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !29
  %i.gb = fadd nsz float %i.fy, %i.ga
  store float %i.gb, ptr %gep.i.3, align 4, !tbaa !29
  %exitcond53.not.i.3 = icmp eq i64 %indvars.iv.next48.i.3, %wide.trip.count52.i
  br i1 %exitcond53.not.i.3, label %.lr.ph22.preheader.i, label %.lr.ph17.i, !llvm.loop !115

._crit_edge23.i:                                  ; preds = %.lr.ph22.i.prol.loopexit, %.lr.ph22.i, %middle.block, %._crit_edge18.i
  br i1 %or.cond.i, label %.lr.ph36.preheader.i, label %bilateralv_byte.exit

.lr.ph36.preheader.i:                             ; preds = %._crit_edge23.i
  %i.gc = add nsw i32 %i.ai, -2
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = sext i32 %i.ar to i64                   ; 2 uses
  br label %.lr.ph36.i

.lr.ph22.i:                                       ; preds = %.lr.ph22.i.prol.loopexit, %.lr.ph22.i
  %indvars.iv54.i = phi i64 [ %indvars.iv.next55.i.1, %.lr.ph22.i ], [ %indvars.iv54.i.unr, %.lr.ph22.i.prol.loopexit ] ; 4 uses
  %i.gf = add nsw i64 %indvars.iv54.i, %i.ce      ; 2 uses
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.gf ; 2 uses
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !29
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv54.i
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !29
  %i.gk = fadd nsz float %i.gh, %i.gj
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.gf
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !29
  %i.gn = fdiv nsz float %i.gk, %i.gm
  store float %i.gn, ptr %i.gg, align 4, !tbaa !29
  %i.go = add nsw i64 %indvars.iv.next55.i, %i.ce ; 2 uses
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.go ; 2 uses
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !29
  %indvars.iv.next55.i.1 = add nuw nsw i64 %indvars.iv54.i, 2 ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next55.i
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !29
  %i.gt = fadd nsz float %i.gq, %i.gs
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.go
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !29
  %i.gw = fdiv nsz float %i.gt, %i.gv
  store float %i.gw, ptr %i.gp, align 4, !tbaa !29
  %exitcond60.not.i.1 = icmp eq i64 %indvars.iv.next55.i.1, %wide.trip.count52.i
  br i1 %exitcond60.not.i.1, label %._crit_edge23.i, label %.lr.ph22.i, !llvm.loop !116

.lr.ph36.i:                                       ; preds = %._crit_edge37.i, %.lr.ph36.preheader.i
  %indvars.iv62.i = phi i64 [ %i.gd, %.lr.ph36.preheader.i ], [ %indvars.iv.next63.i, %._crit_edge37.i ] ; 5 uses
  %.122039.i = phi ptr [ %i.bt, %.lr.ph36.preheader.i ], [ %i.bq, %._crit_edge37.i ]
  %.122538.i = phi ptr [ %i.bn, %.lr.ph36.preheader.i ], [ %i.bk, %._crit_edge37.i ]
  %i.gx = add nuw nsw i64 %indvars.iv62.i, 1
  %i.gy = mul nsw i64 %i.gx, %i.ge
  %i.gz = getelementptr inbounds i8, ptr %i.av, i64 %i.gy
  %i.ha = mul nsw i64 %indvars.iv62.i, %i.ge
  %i.hb = getelementptr inbounds i8, ptr %i.av, i64 %i.ha
  %i.hc = mul nsw i64 %indvars.iv62.i, %i.aj      ; 4 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.hc
  %i.he = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.hc
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.hc
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.hc
  br label %bb.f

._crit_edge37.i:                                  ; preds = %bb.f
  %indvars.iv.next63.i = add nsw i64 %indvars.iv62.i, -1
  %i.hh = icmp sgt i64 %indvars.iv62.i, 0
  br i1 %i.hh, label %.lr.ph36.i, label %bilateralv_byte.exit, !llvm.loop !117

bb.f:                                             ; preds = %bb.f, %.lr.ph36.i
  %.034.i = phi i32 [ 0, %.lr.ph36.i ], [ %i.ip, %bb.f ]
  %.020133.i = phi ptr [ %i.he, %.lr.ph36.i ], [ %i.in, %bb.f ] ; 3 uses
  %.020232.i = phi ptr [ %.122538.i, %.lr.ph36.i ], [ %i.ie, %bb.f ] ; 2 uses
  %.020331.i = phi ptr [ %i.bk, %.lr.ph36.i ], [ %i.ii, %bb.f ] ; 2 uses
  %.020430.i = phi ptr [ %i.hg, %.lr.ph36.i ], [ %i.io, %bb.f ] ; 4 uses
  %.020529.i = phi ptr [ %.122039.i, %.lr.ph36.i ], [ %i.hv, %bb.f ] ; 2 uses
  %.020628.i = phi ptr [ %i.bq, %.lr.ph36.i ], [ %i.hz, %bb.f ] ; 2 uses
  %.127.i = phi ptr [ %i.gz, %.lr.ph36.i ], [ %i.hl, %bb.f ] ; 2 uses
  %.121626.i = phi ptr [ %i.hb, %.lr.ph36.i ], [ %i.hi, %bb.f ] ; 2 uses
  %.121825.i = phi ptr [ %i.hf, %.lr.ph36.i ], [ %i.ht, %bb.f ] ; 2 uses
  %.122324.i = phi ptr [ %i.hd, %.lr.ph36.i ], [ %i.ic, %bb.f ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.121626.i, i64 1
  %i.hj = load i8, ptr %.121626.i, align 1, !tbaa !69
  %i.hk = zext i8 %i.hj to i16
  %i.hl = getelementptr inbounds nuw i8, ptr %.127.i, i64 1
  %i.hm = load i8, ptr %.127.i, align 1, !tbaa !69
  %i.hn = zext i8 %i.hm to i16
  %i.ho = sub nsw i16 %i.hk, %i.hn
  %i.hp = tail call i16 @llvm.abs.i16(i16 %i.ho, i1 true)
  %i.hq = zext nneg i16 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.hq
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !29 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.121825.i, i64 4
  %i.hu = load float, ptr %.121825.i, align 4, !tbaa !29
  %i.hv = getelementptr inbounds nuw i8, ptr %.020529.i, i64 4
  %i.hw = load float, ptr %.020529.i, align 4, !tbaa !29
  %i.hx = fmul nsz float %i.hs, %i.hw
  %i.hy = tail call nsz float @llvm.fmuladd.f32(float %i.bv, float %i.hu, float %i.hx) ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.020628.i, i64 4
  store float %i.hy, ptr %.020628.i, align 4, !tbaa !29
  %i.ia = load float, ptr %.020430.i, align 4, !tbaa !29
  %i.ib = fadd nsz float %i.ia, %i.hy
  store float %i.ib, ptr %.020430.i, align 4, !tbaa !29
  %i.ic = getelementptr inbounds nuw i8, ptr %.122324.i, i64 4
  %i.id = load float, ptr %.122324.i, align 4, !tbaa !29
  %i.ie = getelementptr inbounds nuw i8, ptr %.020232.i, i64 4
  %i.if = load float, ptr %.020232.i, align 4, !tbaa !29
  %i.ig = fmul nsz float %i.hs, %i.if
  %i.ih = tail call nsz float @llvm.fmuladd.f32(float %i.bv, float %i.id, float %i.ig) ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.020331.i, i64 4
  store float %i.ih, ptr %.020331.i, align 4, !tbaa !29
  %i.ij = load float, ptr %.020133.i, align 4, !tbaa !29
  %i.ik = fadd nsz float %i.ij, %i.ih
  %i.il = load float, ptr %.020430.i, align 4, !tbaa !29
  %i.im = fdiv nsz float %i.ik, %i.il
end_hunk_0
begin_hunk_1_@bilateralv_planes:bb.a
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !68
  %sext.i21 = shl i64 %i.al, 32                   ; 3 uses
  %i.it = ashr exact i64 %sext.i21, 32            ; 9 uses
  %i.iu = getelementptr inbounds [2 x i8], ptr %i.is, i64 %i.it ; 4 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !65 ; 3 uses
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %i.it ; 8 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !65
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.iz, i64 %i.it ; 5 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !65
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.jc, i64 %i.it ; 4 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !65 ; 4 uses
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.jf, i64 %i.it ; 9 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !65
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.it ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !65 ; 2 uses
  %i.jm = getelementptr [4 x i8], ptr %i.jl, i64 %i.it ; 8 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !65
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.jo, i64 %i.it ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !65 ; 2 uses
  %i.js = getelementptr [4 x i8], ptr %i.jr, i64 %i.it ; 9 uses
  %i.jt = load float, ptr %i.y, align 8, !tbaa !28
  %i.ju = fsub nsz float 1.000000e+00, %i.jt      ; 4 uses
  %i.jv = sub i32 %i.ap, %i.am                    ; 7 uses
  %i.jw = sext i32 %i.jv to i64
  %i.jx = shl nsw i64 %i.jw, 2                    ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ix, ptr align 4 %i.ja, i64 %i.jx, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jg, ptr align 4 %i.jd, i64 %i.jx, i1 false)
  %i.jy = icmp sgt i32 %i.ai, 1
  %i.jz = icmp sgt i32 %i.jv, 0                   ; 2 uses
  %or.cond.i22 = select i1 %i.jy, i1 %i.jz, i1 false ; 2 uses
  br i1 %or.cond.i22, label %.lr.ph.preheader.i59, label %._crit_edge13.split.i23

.lr.ph.preheader.i59:                             ; preds = %bb.g
  %i.ka = sext i32 %i.iq to i64                   ; 2 uses
  %wide.trip.count.i60 = zext nneg i32 %i.ai to i64
  br label %.lr.ph.i61

._crit_edge13.split.i23:                          ; preds = %._crit_edge.i73, %bb.g
  %i.kb = add i32 %i.ai, -1
  %i.kc = mul i32 %i.kb, %i.ag
  %i.kd = sext i32 %i.kc to i64                   ; 10 uses
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.kd
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.js, ptr align 4 %i.ke, i64 %i.jx, i1 false)
  br i1 %i.jz, label %.lr.ph17.preheader.i45, label %._crit_edge18.i24

.lr.ph17.preheader.i45:                           ; preds = %._crit_edge13.split.i23
  %wide.trip.count52.i46 = zext nneg i32 %i.jv to i64 ; 12 uses
  %invariant.gep.i47 = getelementptr [4 x i8], ptr %i.jg, i64 %i.kd ; 7 uses
  %min.iters.check151 = icmp ult i32 %i.jv, 8
  br i1 %min.iters.check151, label %.lr.ph17.i48.preheader, label %vector.memcheck144

vector.memcheck144:                               ; preds = %.lr.ph17.preheader.i45
  %i.kf = shl nsw i64 %i.kd, 2
  %i.kg = ashr exact i64 %sext.i21, 30            ; 2 uses
  %i.kh = shl nuw nsw i64 %wide.trip.count52.i46, 2 ; 2 uses
  %i.ki = getelementptr i8, ptr %i.jf, i64 %i.kf
  %i.kj = getelementptr i8, ptr %i.ki, i64 %i.kg
  %scevgep145 = getelementptr i8, ptr %i.kj, i64 %i.kh
  %i.kk = getelementptr i8, ptr %i.jr, i64 %i.kg
  %scevgep146 = getelementptr i8, ptr %i.kk, i64 %i.kh
  %bound0147 = icmp ult ptr %invariant.gep.i47, %scevgep146
  %bound1148 = icmp ult ptr %i.js, %scevgep145
  %found.conflict149 = and i1 %bound0147, %bound1148
  br i1 %found.conflict149, label %.lr.ph17.i48.preheader, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck144
  %n.vec153 = and i64 %wide.trip.count52.i46, 2147483640 ; 3 uses
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph152
  %index155 = phi i64 [ 0, %vector.ph152 ], [ %index.next160, %vector.body154 ] ; 3 uses
  %i.kl = getelementptr [4 x i8], ptr %invariant.gep.i47, i64 %index155 ; 3 uses
  %i.km = getelementptr i8, ptr %i.kl, i64 16     ; 2 uses
  %wide.load156 = load <4 x float>, ptr %i.kl, align 4, !tbaa !29, !alias.scope !119, !noalias !122
  %wide.load157 = load <4 x float>, ptr %i.km, align 4, !tbaa !29, !alias.scope !119, !noalias !122
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %index155 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %wide.load158 = load <4 x float>, ptr %i.kn, align 4, !tbaa !29, !alias.scope !122
  %wide.load159 = load <4 x float>, ptr %i.ko, align 4, !tbaa !29, !alias.scope !122
  %i.kp = fadd nsz <4 x float> %wide.load156, %wide.load158
  %i.kq = fadd nsz <4 x float> %wide.load157, %wide.load159
  store <4 x float> %i.kp, ptr %i.kl, align 4, !tbaa !29, !alias.scope !119, !noalias !122
  store <4 x float> %i.kq, ptr %i.km, align 4, !tbaa !29, !alias.scope !119, !noalias !122
  %index.next160 = add nuw i64 %index155, 8       ; 2 uses
  %i.kr = icmp eq i64 %index.next160, %n.vec153
  br i1 %i.kr, label %middle.block161, label %vector.body154, !llvm.loop !124

middle.block161:                                  ; preds = %vector.body154
  %cmp.n162 = icmp eq i64 %n.vec153, %wide.trip.count52.i46
  br i1 %cmp.n162, label %.lr.ph22.preheader.i53, label %.lr.ph17.i48.preheader

.lr.ph17.i48.preheader:                           ; preds = %vector.memcheck144, %.lr.ph17.preheader.i45, %middle.block161
  %indvars.iv47.i49.ph = phi i64 [ 0, %vector.memcheck144 ], [ 0, %.lr.ph17.preheader.i45 ], [ %n.vec153, %middle.block161 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count52.i46, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph17.i48.prol.loopexit, label %.lr.ph17.i48.prol

.lr.ph17.i48.prol:                                ; preds = %.lr.ph17.i48.preheader, %.lr.ph17.i48.prol
  %indvars.iv47.i49.prol = phi i64 [ %indvars.iv.next48.i51.prol, %.lr.ph17.i48.prol ], [ %indvars.iv47.i49.ph, %.lr.ph17.i48.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph17.i48.prol ], [ 0, %.lr.ph17.i48.preheader ]
  %gep.i50.prol = getelementptr [4 x i8], ptr %invariant.gep.i47, i64 %indvars.iv47.i49.prol ; 2 uses
  %i.ks = load float, ptr %gep.i50.prol, align 4, !tbaa !29
  %indvars.iv.next48.i51.prol = add nuw nsw i64 %indvars.iv47.i49.prol, 1 ; 2 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv47.i49.prol
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !29
  %i.kv = fadd nsz float %i.ks, %i.ku
  store float %i.kv, ptr %gep.i50.prol, align 4, !tbaa !29
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph17.i48.prol.loopexit, label %.lr.ph17.i48.prol, !llvm.loop !125

.lr.ph17.i48.prol.loopexit:                       ; preds = %.lr.ph17.i48.prol, %.lr.ph17.i48.preheader
  %indvars.iv47.i49.unr = phi i64 [ %indvars.iv47.i49.ph, %.lr.ph17.i48.preheader ], [ %indvars.iv.next48.i51.prol, %.lr.ph17.i48.prol ]
  %i.kw = sub nsw i64 %indvars.iv47.i49.ph, %wide.trip.count52.i46
  %i.kx = icmp ugt i64 %i.kw, -4
  br i1 %i.kx, label %.lr.ph22.preheader.i53, label %.lr.ph17.i48

.lr.ph.i61:                                       ; preds = %._crit_edge.i73, %.lr.ph.preheader.i59
  %indvars.iv.i62 = phi i64 [ 1, %.lr.ph.preheader.i59 ], [ %indvars.iv.next.i74, %._crit_edge.i73 ] ; 4 uses
  %i.ky = add nsw i64 %indvars.iv.i62, -1         ; 2 uses
  %i.kz = mul nsw i64 %i.ky, %i.ka
  %i.la = getelementptr inbounds [2 x i8], ptr %i.iu, i64 %i.kz
  %i.lb = mul nsw i64 %indvars.iv.i62, %i.ka
  %i.lc = getelementptr inbounds [2 x i8], ptr %i.iu, i64 %i.lb
  %i.ld = mul nsw i64 %indvars.iv.i62, %i.aj      ; 4 uses
  %i.le = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.ld
  %i.lf = mul nsw i64 %i.ky, %i.aj                ; 2 uses
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.lf
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.ld
  %i.li = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.ld
  %i.lj = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %i.lf
  %i.lk = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %i.ld
  br label %bb.h

._crit_edge.i73:                                  ; preds = %bb.h
  %indvars.iv.next.i74 = add nuw nsw i64 %indvars.iv.i62, 1 ; 2 uses
  %exitcond46.not.i75 = icmp eq i64 %indvars.iv.next.i74, %wide.trip.count.i60
  br i1 %exitcond46.not.i75, label %._crit_edge13.split.i23, label %.lr.ph.i61, !llvm.loop !126

bb.h:                                             ; preds = %bb.h, %.lr.ph.i61
  %.02129.i63 = phi i32 [ 0, %.lr.ph.i61 ], [ %i.mk, %bb.h ]
  %.02148.i64 = phi ptr [ %i.la, %.lr.ph.i61 ], [ %i.lo, %bb.h ] ; 2 uses
  %.02157.i65 = phi ptr [ %i.lc, %.lr.ph.i61 ], [ %i.ll, %bb.h ] ; 2 uses
  %.02176.i66 = phi ptr [ %i.li, %.lr.ph.i61 ], [ %i.md, %bb.h ] ; 2 uses
  %.02195.i67 = phi ptr [ %i.lj, %.lr.ph.i61 ], [ %i.mf, %bb.h ] ; 2 uses
  %.02214.i68 = phi ptr [ %i.lk, %.lr.ph.i61 ], [ %i.mj, %bb.h ] ; 2 uses
  %.02223.i69 = phi ptr [ %i.le, %.lr.ph.i61 ], [ %i.lw, %bb.h ] ; 2 uses
  %.02242.i70 = phi ptr [ %i.lg, %.lr.ph.i61 ], [ %i.ly, %bb.h ] ; 2 uses
  %.02261.i71 = phi ptr [ %i.lh, %.lr.ph.i61 ], [ %i.mc, %bb.h ] ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.02157.i65, i64 2
  %i.lm = load i16, ptr %.02157.i65, align 2, !tbaa !83
  %i.ln = zext i16 %i.lm to i32
  %i.lo = getelementptr inbounds nuw i8, ptr %.02148.i64, i64 2
  %i.lp = load i16, ptr %.02148.i64, align 2, !tbaa !83
  %i.lq = zext i16 %i.lp to i32
  %i.lr = sub nsw i32 %i.ln, %i.lq
  %i.ls = tail call i32 @llvm.abs.i32(i32 %i.lr, i1 true)
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.lt
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !29 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.02223.i69, i64 4
  %i.lx = load float, ptr %.02223.i69, align 4, !tbaa !29
  %i.ly = getelementptr inbounds nuw i8, ptr %.02242.i70, i64 4
  %i.lz = load float, ptr %.02242.i70, align 4, !tbaa !29
  %i.ma = fmul nsz float %i.lv, %i.lz
  %i.mb = tail call nsz float @llvm.fmuladd.f32(float %i.ju, float %i.lx, float %i.ma)
  %i.mc = getelementptr inbounds nuw i8, ptr %.02261.i71, i64 4
  store float %i.mb, ptr %.02261.i71, align 4, !tbaa !29
  %i.md = getelementptr inbounds nuw i8, ptr %.02176.i66, i64 4
  %i.me = load float, ptr %.02176.i66, align 4, !tbaa !29
  %i.mf = getelementptr inbounds nuw i8, ptr %.02195.i67, i64 4
  %i.mg = load float, ptr %.02195.i67, align 4, !tbaa !29
  %i.mh = fmul nsz float %i.lv, %i.mg
  %i.mi = tail call nsz float @llvm.fmuladd.f32(float %i.ju, float %i.me, float %i.mh)
  %i.mj = getelementptr inbounds nuw i8, ptr %.02214.i68, i64 4
  store float %i.mi, ptr %.02214.i68, align 4, !tbaa !29
  %i.mk = add nuw nsw i32 %.02129.i63, 1          ; 2 uses
  %exitcond.not.i72 = icmp eq i32 %i.mk, %i.jv
  br i1 %exitcond.not.i72, label %._crit_edge.i73, label %bb.h, !llvm.loop !127

._crit_edge18.i24:                                ; preds = %._crit_edge13.split.i23
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.kd
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jm, ptr align 4 %i.ml, i64 %i.jx, i1 false)
  br label %._crit_edge23.i25

.lr.ph22.preheader.i53:                           ; preds = %.lr.ph17.i48.prol.loopexit, %.lr.ph17.i48, %middle.block161
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.kd
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jm, ptr align 4 %i.mm, i64 %i.jx, i1 false)
  %min.iters.check132 = icmp ult i32 %i.jv, 4
  br i1 %min.iters.check132, label %.lr.ph22.i55.preheader, label %vector.memcheck118

vector.memcheck118:                               ; preds = %.lr.ph22.preheader.i53
  %i.mn = shl nsw i64 %i.kd, 2
  %i.mo = ashr exact i64 %sext.i21, 30            ; 2 uses
  %i.mp = add nsw i64 %i.mn, %i.mo                ; 3 uses
  %scevgep119 = getelementptr i8, ptr %i.iw, i64 %i.mp ; 2 uses
  %i.mq = shl nuw nsw i64 %wide.trip.count52.i46, 2 ; 2 uses
  %i.mr = add nsw i64 %i.mp, %i.mq                ; 2 uses
  %scevgep120 = getelementptr i8, ptr %i.iw, i64 %i.mr ; 2 uses
  %i.ms = getelementptr i8, ptr %i.jl, i64 %i.mo
  %scevgep121 = getelementptr i8, ptr %i.ms, i64 %i.mq
  %scevgep122 = getelementptr i8, ptr %i.jf, i64 %i.mp
  %scevgep123 = getelementptr i8, ptr %i.jf, i64 %i.mr
  %bound0124 = icmp ult ptr %scevgep119, %scevgep121
  %bound1125 = icmp ult ptr %i.jm, %scevgep120
  %found.conflict126 = and i1 %bound0124, %bound1125
  %bound0127 = icmp ult ptr %scevgep119, %scevgep123
  %bound1128 = icmp ult ptr %scevgep122, %scevgep120
  %found.conflict129 = and i1 %bound0127, %bound1128
  %conflict.rdx130 = or i1 %found.conflict126, %found.conflict129
  br i1 %conflict.rdx130, label %.lr.ph22.i55.preheader, label %vector.ph133

vector.ph133:                                     ; preds = %vector.memcheck118
  %n.vec134 = and i64 %wide.trip.count52.i46, 2147483644 ; 3 uses
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph133
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next140, %vector.body135 ] ; 3 uses
  %i.mt = add nsw i64 %index136, %i.kd            ; 2 uses
  %i.mu = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.mt ; 2 uses
  %wide.load137 = load <4 x float>, ptr %i.mu, align 4, !tbaa !29, !alias.scope !128, !noalias !131
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %index136
  %wide.load138 = load <4 x float>, ptr %i.mv, align 4, !tbaa !29, !alias.scope !134
  %i.mw = fadd nsz <4 x float> %wide.load137, %wide.load138
  %i.mx = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %i.mt
  %wide.load139 = load <4 x float>, ptr %i.mx, align 4, !tbaa !29, !alias.scope !135
  %i.my = fdiv nsz <4 x float> %i.mw, %wide.load139
  store <4 x float> %i.my, ptr %i.mu, align 4, !tbaa !29, !alias.scope !128, !noalias !131
  %index.next140 = add nuw i64 %index136, 4       ; 2 uses
  %i.mz = icmp eq i64 %index.next140, %n.vec134
  br i1 %i.mz, label %middle.block141, label %vector.body135, !llvm.loop !136

middle.block141:                                  ; preds = %vector.body135
  %cmp.n142 = icmp eq i64 %n.vec134, %wide.trip.count52.i46
  br i1 %cmp.n142, label %._crit_edge23.i25, label %.lr.ph22.i55.preheader

.lr.ph22.i55.preheader:                           ; preds = %vector.memcheck118, %.lr.ph22.preheader.i53, %middle.block141
  %indvars.iv54.i56.ph = phi i64 [ 0, %vector.memcheck118 ], [ 0, %.lr.ph22.preheader.i53 ], [ %n.vec134, %middle.block141 ] ; 5 uses
  %xtraiter165 = and i64 %wide.trip.count52.i46, 1
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %.lr.ph22.i55.prol.loopexit, label %.lr.ph22.i55.prol

.lr.ph22.i55.prol:                                ; preds = %.lr.ph22.i55.preheader
  %i.na = add nsw i64 %indvars.iv54.i56.ph, %i.kd ; 2 uses
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.na ; 2 uses
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !29
  %indvars.iv.next55.i57.prol = or disjoint i64 %indvars.iv54.i56.ph, 1
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv54.i56.ph
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !29
  %i.nf = fadd nsz float %i.nc, %i.ne
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %i.na
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !29
  %i.ni = fdiv nsz float %i.nf, %i.nh
  store float %i.ni, ptr %i.nb, align 4, !tbaa !29
  br label %.lr.ph22.i55.prol.loopexit

.lr.ph22.i55.prol.loopexit:                       ; preds = %.lr.ph22.i55.prol, %.lr.ph22.i55.preheader
  %indvars.iv54.i56.unr = phi i64 [ %indvars.iv54.i56.ph, %.lr.ph22.i55.preheader ], [ %indvars.iv.next55.i57.prol, %.lr.ph22.i55.prol ]
  %i.nj = add nsw i64 %wide.trip.count52.i46, -1
  %i.nk = icmp eq i64 %indvars.iv54.i56.ph, %i.nj
  br i1 %i.nk, label %._crit_edge23.i25, label %.lr.ph22.i55

.lr.ph17.i48:                                     ; preds = %.lr.ph17.i48.prol.loopexit, %.lr.ph17.i48
  %indvars.iv47.i49 = phi i64 [ %indvars.iv.next48.i51.3, %.lr.ph17.i48 ], [ %indvars.iv47.i49.unr, %.lr.ph17.i48.prol.loopexit ] ; 6 uses
  %gep.i50 = getelementptr [4 x i8], ptr %invariant.gep.i47, i64 %indvars.iv47.i49 ; 2 uses
  %i.nl = load float, ptr %gep.i50, align 4, !tbaa !29
  %indvars.iv.next48.i51 = add nuw nsw i64 %indvars.iv47.i49, 1 ; 2 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv47.i49
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !29
  %i.no = fadd nsz float %i.nl, %i.nn
  store float %i.no, ptr %gep.i50, align 4, !tbaa !29
  %gep.i50.1 = getelementptr [4 x i8], ptr %invariant.gep.i47, i64 %indvars.iv.next48.i51 ; 2 uses
  %i.np = load float, ptr %gep.i50.1, align 4, !tbaa !29
  %indvars.iv.next48.i51.1 = add nuw nsw i64 %indvars.iv47.i49, 2 ; 2 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv.next48.i51
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !29
  %i.ns = fadd nsz float %i.np, %i.nr
  store float %i.ns, ptr %gep.i50.1, align 4, !tbaa !29
  %gep.i50.2 = getelementptr [4 x i8], ptr %invariant.gep.i47, i64 %indvars.iv.next48.i51.1 ; 2 uses
  %i.nt = load float, ptr %gep.i50.2, align 4, !tbaa !29
  %indvars.iv.next48.i51.2 = add nuw nsw i64 %indvars.iv47.i49, 3 ; 2 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv.next48.i51.1
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !29
  %i.nw = fadd nsz float %i.nt, %i.nv
  store float %i.nw, ptr %gep.i50.2, align 4, !tbaa !29
  %gep.i50.3 = getelementptr [4 x i8], ptr %invariant.gep.i47, i64 %indvars.iv.next48.i51.2 ; 2 uses
  %i.nx = load float, ptr %gep.i50.3, align 4, !tbaa !29
  %indvars.iv.next48.i51.3 = add nuw nsw i64 %indvars.iv47.i49, 4 ; 2 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv.next48.i51.2
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !29
  %i.oa = fadd nsz float %i.nx, %i.nz
  store float %i.oa, ptr %gep.i50.3, align 4, !tbaa !29
  %exitcond53.not.i52.3 = icmp eq i64 %indvars.iv.next48.i51.3, %wide.trip.count52.i46
  br i1 %exitcond53.not.i52.3, label %.lr.ph22.preheader.i53, label %.lr.ph17.i48, !llvm.loop !137

._crit_edge23.i25:                                ; preds = %.lr.ph22.i55.prol.loopexit, %.lr.ph22.i55, %middle.block141, %._crit_edge18.i24
  br i1 %or.cond.i22, label %.lr.ph36.preheader.i26, label %bilateralv_byte.exit

.lr.ph36.preheader.i26:                           ; preds = %._crit_edge23.i25
  %i.ob = add nsw i32 %i.ai, -2
  %i.oc = zext nneg i32 %i.ob to i64
  %i.od = sext i32 %i.iq to i64                   ; 2 uses
  br label %.lr.ph36.i27

.lr.ph22.i55:                                     ; preds = %.lr.ph22.i55.prol.loopexit, %.lr.ph22.i55
  %indvars.iv54.i56 = phi i64 [ %indvars.iv.next55.i57.1, %.lr.ph22.i55 ], [ %indvars.iv54.i56.unr, %.lr.ph22.i55.prol.loopexit ] ; 4 uses
  %i.oe = add nsw i64 %indvars.iv54.i56, %i.kd    ; 2 uses
  %i.of = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.oe ; 2 uses
  %i.og = load float, ptr %i.of, align 4, !tbaa !29
  %indvars.iv.next55.i57 = add nuw nsw i64 %indvars.iv54.i56, 1 ; 2 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv54.i56
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !29
  %i.oj = fadd nsz float %i.og, %i.oi
  %i.ok = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %i.oe
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !29
  %i.om = fdiv nsz float %i.oj, %i.ol
  store float %i.om, ptr %i.of, align 4, !tbaa !29
  %i.on = add nsw i64 %indvars.iv.next55.i57, %i.kd ; 2 uses
  %i.oo = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.on ; 2 uses
  %i.op = load float, ptr %i.oo, align 4, !tbaa !29
  %indvars.iv.next55.i57.1 = add nuw nsw i64 %indvars.iv54.i56, 2 ; 2 uses
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.next55.i57
  %i.or = load float, ptr %i.oq, align 4, !tbaa !29
  %i.os = fadd nsz float %i.op, %i.or
  %i.ot = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %i.on
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !29
  %i.ov = fdiv nsz float %i.os, %i.ou
  store float %i.ov, ptr %i.oo, align 4, !tbaa !29
  %exitcond60.not.i58.1 = icmp eq i64 %indvars.iv.next55.i57.1, %wide.trip.count52.i46
  br i1 %exitcond60.not.i58.1, label %._crit_edge23.i25, label %.lr.ph22.i55, !llvm.loop !138

.lr.ph36.i27:                                     ; preds = %._crit_edge37.i43, %.lr.ph36.preheader.i26
  %indvars.iv62.i28 = phi i64 [ %i.oc, %.lr.ph36.preheader.i26 ], [ %indvars.iv.next63.i44, %._crit_edge37.i43 ] ; 5 uses
  %.122039.i29 = phi ptr [ %i.js, %.lr.ph36.preheader.i26 ], [ %i.jp, %._crit_edge37.i43 ]
  %.122538.i30 = phi ptr [ %i.jm, %.lr.ph36.preheader.i26 ], [ %i.jj, %._crit_edge37.i43 ]
  %i.ow = add nuw nsw i64 %indvars.iv62.i28, 1
  %i.ox = mul nsw i64 %i.ow, %i.od
  %i.oy = getelementptr inbounds [2 x i8], ptr %i.iu, i64 %i.ox
  %i.oz = mul nsw i64 %indvars.iv62.i28, %i.od
  %i.pa = getelementptr inbounds [2 x i8], ptr %i.iu, i64 %i.oz
  %i.pb = mul nsw i64 %indvars.iv62.i28, %i.aj    ; 4 uses
  %i.pc = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.pb
  %i.pd = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.pb
  %i.pe = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.pb
  %i.pf = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %i.pb
  br label %bb.i

._crit_edge37.i43:                                ; preds = %bb.i
  %indvars.iv.next63.i44 = add nsw i64 %indvars.iv62.i28, -1
  %i.pg = icmp sgt i64 %indvars.iv62.i28, 0
  br i1 %i.pg, label %.lr.ph36.i27, label %bilateralv_byte.exit, !llvm.loop !139

bb.i:                                             ; preds = %bb.i, %.lr.ph36.i27
  %.034.i31 = phi i32 [ 0, %.lr.ph36.i27 ], [ %i.qo, %bb.i ]
  %.020133.i32 = phi ptr [ %i.pd, %.lr.ph36.i27 ], [ %i.qm, %bb.i ] ; 3 uses
  %.020232.i33 = phi ptr [ %.122538.i30, %.lr.ph36.i27 ], [ %i.qd, %bb.i ] ; 2 uses
  %.020331.i34 = phi ptr [ %i.jj, %.lr.ph36.i27 ], [ %i.qh, %bb.i ] ; 2 uses
  %.020430.i35 = phi ptr [ %i.pf, %.lr.ph36.i27 ], [ %i.qn, %bb.i ] ; 4 uses
  %.020529.i36 = phi ptr [ %.122039.i29, %.lr.ph36.i27 ], [ %i.pu, %bb.i ] ; 2 uses
  %.020628.i37 = phi ptr [ %i.jp, %.lr.ph36.i27 ], [ %i.py, %bb.i ] ; 2 uses
  %.127.i38 = phi ptr [ %i.oy, %.lr.ph36.i27 ], [ %i.pk, %bb.i ] ; 2 uses
  %.121626.i39 = phi ptr [ %i.pa, %.lr.ph36.i27 ], [ %i.ph, %bb.i ] ; 2 uses
  %.121825.i40 = phi ptr [ %i.pe, %.lr.ph36.i27 ], [ %i.ps, %bb.i ] ; 2 uses
  %.122324.i41 = phi ptr [ %i.pc, %.lr.ph36.i27 ], [ %i.qb, %bb.i ] ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.121626.i39, i64 2
  %i.pi = load i16, ptr %.121626.i39, align 2, !tbaa !83
  %i.pj = zext i16 %i.pi to i32
  %i.pk = getelementptr inbounds nuw i8, ptr %.127.i38, i64 2
  %i.pl = load i16, ptr %.127.i38, align 2, !tbaa !83
  %i.pm = zext i16 %i.pl to i32
  %i.pn = sub nsw i32 %i.pj, %i.pm
  %i.po = tail call i32 @llvm.abs.i32(i32 %i.pn, i1 true)
  %i.pp = zext nneg i32 %i.po to i64
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.pp
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !29 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.121825.i40, i64 4
  %i.pt = load float, ptr %.121825.i40, align 4, !tbaa !29
  %i.pu = getelementptr inbounds nuw i8, ptr %.020529.i36, i64 4
  %i.pv = load float, ptr %.020529.i36, align 4, !tbaa !29
  %i.pw = fmul nsz float %i.pr, %i.pv
  %i.px = tail call nsz float @llvm.fmuladd.f32(float %i.ju, float %i.pt, float %i.pw) ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.020628.i37, i64 4
  store float %i.px, ptr %.020628.i37, align 4, !tbaa !29
  %i.pz = load float, ptr %.020430.i35, align 4, !tbaa !29
  %i.qa = fadd nsz float %i.pz, %i.px
  store float %i.qa, ptr %.020430.i35, align 4, !tbaa !29
  %i.qb = getelementptr inbounds nuw i8, ptr %.122324.i41, i64 4
  %i.qc = load float, ptr %.122324.i41, align 4, !tbaa !29
  %i.qd = getelementptr inbounds nuw i8, ptr %.020232.i33, i64 4
  %i.qe = load float, ptr %.020232.i33, align 4, !tbaa !29
  %i.qf = fmul nsz float %i.pr, %i.qe
  %i.qg = tail call nsz float @llvm.fmuladd.f32(float %i.ju, float %i.qc, float %i.qf) ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.020331.i34, i64 4
  store float %i.qg, ptr %.020331.i34, align 4, !tbaa !29
  %i.qi = load float, ptr %.020133.i32, align 4, !tbaa !29
  %i.qj = fadd nsz float %i.qi, %i.qg
  %i.qk = load float, ptr %.020430.i35, align 4, !tbaa !29
  %i.ql = fdiv nsz float %i.qj, %i.qk
end_hunk_1
