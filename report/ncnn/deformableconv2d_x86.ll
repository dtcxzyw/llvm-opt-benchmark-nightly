inline.NumInlined: 18
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK4ncnn20DeformableConv2D_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined:bb.a
  br i1 %i.ec, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ed = mul i64 %i.dx, %indvars.iv224           ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.ed
  %i.eg = trunc nuw nsw i64 %indvars.iv224 to i32
  br label %bb.k

._crit_edge207:                                   ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN4ncnn3Mat7channelEi.exit
  %.2.lcssa = phi ptr [ %.1211, %_ZN4ncnn3Mat7channelEi.exit ], [ %.1211, %.preheader.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.eh = load ptr, ptr %i.v, align 8, !tbaa !11  ; 2 uses
  %.not.i = icmp eq ptr %i.eh, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit113, label %bb.e

bb.e:                                             ; preds = %._crit_edge207
  %i.ei = atomicrmw add ptr %i.eh, i32 -1 acq_rel, align 4
  %i.ej = icmp eq i32 %i.ei, 1
  br i1 %i.ej, label %bb.f, label %_ZN4ncnn3MatD2Ev.exit113

bb.f:                                             ; preds = %bb.e
  %i.ek = load ptr, ptr %i.y, align 8, !tbaa !17  ; 3 uses
  %.not3.i = icmp eq ptr %i.ek, null
  %i.el = load ptr, ptr %14, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !9
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, ptr noundef %i.el)
          to label %_ZN4ncnn3MatD2Ev.exit113 unwind label %bb.j, !inline_history !19

bb.h:                                             ; preds = %bb.f
  %.not.i133 = icmp eq ptr %i.el, null
  br i1 %.not.i133, label %_ZN4ncnn3MatD2Ev.exit113, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.el) #9
  br label %_ZN4ncnn3MatD2Ev.exit113

bb.j:                                             ; preds = %bb.g
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit113:                         ; preds = %bb.e, %._crit_edge207, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  %i.er = add nuw nsw i32 %.0104209, 1            ; 2 uses
  %i.es = load i32, ptr %i.r, align 4, !tbaa !44  ; 3 uses
  %i.et = icmp slt i32 %i.er, %i.es
  br i1 %i.et, label %.noexc138, label %._crit_edge212.loopexit, !llvm.loop !109

._crit_edge.loopexit:                             ; preds = %.critedge
  %.pre = load i32, ptr %10, align 4, !tbaa !67
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.eu = phi i32 [ %i.ea, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.ev = phi i32 [ %i.eb, %.preheader ], [ %i.jn, %._crit_edge.loopexit ]
  %.3.lcssa = phi ptr [ %.2206, %.preheader ], [ %i.jm, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %i.ew = sext i32 %i.eu to i64
  %i.ex = icmp slt i64 %indvars.iv.next225, %i.ew
  br i1 %i.ex, label %.preheader, label %._crit_edge207, !llvm.loop !110

bb.k:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 5 uses
  %.3204 = phi ptr [ %.2206, %.lr.ph ], [ %i.jm, %.critedge ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !38
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !38
  %i.fc = load i32, ptr %i.an, align 8, !tbaa !85
  %i.fd = mul nsw i32 %i.fc, %i.eg
  %i.fe = load i32, ptr %i.ao, align 4, !tbaa !83
  %i.ff = sub i32 %i.fd, %i.fe
  %i.fg = load i32, ptr %i.ap, align 4, !tbaa !82
  %i.fh = trunc nuw nsw i64 %indvars.iv to i32
  %i.fi = mul nsw i32 %i.fg, %i.fh
  %i.fj = load i32, ptr %i.aq, align 4, !tbaa !80
  %i.fk = sub i32 %i.fi, %i.fj
  %i.fl = load i32, ptr %i.ar, align 8, !tbaa !79
  %i.fm = mul nsw i32 %i.fl, %.0103214
  %i.fn = add nsw i32 %i.ff, %i.fm
  %i.fo = sitofp fast i32 %i.fn to float
  %i.fp = fadd fast float %i.ez, %i.fo            ; 4 uses
  %i.fq = load i32, ptr %i.as, align 4, !tbaa !78
  %i.fr = mul nsw i32 %i.fq, %.0104209
  %i.fs = add nsw i32 %i.fk, %i.fr
  %i.ft = sitofp fast i32 %i.fs to float
  %i.fu = fadd fast float %i.fb, %i.ft            ; 4 uses
  %i.fv = fcmp fast ogt float %i.fp, -1.000000e+00
  %i.fw = fcmp fast ogt float %i.fu, -1.000000e+00
  %or.cond = select i1 %i.fv, i1 %i.fw, i1 false
  br i1 %or.cond, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.fx = load i32, ptr %12, align 4, !tbaa !67   ; 2 uses
  %i.fy = sitofp fast i32 %i.fx to float
  %i.fz = fcmp fast olt float %i.fp, %i.fy
  br i1 %i.fz, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ga = load i32, ptr %13, align 4, !tbaa !67   ; 2 uses
  %i.gb = sitofp fast i32 %i.ga to float
  %i.gc = fcmp fast olt float %i.fu, %i.gb
  br i1 %i.gc, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.gd = call fast float @llvm.floor.f32(float %i.fp)
  %i.ge = fptosi float %i.gd to i32               ; 6 uses
  %i.gf = call fast float @llvm.floor.f32(float %i.fu)
  %i.gg = fptosi float %i.gf to i32               ; 6 uses
  %i.gh = add nsw i32 %i.ge, 1                    ; 2 uses
  %i.gi = add nsw i32 %i.gg, 1                    ; 2 uses
  %i.gj = sitofp fast i32 %i.ge to float
  %i.gk = fsub fast float %i.fp, %i.gj            ; 3 uses
  %i.gl = sitofp fast i32 %i.gg to float
  %i.gm = fsub fast float %i.fu, %i.gl            ; 3 uses
  %i.gn = fsub fast float 1.000000e+00, %i.gk     ; 2 uses
  %i.go = fsub fast float 1.000000e+00, %i.gm     ; 2 uses
  %i.gp = icmp sgt i32 %i.ge, -1                  ; 2 uses
  %i.gq = icmp sgt i32 %i.gg, -1                  ; 2 uses
  %i.gr = select i1 %i.gp, i1 %i.gq, i1 false
  %i.gs = add nsw i32 %i.ga, -1
  %i.gt = icmp sgt i32 %i.gs, %i.gg               ; 2 uses
  %i.gu = select i1 %i.gp, i1 %i.gt, i1 false
  %i.gv = add nsw i32 %i.fx, -1
  %i.gw = icmp sgt i32 %i.gv, %i.ge               ; 2 uses
  %i.gx = select i1 %i.gw, i1 %i.gq, i1 false
  %i.gy = select i1 %i.gw, i1 %i.gt, i1 false
  %i.gz = fmul fast float %i.go, %i.gn
  %i.ha = fmul fast float %i.gn, %i.gm
  %i.hb = fmul fast float %i.go, %i.gk
  %i.hc = fmul fast float %i.gm, %i.gk
  br i1 %i.gr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hd = zext nneg i32 %i.ge to i64
  %i.he = mul i64 %i.bi, %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.he
  %i.hg = shl nsw i32 %i.gg, 2
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.hh
  %i.hj = load <4 x float>, ptr %i.hi, align 16, !tbaa !91
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.hk = phi fast <4 x float> [ %i.hj, %bb.o ], [ zeroinitializer, %bb.n ]
  br i1 %i.gu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hl = zext nneg i32 %i.ge to i64
  %i.hm = mul i64 %i.bi, %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.hm
  %i.ho = shl nsw i32 %i.gi, 2
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %i.hp
  %i.hr = load <4 x float>, ptr %i.hq, align 16, !tbaa !91
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.hs = phi fast <4 x float> [ %i.hr, %bb.q ], [ zeroinitializer, %bb.p ]
  br i1 %i.gx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ht = sext i32 %i.gh to i64
  %i.hu = mul i64 %i.bi, %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.hu
  %i.hw = shl nsw i32 %i.gg, 2
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.hx
  %i.hz = load <4 x float>, ptr %i.hy, align 16, !tbaa !91
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.ia = phi fast <4 x float> [ %i.hz, %bb.s ], [ zeroinitializer, %bb.r ]
  br i1 %i.gy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ib = sext i32 %i.gh to i64
  %i.ic = mul i64 %i.bi, %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ic
  %i.ie = shl nsw i32 %i.gi, 2
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.if
  %i.ih = load <4 x float>, ptr %i.ig, align 16, !tbaa !91
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ii = phi fast <4 x float> [ %i.ih, %bb.u ], [ zeroinitializer, %bb.t ]
  %i.ij = insertelement <4 x float> poison, float %i.gz, i64 0
  %i.ik = shufflevector <4 x float> %i.ij, <4 x float> poison, <4 x i32> zeroinitializer
  %i.il = fmul fast <4 x float> %i.hk, %i.ik
  %i.im = insertelement <4 x float> poison, float %i.ha, i64 0
  %i.in = shufflevector <4 x float> %i.im, <4 x float> poison, <4 x i32> zeroinitializer
  %i.io = fmul fast <4 x float> %i.hs, %i.in
  %i.ip = fadd fast <4 x float> %i.il, %i.io
  %i.iq = insertelement <4 x float> poison, float %i.hb, i64 0
  %i.ir = shufflevector <4 x float> %i.iq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.is = fmul fast <4 x float> %i.ia, %i.ir
  %i.it = fadd fast <4 x float> %i.ip, %i.is
  %i.iu = insertelement <4 x float> poison, float %i.hc, i64 0
  %i.iv = shufflevector <4 x float> %i.iu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iw = fmul fast <4 x float> %i.ii, %i.iv
  %i.ix = fadd fast <4 x float> %i.iw, %i.it      ; 2 uses
  %i.iy = load i8, ptr %8, align 1, !tbaa !76, !range !50, !noundef !51
  %i.iz = trunc nuw i8 %i.iy to i1
  br i1 %i.iz, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.ja = load ptr, ptr %14, align 8, !tbaa !18
  %i.jb = load i32, ptr %i.aa, align 4, !tbaa !55
  %i.jc = sext i32 %i.jb to i64
  %i.jd = mul nsw i64 %indvars.iv224, %i.jc
  %i.je = load i64, ptr %i.w, align 8, !tbaa !56
  %i.jf = mul i64 %i.jd, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jf
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !38
  %i.jj = insertelement <4 x float> poison, float %i.ji, i64 0
  %i.jk = shufflevector <4 x float> %i.jj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jl = fmul fast <4 x float> %i.jk, %i.ix
  br label %.critedge

.critedge:                                        ; preds = %bb.v, %bb.w, %bb.l, %bb.k, %bb.m
  %.1198 = phi nsz <4 x float> [ zeroinitializer, %bb.k ], [ zeroinitializer, %bb.m ], [ zeroinitializer, %bb.l ], [ %i.jl, %bb.w ], [ %i.ix, %bb.v ]
  store <4 x float> %.1198, ptr %.3204, align 16, !tbaa !91
  %i.jm = getelementptr inbounds nuw i8, ptr %.3204, i64 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jn = load i32, ptr %11, align 4, !tbaa !67   ; 2 uses
  %i.jo = sext i32 %i.jn to i64
  %i.jp = icmp slt i64 %indvars.iv.next, %i.jo
  br i1 %i.jp, label %bb.k, label %._crit_edge.loopexit, !llvm.loop !111

._crit_edge218:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge218, %bb.a
  ret void

bb.y:                                             ; preds = %bb.d
  %i.jq = landingpad { ptr, i32 }
          catch ptr null
  %i.jr = extractvalue { ptr, i32 } %i.jq, 0
  call void @__clang_call_terminate(ptr %i.jr) #18
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #10

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare !callback !112 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn20DeformableConv2D_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not207 = icmp sgt i32 %i.k, %i.j
  br i1 %.not207, label %._crit_edge209, label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph

_ZNK4ncnn3Mat7channelEi.exit.lr.ph:               ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 216 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 212 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 44 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 52
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 232
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 244
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 228
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 236
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 224
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 220
  %i.at = load i32, ptr %i.q, align 8, !tbaa !45  ; 3 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %_ZNK4ncnn3Mat7channelEi.exit.preheader, label %._crit_edge209

_ZNK4ncnn3Mat7channelEi.exit.preheader:           ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph
  %i.av = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.aw = phi i32 [ %i.j, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.by, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.ax = phi i32 [ %i.at, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.bz, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.ay = phi i32 [ %i.at, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.ca, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv220 = phi i64 [ %i.av, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %indvars.iv.next221, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !18, !noalias !114
  %i.ba = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !114
  %i.bb = mul i64 %i.ba, %indvars.iv220
  %i.bc = load i64, ptr %i.n, align 8, !tbaa !56, !noalias !114 ; 2 uses
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 4 uses
  %i.bf = icmp sgt i32 %i.ay, 0
  br i1 %i.bf, label %.preheader193.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader193.lr.ph:                              ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.bg = load i32, ptr %i.l, align 4, !tbaa !55, !noalias !114
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul i64 %i.bc, %i.bh                    ; 4 uses
  %i.bj = load i32, ptr %i.r, align 4, !tbaa !44  ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.preheader193.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader193.preheader:                          ; preds = %.preheader193.lr.ph
  %i.bl = load ptr, ptr %4, align 8, !tbaa !18
  %i.bm = load i32, ptr %5, align 4, !tbaa !67
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul nsw i64 %indvars.iv220, %i.bn
  %i.bp = load i32, ptr %i.o, align 4, !tbaa !55
  %i.bq = sext i32 %i.bp to i64
  %i.br = mul nsw i64 %i.bo, %i.bq
  %i.bs = load i64, ptr %i.p, align 8, !tbaa !56
  %i.bt = mul i64 %i.br, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bt
  br label %.preheader193

.preheader193:                                    ; preds = %.preheader193.preheader, %._crit_edge
  %i.bv = phi i32 [ %i.cc, %._crit_edge ], [ %i.ax, %.preheader193.preheader ]
  %i.bw = phi i32 [ %i.cd, %._crit_edge ], [ %i.bj, %.preheader193.preheader ] ; 3 uses
  %.0108206 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %i.bu, %.preheader193.preheader ] ; 2 uses
  %.0109205 = phi i32 [ %i.ce, %._crit_edge ], [ 0, %.preheader193.preheader ] ; 3 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.noexc146, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit.loopexit:                   ; preds = %._crit_edge
  %.pre223 = load i32, ptr %i.b, align 4, !tbaa !67
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.preheader193.lr.ph, %_ZN4ncnn3MatD2Ev.exit.loopexit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.by = phi i32 [ %i.aw, %_ZNK4ncnn3Mat7channelEi.exit ], [ %.pre223, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.aw, %.preheader193.lr.ph ] ; 2 uses
  %i.bz = phi i32 [ %i.ax, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.cc, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.ax, %.preheader193.lr.ph ]
  %i.ca = phi i32 [ %i.ay, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.cc, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.ay, %.preheader193.lr.ph ]
  %indvars.iv.next221 = add nsw i64 %indvars.iv220, 1
  %i.cb = sext i32 %i.by to i64
  %.not.not = icmp slt i64 %indvars.iv220, %i.cb
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge209, !llvm.loop !117

._crit_edge.loopexit:                             ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %.pre = load i32, ptr %i.q, align 8, !tbaa !45
  br label %._crit_edge

end_hunk_0
begin_hunk_1_@_ZN4ncnnL23deformableconv2d_packedERKSt6vectorINS_3MatESaIS1_EERS1_RKS1_S8_iiiiiiiiiS8_RKNS_6OptionE.omp_outlined:bb.a
  %i.kh = fadd fast <4 x float> %i.kg, %i.kc
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ki = phi <4 x float> [ %i.kh, %bb.r ], [ %i.kc, %bb.q ] ; 2 uses
  br i1 %.0253.us, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %indvars.iv
  %i.kk = load float, ptr %i.kj, align 1, !tbaa !91
  %.scalar740 = fmul fast float %i.kk, %.0257.us
  %i.kl = insertelement <4 x float> poison, float %.scalar740, i64 0
  %i.km = shufflevector <4 x float> %i.kl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kn = fadd fast <4 x float> %i.km, %i.ki
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0614.us.us = phi nsz <4 x float> [ %i.ki, %bb.s ], [ %i.kn, %bb.t ] ; 2 uses
  %i.ko = fmul fast <4 x float> %.0614.us.us, %i.ml
  %.1615.us.us = select nsz i1 %i.cc, <4 x float> %i.ko, <4 x float> %.0614.us.us
  %i.kp = load <4 x float>, ptr %.3636.us.us, align 16, !tbaa !91
  %i.kq = fmul fast <4 x float> %.1615.us.us, %i.kp
  %i.kr = fadd fast <4 x float> %i.kq, %.5623635.us.us ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.3636.us.us, i64 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit632.us.loopexit, label %.lr.ph.split.us.us, !llvm.loop !150

.lr.ph643.us:                                     ; preds = %.preheader.us
  %i.kt = mul nsw i32 %i.jb, %.1252.us
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.ku
  %i.kw = mul nsw i32 %i.jb, %.1250.us
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.kx
  %i.kz = mul nsw i32 %i.jb, %.1248.us
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.la
  %i.lc = mul nsw i32 %i.jb, %.1246.us
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.ld
  br i1 %i.ir, label %.lr.ph643.split.us.us.preheader, label %.lr.ph643.split.us679.preheader

.lr.ph643.split.us679.preheader:                  ; preds = %.lr.ph643.us
  %scevgep704 = getelementptr i8, ptr %.4.us, i64 4
  %i.lf = add nsw i32 %i.jb, -1
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = shl nuw nsw i64 %i.lg, 2
  %scevgep705 = getelementptr i8, ptr %scevgep704, i64 %i.lh
  br label %.loopexit.us

.lr.ph643.split.us.us.preheader:                  ; preds = %.lr.ph643.us
  %wide.trip.count711 = zext nneg i32 %i.jb to i64
  br label %.lr.ph643.split.us.us

.lr.ph643.split.us.us:                            ; preds = %.lr.ph643.split.us.us.preheader, %bb.ac
  %indvars.iv706 = phi i64 [ 0, %.lr.ph643.split.us.us.preheader ], [ %indvars.iv.next707, %bb.ac ] ; 5 uses
  %.5641.us.us = phi ptr [ %.4.us, %.lr.ph643.split.us.us.preheader ], [ %i.me, %bb.ac ] ; 2 uses
  %.4233640.us.us = phi float [ %.3232650.us, %.lr.ph643.split.us.us.preheader ], [ %i.md, %bb.ac ]
  br i1 %.0256.us, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph643.split.us.us
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv706
  %i.lj = load float, ptr %i.li, align 4, !tbaa !38
  %i.lk = fmul fast float %i.lj, %.0242.us
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph643.split.us.us
  %i.ll = phi float [ %i.lk, %bb.v ], [ 0.000000e+00, %.lr.ph643.split.us.us ] ; 2 uses
  br i1 %.0255.us, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv706
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !38
  %i.lo = fmul fast float %i.ln, %.0243.us
  %i.lp = fadd fast float %i.lo, %i.ll
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.lq = phi float [ %i.lp, %bb.x ], [ %i.ll, %bb.w ] ; 2 uses
  br i1 %.0254.us, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv706
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !38
  %i.lt = fmul fast float %i.ls, %.0244.us
  %i.lu = fadd fast float %i.lt, %i.lq
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.lv = phi float [ %i.lu, %bb.z ], [ %i.lq, %bb.y ] ; 2 uses
  br i1 %.0253.us, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv706
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !38
  %i.ly = fmul fast float %i.lx, %.0257.us
  %i.lz = fadd fast float %i.ly, %i.lv
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0224.us.us = phi nsz float [ %i.lv, %bb.aa ], [ %i.lz, %bb.ab ] ; 2 uses
  %i.ma = fmul fast float %.0224.us.us, %.1241.us
  %.1.us.us = select nsz i1 %i.bw, float %i.ma, float %.0224.us.us
  %i.mb = load float, ptr %.5641.us.us, align 4, !tbaa !38
  %i.mc = fmul fast float %.1.us.us, %i.mb
  %i.md = fadd fast float %i.mc, %.4233640.us.us  ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.5641.us.us, i64 4
  %indvars.iv.next707 = add nuw nsw i64 %indvars.iv706, 1 ; 2 uses
  %exitcond712.not = icmp eq i64 %indvars.iv.next707, %wide.trip.count711
  br i1 %exitcond712.not, label %.loopexit.us.loopexit, label %.lr.ph643.split.us.us, !llvm.loop !151

_ZN4ncnn3MatD2Ev.exit.lr.ph.us:                   ; preds = %.thread626.us
  %i.mf = load ptr, ptr %25, align 8, !tbaa !18, !noalias !152
  %i.mg = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !152
  %i.mh = load i64, ptr %i.u, align 8, !tbaa !56, !noalias !152
  %factor.op.mul.us = mul i64 %i.mg, %i.mh
  %i.mi = load i32, ptr %12, align 4, !tbaa !67   ; 2 uses
  %i.mj = icmp eq i32 %i.mi, 4
  %i.mk = insertelement <4 x float> poison, float %.1241.us, i64 0
  %i.ml = shufflevector <4 x float> %i.mk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mm = icmp eq i32 %i.mi, 1
  br label %_ZN4ncnn3MatD2Ev.exit.us

._crit_edge659.us:                                ; preds = %._crit_edge.us
  %indvars.iv.next724 = add nuw nsw i64 %indvars.iv723, 1 ; 2 uses
  %exitcond727.not = icmp eq i64 %indvars.iv.next724, %wide.trip.count726
  br i1 %exitcond727.not, label %._crit_edge667, label %.preheader633.us, !llvm.loop !155

._crit_edge667:                                   ; preds = %._crit_edge659.us, %.preheader633.lr.ph, %bb.e
  %.2620.lcssa = phi <4 x float> [ %.1619, %bb.e ], [ %.1619, %.preheader633.lr.ph ], [ %.4622.lcssa.us, %._crit_edge659.us ] ; 10 uses
  %.1230.lcssa = phi float [ %.0229, %bb.e ], [ %.0229, %.preheader633.lr.ph ], [ %.3232.lcssa.us, %._crit_edge659.us ] ; 13 uses
  %i.mn = load i32, ptr %12, align 4, !tbaa !67   ; 2 uses
  %i.mo = icmp eq i32 %i.mn, 4
  br i1 %i.mo, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %._crit_edge667
  %i.mp = load i32, ptr %27, align 4, !tbaa !67
  switch i32 %i.mp, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ae
    i32 2, label %.noexc334
    i32 3, label %bb.af
    i32 4, label %.noexc335
    i32 5, label %.noexc336
    i32 6, label %bb.ag
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.mq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.2620.lcssa, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc334:                                        ; preds = %bb.ad
  %i.mr = load ptr, ptr %28, align 8, !tbaa !18
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !38
  %i.mt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.2620.lcssa)
  %i.mu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.2620.lcssa)
  %i.mv = insertelement <4 x float> poison, float %i.ms, i64 0
  %i.mw = shufflevector <4 x float> %i.mv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mx = fmul fast <4 x float> %i.mw, %i.mu
  %i.my = fadd fast <4 x float> %i.mx, %i.mt
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.af:                                            ; preds = %bb.ad
  %i.mz = load ptr, ptr %28, align 8, !tbaa !18   ; 2 uses
  %i.na = load float, ptr %i.mz, align 4, !tbaa !38
  %i.nb = insertelement <4 x float> poison, float %i.na, i64 0
  %i.nc = shufflevector <4 x float> %i.nb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !38
  %i.nf = insertelement <4 x float> poison, float %i.ne, i64 0
  %i.ng = shufflevector <4 x float> %i.nf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.2620.lcssa, <4 x float> nofpclass(nan inf) %i.nc)
  %i.ni = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nh, <4 x float> nofpclass(nan inf) %i.ng)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc335:                                        ; preds = %bb.ad
  %i.nj = fneg fast <4 x float> %.2620.lcssa
  %i.nk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nj, <4 x float> splat (float f0x42B0C0A5))
  %i.nl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nk, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.nm = fmul fast <4 x float> %i.nl, splat (float f0x3FB8AA3B)
  %i.nn = fadd fast <4 x float> %i.nm, splat (float 5.000000e-01) ; 2 uses
  %i.no = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nn)
  %i.np = sitofp fast <4 x i32> %i.no to <4 x float> ; 2 uses
  %i.nq = fcmp fast olt <4 x float> %i.nn, %i.np
  %i.nr = select <4 x i1> %i.nq, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ns = fsub fast <4 x float> %i.np, %i.nr      ; 2 uses
  %i.nt = fmul fast <4 x float> %i.ns, splat (float f0x3F317218)
  %i.nu = fsub fast <4 x float> %i.nl, %i.nt      ; 8 uses
  %i.nv = fmul fast <4 x float> %i.nu, %i.nu
  %i.nw = fmul fast <4 x float> %i.nu, splat (float f0x39506967)
  %i.nx = fadd fast <4 x float> %i.nw, splat (float f0x3AB743CE)
  %i.ny = fmul fast <4 x float> %i.nx, %i.nu
  %i.nz = fadd fast <4 x float> %i.ny, splat (float f0x3C088908)
  %i.oa = fmul fast <4 x float> %i.nz, %i.nu
  %i.ob = fadd fast <4 x float> %i.oa, splat (float f0x3D2AA9C1)
  %i.oc = fmul fast <4 x float> %i.ob, %i.nu
  %i.od = fadd fast <4 x float> %i.oc, splat (float f0x3E2AAAAA)
  %i.oe = fmul fast <4 x float> %i.od, %i.nu
  %i.of = fadd fast <4 x float> %i.oe, splat (float 5.000000e-01)
  %i.og = fmul fast <4 x float> %i.nv, %i.of
  %i.oh = fadd fast <4 x float> %i.nu, %i.og
  %i.oi = fadd fast <4 x float> %i.oh, splat (float 1.000000e+00)
  %i.oj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ns)
  %i.ok = shl <4 x i32> %i.oj, splat (i32 23)
  %i.ol = add <4 x i32> %i.ok, splat (i32 1065353216)
  %i.om = bitcast <4 x i32> %i.ol to <4 x float>
  %i.on = fmul fast <4 x float> %i.oi, %i.om
  %i.oo = fadd fast <4 x float> %i.on, splat (float 1.000000e+00)
  %i.op = fdiv fast <4 x float> splat (float 1.000000e+00), %i.oo
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc336:                                        ; preds = %bb.ad
  %i.oq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.2620.lcssa, <4 x float> splat (float f0x42B0C0A5))
  %i.or = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.oq, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.os = fmul fast <4 x float> %i.or, splat (float f0x3FB8AA3B)
  %i.ot = fadd fast <4 x float> %i.os, splat (float 5.000000e-01) ; 2 uses
  %i.ou = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ot)
  %i.ov = sitofp fast <4 x i32> %i.ou to <4 x float> ; 2 uses
  %i.ow = fcmp fast olt <4 x float> %i.ot, %i.ov
  %i.ox = select <4 x i1> %i.ow, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.oy = fsub fast <4 x float> %i.ov, %i.ox      ; 2 uses
  %i.oz = fmul fast <4 x float> %i.oy, splat (float f0x3F317218)
  %i.pa = fsub fast <4 x float> %i.or, %i.oz      ; 8 uses
  %i.pb = fmul fast <4 x float> %i.pa, %i.pa
  %i.pc = fmul fast <4 x float> %i.pa, splat (float f0x39506967)
  %i.pd = fadd fast <4 x float> %i.pc, splat (float f0x3AB743CE)
  %i.pe = fmul fast <4 x float> %i.pd, %i.pa
  %i.pf = fadd fast <4 x float> %i.pe, splat (float f0x3C088908)
  %i.pg = fmul fast <4 x float> %i.pf, %i.pa
  %i.ph = fadd fast <4 x float> %i.pg, splat (float f0x3D2AA9C1)
  %i.pi = fmul fast <4 x float> %i.ph, %i.pa
  %i.pj = fadd fast <4 x float> %i.pi, splat (float f0x3E2AAAAA)
  %i.pk = fmul fast <4 x float> %i.pj, %i.pa
  %i.pl = fadd fast <4 x float> %i.pk, splat (float 5.000000e-01)
  %i.pm = fmul fast <4 x float> %i.pb, %i.pl
  %i.pn = fadd fast <4 x float> %i.pa, %i.pm
  %i.po = fadd fast <4 x float> %i.pn, splat (float 1.000000e+00)
  %i.pp = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.oy)
  %i.pq = shl <4 x i32> %i.pp, splat (i32 23)
  %i.pr = add <4 x i32> %i.pq, splat (i32 1065353216)
  %i.ps = bitcast <4 x i32> %i.pr to <4 x float>
  %i.pt = fmul fast <4 x float> %i.po, %i.ps
  %i.pu = fadd fast <4 x float> %i.pt, splat (float 1.000000e+00) ; 2 uses
  %i.pv = fcmp fast ole <4 x float> %i.pu, zeroinitializer
  %i.pw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.pu, <4 x float> splat (float f0x00800000))
  %i.px = bitcast <4 x float> %i.pw to <4 x i32>  ; 2 uses
  %i.py = lshr <4 x i32> %i.px, splat (i32 23)
  %i.pz = and <4 x i32> %i.px, splat (i32 -2139095041)
  %i.qa = or disjoint <4 x i32> %i.pz, splat (i32 1056964608)
  %i.qb = bitcast <4 x i32> %i.qa to <4 x float>  ; 3 uses
  %i.qc = add nsw <4 x i32> %i.py, splat (i32 -127)
  %i.qd = sitofp fast <4 x i32> %i.qc to <4 x float> ; 2 uses
  %i.qe = fadd fast <4 x float> %i.qd, splat (float 1.000000e+00)
  %i.qf = fcmp fast olt <4 x float> %i.qb, splat (float f0x3F3504F3) ; 2 uses
  %i.qg = select <4 x i1> %i.qf, <4 x float> %i.qb, <4 x float> zeroinitializer
  %i.qh = fadd fast <4 x float> %i.qb, splat (float -1.000000e+00)
  %i.qi = select fast <4 x i1> %i.qf, <4 x float> %i.qd, <4 x float> %i.qe
  %i.qj = fadd fast <4 x float> %i.qh, %i.qg      ; 12 uses
  %i.qk = fmul fast <4 x float> %i.qj, %i.qj      ; 2 uses
  %i.ql = fmul fast <4 x float> %i.qj, splat (float f0x3D9021BB)
  %i.qm = fadd fast <4 x float> %i.ql, splat (float f0xBDEBD1B8)
  %i.qn = fmul fast <4 x float> %i.qm, %i.qj
  %i.qo = fadd fast <4 x float> %i.qn, splat (float f0x3DEF251A)
  %i.qp = fmul fast <4 x float> %i.qo, %i.qj
  %i.qq = fadd fast <4 x float> %i.qp, splat (float f0xBDFE5D4F)
  %i.qr = fmul fast <4 x float> %i.qq, %i.qj
  %i.qs = fadd fast <4 x float> %i.qr, splat (float f0x3E11E9BF)
  %i.qt = fmul fast <4 x float> %i.qs, %i.qj
  %i.qu = fadd fast <4 x float> %i.qt, splat (float f0xBE2AAE50)
  %i.qv = fmul fast <4 x float> %i.qu, %i.qj
  %i.qw = fadd fast <4 x float> %i.qv, splat (float f0x3E4CCEAC)
  %i.qx = fmul fast <4 x float> %i.qw, %i.qj
  %i.qy = fadd fast <4 x float> %i.qx, splat (float f0xBE7FFFFC)
  %i.qz = fmul fast <4 x float> %i.qy, %i.qj
  %i.ra = fadd fast <4 x float> %i.qz, splat (float f0x3EAAAAAA)
  %i.rb = fmul fast <4 x float> %i.qk, %i.qj
  %reass.mul.a = fmul fast <4 x float> %i.rb, %i.ra
  %.neg629 = fmul fast <4 x float> %i.qk, splat (float -5.000000e-01)
  %reass.mul631 = fmul fast <4 x float> %i.qi, splat (float f0x3F317218)
  %29 = fadd fast <4 x float> %i.qj, %.neg629
  %i.rc = fadd fast <4 x float> %reass.mul.a, %29
  %i.rd = fadd fast <4 x float> %i.rc, %reass.mul631
  %.neg = fmul fast <4 x float> %i.rd, splat (float -2.000000e+00)
  %i.re = select fast <4 x i1> %i.pv, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.rf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.re, <4 x float> splat (float f0x42B0C0A5))
  %i.rg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.rf, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.rh = fmul fast <4 x float> %i.rg, splat (float f0x3FB8AA3B)
  %i.ri = fadd fast <4 x float> %i.rh, splat (float 5.000000e-01) ; 2 uses
  %i.rj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ri)
  %i.rk = sitofp fast <4 x i32> %i.rj to <4 x float> ; 2 uses
  %i.rl = fcmp fast olt <4 x float> %i.ri, %i.rk
  %i.rm = select <4 x i1> %i.rl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.rn = fsub fast <4 x float> %i.rk, %i.rm      ; 2 uses
  %i.ro = fmul fast <4 x float> %i.rn, splat (float f0x3F317218)
  %i.rp = fsub fast <4 x float> %i.rg, %i.ro      ; 8 uses
  %i.rq = fmul fast <4 x float> %i.rp, %i.rp
  %i.rr = fmul fast <4 x float> %i.rp, splat (float f0x39506967)
  %i.rs = fadd fast <4 x float> %i.rr, splat (float f0x3AB743CE)
  %i.rt = fmul fast <4 x float> %i.rs, %i.rp
  %i.ru = fadd fast <4 x float> %i.rt, splat (float f0x3C088908)
  %i.rv = fmul fast <4 x float> %i.ru, %i.rp
  %i.rw = fadd fast <4 x float> %i.rv, splat (float f0x3D2AA9C1)
  %i.rx = fmul fast <4 x float> %i.rw, %i.rp
  %i.ry = fadd fast <4 x float> %i.rx, splat (float f0x3E2AAAAA)
  %i.rz = fmul fast <4 x float> %i.ry, %i.rp
  %i.sa = fadd fast <4 x float> %i.rz, splat (float 5.000000e-01)
  %i.sb = fmul fast <4 x float> %i.rq, %i.sa
  %i.sc = fadd fast <4 x float> %i.rp, %i.sb
  %i.sd = fadd fast <4 x float> %i.sc, splat (float 1.000000e+00)
  %i.se = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rn)
  %i.sf = shl <4 x i32> %i.se, splat (i32 23)
  %i.sg = add <4 x i32> %i.sf, splat (i32 1065353216)
  %i.sh = bitcast <4 x i32> %i.sg to <4 x float>
  %i.si = fmul fast <4 x float> %i.sd, %i.sh
  %i.sj = fadd fast <4 x float> %i.si, splat (float 1.000000e+00)
  %i.sk = fdiv fast <4 x float> splat (float 2.000000e+00), %i.sj
  %i.sl = fadd fast <4 x float> %i.sk, splat (float -1.000000e+00)
  %i.sm = fmul fast <4 x float> %i.sl, %.2620.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.ag:                                            ; preds = %bb.ad
  %i.sn = load ptr, ptr %28, align 8, !tbaa !18   ; 2 uses
  %i.so = load float, ptr %i.sn, align 4, !tbaa !38
  %i.sp = insertelement <4 x float> poison, float %i.so, i64 0
  %i.sq = shufflevector <4 x float> %i.sp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sn, i64 4
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !38
  %i.st = insertelement <4 x float> poison, float %i.ss, i64 0
  %i.su = shufflevector <4 x float> %i.st, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sv = fmul fast <4 x float> %i.sq, %.2620.lcssa
  %i.sw = fadd fast <4 x float> %i.sv, %i.su
  %i.sx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.sw, <4 x float> zeroinitializer)
  %i.sy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.sx, <4 x float> splat (float 1.000000e+00))
  %i.sz = fmul fast <4 x float> %i.sy, %.2620.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.ag, %.noexc336, %.noexc335, %bb.af, %.noexc334, %bb.ae, %bb.ad
  %.0.i = phi nsz <4 x float> [ %i.sz, %bb.ag ], [ %i.mq, %bb.ae ], [ %i.my, %.noexc334 ], [ %i.ni, %bb.af ], [ %i.op, %.noexc335 ], [ %i.sm, %.noexc336 ], [ %.2620.lcssa, %bb.ad ]
  %i.ta = load i32, ptr %3, align 4, !tbaa !67
  %i.tb = mul nsw i32 %i.ta, %i.ae
  %i.tc = add nsw i32 %i.tb, %i.aj
  %i.td = shl nsw i32 %i.tc, 2
  %i.te = sext i32 %i.td to i64
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.te
  store <4 x float> %.0.i, ptr %i.tf, align 16, !tbaa !91
  %.pr = load i32, ptr %12, align 4, !tbaa !67
  br label %bb.ah

bb.ah:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %._crit_edge667
  %i.tg = phi i32 [ %.pr, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.mn, %._crit_edge667 ]
  %i.th = icmp eq i32 %i.tg, 1
  br i1 %i.th, label %bb.ai, label %bb.as

bb.ai:                                            ; preds = %bb.ah
  %i.ti = load i32, ptr %27, align 4, !tbaa !67
  switch i32 %i.ti, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.aj
    i32 2, label %bb.ak
    i32 3, label %bb.al
    i32 4, label %bb.an
    i32 5, label %bb.ao
    i32 6, label %bb.ap
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.tj = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.1230.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ak:                                            ; preds = %bb.ai
  %i.tk = load ptr, ptr %28, align 8, !tbaa !18
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !38
  %i.tm = fcmp fast ogt float %.1230.lcssa, 0.000000e+00
  %i.tn = select fast i1 %i.tm, float 1.000000e+00, float %i.tl
  %i.to = fmul fast float %i.tn, %.1230.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.al:                                            ; preds = %bb.ai
  %i.tp = load ptr, ptr %28, align 8, !tbaa !18   ; 2 uses
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !38
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tp, i64 4
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !38 ; 2 uses
  %.0616 = call nnan ninf nsz float @llvm.maxnum.f32(float %.1230.lcssa, float %i.tq) ; 2 uses
  %i.tt = fcmp fast ogt float %.0616, %i.ts
  br i1 %i.tt, label %bb.am, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.am:                                            ; preds = %bb.al
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.an:                                            ; preds = %bb.ai
  %.sroa.speculated503 = call nnan ninf nsz float @llvm.minnum.f32(float %.1230.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated503, float f0xC2B0C0A5)
  %i.tu = fneg fast float %.sroa.speculated
  %i.tv = call fast float @llvm.exp.f32(float %i.tu)
  %i.tw = fadd fast float %i.tv, 1.000000e+00
  %i.tx = fdiv fast float 1.000000e+00, %i.tw
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ao:                                            ; preds = %bb.ai
  %i.ty = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.1230.lcssa)
  %i.tz = fadd fast float %i.ty, 1.000000e+00
  %i.ua = call fast float @llvm.log.f32(float %i.tz)
  %i.ub = call fast float @llvm.tanh.f32(float %i.ua)
  %i.uc = fmul fast float %i.ub, %.1230.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ap:                                            ; preds = %bb.ai
  %i.ud = load ptr, ptr %28, align 8, !tbaa !18   ; 2 uses
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !38 ; 3 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ud, i64 4
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !38 ; 2 uses
  %i.uh = fneg fast float %i.ug
  %i.ui = fdiv fast float %i.uh, %i.ue            ; 2 uses
  %i.uj = fcmp fast olt float %.1230.lcssa, %i.ui
  br i1 %i.uj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.uk = fdiv fast float 1.000000e+00, %i.ue
  %i.ul = fadd fast float %i.ui, %i.uk
  %i.um = fcmp fast ogt float %.1230.lcssa, %i.ul
  br i1 %i.um, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.un = fmul fast float %i.ue, %.1230.lcssa
  %i.uo = fadd fast float %i.un, %i.ug
  %i.up = fmul fast float %i.uo, %.1230.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.ar, %bb.aq, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ap
  %.1617 = phi nsz float [ %.1230.lcssa, %bb.ai ], [ %i.tj, %bb.aj ], [ %i.to, %bb.ak ], [ %i.ts, %bb.am ], [ %.0616, %bb.al ], [ %i.tx, %bb.an ], [ %i.uc, %bb.ao ], [ %i.up, %bb.ar ], [ %.1230.lcssa, %bb.aq ], [ 0.000000e+00, %bb.ap ]
  %i.uq = load i32, ptr %3, align 4, !tbaa !67
  %i.ur = sext i32 %i.uq to i64
  %i.us = mul nsw i64 %indvars.iv734, %i.ur
  %i.ut = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.us
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %indvars.iv731
  store float %.1617, ptr %i.uu, align 4, !tbaa !38
  br label %bb.as

bb.as:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit, %bb.ah
  %indvars.iv.next729 = add nuw nsw i64 %indvars.iv728, 1 ; 2 uses
  %i.uv = load i32, ptr %8, align 4, !tbaa !67    ; 2 uses
  %i.uw = sext i32 %i.uv to i64
  %i.ux = icmp slt i64 %indvars.iv.next729, %i.uw
  br i1 %i.ux, label %.noexc326, label %._crit_edge.loopexit, !llvm.loop !156

._crit_edge689:                                   ; preds = %._crit_edge685, %.preheader634.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge689, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #10

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_1
