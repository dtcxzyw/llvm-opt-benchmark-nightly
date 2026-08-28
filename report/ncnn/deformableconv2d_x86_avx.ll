Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deformableconv2d_x86_avx?download=true
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
  %.2.lcssa = phi ptr [ %.1209, %_ZN4ncnn3Mat7channelEi.exit ], [ %.1209, %.preheader.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
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
  %i.es = add nuw nsw i32 %.0103210, 1            ; 2 uses
  %i.et = load i32, ptr %i.r, align 4, !tbaa !44  ; 3 uses
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %.noexc138, label %._crit_edge212.loopexit, !llvm.loop !117

._crit_edge.loopexit:                             ; preds = %.critedge
  %.pre = load i32, ptr %10, align 4, !tbaa !68
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ev = phi i32 [ %i.ea, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.ew = phi i32 [ %i.eb, %.preheader ], [ %i.jm, %._crit_edge.loopexit ]
  %.3.lcssa = phi ptr [ %.2205, %.preheader ], [ %i.jl, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %i.ex = sext i32 %i.ev to i64
  %i.ey = icmp slt i64 %indvars.iv.next225, %i.ex
  br i1 %i.ey, label %.preheader, label %._crit_edge207, !llvm.loop !118

bb.k:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 5 uses
  %.3203 = phi ptr [ %.2205, %.lr.ph ], [ %i.jl, %.critedge ] ; 2 uses
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
  %i.io = fadd fast <8 x float> %i.in, %i.ik
  %i.ip = insertelement <8 x float> poison, float %i.ha, i64 0
  %i.iq = shufflevector <8 x float> %i.ip, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ir = fmul fast <8 x float> %i.hz, %i.iq
  %i.is = fadd fast <8 x float> %i.io, %i.ir
  %i.it = insertelement <8 x float> poison, float %i.hb, i64 0
  %i.iu = shufflevector <8 x float> %i.it, <8 x float> poison, <8 x i32> zeroinitializer
  %i.iv = fmul fast <8 x float> %i.ih, %i.iu
  %i.iw = fadd fast <8 x float> %i.is, %i.iv      ; 2 uses
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
  store <8 x float> %.1198, ptr %.3203, align 32, !tbaa !97
  %i.jl = getelementptr inbounds nuw i8, ptr %.3203, i64 32 ; 2 uses
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
  %.0104215 = phi i32 [ %i.cd, %._crit_edge212 ], [ 0, %.preheader200.preheader ] ; 3 uses
  %.0105214 = phi ptr [ %.1.lcssa, %._crit_edge212 ], [ %i.bs, %.preheader200.preheader ] ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.noexc138.preheader, label %._crit_edge212

.noexc138.preheader:                              ; preds = %.preheader200
  %i.bw = insertelement <2 x i32> poison, i32 %.0104215, i64 1
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
  %.2.lcssa = phi ptr [ %.1209, %_ZN4ncnn3Mat7channelEi.exit ], [ %.1209, %.preheader.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
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
  %i.es = add nuw nsw i32 %.0103210, 1            ; 2 uses
  %i.et = load i32, ptr %i.r, align 4, !tbaa !44  ; 3 uses
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %.noexc138, label %._crit_edge212.loopexit, !llvm.loop !133

._crit_edge.loopexit:                             ; preds = %.critedge
  %.pre = load i32, ptr %10, align 4, !tbaa !68
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ev = phi i32 [ %i.ea, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.ew = phi i32 [ %i.eb, %.preheader ], [ %i.jm, %._crit_edge.loopexit ]
  %.3.lcssa = phi ptr [ %.2205, %.preheader ], [ %i.jl, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %i.ex = sext i32 %i.ev to i64
  %i.ey = icmp slt i64 %indvars.iv.next225, %i.ex
  br i1 %i.ey, label %.preheader, label %._crit_edge207, !llvm.loop !134

bb.k:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 5 uses
  %.3203 = phi ptr [ %.2205, %.lr.ph ], [ %i.jl, %.critedge ] ; 2 uses
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
  %i.io = fadd fast <4 x float> %i.in, %i.ik
  %i.ip = insertelement <4 x float> poison, float %i.ha, i64 0
  %i.iq = shufflevector <4 x float> %i.ip, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ir = fmul fast <4 x float> %i.hz, %i.iq
  %i.is = fadd fast <4 x float> %i.io, %i.ir
  %i.it = insertelement <4 x float> poison, float %i.hb, i64 0
  %i.iu = shufflevector <4 x float> %i.it, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iv = fmul fast <4 x float> %i.ih, %i.iu
  %i.iw = fadd fast <4 x float> %i.is, %i.iv      ; 2 uses
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
  store <4 x float> %.1198, ptr %.3203, align 16, !tbaa !97
  %i.jl = getelementptr inbounds nuw i8, ptr %.3203, i64 16 ; 2 uses
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
  %.0111206 = phi i32 [ %i.ce, %._crit_edge ], [ 0, %.preheader193.preheader ] ; 3 uses
  %.0112205 = phi ptr [ %.1113.lcssa, %._crit_edge ], [ %i.bu, %.preheader193.preheader ] ; 2 uses
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
  %.1113.lcssa = phi ptr [ %.0112205, %.preheader193 ], [ %.2.lcssa, %._crit_edge.loopexit ]
  %i.ce = add nuw nsw i32 %.0111206, 1            ; 2 uses
  %i.cf = icmp slt i32 %i.ce, %i.cc
  br i1 %i.cf, label %.preheader193, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !140

.noexc146:                                        ; preds = %.preheader193, %_ZN4ncnn3MatD2Ev.exit121
  %i.cg = phi i32 [ %i.im, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.bw, %.preheader193 ]
  %.0110203 = phi i32 [ %i.il, %_ZN4ncnn3MatD2Ev.exit121 ], [ 0, %.preheader193 ] ; 3 uses
  %.1113202 = phi ptr [ %.2.lcssa, %_ZN4ncnn3MatD2Ev.exit121 ], [ %.0112205, %.preheader193 ] ; 3 uses
  %i.ch = mul nsw i32 %i.cg, %.0111206
  %i.ci = add nsw i32 %i.ch, %.0110203            ; 2 uses
  %i.cj = shl nsw i32 %i.ci, 1                    ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnnL23deformableconv2d_packedERKSt6vectorINS_3MatESaIS1_EERS1_RKS1_S8_iiiiiiiiiS8_RKNS_6OptionE.omp_outlined:bb.a
_ZN4ncnn3MatD2Ev.exit.lr.ph.us:                   ; preds = %.thread846.us
  %i.pz = load ptr, ptr %25, align 8, !tbaa !18, !noalias !178
  %i.qa = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !178
  %i.qb = load i64, ptr %i.u, align 8, !tbaa !56, !noalias !178
  %factor.op.mul.us = mul i64 %i.qa, %i.qb
  %i.qc = load i32, ptr %12, align 4, !tbaa !68   ; 3 uses
  %i.qd = icmp eq i32 %i.qc, 8
  %i.qe = insertelement <8 x float> poison, float %.1275.us, i64 0
  %i.qf = shufflevector <8 x float> %i.qe, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qg = icmp eq i32 %i.qc, 4
  %i.qh = insertelement <4 x float> poison, float %.1275.us, i64 0
  %i.qi = shufflevector <4 x float> %i.qh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qj = icmp eq i32 %i.qc, 1
  %broadcast.splatinsert = insertelement <8 x i1> poison, i1 %.0266.us, i64 0
  %broadcast.splat = shufflevector <8 x i1> %broadcast.splatinsert, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1032 = insertelement <8 x i1> poison, i1 %.0267.us, i64 0
  %broadcast.splat1033 = shufflevector <8 x i1> %broadcast.splatinsert1032, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1034 = insertelement <8 x i1> poison, i1 %.0268.us, i64 0
  %broadcast.splat1035 = shufflevector <8 x i1> %broadcast.splatinsert1034, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1036 = insertelement <8 x i1> poison, i1 %.0269.us, i64 0
  %broadcast.splat1037 = shufflevector <8 x i1> %broadcast.splatinsert1036, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1038 = insertelement <8 x i1> poison, i1 %i.ip, i64 0
  %broadcast.splat1039 = shufflevector <8 x i1> %broadcast.splatinsert1038, <8 x i1> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.qk = select <8 x i1> %broadcast.splat1039, <8 x i1> %broadcast.splat1037, <8 x i1> zeroinitializer ; 2 uses
  %i.ql = select <8 x i1> %broadcast.splat1039, <8 x i1> %broadcast.splat1035, <8 x i1> zeroinitializer ; 2 uses
  %i.qm = select <8 x i1> %broadcast.splat1039, <8 x i1> %broadcast.splat1033, <8 x i1> zeroinitializer ; 2 uses
  %i.qn = select <8 x i1> %broadcast.splat1039, <8 x i1> %broadcast.splat, <8 x i1> zeroinitializer ; 4 uses
  %broadcast.splatinsert1040 = insertelement <8 x float> poison, float %.0273.us, i64 0
  %broadcast.splat1041 = shufflevector <8 x float> %broadcast.splatinsert1040, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1042 = insertelement <8 x float> poison, float %.0272.us, i64 0
  %broadcast.splat1043 = shufflevector <8 x float> %broadcast.splatinsert1042, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1044 = insertelement <8 x float> poison, float %.0271.us, i64 0
  %broadcast.splat1045 = shufflevector <8 x float> %broadcast.splatinsert1044, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1046 = insertelement <8 x float> poison, float %.0270.us, i64 0
  %broadcast.splat1047 = shufflevector <8 x float> %broadcast.splatinsert1046, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1048 = insertelement <8 x float> poison, float %.1275.us, i64 0
  %broadcast.splat1049 = shufflevector <8 x float> %broadcast.splatinsert1048, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.qo = select ninf i1 %i.by, <8 x float> %broadcast.splat1049, <8 x float> splat (float 1.000000e+00)
  %i.qp = select ninf i1 %i.by, <8 x float> %broadcast.splat1049, <8 x float> splat (float 1.000000e+00)
  %broadcast.splatinsert1069 = insertelement <8 x i1> poison, i1 %.0266.us, i64 0
  %broadcast.splat1070 = shufflevector <8 x i1> %broadcast.splatinsert1069, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1071 = insertelement <8 x i1> poison, i1 %.0267.us, i64 0
  %broadcast.splat1072 = shufflevector <8 x i1> %broadcast.splatinsert1071, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1073 = insertelement <8 x i1> poison, i1 %.0268.us, i64 0
  %broadcast.splat1074 = shufflevector <8 x i1> %broadcast.splatinsert1073, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1075 = insertelement <8 x i1> poison, i1 %.0269.us, i64 0
  %broadcast.splat1076 = shufflevector <8 x i1> %broadcast.splatinsert1075, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1077 = insertelement <8 x i1> poison, i1 %i.ip, i64 0
  %broadcast.splat1078 = shufflevector <8 x i1> %broadcast.splatinsert1077, <8 x i1> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.qq = select <8 x i1> %broadcast.splat1078, <8 x i1> %broadcast.splat1076, <8 x i1> zeroinitializer
  %i.qr = select <8 x i1> %broadcast.splat1078, <8 x i1> %broadcast.splat1074, <8 x i1> zeroinitializer
  %i.qs = select <8 x i1> %broadcast.splat1078, <8 x i1> %broadcast.splat1072, <8 x i1> zeroinitializer
  %i.qt = select <8 x i1> %broadcast.splat1078, <8 x i1> %broadcast.splat1070, <8 x i1> zeroinitializer ; 2 uses
  %broadcast.splatinsert1079 = insertelement <8 x float> poison, float %.0273.us, i64 0
  %broadcast.splat1080 = shufflevector <8 x float> %broadcast.splatinsert1079, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1081 = insertelement <8 x float> poison, float %.0272.us, i64 0
  %broadcast.splat1082 = shufflevector <8 x float> %broadcast.splatinsert1081, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1083 = insertelement <8 x float> poison, float %.0271.us, i64 0
  %broadcast.splat1084 = shufflevector <8 x float> %broadcast.splatinsert1083, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1085 = insertelement <8 x float> poison, float %.0270.us, i64 0
  %broadcast.splat1086 = shufflevector <8 x float> %broadcast.splatinsert1085, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1087 = insertelement <8 x float> poison, float %.1275.us, i64 0
  %broadcast.splat1088 = shufflevector <8 x float> %broadcast.splatinsert1087, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qu = select ninf i1 %i.by, <8 x float> %broadcast.splat1088, <8 x float> splat (float 1.000000e+00)
  br label %_ZN4ncnn3MatD2Ev.exit.us

._crit_edge892.us:                                ; preds = %._crit_edge.us
  %indvars.iv.next970 = add nuw nsw i64 %indvars.iv969, 1 ; 2 uses
  %exitcond973.not = icmp eq i64 %indvars.iv.next970, %wide.trip.count972
  br i1 %exitcond973.not, label %._crit_edge902, label %.preheader857.us, !llvm.loop !181

._crit_edge902:                                   ; preds = %._crit_edge892.us, %.preheader857.lr.ph, %.thread842
  %.2833.lcssa = phi <8 x float> [ %.1832, %.thread842 ], [ %.1832, %.preheader857.lr.ph ], [ %.4835.lcssa.us, %._crit_edge892.us ] ; 10 uses
  %.2826.lcssa = phi <4 x float> [ %.1825, %.thread842 ], [ %.1825, %.preheader857.lr.ph ], [ %.4828.lcssa.us, %._crit_edge892.us ] ; 10 uses
  %.1281.lcssa = phi float [ %.0280, %.thread842 ], [ %.0280, %.preheader857.lr.ph ], [ %.3.lcssa.us, %._crit_edge892.us ] ; 13 uses
  %i.qv = load i32, ptr %12, align 4, !tbaa !68   ; 2 uses
  %i.qw = icmp eq i32 %i.qv, 8
  br i1 %i.qw, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %._crit_edge902
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
  %i.qy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.2833.lcssa, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc368:                                        ; preds = %bb.an
  %i.qz = load ptr, ptr %28, align 8, !tbaa !18
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !38
  %i.rb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.2833.lcssa)
  %i.rc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.2833.lcssa)
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
  %i.rp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.2833.lcssa, <8 x float> nofpclass(nan inf) %i.rk)
  %i.rq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.rp, <8 x float> nofpclass(nan inf) %i.ro)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc369:                                        ; preds = %bb.an
  %i.rr = fneg fast <8 x float> %.2833.lcssa
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
  %i.sx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %.2833.lcssa, <8 x float> splat (float f0x42B0C0A5))
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
  %i.ur = fmul fast <8 x float> %i.uq, %i.uq
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
  %i.vi = fmul fast <8 x float> %i.vh, %i.uq
  %i.vj = fmul fast <8 x float> %i.up, splat (float f0x3F317218)
  %reass.add853 = fadd fast <8 x float> %i.vi, splat (float -5.000000e-01)
  %reass.mul = fmul fast <8 x float> %i.ur, %reass.add853
  %i.vk = fadd fast <8 x float> %i.vj, %i.uq
  %i.vl = fadd fast <8 x float> %i.vk, %reass.mul
  %.neg = fmul fast <8 x float> %i.vl, splat (float -2.000000e+00)
  %i.vm = select fast <8 x i1> %i.ub, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg
  %i.vn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.vm, <8 x float> splat (float f0x42B0C0A5))
  %i.vo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.vn, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.vp = fmul fast <8 x float> %i.vo, splat (float f0x3FB8AA3B)
  %i.vq = fadd fast <8 x float> %i.vp, splat (float 5.000000e-01) ; 2 uses
  %i.vr = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.vq, i32 1) ; 2 uses
  %i.vs = fcmp fast ogt <8 x float> %i.vr, %i.vq
  %i.vt = select <8 x i1> %i.vs, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.vu = fsub fast <8 x float> %i.vr, %i.vt      ; 2 uses
  %i.vv = fmul fast <8 x float> %i.vu, splat (float f0x3F317218)
  %i.vw = fsub fast <8 x float> %i.vo, %i.vv      ; 8 uses
  %i.vx = fmul fast <8 x float> %i.vw, %i.vw
  %i.vy = fmul fast <8 x float> %i.vw, splat (float f0x39506967)
  %i.vz = fadd fast <8 x float> %i.vy, splat (float f0x3AB743CE)
  %i.wa = fmul fast <8 x float> %i.vz, %i.vw
  %i.wb = fadd fast <8 x float> %i.wa, splat (float f0x3C088908)
  %i.wc = fmul fast <8 x float> %i.wb, %i.vw
  %i.wd = fadd fast <8 x float> %i.wc, splat (float f0x3D2AA9C1)
  %i.we = fmul fast <8 x float> %i.wd, %i.vw
  %i.wf = fadd fast <8 x float> %i.we, splat (float f0x3E2AAAAA)
  %i.wg = fmul fast <8 x float> %i.wf, %i.vw
  %i.wh = fadd fast <8 x float> %i.wg, splat (float 5.000000e-01)
  %i.wi = fmul fast <8 x float> %i.vx, %i.wh
  %i.wj = fadd fast <8 x float> %i.vw, %i.wi
  %i.wk = fadd fast <8 x float> %i.wj, splat (float 1.000000e+00)
  %i.wl = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.vu)
  %i.wm = shl <8 x i32> %i.wl, splat (i32 23)
  %i.wn = add <8 x i32> %i.wm, splat (i32 1065353216)
  %i.wo = bitcast <8 x i32> %i.wn to <8 x float>
  %i.wp = fmul fast <8 x float> %i.wk, %i.wo
  %i.wq = fadd fast <8 x float> %i.wp, splat (float 1.000000e+00)
  %i.wr = fdiv fast <8 x float> splat (float 2.000000e+00), %i.wq
  %i.ws = fadd fast <8 x float> %i.wr, splat (float -1.000000e+00)
  %i.wt = fmul fast <8 x float> %i.ws, %.2833.lcssa
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc371:                                        ; preds = %bb.an
  %i.wu = load ptr, ptr %28, align 8, !tbaa !18   ; 2 uses
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !38
  %i.ww = insertelement <8 x float> poison, float %i.wv, i64 0
  %i.wx = shufflevector <8 x float> %i.ww, <8 x float> poison, <8 x i32> zeroinitializer
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wu, i64 4
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !38
  %i.xa = insertelement <8 x float> poison, float %i.wz, i64 0
  %i.xb = shufflevector <8 x float> %i.xa, <8 x float> poison, <8 x i32> zeroinitializer
  %i.xc = fmul fast <8 x float> %i.wx, %.2833.lcssa
  %i.xd = fadd fast <8 x float> %i.xc, %i.xb
  %i.xe = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.xd, <8 x float> zeroinitializer)
  %i.xf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.xe, <8 x float> splat (float 1.000000e+00))
  %i.xg = fmul fast <8 x float> %i.xf, %.2833.lcssa
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc371, %.noexc370, %.noexc369, %bb.ap, %.noexc368, %bb.ao, %bb.an
  %.0.i = phi nsz <8 x float> [ %i.xg, %.noexc371 ], [ %i.qy, %bb.ao ], [ %i.rg, %.noexc368 ], [ %i.rq, %bb.ap ], [ %i.sw, %.noexc369 ], [ %i.wt, %.noexc370 ], [ %.2833.lcssa, %bb.an ]
  %i.xh = load i32, ptr %3, align 4, !tbaa !68
  %i.xi = mul nsw i32 %i.xh, %i.ae
  %i.xj = add nsw i32 %i.xi, %i.aj
  %i.xk = shl nsw i32 %i.xj, 3
  %i.xl = sext i32 %i.xk to i64
  %i.xm = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.xl
  store <8 x float> %.0.i, ptr %i.xm, align 32, !tbaa !97
  %.pr = load i32, ptr %12, align 4, !tbaa !68
  br label %bb.aq

bb.aq:                                            ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %._crit_edge902
  %i.xn = phi i32 [ %.pr, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %i.qv, %._crit_edge902 ] ; 2 uses
  %i.xo = icmp eq i32 %i.xn, 4
  br i1 %i.xo, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.xp = load i32, ptr %27, align 4, !tbaa !68
  switch i32 %i.xp, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.as
    i32 2, label %.noexc373
    i32 3, label %bb.at
    i32 4, label %.noexc374
    i32 5, label %.noexc375
    i32 6, label %bb.au
  ]

bb.as:                                            ; preds = %bb.ar
  %i.xq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.2826.lcssa, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc373:                                        ; preds = %bb.ar
  %i.xr = load ptr, ptr %28, align 8, !tbaa !18
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !38
  %i.xt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.2826.lcssa)
  %i.xu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.2826.lcssa)
  %i.xv = insertelement <4 x float> poison, float %i.xs, i64 0
  %i.xw = shufflevector <4 x float> %i.xv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xx = fmul fast <4 x float> %i.xw, %i.xu
  %i.xy = fadd fast <4 x float> %i.xx, %i.xt
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.at:                                            ; preds = %bb.ar
  %i.xz = load ptr, ptr %28, align 8, !tbaa !18   ; 2 uses
  %i.ya = load float, ptr %i.xz, align 4, !tbaa !38
  %i.yb = insertelement <4 x float> poison, float %i.ya, i64 0
  %i.yc = shufflevector <4 x float> %i.yb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xz, i64 4
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !38
  %i.yf = insertelement <4 x float> poison, float %i.ye, i64 0
  %i.yg = shufflevector <4 x float> %i.yf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.2826.lcssa, <4 x float> nofpclass(nan inf) %i.yc)
  %i.yi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.yh, <4 x float> nofpclass(nan inf) %i.yg)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc374:                                        ; preds = %bb.ar
  %i.yj = fneg fast <4 x float> %.2826.lcssa
  %i.yk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.yj, <4 x float> splat (float f0x42B0C0A5))
  %i.yl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.yk, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ym = fmul fast <4 x float> %i.yl, splat (float f0x3FB8AA3B)
  %i.yn = fadd fast <4 x float> %i.ym, splat (float 5.000000e-01) ; 2 uses
  %i.yo = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yn)
  %i.yp = sitofp fast <4 x i32> %i.yo to <4 x float> ; 2 uses
  %i.yq = fcmp fast olt <4 x float> %i.yn, %i.yp
  %i.yr = select <4 x i1> %i.yq, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ys = fsub fast <4 x float> %i.yp, %i.yr      ; 2 uses
  %i.yt = fmul fast <4 x float> %i.ys, splat (float f0x3F317218)
  %i.yu = fsub fast <4 x float> %i.yl, %i.yt      ; 8 uses
  %i.yv = fmul fast <4 x float> %i.yu, %i.yu
  %i.yw = fmul fast <4 x float> %i.yu, splat (float f0x39506967)
  %i.yx = fadd fast <4 x float> %i.yw, splat (float f0x3AB743CE)
  %i.yy = fmul fast <4 x float> %i.yx, %i.yu
  %i.yz = fadd fast <4 x float> %i.yy, splat (float f0x3C088908)
  %i.za = fmul fast <4 x float> %i.yz, %i.yu
  %i.zb = fadd fast <4 x float> %i.za, splat (float f0x3D2AA9C1)
  %i.zc = fmul fast <4 x float> %i.zb, %i.yu
  %i.zd = fadd fast <4 x float> %i.zc, splat (float f0x3E2AAAAA)
  %i.ze = fmul fast <4 x float> %i.zd, %i.yu
  %i.zf = fadd fast <4 x float> %i.ze, splat (float 5.000000e-01)
  %i.zg = fmul fast <4 x float> %i.yv, %i.zf
  %i.zh = fadd fast <4 x float> %i.yu, %i.zg
  %i.zi = fadd fast <4 x float> %i.zh, splat (float 1.000000e+00)
  %i.zj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ys)
  %i.zk = shl <4 x i32> %i.zj, splat (i32 23)
  %i.zl = add <4 x i32> %i.zk, splat (i32 1065353216)
  %i.zm = bitcast <4 x i32> %i.zl to <4 x float>
  %i.zn = fmul fast <4 x float> %i.zi, %i.zm
  %i.zo = fadd fast <4 x float> %i.zn, splat (float 1.000000e+00)
  %i.zp = fdiv fast <4 x float> splat (float 1.000000e+00), %i.zo
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc375:                                        ; preds = %bb.ar
  %i.zq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.2826.lcssa, <4 x float> splat (float f0x42B0C0A5))
  %i.zr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.zq, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.zs = fmul fast <4 x float> %i.zr, splat (float f0x3FB8AA3B)
  %i.zt = fadd fast <4 x float> %i.zs, splat (float 5.000000e-01) ; 2 uses
  %i.zu = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.zt)
  %i.zv = sitofp fast <4 x i32> %i.zu to <4 x float> ; 2 uses
  %i.zw = fcmp fast olt <4 x float> %i.zt, %i.zv
  %i.zx = select <4 x i1> %i.zw, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.zy = fsub fast <4 x float> %i.zv, %i.zx      ; 2 uses
  %i.zz = fmul fast <4 x float> %i.zy, splat (float f0x3F317218)
  %i.aaa = fsub fast <4 x float> %i.zr, %i.zz     ; 8 uses
  %i.aab = fmul fast <4 x float> %i.aaa, %i.aaa
  %i.aac = fmul fast <4 x float> %i.aaa, splat (float f0x39506967)
  %i.aad = fadd fast <4 x float> %i.aac, splat (float f0x3AB743CE)
  %i.aae = fmul fast <4 x float> %i.aad, %i.aaa
  %i.aaf = fadd fast <4 x float> %i.aae, splat (float f0x3C088908)
  %i.aag = fmul fast <4 x float> %i.aaf, %i.aaa
  %i.aah = fadd fast <4 x float> %i.aag, splat (float f0x3D2AA9C1)
  %i.aai = fmul fast <4 x float> %i.aah, %i.aaa
  %i.aaj = fadd fast <4 x float> %i.aai, splat (float f0x3E2AAAAA)
  %i.aak = fmul fast <4 x float> %i.aaj, %i.aaa
  %i.aal = fadd fast <4 x float> %i.aak, splat (float 5.000000e-01)
  %i.aam = fmul fast <4 x float> %i.aab, %i.aal
  %i.aan = fadd fast <4 x float> %i.aaa, %i.aam
  %i.aao = fadd fast <4 x float> %i.aan, splat (float 1.000000e+00)
  %i.aap = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.zy)
  %i.aaq = shl <4 x i32> %i.aap, splat (i32 23)
  %i.aar = add <4 x i32> %i.aaq, splat (i32 1065353216)
  %i.aas = bitcast <4 x i32> %i.aar to <4 x float>
  %i.aat = fmul fast <4 x float> %i.aao, %i.aas
  %i.aau = fadd fast <4 x float> %i.aat, splat (float 1.000000e+00) ; 2 uses
  %i.aav = fcmp fast ole <4 x float> %i.aau, zeroinitializer
  %i.aaw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aau, <4 x float> splat (float f0x00800000))
  %i.aax = bitcast <4 x float> %i.aaw to <4 x i32> ; 2 uses
  %i.aay = lshr <4 x i32> %i.aax, splat (i32 23)
  %i.aaz = and <4 x i32> %i.aax, splat (i32 -2139095041)
  %i.aba = or disjoint <4 x i32> %i.aaz, splat (i32 1056964608)
  %i.abb = bitcast <4 x i32> %i.aba to <4 x float> ; 3 uses
  %i.abc = add nsw <4 x i32> %i.aay, splat (i32 -127)
  %i.abd = sitofp fast <4 x i32> %i.abc to <4 x float> ; 2 uses
  %i.abe = fadd fast <4 x float> %i.abd, splat (float 1.000000e+00)
  %i.abf = fcmp fast olt <4 x float> %i.abb, splat (float f0x3F3504F3) ; 2 uses
  %i.abg = select <4 x i1> %i.abf, <4 x float> %i.abb, <4 x float> zeroinitializer
  %i.abh = fadd fast <4 x float> %i.abb, splat (float -1.000000e+00)
  %i.abi = select fast <4 x i1> %i.abf, <4 x float> %i.abd, <4 x float> %i.abe
  %i.abj = fadd fast <4 x float> %i.abh, %i.abg   ; 12 uses
  %i.abk = fmul fast <4 x float> %i.abj, %i.abj
  %i.abl = fmul fast <4 x float> %i.abj, splat (float f0x3D9021BB)
  %i.abm = fadd fast <4 x float> %i.abl, splat (float f0xBDEBD1B8)
  %i.abn = fmul fast <4 x float> %i.abm, %i.abj
  %i.abo = fadd fast <4 x float> %i.abn, splat (float f0x3DEF251A)
  %i.abp = fmul fast <4 x float> %i.abo, %i.abj
  %i.abq = fadd fast <4 x float> %i.abp, splat (float f0xBDFE5D4F)
  %i.abr = fmul fast <4 x float> %i.abq, %i.abj
  %i.abs = fadd fast <4 x float> %i.abr, splat (float f0x3E11E9BF)
  %i.abt = fmul fast <4 x float> %i.abs, %i.abj
  %i.abu = fadd fast <4 x float> %i.abt, splat (float f0xBE2AAE50)
  %i.abv = fmul fast <4 x float> %i.abu, %i.abj
  %i.abw = fadd fast <4 x float> %i.abv, splat (float f0x3E4CCEAC)
  %i.abx = fmul fast <4 x float> %i.abw, %i.abj
  %i.aby = fadd fast <4 x float> %i.abx, splat (float f0xBE7FFFFC)
  %i.abz = fmul fast <4 x float> %i.aby, %i.abj
  %i.aca = fadd fast <4 x float> %i.abz, splat (float f0x3EAAAAAA)
  %i.acb = fmul fast <4 x float> %i.aca, %i.abj
  %i.acc = fmul fast <4 x float> %i.abi, splat (float f0x3F317218)
  %reass.add857 = fadd fast <4 x float> %i.acb, splat (float -5.000000e-01)
  %reass.mul854 = fmul fast <4 x float> %i.abk, %reass.add857
  %i.acd = fadd fast <4 x float> %i.acc, %i.abj
  %i.ace = fadd fast <4 x float> %i.acd, %reass.mul854
  %.neg849 = fmul fast <4 x float> %i.ace, splat (float -2.000000e+00)
  %i.acf = select fast <4 x i1> %i.aav, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg849
  %i.acg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.acf, <4 x float> splat (float f0x42B0C0A5))
  %i.ach = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.acg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aci = fmul fast <4 x float> %i.ach, splat (float f0x3FB8AA3B)
  %i.acj = fadd fast <4 x float> %i.aci, splat (float 5.000000e-01) ; 2 uses
  %i.ack = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.acj)
  %i.acl = sitofp fast <4 x i32> %i.ack to <4 x float> ; 2 uses
  %i.acm = fcmp fast olt <4 x float> %i.acj, %i.acl
  %i.acn = select <4 x i1> %i.acm, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aco = fsub fast <4 x float> %i.acl, %i.acn   ; 2 uses
  %i.acp = fmul fast <4 x float> %i.aco, splat (float f0x3F317218)
  %i.acq = fsub fast <4 x float> %i.ach, %i.acp   ; 8 uses
  %i.acr = fmul fast <4 x float> %i.acq, %i.acq
  %i.acs = fmul fast <4 x float> %i.acq, splat (float f0x39506967)
  %i.act = fadd fast <4 x float> %i.acs, splat (float f0x3AB743CE)
  %i.acu = fmul fast <4 x float> %i.act, %i.acq
  %i.acv = fadd fast <4 x float> %i.acu, splat (float f0x3C088908)
  %i.acw = fmul fast <4 x float> %i.acv, %i.acq
  %i.acx = fadd fast <4 x float> %i.acw, splat (float f0x3D2AA9C1)
  %i.acy = fmul fast <4 x float> %i.acx, %i.acq
  %i.acz = fadd fast <4 x float> %i.acy, splat (float f0x3E2AAAAA)
  %i.ada = fmul fast <4 x float> %i.acz, %i.acq
  %i.adb = fadd fast <4 x float> %i.ada, splat (float 5.000000e-01)
  %i.adc = fmul fast <4 x float> %i.acr, %i.adb
  %i.add = fadd fast <4 x float> %i.acq, %i.adc
  %i.ade = fadd fast <4 x float> %i.add, splat (float 1.000000e+00)
  %i.adf = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aco)
  %i.adg = shl <4 x i32> %i.adf, splat (i32 23)
  %i.adh = add <4 x i32> %i.adg, splat (i32 1065353216)
  %i.adi = bitcast <4 x i32> %i.adh to <4 x float>
  %i.adj = fmul fast <4 x float> %i.ade, %i.adi
  %i.adk = fadd fast <4 x float> %i.adj, splat (float 1.000000e+00)
  %i.adl = fdiv fast <4 x float> splat (float 2.000000e+00), %i.adk
  %i.adm = fadd fast <4 x float> %i.adl, splat (float -1.000000e+00)
  %i.adn = fmul fast <4 x float> %i.adm, %.2826.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.au:                                            ; preds = %bb.ar
  %i.ado = load ptr, ptr %28, align 8, !tbaa !18  ; 2 uses
  %i.adp = load float, ptr %i.ado, align 4, !tbaa !38
  %i.adq = insertelement <4 x float> poison, float %i.adp, i64 0
  %i.adr = shufflevector <4 x float> %i.adq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ads = getelementptr inbounds nuw i8, ptr %i.ado, i64 4
  %i.adt = load float, ptr %i.ads, align 4, !tbaa !38
  %i.adu = insertelement <4 x float> poison, float %i.adt, i64 0
  %i.adv = shufflevector <4 x float> %i.adu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.adw = fmul fast <4 x float> %i.adr, %.2826.lcssa
  %i.adx = fadd fast <4 x float> %i.adw, %i.adv
  %i.ady = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.adx, <4 x float> zeroinitializer)
  %i.adz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ady, <4 x float> splat (float 1.000000e+00))
  %i.aea = fmul fast <4 x float> %i.adz, %.2826.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.au, %.noexc375, %.noexc374, %bb.at, %.noexc373, %bb.as, %bb.ar
  %.0.i372 = phi nsz <4 x float> [ %i.aea, %bb.au ], [ %i.xq, %bb.as ], [ %i.xy, %.noexc373 ], [ %i.yi, %bb.at ], [ %i.zp, %.noexc374 ], [ %i.adn, %.noexc375 ], [ %.2826.lcssa, %bb.ar ]
  %i.aeb = load i32, ptr %3, align 4, !tbaa !68
  %i.aec = mul nsw i32 %i.aeb, %i.ae
  %i.aed = add nsw i32 %i.aec, %i.aj
  %i.aee = shl nsw i32 %i.aed, 2
  %i.aef = sext i32 %i.aee to i64
  %i.aeg = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.aef
  store <4 x float> %.0.i372, ptr %i.aeg, align 16, !tbaa !97
  %.pre = load i32, ptr %12, align 4, !tbaa !68
  br label %bb.av

bb.av:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %bb.aq
  %i.aeh = phi i32 [ %.pre, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.xn, %bb.aq ]
  %i.aei = icmp eq i32 %i.aeh, 1
  br i1 %i.aei, label %bb.aw, label %bb.bg

bb.aw:                                            ; preds = %bb.av
  %i.aej = load i32, ptr %27, align 4, !tbaa !68
  switch i32 %i.aej, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ax
    i32 2, label %bb.ay
    i32 3, label %bb.az
    i32 4, label %bb.bb
    i32 5, label %bb.bc
    i32 6, label %bb.bd
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.aek = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.1281.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ay:                                            ; preds = %bb.aw
  %i.ael = load ptr, ptr %28, align 8, !tbaa !18
  %i.aem = load float, ptr %i.ael, align 4, !tbaa !38
  %i.aen = fcmp fast ogt float %.1281.lcssa, 0.000000e+00
  %i.aeo = select fast i1 %i.aen, float 1.000000e+00, float %i.aem
  %i.aep = fmul fast float %i.aeo, %.1281.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.az:                                            ; preds = %bb.aw
  %i.aeq = load ptr, ptr %28, align 8, !tbaa !18  ; 2 uses
  %i.aer = load float, ptr %i.aeq, align 4, !tbaa !38
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aeq, i64 4
  %i.aet = load float, ptr %i.aes, align 4, !tbaa !38 ; 2 uses
  %.0838 = call nnan ninf nsz float @llvm.maxnum.f32(float %.1281.lcssa, float %i.aer) ; 2 uses
  %i.aeu = fcmp fast ogt float %.0838, %i.aet
  br i1 %i.aeu, label %bb.ba, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ba:                                            ; preds = %bb.az
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bb:                                            ; preds = %bb.aw
  %.sroa.speculated597 = call nnan ninf nsz float @llvm.minnum.f32(float %.1281.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated597, float f0xC2B0C0A5)
  %i.aev = fneg fast float %.sroa.speculated
  %i.aew = call fast float @llvm.exp.f32(float %i.aev)
  %i.aex = fadd fast float %i.aew, 1.000000e+00
  %i.aey = fdiv fast float 1.000000e+00, %i.aex
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bc:                                            ; preds = %bb.aw
  %i.aez = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.1281.lcssa)
  %i.afa = fadd fast float %i.aez, 1.000000e+00
  %i.afb = call fast float @llvm.log.f32(float %i.afa)
  %i.afc = call fast float @llvm.tanh.f32(float %i.afb)
  %i.afd = fmul fast float %i.afc, %.1281.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bd:                                            ; preds = %bb.aw
  %i.afe = load ptr, ptr %28, align 8, !tbaa !18  ; 2 uses
  %i.aff = load float, ptr %i.afe, align 4, !tbaa !38 ; 3 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.afe, i64 4
  %i.afh = load float, ptr %i.afg, align 4, !tbaa !38 ; 2 uses
  %i.afi = fneg fast float %i.afh
  %i.afj = fdiv fast float %i.afi, %i.aff         ; 2 uses
  %i.afk = fcmp fast olt float %.1281.lcssa, %i.afj
  br i1 %i.afk, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.afl = fdiv fast float 1.000000e+00, %i.aff
  %i.afm = fadd fast float %i.afj, %i.afl
  %i.afn = fcmp fast ogt float %.1281.lcssa, %i.afm
  br i1 %i.afn, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.afo = fmul fast float %i.aff, %.1281.lcssa
  %i.afp = fadd fast float %i.afo, %i.afh
  %i.afq = fmul fast float %i.afp, %.1281.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.bf, %bb.be, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.bd
  %.1839 = phi nsz float [ %.1281.lcssa, %bb.aw ], [ %i.aek, %bb.ax ], [ %i.aep, %bb.ay ], [ %i.aet, %bb.ba ], [ %.0838, %bb.az ], [ %i.aey, %bb.bb ], [ %i.afd, %bb.bc ], [ %i.afq, %bb.bf ], [ %.1281.lcssa, %bb.be ], [ 0.000000e+00, %bb.bd ]
  %i.afr = load i32, ptr %3, align 4, !tbaa !68
  %i.afs = sext i32 %i.afr to i64
  %i.aft = mul nsw i64 %indvars.iv980, %i.afs
  %i.afu = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.aft
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %indvars.iv977
  store float %.1839, ptr %i.afv, align 4, !tbaa !38
  br label %bb.bg

bb.bg:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit, %bb.av
  %indvars.iv.next975 = add nuw nsw i64 %indvars.iv974, 1 ; 2 uses
  %i.afw = load i32, ptr %8, align 4, !tbaa !68   ; 2 uses
  %i.afx = sext i32 %i.afw to i64
  %i.afy = icmp slt i64 %indvars.iv.next975, %i.afx
  br i1 %i.afy, label %.noexc360, label %._crit_edge.loopexit, !llvm.loop !182

._crit_edge926:                                   ; preds = %._crit_edge922, %.preheader858.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.bh

bb.bh:                                            ; preds = %._crit_edge926, %bb.a
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
end_hunk_2
