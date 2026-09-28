Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/sample_strategy?download=true
inline.NumInlined: 841
inline.NumDeleted: 415
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8LightGBM12GOSSStrategy6HelperEiiPiPfS2_:bb.a
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ct
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !159
  %i.cy = fmul float %i.cv, %i.cx
  %i.cz = call noundef float @llvm.fabs.f32(float %i.cy)
  %i.da = fadd float %.074103, %i.cz
  %indvars.iv.next125 = or disjoint i64 %indvars.iv124, 1
  %i.db = mul nsw i64 %indvars.iv.next125, %i.cg
  %i.dc = add nsw i64 %i.db, %i.cc                ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.dc
  %i.de = load float, ptr %i.dd, align 4, !tbaa !159
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.dc
  %i.dg = load float, ptr %i.df, align 4, !tbaa !159
  %i.dh = fmul float %i.de, %i.dg
  %i.di = call noundef float @llvm.fabs.f32(float %i.dh)
  %i.dj = fadd float %i.da, %i.di                 ; 3 uses
  %indvars.iv.next125.1 = add nuw nsw i64 %indvars.iv124, 2 ; 2 uses
  %niter160.next.1 = add i64 %niter160, 2         ; 2 uses
  %niter160.ncmp.1 = icmp eq i64 %niter160.next.1, %unroll_iter159
  br i1 %niter160.ncmp.1, label %._crit_edge106.loopexit.unr-lcssa, label %bb.e, !llvm.loop !197

bb.f:                                             ; preds = %._crit_edge106
  %i.dk = add nsw i32 %.080110, 1
  %i.dl = sext i32 %.080110 to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dl
  %i.dn = trunc nsw i64 %i.cc to i32
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !143
  %i.do = add nsw i32 %.076112, 1
  br label %.loopexit

bb.g:                                             ; preds = %._crit_edge106
  %i.dp = load i32, ptr %i.bs, align 4, !tbaa !49
  %i.dq = trunc nsw i64 %i.cc to i32              ; 3 uses
  %i.dr = sdiv i32 %i.dq, %i.dp
  %i.ds = sext i32 %i.dr to i64
  %i.dt = load ptr, ptr %i.br, align 8, !tbaa !50
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.ds ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !142
  %i.dw = mul i32 %i.dv, 214013
  %i.dx = add i32 %i.dw, 2531011                  ; 2 uses
  store i32 %i.dx, ptr %i.du, align 4, !tbaa !142
  %i.dy = lshr i32 %i.dx, 16
  %i.dz = and i32 %i.dy, 32767
  %i.ea = uitofp nneg i32 %i.dz to float
  %i.eb = fmul nnan float %i.ea, f0x38000000
  %.neg = sub i32 %i.ac, %.080110
  %i.ec = add i32 %.neg, %.076112
  %i.ed = sitofp i32 %i.ec to double
  %i.ee = add i32 %2, %.076112
  %i.ef = trunc i64 %indvars.iv134 to i32
  %i.eg = add i32 %.sroa.speculated, %i.ef
  %i.eh = sub i32 %i.ee, %i.eg
  %i.ei = sitofp i32 %i.eh to double
  %i.ej = fdiv double %i.ed, %i.ei
  %i.ek = fpext float %i.eb to double
  %i.el = fcmp ogt double %i.ej, %i.ek
  br i1 %i.el, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.em = add nsw i32 %.080110, 1                 ; 4 uses
  %i.en = sext i32 %.080110 to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %3, i64 %i.en
  store i32 %i.dq, ptr %i.eo, align 4, !tbaa !143
  %i.ep = load i32, ptr %i.bp, align 8, !tbaa !56 ; 3 uses
  %i.eq = icmp sgt i32 %i.ep, 0
  br i1 %i.eq, label %.lr.ph109, label %.loopexit

.lr.ph109:                                        ; preds = %bb.h
  %i.er = load i32, ptr %i.bq, align 4, !tbaa !97 ; 2 uses
  %i.es = sext i32 %i.er to i64                   ; 3 uses
  %wide.trip.count132 = zext nneg i32 %i.ep to i64 ; 6 uses
  %min.iters.check = icmp ugt i32 %i.ep, 3
  %ident.check.not = icmp eq i32 %i.er, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph109
  %i.et = shl nuw nsw i64 %wide.trip.count132, 2  ; 2 uses
  %scevgep147 = getelementptr i8, ptr %scevgep, i64 %i.et
  %scevgep149 = getelementptr i8, ptr %scevgep148, i64 %i.et
  %bound0 = icmp ult ptr %scevgep, %scevgep149
  %bound1 = icmp ult ptr %scevgep148, %scevgep147
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count132, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eu = add nsw i64 %index, %i.cc               ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.eu ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ev, align 4, !tbaa !159, !alias.scope !206, !noalias !207
  %i.ew = fmul <4 x float> %broadcast.splat, %wide.load
  store <4 x float> %i.ew, ptr %i.ev, align 4, !tbaa !159, !alias.scope !206, !noalias !207
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.eu ; 2 uses
  %wide.load150 = load <4 x float>, ptr %i.ex, align 4, !tbaa !159, !alias.scope !207
  %i.ey = fmul <4 x float> %broadcast.splat, %wide.load150
  store <4 x float> %i.ey, ptr %i.ex, align 4, !tbaa !159, !alias.scope !207
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %middle.block, label %vector.body, !llvm.loop !201

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count132
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph109, %middle.block
  %indvars.iv129.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph109 ], [ %n.vec, %middle.block ] ; 4 uses
  %xtraiter161 = and i64 %wide.trip.count132, 1
  %lcmp.mod162.not = icmp eq i64 %xtraiter161, 0
  br i1 %lcmp.mod162.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.fa = mul nsw i64 %indvars.iv129.ph, %i.es
  %i.fb = add nsw i64 %i.fa, %i.cc                ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.fb ; 2 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !159
  %i.fe = fmul float %i.bo, %i.fd
  store float %i.fe, ptr %i.fc, align 4, !tbaa !159
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.fb ; 2 uses
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !159
  %i.fh = fmul float %i.bo, %i.fg
  store float %i.fh, ptr %i.ff, align 4, !tbaa !159
  %indvars.iv.next130.prol = or disjoint i64 %indvars.iv129.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv129.unr = phi i64 [ %indvars.iv129.ph, %scalar.ph.preheader ], [ %indvars.iv.next130.prol, %scalar.ph.prol ]
  %i.fi = add nsw i64 %wide.trip.count132, -1
  %i.fj = icmp eq i64 %indvars.iv129.ph, %i.fi
  br i1 %i.fj, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv129 = phi i64 [ %indvars.iv.next130.1, %scalar.ph ], [ %indvars.iv129.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.fk = mul nsw i64 %indvars.iv129, %i.es
  %i.fl = add nsw i64 %i.fk, %i.cc                ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.fl ; 2 uses
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !159
  %i.fo = fmul float %i.bo, %i.fn
  store float %i.fo, ptr %i.fm, align 4, !tbaa !159
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.fl ; 2 uses
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !159
  %i.fr = fmul float %i.bo, %i.fq
  store float %i.fr, ptr %i.fp, align 4, !tbaa !159
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  %i.fs = mul nsw i64 %indvars.iv.next130, %i.es
  %i.ft = add nsw i64 %i.fs, %i.cc                ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ft ; 2 uses
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !159
  %i.fw = fmul float %i.bo, %i.fv
  store float %i.fw, ptr %i.fu, align 4, !tbaa !159
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ft ; 2 uses
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !159
  %i.fz = fmul float %i.bo, %i.fy
  store float %i.fz, ptr %i.fx, align 4, !tbaa !159
  %indvars.iv.next130.1 = add nuw nsw i64 %indvars.iv129, 2 ; 2 uses
  %exitcond133.not.1 = icmp eq i64 %indvars.iv.next130.1, %wide.trip.count132
  br i1 %exitcond133.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !202

bb.i:                                             ; preds = %bb.g
  %i.ga = add nsw i32 %.078111, -1                ; 2 uses
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [4 x i8], ptr %3, i64 %i.gb
  store i32 %i.dq, ptr %i.gc, align 4, !tbaa !143
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.h, %bb.i, %bb.f
  %.282 = phi i32 [ %i.dk, %bb.f ], [ %.080110, %bb.i ], [ %i.em, %bb.h ], [ %i.em, %middle.block ], [ %i.em, %scalar.ph ], [ %i.em, %scalar.ph.prol.loopexit ] ; 2 uses
  %.2 = phi i32 [ %.078111, %bb.f ], [ %i.ga, %bb.i ], [ %.078111, %bb.h ], [ %.078111, %middle.block ], [ %.078111, %scalar.ph ], [ %.078111, %scalar.ph.prol.loopexit ]
  %.177 = phi i32 [ %i.do, %bb.f ], [ %.076112, %bb.i ], [ %.076112, %bb.h ], [ %.076112, %middle.block ], [ %.076112, %scalar.ph ], [ %.076112, %scalar.ph.prol.loopexit ]
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count137
  br i1 %exitcond138.not, label %._crit_edge116, label %bb.d, !llvm.loop !203

bb.j:                                             ; preds = %bb.c
  %i.gd = load ptr, ptr %i.f, align 8, !tbaa !204
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = ptrtoint ptr %i.bz to i64
  %i.gg = sub i64 %i.ge, %i.gf
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.gg) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit92

_ZNSt6vectorIfSaIfEED2Ev.exit92:                  ; preds = %bb.j, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  resume { ptr, i32 } %i.by

bb.k:                                             ; preds = %bb.a, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %.0 = phi i32 [ %.282, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN8LightGBM9ArrayArgsIfE9ArgMaxAtKEPSt6vectorIfSaIfEEiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = add nsw i32 %2, -1                       ; 2 uses
  %.not44 = icmp slt i32 %1, %i.a
  br i1 %.not44, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !157    ; 15 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %i.c = phi i32 [ %i.a, %.lr.ph ], [ %i.br, %tailrecurse ] ; 3 uses
  %.tr3646 = phi i32 [ %2, %.lr.ph ], [ %spec.select38, %tailrecurse ] ; 2 uses
  %.tr3545 = phi i32 [ %1, %.lr.ph ], [ %spec.select, %tailrecurse ] ; 7 uses
  %i.d = add nsw i32 %.tr3545, -1                 ; 3 uses
  %i.e = sext i32 %i.c to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.e ; 3 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !159 ; 4 uses
  br label %.outer

.outer:                                           ; preds = %bb.i, %bb.b
  %.076.i.ph = phi i32 [ %i.t, %bb.i ], [ %i.d, %bb.b ]
  %.074.i.ph = phi i64 [ %indvars.iv.next115.i, %bb.i ], [ %i.e, %bb.b ]
  %.072.i.ph = phi i32 [ %.173.i, %bb.i ], [ %i.d, %bb.b ]
  %.071.i.ph = phi i32 [ %i.ac, %bb.i ], [ %i.c, %bb.b ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.outer, %bb.h
  %.076.i = phi i32 [ %i.t, %bb.h ], [ %.076.i.ph, %.outer ] ; 2 uses
  %.074.i = phi i64 [ %indvars.iv.next115.i, %bb.h ], [ %.074.i.ph, %.outer ]
  %.072.i = phi i32 [ %.173.i, %bb.h ], [ %.072.i.ph, %.outer ] ; 6 uses
  %i.h = sext i32 %.076.i to i64
  %i.i = add i32 %.076.i, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv127.i = phi i32 [ %indvars.iv.next128.i, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 5 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.k = load float, ptr %i.j, align 4, !tbaa !159 ; 4 uses
  %i.l = fcmp ogt float %i.k, %i.g
  %indvars.iv.next128.i = add i32 %indvars.iv127.i, 1
  br i1 %i.l, label %bb.d, label %.preheader.i.preheader, !llvm.loop !208

.preheader.i.preheader:                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i ; 4 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv114.i = phi i64 [ %indvars.iv.next115.i, %.preheader.i ], [ %.074.i, %.preheader.i.preheader ]
  %indvars.iv.next115.i = add nsw i64 %indvars.iv114.i, -1 ; 7 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next115.i
  %i.o = load float, ptr %i.n, align 4, !tbaa !159 ; 2 uses
  %i.p = fcmp ule float %i.g, %i.o
  %i.q = trunc nsw i64 %indvars.iv.next115.i to i32
  %i.r = icmp eq i32 %.tr3545, %i.q
  %or.cond.i = or i1 %i.p, %i.r
  br i1 %or.cond.i, label %bb.e, label %.preheader.i, !llvm.loop !209

bb.e:                                             ; preds = %.preheader.i
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next115.i ; 3 uses
  %i.t = trunc nsw i64 %indvars.iv.next.i to i32  ; 2 uses
  %.not85.i = icmp slt i64 %indvars.iv.next.i, %indvars.iv.next115.i
  br i1 %.not85.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  store float %i.o, ptr %i.m, align 4, !tbaa !159
  store float %i.k, ptr %i.s, align 4, !tbaa !159
  %i.u = load float, ptr %i.m, align 4, !tbaa !159 ; 2 uses
  %i.v = fcmp oeq float %i.u, %i.g
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = add nsw i32 %.072.i, 1                   ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.x ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !159
  store float %i.u, ptr %i.y, align 4, !tbaa !159
  store float %i.z, ptr %i.m, align 4, !tbaa !159
  %.pre.i = load float, ptr %i.s, align 4, !tbaa !159
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = phi float [ %.pre.i, %bb.g ], [ %i.k, %bb.f ] ; 2 uses
  %.173.i = phi i32 [ %i.w, %bb.g ], [ %.072.i, %bb.f ] ; 2 uses
  %i.ab = fcmp oeq float %i.g, %i.aa
  br i1 %i.ab, label %bb.i, label %bb.c, !llvm.loop !210

bb.i:                                             ; preds = %bb.h
  %i.ac = add nsw i32 %.071.i.ph, -1              ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ad ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !159
  store float %i.af, ptr %i.s, align 4, !tbaa !159
  store float %i.aa, ptr %i.ae, align 4, !tbaa !159
  br label %.outer, !llvm.loop !210

bb.j:                                             ; preds = %bb.e
  %i.ag = trunc nsw i64 %indvars.iv.i to i32      ; 2 uses
  %i.ah = load float, ptr %i.f, align 4, !tbaa !159
  store float %i.ah, ptr %i.m, align 4, !tbaa !159
  store float %i.k, ptr %i.f, align 4, !tbaa !159
  %i.ai = add nsw i32 %i.ag, 2
  %.not8696.i = icmp sgt i32 %.tr3545, %.072.i
  br i1 %.not8696.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.aj = sext i32 %.tr3545 to i64                ; 3 uses
  %i.ak = add i32 %.072.i, 1
  %i.al = sub i32 %.072.i, %.tr3545
  %i.am = and i32 %i.al, 1
  %lcmp.mod.not.not = icmp eq i32 %i.am, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aj ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i ; 2 uses
  %i.ap = load float, ptr %i.an, align 4, !tbaa !159
  %i.aq = load float, ptr %i.ao, align 4, !tbaa !159
  store float %i.aq, ptr %i.an, align 4, !tbaa !159
  store float %i.ap, ptr %i.ao, align 4, !tbaa !159
  %indvars.iv.next118.i.prol = add nsw i64 %i.aj, 1
  %indvars.iv.next120.i.prol = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.next120.i.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader.i ], [ %indvars.iv.next120.i.prol, %.lr.ph.i.prol ]
  %indvars.iv119.i.unr = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next120.i.prol, %.lr.ph.i.prol ]
  %indvars.iv117.i.unr = phi i64 [ %i.aj, %.lr.ph.preheader.i ], [ %indvars.iv.next118.i.prol, %.lr.ph.i.prol ]
  %i.ar = icmp eq i32 %.072.i, %.tr3545
  br i1 %i.ar, label %._crit_edge.loopexit.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %indvars.iv.next120.i.lcssa = phi i64 [ %indvars.iv.next120.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %indvars.iv.next120.i.1, %.lr.ph.i ]
  %i.as = trunc nsw i64 %indvars.iv.next120.i.lcssa to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.j
  %.2.lcssa.i = phi i32 [ %i.ag, %bb.j ], [ %i.as, %._crit_edge.loopexit.i ] ; 3 uses
  %i.at = add nsw i32 %.tr3646, -2                ; 2 uses
  %.not8799.i = icmp slt i32 %i.at, %.071.i.ph
  br i1 %.not8799.i, label %_ZN8LightGBM9ArrayArgsIfE9PartitionEPSt6vectorIfSaIfEEiiPiS6_.exit, label %.lr.ph103.preheader.i

.lr.ph103.preheader.i:                            ; preds = %._crit_edge.i
  %i.au = sext i32 %i.at to i64
  %i.av = sext i32 %.071.i.ph to i64
  %i.aw = sext i32 %indvars.iv127.i to i64
  br label %.lr.ph103.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i.1, %.lr.ph.i ], [ %indvars.iv119.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %indvars.iv117.i = phi i64 [ %indvars.iv.next118.i.1, %.lr.ph.i ], [ %indvars.iv117.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv117.i ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv119.i ; 2 uses
  %i.az = load float, ptr %i.ax, align 4, !tbaa !159
  %i.ba = load float, ptr %i.ay, align 4, !tbaa !159
  store float %i.ba, ptr %i.ax, align 4, !tbaa !159
  store float %i.az, ptr %i.ay, align 4, !tbaa !159
  %i.bb = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv117.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 4      ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv119.i
  %i.be = getelementptr i8, ptr %i.bd, i64 -4     ; 2 uses
  %i.bf = load float, ptr %i.bc, align 4, !tbaa !159
  %i.bg = load float, ptr %i.be, align 4, !tbaa !159
  store float %i.bg, ptr %i.bc, align 4, !tbaa !159
  store float %i.bf, ptr %i.be, align 4, !tbaa !159
  %indvars.iv.next118.i.1 = add nsw i64 %indvars.iv117.i, 2 ; 2 uses
  %indvars.iv.next120.i.1 = add nsw i64 %indvars.iv119.i, -2 ; 2 uses
  %lftr.wideiv.i.1 = trunc i64 %indvars.iv.next118.i.1 to i32
  %exitcond.not.i.1 = icmp eq i32 %i.ak, %lftr.wideiv.i.1
  br i1 %exitcond.not.i.1, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !211

.lr.ph103.i:                                      ; preds = %.lr.ph103.i, %.lr.ph103.preheader.i
  %indvars.iv129.i = phi i64 [ %i.aw, %.lr.ph103.preheader.i ], [ %indvars.iv.next130.i, %.lr.ph103.i ] ; 2 uses
  %indvars.iv125.i = phi i64 [ %i.au, %.lr.ph103.preheader.i ], [ %indvars.iv.next126.i.a, %.lr.ph103.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv129.i ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv125.i ; 2 uses
  %i.bj = load float, ptr %i.bh, align 4, !tbaa !159
  %i.bk = load float, ptr %i.bi, align 4, !tbaa !159
  store float %i.bk, ptr %i.bh, align 4, !tbaa !159
  store float %i.bj, ptr %i.bi, align 4, !tbaa !159
  %indvars.iv.next126.i.a = add nsw i64 %indvars.iv125.i, -1
  %indvars.iv.next130.i = add nsw i64 %indvars.iv129.i, 1 ; 2 uses
  %.not87.not.i = icmp sgt i64 %indvars.iv125.i, %i.av
  br i1 %.not87.not.i, label %.lr.ph103.i, label %.loopexit.loopexit.i, !llvm.loop !212

.loopexit.loopexit.i:                             ; preds = %.lr.ph103.i
  %i.bl = trunc nsw i64 %indvars.iv.next130.i to i32
  br label %_ZN8LightGBM9ArrayArgsIfE9PartitionEPSt6vectorIfSaIfEEiiPiS6_.exit

_ZN8LightGBM9ArrayArgsIfE9PartitionEPSt6vectorIfSaIfEEiiPiS6_.exit: ; preds = %._crit_edge.i, %.loopexit.loopexit.i
  %storemerge.i = phi i32 [ %i.bl, %.loopexit.loopexit.i ], [ %i.ai, %._crit_edge.i ] ; 3 uses
  %i.bm = icmp sgt i32 %3, %.2.lcssa.i            ; 3 uses
  %i.bn = icmp slt i32 %3, %storemerge.i
  %or.cond = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %or.cond, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %_ZN8LightGBM9ArrayArgsIfE9PartitionEPSt6vectorIfSaIfEEiiPiS6_.exit
  %i.bo = icmp eq i32 %.2.lcssa.i, %i.d
  %i.bp = icmp eq i32 %storemerge.i, %i.c
  %or.cond29 = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %or.cond29, label %._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %bb.k
  %i.bq = add nsw i32 %.2.lcssa.i, 1
  %spec.select = select i1 %i.bm, i32 %storemerge.i, i32 %.tr3545 ; 3 uses
  %spec.select38 = select i1 %i.bm, i32 %.tr3646, i32 %i.bq ; 2 uses
  %i.br = add nsw i32 %spec.select38, -1          ; 2 uses
  %.not = icmp slt i32 %spec.select, %i.br
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %tailrecurse, %_ZN8LightGBM9ArrayArgsIfE9PartitionEPSt6vectorIfSaIfEEiiPiS6_.exit, %bb.k, %bb.a
  %.1 = phi i32 [ %1, %bb.a ], [ %3, %_ZN8LightGBM9ArrayArgsIfE9PartitionEPSt6vectorIfSaIfEEiiPiS6_.exit ], [ %3, %bb.k ], [ %spec.select, %tailrecurse ]
  ret i32 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #21

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef %0, ...) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.b = alloca [1024 x i8], align 16             ; 7 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.c = call i32 @vsnprintf(ptr noundef nonnull %i.b, i64 noundef 1024, ptr noundef %0, ptr noundef nonnull %1) #15 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !154
  %i.e = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.b) #31 ; 0 uses
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !154
  %i.g = call i32 @fflush(ptr noundef %i.f)       ; 0 uses
  %i.h = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !13
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.j, ptr %i.a, align 8, !tbaa !213
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.l, ptr %2, align 8, !tbaa !18
  %i.m = load i64, ptr %i.a, align 8, !tbaa !213
  store i64 %i.m, ptr %i.i, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.n = phi ptr [ %i.l, %.noexc ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.j, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.b, align 16, !tbaa !17
  store i8 %i.o, ptr %i.n, align 1, !tbaa !17
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 16 %i.b, i64 %i.j, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !213  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !16
  %i.r = load ptr, ptr %2, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #30
          to label %bb.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.v = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.i
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.x = load i64, ptr %i.i, align 8, !tbaa !17
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.h) #15
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %.pn9, %bb.g ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM3Log4InfoEPKcz(ptr noundef %0, ...) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.va_start.p0(ptr nonnull %1)
  call void @_ZN8LightGBM3Log5WriteENS_8LogLevelEPKcS3_P13__va_list_tag(i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef %0, ptr noundef nonnull %1)
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void
}

declare void @_ZN8LightGBM7DatasetC1Ei(ptr noundef nonnull align 8 dereferenceable(864), i32 noundef) unnamed_addr #7

declare void @_ZN8LightGBM7Dataset21CopyFeatureMapperFromEPKS0_(ptr noundef nonnull align 8 dereferenceable(864), ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #18

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #11

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #22

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiN8LightGBM6Common18AlignmentAllocatorIiLm32EEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !137  ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !52     ; 7 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 2                   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !216
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.e
  %i.m = ashr exact i64 %i.l, 2                   ; 2 uses
  %i.n = icmp ult i64 %i.h, 2305843009213693952
  tail call void @llvm.assume(i1 %i.n)
  %i.o = xor i64 %i.h, 2305843009213693951        ; 2 uses
  %i.p = icmp ule i64 %i.m, %i.o
  tail call void @llvm.assume(i1 %i.p)
  %.not37 = icmp ult i64 %i.m, %1
  br i1 %.not37, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPimN8LightGBM6Common18AlignmentAllocatorIiLm32EEEET_S5_T0_RT1_.exit

_ZSt27__uninitialized_default_n_aIPimN8LightGBM6Common18AlignmentAllocatorIiLm32EEEET_S5_T0_RT1_.exit: ; preds = %bb.b
  %i.q = shl nuw nsw i64 %1, 2                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.c, i8 0, i64 %i.q, i1 false), !tbaa !143
end_hunk_0
