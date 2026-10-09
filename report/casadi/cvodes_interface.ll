Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/cvodes_interface?download=true
inline.NumInlined: 1148
inline.NumDeleted: 364
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN6casadi15CvodesInterface7psolveFEdP17_generic_N_VectorS2_S2_S2_ddiPvS2_:bb.a
  %i.bb = add nuw nsw i64 %.020.i, 8              ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.bb, %i.i
  br i1 %exitcond.not.i.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i, !llvm.loop !335

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit:       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.b, %.preheader16.i, %.preheader.i, %.lr.ph23.preheader.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 2176 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 472 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !200
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 720 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !204
  %i.bh = invoke noundef i32 @_ZNK6casadi6Linsol5solveEPKdPdxbi(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef %i.be, ptr noundef %i.k, i64 noundef 1, i1 noundef zeroext false, i32 noundef %i.bg)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit
  %.not = icmp eq i32 %i.bh, 0
  br i1 %.not, label %bb.g, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit82

bb.e:                                             ; preds = %bb.a
  %i.bi = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.p

bb.f:                                             ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit, %_ZN6casadi12casadi_clearIdEEvPT_x.exit, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.p

bb.g:                                             ; preds = %bb.d
  %i.bk = load ptr, ptr %4, align 8, !tbaa !194
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !196 ; 9 uses
  %i.bn = ptrtoaddr ptr %i.bm to i64              ; 2 uses
  %i.bo = load ptr, ptr %i.j, align 8, !tbaa !207 ; 6 uses
  %i.bp = ptrtoaddr ptr %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 1640 ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !208 ; 11 uses
  %.not.i57 = icmp ne ptr %i.bm, null             ; 3 uses
  br i1 %.not.i57, label %bb.h, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit67

bb.h:                                             ; preds = %bb.g
  %.not15.i58 = icmp eq ptr %i.bo, null
  %i.bs = icmp sgt i64 %i.br, 0                   ; 2 uses
  br i1 %.not15.i58, label %.preheader.i65, label %.preheader16.i59

.preheader16.i59:                                 ; preds = %bb.h
  br i1 %i.bs, label %.lr.ph.i60.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit67

.lr.ph.i60.preheader:                             ; preds = %.preheader16.i59
  %min.iters.check102 = icmp ult i64 %i.br, 8
  %i.bt = sub i64 %i.bp, %i.bn
  %diff.check100 = icmp ugt i64 %i.bt, -32
  %or.cond156 = select i1 %min.iters.check102, i1 true, i1 %diff.check100
  br i1 %or.cond156, label %.lr.ph.i60.preheader160, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph.i60.preheader
  %n.vec104 = and i64 %i.br, 9223372036854775804  ; 4 uses
  %i.bu = shl i64 %n.vec104, 3                    ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bm, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bo, i64 %i.bu
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph103
  %index106 = phi i64 [ 0, %vector.ph103 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.bx = shl i64 %index106, 3                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.bm, i64 %i.bx ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bo, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109 = load <2 x double>, ptr %next.gep108, align 8, !tbaa !202
  %wide.load110 = load <2 x double>, ptr %i.by, align 8, !tbaa !202
  %i.bz = getelementptr i8, ptr %next.gep107, i64 16
  store <2 x double> %wide.load109, ptr %next.gep107, align 8, !tbaa !202
  store <2 x double> %wide.load110, ptr %i.bz, align 8, !tbaa !202
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.ca = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.ca, label %middle.block112, label %vector.body105, !llvm.loop !336

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.br, %n.vec104
  br i1 %cmp.n113, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit67, label %.lr.ph.i60.preheader160

.lr.ph.i60.preheader160:                          ; preds = %.lr.ph.i60.preheader, %middle.block112
  %.020.i61.ph = phi i64 [ 0, %.lr.ph.i60.preheader ], [ %n.vec104, %middle.block112 ] ; 4 uses
  %.01019.i62.ph = phi ptr [ %i.bm, %.lr.ph.i60.preheader ], [ %i.bv, %middle.block112 ] ; 2 uses
  %.01218.i63.ph = phi ptr [ %i.bo, %.lr.ph.i60.preheader ], [ %i.bw, %middle.block112 ] ; 2 uses
  %i.cb = sub nsw i64 %i.br, %.020.i61.ph
  %xtraiter162 = and i64 %i.cb, 7                 ; 2 uses
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %.lr.ph.i60.prol.loopexit, label %.lr.ph.i60.prol

.lr.ph.i60.prol:                                  ; preds = %.lr.ph.i60.preheader160, %.lr.ph.i60.prol
  %.020.i61.prol = phi i64 [ %i.cf, %.lr.ph.i60.prol ], [ %.020.i61.ph, %.lr.ph.i60.preheader160 ]
  %.01019.i62.prol = phi ptr [ %i.ce, %.lr.ph.i60.prol ], [ %.01019.i62.ph, %.lr.ph.i60.preheader160 ] ; 2 uses
  %.01218.i63.prol = phi ptr [ %i.cc, %.lr.ph.i60.prol ], [ %.01218.i63.ph, %.lr.ph.i60.preheader160 ] ; 2 uses
  %prol.iter164 = phi i64 [ %prol.iter164.next, %.lr.ph.i60.prol ], [ 0, %.lr.ph.i60.preheader160 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.01218.i63.prol, i64 8 ; 2 uses
  %i.cd = load double, ptr %.01218.i63.prol, align 8, !tbaa !202
  %i.ce = getelementptr inbounds nuw i8, ptr %.01019.i62.prol, i64 8 ; 2 uses
  store double %i.cd, ptr %.01019.i62.prol, align 8, !tbaa !202
  %i.cf = add nuw nsw i64 %.020.i61.prol, 1       ; 2 uses
  %prol.iter164.next = add i64 %prol.iter164, 1   ; 2 uses
  %prol.iter164.cmp.not = icmp eq i64 %prol.iter164.next, %xtraiter162
  br i1 %prol.iter164.cmp.not, label %.lr.ph.i60.prol.loopexit, label %.lr.ph.i60.prol, !llvm.loop !337

.lr.ph.i60.prol.loopexit:                         ; preds = %.lr.ph.i60.prol, %.lr.ph.i60.preheader160
  %.020.i61.unr = phi i64 [ %.020.i61.ph, %.lr.ph.i60.preheader160 ], [ %i.cf, %.lr.ph.i60.prol ]
  %.01019.i62.unr = phi ptr [ %.01019.i62.ph, %.lr.ph.i60.preheader160 ], [ %i.ce, %.lr.ph.i60.prol ]
  %.01218.i63.unr = phi ptr [ %.01218.i63.ph, %.lr.ph.i60.preheader160 ], [ %i.cc, %.lr.ph.i60.prol ]
  %i.cg = sub nsw i64 %.020.i61.ph, %i.br
  %i.ch = icmp ugt i64 %i.cg, -8
  br i1 %i.ch, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit67, label %.lr.ph.i60

.preheader.i65:                                   ; preds = %bb.h
  br i1 %i.bs, label %.lr.ph23.preheader.i66, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit67

.lr.ph23.preheader.i66:                           ; preds = %.preheader.i65
  %i.ci = shl nuw i64 %i.br, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bm, i8 0, i64 %i.ci, i1 false), !tbaa !202
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit67

.lr.ph.i60:                                       ; preds = %.lr.ph.i60.prol.loopexit, %.lr.ph.i60
  %.020.i61 = phi i64 [ %i.dh, %.lr.ph.i60 ], [ %.020.i61.unr, %.lr.ph.i60.prol.loopexit ]
  %.01019.i62 = phi ptr [ %i.dg, %.lr.ph.i60 ], [ %.01019.i62.unr, %.lr.ph.i60.prol.loopexit ] ; 9 uses
  %.01218.i63 = phi ptr [ %i.de, %.lr.ph.i60 ], [ %.01218.i63.unr, %.lr.ph.i60.prol.loopexit ] ; 9 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.01218.i63, i64 8
  %i.ck = load double, ptr %.01218.i63, align 8, !tbaa !202
  %i.cl = getelementptr inbounds nuw i8, ptr %.01019.i62, i64 8
  store double %i.ck, ptr %.01019.i62, align 8, !tbaa !202
  %i.cm = getelementptr inbounds nuw i8, ptr %.01218.i63, i64 16
  %i.cn = load double, ptr %i.cj, align 8, !tbaa !202
  %i.co = getelementptr inbounds nuw i8, ptr %.01019.i62, i64 16
  store double %i.cn, ptr %i.cl, align 8, !tbaa !202
  %i.cp = getelementptr inbounds nuw i8, ptr %.01218.i63, i64 24
  %i.cq = load double, ptr %i.cm, align 8, !tbaa !202
  %i.cr = getelementptr inbounds nuw i8, ptr %.01019.i62, i64 24
  store double %i.cq, ptr %i.co, align 8, !tbaa !202
  %i.cs = getelementptr inbounds nuw i8, ptr %.01218.i63, i64 32
  %i.ct = load double, ptr %i.cp, align 8, !tbaa !202
  %i.cu = getelementptr inbounds nuw i8, ptr %.01019.i62, i64 32
  store double %i.ct, ptr %i.cr, align 8, !tbaa !202
  %i.cv = getelementptr inbounds nuw i8, ptr %.01218.i63, i64 40
  %i.cw = load double, ptr %i.cs, align 8, !tbaa !202
  %i.cx = getelementptr inbounds nuw i8, ptr %.01019.i62, i64 40
  store double %i.cw, ptr %i.cu, align 8, !tbaa !202
  %i.cy = getelementptr inbounds nuw i8, ptr %.01218.i63, i64 48
  %i.cz = load double, ptr %i.cv, align 8, !tbaa !202
  %i.da = getelementptr inbounds nuw i8, ptr %.01019.i62, i64 48
  store double %i.cz, ptr %i.cx, align 8, !tbaa !202
  %i.db = getelementptr inbounds nuw i8, ptr %.01218.i63, i64 56
  %i.dc = load double, ptr %i.cy, align 8, !tbaa !202
  %i.dd = getelementptr inbounds nuw i8, ptr %.01019.i62, i64 56
  store double %i.dc, ptr %i.da, align 8, !tbaa !202
  %i.de = getelementptr inbounds nuw i8, ptr %.01218.i63, i64 64
  %i.df = load double, ptr %i.db, align 8, !tbaa !202
  %i.dg = getelementptr inbounds nuw i8, ptr %.01019.i62, i64 64
  store double %i.df, ptr %i.dd, align 8, !tbaa !202
  %i.dh = add nuw nsw i64 %.020.i61, 8            ; 2 uses
  %exitcond.not.i64.7 = icmp eq i64 %i.dh, %i.br
  br i1 %exitcond.not.i64.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit67, label %.lr.ph.i60, !llvm.loop !338

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit67:     ; preds = %.lr.ph.i60.prol.loopexit, %.lr.ph.i60, %middle.block112, %bb.g, %.preheader16.i59, %.preheader.i65, %.lr.ph23.preheader.i66
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 1592 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !209
  %i.dk = icmp sgt i64 %i.dj, 0
  br i1 %i.dk, label %bb.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit82

bb.i:                                             ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit67
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 2129
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !210, !range !68, !noundef !69
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.j, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit

bb.j:                                             ; preds = %bb.i
  %i.do = load i64, ptr %i.h, align 8, !tbaa !126
  %i.dp = sub nsw i64 %i.do, %i.br                ; 2 uses
  %i.dq = icmp sgt i64 %i.dp, 0
  %or.cond.i = and i1 %.not.i57, %i.dq
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.br
  %i.ds = shl nuw i64 %i.dp, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dr, i8 0, i64 %i.ds, i1 false), !tbaa !202
  br label %_ZN6casadi12casadi_clearIdEEvPT_x.exit

_ZN6casadi12casadi_clearIdEEvPT_x.exit:           ; preds = %bb.j, %.lr.ph.preheader.i
  %i.dt = load ptr, ptr %1, align 8, !tbaa !194
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !196
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 280 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !211
  %i.dy = invoke noundef i32 @_ZNK6casadi17SundialsInterface12calc_jtimesFEPNS_14SundialsMemoryEdPKdS4_S4_S4_PdS5_(ptr noundef nonnull align 8 dereferenceable(2192) %i.c, ptr noundef nonnull %i.a, double noundef %0, ptr noundef %i.dv, ptr noundef null, ptr noundef %i.bm, ptr noundef null, ptr noundef %i.dx, ptr noundef null)
          to label %bb.k unwind label %bb.f

bb.k:                                             ; preds = %_ZN6casadi12casadi_clearIdEEvPT_x.exit
  %.not54 = icmp eq i32 %i.dy, 0
  br i1 %.not54, label %bb.l, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit82

bb.l:                                             ; preds = %bb.k
  %i.dz = load i64, ptr %i.h, align 8, !tbaa !126 ; 4 uses
  %i.ea = load i64, ptr %i.bq, align 8, !tbaa !208 ; 9 uses
  %i.eb = sub nsw i64 %i.dz, %i.ea                ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 752
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !199 ; 6 uses
  %i.ee = load ptr, ptr %i.dw, align 8, !tbaa !211 ; 3 uses
  %i.ef = load ptr, ptr %i.j, align 8, !tbaa !207 ; 7 uses
  %i.eg = icmp ne ptr %i.ee, null
  %i.eh = icmp ne ptr %i.ef, null
  %or.cond.i69 = and i1 %i.eg, %i.eh
  %i.ei = icmp sgt i64 %i.eb, 0
  %or.cond15.i = and i1 %i.ei, %or.cond.i69
  br i1 %or.cond15.i, label %.lr.ph.i70.preheader, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit

.lr.ph.i70.preheader:                             ; preds = %bb.l
  %i.ej = getelementptr [8 x i8], ptr %i.ef, i64 %i.ea ; 5 uses
  %i.ek = getelementptr [8 x i8], ptr %i.ee, i64 %i.ea ; 5 uses
  %min.iters.check120 = icmp ult i64 %i.eb, 6
  br i1 %min.iters.check120, label %.lr.ph.i70.preheader159, label %vector.memcheck121

vector.memcheck121:                               ; preds = %.lr.ph.i70.preheader
  %i.el = shl i64 %i.dz, 3                        ; 2 uses
  %i.em = getelementptr i8, ptr %i.ef, i64 %i.el
  %i.en = getelementptr i8, ptr %i.ee, i64 %i.el
  %bound0 = icmp ult ptr %i.ej, %i.en
  %bound1 = icmp ult ptr %i.ek, %i.em
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i70.preheader159, label %vector.ph122

vector.ph122:                                     ; preds = %vector.memcheck121
  %n.vec123 = and i64 %i.eb, 9223372036854775804  ; 4 uses
  %i.eo = shl i64 %n.vec123, 3                    ; 2 uses
  %i.ep = getelementptr i8, ptr %i.ej, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ek, i64 %i.eo
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ed, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body124

vector.body124:                                   ; preds = %vector.body124, %vector.ph122
  %index125 = phi i64 [ 0, %vector.ph122 ], [ %index.next132, %vector.body124 ] ; 2 uses
  %i.er = shl i64 %index125, 3                    ; 2 uses
  %next.gep126 = getelementptr i8, ptr %i.ej, i64 %i.er ; 3 uses
  %next.gep127 = getelementptr i8, ptr %i.ek, i64 %i.er ; 2 uses
  %i.es = getelementptr i8, ptr %next.gep127, i64 16
  %wide.load128 = load <2 x double>, ptr %next.gep127, align 8, !tbaa !202, !alias.scope !348
  %wide.load129 = load <2 x double>, ptr %i.es, align 8, !tbaa !202, !alias.scope !348
  %i.et = getelementptr i8, ptr %next.gep126, i64 16 ; 2 uses
  %wide.load130 = load <2 x double>, ptr %next.gep126, align 8, !tbaa !202, !alias.scope !349, !noalias !348
  %wide.load131 = load <2 x double>, ptr %i.et, align 8, !tbaa !202, !alias.scope !349, !noalias !348
  %i.eu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load128, <2 x double> %wide.load130)
  %i.ev = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load129, <2 x double> %wide.load131)
  store <2 x double> %i.eu, ptr %next.gep126, align 8, !tbaa !202, !alias.scope !349, !noalias !348
  store <2 x double> %i.ev, ptr %i.et, align 8, !tbaa !202, !alias.scope !349, !noalias !348
  %index.next132 = add nuw i64 %index125, 4       ; 2 uses
  %i.ew = icmp eq i64 %index.next132, %n.vec123
  br i1 %i.ew, label %middle.block133, label %vector.body124, !llvm.loop !342

middle.block133:                                  ; preds = %vector.body124
  %cmp.n134 = icmp eq i64 %i.eb, %n.vec123
  br i1 %cmp.n134, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit, label %.lr.ph.i70.preheader159

.lr.ph.i70.preheader159:                          ; preds = %vector.memcheck121, %.lr.ph.i70.preheader, %middle.block133
  %.014.i.ph = phi i64 [ 0, %vector.memcheck121 ], [ 0, %.lr.ph.i70.preheader ], [ %n.vec123, %middle.block133 ] ; 3 uses
  %.0813.i.ph = phi ptr [ %i.ej, %vector.memcheck121 ], [ %i.ej, %.lr.ph.i70.preheader ], [ %i.ep, %middle.block133 ] ; 2 uses
  %.0912.i.ph = phi ptr [ %i.ek, %vector.memcheck121 ], [ %i.ek, %.lr.ph.i70.preheader ], [ %i.eq, %middle.block133 ] ; 2 uses
  %10 = sub i64 %i.dz, %i.ea
  %xtraiter165 = and i64 %10, 3                   ; 2 uses
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %.lr.ph.i70.prol.loopexit, label %.lr.ph.i70.prol

.lr.ph.i70.prol:                                  ; preds = %.lr.ph.i70.preheader159, %.lr.ph.i70.prol
  %.014.i.prol = phi i64 [ %i.fc, %.lr.ph.i70.prol ], [ %.014.i.ph, %.lr.ph.i70.preheader159 ]
  %.0813.i.prol = phi ptr [ %i.ez, %.lr.ph.i70.prol ], [ %.0813.i.ph, %.lr.ph.i70.preheader159 ] ; 3 uses
  %.0912.i.prol = phi ptr [ %i.ex, %.lr.ph.i70.prol ], [ %.0912.i.ph, %.lr.ph.i70.preheader159 ] ; 2 uses
  %prol.iter167 = phi i64 [ %prol.iter167.next, %.lr.ph.i70.prol ], [ 0, %.lr.ph.i70.preheader159 ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.0912.i.prol, i64 8 ; 2 uses
  %i.ey = load double, ptr %.0912.i.prol, align 8, !tbaa !202
  %i.ez = getelementptr inbounds nuw i8, ptr %.0813.i.prol, i64 8 ; 2 uses
  %i.fa = load double, ptr %.0813.i.prol, align 8, !tbaa !202
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.ey, double %i.fa)
  store double %i.fb, ptr %.0813.i.prol, align 8, !tbaa !202
  %i.fc = add nuw nsw i64 %.014.i.prol, 1         ; 2 uses
  %prol.iter167.next = add i64 %prol.iter167, 1   ; 2 uses
  %prol.iter167.cmp.not = icmp eq i64 %prol.iter167.next, %xtraiter165
  br i1 %prol.iter167.cmp.not, label %.lr.ph.i70.prol.loopexit, label %.lr.ph.i70.prol, !llvm.loop !343

.lr.ph.i70.prol.loopexit:                         ; preds = %.lr.ph.i70.prol, %.lr.ph.i70.preheader159
  %.014.i.unr = phi i64 [ %.014.i.ph, %.lr.ph.i70.preheader159 ], [ %i.fc, %.lr.ph.i70.prol ]
  %.0813.i.unr = phi ptr [ %.0813.i.ph, %.lr.ph.i70.preheader159 ], [ %i.ez, %.lr.ph.i70.prol ]
  %.0912.i.unr = phi ptr [ %.0912.i.ph, %.lr.ph.i70.preheader159 ], [ %i.ex, %.lr.ph.i70.prol ]
  %i.fd = sub i64 %.014.i.ph, %i.dz
  %i.fe = add i64 %i.fd, %i.ea
  %i.ff = icmp ugt i64 %i.fe, -4
  br i1 %i.ff, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit, label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %.lr.ph.i70.prol.loopexit, %.lr.ph.i70
  %.014.i = phi i64 [ %i.ga, %.lr.ph.i70 ], [ %.014.i.unr, %.lr.ph.i70.prol.loopexit ]
  %.0813.i = phi ptr [ %i.fx, %.lr.ph.i70 ], [ %.0813.i.unr, %.lr.ph.i70.prol.loopexit ] ; 6 uses
  %.0912.i = phi ptr [ %i.fv, %.lr.ph.i70 ], [ %.0912.i.unr, %.lr.ph.i70.prol.loopexit ] ; 5 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.0912.i, i64 8
  %i.fh = load double, ptr %.0912.i, align 8, !tbaa !202
  %i.fi = getelementptr inbounds nuw i8, ptr %.0813.i, i64 8 ; 2 uses
  %i.fj = load double, ptr %.0813.i, align 8, !tbaa !202
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.fh, double %i.fj)
  store double %i.fk, ptr %.0813.i, align 8, !tbaa !202
  %i.fl = getelementptr inbounds nuw i8, ptr %.0912.i, i64 16
  %i.fm = load double, ptr %i.fg, align 8, !tbaa !202
  %i.fn = getelementptr inbounds nuw i8, ptr %.0813.i, i64 16 ; 2 uses
  %i.fo = load double, ptr %i.fi, align 8, !tbaa !202
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.fm, double %i.fo)
  store double %i.fp, ptr %i.fi, align 8, !tbaa !202
  %i.fq = getelementptr inbounds nuw i8, ptr %.0912.i, i64 24
  %i.fr = load double, ptr %i.fl, align 8, !tbaa !202
  %i.fs = getelementptr inbounds nuw i8, ptr %.0813.i, i64 24 ; 2 uses
  %i.ft = load double, ptr %i.fn, align 8, !tbaa !202
  %i.fu = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.fr, double %i.ft)
  store double %i.fu, ptr %i.fn, align 8, !tbaa !202
  %i.fv = getelementptr inbounds nuw i8, ptr %.0912.i, i64 32
  %i.fw = load double, ptr %i.fq, align 8, !tbaa !202
  %i.fx = getelementptr inbounds nuw i8, ptr %.0813.i, i64 32
  %i.fy = load double, ptr %i.fs, align 8, !tbaa !202
  %i.fz = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.fw, double %i.fy)
  store double %i.fz, ptr %i.fs, align 8, !tbaa !202
  %i.ga = add nuw nsw i64 %.014.i, 4              ; 2 uses
  %exitcond.not.i71.3 = icmp eq i64 %i.ga, %i.eb
  br i1 %exitcond.not.i71.3, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit, label %.lr.ph.i70, !llvm.loop !344

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit:    ; preds = %.lr.ph.i70.prol.loopexit, %.lr.ph.i70, %middle.block133, %bb.l, %bb.i
  %i.gb = phi i64 [ %i.br, %bb.i ], [ %i.ea, %bb.l ], [ %i.ea, %middle.block133 ], [ %i.ea, %.lr.ph.i70 ], [ %i.ea, %.lr.ph.i70.prol.loopexit ]
  %i.gc = phi ptr [ %i.bo, %bb.i ], [ %i.ef, %bb.l ], [ %i.ef, %middle.block133 ], [ %i.ef, %.lr.ph.i70 ], [ %i.ef, %.lr.ph.i70.prol.loopexit ]
  %i.gd = load ptr, ptr %i.bd, align 8, !tbaa !200
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.gb
  %i.gf = load i64, ptr %i.di, align 8, !tbaa !209
  %i.gg = load i32, ptr %i.bf, align 8, !tbaa !204
  %i.gh = invoke noundef i32 @_ZNK6casadi6Linsol5solveEPKdPdxbi(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef %i.gd, ptr noundef %i.ge, i64 noundef %i.gf, i1 noundef zeroext false, i32 noundef %i.gg)
          to label %bb.m unwind label %bb.f

bb.m:                                             ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit
  %.not56 = icmp eq i32 %i.gh, 0
  br i1 %.not56, label %bb.n, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit82

bb.n:                                             ; preds = %bb.m
  %i.gi = load ptr, ptr %i.j, align 8, !tbaa !207 ; 3 uses
  %i.gj = ptrtoaddr ptr %i.gi to i64
  %i.gk = load i64, ptr %i.bq, align 8, !tbaa !208 ; 5 uses
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.gk ; 3 uses
  %i.gm = load i64, ptr %i.h, align 8, !tbaa !126 ; 3 uses
  %i.gn = sub i64 %i.gm, %i.gk                    ; 6 uses
  %i.go = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.gk ; 4 uses
  br i1 %.not.i57, label %bb.o, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit82

bb.o:                                             ; preds = %bb.n
  %.not15.i73 = icmp eq ptr %i.gi, null
  %i.gp = icmp sgt i64 %i.gn, 0                   ; 2 uses
  br i1 %.not15.i73, label %.preheader.i80, label %.preheader16.i74

.preheader16.i74:                                 ; preds = %bb.o
  br i1 %i.gp, label %.lr.ph.i75.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit82

.lr.ph.i75.preheader:                             ; preds = %.preheader16.i74
  %min.iters.check141 = icmp ult i64 %i.gn, 8
  %i.gq = sub i64 %i.gj, %i.bn
  %diff.check139 = icmp ugt i64 %i.gq, -32
  %or.cond157 = select i1 %min.iters.check141, i1 true, i1 %diff.check139
  br i1 %or.cond157, label %.lr.ph.i75.preheader158, label %vector.ph142

vector.ph142:                                     ; preds = %.lr.ph.i75.preheader
  %n.vec143 = and i64 %i.gn, 9223372036854775804  ; 4 uses
  %i.gr = shl i64 %n.vec143, 3                    ; 2 uses
  %i.gs = getelementptr i8, ptr %i.go, i64 %i.gr
  %i.gt = getelementptr i8, ptr %i.gl, i64 %i.gr
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph142
  %index145 = phi i64 [ 0, %vector.ph142 ], [ %index.next150, %vector.body144 ] ; 2 uses
  %i.gu = shl i64 %index145, 3                    ; 2 uses
  %next.gep146 = getelementptr i8, ptr %i.go, i64 %i.gu ; 2 uses
  %next.gep147 = getelementptr i8, ptr %i.gl, i64 %i.gu ; 2 uses
  %i.gv = getelementptr i8, ptr %next.gep147, i64 16
  %wide.load148 = load <2 x double>, ptr %next.gep147, align 8, !tbaa !202
  %wide.load149 = load <2 x double>, ptr %i.gv, align 8, !tbaa !202
  %i.gw = getelementptr i8, ptr %next.gep146, i64 16
  store <2 x double> %wide.load148, ptr %next.gep146, align 8, !tbaa !202
  store <2 x double> %wide.load149, ptr %i.gw, align 8, !tbaa !202
  %index.next150 = add nuw i64 %index145, 4       ; 2 uses
  %i.gx = icmp eq i64 %index.next150, %n.vec143
  br i1 %i.gx, label %middle.block151, label %vector.body144, !llvm.loop !345

middle.block151:                                  ; preds = %vector.body144
  %cmp.n152 = icmp eq i64 %i.gn, %n.vec143
  br i1 %cmp.n152, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit82, label %.lr.ph.i75.preheader158

.lr.ph.i75.preheader158:                          ; preds = %.lr.ph.i75.preheader, %middle.block151
  %.020.i76.ph = phi i64 [ 0, %.lr.ph.i75.preheader ], [ %n.vec143, %middle.block151 ] ; 4 uses
  %.01019.i77.ph = phi ptr [ %i.go, %.lr.ph.i75.preheader ], [ %i.gs, %middle.block151 ] ; 2 uses
  %.01218.i78.ph = phi ptr [ %i.gl, %.lr.ph.i75.preheader ], [ %i.gt, %middle.block151 ] ; 2 uses
  %11 = add i64 %.020.i76.ph, %i.gk
  %i.gy = sub i64 %i.gm, %11
  %xtraiter168 = and i64 %i.gy, 7                 ; 2 uses
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %.lr.ph.i75.prol.loopexit, label %.lr.ph.i75.prol

.lr.ph.i75.prol:                                  ; preds = %.lr.ph.i75.preheader158, %.lr.ph.i75.prol
  %.020.i76.prol = phi i64 [ %i.hc, %.lr.ph.i75.prol ], [ %.020.i76.ph, %.lr.ph.i75.preheader158 ]
  %.01019.i77.prol = phi ptr [ %i.hb, %.lr.ph.i75.prol ], [ %.01019.i77.ph, %.lr.ph.i75.preheader158 ] ; 2 uses
  %.01218.i78.prol = phi ptr [ %i.gz, %.lr.ph.i75.prol ], [ %.01218.i78.ph, %.lr.ph.i75.preheader158 ] ; 2 uses
  %prol.iter170 = phi i64 [ %prol.iter170.next, %.lr.ph.i75.prol ], [ 0, %.lr.ph.i75.preheader158 ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.01218.i78.prol, i64 8 ; 2 uses
  %i.ha = load double, ptr %.01218.i78.prol, align 8, !tbaa !202
  %i.hb = getelementptr inbounds nuw i8, ptr %.01019.i77.prol, i64 8 ; 2 uses
  store double %i.ha, ptr %.01019.i77.prol, align 8, !tbaa !202
  %i.hc = add nuw nsw i64 %.020.i76.prol, 1       ; 2 uses
  %prol.iter170.next = add i64 %prol.iter170, 1   ; 2 uses
  %prol.iter170.cmp.not = icmp eq i64 %prol.iter170.next, %xtraiter168
  br i1 %prol.iter170.cmp.not, label %.lr.ph.i75.prol.loopexit, label %.lr.ph.i75.prol, !llvm.loop !346

.lr.ph.i75.prol.loopexit:                         ; preds = %.lr.ph.i75.prol, %.lr.ph.i75.preheader158
  %.020.i76.unr = phi i64 [ %.020.i76.ph, %.lr.ph.i75.preheader158 ], [ %i.hc, %.lr.ph.i75.prol ]
  %.01019.i77.unr = phi ptr [ %.01019.i77.ph, %.lr.ph.i75.preheader158 ], [ %i.hb, %.lr.ph.i75.prol ]
  %.01218.i78.unr = phi ptr [ %.01218.i78.ph, %.lr.ph.i75.preheader158 ], [ %i.gz, %.lr.ph.i75.prol ]
  %i.hd = sub i64 %.020.i76.ph, %i.gm
  %i.he = add i64 %i.hd, %i.gk
  %i.hf = icmp ugt i64 %i.he, -8
  br i1 %i.hf, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit82, label %.lr.ph.i75

.preheader.i80:                                   ; preds = %bb.o
  br i1 %i.gp, label %.lr.ph23.preheader.i81, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit82

.lr.ph23.preheader.i81:                           ; preds = %.preheader.i80
  %i.hg = shl nuw i64 %i.gn, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.go, i8 0, i64 %i.hg, i1 false), !tbaa !202
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit82

.lr.ph.i75:                                       ; preds = %.lr.ph.i75.prol.loopexit, %.lr.ph.i75
  %.020.i76 = phi i64 [ %i.if, %.lr.ph.i75 ], [ %.020.i76.unr, %.lr.ph.i75.prol.loopexit ]
  %.01019.i77 = phi ptr [ %i.ie, %.lr.ph.i75 ], [ %.01019.i77.unr, %.lr.ph.i75.prol.loopexit ] ; 9 uses
  %.01218.i78 = phi ptr [ %i.ic, %.lr.ph.i75 ], [ %.01218.i78.unr, %.lr.ph.i75.prol.loopexit ] ; 9 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.01218.i78, i64 8
  %i.hi = load double, ptr %.01218.i78, align 8, !tbaa !202
  %i.hj = getelementptr inbounds nuw i8, ptr %.01019.i77, i64 8
  store double %i.hi, ptr %.01019.i77, align 8, !tbaa !202
  %i.hk = getelementptr inbounds nuw i8, ptr %.01218.i78, i64 16
  %i.hl = load double, ptr %i.hh, align 8, !tbaa !202
  %i.hm = getelementptr inbounds nuw i8, ptr %.01019.i77, i64 16
  store double %i.hl, ptr %i.hj, align 8, !tbaa !202
  %i.hn = getelementptr inbounds nuw i8, ptr %.01218.i78, i64 24
  %i.ho = load double, ptr %i.hk, align 8, !tbaa !202
  %i.hp = getelementptr inbounds nuw i8, ptr %.01019.i77, i64 24
  store double %i.ho, ptr %i.hm, align 8, !tbaa !202
  %i.hq = getelementptr inbounds nuw i8, ptr %.01218.i78, i64 32
  %i.hr = load double, ptr %i.hn, align 8, !tbaa !202
  %i.hs = getelementptr inbounds nuw i8, ptr %.01019.i77, i64 32
  store double %i.hr, ptr %i.hp, align 8, !tbaa !202
  %i.ht = getelementptr inbounds nuw i8, ptr %.01218.i78, i64 40
  %i.hu = load double, ptr %i.hq, align 8, !tbaa !202
  %i.hv = getelementptr inbounds nuw i8, ptr %.01019.i77, i64 40
  store double %i.hu, ptr %i.hs, align 8, !tbaa !202
  %i.hw = getelementptr inbounds nuw i8, ptr %.01218.i78, i64 48
  %i.hx = load double, ptr %i.ht, align 8, !tbaa !202
  %i.hy = getelementptr inbounds nuw i8, ptr %.01019.i77, i64 48
  store double %i.hx, ptr %i.hv, align 8, !tbaa !202
  %i.hz = getelementptr inbounds nuw i8, ptr %.01218.i78, i64 56
  %i.ia = load double, ptr %i.hw, align 8, !tbaa !202
  %i.ib = getelementptr inbounds nuw i8, ptr %.01019.i77, i64 56
  store double %i.ia, ptr %i.hy, align 8, !tbaa !202
  %i.ic = getelementptr inbounds nuw i8, ptr %.01218.i78, i64 64
  %i.id = load double, ptr %i.hz, align 8, !tbaa !202
  %i.ie = getelementptr inbounds nuw i8, ptr %.01019.i77, i64 64
  store double %i.id, ptr %i.ib, align 8, !tbaa !202
  %i.if = add nuw nsw i64 %.020.i76, 8            ; 2 uses
  %exitcond.not.i79.7 = icmp eq i64 %i.if, %i.gn
  br i1 %exitcond.not.i79.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit82, label %.lr.ph.i75, !llvm.loop !347

bb.p:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.f ], [ %i.bi, %bb.e ] ; 3 uses
  %.0 = extractvalue { ptr, i32 } %.pn, 1
  %i.ig = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #26
  %i.ih = icmp eq i32 %.0, %i.ig
  br i1 %i.ih, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %.050 = extractvalue { ptr, i32 } %.pn, 0
  %i.ii = tail call ptr @__cxa_begin_catch(ptr %.050) #26 ; 2 uses
  %i.ij = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi4uerrEv()
          to label %bb.r unwind label %bb.t       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.ik = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ij, ptr noundef nonnull @.str.103, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.r
  %i.il = load ptr, ptr %i.ii, align 8, !tbaa !32
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.in = load ptr, ptr %i.im, align 8
  %i.io = tail call noundef ptr %i.in(ptr noundef nonnull align 8 dereferenceable(8) %i.ii) #26
  %i.ip = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ij, ptr noundef %i.io)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.iq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.ip)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.t, !inline_history !1 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.s
  tail call void @__cxa_end_catch()
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit82

bb.t:                                             ; preds = %bb.s, %bb.r, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.q
  %i.ir = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.u unwind label %bb.v

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit82:     ; preds = %.lr.ph.i75.prol.loopexit, %.lr.ph.i75, %middle.block151, %.lr.ph23.preheader.i81, %.preheader.i80, %.preheader16.i74, %bb.n, %bb.d, %bb.k, %bb.m, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit67, %_ZNSolsEPFRSoS_E.exit
  %.153 = phi i32 [ -1, %_ZNSolsEPFRSoS_E.exit ], [ 1, %bb.m ], [ 1, %bb.d ], [ 1, %bb.k ], [ 0, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit67 ], [ 0, %bb.n ], [ 0, %.preheader16.i74 ], [ 0, %.preheader.i80 ], [ 0, %.lr.ph23.preheader.i81 ], [ 0, %middle.block151 ], [ 0, %.lr.ph.i75 ], [ 0, %.lr.ph.i75.prol.loopexit ]
  ret i32 %.153

bb.u:                                             ; preds = %bb.t, %bb.p
  %.merged = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.ir, %bb.t ]
  resume { ptr, i32 } %.merged

bb.v:                                             ; preds = %bb.t
  %i.is = landingpad { ptr, i32 }
          catch ptr null
  %i.it = extractvalue { ptr, i32 } %i.is, 0
  tail call void @__clang_call_terminate(ptr %i.it) #29
  unreachable
}

declare i32 @CVodeQuadInit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 2) i32 @_ZN6casadi15CvodesInterface5rhsQFEdP17_generic_N_VectorS2_Pv(double noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef ptr @_ZN6casadi15CvodesInterface6to_memEPv(ptr noundef %3)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 728
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !189, !nonnull !69, !align !190
  %i.d = load ptr, ptr %1, align 8, !tbaa !194
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !196
  %i.g = load ptr, ptr %2, align 8, !tbaa !194
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !196
  %i.j = invoke noundef i32 @_ZNK6casadi17SundialsInterface10calc_quadFEPNS_14SundialsMemoryEdPKdS4_Pd(ptr noundef nonnull align 8 dereferenceable(2192) %i.c, ptr noundef nonnull %i.a, double noundef %0, ptr noundef %i.f, ptr noundef null, ptr noundef %i.i)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not = icmp ne i32 %i.j, 0
  %. = zext i1 %.not to i32
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.k, %bb.d ] ; 3 uses
  %.0 = extractvalue { ptr, i32 } %.pn, 1
  %i.m = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #26
  %i.n = icmp eq i32 %.0, %i.m
  br i1 %i.n, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %.012 = extractvalue { ptr, i32 } %.pn, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %.012) #26 ; 2 uses
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi4uerrEv()
          to label %bb.h unwind label %bb.j       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.96, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.h
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #26
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.u)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.j, !inline_history !1 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.i
  tail call void @__cxa_end_catch()
  br label %bb.k

end_hunk_0
begin_hunk_1_@_ZN6casadi15CvodesInterface7psolveBEdP17_generic_N_VectorS2_S2_S2_S2_ddiPvS2_:bb.a

.lr.ph.i68.prol.loopexit:                         ; preds = %.lr.ph.i68.prol, %.lr.ph.i68.preheader168
  %.020.i69.unr = phi i64 [ %.020.i69.ph, %.lr.ph.i68.preheader168 ], [ %i.cj, %.lr.ph.i68.prol ]
  %.01019.i70.unr = phi ptr [ %.01019.i70.ph, %.lr.ph.i68.preheader168 ], [ %i.ci, %.lr.ph.i68.prol ]
  %.01218.i71.unr = phi ptr [ %.01218.i71.ph, %.lr.ph.i68.preheader168 ], [ %i.cg, %.lr.ph.i68.prol ]
  %i.ck = sub nsw i64 %.020.i69.ph, %i.bv
  %i.cl = icmp ugt i64 %i.ck, -8
  br i1 %i.cl, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit75, label %.lr.ph.i68

.preheader.i73:                                   ; preds = %bb.h
  br i1 %i.bw, label %.lr.ph23.preheader.i74, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit75

.lr.ph23.preheader.i74:                           ; preds = %.preheader.i73
  %i.cm = shl nuw i64 %i.bv, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bo, i8 0, i64 %i.cm, i1 false), !tbaa !202
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit75

.lr.ph.i68:                                       ; preds = %.lr.ph.i68.prol.loopexit, %.lr.ph.i68
  %.020.i69 = phi i64 [ %i.dl, %.lr.ph.i68 ], [ %.020.i69.unr, %.lr.ph.i68.prol.loopexit ]
  %.01019.i70 = phi ptr [ %i.dk, %.lr.ph.i68 ], [ %.01019.i70.unr, %.lr.ph.i68.prol.loopexit ] ; 9 uses
  %.01218.i71 = phi ptr [ %i.di, %.lr.ph.i68 ], [ %.01218.i71.unr, %.lr.ph.i68.prol.loopexit ] ; 9 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.01218.i71, i64 8
  %i.co = load double, ptr %.01218.i71, align 8, !tbaa !202
  %i.cp = getelementptr inbounds nuw i8, ptr %.01019.i70, i64 8
  store double %i.co, ptr %.01019.i70, align 8, !tbaa !202
  %i.cq = getelementptr inbounds nuw i8, ptr %.01218.i71, i64 16
  %i.cr = load double, ptr %i.cn, align 8, !tbaa !202
  %i.cs = getelementptr inbounds nuw i8, ptr %.01019.i70, i64 16
  store double %i.cr, ptr %i.cp, align 8, !tbaa !202
  %i.ct = getelementptr inbounds nuw i8, ptr %.01218.i71, i64 24
  %i.cu = load double, ptr %i.cq, align 8, !tbaa !202
  %i.cv = getelementptr inbounds nuw i8, ptr %.01019.i70, i64 24
  store double %i.cu, ptr %i.cs, align 8, !tbaa !202
  %i.cw = getelementptr inbounds nuw i8, ptr %.01218.i71, i64 32
  %i.cx = load double, ptr %i.ct, align 8, !tbaa !202
  %i.cy = getelementptr inbounds nuw i8, ptr %.01019.i70, i64 32
  store double %i.cx, ptr %i.cv, align 8, !tbaa !202
  %i.cz = getelementptr inbounds nuw i8, ptr %.01218.i71, i64 40
  %i.da = load double, ptr %i.cw, align 8, !tbaa !202
  %i.db = getelementptr inbounds nuw i8, ptr %.01019.i70, i64 40
  store double %i.da, ptr %i.cy, align 8, !tbaa !202
  %i.dc = getelementptr inbounds nuw i8, ptr %.01218.i71, i64 48
  %i.dd = load double, ptr %i.cz, align 8, !tbaa !202
  %i.de = getelementptr inbounds nuw i8, ptr %.01019.i70, i64 48
  store double %i.dd, ptr %i.db, align 8, !tbaa !202
  %i.df = getelementptr inbounds nuw i8, ptr %.01218.i71, i64 56
  %i.dg = load double, ptr %i.dc, align 8, !tbaa !202
  %i.dh = getelementptr inbounds nuw i8, ptr %.01019.i70, i64 56
  store double %i.dg, ptr %i.de, align 8, !tbaa !202
  %i.di = getelementptr inbounds nuw i8, ptr %.01218.i71, i64 64
  %i.dj = load double, ptr %i.df, align 8, !tbaa !202
  %i.dk = getelementptr inbounds nuw i8, ptr %.01019.i70, i64 64
  store double %i.dj, ptr %i.dh, align 8, !tbaa !202
  %i.dl = add nuw nsw i64 %.020.i69, 8            ; 2 uses
  %exitcond.not.i72.7 = icmp eq i64 %i.dl, %i.bv
  br i1 %exitcond.not.i72.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit75, label %.lr.ph.i68, !llvm.loop !384

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit75:     ; preds = %.lr.ph.i68.prol.loopexit, %.lr.ph.i68, %middle.block120, %bb.g, %.preheader16.i67, %.preheader.i73, %.lr.ph23.preheader.i74
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 1592 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !209
  %i.do = icmp sgt i64 %i.dn, 0
  br i1 %i.do, label %bb.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit90

bb.i:                                             ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit75
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 2129
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !210, !range !68, !noundef !69
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.j, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ds = load i64, ptr %i.h, align 8, !tbaa !127
  %i.dt = sub nsw i64 %i.ds, %i.bv                ; 2 uses
  %i.du = icmp sgt i64 %i.dt, 0
  %or.cond.i = and i1 %.not.i65, %i.du
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bv
  %i.dw = shl nuw i64 %i.dt, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dv, i8 0, i64 %i.dw, i1 false), !tbaa !202
  br label %_ZN6casadi12casadi_clearIdEEvPT_x.exit

_ZN6casadi12casadi_clearIdEEvPT_x.exit:           ; preds = %bb.j, %.lr.ph.preheader.i
  %i.dx = load ptr, ptr %1, align 8, !tbaa !194
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !196
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 280 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !211
  %i.ec = invoke noundef i32 @_ZNK6casadi17SundialsInterface9calc_daeBEPNS_14SundialsMemoryEdPKdS4_S4_S4_S4_PdS5_(ptr noundef nonnull align 8 dereferenceable(2192) %i.c, ptr noundef nonnull %i.a, double noundef %0, ptr noundef %i.dz, ptr noundef null, ptr noundef %i.bo, ptr noundef null, ptr noundef null, ptr noundef %i.eb, ptr noundef null)
          to label %bb.k unwind label %bb.f

bb.k:                                             ; preds = %_ZN6casadi12casadi_clearIdEEvPT_x.exit
  %.not62 = icmp eq i32 %i.ec, 0
  br i1 %.not62, label %bb.l, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit90

bb.l:                                             ; preds = %bb.k
  %i.ed = load i64, ptr %i.h, align 8, !tbaa !127 ; 2 uses
  %i.ee = load i64, ptr %i.bs, align 8, !tbaa !394
  %i.ef = load i64, ptr %i.bf, align 8, !tbaa !393 ; 4 uses
  %i.eg = mul nsw i64 %i.ef, %i.ee                ; 3 uses
  %i.eh = sub nsw i64 %i.ed, %i.eg                ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 760
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !230
  %i.ek = fneg double %i.ej                       ; 2 uses
  %i.el = load ptr, ptr %i.ea, align 8, !tbaa !211 ; 3 uses
  %i.em = load ptr, ptr %i.j, align 8, !tbaa !207 ; 6 uses
  %i.en = icmp ne ptr %i.el, null
  %i.eo = icmp ne ptr %i.em, null
  %or.cond.i77 = and i1 %i.en, %i.eo
  %i.ep = icmp sgt i64 %i.eh, 0
  %or.cond15.i = and i1 %i.ep, %or.cond.i77
  br i1 %or.cond15.i, label %.lr.ph.i78.preheader, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit

.lr.ph.i78.preheader:                             ; preds = %bb.l
  %i.eq = getelementptr [8 x i8], ptr %i.em, i64 %i.eg ; 5 uses
  %i.er = getelementptr [8 x i8], ptr %i.el, i64 %i.eg ; 5 uses
  %min.iters.check128 = icmp ult i64 %i.eh, 6
  br i1 %min.iters.check128, label %.lr.ph.i78.preheader167, label %vector.memcheck129

vector.memcheck129:                               ; preds = %.lr.ph.i78.preheader
  %i.es = shl i64 %i.ed, 3                        ; 2 uses
  %i.et = getelementptr i8, ptr %i.em, i64 %i.es
  %i.eu = getelementptr i8, ptr %i.el, i64 %i.es
  %bound0 = icmp ult ptr %i.eq, %i.eu
  %bound1 = icmp ult ptr %i.er, %i.et
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i78.preheader167, label %vector.ph130

vector.ph130:                                     ; preds = %vector.memcheck129
  %n.vec131 = and i64 %i.eh, 9223372036854775804  ; 4 uses
  %i.ev = shl i64 %n.vec131, 3                    ; 2 uses
  %i.ew = getelementptr i8, ptr %i.eq, i64 %i.ev
  %i.ex = getelementptr i8, ptr %i.er, i64 %i.ev
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ek, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph130
  %index133 = phi i64 [ 0, %vector.ph130 ], [ %index.next140, %vector.body132 ] ; 2 uses
  %i.ey = shl i64 %index133, 3                    ; 2 uses
  %next.gep134 = getelementptr i8, ptr %i.eq, i64 %i.ey ; 3 uses
  %next.gep135 = getelementptr i8, ptr %i.er, i64 %i.ey ; 2 uses
  %i.ez = getelementptr i8, ptr %next.gep135, i64 16
  %wide.load136 = load <2 x double>, ptr %next.gep135, align 8, !tbaa !202, !alias.scope !395
  %wide.load137 = load <2 x double>, ptr %i.ez, align 8, !tbaa !202, !alias.scope !395
  %i.fa = getelementptr i8, ptr %next.gep134, i64 16 ; 2 uses
  %wide.load138 = load <2 x double>, ptr %next.gep134, align 8, !tbaa !202, !alias.scope !396, !noalias !395
  %wide.load139 = load <2 x double>, ptr %i.fa, align 8, !tbaa !202, !alias.scope !396, !noalias !395
  %i.fb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load136, <2 x double> %wide.load138)
  %i.fc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load137, <2 x double> %wide.load139)
  store <2 x double> %i.fb, ptr %next.gep134, align 8, !tbaa !202, !alias.scope !396, !noalias !395
  store <2 x double> %i.fc, ptr %i.fa, align 8, !tbaa !202, !alias.scope !396, !noalias !395
  %index.next140 = add nuw i64 %index133, 4       ; 2 uses
  %i.fd = icmp eq i64 %index.next140, %n.vec131
  br i1 %i.fd, label %middle.block141, label %vector.body132, !llvm.loop !388

middle.block141:                                  ; preds = %vector.body132
  %cmp.n142 = icmp eq i64 %i.eh, %n.vec131
  br i1 %cmp.n142, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit, label %.lr.ph.i78.preheader167

.lr.ph.i78.preheader167:                          ; preds = %vector.memcheck129, %.lr.ph.i78.preheader, %middle.block141
  %.014.i.ph = phi i64 [ 0, %vector.memcheck129 ], [ 0, %.lr.ph.i78.preheader ], [ %n.vec131, %middle.block141 ]
  %.0813.i.ph = phi ptr [ %i.eq, %vector.memcheck129 ], [ %i.eq, %.lr.ph.i78.preheader ], [ %i.ew, %middle.block141 ]
  %.0912.i.ph = phi ptr [ %i.er, %vector.memcheck129 ], [ %i.er, %.lr.ph.i78.preheader ], [ %i.ex, %middle.block141 ]
  br label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %.lr.ph.i78.preheader167, %.lr.ph.i78
  %.014.i = phi i64 [ %i.fj, %.lr.ph.i78 ], [ %.014.i.ph, %.lr.ph.i78.preheader167 ]
  %.0813.i = phi ptr [ %i.fg, %.lr.ph.i78 ], [ %.0813.i.ph, %.lr.ph.i78.preheader167 ] ; 3 uses
  %.0912.i = phi ptr [ %i.fe, %.lr.ph.i78 ], [ %.0912.i.ph, %.lr.ph.i78.preheader167 ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0912.i, i64 8
  %i.ff = load double, ptr %.0912.i, align 8, !tbaa !202
  %i.fg = getelementptr inbounds nuw i8, ptr %.0813.i, i64 8
  %i.fh = load double, ptr %.0813.i, align 8, !tbaa !202
  %i.fi = tail call double @llvm.fmuladd.f64(double %i.ek, double %i.ff, double %i.fh)
  store double %i.fi, ptr %.0813.i, align 8, !tbaa !202
  %i.fj = add nuw nsw i64 %.014.i, 1              ; 2 uses
  %exitcond.not.i79 = icmp eq i64 %i.fj, %i.eh
  br i1 %exitcond.not.i79, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit, label %.lr.ph.i78, !llvm.loop !389

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit:    ; preds = %.lr.ph.i78, %middle.block141, %bb.l, %bb.i
  %i.fk = phi i64 [ %i.bu, %bb.i ], [ %i.ef, %bb.l ], [ %i.ef, %middle.block141 ], [ %i.ef, %.lr.ph.i78 ]
  %i.fl = phi ptr [ %i.bq, %bb.i ], [ %i.em, %bb.l ], [ %i.em, %middle.block141 ], [ %i.em, %.lr.ph.i78 ]
  %i.fm = load ptr, ptr %i.bd, align 8, !tbaa !200
  %i.fn = getelementptr inbounds nuw i8, ptr %i.c, i64 1640 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !208
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.fo
  %i.fq = load i64, ptr %i.dm, align 8, !tbaa !209
  %i.fr = mul nsw i64 %i.fq, %i.fk
  %i.fs = load i32, ptr %i.bh, align 8, !tbaa !204
  %i.ft = invoke noundef i32 @_ZNK6casadi6Linsol5solveEPKdPdxbi(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef %i.fm, ptr noundef %i.fp, i64 noundef %i.fr, i1 noundef zeroext true, i32 noundef %i.fs)
          to label %bb.m unwind label %bb.f

bb.m:                                             ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit
  %.not64 = icmp eq i32 %i.ft, 0
  br i1 %.not64, label %bb.n, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit90

bb.n:                                             ; preds = %bb.m
  %i.fu = load ptr, ptr %i.j, align 8, !tbaa !207 ; 3 uses
  %i.fv = ptrtoaddr ptr %i.fu to i64
  %i.fw = load i64, ptr %i.fn, align 8, !tbaa !208 ; 5 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.fw ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.c, i64 1616
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !126 ; 3 uses
  %i.ga = sub i64 %i.fz, %i.fw                    ; 6 uses
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.fw ; 4 uses
  br i1 %.not.i65, label %bb.o, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit90

bb.o:                                             ; preds = %bb.n
  %.not15.i81 = icmp eq ptr %i.fu, null
  %i.gc = icmp sgt i64 %i.ga, 0                   ; 2 uses
  br i1 %.not15.i81, label %.preheader.i88, label %.preheader16.i82

.preheader16.i82:                                 ; preds = %bb.o
  br i1 %i.gc, label %.lr.ph.i83.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit90

.lr.ph.i83.preheader:                             ; preds = %.preheader16.i82
  %min.iters.check149 = icmp ult i64 %i.ga, 8
  %i.gd = sub i64 %i.fv, %i.bp
  %diff.check147 = icmp ugt i64 %i.gd, -32
  %or.cond165 = select i1 %min.iters.check149, i1 true, i1 %diff.check147
  br i1 %or.cond165, label %.lr.ph.i83.preheader166, label %vector.ph150

vector.ph150:                                     ; preds = %.lr.ph.i83.preheader
  %n.vec151 = and i64 %i.ga, 9223372036854775804  ; 4 uses
  %i.ge = shl i64 %n.vec151, 3                    ; 2 uses
  %i.gf = getelementptr i8, ptr %i.gb, i64 %i.ge
  %i.gg = getelementptr i8, ptr %i.fx, i64 %i.ge
  br label %vector.body152

vector.body152:                                   ; preds = %vector.body152, %vector.ph150
  %index153 = phi i64 [ 0, %vector.ph150 ], [ %index.next158, %vector.body152 ] ; 2 uses
  %i.gh = shl i64 %index153, 3                    ; 2 uses
  %next.gep154 = getelementptr i8, ptr %i.gb, i64 %i.gh ; 2 uses
  %next.gep155 = getelementptr i8, ptr %i.fx, i64 %i.gh ; 2 uses
  %i.gi = getelementptr i8, ptr %next.gep155, i64 16
  %wide.load156 = load <2 x double>, ptr %next.gep155, align 8, !tbaa !202
  %wide.load157 = load <2 x double>, ptr %i.gi, align 8, !tbaa !202
  %i.gj = getelementptr i8, ptr %next.gep154, i64 16
  store <2 x double> %wide.load156, ptr %next.gep154, align 8, !tbaa !202
  store <2 x double> %wide.load157, ptr %i.gj, align 8, !tbaa !202
  %index.next158 = add nuw i64 %index153, 4       ; 2 uses
  %i.gk = icmp eq i64 %index.next158, %n.vec151
  br i1 %i.gk, label %middle.block159, label %vector.body152, !llvm.loop !390

middle.block159:                                  ; preds = %vector.body152
  %cmp.n160 = icmp eq i64 %i.ga, %n.vec151
  br i1 %cmp.n160, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit90, label %.lr.ph.i83.preheader166

.lr.ph.i83.preheader166:                          ; preds = %.lr.ph.i83.preheader, %middle.block159
  %.020.i84.ph = phi i64 [ 0, %.lr.ph.i83.preheader ], [ %n.vec151, %middle.block159 ] ; 4 uses
  %.01019.i85.ph = phi ptr [ %i.gb, %.lr.ph.i83.preheader ], [ %i.gf, %middle.block159 ] ; 2 uses
  %.01218.i86.ph = phi ptr [ %i.fx, %.lr.ph.i83.preheader ], [ %i.gg, %middle.block159 ] ; 2 uses
  %11 = add i64 %.020.i84.ph, %i.fw
  %i.gl = sub i64 %i.fz, %11
  %xtraiter173 = and i64 %i.gl, 7                 ; 2 uses
  %lcmp.mod174.not = icmp eq i64 %xtraiter173, 0
  br i1 %lcmp.mod174.not, label %.lr.ph.i83.prol.loopexit, label %.lr.ph.i83.prol

.lr.ph.i83.prol:                                  ; preds = %.lr.ph.i83.preheader166, %.lr.ph.i83.prol
  %.020.i84.prol = phi i64 [ %i.gp, %.lr.ph.i83.prol ], [ %.020.i84.ph, %.lr.ph.i83.preheader166 ]
  %.01019.i85.prol = phi ptr [ %i.go, %.lr.ph.i83.prol ], [ %.01019.i85.ph, %.lr.ph.i83.preheader166 ] ; 2 uses
  %.01218.i86.prol = phi ptr [ %i.gm, %.lr.ph.i83.prol ], [ %.01218.i86.ph, %.lr.ph.i83.preheader166 ] ; 2 uses
  %prol.iter175 = phi i64 [ %prol.iter175.next, %.lr.ph.i83.prol ], [ 0, %.lr.ph.i83.preheader166 ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.01218.i86.prol, i64 8 ; 2 uses
  %i.gn = load double, ptr %.01218.i86.prol, align 8, !tbaa !202
  %i.go = getelementptr inbounds nuw i8, ptr %.01019.i85.prol, i64 8 ; 2 uses
  store double %i.gn, ptr %.01019.i85.prol, align 8, !tbaa !202
  %i.gp = add nuw nsw i64 %.020.i84.prol, 1       ; 2 uses
  %prol.iter175.next = add i64 %prol.iter175, 1   ; 2 uses
  %prol.iter175.cmp.not = icmp eq i64 %prol.iter175.next, %xtraiter173
  br i1 %prol.iter175.cmp.not, label %.lr.ph.i83.prol.loopexit, label %.lr.ph.i83.prol, !llvm.loop !391

.lr.ph.i83.prol.loopexit:                         ; preds = %.lr.ph.i83.prol, %.lr.ph.i83.preheader166
  %.020.i84.unr = phi i64 [ %.020.i84.ph, %.lr.ph.i83.preheader166 ], [ %i.gp, %.lr.ph.i83.prol ]
  %.01019.i85.unr = phi ptr [ %.01019.i85.ph, %.lr.ph.i83.preheader166 ], [ %i.go, %.lr.ph.i83.prol ]
  %.01218.i86.unr = phi ptr [ %.01218.i86.ph, %.lr.ph.i83.preheader166 ], [ %i.gm, %.lr.ph.i83.prol ]
  %i.gq = sub i64 %.020.i84.ph, %i.fz
  %i.gr = add i64 %i.gq, %i.fw
  %i.gs = icmp ugt i64 %i.gr, -8
  br i1 %i.gs, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit90, label %.lr.ph.i83

.preheader.i88:                                   ; preds = %bb.o
  br i1 %i.gc, label %.lr.ph23.preheader.i89, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit90

.lr.ph23.preheader.i89:                           ; preds = %.preheader.i88
  %i.gt = shl nuw i64 %i.ga, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.gb, i8 0, i64 %i.gt, i1 false), !tbaa !202
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit90

.lr.ph.i83:                                       ; preds = %.lr.ph.i83.prol.loopexit, %.lr.ph.i83
  %.020.i84 = phi i64 [ %i.hs, %.lr.ph.i83 ], [ %.020.i84.unr, %.lr.ph.i83.prol.loopexit ]
  %.01019.i85 = phi ptr [ %i.hr, %.lr.ph.i83 ], [ %.01019.i85.unr, %.lr.ph.i83.prol.loopexit ] ; 9 uses
  %.01218.i86 = phi ptr [ %i.hp, %.lr.ph.i83 ], [ %.01218.i86.unr, %.lr.ph.i83.prol.loopexit ] ; 9 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.01218.i86, i64 8
  %i.gv = load double, ptr %.01218.i86, align 8, !tbaa !202
  %i.gw = getelementptr inbounds nuw i8, ptr %.01019.i85, i64 8
  store double %i.gv, ptr %.01019.i85, align 8, !tbaa !202
  %i.gx = getelementptr inbounds nuw i8, ptr %.01218.i86, i64 16
  %i.gy = load double, ptr %i.gu, align 8, !tbaa !202
  %i.gz = getelementptr inbounds nuw i8, ptr %.01019.i85, i64 16
  store double %i.gy, ptr %i.gw, align 8, !tbaa !202
  %i.ha = getelementptr inbounds nuw i8, ptr %.01218.i86, i64 24
  %i.hb = load double, ptr %i.gx, align 8, !tbaa !202
  %i.hc = getelementptr inbounds nuw i8, ptr %.01019.i85, i64 24
  store double %i.hb, ptr %i.gz, align 8, !tbaa !202
  %i.hd = getelementptr inbounds nuw i8, ptr %.01218.i86, i64 32
  %i.he = load double, ptr %i.ha, align 8, !tbaa !202
  %i.hf = getelementptr inbounds nuw i8, ptr %.01019.i85, i64 32
  store double %i.he, ptr %i.hc, align 8, !tbaa !202
  %i.hg = getelementptr inbounds nuw i8, ptr %.01218.i86, i64 40
  %i.hh = load double, ptr %i.hd, align 8, !tbaa !202
  %i.hi = getelementptr inbounds nuw i8, ptr %.01019.i85, i64 40
  store double %i.hh, ptr %i.hf, align 8, !tbaa !202
  %i.hj = getelementptr inbounds nuw i8, ptr %.01218.i86, i64 48
  %i.hk = load double, ptr %i.hg, align 8, !tbaa !202
  %i.hl = getelementptr inbounds nuw i8, ptr %.01019.i85, i64 48
  store double %i.hk, ptr %i.hi, align 8, !tbaa !202
  %i.hm = getelementptr inbounds nuw i8, ptr %.01218.i86, i64 56
  %i.hn = load double, ptr %i.hj, align 8, !tbaa !202
  %i.ho = getelementptr inbounds nuw i8, ptr %.01019.i85, i64 56
  store double %i.hn, ptr %i.hl, align 8, !tbaa !202
  %i.hp = getelementptr inbounds nuw i8, ptr %.01218.i86, i64 64
  %i.hq = load double, ptr %i.hm, align 8, !tbaa !202
  %i.hr = getelementptr inbounds nuw i8, ptr %.01019.i85, i64 64
  store double %i.hq, ptr %i.ho, align 8, !tbaa !202
  %i.hs = add nuw nsw i64 %.020.i84, 8            ; 2 uses
  %exitcond.not.i87.7 = icmp eq i64 %i.hs, %i.ga
  br i1 %exitcond.not.i87.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit90, label %.lr.ph.i83, !llvm.loop !392

bb.p:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.f ], [ %i.bk, %bb.e ] ; 3 uses
  %.0 = extractvalue { ptr, i32 } %.pn, 1
  %i.ht = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #26
  %i.hu = icmp eq i32 %.0, %i.ht
  br i1 %i.hu, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %.058 = extractvalue { ptr, i32 } %.pn, 0
  %i.hv = tail call ptr @__cxa_begin_catch(ptr %.058) #26 ; 2 uses
  %i.hw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi4uerrEv()
          to label %bb.r unwind label %bb.t       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.hx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hw, ptr noundef nonnull @.str.104, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.r
  %i.hy = load ptr, ptr %i.hv, align 8, !tbaa !32
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = tail call noundef ptr %i.ia(ptr noundef nonnull align 8 dereferenceable(8) %i.hv) #26
  %i.ic = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.hw, ptr noundef %i.ib)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.id = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.ic)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.t, !inline_history !1 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.s
  tail call void @__cxa_end_catch()
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit90

bb.t:                                             ; preds = %bb.s, %bb.r, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.q
  %i.ie = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.u unwind label %bb.v

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit90:     ; preds = %.lr.ph.i83.prol.loopexit, %.lr.ph.i83, %middle.block159, %.lr.ph23.preheader.i89, %.preheader.i88, %.preheader16.i82, %bb.n, %bb.d, %bb.k, %bb.m, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit75, %_ZNSolsEPFRSoS_E.exit
  %.161 = phi i32 [ -1, %_ZNSolsEPFRSoS_E.exit ], [ 1, %bb.m ], [ 1, %bb.d ], [ 1, %bb.k ], [ 0, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit75 ], [ 0, %bb.n ], [ 0, %.preheader16.i82 ], [ 0, %.preheader.i88 ], [ 0, %.lr.ph23.preheader.i89 ], [ 0, %middle.block159 ], [ 0, %.lr.ph.i83 ], [ 0, %.lr.ph.i83.prol.loopexit ]
  ret i32 %.161

bb.u:                                             ; preds = %bb.t, %bb.p
  %.merged = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.ie, %bb.t ]
  resume { ptr, i32 } %.merged

bb.v:                                             ; preds = %bb.t
  %i.if = landingpad { ptr, i32 }
          catch ptr null
  %i.ig = extractvalue { ptr, i32 } %i.if, 0
  tail call void @__clang_call_terminate(ptr %i.ig) #29
  unreachable
}

declare i32 @CVodeQuadInitB(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 2) i32 @_ZN6casadi15CvodesInterface5rhsQBEdP17_generic_N_VectorS2_S2_Pv(double noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %14 = alloca %"class.std::vector", align 8      ; 5 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.b, label %_ZN6casadi15CvodesInterface6to_memEPv.exit

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.99, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.24)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull @.str.60, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false), !alias.scope !401
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #25
          to label %bb.aa unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.thread: ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
end_hunk_1
