inline.NumInlined: 20
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK4ncnn24DeformableConv2D_x86_avx7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined:bb.a

.lr.ph:                                           ; preds = %.preheader
  %i.ed = mul i64 %i.dw, %indvars.iv224           ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.ed
  %i.eg = trunc nsw i64 %indvars.iv224 to i32
  %i.eh = insertelement <2 x i32> poison, i32 %i.eg, i64 1
  br label %bb.k

._crit_edge207:                                   ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN4ncnn3Mat7channelEi.exit
  %.2.lcssa = phi ptr [ %.1211, %_ZN4ncnn3Mat7channelEi.exit ], [ %.1211, %.preheader.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.ei = load ptr, ptr %i.v, align 8, !tbaa !11  ; 2 uses
  %.not.i = icmp eq ptr %i.ei, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit113, label %bb.e

bb.e:                                             ; preds = %._crit_edge207
  %i.ej = atomicrmw add ptr %i.ei, i32 -1 acq_rel, align 4
  %i.ek = icmp eq i32 %i.ej, 1
  br i1 %i.ek, label %bb.f, label %_ZN4ncnn3MatD2Ev.exit113

bb.f:                                             ; preds = %bb.e
  %i.el = load ptr, ptr %i.y, align 8, !tbaa !17  ; 3 uses
  %.not3.i = icmp eq ptr %i.el, null
  %i.em = load ptr, ptr %14, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !9
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8
  invoke void %i.ep(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef %i.em)
          to label %_ZN4ncnn3MatD2Ev.exit113 unwind label %bb.j, !inline_history !19

bb.h:                                             ; preds = %bb.f
  %.not.i133 = icmp eq ptr %i.em, null
  br i1 %.not.i133, label %_ZN4ncnn3MatD2Ev.exit113, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.em) #9
  br label %_ZN4ncnn3MatD2Ev.exit113

bb.j:                                             ; preds = %bb.g
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @__clang_call_terminate(ptr %i.er) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit113:                         ; preds = %bb.e, %._crit_edge207, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  %i.es = add nuw nsw i32 %.0104209, 1            ; 2 uses
  %i.et = load i32, ptr %i.r, align 4, !tbaa !44  ; 3 uses
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %.noexc138, label %._crit_edge212.loopexit, !llvm.loop !117

._crit_edge.loopexit:                             ; preds = %.critedge
  %.pre = load i32, ptr %10, align 4, !tbaa !68
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ev = phi i32 [ %i.ea, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.ew = phi i32 [ %i.eb, %.preheader ], [ %i.jm, %._crit_edge.loopexit ]
  %.3.lcssa = phi ptr [ %.2206, %.preheader ], [ %i.jl, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %i.ex = sext i32 %i.ev to i64
  %i.ey = icmp slt i64 %indvars.iv.next225, %i.ex
  br i1 %i.ey, label %.preheader, label %._crit_edge207, !llvm.loop !118

bb.k:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 5 uses
  %.3204 = phi ptr [ %.2206, %.lr.ph ], [ %i.jl, %.critedge ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !38
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !38
  %i.fd = load i32, ptr %i.an, align 4, !tbaa !89
  %i.fe = trunc nsw i64 %indvars.iv to i32
  %i.ff = load i32, ptr %i.ap, align 4, !tbaa !86
  %i.fg = load <2 x i32>, ptr %i.ao, align 4, !tbaa !68
  %i.fh = insertelement <2 x i32> %i.eh, i32 %i.fe, i64 0
  %i.fi = mul nsw <2 x i32> %i.fg, %i.fh
  %i.fj = insertelement <2 x i32> poison, i32 %i.ff, i64 0
  %i.fk = insertelement <2 x i32> %i.fj, i32 %i.fd, i64 1
  %i.fl = sub <2 x i32> %i.fi, %i.fk
  %i.fm = load <2 x i32>, ptr %i.aq, align 4, !tbaa !68
  %i.fn = mul nsw <2 x i32> %i.fm, %i.dz
  %i.fo = add nsw <2 x i32> %i.fl, %i.fn
  %i.fp = sitofp <2 x i32> %i.fo to <2 x float>
  %i.fq = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.fr = insertelement <2 x float> %i.fq, float %i.fa, i64 1
  %i.fs = fadd fast <2 x float> %i.fr, %i.fp      ; 5 uses
  %i.ft = extractelement <2 x float> %i.fs, i64 1 ; 2 uses
  %i.fu = fcmp fast ogt float %i.ft, -1.000000e+00
  %i.fv = extractelement <2 x float> %i.fs, i64 0 ; 2 uses
  %i.fw = fcmp fast ogt float %i.fv, -1.000000e+00
  %or.cond = select i1 %i.fu, i1 %i.fw, i1 false
  br i1 %or.cond, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.fx = load i32, ptr %12, align 4, !tbaa !68   ; 2 uses
  %i.fy = sitofp fast i32 %i.fx to float
  %i.fz = fcmp fast olt float %i.ft, %i.fy
  br i1 %i.fz, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ga = load i32, ptr %13, align 4, !tbaa !68   ; 2 uses
  %i.gb = sitofp fast i32 %i.ga to float
  %i.gc = fcmp fast olt float %i.fv, %i.gb
  br i1 %i.gc, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.gd = call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.fs)
  %i.ge = fptosi <2 x float> %i.gd to <2 x i32>   ; 3 uses
  %i.gf = extractelement <2 x i32> %i.ge, i64 1   ; 5 uses
  %i.gg = add nsw i32 %i.gf, 1                    ; 2 uses
  %i.gh = extractelement <2 x i32> %i.ge, i64 0   ; 5 uses
  %i.gi = add nsw i32 %i.gh, 1                    ; 2 uses
  %i.gj = sitofp <2 x i32> %i.ge to <2 x float>   ; 2 uses
  %foldExtExtBinop = fsub fast <2 x float> %i.fs, %i.gj
  %i.gk = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 3 uses
  %foldExtExtBinop266 = fsub fast <2 x float> %i.fs, %i.gj
  %i.gl = extractelement <2 x float> %foldExtExtBinop266, i64 0 ; 3 uses
  %i.gm = fsub fast float 1.000000e+00, %i.gk     ; 2 uses
  %i.gn = fsub fast float 1.000000e+00, %i.gl     ; 2 uses
  %i.go = icmp sgt i32 %i.gf, -1                  ; 2 uses
  %i.gp = icmp sgt i32 %i.gh, -1                  ; 2 uses
  %i.gq = select i1 %i.go, i1 %i.gp, i1 false
  %i.gr = add nsw i32 %i.ga, -1
  %i.gs = icmp sgt i32 %i.gr, %i.gh               ; 2 uses
  %i.gt = select i1 %i.go, i1 %i.gs, i1 false
  %i.gu = add nsw i32 %i.fx, -1
  %i.gv = icmp sgt i32 %i.gu, %i.gf               ; 2 uses
  %i.gw = select i1 %i.gv, i1 %i.gp, i1 false
  %i.gx = select i1 %i.gv, i1 %i.gs, i1 false
  %i.gy = fmul fast float %i.gn, %i.gm
  %i.gz = fmul fast float %i.gm, %i.gl
  %i.ha = fmul fast float %i.gn, %i.gk
  %i.hb = fmul fast float %i.gl, %i.gk
  br i1 %i.gq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hc = zext nneg i32 %i.gf to i64
  %i.hd = mul i64 %i.bg, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.hd
  %i.hf = shl nsw i32 %i.gh, 3
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.hg
  %i.hi = load <8 x float>, ptr %i.hh, align 32, !tbaa !97
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.hj = phi fast <8 x float> [ %i.hi, %bb.o ], [ zeroinitializer, %bb.n ]
  br i1 %i.gt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hk = zext nneg i32 %i.gf to i64
  %i.hl = mul i64 %i.bg, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.hl
  %i.hn = shl nsw i32 %i.gi, 3
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.ho
  %i.hq = load <8 x float>, ptr %i.hp, align 32, !tbaa !97
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.hr = phi fast <8 x float> [ %i.hq, %bb.q ], [ zeroinitializer, %bb.p ]
  br i1 %i.gw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hs = sext i32 %i.gg to i64
  %i.ht = mul i64 %i.bg, %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ht
  %i.hv = shl nsw i32 %i.gh, 3
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.hw
  %i.hy = load <8 x float>, ptr %i.hx, align 32, !tbaa !97
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.hz = phi fast <8 x float> [ %i.hy, %bb.s ], [ zeroinitializer, %bb.r ]
  br i1 %i.gx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ia = sext i32 %i.gg to i64
  %i.ib = mul i64 %i.bg, %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ib
  %i.id = shl nsw i32 %i.gi, 3
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %i.ie
  %i.ig = load <8 x float>, ptr %i.if, align 32, !tbaa !97
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ih = phi fast <8 x float> [ %i.ig, %bb.u ], [ zeroinitializer, %bb.t ]
  %i.ii = insertelement <8 x float> poison, float %i.gy, i64 0
  %i.ij = shufflevector <8 x float> %i.ii, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ik = fmul fast <8 x float> %i.hj, %i.ij
  %i.il = insertelement <8 x float> poison, float %i.gz, i64 0
  %i.im = shufflevector <8 x float> %i.il, <8 x float> poison, <8 x i32> zeroinitializer
  %i.in = fmul fast <8 x float> %i.hr, %i.im
  %i.io = fadd fast <8 x float> %i.ik, %i.in
  %i.ip = insertelement <8 x float> poison, float %i.ha, i64 0
  %i.iq = shufflevector <8 x float> %i.ip, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ir = fmul fast <8 x float> %i.hz, %i.iq
  %i.is = fadd fast <8 x float> %i.io, %i.ir
  %i.it = insertelement <8 x float> poison, float %i.hb, i64 0
  %i.iu = shufflevector <8 x float> %i.it, <8 x float> poison, <8 x i32> zeroinitializer
  %i.iv = fmul fast <8 x float> %i.ih, %i.iu
  %i.iw = fadd fast <8 x float> %i.iv, %i.is      ; 2 uses
  %i.ix = load i8, ptr %8, align 1, !tbaa !84, !range !50, !noundef !51
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.iz = load ptr, ptr %14, align 8, !tbaa !18
  %i.ja = load i32, ptr %i.aa, align 4, !tbaa !55
  %i.jb = sext i32 %i.ja to i64
  %i.jc = mul nsw i64 %indvars.iv224, %i.jb
  %i.jd = load i64, ptr %i.w, align 8, !tbaa !56
  %i.je = mul i64 %i.jc, %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.je
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %indvars.iv
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !38
  %i.ji = insertelement <8 x float> poison, float %i.jh, i64 0
  %i.jj = shufflevector <8 x float> %i.ji, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jk = fmul fast <8 x float> %i.jj, %i.iw
  br label %.critedge

.critedge:                                        ; preds = %bb.v, %bb.w, %bb.l, %bb.k, %bb.m
  %.1198 = phi nsz <8 x float> [ zeroinitializer, %bb.k ], [ zeroinitializer, %bb.m ], [ zeroinitializer, %bb.l ], [ %i.jk, %bb.w ], [ %i.iw, %bb.v ]
  store <8 x float> %.1198, ptr %.3204, align 32, !tbaa !97
  %i.jl = getelementptr inbounds nuw i8, ptr %.3204, i64 32 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jm = load i32, ptr %11, align 4, !tbaa !68   ; 2 uses
  %i.jn = sext i32 %i.jm to i64
  %i.jo = icmp slt i64 %indvars.iv.next, %i.jn
  br i1 %i.jo, label %bb.k, label %._crit_edge.loopexit, !llvm.loop !119

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
  %i.jp = landingpad { ptr, i32 }
          catch ptr null
  %i.jq = extractvalue { ptr, i32 } %i.jp, 0
  call void @__clang_call_terminate(ptr %i.jq) #20
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare !callback !120 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn24DeformableConv2D_x86_avx7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !68     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !68
  %i.h = load i32, ptr %0, align 4, !tbaa !68     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !68
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !68
  %i.k = load i32, ptr %i.a, align 4, !tbaa !68   ; 2 uses
  %.not216 = icmp sgt i32 %i.k, %i.j
  br i1 %.not216, label %._crit_edge218, label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph

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
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 244
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 228
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 236
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 220
  %i.ar = load i32, ptr %i.q, align 8, !tbaa !45  ; 3 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %_ZNK4ncnn3Mat7channelEi.exit.preheader, label %._crit_edge218

_ZNK4ncnn3Mat7channelEi.exit.preheader:           ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph
  %i.at = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.au = phi i32 [ %i.j, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.bx, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.av = phi i32 [ %i.ar, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.by, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.aw = phi i32 [ %i.ar, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.bz, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv227 = phi i64 [ %i.at, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %indvars.iv.next228, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.ax = load ptr, ptr %3, align 8, !tbaa !18, !noalias !122
  %i.ay = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !122
  %i.az = mul i64 %i.ay, %indvars.iv227
  %i.ba = load i64, ptr %i.n, align 8, !tbaa !56, !noalias !122 ; 2 uses
  %i.bb = mul i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bb ; 4 uses
  %i.bd = icmp sgt i32 %i.aw, 0
  br i1 %i.bd, label %.preheader200.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader200.lr.ph:                              ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.be = load i32, ptr %i.l, align 4, !tbaa !55, !noalias !122
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul i64 %i.ba, %i.bf                    ; 4 uses
  %i.bh = load i32, ptr %i.r, align 4, !tbaa !44  ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.preheader200.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader200.preheader:                          ; preds = %.preheader200.lr.ph
  %i.bj = load ptr, ptr %4, align 8, !tbaa !18
  %i.bk = load i32, ptr %5, align 4, !tbaa !68
  %i.bl = sext i32 %i.bk to i64
  %i.bm = mul nsw i64 %indvars.iv227, %i.bl
  %i.bn = load i32, ptr %i.o, align 4, !tbaa !55
  %i.bo = sext i32 %i.bn to i64
  %i.bp = mul nsw i64 %i.bm, %i.bo
  %i.bq = load i64, ptr %i.p, align 8, !tbaa !56
  %i.br = mul i64 %i.bp, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.br
  br label %.preheader200

.preheader200:                                    ; preds = %.preheader200.preheader, %._crit_edge212
  %i.bt = phi i32 [ %i.cb, %._crit_edge212 ], [ %i.av, %.preheader200.preheader ]
  %i.bu = phi i32 [ %i.cc, %._crit_edge212 ], [ %i.bh, %.preheader200.preheader ] ; 3 uses
  %.0102215 = phi ptr [ %.1.lcssa, %._crit_edge212 ], [ %i.bs, %.preheader200.preheader ] ; 2 uses
  %.0103214 = phi i32 [ %i.cd, %._crit_edge212 ], [ 0, %.preheader200.preheader ] ; 3 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.noexc138.preheader, label %._crit_edge212

.noexc138.preheader:                              ; preds = %.preheader200
  %i.bw = insertelement <2 x i32> poison, i32 %.0103214, i64 1
  br label %.noexc138

_ZN4ncnn3MatD2Ev.exit.loopexit:                   ; preds = %._crit_edge212
  %.pre231 = load i32, ptr %i.b, align 4, !tbaa !68
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.preheader200.lr.ph, %_ZN4ncnn3MatD2Ev.exit.loopexit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.bx = phi i32 [ %i.au, %_ZNK4ncnn3Mat7channelEi.exit ], [ %.pre231, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.au, %.preheader200.lr.ph ] ; 2 uses
  %i.by = phi i32 [ %i.av, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.cb, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.av, %.preheader200.lr.ph ]
  %i.bz = phi i32 [ %i.aw, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.cb, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.aw, %.preheader200.lr.ph ]
  %indvars.iv.next228 = add nsw i64 %indvars.iv227, 1
  %i.ca = sext i32 %i.bx to i64
  %.not.not = icmp slt i64 %indvars.iv227, %i.ca
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge218, !llvm.loop !125

._crit_edge212.loopexit:                          ; preds = %_ZN4ncnn3MatD2Ev.exit113
  %.pre230 = load i32, ptr %i.q, align 8, !tbaa !45
  br label %._crit_edge212

._crit_edge212:                                   ; preds = %._crit_edge212.loopexit, %.preheader200
end_hunk_0
begin_hunk_1_@_ZNK4ncnn24DeformableConv2D_x86_avx7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1:bb.a

.lr.ph:                                           ; preds = %.preheader
  %i.ed = mul i64 %i.dw, %indvars.iv224           ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.ed
  %i.eg = trunc nsw i64 %indvars.iv224 to i32
  %i.eh = insertelement <2 x i32> poison, i32 %i.eg, i64 1
  br label %bb.k

._crit_edge207:                                   ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN4ncnn3Mat7channelEi.exit
  %.2.lcssa = phi ptr [ %.1211, %_ZN4ncnn3Mat7channelEi.exit ], [ %.1211, %.preheader.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.ei = load ptr, ptr %i.v, align 8, !tbaa !11  ; 2 uses
  %.not.i = icmp eq ptr %i.ei, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit113, label %bb.e

bb.e:                                             ; preds = %._crit_edge207
  %i.ej = atomicrmw add ptr %i.ei, i32 -1 acq_rel, align 4
  %i.ek = icmp eq i32 %i.ej, 1
  br i1 %i.ek, label %bb.f, label %_ZN4ncnn3MatD2Ev.exit113

bb.f:                                             ; preds = %bb.e
  %i.el = load ptr, ptr %i.y, align 8, !tbaa !17  ; 3 uses
  %.not3.i = icmp eq ptr %i.el, null
  %i.em = load ptr, ptr %14, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !9
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8
  invoke void %i.ep(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef %i.em)
          to label %_ZN4ncnn3MatD2Ev.exit113 unwind label %bb.j, !inline_history !19

bb.h:                                             ; preds = %bb.f
  %.not.i133 = icmp eq ptr %i.em, null
  br i1 %.not.i133, label %_ZN4ncnn3MatD2Ev.exit113, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.em) #9
  br label %_ZN4ncnn3MatD2Ev.exit113

bb.j:                                             ; preds = %bb.g
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @__clang_call_terminate(ptr %i.er) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit113:                         ; preds = %bb.e, %._crit_edge207, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  %i.es = add nuw nsw i32 %.0104209, 1            ; 2 uses
  %i.et = load i32, ptr %i.r, align 4, !tbaa !44  ; 3 uses
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %.noexc138, label %._crit_edge212.loopexit, !llvm.loop !133

._crit_edge.loopexit:                             ; preds = %.critedge
  %.pre = load i32, ptr %10, align 4, !tbaa !68
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ev = phi i32 [ %i.ea, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.ew = phi i32 [ %i.eb, %.preheader ], [ %i.jm, %._crit_edge.loopexit ]
  %.3.lcssa = phi ptr [ %.2206, %.preheader ], [ %i.jl, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %i.ex = sext i32 %i.ev to i64
  %i.ey = icmp slt i64 %indvars.iv.next225, %i.ex
  br i1 %i.ey, label %.preheader, label %._crit_edge207, !llvm.loop !134

bb.k:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 5 uses
  %.3204 = phi ptr [ %.2206, %.lr.ph ], [ %i.jl, %.critedge ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !38
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !38
  %i.fd = load i32, ptr %i.an, align 4, !tbaa !89
  %i.fe = trunc nsw i64 %indvars.iv to i32
  %i.ff = load i32, ptr %i.ap, align 4, !tbaa !86
  %i.fg = load <2 x i32>, ptr %i.ao, align 4, !tbaa !68
  %i.fh = insertelement <2 x i32> %i.eh, i32 %i.fe, i64 0
  %i.fi = mul nsw <2 x i32> %i.fg, %i.fh
  %i.fj = insertelement <2 x i32> poison, i32 %i.ff, i64 0
  %i.fk = insertelement <2 x i32> %i.fj, i32 %i.fd, i64 1
  %i.fl = sub <2 x i32> %i.fi, %i.fk
  %i.fm = load <2 x i32>, ptr %i.aq, align 4, !tbaa !68
  %i.fn = mul nsw <2 x i32> %i.fm, %i.dz
  %i.fo = add nsw <2 x i32> %i.fl, %i.fn
  %i.fp = sitofp <2 x i32> %i.fo to <2 x float>
  %i.fq = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.fr = insertelement <2 x float> %i.fq, float %i.fa, i64 1
  %i.fs = fadd fast <2 x float> %i.fr, %i.fp      ; 5 uses
  %i.ft = extractelement <2 x float> %i.fs, i64 1 ; 2 uses
  %i.fu = fcmp fast ogt float %i.ft, -1.000000e+00
  %i.fv = extractelement <2 x float> %i.fs, i64 0 ; 2 uses
  %i.fw = fcmp fast ogt float %i.fv, -1.000000e+00
  %or.cond = select i1 %i.fu, i1 %i.fw, i1 false
  br i1 %or.cond, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.fx = load i32, ptr %12, align 4, !tbaa !68   ; 2 uses
  %i.fy = sitofp fast i32 %i.fx to float
  %i.fz = fcmp fast olt float %i.ft, %i.fy
  br i1 %i.fz, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ga = load i32, ptr %13, align 4, !tbaa !68   ; 2 uses
  %i.gb = sitofp fast i32 %i.ga to float
  %i.gc = fcmp fast olt float %i.fv, %i.gb
  br i1 %i.gc, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.gd = call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.fs)
  %i.ge = fptosi <2 x float> %i.gd to <2 x i32>   ; 3 uses
  %i.gf = extractelement <2 x i32> %i.ge, i64 1   ; 5 uses
  %i.gg = add nsw i32 %i.gf, 1                    ; 2 uses
  %i.gh = extractelement <2 x i32> %i.ge, i64 0   ; 5 uses
  %i.gi = add nsw i32 %i.gh, 1                    ; 2 uses
  %i.gj = sitofp <2 x i32> %i.ge to <2 x float>   ; 2 uses
  %foldExtExtBinop = fsub fast <2 x float> %i.fs, %i.gj
  %i.gk = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 3 uses
  %foldExtExtBinop266 = fsub fast <2 x float> %i.fs, %i.gj
  %i.gl = extractelement <2 x float> %foldExtExtBinop266, i64 0 ; 3 uses
  %i.gm = fsub fast float 1.000000e+00, %i.gk     ; 2 uses
  %i.gn = fsub fast float 1.000000e+00, %i.gl     ; 2 uses
  %i.go = icmp sgt i32 %i.gf, -1                  ; 2 uses
  %i.gp = icmp sgt i32 %i.gh, -1                  ; 2 uses
  %i.gq = select i1 %i.go, i1 %i.gp, i1 false
  %i.gr = add nsw i32 %i.ga, -1
  %i.gs = icmp sgt i32 %i.gr, %i.gh               ; 2 uses
  %i.gt = select i1 %i.go, i1 %i.gs, i1 false
  %i.gu = add nsw i32 %i.fx, -1
  %i.gv = icmp sgt i32 %i.gu, %i.gf               ; 2 uses
  %i.gw = select i1 %i.gv, i1 %i.gp, i1 false
  %i.gx = select i1 %i.gv, i1 %i.gs, i1 false
  %i.gy = fmul fast float %i.gn, %i.gm
  %i.gz = fmul fast float %i.gm, %i.gl
  %i.ha = fmul fast float %i.gn, %i.gk
  %i.hb = fmul fast float %i.gl, %i.gk
  br i1 %i.gq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hc = zext nneg i32 %i.gf to i64
  %i.hd = mul i64 %i.bg, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.hd
  %i.hf = shl nsw i32 %i.gh, 2
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.hg
  %i.hi = load <4 x float>, ptr %i.hh, align 16, !tbaa !97
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.hj = phi fast <4 x float> [ %i.hi, %bb.o ], [ zeroinitializer, %bb.n ]
  br i1 %i.gt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hk = zext nneg i32 %i.gf to i64
  %i.hl = mul i64 %i.bg, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.hl
  %i.hn = shl nsw i32 %i.gi, 2
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.ho
  %i.hq = load <4 x float>, ptr %i.hp, align 16, !tbaa !97
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.hr = phi fast <4 x float> [ %i.hq, %bb.q ], [ zeroinitializer, %bb.p ]
  br i1 %i.gw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hs = sext i32 %i.gg to i64
  %i.ht = mul i64 %i.bg, %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ht
  %i.hv = shl nsw i32 %i.gh, 2
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.hw
  %i.hy = load <4 x float>, ptr %i.hx, align 16, !tbaa !97
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.hz = phi fast <4 x float> [ %i.hy, %bb.s ], [ zeroinitializer, %bb.r ]
  br i1 %i.gx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ia = sext i32 %i.gg to i64
  %i.ib = mul i64 %i.bg, %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ib
  %i.id = shl nsw i32 %i.gi, 2
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %i.ie
  %i.ig = load <4 x float>, ptr %i.if, align 16, !tbaa !97
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ih = phi fast <4 x float> [ %i.ig, %bb.u ], [ zeroinitializer, %bb.t ]
  %i.ii = insertelement <4 x float> poison, float %i.gy, i64 0
  %i.ij = shufflevector <4 x float> %i.ii, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ik = fmul fast <4 x float> %i.hj, %i.ij
  %i.il = insertelement <4 x float> poison, float %i.gz, i64 0
  %i.im = shufflevector <4 x float> %i.il, <4 x float> poison, <4 x i32> zeroinitializer
  %i.in = fmul fast <4 x float> %i.hr, %i.im
  %i.io = fadd fast <4 x float> %i.ik, %i.in
  %i.ip = insertelement <4 x float> poison, float %i.ha, i64 0
  %i.iq = shufflevector <4 x float> %i.ip, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ir = fmul fast <4 x float> %i.hz, %i.iq
  %i.is = fadd fast <4 x float> %i.io, %i.ir
  %i.it = insertelement <4 x float> poison, float %i.hb, i64 0
  %i.iu = shufflevector <4 x float> %i.it, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iv = fmul fast <4 x float> %i.ih, %i.iu
  %i.iw = fadd fast <4 x float> %i.iv, %i.is      ; 2 uses
  %i.ix = load i8, ptr %8, align 1, !tbaa !84, !range !50, !noundef !51
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.iz = load ptr, ptr %14, align 8, !tbaa !18
  %i.ja = load i32, ptr %i.aa, align 4, !tbaa !55
  %i.jb = sext i32 %i.ja to i64
  %i.jc = mul nsw i64 %indvars.iv224, %i.jb
  %i.jd = load i64, ptr %i.w, align 8, !tbaa !56
  %i.je = mul i64 %i.jc, %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.je
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %indvars.iv
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !38
  %i.ji = insertelement <4 x float> poison, float %i.jh, i64 0
  %i.jj = shufflevector <4 x float> %i.ji, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jk = fmul fast <4 x float> %i.jj, %i.iw
  br label %.critedge

.critedge:                                        ; preds = %bb.v, %bb.w, %bb.l, %bb.k, %bb.m
  %.1198 = phi nsz <4 x float> [ zeroinitializer, %bb.k ], [ zeroinitializer, %bb.m ], [ zeroinitializer, %bb.l ], [ %i.jk, %bb.w ], [ %i.iw, %bb.v ]
  store <4 x float> %.1198, ptr %.3204, align 16, !tbaa !97
  %i.jl = getelementptr inbounds nuw i8, ptr %.3204, i64 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jm = load i32, ptr %11, align 4, !tbaa !68   ; 2 uses
  %i.jn = sext i32 %i.jm to i64
  %i.jo = icmp slt i64 %indvars.iv.next, %i.jn
  br i1 %i.jo, label %bb.k, label %._crit_edge.loopexit, !llvm.loop !135

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
  %i.jp = landingpad { ptr, i32 }
          catch ptr null
  %i.jq = extractvalue { ptr, i32 } %i.jp, 0
  call void @__clang_call_terminate(ptr %i.jq) #20
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #11

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn24DeformableConv2D_x86_avx7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !68     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !68
  %i.h = load i32, ptr %0, align 4, !tbaa !68     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !68
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !68
  %i.k = load i32, ptr %i.a, align 4, !tbaa !68   ; 2 uses
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
  %i.az = load ptr, ptr %3, align 8, !tbaa !18, !noalias !136
  %i.ba = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !136
  %i.bb = mul i64 %i.ba, %indvars.iv220
  %i.bc = load i64, ptr %i.n, align 8, !tbaa !56, !noalias !136 ; 2 uses
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 4 uses
  %i.bf = icmp sgt i32 %i.ay, 0
  br i1 %i.bf, label %.preheader193.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader193.lr.ph:                              ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.bg = load i32, ptr %i.l, align 4, !tbaa !55, !noalias !136
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul i64 %i.bc, %i.bh                    ; 4 uses
  %i.bj = load i32, ptr %i.r, align 4, !tbaa !44  ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.preheader193.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader193.preheader:                          ; preds = %.preheader193.lr.ph
  %i.bl = load ptr, ptr %4, align 8, !tbaa !18
  %i.bm = load i32, ptr %5, align 4, !tbaa !68
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
  %.pre223 = load i32, ptr %i.b, align 4, !tbaa !68
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.preheader193.lr.ph, %_ZN4ncnn3MatD2Ev.exit.loopexit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.by = phi i32 [ %i.aw, %_ZNK4ncnn3Mat7channelEi.exit ], [ %.pre223, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.aw, %.preheader193.lr.ph ] ; 2 uses
  %i.bz = phi i32 [ %i.ax, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.cc, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.ax, %.preheader193.lr.ph ]
  %i.ca = phi i32 [ %i.ay, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.cc, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.ay, %.preheader193.lr.ph ]
  %indvars.iv.next221 = add nsw i64 %indvars.iv220, 1
  %i.cb = sext i32 %i.by to i64
  %.not.not = icmp slt i64 %indvars.iv220, %i.cb
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge209, !llvm.loop !139

._crit_edge.loopexit:                             ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %.pre = load i32, ptr %i.q, align 8, !tbaa !45
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader193
  %i.cc = phi i32 [ %i.bv, %.preheader193 ], [ %.pre, %._crit_edge.loopexit ] ; 4 uses
  %i.cd = phi i32 [ %i.bw, %.preheader193 ], [ %i.im, %._crit_edge.loopexit ]
  %.1.lcssa = phi ptr [ %.0108206, %.preheader193 ], [ %.2.lcssa, %._crit_edge.loopexit ]
  %i.ce = add nuw nsw i32 %.0109205, 1            ; 2 uses
  %i.cf = icmp slt i32 %i.ce, %i.cc
  br i1 %i.cf, label %.preheader193, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !140

.noexc146:                                        ; preds = %.preheader193, %_ZN4ncnn3MatD2Ev.exit121
  %i.cg = phi i32 [ %i.im, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.bw, %.preheader193 ]
  %.1204 = phi ptr [ %.2.lcssa, %_ZN4ncnn3MatD2Ev.exit121 ], [ %.0108206, %.preheader193 ] ; 3 uses
  %.0110202 = phi i32 [ %i.il, %_ZN4ncnn3MatD2Ev.exit121 ], [ 0, %.preheader193 ] ; 3 uses
  %i.ch = mul nsw i32 %i.cg, %.0109205
  %i.ci = add nsw i32 %i.ch, %.0110202            ; 2 uses
  %i.cj = shl nsw i32 %i.ci, 1                    ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnnL23deformableconv2d_packedERKSt6vectorINS_3MatESaIS1_EERS1_RKS1_S8_iiiiiiiiiS8_RKNS_6OptionE.omp_outlined:bb.a

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.nv, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !176

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.pe, %vec.epilog.iter.check ], [ %.3265885.us, %vector.main.loop.iter.check ]
  %n.vec1072 = and i64 %wide.trip.count961, 2147483640 ; 4 uses
  %i.pf = shl nuw nsw i64 %n.vec1072, 2
  %i.pg = getelementptr i8, ptr %.6.us, i64 %i.pf
  %i.ph = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1093 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1106, %vec.epilog.vector.body ] ; 6 uses
  %vec.phi1094 = phi <8 x float> [ %i.ph, %vec.epilog.ph ], [ %i.pw, %vec.epilog.vector.body ]
  %i.pi = shl i64 %index1093, 2
  %next.gep1095 = getelementptr i8, ptr %.6.us, i64 %i.pi
  %i.pj = getelementptr [4 x i8], ptr %i.nl, i64 %index1093
  %wide.masked.load1096.a = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.pj, <8 x i1> %i.qq, <8 x float> poison), !tbaa !38
  %i.pk = fmul fast <8 x float> %wide.masked.load1096.a, %broadcast.splat1084.a
  %predphi1097.a = select i1 %.0290.us, <8 x float> %i.pk, <8 x float> zeroinitializer
  %i.pl = getelementptr [4 x i8], ptr %i.no, i64 %index1093
  %wide.masked.load1098.a = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.pl, <8 x i1> %i.qr, <8 x float> poison), !tbaa !38
  %i.pm = fmul fast <8 x float> %wide.masked.load1098.a, %broadcast.splat1086.a
  %i.pn = select ninf i1 %.0289.us, <8 x float> %i.pm, <8 x float> splat (float -0.000000e+00)
  %predphi1099.a = fadd reassoc nnan ninf arcp contract afn <8 x float> %predphi1097.a, %i.pn
  %i.po = getelementptr [4 x i8], ptr %i.nr, i64 %index1093
  %wide.masked.load1100 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.po, <8 x i1> %i.qs, <8 x float> poison), !tbaa !38
  %i.pp = fmul fast <8 x float> %wide.masked.load1100, %broadcast.splat1088.a
  %i.pq = select ninf i1 %.0288.us, <8 x float> %i.pp, <8 x float> splat (float -0.000000e+00)
  %predphi1101 = fadd reassoc nnan ninf arcp contract afn <8 x float> %predphi1099.a, %i.pq
  %i.pr = getelementptr [4 x i8], ptr %i.nu, i64 %index1093
  %wide.masked.load1102 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.pr, <8 x i1> %i.qt, <8 x float> poison), !tbaa !38
  %i.ps = fmul fast <8 x float> %wide.masked.load1102, %broadcast.splat1090
  %i.pt = select ninf nsz <8 x i1> %i.qt, <8 x float> %i.ps, <8 x float> zeroinitializer
  %predphi1103 = fadd fast <8 x float> %predphi1101, %i.pt
  %predphi1104 = select nsz i1 %i.ip, <8 x float> %predphi1103, <8 x float> zeroinitializer
  %i.pu = fmul reassoc nnan ninf arcp contract afn <8 x float> %predphi1104, %i.qu
  %wide.load1105 = load <8 x float>, ptr %next.gep1095, align 4, !tbaa !38
  %i.pv = fmul fast <8 x float> %i.pu, %wide.load1105
  %i.pw = fadd fast <8 x float> %i.pv, %vec.phi1094 ; 2 uses
  %index.next1106 = add nuw i64 %index1093, 8     ; 2 uses
  %i.px = icmp eq i64 %index.next1106, %n.vec1072
  br i1 %i.px, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !177

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.py = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.pw) ; 2 uses
  %cmp.n1107 = icmp eq i64 %n.vec1072, %wide.trip.count961
  br i1 %cmp.n1107, label %.loopexit.us.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv956.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1072, %vec.epilog.middle.block ]
  %.7877.us.ph = phi ptr [ %.6.us, %iter.check ], [ %i.nx, %vec.epilog.iter.check ], [ %i.pg, %vec.epilog.middle.block ]
  %.4266876.us.ph = phi float [ %.3265885.us, %iter.check ], [ %i.pe, %vec.epilog.iter.check ], [ %i.py, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

_ZN4ncnn3MatD2Ev.exit.lr.ph.us:                   ; preds = %.thread846.us
  %i.pz = load ptr, ptr %25, align 8, !tbaa !18, !noalias !178
  %i.qa = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !178
  %i.qb = load i64, ptr %i.u, align 8, !tbaa !56, !noalias !178
  %factor.op.mul.us = mul i64 %i.qa, %i.qb
  %i.qc = load i32, ptr %12, align 4, !tbaa !68   ; 3 uses
  %i.qd = icmp eq i32 %i.qc, 8
  %i.qe = insertelement <8 x float> poison, float %.1274.us, i64 0
  %i.qf = shufflevector <8 x float> %i.qe, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qg = icmp eq i32 %i.qc, 4
  %i.qh = insertelement <4 x float> poison, float %.1274.us, i64 0
  %i.qi = shufflevector <4 x float> %i.qh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qj = icmp eq i32 %i.qc, 1
  %broadcast.splatinsert = insertelement <8 x i1> poison, i1 %.0287.us, i64 0
  %broadcast.splat = shufflevector <8 x i1> %broadcast.splatinsert, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1036.a = insertelement <8 x i1> poison, i1 %.0288.us, i64 0
  %broadcast.splat1037.a = shufflevector <8 x i1> %broadcast.splatinsert1036.a, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1038.a = insertelement <8 x i1> poison, i1 %.0289.us, i64 0
  %broadcast.splat1039.a = shufflevector <8 x i1> %broadcast.splatinsert1038.a, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1040.a = insertelement <8 x i1> poison, i1 %.0290.us, i64 0
  %broadcast.splat1041.a = shufflevector <8 x i1> %broadcast.splatinsert1040.a, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1042.a = insertelement <8 x i1> poison, i1 %i.ip, i64 0
  %broadcast.splat1043.a = shufflevector <8 x i1> %broadcast.splatinsert1042.a, <8 x i1> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.qk = select <8 x i1> %broadcast.splat1043.a, <8 x i1> %broadcast.splat1041.a, <8 x i1> zeroinitializer ; 2 uses
  %i.ql = select <8 x i1> %broadcast.splat1043.a, <8 x i1> %broadcast.splat1039.a, <8 x i1> zeroinitializer ; 2 uses
  %i.qm = select <8 x i1> %broadcast.splat1043.a, <8 x i1> %broadcast.splat1037.a, <8 x i1> zeroinitializer ; 2 uses
  %i.qn = select <8 x i1> %broadcast.splat1043.a, <8 x i1> %broadcast.splat, <8 x i1> zeroinitializer ; 4 uses
  %broadcast.splatinsert1044.a = insertelement <8 x float> poison, float %.0275.us, i64 0
  %broadcast.splat1045.a = shufflevector <8 x float> %broadcast.splatinsert1044.a, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1046.a = insertelement <8 x float> poison, float %.0276.us, i64 0
  %broadcast.splat1047.a = shufflevector <8 x float> %broadcast.splatinsert1046.a, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1048.a = insertelement <8 x float> poison, float %.0277.us, i64 0
  %broadcast.splat1049.a = shufflevector <8 x float> %broadcast.splatinsert1048.a, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1050 = insertelement <8 x float> poison, float %.0278.us, i64 0
  %broadcast.splat1051 = shufflevector <8 x float> %broadcast.splatinsert1050, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1052 = insertelement <8 x float> poison, float %.1274.us, i64 0
  %broadcast.splat1053 = shufflevector <8 x float> %broadcast.splatinsert1052, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.qo = select ninf i1 %i.by, <8 x float> %broadcast.splat1053, <8 x float> splat (float 1.000000e+00)
  %i.qp = select ninf i1 %i.by, <8 x float> %broadcast.splat1053, <8 x float> splat (float 1.000000e+00)
  %broadcast.splatinsert1073.a = insertelement <8 x i1> poison, i1 %.0287.us, i64 0
  %broadcast.splat1074.a = shufflevector <8 x i1> %broadcast.splatinsert1073.a, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1075.a = insertelement <8 x i1> poison, i1 %.0288.us, i64 0
  %broadcast.splat1076.a = shufflevector <8 x i1> %broadcast.splatinsert1075.a, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1077.a = insertelement <8 x i1> poison, i1 %.0289.us, i64 0
  %broadcast.splat1078.a = shufflevector <8 x i1> %broadcast.splatinsert1077.a, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1079.a = insertelement <8 x i1> poison, i1 %.0290.us, i64 0
  %broadcast.splat1080.a = shufflevector <8 x i1> %broadcast.splatinsert1079.a, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1081.a = insertelement <8 x i1> poison, i1 %i.ip, i64 0
  %broadcast.splat1082.a = shufflevector <8 x i1> %broadcast.splatinsert1081.a, <8 x i1> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.qq = select <8 x i1> %broadcast.splat1082.a, <8 x i1> %broadcast.splat1080.a, <8 x i1> zeroinitializer
  %i.qr = select <8 x i1> %broadcast.splat1082.a, <8 x i1> %broadcast.splat1078.a, <8 x i1> zeroinitializer
  %i.qs = select <8 x i1> %broadcast.splat1082.a, <8 x i1> %broadcast.splat1076.a, <8 x i1> zeroinitializer
  %i.qt = select <8 x i1> %broadcast.splat1082.a, <8 x i1> %broadcast.splat1074.a, <8 x i1> zeroinitializer ; 2 uses
  %broadcast.splatinsert1083.a = insertelement <8 x float> poison, float %.0275.us, i64 0
  %broadcast.splat1084.a = shufflevector <8 x float> %broadcast.splatinsert1083.a, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1085.a = insertelement <8 x float> poison, float %.0276.us, i64 0
  %broadcast.splat1086.a = shufflevector <8 x float> %broadcast.splatinsert1085.a, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1087.a = insertelement <8 x float> poison, float %.0277.us, i64 0
  %broadcast.splat1088.a = shufflevector <8 x float> %broadcast.splatinsert1087.a, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1089 = insertelement <8 x float> poison, float %.0278.us, i64 0
  %broadcast.splat1090 = shufflevector <8 x float> %broadcast.splatinsert1089, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1091 = insertelement <8 x float> poison, float %.1274.us, i64 0
  %broadcast.splat1092 = shufflevector <8 x float> %broadcast.splatinsert1091, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qu = select ninf i1 %i.by, <8 x float> %broadcast.splat1092, <8 x float> splat (float 1.000000e+00)
  br label %_ZN4ncnn3MatD2Ev.exit.us

._crit_edge896.us:                                ; preds = %._crit_edge.us
  %indvars.iv.next974 = add nuw nsw i64 %indvars.iv973, 1 ; 2 uses
  %exitcond977.not = icmp eq i64 %indvars.iv.next974, %wide.trip.count976
  br i1 %exitcond977.not, label %._crit_edge906, label %.preheader861.us, !llvm.loop !181

._crit_edge906:                                   ; preds = %._crit_edge896.us, %.preheader861.lr.ph, %.thread842
  %.2835.lcssa = phi <8 x float> [ %.1834, %.thread842 ], [ %.1834, %.preheader861.lr.ph ], [ %.4837.lcssa.us, %._crit_edge896.us ] ; 10 uses
  %.2828.lcssa = phi <4 x float> [ %.1827, %.thread842 ], [ %.1827, %.preheader861.lr.ph ], [ %.4830.lcssa.us, %._crit_edge896.us ] ; 10 uses
  %.1263.lcssa = phi float [ %.0262, %.thread842 ], [ %.0262, %.preheader861.lr.ph ], [ %.3265.lcssa.us, %._crit_edge896.us ] ; 13 uses
  %i.qv = load i32, ptr %12, align 4, !tbaa !68   ; 2 uses
  %i.qw = icmp eq i32 %i.qv, 8
  br i1 %i.qw, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %._crit_edge906
  %i.qx = load i32, ptr %27, align 4, !tbaa !68
  switch i32 %i.qx, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ao
    i32 2, label %.noexc368
    i32 3, label %bb.ap
    i32 4, label %.noexc369
    i32 5, label %.noexc370
    i32 6, label %.noexc371
  ]

bb.ao:                                            ; preds = %bb.an
  %i.qy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.2835.lcssa, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc368:                                        ; preds = %bb.an
  %i.qz = load ptr, ptr %28, align 8, !tbaa !18
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !38
  %i.rb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.2835.lcssa)
  %i.rc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.2835.lcssa)
  %i.rd = insertelement <8 x float> poison, float %i.ra, i64 0
  %i.re = shufflevector <8 x float> %i.rd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.rf = fmul fast <8 x float> %i.re, %i.rc
  %i.rg = fadd fast <8 x float> %i.rf, %i.rb
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.ap:                                            ; preds = %bb.an
  %i.rh = load ptr, ptr %28, align 8, !tbaa !18   ; 2 uses
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !38
  %i.rj = insertelement <8 x float> poison, float %i.ri, i64 0
  %i.rk = shufflevector <8 x float> %i.rj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rh, i64 4
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !38
  %i.rn = insertelement <8 x float> poison, float %i.rm, i64 0
  %i.ro = shufflevector <8 x float> %i.rn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.rp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.2835.lcssa, <8 x float> nofpclass(nan inf) %i.rk)
  %i.rq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.rp, <8 x float> nofpclass(nan inf) %i.ro)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc369:                                        ; preds = %bb.an
  %i.rr = fneg fast <8 x float> %.2835.lcssa
  %i.rs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.rr, <8 x float> splat (float f0x42B0C0A5))
  %i.rt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.rs, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ru = fmul fast <8 x float> %i.rt, splat (float f0x3FB8AA3B)
  %i.rv = fadd fast <8 x float> %i.ru, splat (float 5.000000e-01) ; 2 uses
  %i.rw = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.rv, i32 1) ; 2 uses
  %i.rx = fcmp fast ogt <8 x float> %i.rw, %i.rv
  %i.ry = select <8 x i1> %i.rx, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.rz = fsub fast <8 x float> %i.rw, %i.ry      ; 2 uses
  %i.sa = fmul fast <8 x float> %i.rz, splat (float f0x3F317218)
  %i.sb = fsub fast <8 x float> %i.rt, %i.sa      ; 8 uses
  %i.sc = fmul fast <8 x float> %i.sb, %i.sb
  %i.sd = fmul fast <8 x float> %i.sb, splat (float f0x39506967)
  %i.se = fadd fast <8 x float> %i.sd, splat (float f0x3AB743CE)
  %i.sf = fmul fast <8 x float> %i.se, %i.sb
  %i.sg = fadd fast <8 x float> %i.sf, splat (float f0x3C088908)
  %i.sh = fmul fast <8 x float> %i.sg, %i.sb
  %i.si = fadd fast <8 x float> %i.sh, splat (float f0x3D2AA9C1)
  %i.sj = fmul fast <8 x float> %i.si, %i.sb
  %i.sk = fadd fast <8 x float> %i.sj, splat (float f0x3E2AAAAA)
  %i.sl = fmul fast <8 x float> %i.sk, %i.sb
  %i.sm = fadd fast <8 x float> %i.sl, splat (float 5.000000e-01)
  %i.sn = fmul fast <8 x float> %i.sc, %i.sm
  %i.so = fadd fast <8 x float> %i.sb, %i.sn
  %i.sp = fadd fast <8 x float> %i.so, splat (float 1.000000e+00)
  %i.sq = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.rz)
  %i.sr = shl <8 x i32> %i.sq, splat (i32 23)
  %i.ss = add <8 x i32> %i.sr, splat (i32 1065353216)
  %i.st = bitcast <8 x i32> %i.ss to <8 x float>
  %i.su = fmul fast <8 x float> %i.sp, %i.st
  %i.sv = fadd fast <8 x float> %i.su, splat (float 1.000000e+00)
  %i.sw = fdiv fast <8 x float> splat (float 1.000000e+00), %i.sv
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc370:                                        ; preds = %bb.an
  %i.sx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %.2835.lcssa, <8 x float> splat (float f0x42B0C0A5))
  %i.sy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.sx, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.sz = fmul fast <8 x float> %i.sy, splat (float f0x3FB8AA3B)
  %i.ta = fadd fast <8 x float> %i.sz, splat (float 5.000000e-01) ; 2 uses
  %i.tb = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ta, i32 1) ; 2 uses
  %i.tc = fcmp fast ogt <8 x float> %i.tb, %i.ta
  %i.td = select <8 x i1> %i.tc, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.te = fsub fast <8 x float> %i.tb, %i.td      ; 2 uses
  %i.tf = fmul fast <8 x float> %i.te, splat (float f0x3F317218)
  %i.tg = fsub fast <8 x float> %i.sy, %i.tf      ; 8 uses
  %i.th = fmul fast <8 x float> %i.tg, %i.tg
  %i.ti = fmul fast <8 x float> %i.tg, splat (float f0x39506967)
  %i.tj = fadd fast <8 x float> %i.ti, splat (float f0x3AB743CE)
  %i.tk = fmul fast <8 x float> %i.tj, %i.tg
  %i.tl = fadd fast <8 x float> %i.tk, splat (float f0x3C088908)
  %i.tm = fmul fast <8 x float> %i.tl, %i.tg
  %i.tn = fadd fast <8 x float> %i.tm, splat (float f0x3D2AA9C1)
  %i.to = fmul fast <8 x float> %i.tn, %i.tg
  %i.tp = fadd fast <8 x float> %i.to, splat (float f0x3E2AAAAA)
  %i.tq = fmul fast <8 x float> %i.tp, %i.tg
  %i.tr = fadd fast <8 x float> %i.tq, splat (float 5.000000e-01)
  %i.ts = fmul fast <8 x float> %i.th, %i.tr
  %i.tt = fadd fast <8 x float> %i.tg, %i.ts
  %i.tu = fadd fast <8 x float> %i.tt, splat (float 1.000000e+00)
  %i.tv = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.te)
  %i.tw = shl <8 x i32> %i.tv, splat (i32 23)
  %i.tx = add <8 x i32> %i.tw, splat (i32 1065353216)
  %i.ty = bitcast <8 x i32> %i.tx to <8 x float>
  %i.tz = fmul fast <8 x float> %i.tu, %i.ty
  %i.ua = fadd fast <8 x float> %i.tz, splat (float 1.000000e+00) ; 2 uses
  %i.ub = fcmp fast ole <8 x float> %i.ua, zeroinitializer
  %i.uc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ua, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.ud = bitcast <8 x float> %i.uc to <8 x i32>
  %i.ue = bitcast <8 x float> %i.uc to <8 x i32>
  %i.uf = and <8 x i32> %i.ue, splat (i32 -2139095041)
  %i.ug = or disjoint <8 x i32> %i.uf, splat (i32 1056964608)
  %i.uh = bitcast <8 x i32> %i.ug to <8 x float>  ; 3 uses
  %i.ui = lshr <8 x i32> %i.ud, splat (i32 23)
  %i.uj = add nsw <8 x i32> %i.ui, splat (i32 -127)
  %i.uk = sitofp fast <8 x i32> %i.uj to <8 x float> ; 2 uses
  %i.ul = fadd fast <8 x float> %i.uk, splat (float 1.000000e+00)
  %i.um = fcmp fast olt <8 x float> %i.uh, splat (float f0x3F3504F3) ; 2 uses
  %i.un = select <8 x i1> %i.um, <8 x float> %i.uh, <8 x float> zeroinitializer
  %i.uo = fadd fast <8 x float> %i.uh, splat (float -1.000000e+00)
  %i.up = select fast <8 x i1> %i.um, <8 x float> %i.uk, <8 x float> %i.ul
  %i.uq = fadd fast <8 x float> %i.uo, %i.un      ; 12 uses
  %i.ur = fmul fast <8 x float> %i.uq, %i.uq      ; 2 uses
  %i.us = fmul fast <8 x float> %i.uq, splat (float f0x3D9021BB)
  %i.ut = fadd fast <8 x float> %i.us, splat (float f0xBDEBD1B8)
  %i.uu = fmul fast <8 x float> %i.ut, %i.uq
  %i.uv = fadd fast <8 x float> %i.uu, splat (float f0x3DEF251A)
  %i.uw = fmul fast <8 x float> %i.uv, %i.uq
  %i.ux = fadd fast <8 x float> %i.uw, splat (float f0xBDFE5D4F)
  %i.uy = fmul fast <8 x float> %i.ux, %i.uq
  %i.uz = fadd fast <8 x float> %i.uy, splat (float f0x3E11E9BF)
  %i.va = fmul fast <8 x float> %i.uz, %i.uq
  %i.vb = fadd fast <8 x float> %i.va, splat (float f0xBE2AAE50)
  %i.vc = fmul fast <8 x float> %i.vb, %i.uq
  %i.vd = fadd fast <8 x float> %i.vc, splat (float f0x3E4CCEAC)
  %i.ve = fmul fast <8 x float> %i.vd, %i.uq
  %i.vf = fadd fast <8 x float> %i.ve, splat (float f0xBE7FFFFC)
  %i.vg = fmul fast <8 x float> %i.vf, %i.uq
  %i.vh = fadd fast <8 x float> %i.vg, splat (float f0x3EAAAAAA)
  %i.vi = fmul fast <8 x float> %i.ur, %i.uq
  %reass.mul.a = fmul fast <8 x float> %i.vi, %i.vh
  %.neg852 = fmul fast <8 x float> %i.ur, splat (float -5.000000e-01)
  %reass.mul854.a = fmul fast <8 x float> %i.up, splat (float f0x3F317218)
  %29 = fadd fast <8 x float> %i.uq, %.neg852
  %i.vj = fadd fast <8 x float> %reass.mul.a, %29
  %i.vk = fadd fast <8 x float> %i.vj, %reass.mul854.a
  %.neg = fmul fast <8 x float> %i.vk, splat (float -2.000000e+00)
  %i.vl = select fast <8 x i1> %i.ub, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg
  %i.vm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.vl, <8 x float> splat (float f0x42B0C0A5))
  %i.vn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.vm, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.vo = fmul fast <8 x float> %i.vn, splat (float f0x3FB8AA3B)
  %i.vp = fadd fast <8 x float> %i.vo, splat (float 5.000000e-01) ; 2 uses
  %i.vq = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.vp, i32 1) ; 2 uses
  %i.vr = fcmp fast ogt <8 x float> %i.vq, %i.vp
  %i.vs = select <8 x i1> %i.vr, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.vt = fsub fast <8 x float> %i.vq, %i.vs      ; 2 uses
  %i.vu = fmul fast <8 x float> %i.vt, splat (float f0x3F317218)
  %i.vv = fsub fast <8 x float> %i.vn, %i.vu      ; 8 uses
  %i.vw = fmul fast <8 x float> %i.vv, %i.vv
  %i.vx = fmul fast <8 x float> %i.vv, splat (float f0x39506967)
  %i.vy = fadd fast <8 x float> %i.vx, splat (float f0x3AB743CE)
  %i.vz = fmul fast <8 x float> %i.vy, %i.vv
  %i.wa = fadd fast <8 x float> %i.vz, splat (float f0x3C088908)
  %i.wb = fmul fast <8 x float> %i.wa, %i.vv
  %i.wc = fadd fast <8 x float> %i.wb, splat (float f0x3D2AA9C1)
  %i.wd = fmul fast <8 x float> %i.wc, %i.vv
  %i.we = fadd fast <8 x float> %i.wd, splat (float f0x3E2AAAAA)
  %i.wf = fmul fast <8 x float> %i.we, %i.vv
  %i.wg = fadd fast <8 x float> %i.wf, splat (float 5.000000e-01)
  %i.wh = fmul fast <8 x float> %i.vw, %i.wg
  %i.wi = fadd fast <8 x float> %i.vv, %i.wh
  %i.wj = fadd fast <8 x float> %i.wi, splat (float 1.000000e+00)
  %i.wk = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.vt)
  %i.wl = shl <8 x i32> %i.wk, splat (i32 23)
  %i.wm = add <8 x i32> %i.wl, splat (i32 1065353216)
  %i.wn = bitcast <8 x i32> %i.wm to <8 x float>
  %i.wo = fmul fast <8 x float> %i.wj, %i.wn
  %i.wp = fadd fast <8 x float> %i.wo, splat (float 1.000000e+00)
  %i.wq = fdiv fast <8 x float> splat (float 2.000000e+00), %i.wp
  %i.wr = fadd fast <8 x float> %i.wq, splat (float -1.000000e+00)
  %i.ws = fmul fast <8 x float> %i.wr, %.2835.lcssa
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc371:                                        ; preds = %bb.an
  %i.wt = load ptr, ptr %28, align 8, !tbaa !18   ; 2 uses
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !38
  %i.wv = insertelement <8 x float> poison, float %i.wu, i64 0
  %i.ww = shufflevector <8 x float> %i.wv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wt, i64 4
  %i.wy = load float, ptr %i.wx, align 4, !tbaa !38
  %i.wz = insertelement <8 x float> poison, float %i.wy, i64 0
  %i.xa = shufflevector <8 x float> %i.wz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.xb = fmul fast <8 x float> %i.ww, %.2835.lcssa
  %i.xc = fadd fast <8 x float> %i.xb, %i.xa
  %i.xd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.xc, <8 x float> zeroinitializer)
  %i.xe = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.xd, <8 x float> splat (float 1.000000e+00))
  %i.xf = fmul fast <8 x float> %i.xe, %.2835.lcssa
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc371, %.noexc370, %.noexc369, %bb.ap, %.noexc368, %bb.ao, %bb.an
  %.0.i = phi nsz <8 x float> [ %i.xf, %.noexc371 ], [ %i.qy, %bb.ao ], [ %i.rg, %.noexc368 ], [ %i.rq, %bb.ap ], [ %i.sw, %.noexc369 ], [ %i.ws, %.noexc370 ], [ %.2835.lcssa, %bb.an ]
  %i.xg = load i32, ptr %3, align 4, !tbaa !68
  %i.xh = mul nsw i32 %i.xg, %i.ae
  %i.xi = add nsw i32 %i.xh, %i.aj
  %i.xj = shl nsw i32 %i.xi, 3
  %i.xk = sext i32 %i.xj to i64
  %i.xl = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.xk
  store <8 x float> %.0.i, ptr %i.xl, align 32, !tbaa !97
  %.pr = load i32, ptr %12, align 4, !tbaa !68
  br label %bb.aq

bb.aq:                                            ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %._crit_edge906
  %i.xm = phi i32 [ %.pr, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %i.qv, %._crit_edge906 ] ; 2 uses
  %i.xn = icmp eq i32 %i.xm, 4
  br i1 %i.xn, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.xo = load i32, ptr %27, align 4, !tbaa !68
  switch i32 %i.xo, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.as
    i32 2, label %.noexc373
    i32 3, label %bb.at
    i32 4, label %.noexc374
    i32 5, label %.noexc375
    i32 6, label %bb.au
  ]

bb.as:                                            ; preds = %bb.ar
  %i.xp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.2828.lcssa, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc373:                                        ; preds = %bb.ar
  %i.xq = load ptr, ptr %28, align 8, !tbaa !18
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !38
  %i.xs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.2828.lcssa)
  %i.xt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.2828.lcssa)
  %i.xu = insertelement <4 x float> poison, float %i.xr, i64 0
  %i.xv = shufflevector <4 x float> %i.xu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xw = fmul fast <4 x float> %i.xv, %i.xt
  %i.xx = fadd fast <4 x float> %i.xw, %i.xs
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.at:                                            ; preds = %bb.ar
  %i.xy = load ptr, ptr %28, align 8, !tbaa !18   ; 2 uses
  %i.xz = load float, ptr %i.xy, align 4, !tbaa !38
  %i.ya = insertelement <4 x float> poison, float %i.xz, i64 0
  %i.yb = shufflevector <4 x float> %i.ya, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xy, i64 4
  %i.yd = load float, ptr %i.yc, align 4, !tbaa !38
  %i.ye = insertelement <4 x float> poison, float %i.yd, i64 0
  %i.yf = shufflevector <4 x float> %i.ye, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.2828.lcssa, <4 x float> nofpclass(nan inf) %i.yb)
  %i.yh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.yg, <4 x float> nofpclass(nan inf) %i.yf)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc374:                                        ; preds = %bb.ar
  %i.yi = fneg fast <4 x float> %.2828.lcssa
  %i.yj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.yi, <4 x float> splat (float f0x42B0C0A5))
  %i.yk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.yj, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.yl = fmul fast <4 x float> %i.yk, splat (float f0x3FB8AA3B)
  %i.ym = fadd fast <4 x float> %i.yl, splat (float 5.000000e-01) ; 2 uses
  %i.yn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ym)
  %i.yo = sitofp fast <4 x i32> %i.yn to <4 x float> ; 2 uses
  %i.yp = fcmp fast olt <4 x float> %i.ym, %i.yo
  %i.yq = select <4 x i1> %i.yp, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.yr = fsub fast <4 x float> %i.yo, %i.yq      ; 2 uses
  %i.ys = fmul fast <4 x float> %i.yr, splat (float f0x3F317218)
  %i.yt = fsub fast <4 x float> %i.yk, %i.ys      ; 8 uses
  %i.yu = fmul fast <4 x float> %i.yt, %i.yt
  %i.yv = fmul fast <4 x float> %i.yt, splat (float f0x39506967)
  %i.yw = fadd fast <4 x float> %i.yv, splat (float f0x3AB743CE)
  %i.yx = fmul fast <4 x float> %i.yw, %i.yt
  %i.yy = fadd fast <4 x float> %i.yx, splat (float f0x3C088908)
  %i.yz = fmul fast <4 x float> %i.yy, %i.yt
  %i.za = fadd fast <4 x float> %i.yz, splat (float f0x3D2AA9C1)
  %i.zb = fmul fast <4 x float> %i.za, %i.yt
  %i.zc = fadd fast <4 x float> %i.zb, splat (float f0x3E2AAAAA)
  %i.zd = fmul fast <4 x float> %i.zc, %i.yt
  %i.ze = fadd fast <4 x float> %i.zd, splat (float 5.000000e-01)
  %i.zf = fmul fast <4 x float> %i.yu, %i.ze
  %i.zg = fadd fast <4 x float> %i.yt, %i.zf
  %i.zh = fadd fast <4 x float> %i.zg, splat (float 1.000000e+00)
  %i.zi = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yr)
  %i.zj = shl <4 x i32> %i.zi, splat (i32 23)
  %i.zk = add <4 x i32> %i.zj, splat (i32 1065353216)
  %i.zl = bitcast <4 x i32> %i.zk to <4 x float>
  %i.zm = fmul fast <4 x float> %i.zh, %i.zl
  %i.zn = fadd fast <4 x float> %i.zm, splat (float 1.000000e+00)
  %i.zo = fdiv fast <4 x float> splat (float 1.000000e+00), %i.zn
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc375:                                        ; preds = %bb.ar
  %i.zp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.2828.lcssa, <4 x float> splat (float f0x42B0C0A5))
  %i.zq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.zp, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.zr = fmul fast <4 x float> %i.zq, splat (float f0x3FB8AA3B)
  %i.zs = fadd fast <4 x float> %i.zr, splat (float 5.000000e-01) ; 2 uses
  %i.zt = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.zs)
  %i.zu = sitofp fast <4 x i32> %i.zt to <4 x float> ; 2 uses
  %i.zv = fcmp fast olt <4 x float> %i.zs, %i.zu
  %i.zw = select <4 x i1> %i.zv, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.zx = fsub fast <4 x float> %i.zu, %i.zw      ; 2 uses
  %i.zy = fmul fast <4 x float> %i.zx, splat (float f0x3F317218)
  %i.zz = fsub fast <4 x float> %i.zq, %i.zy      ; 8 uses
  %i.aaa = fmul fast <4 x float> %i.zz, %i.zz
  %i.aab = fmul fast <4 x float> %i.zz, splat (float f0x39506967)
  %i.aac = fadd fast <4 x float> %i.aab, splat (float f0x3AB743CE)
  %i.aad = fmul fast <4 x float> %i.aac, %i.zz
  %i.aae = fadd fast <4 x float> %i.aad, splat (float f0x3C088908)
  %i.aaf = fmul fast <4 x float> %i.aae, %i.zz
  %i.aag = fadd fast <4 x float> %i.aaf, splat (float f0x3D2AA9C1)
  %i.aah = fmul fast <4 x float> %i.aag, %i.zz
  %i.aai = fadd fast <4 x float> %i.aah, splat (float f0x3E2AAAAA)
  %i.aaj = fmul fast <4 x float> %i.aai, %i.zz
  %i.aak = fadd fast <4 x float> %i.aaj, splat (float 5.000000e-01)
  %i.aal = fmul fast <4 x float> %i.aaa, %i.aak
  %i.aam = fadd fast <4 x float> %i.zz, %i.aal
  %i.aan = fadd fast <4 x float> %i.aam, splat (float 1.000000e+00)
  %i.aao = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.zx)
  %i.aap = shl <4 x i32> %i.aao, splat (i32 23)
  %i.aaq = add <4 x i32> %i.aap, splat (i32 1065353216)
  %i.aar = bitcast <4 x i32> %i.aaq to <4 x float>
  %i.aas = fmul fast <4 x float> %i.aan, %i.aar
  %i.aat = fadd fast <4 x float> %i.aas, splat (float 1.000000e+00) ; 2 uses
  %i.aau = fcmp fast ole <4 x float> %i.aat, zeroinitializer
  %i.aav = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aat, <4 x float> splat (float f0x00800000))
  %i.aaw = bitcast <4 x float> %i.aav to <4 x i32> ; 2 uses
  %i.aax = lshr <4 x i32> %i.aaw, splat (i32 23)
  %i.aay = and <4 x i32> %i.aaw, splat (i32 -2139095041)
  %i.aaz = or disjoint <4 x i32> %i.aay, splat (i32 1056964608)
  %i.aba = bitcast <4 x i32> %i.aaz to <4 x float> ; 3 uses
  %i.abb = add nsw <4 x i32> %i.aax, splat (i32 -127)
  %i.abc = sitofp fast <4 x i32> %i.abb to <4 x float> ; 2 uses
  %i.abd = fadd fast <4 x float> %i.abc, splat (float 1.000000e+00)
  %i.abe = fcmp fast olt <4 x float> %i.aba, splat (float f0x3F3504F3) ; 2 uses
  %i.abf = select <4 x i1> %i.abe, <4 x float> %i.aba, <4 x float> zeroinitializer
  %i.abg = fadd fast <4 x float> %i.aba, splat (float -1.000000e+00)
  %i.abh = select fast <4 x i1> %i.abe, <4 x float> %i.abc, <4 x float> %i.abd
  %i.abi = fadd fast <4 x float> %i.abg, %i.abf   ; 12 uses
  %i.abj = fmul fast <4 x float> %i.abi, %i.abi   ; 2 uses
  %i.abk = fmul fast <4 x float> %i.abi, splat (float f0x3D9021BB)
  %i.abl = fadd fast <4 x float> %i.abk, splat (float f0xBDEBD1B8)
  %i.abm = fmul fast <4 x float> %i.abl, %i.abi
  %i.abn = fadd fast <4 x float> %i.abm, splat (float f0x3DEF251A)
  %i.abo = fmul fast <4 x float> %i.abn, %i.abi
  %i.abp = fadd fast <4 x float> %i.abo, splat (float f0xBDFE5D4F)
  %i.abq = fmul fast <4 x float> %i.abp, %i.abi
  %i.abr = fadd fast <4 x float> %i.abq, splat (float f0x3E11E9BF)
  %i.abs = fmul fast <4 x float> %i.abr, %i.abi
  %i.abt = fadd fast <4 x float> %i.abs, splat (float f0xBE2AAE50)
  %i.abu = fmul fast <4 x float> %i.abt, %i.abi
  %i.abv = fadd fast <4 x float> %i.abu, splat (float f0x3E4CCEAC)
  %i.abw = fmul fast <4 x float> %i.abv, %i.abi
  %i.abx = fadd fast <4 x float> %i.abw, splat (float f0xBE7FFFFC)
  %i.aby = fmul fast <4 x float> %i.abx, %i.abi
  %i.abz = fadd fast <4 x float> %i.aby, splat (float f0x3EAAAAAA)
  %i.aca = fmul fast <4 x float> %i.abj, %i.abi
  %reass.mul856 = fmul fast <4 x float> %i.aca, %i.abz
  %.neg853 = fmul fast <4 x float> %i.abj, splat (float -5.000000e-01)
  %reass.mul858 = fmul fast <4 x float> %i.abh, splat (float f0x3F317218)
  %30 = fadd fast <4 x float> %i.abi, %.neg853
  %i.acb = fadd fast <4 x float> %reass.mul856, %30
  %i.acc = fadd fast <4 x float> %i.acb, %reass.mul858
  %.neg849 = fmul fast <4 x float> %i.acc, splat (float -2.000000e+00)
  %i.acd = select fast <4 x i1> %i.aau, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg849
  %i.ace = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.acd, <4 x float> splat (float f0x42B0C0A5))
  %i.acf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ace, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.acg = fmul fast <4 x float> %i.acf, splat (float f0x3FB8AA3B)
  %i.ach = fadd fast <4 x float> %i.acg, splat (float 5.000000e-01) ; 2 uses
  %i.aci = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ach)
  %i.acj = sitofp fast <4 x i32> %i.aci to <4 x float> ; 2 uses
  %i.ack = fcmp fast olt <4 x float> %i.ach, %i.acj
  %i.acl = select <4 x i1> %i.ack, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.acm = fsub fast <4 x float> %i.acj, %i.acl   ; 2 uses
  %i.acn = fmul fast <4 x float> %i.acm, splat (float f0x3F317218)
  %i.aco = fsub fast <4 x float> %i.acf, %i.acn   ; 8 uses
  %i.acp = fmul fast <4 x float> %i.aco, %i.aco
  %i.acq = fmul fast <4 x float> %i.aco, splat (float f0x39506967)
  %i.acr = fadd fast <4 x float> %i.acq, splat (float f0x3AB743CE)
  %i.acs = fmul fast <4 x float> %i.acr, %i.aco
  %i.act = fadd fast <4 x float> %i.acs, splat (float f0x3C088908)
  %i.acu = fmul fast <4 x float> %i.act, %i.aco
  %i.acv = fadd fast <4 x float> %i.acu, splat (float f0x3D2AA9C1)
  %i.acw = fmul fast <4 x float> %i.acv, %i.aco
  %i.acx = fadd fast <4 x float> %i.acw, splat (float f0x3E2AAAAA)
  %i.acy = fmul fast <4 x float> %i.acx, %i.aco
  %i.acz = fadd fast <4 x float> %i.acy, splat (float 5.000000e-01)
  %i.ada = fmul fast <4 x float> %i.acp, %i.acz
  %i.adb = fadd fast <4 x float> %i.aco, %i.ada
  %i.adc = fadd fast <4 x float> %i.adb, splat (float 1.000000e+00)
  %i.add = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.acm)
  %i.ade = shl <4 x i32> %i.add, splat (i32 23)
  %i.adf = add <4 x i32> %i.ade, splat (i32 1065353216)
  %i.adg = bitcast <4 x i32> %i.adf to <4 x float>
  %i.adh = fmul fast <4 x float> %i.adc, %i.adg
  %i.adi = fadd fast <4 x float> %i.adh, splat (float 1.000000e+00)
  %i.adj = fdiv fast <4 x float> splat (float 2.000000e+00), %i.adi
  %i.adk = fadd fast <4 x float> %i.adj, splat (float -1.000000e+00)
  %i.adl = fmul fast <4 x float> %i.adk, %.2828.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.au:                                            ; preds = %bb.ar
  %i.adm = load ptr, ptr %28, align 8, !tbaa !18  ; 2 uses
  %i.adn = load float, ptr %i.adm, align 4, !tbaa !38
  %i.ado = insertelement <4 x float> poison, float %i.adn, i64 0
  %i.adp = shufflevector <4 x float> %i.ado, <4 x float> poison, <4 x i32> zeroinitializer
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adm, i64 4
  %i.adr = load float, ptr %i.adq, align 4, !tbaa !38
  %i.ads = insertelement <4 x float> poison, float %i.adr, i64 0
  %i.adt = shufflevector <4 x float> %i.ads, <4 x float> poison, <4 x i32> zeroinitializer
  %i.adu = fmul fast <4 x float> %i.adp, %.2828.lcssa
  %i.adv = fadd fast <4 x float> %i.adu, %i.adt
  %i.adw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.adv, <4 x float> zeroinitializer)
  %i.adx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.adw, <4 x float> splat (float 1.000000e+00))
  %i.ady = fmul fast <4 x float> %i.adx, %.2828.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.au, %.noexc375, %.noexc374, %bb.at, %.noexc373, %bb.as, %bb.ar
  %.0.i372 = phi nsz <4 x float> [ %i.ady, %bb.au ], [ %i.xp, %bb.as ], [ %i.xx, %.noexc373 ], [ %i.yh, %bb.at ], [ %i.zo, %.noexc374 ], [ %i.adl, %.noexc375 ], [ %.2828.lcssa, %bb.ar ]
  %i.adz = load i32, ptr %3, align 4, !tbaa !68
  %i.aea = mul nsw i32 %i.adz, %i.ae
  %i.aeb = add nsw i32 %i.aea, %i.aj
  %i.aec = shl nsw i32 %i.aeb, 2
  %i.aed = sext i32 %i.aec to i64
  %i.aee = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.aed
  store <4 x float> %.0.i372, ptr %i.aee, align 16, !tbaa !97
  %.pre = load i32, ptr %12, align 4, !tbaa !68
  br label %bb.av

bb.av:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %bb.aq
  %i.aef = phi i32 [ %.pre, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.xm, %bb.aq ]
  %i.aeg = icmp eq i32 %i.aef, 1
  br i1 %i.aeg, label %bb.aw, label %bb.bg

bb.aw:                                            ; preds = %bb.av
  %i.aeh = load i32, ptr %27, align 4, !tbaa !68
  switch i32 %i.aeh, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ax
    i32 2, label %bb.ay
    i32 3, label %bb.az
    i32 4, label %bb.bb
    i32 5, label %bb.bc
    i32 6, label %bb.bd
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.aei = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.1263.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ay:                                            ; preds = %bb.aw
  %i.aej = load ptr, ptr %28, align 8, !tbaa !18
  %i.aek = load float, ptr %i.aej, align 4, !tbaa !38
  %i.ael = fcmp fast ogt float %.1263.lcssa, 0.000000e+00
  %i.aem = select fast i1 %i.ael, float 1.000000e+00, float %i.aek
  %i.aen = fmul fast float %i.aem, %.1263.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.az:                                            ; preds = %bb.aw
  %i.aeo = load ptr, ptr %28, align 8, !tbaa !18  ; 2 uses
  %i.aep = load float, ptr %i.aeo, align 4, !tbaa !38
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aeo, i64 4
  %i.aer = load float, ptr %i.aeq, align 4, !tbaa !38 ; 2 uses
  %.0824 = call nnan ninf nsz float @llvm.maxnum.f32(float %.1263.lcssa, float %i.aep) ; 2 uses
  %i.aes = fcmp fast ogt float %.0824, %i.aer
  br i1 %i.aes, label %bb.ba, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ba:                                            ; preds = %bb.az
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bb:                                            ; preds = %bb.aw
  %.sroa.speculated597 = call nnan ninf nsz float @llvm.minnum.f32(float %.1263.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated597, float f0xC2B0C0A5)
  %i.aet = fneg fast float %.sroa.speculated
  %i.aeu = call fast float @llvm.exp.f32(float %i.aet)
  %i.aev = fadd fast float %i.aeu, 1.000000e+00
  %i.aew = fdiv fast float 1.000000e+00, %i.aev
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bc:                                            ; preds = %bb.aw
  %i.aex = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.1263.lcssa)
  %i.aey = fadd fast float %i.aex, 1.000000e+00
  %i.aez = call fast float @llvm.log.f32(float %i.aey)
  %i.afa = call fast float @llvm.tanh.f32(float %i.aez)
  %i.afb = fmul fast float %i.afa, %.1263.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bd:                                            ; preds = %bb.aw
  %i.afc = load ptr, ptr %28, align 8, !tbaa !18  ; 2 uses
  %i.afd = load float, ptr %i.afc, align 4, !tbaa !38 ; 3 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afc, i64 4
  %i.aff = load float, ptr %i.afe, align 4, !tbaa !38 ; 2 uses
  %i.afg = fneg fast float %i.aff
  %i.afh = fdiv fast float %i.afg, %i.afd         ; 2 uses
  %i.afi = fcmp fast olt float %.1263.lcssa, %i.afh
  br i1 %i.afi, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.afj = fdiv fast float 1.000000e+00, %i.afd
  %i.afk = fadd fast float %i.afh, %i.afj
  %i.afl = fcmp fast ogt float %.1263.lcssa, %i.afk
  br i1 %i.afl, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.afm = fmul fast float %i.afd, %.1263.lcssa
  %i.afn = fadd fast float %i.afm, %i.aff
  %i.afo = fmul fast float %i.afn, %.1263.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.bf, %bb.be, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.bd
  %.1825 = phi nsz float [ %.1263.lcssa, %bb.aw ], [ %i.aei, %bb.ax ], [ %i.aen, %bb.ay ], [ %i.aer, %bb.ba ], [ %.0824, %bb.az ], [ %i.aew, %bb.bb ], [ %i.afb, %bb.bc ], [ %i.afo, %bb.bf ], [ %.1263.lcssa, %bb.be ], [ 0.000000e+00, %bb.bd ]
  %i.afp = load i32, ptr %3, align 4, !tbaa !68
  %i.afq = sext i32 %i.afp to i64
  %i.afr = mul nsw i64 %indvars.iv984, %i.afq
  %i.afs = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.afr
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %indvars.iv981
  store float %.1825, ptr %i.aft, align 4, !tbaa !38
  br label %bb.bg

bb.bg:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit, %bb.av
  %indvars.iv.next979 = add nuw nsw i64 %indvars.iv978, 1 ; 2 uses
  %i.afu = load i32, ptr %8, align 4, !tbaa !68   ; 2 uses
  %i.afv = sext i32 %i.afu to i64
  %i.afw = icmp slt i64 %indvars.iv.next979, %i.afv
  br i1 %i.afw, label %.noexc360, label %._crit_edge.loopexit, !llvm.loop !182

._crit_edge930:                                   ; preds = %._crit_edge926.a, %.preheader862.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.bh

bb.bh:                                            ; preds = %._crit_edge930, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #14

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18
end_hunk_2
