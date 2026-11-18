Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/ipqp?download=true
inline.NumInlined: 1443
inline.NumDeleted: 504
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN6casadi20casadi_ipqp_residualIdEEvPNS_16casadi_ipqp_dataIT_EE:bb.a
  %i.kn = fdiv double 1.000000e+00, %i.kf
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %.pre231, i64 %.4213
  store double %i.kn, ptr %i.ko, align 8, !tbaa !35
  %i.kp = load ptr, ptr %i.ii, align 8, !tbaa !147
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %.4213
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !35
  %i.ks = tail call nsz double @llvm.maxnum.f64(double %i.kr, double 0.000000e+00)
  %i.kt = fmul double %i.kf, %i.ks                ; 2 uses
  %i.ku = load double, ptr %i.hz, align 8, !tbaa !176
  %i.kv = fcmp ogt double %i.kt, %i.ku
  br i1 %i.kv, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  store double %i.kt, ptr %i.hz, align 8, !tbaa !176
  store i64 %.4213, ptr %i.hy, align 8, !tbaa !177
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge227, %bb.ab
  %i.kw = phi ptr [ %.pre230, %._crit_edge227 ], [ %.pre231, %bb.ab ]
  %i.kx = phi ptr [ %.pre228, %._crit_edge227 ], [ %.pre229, %bb.ab ]
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %.4213
  store double 0.000000e+00, ptr %i.ky, align 8, !tbaa !35
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %.4213
  store double 0.000000e+00, ptr %i.kz, align 8, !tbaa !35
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.la = add nuw nsw i64 %.4213, 1               ; 2 uses
  %exitcond220.not = icmp eq i64 %i.la, %i.ca
  br i1 %exitcond220.not, label %._crit_edge216, label %bb.v, !llvm.loop !417

._crit_edge216:                                   ; preds = %bb.af, %._crit_edge212.thread
  %i.lb = phi ptr [ %i.gf, %._crit_edge212.thread ], [ %i.hx, %bb.af ] ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !227 ; 2 uses
  %i.le = icmp sgt i64 %i.ld, 0
  br i1 %i.le, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %._crit_edge216
  %i.lf = uitofp nneg i64 %i.ld to double
  %i.lg = load double, ptr %i.lb, align 8, !tbaa !171
  %i.lh = fdiv double %i.lg, %i.lf
  store double %i.lh, ptr %i.lb, align 8, !tbaa !171
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge216
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6casadi29casadi_ipqp_predictor_prepareIdEEvPNS_16casadi_ipqp_dataIT_EE(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !143    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !155  ; 11 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !118  ; 48 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !150  ; 43 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not15.i = icmp eq ptr %i.c, null
  %i.j = icmp sgt i64 %i.f, 0                     ; 2 uses
  br i1 %.not15.i, label %.preheader.i, label %.preheader16.i

.preheader16.i:                                   ; preds = %bb.b
  br i1 %i.j, label %.lr.ph.i.preheader, label %.preheader93

.lr.ph.i.preheader:                               ; preds = %.preheader16.i
  %min.iters.check = icmp ult i64 %i.f, 8
  %i.k = sub i64 %i.d, %i.i
  %diff.check = icmp ugt i64 %i.k, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader315, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.f, 9223372036854775804      ; 4 uses
  %i.l = shl i64 %n.vec, 3                        ; 2 uses
  %i.m = getelementptr i8, ptr %i.h, i64 %i.l
  %i.n = getelementptr i8, ptr %i.c, i64 %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.o ; 2 uses
  %next.gep131 = getelementptr i8, ptr %i.c, i64 %i.o ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep131, i64 16
  %wide.load = load <2 x double>, ptr %next.gep131, align 8, !tbaa !35
  %wide.load132 = load <2 x double>, ptr %i.p, align 8, !tbaa !35
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !35
  store <2 x double> %wide.load132, ptr %i.q, align 8, !tbaa !35
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !422

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %.lr.ph, label %.lr.ph.i.preheader315

.lr.ph.i.preheader315:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.020.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.01019.i.ph = phi ptr [ %i.h, %.lr.ph.i.preheader ], [ %i.m, %middle.block ] ; 2 uses
  %.01218.i.ph = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.n, %middle.block ] ; 2 uses
  %i.s = sub nsw i64 %i.f, %.020.i.ph
  %xtraiter = and i64 %i.s, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader315, %.lr.ph.i.prol
  %.020.i.prol = phi i64 [ %i.w, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader315 ]
  %.01019.i.prol = phi ptr [ %i.v, %.lr.ph.i.prol ], [ %.01019.i.ph, %.lr.ph.i.preheader315 ] ; 2 uses
  %.01218.i.prol = phi ptr [ %i.t, %.lr.ph.i.prol ], [ %.01218.i.ph, %.lr.ph.i.preheader315 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader315 ]
  %i.t = getelementptr inbounds nuw i8, ptr %.01218.i.prol, i64 8 ; 2 uses
  %i.u = load double, ptr %.01218.i.prol, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 8 ; 2 uses
  store double %i.u, ptr %.01019.i.prol, align 8, !tbaa !35
  %i.w = add nuw nsw i64 %.020.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !423

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader315
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader315 ], [ %i.w, %.lr.ph.i.prol ]
  %.01019.i.unr = phi ptr [ %.01019.i.ph, %.lr.ph.i.preheader315 ], [ %i.v, %.lr.ph.i.prol ]
  %.01218.i.unr = phi ptr [ %.01218.i.ph, %.lr.ph.i.preheader315 ], [ %i.t, %.lr.ph.i.prol ]
  %i.x = sub nsw i64 %.020.i.ph, %i.f
  %i.y = icmp ugt i64 %i.x, -8
  br i1 %i.y, label %.lr.ph, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.b
  br i1 %i.j, label %.lr.ph23.preheader.i, label %.preheader93

.lr.ph23.preheader.i:                             ; preds = %.preheader.i
  %i.z = shl nuw i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 0, i64 %i.z, i1 false), !tbaa !35
  br label %.lr.ph

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.020.i = phi i64 [ %i.ay, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01019.i = phi ptr [ %i.ax, %.lr.ph.i ], [ %.01019.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.01218.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.01218.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01218.i, i64 8
  %i.ab = load double, ptr %.01218.i, align 8, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  store double %i.ab, ptr %.01019.i, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %.01218.i, i64 16
  %i.ae = load double, ptr %i.aa, align 8, !tbaa !35
  %i.af = getelementptr inbounds nuw i8, ptr %.01019.i, i64 16
  store double %i.ae, ptr %i.ac, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %.01218.i, i64 24
  %i.ah = load double, ptr %i.ad, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %.01019.i, i64 24
  store double %i.ah, ptr %i.af, align 8, !tbaa !35
  %i.aj = getelementptr inbounds nuw i8, ptr %.01218.i, i64 32
  %i.ak = load double, ptr %i.ag, align 8, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %.01019.i, i64 32
  store double %i.ak, ptr %i.ai, align 8, !tbaa !35
  %i.am = getelementptr inbounds nuw i8, ptr %.01218.i, i64 40
  %i.an = load double, ptr %i.aj, align 8, !tbaa !35
  %i.ao = getelementptr inbounds nuw i8, ptr %.01019.i, i64 40
  store double %i.an, ptr %i.al, align 8, !tbaa !35
  %i.ap = getelementptr inbounds nuw i8, ptr %.01218.i, i64 48
  %i.aq = load double, ptr %i.am, align 8, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %.01019.i, i64 48
  store double %i.aq, ptr %i.ao, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %.01218.i, i64 56
  %i.at = load double, ptr %i.ap, align 8, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %.01019.i, i64 56
  store double %i.at, ptr %i.ar, align 8, !tbaa !35
  %i.av = getelementptr inbounds nuw i8, ptr %.01218.i, i64 64
  %i.aw = load double, ptr %i.as, align 8, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %.01019.i, i64 64
  store double %i.aw, ptr %i.au, align 8, !tbaa !35
  %i.ay = add nuw nsw i64 %.020.i, 8              ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.ay, %i.f
  br i1 %exitcond.not.i.7, label %.lr.ph, label %.lr.ph.i, !llvm.loop !424

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit:       ; preds = %bb.a
  %i.az = icmp sgt i64 %i.f, 0
  br i1 %i.az, label %.lr.ph, label %.preheader93

.lr.ph:                                           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %.lr.ph23.preheader.i, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !160 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !156 ; 6 uses
  %min.iters.check142 = icmp ult i64 %i.f, 8
  br i1 %min.iters.check142, label %scalar.ph141.preheader, label %vector.memcheck143

vector.memcheck143:                               ; preds = %.lr.ph
  %i.be = shl i64 %i.f, 3                         ; 3 uses
  %i.bf = getelementptr i8, ptr %i.h, i64 %i.be   ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bb, i64 %i.be
  %bound0 = icmp ult ptr %i.h, %i.bg
  %bound0.a = icmp ult ptr %i.bb, %i.bf
  %found.conflict = and i1 %bound0, %bound0.a
  %1 = getelementptr i8, ptr %i.bd, i64 %i.be
  %bound0144 = icmp ult ptr %i.h, %1
  %bound1145 = icmp ult ptr %i.bd, %i.bf
  %found.conflict146 = and i1 %bound0144, %bound1145
  %conflict.rdx = or i1 %found.conflict, %found.conflict146
  br i1 %conflict.rdx, label %scalar.ph141.preheader, label %vector.ph147

vector.ph147:                                     ; preds = %vector.memcheck143
  %n.vec148 = and i64 %i.f, -4                    ; 3 uses
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph147
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next157, %vector.body149 ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index150 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load151 = load <2 x double>, ptr %i.bh, align 8, !tbaa !35, !alias.scope !461
  %wide.load152 = load <2 x double>, ptr %i.bi, align 8, !tbaa !35, !alias.scope !461
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %index150 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load153 = load <2 x double>, ptr %i.bj, align 8, !tbaa !35, !alias.scope !462
  %wide.load154 = load <2 x double>, ptr %i.bk, align 8, !tbaa !35, !alias.scope !462
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index150 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %wide.load155 = load <2 x double>, ptr %i.bl, align 8, !tbaa !35, !alias.scope !463, !noalias !464
  %wide.load156 = load <2 x double>, ptr %i.bm, align 8, !tbaa !35, !alias.scope !463, !noalias !464
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load151, <2 x double> %wide.load153, <2 x double> %wide.load155)
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load152, <2 x double> %wide.load154, <2 x double> %wide.load156)
  store <2 x double> %i.bn, ptr %i.bl, align 8, !tbaa !35, !alias.scope !463, !noalias !464
  store <2 x double> %i.bo, ptr %i.bm, align 8, !tbaa !35, !alias.scope !463, !noalias !464
  %index.next157 = add nuw i64 %index150, 4       ; 2 uses
  %i.bp = icmp eq i64 %index.next157, %n.vec148
  br i1 %i.bp, label %middle.block158, label %vector.body149, !llvm.loop !429

middle.block158:                                  ; preds = %vector.body149
  %cmp.n159 = icmp eq i64 %i.f, %n.vec148
  br i1 %cmp.n159, label %.lr.ph97, label %scalar.ph141.preheader

scalar.ph141.preheader:                           ; preds = %vector.memcheck143, %.lr.ph, %middle.block158
  %.095.ph = phi i64 [ 0, %vector.memcheck143 ], [ 0, %.lr.ph ], [ %n.vec148, %middle.block158 ] ; 6 uses
  %.neg = or disjoint i64 %.095.ph, 1
  %xtraiter316 = and i64 %i.f, 1
  %lcmp.mod317.not = icmp eq i64 %xtraiter316, 0
  br i1 %lcmp.mod317.not, label %scalar.ph141.prol.loopexit, label %scalar.ph141.prol

scalar.ph141.prol:                                ; preds = %scalar.ph141.preheader
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.095.ph
  %i.br = load double, ptr %i.bq, align 8, !tbaa !35
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.095.ph
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !35
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.095.ph ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !35
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.br, double %i.bt, double %i.bv)
  store double %i.bw, ptr %i.bu, align 8, !tbaa !35
  %i.bx = or disjoint i64 %.095.ph, 1
  br label %scalar.ph141.prol.loopexit

scalar.ph141.prol.loopexit:                       ; preds = %scalar.ph141.prol, %scalar.ph141.preheader
  %.095.unr = phi i64 [ %.095.ph, %scalar.ph141.preheader ], [ %i.bx, %scalar.ph141.prol ]
  %i.by = icmp eq i64 %i.f, %.neg
  br i1 %i.by, label %.lr.ph97, label %scalar.ph141

.lr.ph97:                                         ; preds = %scalar.ph141.prol.loopexit, %scalar.ph141, %middle.block158
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !161 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !157 ; 6 uses
  %min.iters.check172 = icmp ult i64 %i.f, 8
  br i1 %min.iters.check172, label %scalar.ph171.preheader, label %vector.memcheck173

vector.memcheck173:                               ; preds = %.lr.ph97
  %i.cd = shl i64 %i.f, 3                         ; 3 uses
  %i.ce = getelementptr i8, ptr %i.h, i64 %i.cd   ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ca, i64 %i.cd
  %bound0174 = icmp ult ptr %i.h, %i.cf
  %bound0174.a = icmp ult ptr %i.ca, %i.ce
  %found.conflict176 = and i1 %bound0174, %bound0174.a
  %2 = getelementptr i8, ptr %i.cc, i64 %i.cd
  %bound0177 = icmp ult ptr %i.h, %2
  %bound1178 = icmp ult ptr %i.cc, %i.ce
  %found.conflict179 = and i1 %bound0177, %bound1178
  %conflict.rdx180 = or i1 %found.conflict176, %found.conflict179
  br i1 %conflict.rdx180, label %scalar.ph171.preheader, label %vector.ph181

vector.ph181:                                     ; preds = %vector.memcheck173
  %n.vec182 = and i64 %i.f, -4                    ; 3 uses
  br label %vector.body183

vector.body183:                                   ; preds = %vector.body183, %vector.ph181
  %index184 = phi i64 [ 0, %vector.ph181 ], [ %index.next191, %vector.body183 ] ; 4 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %index184 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load185 = load <2 x double>, ptr %i.cg, align 8, !tbaa !35, !alias.scope !465
  %wide.load186 = load <2 x double>, ptr %i.ch, align 8, !tbaa !35, !alias.scope !465
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %index184 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load187 = load <2 x double>, ptr %i.ci, align 8, !tbaa !35, !alias.scope !466
  %wide.load188 = load <2 x double>, ptr %i.cj, align 8, !tbaa !35, !alias.scope !466
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index184 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %wide.load189 = load <2 x double>, ptr %i.ck, align 8, !tbaa !35, !alias.scope !467, !noalias !468
  %wide.load190 = load <2 x double>, ptr %i.cl, align 8, !tbaa !35, !alias.scope !467, !noalias !468
  %i.cm = fneg <2 x double> %wide.load185
  %i.cn = fneg <2 x double> %wide.load186
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %wide.load187, <2 x double> %wide.load189)
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %wide.load188, <2 x double> %wide.load190)
  store <2 x double> %i.co, ptr %i.ck, align 8, !tbaa !35, !alias.scope !467, !noalias !468
  store <2 x double> %i.cp, ptr %i.cl, align 8, !tbaa !35, !alias.scope !467, !noalias !468
  %index.next191 = add nuw i64 %index184, 4       ; 2 uses
  %i.cq = icmp eq i64 %index.next191, %n.vec182
  br i1 %i.cq, label %middle.block192, label %vector.body183, !llvm.loop !434

middle.block192:                                  ; preds = %vector.body183
  %cmp.n193 = icmp eq i64 %i.f, %n.vec182
  br i1 %cmp.n193, label %.preheader93, label %scalar.ph171.preheader

scalar.ph171.preheader:                           ; preds = %vector.memcheck173, %.lr.ph97, %middle.block192
  %.196.ph = phi i64 [ 0, %vector.memcheck173 ], [ 0, %.lr.ph97 ], [ %n.vec182, %middle.block192 ] ; 6 uses
  %.neg340 = or disjoint i64 %.196.ph, 1
  %xtraiter319 = and i64 %i.f, 1
  %lcmp.mod320.not = icmp eq i64 %xtraiter319, 0
  br i1 %lcmp.mod320.not, label %scalar.ph171.prol.loopexit, label %scalar.ph171.prol

scalar.ph171.prol:                                ; preds = %scalar.ph171.preheader
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.196.ph
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !35
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.196.ph
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !35
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.196.ph ; 2 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !35
  %i.cx = fneg double %i.cs
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cu, double %i.cw)
  store double %i.cy, ptr %i.cv, align 8, !tbaa !35
  %i.cz = or disjoint i64 %.196.ph, 1
  br label %scalar.ph171.prol.loopexit

scalar.ph171.prol.loopexit:                       ; preds = %scalar.ph171.prol, %scalar.ph171.preheader
  %.196.unr = phi i64 [ %.196.ph, %scalar.ph171.preheader ], [ %i.cz, %scalar.ph171.prol ]
  %i.da = icmp eq i64 %i.f, %.neg340
  br i1 %i.da, label %.preheader93, label %scalar.ph171

scalar.ph141:                                     ; preds = %scalar.ph141.prol.loopexit, %scalar.ph141
  %.095 = phi i64 [ %i.dq, %scalar.ph141 ], [ %.095.unr, %scalar.ph141.prol.loopexit ] ; 5 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.095
  %i.dc = load double, ptr %i.db, align 8, !tbaa !35
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.095
  %i.de = load double, ptr %i.dd, align 8, !tbaa !35
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.095 ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !35
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.de, double %i.dg)
  store double %i.dh, ptr %i.df, align 8, !tbaa !35
  %i.di = add nuw nsw i64 %.095, 1                ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !35
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.di
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !35
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.di ; 2 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !35
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.dm, double %i.do)
  store double %i.dp, ptr %i.dn, align 8, !tbaa !35
  %i.dq = add nuw nsw i64 %.095, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dq, %i.f
  br i1 %exitcond.not.1, label %.lr.ph97, label %scalar.ph141, !llvm.loop !435

.preheader93:                                     ; preds = %scalar.ph171.prol.loopexit, %scalar.ph171, %middle.block192, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, %.preheader.i, %.preheader16.i
  %i.dr = phi i1 [ false, %.preheader.i ], [ false, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ], [ false, %.preheader16.i ], [ true, %middle.block192 ], [ true, %scalar.ph171 ], [ true, %scalar.ph171.prol.loopexit ]
  %i.ds = load i64, ptr %i.a, align 8, !tbaa !116 ; 20 uses
  %i.dt = icmp sgt i64 %i.ds, 0                   ; 2 uses
  br i1 %i.dt, label %.lr.ph99, label %.preheader92

.lr.ph99:                                         ; preds = %.preheader93
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !154 ; 8 uses
  %min.iters.check201 = icmp ult i64 %i.ds, 6
  br i1 %min.iters.check201, label %scalar.ph200.preheader, label %vector.memcheck202

vector.memcheck202:                               ; preds = %.lr.ph99
  %i.dw = shl i64 %i.ds, 3                        ; 2 uses
  %i.dx = getelementptr i8, ptr %i.h, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dv, i64 %i.dw
  %bound0203 = icmp ult ptr %i.h, %i.dy
  %bound1204 = icmp ult ptr %i.dv, %i.dx
  %found.conflict205 = and i1 %bound0203, %bound1204
  br i1 %found.conflict205, label %scalar.ph200.preheader, label %vector.ph206

vector.ph206:                                     ; preds = %vector.memcheck202
  %n.vec207 = and i64 %i.ds, 9223372036854775804  ; 3 uses
  br label %vector.body208

vector.body208:                                   ; preds = %vector.body208, %vector.ph206
  %index209 = phi i64 [ 0, %vector.ph206 ], [ %index.next214, %vector.body208 ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %index209 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %wide.load210 = load <2 x double>, ptr %i.dz, align 8, !tbaa !35, !alias.scope !469
  %wide.load211 = load <2 x double>, ptr %i.ea, align 8, !tbaa !35, !alias.scope !469
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index209 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %wide.load212 = load <2 x double>, ptr %i.eb, align 8, !tbaa !35, !alias.scope !470, !noalias !469
  %wide.load213 = load <2 x double>, ptr %i.ec, align 8, !tbaa !35, !alias.scope !470, !noalias !469
  %i.ed = fadd <2 x double> %wide.load210, %wide.load212
  %i.ee = fadd <2 x double> %wide.load211, %wide.load213
  store <2 x double> %i.ed, ptr %i.eb, align 8, !tbaa !35, !alias.scope !470, !noalias !469
  store <2 x double> %i.ee, ptr %i.ec, align 8, !tbaa !35, !alias.scope !470, !noalias !469
  %index.next214 = add nuw i64 %index209, 4       ; 2 uses
  %i.ef = icmp eq i64 %index.next214, %n.vec207
  br i1 %i.ef, label %middle.block215, label %vector.body208, !llvm.loop !439

middle.block215:                                  ; preds = %vector.body208
  %cmp.n216 = icmp eq i64 %i.ds, %n.vec207
  br i1 %cmp.n216, label %.preheader92, label %scalar.ph200.preheader

scalar.ph200.preheader:                           ; preds = %vector.memcheck202, %.lr.ph99, %middle.block215
  %.298.ph = phi i64 [ 0, %vector.memcheck202 ], [ 0, %.lr.ph99 ], [ %n.vec207, %middle.block215 ] ; 3 uses
  %xtraiter322 = and i64 %i.ds, 3                 ; 2 uses
  %lcmp.mod323.not = icmp eq i64 %xtraiter322, 0
  br i1 %lcmp.mod323.not, label %scalar.ph200.prol.loopexit, label %scalar.ph200.prol

scalar.ph200.prol:                                ; preds = %scalar.ph200.preheader, %scalar.ph200.prol
  %.298.prol = phi i64 [ %i.el, %scalar.ph200.prol ], [ %.298.ph, %scalar.ph200.preheader ] ; 3 uses
  %prol.iter324 = phi i64 [ %prol.iter324.next, %scalar.ph200.prol ], [ 0, %scalar.ph200.preheader ]
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.298.prol
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !35
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.298.prol ; 2 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !35
  %i.ek = fadd double %i.eh, %i.ej
  store double %i.ek, ptr %i.ei, align 8, !tbaa !35
  %i.el = add nuw nsw i64 %.298.prol, 1           ; 2 uses
  %prol.iter324.next = add i64 %prol.iter324, 1   ; 2 uses
  %prol.iter324.cmp.not = icmp eq i64 %prol.iter324.next, %xtraiter322
  br i1 %prol.iter324.cmp.not, label %scalar.ph200.prol.loopexit, label %scalar.ph200.prol, !llvm.loop !440

scalar.ph200.prol.loopexit:                       ; preds = %scalar.ph200.prol, %scalar.ph200.preheader
  %.298.unr = phi i64 [ %.298.ph, %scalar.ph200.preheader ], [ %i.el, %scalar.ph200.prol ]
  %i.em = sub nsw i64 %.298.ph, %i.ds
  %i.en = icmp ugt i64 %i.em, -4
  br i1 %i.en, label %.preheader92, label %scalar.ph200

scalar.ph171:                                     ; preds = %scalar.ph171.prol.loopexit, %scalar.ph171
  %.196 = phi i64 [ %i.ff, %scalar.ph171 ], [ %.196.unr, %scalar.ph171.prol.loopexit ] ; 5 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.196
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !35
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.196
  %i.er = load double, ptr %i.eq, align 8, !tbaa !35
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.196 ; 2 uses
  %i.et = load double, ptr %i.es, align 8, !tbaa !35
  %i.eu = fneg double %i.ep
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.eu, double %i.er, double %i.et)
  store double %i.ev, ptr %i.es, align 8, !tbaa !35
  %i.ew = add nuw nsw i64 %.196, 1                ; 3 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ew
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !35
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ew
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !35
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ew ; 2 uses
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !35
  %i.fd = fneg double %i.ey
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.fd, double %i.fa, double %i.fc)
  store double %i.fe, ptr %i.fb, align 8, !tbaa !35
  %i.ff = add nuw nsw i64 %.196, 2                ; 2 uses
  %exitcond112.not.1 = icmp eq i64 %i.ff, %i.f
  br i1 %exitcond112.not.1, label %.preheader93, label %scalar.ph171, !llvm.loop !441

.preheader92:                                     ; preds = %scalar.ph200.prol.loopexit, %scalar.ph200, %middle.block215, %.preheader93
  %i.fg = icmp slt i64 %i.ds, %i.f
  br i1 %i.fg, label %.lr.ph101, label %.preheader90

.lr.ph101:                                        ; preds = %.preheader92
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !151 ; 7 uses
  %i.fj = sub i64 %i.f, %i.ds                     ; 3 uses
  %min.iters.check221 = icmp ult i64 %i.fj, 8
  %i.fk = ptrtoaddr ptr %i.fi to i64
  %i.fl = sub i64 %i.i, %i.fk
  %diff.check223 = icmp ugt i64 %i.fl, -32
  %or.cond306 = select i1 %min.iters.check221, i1 true, i1 %diff.check223
  br i1 %or.cond306, label %scalar.ph220.preheader, label %vector.ph224

vector.ph224:                                     ; preds = %.lr.ph101
end_hunk_0
begin_hunk_1_@_ZN6casadi29casadi_ipqp_predictor_prepareIdEEvPNS_16casadi_ipqp_dataIT_EE:bb.a
  %.7108 = phi i64 [ %i.nl, %scalar.ph275 ], [ %.7108.unr, %scalar.ph275.prol.loopexit ] ; 6 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %.7108
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !35
  %i.mu = fneg double %i.mt
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %.7108
  store double %i.mu, ptr %i.mv, align 8, !tbaa !35
  %i.mw = add nuw nsw i64 %.7108, 1               ; 2 uses
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.mw
  %i.my = load double, ptr %i.mx, align 8, !tbaa !35
  %i.mz = fneg double %i.my
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %i.mw
  store double %i.mz, ptr %i.na, align 8, !tbaa !35
  %i.nb = add nuw nsw i64 %.7108, 2               ; 2 uses
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.nb
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !35
  %i.ne = fneg double %i.nd
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %i.nb
  store double %i.ne, ptr %i.nf, align 8, !tbaa !35
  %i.ng = add nuw nsw i64 %.7108, 3               ; 2 uses
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.ng
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !35
  %i.nj = fneg double %i.ni
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %i.ng
  store double %i.nj, ptr %i.nk, align 8, !tbaa !35
  %i.nl = add nuw nsw i64 %.7108, 4               ; 2 uses
  %exitcond119.not.3 = icmp eq i64 %i.nl, %i.f
  br i1 %exitcond119.not.3, label %.preheader, label %scalar.ph275, !llvm.loop !459

scalar.ph291:                                     ; preds = %scalar.ph291.prol.loopexit, %scalar.ph291
  %.8110 = phi i64 [ %i.ob, %scalar.ph291 ], [ %.8110.unr, %scalar.ph291.prol.loopexit ] ; 6 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.8110
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !35
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %.8110
  store double %i.nn, ptr %i.no, align 8, !tbaa !35
  %i.np = add nuw nsw i64 %.8110, 1               ; 2 uses
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.np
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !35
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %i.np
  store double %i.nr, ptr %i.ns, align 8, !tbaa !35
  %i.nt = add nuw nsw i64 %.8110, 2               ; 2 uses
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.nt
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !35
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %i.nt
  store double %i.nv, ptr %i.nw, align 8, !tbaa !35
  %i.nx = add nuw nsw i64 %.8110, 3               ; 2 uses
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.nx
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !35
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %i.nx
  store double %i.nz, ptr %i.oa, align 8, !tbaa !35
  %i.ob = add nuw nsw i64 %.8110, 4               ; 2 uses
  %exitcond120.not.3 = icmp eq i64 %i.ob, %i.ds
  br i1 %exitcond120.not.3, label %._crit_edge, label %scalar.ph291, !llvm.loop !460

._crit_edge:                                      ; preds = %scalar.ph291.prol.loopexit, %scalar.ph291, %middle.block302, %.preheader
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.h, ptr %i.oc, align 8, !tbaa !181
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi21casadi_ipqp_predictorIdEEvPNS_16casadi_ipqp_dataIT_EE(ptr noundef %0) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !143    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !118  ; 27 uses
  %i.d = icmp sgt i64 %i.c, 0                     ; 3 uses
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !159  ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !150  ; 8 uses
  %min.iters.check = icmp ult i64 %i.c, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.i = shl i64 %i.c, 3                          ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 %i.i
  %i.k = getelementptr i8, ptr %i.f, i64 %i.i
  %bound0 = icmp ult ptr %i.h, %i.k
  %bound1 = icmp ult ptr %i.f, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.c, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <2 x double>, ptr %i.l, align 8, !tbaa !35, !alias.scope !500
  %wide.load129 = load <2 x double>, ptr %i.m, align 8, !tbaa !35, !alias.scope !500
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %wide.load130 = load <2 x double>, ptr %i.n, align 8, !tbaa !35, !alias.scope !501, !noalias !500
  %wide.load131 = load <2 x double>, ptr %i.o, align 8, !tbaa !35, !alias.scope !501, !noalias !500
  %i.p = fmul <2 x double> %wide.load, %wide.load130
  %i.q = fmul <2 x double> %wide.load129, %wide.load131
  store <2 x double> %i.p, ptr %i.n, align 8, !tbaa !35, !alias.scope !501, !noalias !500
  store <2 x double> %i.q, ptr %i.o, align 8, !tbaa !35, !alias.scope !501, !noalias !500
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !476

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.088.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.c, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.088.prol = phi i64 [ %i.x, %scalar.ph.prol ], [ %.088.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.088.prol
  %i.t = load double, ptr %i.s, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.088.prol ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !35
  %i.w = fmul double %i.t, %i.v
  store double %i.w, ptr %i.u, align 8, !tbaa !35
  %i.x = add nuw nsw i64 %.088.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !477

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.088.unr = phi i64 [ %.088.ph, %scalar.ph.preheader ], [ %i.x, %scalar.ph.prol ]
  %i.y = sub nsw i64 %.088.ph, %i.c
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.088 = phi i64 [ %i.ax, %scalar.ph ], [ %.088.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.088
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !35
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.088 ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !35
  %i.ae = fmul double %i.ab, %i.ad
  store double %i.ae, ptr %i.ac, align 8, !tbaa !35
  %i.af = add nuw nsw i64 %.088, 1                ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.af ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !35
  %i.ak = fmul double %i.ah, %i.aj
  store double %i.ak, ptr %i.ai, align 8, !tbaa !35
  %i.al = add nuw nsw i64 %.088, 2                ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.al
  %i.an = load double, ptr %i.am, align 8, !tbaa !35
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.al ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !35
  %i.aq = fmul double %i.an, %i.ap
  store double %i.aq, ptr %i.ao, align 8, !tbaa !35
  %i.ar = add nuw nsw i64 %.088, 3                ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !35
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ar ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !35
  %i.aw = fmul double %i.at, %i.av
  store double %i.aw, ptr %i.au, align 8, !tbaa !35
  %i.ax = add nuw nsw i64 %.088, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ax, %i.c
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !478

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !116 ; 10 uses
  %i.az = icmp slt i64 %i.ay, %i.c
  br i1 %i.az, label %.lr.ph91, label %.preheader86

.lr.ph91:                                         ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !159
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  br label %bb.b

.preheader86:                                     ; preds = %bb.e, %._crit_edge
  br i1 %i.d, label %.lr.ph93, label %.preheader

.lr.ph93:                                         ; preds = %.preheader86
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !148 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !150 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !152 ; 8 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !160 ; 6 uses
  %min.iters.check147 = icmp ult i64 %i.c, 8
  br i1 %min.iters.check147, label %scalar.ph146.preheader, label %vector.memcheck148

vector.memcheck148:                               ; preds = %.lr.ph93
  %i.bn = shl i64 %i.c, 3                         ; 4 uses
  %i.bo = getelementptr i8, ptr %i.bk, i64 %i.bn  ; 3 uses
  %i.bp = getelementptr i8, ptr %i.bg, i64 %i.bn
  %bound0149 = icmp ult ptr %i.bk, %i.bp
  %bound0149.a = icmp ult ptr %i.bg, %i.bo
  %found.conflict151 = and i1 %bound0149, %bound0149.a
  %1 = getelementptr i8, ptr %i.bi, i64 %i.bn
  %bound0152 = icmp ult ptr %i.bk, %1
  %bound1153 = icmp ult ptr %i.bi, %i.bo
  %found.conflict154 = and i1 %bound0152, %bound1153
  %conflict.rdx = or i1 %found.conflict151, %found.conflict154
  %2 = getelementptr i8, ptr %i.bm, i64 %i.bn
  %bound0155 = icmp ult ptr %i.bk, %2
  %bound1156 = icmp ult ptr %i.bm, %i.bo
  %found.conflict157 = and i1 %bound0155, %bound1156
  %conflict.rdx158 = or i1 %conflict.rdx, %found.conflict157
  br i1 %conflict.rdx158, label %scalar.ph146.preheader, label %vector.ph159

vector.ph159:                                     ; preds = %vector.memcheck148
  %n.vec160 = and i64 %i.c, 9223372036854775806   ; 3 uses
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph159
  %index162 = phi i64 [ 0, %vector.ph159 ], [ %index.next167, %vector.body161 ] ; 5 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %index162
  %wide.load163 = load <2 x double>, ptr %i.bq, align 8, !tbaa !35, !alias.scope !502
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %index162
  %wide.load164 = load <2 x double>, ptr %i.br, align 8, !tbaa !35, !alias.scope !503
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %index162 ; 3 uses
  %wide.load165 = load <2 x double>, ptr %i.bs, align 8, !tbaa !35, !alias.scope !504, !noalias !505
  %i.bt = fneg <2 x double> %wide.load163
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %wide.load164, <2 x double> %wide.load165) ; 2 uses
  store <2 x double> %i.bu, ptr %i.bs, align 8, !tbaa !35, !alias.scope !504, !noalias !505
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %index162
  %wide.load166 = load <2 x double>, ptr %i.bv, align 8, !tbaa !35, !alias.scope !506
  %i.bw = fmul <2 x double> %i.bu, %wide.load166
  store <2 x double> %i.bw, ptr %i.bs, align 8, !tbaa !35, !alias.scope !504, !noalias !505
  %index.next167 = add nuw i64 %index162, 2       ; 2 uses
  %i.bx = icmp eq i64 %index.next167, %n.vec160
  br i1 %i.bx, label %middle.block168, label %vector.body161, !llvm.loop !484

middle.block168:                                  ; preds = %vector.body161
  %cmp.n169 = icmp eq i64 %i.c, %n.vec160
  br i1 %cmp.n169, label %.lr.ph95, label %scalar.ph146.preheader

scalar.ph146.preheader:                           ; preds = %vector.memcheck148, %.lr.ph93, %middle.block168
  %.292.ph = phi i64 [ 0, %vector.memcheck148 ], [ 0, %.lr.ph93 ], [ %n.vec160, %middle.block168 ] ; 7 uses
  %.neg = or disjoint i64 %.292.ph, 1
  %xtraiter246 = and i64 %i.c, 1
  %lcmp.mod247.not = icmp eq i64 %xtraiter246, 0
  br i1 %lcmp.mod247.not, label %scalar.ph146.prol.loopexit, label %scalar.ph146.prol

scalar.ph146.prol:                                ; preds = %scalar.ph146.preheader
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.292.ph
  %i.bz = load double, ptr %i.by, align 8, !tbaa !35
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.292.ph
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !35
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.292.ph ; 3 uses
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !35
  %i.ce = fneg double %i.bz
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.cb, double %i.cd) ; 2 uses
  store double %i.cf, ptr %i.cc, align 8, !tbaa !35
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.292.ph
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !35
  %i.ci = fmul double %i.cf, %i.ch
  store double %i.ci, ptr %i.cc, align 8, !tbaa !35
  %i.cj = or disjoint i64 %.292.ph, 1
  br label %scalar.ph146.prol.loopexit

scalar.ph146.prol.loopexit:                       ; preds = %scalar.ph146.prol, %scalar.ph146.preheader
  %.292.unr = phi i64 [ %.292.ph, %scalar.ph146.preheader ], [ %i.cj, %scalar.ph146.prol ]
  %i.ck = icmp eq i64 %i.c, %.neg
  br i1 %i.ck, label %.lr.ph95, label %scalar.ph146

bb.b:                                             ; preds = %.lr.ph91, %bb.e
  %.189 = phi i64 [ %i.ay, %.lr.ph91 ], [ %i.df, %bb.e ] ; 7 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %.189
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !35 ; 3 uses
  %i.cn = fcmp oeq double %i.cm, 0.000000e+00
  br i1 %i.cn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.co = load ptr, ptr %i.bd, align 8, !tbaa !150
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.co, i64 %.189
  store double 0.000000e+00, ptr %i.cp, align 8, !tbaa !35
  %i.cq = load ptr, ptr %i.be, align 8, !tbaa !151
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %.189
  store double 0.000000e+00, ptr %i.cr, align 8, !tbaa !35
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.cs = load ptr, ptr %i.bc, align 8, !tbaa !158
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %.189
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !35
  %i.cv = fmul double %i.cm, %i.cm
  %i.cw = fdiv double %i.cu, %i.cv
  %i.cx = load ptr, ptr %i.bd, align 8, !tbaa !150
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %.189 ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !35 ; 2 uses
  %i.da = load ptr, ptr %i.be, align 8, !tbaa !151
  %i.db = getelementptr inbounds [8 x i8], ptr %i.da, i64 %.189 ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !35
  %i.dd = fsub double %i.cz, %i.dc
  %i.de = fmul double %i.cw, %i.dd
  store double %i.cz, ptr %i.db, align 8, !tbaa !35
  store double %i.de, ptr %i.cy, align 8, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.df = add nsw i64 %.189, 1                    ; 2 uses
  %exitcond99.not = icmp eq i64 %i.df, %i.c
  br i1 %exitcond99.not, label %.preheader86, label %bb.b, !llvm.loop !485

.lr.ph95:                                         ; preds = %scalar.ph146.prol.loopexit, %scalar.ph146, %middle.block168
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !149 ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !150 ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !153 ; 8 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !161 ; 6 uses
  %min.iters.check187 = icmp ult i64 %i.c, 10
  br i1 %min.iters.check187, label %scalar.ph186.preheader, label %vector.memcheck188

vector.memcheck188:                               ; preds = %.lr.ph95
  %i.do = shl i64 %i.c, 3                         ; 4 uses
  %i.dp = getelementptr i8, ptr %i.dl, i64 %i.do  ; 3 uses
  %i.dq = getelementptr i8, ptr %i.dh, i64 %i.do
  %bound0189 = icmp ult ptr %i.dl, %i.dq
  %bound0189.a = icmp ult ptr %i.dh, %i.dp
  %found.conflict191 = and i1 %bound0189, %bound0189.a
  %3 = getelementptr i8, ptr %i.dj, i64 %i.do
  %bound0192 = icmp ult ptr %i.dl, %3
  %bound1193 = icmp ult ptr %i.dj, %i.dp
  %found.conflict194 = and i1 %bound0192, %bound1193
  %conflict.rdx195 = or i1 %found.conflict191, %found.conflict194
  %4 = getelementptr i8, ptr %i.dn, i64 %i.do
  %bound0196 = icmp ult ptr %i.dl, %4
  %bound1197 = icmp ult ptr %i.dn, %i.dp
  %found.conflict198 = and i1 %bound0196, %bound1197
  %conflict.rdx199 = or i1 %conflict.rdx195, %found.conflict198
  br i1 %conflict.rdx199, label %scalar.ph186.preheader, label %vector.ph200

vector.ph200:                                     ; preds = %vector.memcheck188
  %n.vec201 = and i64 %i.c, 9223372036854775806   ; 3 uses
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph200
  %index203 = phi i64 [ 0, %vector.ph200 ], [ %index.next208, %vector.body202 ] ; 5 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %index203
  %wide.load204 = load <2 x double>, ptr %i.dr, align 8, !tbaa !35, !alias.scope !507
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %index203
  %wide.load205 = load <2 x double>, ptr %i.ds, align 8, !tbaa !35, !alias.scope !508
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %index203 ; 3 uses
  %wide.load206 = load <2 x double>, ptr %i.dt, align 8, !tbaa !35, !alias.scope !509, !noalias !510
  %i.du = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load204, <2 x double> %wide.load205, <2 x double> %wide.load206) ; 2 uses
  store <2 x double> %i.du, ptr %i.dt, align 8, !tbaa !35, !alias.scope !509, !noalias !510
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %index203
  %wide.load207 = load <2 x double>, ptr %i.dv, align 8, !tbaa !35, !alias.scope !511
  %i.dw = fmul <2 x double> %i.du, %wide.load207
  store <2 x double> %i.dw, ptr %i.dt, align 8, !tbaa !35, !alias.scope !509, !noalias !510
  %index.next208 = add nuw i64 %index203, 2       ; 2 uses
  %i.dx = icmp eq i64 %index.next208, %n.vec201
  br i1 %i.dx, label %middle.block209, label %vector.body202, !llvm.loop !491

middle.block209:                                  ; preds = %vector.body202
  %cmp.n210 = icmp eq i64 %i.c, %n.vec201
  br i1 %cmp.n210, label %.preheader, label %scalar.ph186.preheader

scalar.ph186.preheader:                           ; preds = %vector.memcheck188, %.lr.ph95, %middle.block209
  %.394.ph = phi i64 [ 0, %vector.memcheck188 ], [ 0, %.lr.ph95 ], [ %n.vec201, %middle.block209 ] ; 7 uses
  %.neg255 = or disjoint i64 %.394.ph, 1
  %xtraiter249 = and i64 %i.c, 1
  %lcmp.mod250.not = icmp eq i64 %xtraiter249, 0
  br i1 %lcmp.mod250.not, label %scalar.ph186.prol.loopexit, label %scalar.ph186.prol

scalar.ph186.prol:                                ; preds = %scalar.ph186.preheader
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.394.ph
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !35
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.394.ph
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !35
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.394.ph ; 3 uses
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !35
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.eb, double %i.ed) ; 2 uses
  store double %i.ee, ptr %i.ec, align 8, !tbaa !35
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.394.ph
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !35
  %i.eh = fmul double %i.ee, %i.eg
  store double %i.eh, ptr %i.ec, align 8, !tbaa !35
  %i.ei = or disjoint i64 %.394.ph, 1
  br label %scalar.ph186.prol.loopexit

scalar.ph186.prol.loopexit:                       ; preds = %scalar.ph186.prol, %scalar.ph186.preheader
  %.394.unr = phi i64 [ %.394.ph, %scalar.ph186.preheader ], [ %i.ei, %scalar.ph186.prol ]
  %i.ej = icmp eq i64 %i.c, %.neg255
  br i1 %i.ej, label %.preheader, label %scalar.ph186

scalar.ph146:                                     ; preds = %scalar.ph146.prol.loopexit, %scalar.ph146
  %.292 = phi i64 [ %i.fh, %scalar.ph146 ], [ %.292.unr, %scalar.ph146.prol.loopexit ] ; 6 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.292
  %i.el = load double, ptr %i.ek, align 8, !tbaa !35
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.292
  %i.en = load double, ptr %i.em, align 8, !tbaa !35
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.292 ; 3 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !35
  %i.eq = fneg double %i.el
  %i.er = tail call double @llvm.fmuladd.f64(double %i.eq, double %i.en, double %i.ep) ; 2 uses
  store double %i.er, ptr %i.eo, align 8, !tbaa !35
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.292
  %i.et = load double, ptr %i.es, align 8, !tbaa !35
  %i.eu = fmul double %i.er, %i.et
  store double %i.eu, ptr %i.eo, align 8, !tbaa !35
  %i.ev = add nuw nsw i64 %.292, 1                ; 4 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.ev
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !35
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ev
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !35
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.ev ; 3 uses
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !35
  %i.fc = fneg double %i.ex
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.ez, double %i.fb) ; 2 uses
  store double %i.fd, ptr %i.fa, align 8, !tbaa !35
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.ev
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !35
  %i.fg = fmul double %i.fd, %i.ff
  store double %i.fg, ptr %i.fa, align 8, !tbaa !35
  %i.fh = add nuw nsw i64 %.292, 2                ; 2 uses
  %exitcond100.not.1 = icmp eq i64 %i.fh, %i.c
  br i1 %exitcond100.not.1, label %.lr.ph95, label %scalar.ph146, !llvm.loop !492

.preheader:                                       ; preds = %scalar.ph186.prol.loopexit, %scalar.ph186, %middle.block209, %.preheader86
  %i.fi = icmp sgt i64 %i.ay, 0
  br i1 %i.fi, label %.lr.ph97, label %._crit_edge98

.lr.ph97:                                         ; preds = %.preheader
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !153 ; 6 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !152 ; 6 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !151 ; 7 uses
  %min.iters.check223 = icmp ult i64 %i.ay, 8
  br i1 %min.iters.check223, label %scalar.ph222.preheader, label %vector.memcheck224

vector.memcheck224:                               ; preds = %.lr.ph97
  %i.fp = shl i64 %i.ay, 3                        ; 3 uses
  %i.fq = getelementptr i8, ptr %i.fo, i64 %i.fp  ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fk, i64 %i.fp
  %bound0225 = icmp ult ptr %i.fo, %i.fr
  %bound0225.a = icmp ult ptr %i.fk, %i.fq
  %found.conflict227 = and i1 %bound0225, %bound0225.a
  %5 = getelementptr i8, ptr %i.fm, i64 %i.fp
  %bound0228 = icmp ult ptr %i.fo, %5
  %bound1229 = icmp ult ptr %i.fm, %i.fq
  %found.conflict230 = and i1 %bound0228, %bound1229
  %conflict.rdx231 = or i1 %found.conflict227, %found.conflict230
  br i1 %conflict.rdx231, label %scalar.ph222.preheader, label %vector.ph232

vector.ph232:                                     ; preds = %vector.memcheck224
  %n.vec233 = and i64 %i.ay, 9223372036854775804  ; 3 uses
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body234, %vector.ph232
  %index235 = phi i64 [ 0, %vector.ph232 ], [ %index.next242, %vector.body234 ] ; 4 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %index235 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %wide.load236 = load <2 x double>, ptr %i.fs, align 8, !tbaa !35, !alias.scope !512
  %wide.load237 = load <2 x double>, ptr %i.ft, align 8, !tbaa !35, !alias.scope !512
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %index235 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %wide.load238 = load <2 x double>, ptr %i.fu, align 8, !tbaa !35, !alias.scope !513
  %wide.load239 = load <2 x double>, ptr %i.fv, align 8, !tbaa !35, !alias.scope !513
  %i.fw = fsub <2 x double> %wide.load236, %wide.load238
  %i.fx = fsub <2 x double> %wide.load237, %wide.load239
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %index235 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %wide.load240 = load <2 x double>, ptr %i.fy, align 8, !tbaa !35, !alias.scope !514, !noalias !515
  %wide.load241 = load <2 x double>, ptr %i.fz, align 8, !tbaa !35, !alias.scope !514, !noalias !515
  %i.ga = fadd <2 x double> %i.fw, %wide.load240
  %i.gb = fadd <2 x double> %i.fx, %wide.load241
  store <2 x double> %i.ga, ptr %i.fy, align 8, !tbaa !35, !alias.scope !514, !noalias !515
  store <2 x double> %i.gb, ptr %i.fz, align 8, !tbaa !35, !alias.scope !514, !noalias !515
  %index.next242 = add nuw i64 %index235, 4       ; 2 uses
  %i.gc = icmp eq i64 %index.next242, %n.vec233
  br i1 %i.gc, label %middle.block243, label %vector.body234, !llvm.loop !497

middle.block243:                                  ; preds = %vector.body234
  %cmp.n244 = icmp eq i64 %i.ay, %n.vec233
  br i1 %cmp.n244, label %._crit_edge98, label %scalar.ph222.preheader

scalar.ph222.preheader:                           ; preds = %vector.memcheck224, %.lr.ph97, %middle.block243
  %.496.ph = phi i64 [ 0, %vector.memcheck224 ], [ 0, %.lr.ph97 ], [ %n.vec233, %middle.block243 ] ; 6 uses
  %.neg256 = or disjoint i64 %.496.ph, 1
  %xtraiter252 = and i64 %i.ay, 1
  %lcmp.mod253.not = icmp eq i64 %xtraiter252, 0
  br i1 %lcmp.mod253.not, label %scalar.ph222.prol.loopexit, label %scalar.ph222.prol

scalar.ph222.prol:                                ; preds = %scalar.ph222.preheader
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %.496.ph
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !35
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %.496.ph
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !35
  %i.gh = fsub double %i.ge, %i.gg
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %.496.ph ; 2 uses
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !35
  %i.gk = fadd double %i.gh, %i.gj
  store double %i.gk, ptr %i.gi, align 8, !tbaa !35
  %i.gl = or disjoint i64 %.496.ph, 1
  br label %scalar.ph222.prol.loopexit

scalar.ph222.prol.loopexit:                       ; preds = %scalar.ph222.prol, %scalar.ph222.preheader
  %.496.unr = phi i64 [ %.496.ph, %scalar.ph222.preheader ], [ %i.gl, %scalar.ph222.prol ]
  %i.gm = icmp eq i64 %i.ay, %.neg256
  br i1 %i.gm, label %._crit_edge98, label %scalar.ph222

scalar.ph186:                                     ; preds = %scalar.ph186.prol.loopexit, %scalar.ph186
  %.394 = phi i64 [ %i.hi, %scalar.ph186 ], [ %.394.unr, %scalar.ph186.prol.loopexit ] ; 6 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.394
  %i.go = load double, ptr %i.gn, align 8, !tbaa !35
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.394
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !35
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.394 ; 3 uses
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !35
  %i.gt = tail call double @llvm.fmuladd.f64(double %i.go, double %i.gq, double %i.gs) ; 2 uses
  store double %i.gt, ptr %i.gr, align 8, !tbaa !35
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.394
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !35
  %i.gw = fmul double %i.gt, %i.gv
  store double %i.gw, ptr %i.gr, align 8, !tbaa !35
  %i.gx = add nuw nsw i64 %.394, 1                ; 4 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.gx
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !35
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.gx
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !35
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.gx ; 3 uses
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !35
  %i.he = tail call double @llvm.fmuladd.f64(double %i.gz, double %i.hb, double %i.hd) ; 2 uses
  store double %i.he, ptr %i.hc, align 8, !tbaa !35
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.gx
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !35
  %i.hh = fmul double %i.he, %i.hg
  store double %i.hh, ptr %i.hc, align 8, !tbaa !35
  %i.hi = add nuw nsw i64 %.394, 2                ; 2 uses
  %exitcond101.not.1 = icmp eq i64 %i.hi, %i.c
  br i1 %exitcond101.not.1, label %.preheader, label %scalar.ph186, !llvm.loop !498

scalar.ph222:                                     ; preds = %scalar.ph222.prol.loopexit, %scalar.ph222
  %.496 = phi i64 [ %i.ia, %scalar.ph222 ], [ %.496.unr, %scalar.ph222.prol.loopexit ] ; 5 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %.496
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !35
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %.496
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !35
  %i.hn = fsub double %i.hk, %i.hm
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %.496 ; 2 uses
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !35
  %i.hq = fadd double %i.hn, %i.hp
  store double %i.hq, ptr %i.ho, align 8, !tbaa !35
  %i.hr = add nuw nsw i64 %.496, 1                ; 3 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.hr
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !35
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.hr
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !35
  %i.hw = fsub double %i.ht, %i.hv
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.hr ; 2 uses
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !35
  %i.hz = fadd double %i.hw, %i.hy
  store double %i.hz, ptr %i.hx, align 8, !tbaa !35
  %i.ia = add nuw nsw i64 %.496, 2                ; 2 uses
  %exitcond102.not.1 = icmp eq i64 %i.ia, %i.ay
  br i1 %exitcond102.not.1, label %._crit_edge98, label %scalar.ph222, !llvm.loop !499

._crit_edge98:                                    ; preds = %scalar.ph222.prol.loopexit, %scalar.ph222, %middle.block243, %.preheader
  br i1 %i.d, label %.lr.ph.i, label %_ZN6casadi19casadi_ipqp_maxstepIdEEiPNS_16casadi_ipqp_dataIT_EEPS2_Px.exit.thread

.lr.ph.i:                                         ; preds = %._crit_edge98
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !150 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  br label %bb.f

.preheader.i:                                     ; preds = %bb.m
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !152 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !153 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  br label %bb.n

bb.f:                                             ; preds = %bb.m, %.lr.ph.i
  %.077 = phi double [ 1.000000e+00, %.lr.ph.i ], [ %.279, %bb.m ] ; 3 uses
  %i.in = phi double [ 1.000000e+00, %.lr.ph.i ], [ %i.js, %bb.m ] ; 3 uses
  %i.io = phi double [ 1.000000e+00, %.lr.ph.i ], [ %i.jt, %bb.m ] ; 4 uses
  %.06780.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ju, %bb.m ] ; 6 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %.06780.i
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !35 ; 4 uses
  %i.ir = fcmp olt double %i.iq, 0.000000e+00
  br i1 %i.ir, label %bb.g, label %thread-pre-split.i

bb.g:                                             ; preds = %bb.f
  %i.is = load ptr, ptr %i.id, align 8, !tbaa !144
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %.06780.i
  %i.iu = load double, ptr %i.it, align 8, !tbaa !35 ; 2 uses
  %i.iv = load double, ptr %i.ie, align 8, !tbaa !228
  %i.iw = fneg double %i.iv
  %i.ix = fcmp ogt double %i.iu, %i.iw
  br i1 %i.ix, label %bb.h, label %thread-pre-split.i

bb.h:                                             ; preds = %bb.g
  %i.iy = load ptr, ptr %i.if, align 8, !tbaa !146
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.06780.i
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !35
  %i.jb = fsub double %i.iu, %i.ja
  %i.jc = fdiv double %i.jb, %i.iq                ; 4 uses
  %i.jd = fcmp olt double %i.jc, %i.io
  br i1 %i.jd, label %bb.i, label %thread-pre-split.i

bb.i:                                             ; preds = %bb.h
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.178 = phi double [ %i.jc, %bb.i ], [ %.077, %bb.h ], [ %.077, %bb.g ], [ %.077, %bb.f ] ; 3 uses
  %i.je = phi double [ %i.jc, %bb.i ], [ %i.in, %bb.h ], [ %i.in, %bb.g ], [ %i.in, %bb.f ] ; 5 uses
  %i.jf = phi double [ %i.jc, %bb.i ], [ %i.io, %bb.h ], [ %i.io, %bb.g ], [ %i.io, %bb.f ] ; 2 uses
  %i.jg = fcmp ogt double %i.iq, 0.000000e+00
  br i1 %i.jg, label %bb.j, label %bb.m

bb.j:                                             ; preds = %thread-pre-split.i
  %i.jh = load ptr, ptr %i.ig, align 8, !tbaa !145
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %.06780.i
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !35 ; 2 uses
  %i.jk = load double, ptr %i.ie, align 8, !tbaa !228
  %i.jl = fcmp olt double %i.jj, %i.jk
  br i1 %i.jl, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.jm = load ptr, ptr %i.if, align 8, !tbaa !146
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %.06780.i
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !35
  %i.jp = fsub double %i.jj, %i.jo
  %i.jq = fdiv double %i.jp, %i.iq                ; 4 uses
  %i.jr = fcmp olt double %i.jq, %i.je
  br i1 %i.jr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %thread-pre-split.i
  %.279 = phi double [ %i.jq, %bb.l ], [ %.178, %bb.k ], [ %.178, %bb.j ], [ %.178, %thread-pre-split.i ] ; 2 uses
end_hunk_1
