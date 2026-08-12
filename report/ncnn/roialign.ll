inline.NumInlined: 20
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4ncnn8ROIAlign7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined:bb.a
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !46
  %i.dt = fmul fast float %i.ds, %.043.i.us
  %i.du = add nsw i32 %.0.i.us, %i.dc
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.dv
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !46
  %i.dy = fmul fast float %i.dx, %.046.i.us
  %i.dz = fadd fast float %i.dy, %i.dt
  %i.ea = add nsw i32 %i.dd, %i.dj
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.eb
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !46
  %i.ee = fmul fast float %i.ed, %.043.i.us
  %i.ef = add nsw i32 %.0.i.us, %i.dd
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.eg
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !46
  %i.ej = fmul fast float %i.ei, %.046.i.us
  %i.ek = fadd fast float %i.ej, %i.ee
  %i.el = fmul fast float %i.dz, %.045.i.us
  %i.em = fmul fast float %i.ek, %.044.i.us
  %i.en = fadd fast float %i.el, %.1144.us
  %i.eo = fadd fast float %i.en, %i.em            ; 3 uses
  %i.ep = add nuw nsw i32 %.055145.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.ep, %i.cg
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.f, !llvm.loop !60

._crit_edge.us:                                   ; preds = %bb.f
  %i.eq = add nuw nsw i32 %.057147.us, 1          ; 2 uses
  %exitcond166.not = icmp eq i32 %i.eq, %i.ch
  br i1 %exitcond166.not, label %._crit_edge150, label %.lr.ph.us, !llvm.loop !61

._crit_edge150:                                   ; preds = %._crit_edge.us, %bb.e
  %.058.lcssa = phi float [ 0.000000e+00, %bb.e ], [ %i.eo, %._crit_edge.us ]
  %i.er = sitofp fast i32 %i.ci to float
  %i.es = fdiv fast float %.058.lcssa, %i.er
  %i.et = select fast i1 %i.cf, float 0.000000e+00, float %i.es
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.054156, i64 %indvars.iv
  store float %i.et, ptr %i.eu, align 4, !tbaa !46
  %exitcond168.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond168.not, label %._crit_edge, label %bb.c, !llvm.loop !62

._crit_edge160.split:                             ; preds = %._crit_edge157, %.noexc.lr.ph, %.noexc.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge160.split, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !63 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn8ROIAlign7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !38     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !38
  %i.h = load i32, ptr %0, align 4, !tbaa !38     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !38
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 7 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !38
  %i.k = load i32, ptr %i.a, align 4, !tbaa !38   ; 7 uses
  %.not127 = icmp sgt i32 %i.k, %i.j
  br i1 %.not127, label %._crit_edge.split131, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !44, !noalias !65
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !45, !noalias !65
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !40, !noalias !65
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !44, !noalias !68 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !45, !noalias !68
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !40, !noalias !68
  %factor.op.mul129 = mul i64 %i.s, %i.u          ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 212
  %i.w = load i32, ptr %i.v, align 4, !tbaa !29   ; 4 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.noexc.lr.ph.split, label %._crit_edge.split131

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.z = load i32, ptr %i.y, align 8, !tbaa !9    ; 5 uses
  %i.aa = icmp sgt i32 %i.z, 0
  %i.ab = sext i32 %i.z to i64
  br i1 %i.aa, label %.noexc.lr.ph.split.split, label %._crit_edge.split131

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.ac = load i32, ptr %6, align 4, !tbaa !38    ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  %i.ae = sitofp fast i32 %i.ac to float
  br i1 %i.ad, label %.noexc.lr.ph.split.split.split.us, label %.noexc.preheader

.noexc.preheader:                                 ; preds = %.noexc.lr.ph.split.split
  %i.af = zext nneg i32 %i.z to i64
  %i.ag = sext i32 %i.k to i64                    ; 5 uses
  %i.ah = zext nneg i32 %i.w to i64
  %i.ai = mul nuw nsw i64 %i.af, %i.ah
  %i.aj = shl nuw i64 %i.ai, 2                    ; 5 uses
  %i.ak = add nsw i32 %i.j, 1
  %i.al = sub i32 %i.ak, %i.k                     ; 2 uses
  %i.am = sub i32 %i.j, %i.k
  %xtraiter = and i32 %i.al, 3                    ; 3 uses
  %i.an = icmp ult i32 %i.am, 3
  br i1 %i.an, label %.noexc.epil.preheader, label %.noexc.preheader.new

.noexc.preheader.new:                             ; preds = %.noexc.preheader
  %unroll_iter = and i32 %i.al, -4
  br label %.noexc

.noexc.lr.ph.split.split.split.us:                ; preds = %.noexc.lr.ph.split.split
  %i.ao = load i32, ptr %9, align 4, !tbaa !38    ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  %i.aq = sext i32 %i.k to i64                    ; 6 uses
  br i1 %i.ap, label %.noexc.us.us.preheader, label %.noexc.us.preheader

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.split.split.us
  %i.ar = zext nneg i32 %i.z to i64
  %i.as = zext nneg i32 %i.w to i64
  %i.at = mul nuw nsw i64 %i.ar, %i.as
  %i.au = shl nuw i64 %i.at, 2                    ; 5 uses
  %i.av = add nsw i32 %i.j, 1
  %i.aw = sub i32 %i.av, %i.k                     ; 2 uses
  %i.ax = sub i32 %i.j, %i.k
  %xtraiter181 = and i32 %i.aw, 3                 ; 3 uses
  %i.ay = icmp ult i32 %i.ax, 3
  br i1 %i.ay, label %.noexc.us.epil.preheader, label %.noexc.us.preheader.new

.noexc.us.preheader.new:                          ; preds = %.noexc.us.preheader
  %unroll_iter185 = and i32 %i.aw, -4
  br label %.noexc.us

.noexc.us.us.preheader:                           ; preds = %.noexc.lr.ph.split.split.split.us
  %i.az = sitofp fast i32 %i.ao to float
  %i.ba = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.z to i64
  %i.bb = fdiv fast float 1.000000e+00, %i.ae
  %i.bc = fdiv fast float 1.000000e+00, %i.az
  br label %.noexc.us.us

.noexc.us.us:                                     ; preds = %.noexc.us.us.preheader, %._crit_edge120.split126.us.split.us.us.us
  %indvars.iv154 = phi i64 [ %i.aq, %.noexc.us.us.preheader ], [ %indvars.iv.next155, %._crit_edge120.split126.us.split.us.us.us ] ; 3 uses
  %.reass.us.us = mul i64 %factor.op.mul, %indvars.iv154
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.us.us ; 4 uses
  %.reass130.us.us = mul i64 %factor.op.mul129, %indvars.iv154
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass130.us.us
  br label %.preheader99.us.us.us.us

.preheader99.us.us.us.us:                         ; preds = %._crit_edge.split.us.split.us.us.us.us.us, %.noexc.us.us
  %.061119.us.us.us.us = phi i32 [ 0, %.noexc.us.us ], [ %i.ej, %._crit_edge.split.us.split.us.us.us.us.us ] ; 2 uses
  %.062116.us.us.us.us = phi ptr [ %i.be, %.noexc.us.us ], [ %i.ei, %._crit_edge.split.us.split.us.us.us.us.us ] ; 2 uses
  %i.bf = uitofp nneg i32 %.061119.us.us.us.us to float
  br label %.preheader.us.us.us.us.us.us

.preheader.us.us.us.us.us.us:                     ; preds = %._crit_edge106.split.us.us.us.us.us.us.us, %.preheader99.us.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge106.split.us.us.us.us.us.us.us ], [ 0, %.preheader99.us.us.us.us ] ; 3 uses
  %i.bg = load float, ptr %7, align 4, !tbaa !46
  %i.bh = load float, ptr %8, align 4, !tbaa !46  ; 2 uses
  %i.bi = fmul fast float %i.bh, %i.bf
  %i.bj = fadd fast float %i.bi, %i.bg
  %i.bk = trunc nuw nsw i64 %indvars.iv to i32
  %i.bl = uitofp nneg i32 %i.bk to float
  %i.bm = load float, ptr %10, align 4, !tbaa !46
  %i.bn = load float, ptr %11, align 4, !tbaa !46 ; 2 uses
  %i.bo = fmul fast float %i.bn, %i.bl
  %i.bp = fadd fast float %i.bo, %i.bm
  br label %.lr.ph.us.us.us.us.us.us.us

.lr.ph.us.us.us.us.us.us.us:                      ; preds = %._crit_edge.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us
  %.056104.us.us.us.us.us.us.us = phi i32 [ 0, %.preheader.us.us.us.us.us.us ], [ %i.ee, %._crit_edge.us.us.us.us.us.us.us ] ; 2 uses
  %.057103.us.us.us.us.us.us.us = phi float [ 0.000000e+00, %.preheader.us.us.us.us.us.us ], [ %.259.us.us.us.us.us.us.us, %._crit_edge.us.us.us.us.us.us.us ]
  %i.bq = uitofp nneg i32 %.056104.us.us.us.us.us.us.us to float
  %i.br = fadd fast float %i.bq, 5.000000e-01
  %i.bs = fmul fast float %i.bh, %i.br
  %i.bt = fmul fast float %i.bs, %i.bb
  %i.bu = fadd fast float %i.bj, %i.bt
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.us.us.us.us.us.us.us
  %.054102.us.us.us.us.us.us.us = phi i32 [ 0, %.lr.ph.us.us.us.us.us.us.us ], [ %i.ed, %bb.g ] ; 2 uses
  %.055101.us.us.us.us.us.us.us = phi float [ %i.bu, %.lr.ph.us.us.us.us.us.us.us ], [ %.2.us.us.us.us.us.us.us, %bb.g ] ; 6 uses
  %.158100.us.us.us.us.us.us.us = phi float [ %.057103.us.us.us.us.us.us.us, %.lr.ph.us.us.us.us.us.us.us ], [ %.259.us.us.us.us.us.us.us, %bb.g ] ; 4 uses
  %i.bv = uitofp nneg i32 %.054102.us.us.us.us.us.us.us to float
  %i.bw = fadd fast float %i.bv, 5.000000e-01
  %i.bx = fmul fast float %i.bn, %i.bw
  %i.by = fmul fast float %i.bx, %i.bc
  %i.bz = fadd fast float %i.bp, %i.by            ; 3 uses
  %i.ca = fcmp fast olt float %.055101.us.us.us.us.us.us.us, -1.000000e+00
  br i1 %i.ca, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cb = load i32, ptr %12, align 4, !tbaa !38   ; 3 uses
  %i.cc = sitofp fast i32 %i.cb to float
  %i.cd = fcmp fast ogt float %.055101.us.us.us.us.us.us.us, %i.cc
  %i.ce = fcmp fast olt float %i.bz, -1.000000e+00
  %or.cond.us.us.us.us.us.us.us = select i1 %i.cd, i1 true, i1 %i.ce
  br i1 %or.cond.us.us.us.us.us.us.us, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cf = load i32, ptr %13, align 4, !tbaa !38   ; 5 uses
  %i.cg = sitofp fast i32 %i.cf to float
  %i.ch = fcmp fast ogt float %i.bz, %i.cg
  br i1 %i.ch, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ci = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %.055101.us.us.us.us.us.us.us, i64 1
  %i.ck = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cj, <2 x float> zeroinitializer) ; 5 uses
  %i.cl = fptosi <2 x float> %i.ck to <2 x i32>   ; 3 uses
  %i.cm = extractelement <2 x i32> %i.cl, i64 0   ; 3 uses
  %i.cn = add nsw i32 %i.cm, 1                    ; 3 uses
  %i.co = extractelement <2 x i32> %i.cl, i64 1   ; 2 uses
  %i.cp = add nsw i32 %i.co, 1                    ; 3 uses
  %i.cq = sitofp fast i32 %i.cn to float
  %i.cr = extractelement <2 x float> %i.ck, i64 0
  %i.cs = fsub fast float %i.cq, %i.cr
  %i.ct = sitofp <2 x i32> %i.cl to <2 x float>   ; 2 uses
  %foldExtExtBinop = fsub fast <2 x float> %i.ck, %i.ct
  %i.cu = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cv = sitofp fast i32 %i.cp to float
  %i.cw = extractelement <2 x float> %i.ck, i64 1 ; 2 uses
  %i.cx = fsub fast float %i.cv, %i.cw
  %foldExtExtBinop174 = fsub fast <2 x float> %i.ck, %i.ct
  %i.cy = extractelement <2 x float> %foldExtExtBinop174, i64 1
  %.not.i77.us.us.us.us.us.us.us = icmp slt i32 %i.cn, %i.cf ; 2 uses
  %i.cz = add nsw i32 %i.cf, -1
  %.046.i.us.us.us.us.us.us.us = select nsz i1 %.not.i77.us.us.us.us.us.us.us, float %i.cu, float 0.000000e+00 ; 2 uses
  %.043.i.us.us.us.us.us.us.us = select nsz i1 %.not.i77.us.us.us.us.us.us.us, float %i.cs, float 1.000000e+00 ; 2 uses
  %.0.i.us.us.us.us.us.us.us = call i32 @llvm.smin.i32(i32 %i.cn, i32 %i.cz) ; 2 uses
  %.not51.i.us.us.us.us.us.us.us = icmp slt i32 %i.cp, %i.cb ; 2 uses
  %i.da = add nsw i32 %i.cb, -1
  %.045.i.us.us.us.us.us.us.us = select nsz i1 %.not51.i.us.us.us.us.us.us.us, float %i.cx, float 1.000000e+00
  %.044.i.us.us.us.us.us.us.us = select nsz i1 %.not51.i.us.us.us.us.us.us.us, float %i.cy, float 0.000000e+00
  %.042.i.us.us.us.us.us.us.us = call i32 @llvm.smin.i32(i32 %i.cp, i32 %i.da)
  %i.db = mul nsw i32 %i.cf, %i.co                ; 2 uses
  %i.dc = add nsw i32 %i.db, %i.cm
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.dd
  %i.df = load float, ptr %i.de, align 4, !tbaa !46
  %i.dg = fmul fast float %i.df, %.043.i.us.us.us.us.us.us.us
  %i.dh = add nsw i32 %.0.i.us.us.us.us.us.us.us, %i.db
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.di
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !46
  %i.dl = fmul fast float %i.dk, %.046.i.us.us.us.us.us.us.us
  %i.dm = fadd fast float %i.dl, %i.dg
  %i.dn = mul nsw i32 %i.cf, %.042.i.us.us.us.us.us.us.us ; 2 uses
  %i.do = add nsw i32 %i.dn, %i.cm
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.dp
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !46
  %i.ds = fmul fast float %i.dr, %.043.i.us.us.us.us.us.us.us
  %i.dt = add nsw i32 %.0.i.us.us.us.us.us.us.us, %i.dn
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !46
  %i.dx = fmul fast float %i.dw, %.046.i.us.us.us.us.us.us.us
  %i.dy = fadd fast float %i.dx, %i.ds
  %i.dz = fmul fast float %i.dm, %.045.i.us.us.us.us.us.us.us
  %i.ea = fmul fast float %i.dy, %.044.i.us.us.us.us.us.us.us
  %i.eb = fadd fast float %i.dz, %.158100.us.us.us.us.us.us.us
  %i.ec = fadd fast float %i.eb, %i.ea
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.259.us.us.us.us.us.us.us = phi nsz float [ %i.ec, %bb.f ], [ %.158100.us.us.us.us.us.us.us, %bb.e ], [ %.158100.us.us.us.us.us.us.us, %bb.d ], [ %.158100.us.us.us.us.us.us.us, %bb.c ] ; 3 uses
  %.2.us.us.us.us.us.us.us = phi nsz float [ %i.cw, %bb.f ], [ %.055101.us.us.us.us.us.us.us, %bb.e ], [ %.055101.us.us.us.us.us.us.us, %bb.d ], [ %.055101.us.us.us.us.us.us.us, %bb.c ]
  %i.ed = add nuw nsw i32 %.054102.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond149.not = icmp eq i32 %i.ed, %i.ao
  br i1 %exitcond149.not, label %._crit_edge.us.us.us.us.us.us.us, label %bb.c, !llvm.loop !71

._crit_edge.us.us.us.us.us.us.us:                 ; preds = %bb.g
  %i.ee = add nuw nsw i32 %.056104.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond150.not = icmp eq i32 %i.ee, %i.ac
  br i1 %exitcond150.not, label %._crit_edge106.split.us.us.us.us.us.us.us, label %.lr.ph.us.us.us.us.us.us.us, !llvm.loop !72

._crit_edge106.split.us.us.us.us.us.us.us:        ; preds = %._crit_edge.us.us.us.us.us.us.us
  %i.ef = load float, ptr %14, align 4, !tbaa !46
  %i.eg = fdiv fast float %.259.us.us.us.us.us.us.us, %i.ef
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.062116.us.us.us.us, i64 %indvars.iv
  store float %i.eg, ptr %i.eh, align 4, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond152.not, label %._crit_edge.split.us.split.us.us.us.us.us, label %.preheader.us.us.us.us.us.us, !llvm.loop !73

._crit_edge.split.us.split.us.us.us.us.us:        ; preds = %._crit_edge106.split.us.us.us.us.us.us.us
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.062116.us.us.us.us, i64 %i.ab
  %i.ej = add nuw nsw i32 %.061119.us.us.us.us, 1 ; 2 uses
  %exitcond153.not = icmp eq i32 %i.ej, %i.w
  br i1 %exitcond153.not, label %._crit_edge120.split126.us.split.us.us.us, label %.preheader99.us.us.us.us, !llvm.loop !74

._crit_edge120.split126.us.split.us.us.us:        ; preds = %._crit_edge.split.us.split.us.us.us.us.us
  %indvars.iv.next155 = add nsw i64 %indvars.iv154, 1 ; 2 uses
  %lftr.wideiv157 = trunc i64 %indvars.iv.next155 to i32
  %exitcond158.not = icmp eq i32 %i.ba, %lftr.wideiv157
  br i1 %exitcond158.not, label %._crit_edge.split131, label %.noexc.us.us

.noexc.us:                                        ; preds = %.noexc.us, %.noexc.us.preheader.new
  %indvar144 = phi i64 [ 0, %.noexc.us.preheader.new ], [ %indvar.next145.3, %.noexc.us ] ; 5 uses
  %niter186 = phi i32 [ 0, %.noexc.us.preheader.new ], [ %niter186.next.3, %.noexc.us ]
  %i.ek = add nsw i64 %indvar144, %i.aq
  %i.el = mul i64 %factor.op.mul129, %i.ek
  %scevgep146 = getelementptr i8, ptr %i.q, i64 %i.el
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep146, i8 0, i64 %i.au, i1 false), !tbaa !46
  %indvar.next145 = or disjoint i64 %indvar144, 1
  %i.em = add nsw i64 %indvar.next145, %i.aq
  %i.en = mul i64 %factor.op.mul129, %i.em
  %scevgep146.1 = getelementptr i8, ptr %i.q, i64 %i.en
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep146.1, i8 0, i64 %i.au, i1 false), !tbaa !46
  %indvar.next145.1 = or disjoint i64 %indvar144, 2
  %i.eo = add nsw i64 %indvar.next145.1, %i.aq
  %i.ep = mul i64 %factor.op.mul129, %i.eo
  %scevgep146.2 = getelementptr i8, ptr %i.q, i64 %i.ep
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep146.2, i8 0, i64 %i.au, i1 false), !tbaa !46
  %indvar.next145.2 = or disjoint i64 %indvar144, 3
  %i.eq = add nsw i64 %indvar.next145.2, %i.aq
  %i.er = mul i64 %factor.op.mul129, %i.eq
  %scevgep146.3 = getelementptr i8, ptr %i.q, i64 %i.er
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep146.3, i8 0, i64 %i.au, i1 false), !tbaa !46
  %indvar.next145.3 = add nuw nsw i64 %indvar144, 4 ; 2 uses
  %niter186.next.3 = add i32 %niter186, 4         ; 2 uses
  %niter186.ncmp.3 = icmp eq i32 %niter186.next.3, %unroll_iter185
  br i1 %niter186.ncmp.3, label %._crit_edge.split131.loopexit176.unr-lcssa, label %.noexc.us

.noexc:                                           ; preds = %.noexc, %.noexc.preheader.new
  %indvar = phi i64 [ 0, %.noexc.preheader.new ], [ %indvar.next.3, %.noexc ] ; 5 uses
  %niter = phi i32 [ 0, %.noexc.preheader.new ], [ %niter.next.3, %.noexc ]
  %i.es = add nsw i64 %indvar, %i.ag
  %i.et = mul i64 %factor.op.mul129, %i.es
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.et
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.aj, i1 false), !tbaa !46
  %indvar.next = or disjoint i64 %indvar, 1
  %i.eu = add nsw i64 %indvar.next, %i.ag
  %i.ev = mul i64 %factor.op.mul129, %i.eu
  %scevgep.1 = getelementptr i8, ptr %i.q, i64 %i.ev
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.1, i8 0, i64 %i.aj, i1 false), !tbaa !46
  %indvar.next.1 = or disjoint i64 %indvar, 2
  %i.ew = add nsw i64 %indvar.next.1, %i.ag
  %i.ex = mul i64 %factor.op.mul129, %i.ew
  %scevgep.2 = getelementptr i8, ptr %i.q, i64 %i.ex
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.2, i8 0, i64 %i.aj, i1 false), !tbaa !46
  %indvar.next.2 = or disjoint i64 %indvar, 3
  %i.ey = add nsw i64 %indvar.next.2, %i.ag
  %i.ez = mul i64 %factor.op.mul129, %i.ey
  %scevgep.3 = getelementptr i8, ptr %i.q, i64 %i.ez
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.3, i8 0, i64 %i.aj, i1 false), !tbaa !46
  %indvar.next.3 = add nuw nsw i64 %indvar, 4     ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.split131.loopexit177.unr-lcssa, label %.noexc

._crit_edge.split131.loopexit176.unr-lcssa:       ; preds = %.noexc.us
  %lcmp.mod183.not = icmp eq i32 %xtraiter181, 0
  br i1 %lcmp.mod183.not, label %._crit_edge.split131, label %.noexc.us.epil.preheader

.noexc.us.epil.preheader:                         ; preds = %._crit_edge.split131.loopexit176.unr-lcssa, %.noexc.us.preheader
  %indvar144.epil.init = phi i64 [ 0, %.noexc.us.preheader ], [ %indvar.next145.3, %._crit_edge.split131.loopexit176.unr-lcssa ]
  %lcmp.mod184 = icmp ne i32 %xtraiter181, 0
  call void @llvm.assume(i1 %lcmp.mod184)
  br label %.noexc.us.epil

.noexc.us.epil:                                   ; preds = %.noexc.us.epil, %.noexc.us.epil.preheader
  %indvar144.epil = phi i64 [ %indvar144.epil.init, %.noexc.us.epil.preheader ], [ %indvar.next145.epil, %.noexc.us.epil ] ; 2 uses
  %epil.iter182 = phi i32 [ 0, %.noexc.us.epil.preheader ], [ %epil.iter182.next, %.noexc.us.epil ]
  %i.fa = add i64 %indvar144.epil, %i.aq
  %i.fb = mul i64 %factor.op.mul129, %i.fa
end_hunk_0
