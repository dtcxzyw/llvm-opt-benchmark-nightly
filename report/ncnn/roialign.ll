Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/roialign?download=true
inline.NumInlined: 20
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4ncnn8ROIAlign7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cc = phi <2 x i32> [ %i.cb, %bb.h ], [ %i.bz, %bb.g ] ; 2 uses
  %i.cd = extractelement <2 x i32> %i.cc, i64 1   ; 2 uses
  store i32 %i.cd, ptr %i.h, align 4, !tbaa !35
  %i.ce = extractelement <2 x i32> %i.cc, i64 0   ; 2 uses
  store i32 %i.ce, ptr %i.i, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  %i.cf = mul nsw i32 %i.cd, %i.ce
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.cf, i32 1)
  %i.cg = uitofp nneg i32 %.sroa.speculated to float
  store float %i.cg, ptr %i.j, align 4, !tbaa !39
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !52
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.ci)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 13, ptr nonnull @_ZNK4ncnn8ROIAlign7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1, ptr nonnull %i.c, ptr nonnull %i.l, ptr nonnull %i.v, ptr nonnull %0, ptr nonnull %i.h, ptr nonnull %i.e, ptr nonnull %i.g, ptr nonnull %i.i, ptr nonnull %i.d, ptr nonnull %i.f, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.a, %_ZNK4ncnn3Mat5emptyEv.exit, %bb.j
  %.028 = phi i32 [ 0, %bb.j ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.028
}

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn8ROIAlignC2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn8ROIAlignE, i64 16), ptr %0, align 8, !tbaa !54
  ret void
}

declare void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef nofpclass(nan inf) float @_ZNK4ncnn9ParamDict3getEif(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn8ROIAlign7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !35     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !35
  %i.h = load i32, ptr %0, align 4, !tbaa !35     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !35
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !35
  %i.k = load i32, ptr %i.a, align 4, !tbaa !35   ; 2 uses
  %.not158 = icmp sgt i32 %i.k, %i.j
  br i1 %.not158, label %._crit_edge160.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !37, !noalias !63
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !38, !noalias !63
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !36, !noalias !63
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !37, !noalias !64
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !38, !noalias !64
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !36, !noalias !64
  %factor.op.mul162 = mul i64 %i.s, %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 212
  %i.w = load i32, ptr %i.v, align 4, !tbaa !29   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 220
  br i1 %i.x, label %.noexc.lr.ph.split, label %._crit_edge160.split

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !28  ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  %i.ac = sext i32 %i.aa to i64
  br i1 %i.ab, label %.noexc.lr.ph.split.split, label %._crit_edge160.split

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.ad = load i32, ptr %10, align 4, !tbaa !35   ; 3 uses
  %i.ae = load i32, ptr %11, align 4, !tbaa !35   ; 5 uses
  %i.af = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %i.ag = insertelement <2 x i32> %i.af, i32 %i.ad, i64 1
  %i.ah = sitofp fast <2 x i32> %i.ag to <2 x float> ; 2 uses
  %i.ai = load i32, ptr %i.y, align 4, !tbaa !30  ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  %i.ak = uitofp nneg i32 %i.ai to float
  %i.al = add nsw i32 %i.ae, -1
  %i.am = add nsw i32 %i.ad, -1
  %i.an = sext i32 %i.k to i64
  %i.ao = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.aa to i64
  %i.ap = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph.split.split, %._crit_edge157
  %indvars.iv170 = phi i64 [ %i.an, %.noexc.lr.ph.split.split ], [ %indvars.iv.next171, %._crit_edge157 ] ; 3 uses
  %.reass161 = mul i64 %factor.op.mul, %indvars.iv170
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass161 ; 4 uses
  %.reass163 = mul i64 %factor.op.mul162, %indvars.iv170
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass163
  br label %.preheader

.preheader:                                       ; preds = %.noexc, %._crit_edge
  %.058156 = phi i32 [ 0, %.noexc ], [ %i.au, %._crit_edge ] ; 2 uses
  %.059155 = phi ptr [ %i.as, %.noexc ], [ %i.ay, %._crit_edge ] ; 2 uses
  %i.at = uitofp ninf nsz nneg i32 %.058156 to float
  %i.au = add nuw nsw i32 %.058156, 1             ; 3 uses
  %i.av = uitofp ninf nsz nneg i32 %i.au to float
  %i.aw = insertelement <2 x float> poison, float %i.at, i64 1
  %i.ax = insertelement <2 x float> poison, float %i.av, i64 1
  br label %bb.c

._crit_edge157:                                   ; preds = %._crit_edge
  %indvars.iv.next171 = add nsw i64 %indvars.iv170, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next171 to i32
  %exitcond173.not = icmp eq i32 %i.ao, %lftr.wideiv
  br i1 %exitcond173.not, label %._crit_edge160.split, label %.noexc

._crit_edge:                                      ; preds = %._crit_edge150
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.059155, i64 %i.ac
  %exitcond169.not = icmp eq i32 %i.au, %i.w
  br i1 %exitcond169.not, label %._crit_edge157, label %.preheader, !llvm.loop !59

bb.c:                                             ; preds = %.preheader, %._crit_edge150
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge150 ] ; 3 uses
  %i.az = load float, ptr %6, align 4, !tbaa !39
  %i.ba = load float, ptr %7, align 4, !tbaa !39  ; 2 uses
  %i.bb = load float, ptr %8, align 4, !tbaa !39
  %i.bc = trunc nuw nsw i64 %indvars.iv to i32
  %i.bd = uitofp ninf nsz nneg i32 %i.bc to float
  %i.be = load float, ptr %9, align 4, !tbaa !39  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bf = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bg = uitofp ninf nsz nneg i32 %i.bf to float
  %i.bh = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bi = insertelement <2 x float> %i.bh, float %i.ba, i64 1 ; 2 uses
  %i.bj = insertelement <2 x float> %i.aw, float %i.bd, i64 0
  %i.bk = fmul fast <2 x float> %i.bi, %i.bj
  %i.bl = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.az, i64 1 ; 2 uses
  %i.bn = fadd fast <2 x float> %i.bk, %i.bm
  %i.bo = insertelement <2 x float> %i.ax, float %i.bg, i64 0
  %i.bp = fmul fast <2 x float> %i.bi, %i.bo
  %i.bq = fadd fast <2 x float> %i.bp, %i.bm
  %i.br = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bn, <2 x float> zeroinitializer)
  %i.bs = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.br, <2 x float> %i.ah) ; 3 uses
  %i.bt = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bq, <2 x float> zeroinitializer)
  %i.bu = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bt, <2 x float> %i.ah) ; 3 uses
  br i1 %i.aj, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bv = fsub fast <2 x float> %i.bu, %i.bs
  %i.bw = call fast <2 x float> @llvm.ceil.v2f32(<2 x float> %i.bv)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bx = phi <2 x float> [ %i.bw, %bb.d ], [ %i.aq, %bb.c ]
  %i.by = fptosi <2 x float> %i.bx to <2 x i32>   ; 4 uses
  %i.bz = extractelement <2 x float> %i.bu, i64 1
  %i.ca = extractelement <2 x float> %i.bs, i64 1 ; 2 uses
  %i.cb = fcmp fast ole float %i.bz, %i.ca
  %i.cc = extractelement <2 x float> %i.bu, i64 0
  %i.cd = extractelement <2 x float> %i.bs, i64 0 ; 2 uses
  %i.ce = fcmp fast ole float %i.cc, %i.cd
  %i.cf = select i1 %i.cb, i1 true, i1 %i.ce
  %i.cg = extractelement <2 x i32> %i.by, i64 0   ; 2 uses
  %i.ch = extractelement <2 x i32> %i.by, i64 1   ; 2 uses
  %i.ci = mul nsw i32 %i.cg, %i.ch
  %12 = icmp sgt <2 x i32> %i.by, zeroinitializer ; 2 uses
  %13 = extractelement <2 x i1> %12, i64 0
  %14 = extractelement <2 x i1> %12, i64 1
  %or.cond = select i1 %14, i1 %13, i1 false
  br i1 %or.cond, label %.lr.ph149.split.us, label %._crit_edge150

.lr.ph149.split.us:                               ; preds = %bb.e
  %i.cj = uitofp nneg <2 x i32> %i.by to <2 x float> ; 2 uses
  %i.ck = extractelement <2 x float> %i.cj, i64 1
  %i.cl = fdiv fast float 1.000000e+00, %i.ck
  %i.cm = extractelement <2 x float> %i.cj, i64 0
  %i.cn = fdiv fast float 1.000000e+00, %i.cm
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.lr.ph149.split.us
  %.055147.us = phi i32 [ 0, %.lr.ph149.split.us ], [ %i.en, %._crit_edge.us ] ; 2 uses
  %.056146.us = phi float [ 0.000000e+00, %.lr.ph149.split.us ], [ %i.el, %._crit_edge.us ]
  %i.co = uitofp ninf nsz nneg i32 %.055147.us to float
  %i.cp = fadd fast float %i.co, 5.000000e-01
  %i.cq = fmul fast float %i.ba, %i.cp
  %i.cr = fmul fast float %i.cq, %i.cl
  %i.cs = fadd fast float %i.cr, %i.ca            ; 3 uses
  %i.ct = fptosi float %i.cs to i32               ; 3 uses
  %i.cu = add nsw i32 %i.ct, 1                    ; 3 uses
  %i.cv = sitofp fast i32 %i.cu to float
  %i.cw = fsub fast float %i.cv, %i.cs
  %i.cx = sitofp fast i32 %i.ct to float
  %i.cy = fsub fast float %i.cs, %i.cx
  %.not51.i.us = icmp slt i32 %i.cu, %i.ad        ; 2 uses
  %.046.i.us = call i32 @llvm.smin.i32(i32 %i.cu, i32 %i.am)
  %.043.i.us = select nsz i1 %.not51.i.us, float %i.cw, float 1.000000e+00
  %.042.i.us = select nsz i1 %.not51.i.us, float %i.cy, float 0.000000e+00
  %i.cz = mul nsw i32 %i.ae, %i.ct                ; 2 uses
  %i.da = mul nsw i32 %.046.i.us, %i.ae           ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.us, %bb.f
  %.054145.us = phi i32 [ 0, %.lr.ph.us ], [ %i.em, %bb.f ] ; 2 uses
  %.1144.us = phi float [ %.056146.us, %.lr.ph.us ], [ %i.el, %bb.f ]
  %i.db = uitofp ninf nsz nneg i32 %.054145.us to float
  %i.dc = fadd fast float %i.db, 5.000000e-01
  %i.dd = fmul fast float %i.be, %i.dc
  %i.de = fmul fast float %i.dd, %i.cn
  %i.df = fadd fast float %i.de, %i.cd            ; 3 uses
  %i.dg = fptosi float %i.df to i32               ; 4 uses
  %i.dh = add nsw i32 %i.dg, 1                    ; 3 uses
  %i.di = sitofp fast i32 %i.dh to float
  %i.dj = fsub fast float %i.di, %i.df
  %i.dk = sitofp fast i32 %i.dg to float
  %i.dl = fsub fast float %i.df, %i.dk
  %.not.i82.us = icmp slt i32 %i.dh, %i.ae        ; 2 uses
  %.045.i.us = select nsz i1 %.not.i82.us, float %i.dj, float 1.000000e+00 ; 2 uses
  %.044.i.us = select nsz i1 %.not.i82.us, float %i.dl, float 0.000000e+00 ; 2 uses
  %.0.i.us = call i32 @llvm.smin.i32(i32 %i.dh, i32 %i.al) ; 2 uses
  %i.dm = add nsw i32 %i.cz, %i.dg
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.dn
  %i.dp = load float, ptr %i.do, align 4, !tbaa !39
  %i.dq = fmul fast float %i.dp, %.045.i.us
  %i.dr = add nsw i32 %.0.i.us, %i.cz
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !39
  %i.dv = fmul fast float %i.du, %.044.i.us
  %i.dw = fadd fast float %i.dv, %i.dq
  %i.dx = add nsw i32 %i.da, %i.dg
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.dy
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !39
  %i.eb = fmul fast float %i.ea, %.045.i.us
  %i.ec = add nsw i32 %.0.i.us, %i.da
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.ed
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !39
  %i.eg = fmul fast float %i.ef, %.044.i.us
  %i.eh = fadd fast float %i.eg, %i.eb
  %i.ei = fmul fast float %i.dw, %.043.i.us
  %i.ej = fmul fast float %i.eh, %.042.i.us
  %i.ek = fadd fast float %i.ei, %.1144.us
  %i.el = fadd fast float %i.ek, %i.ej            ; 3 uses
  %i.em = add nuw nsw i32 %.054145.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.em, %i.cg
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.f, !llvm.loop !60

._crit_edge.us:                                   ; preds = %bb.f
  %i.en = add nuw nsw i32 %.055147.us, 1          ; 2 uses
  %exitcond166.not = icmp eq i32 %i.en, %i.ch
  br i1 %exitcond166.not, label %._crit_edge150, label %.lr.ph.us, !llvm.loop !61

._crit_edge150:                                   ; preds = %._crit_edge.us, %bb.e
  %.056.lcssa = phi float [ 0.000000e+00, %bb.e ], [ %i.el, %._crit_edge.us ]
  %i.eo = sitofp fast i32 %i.ci to float
  %i.ep = fdiv fast float %.056.lcssa, %i.eo
  %i.eq = select fast i1 %i.cf, float 0.000000e+00, float %i.ep
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.059155, i64 %indvars.iv
  store float %i.eq, ptr %i.er, align 4, !tbaa !39
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
declare !callback !42 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn8ROIAlign7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !35     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !35
  %i.h = load i32, ptr %0, align 4, !tbaa !35     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !35
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 9 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !35
  %i.k = load i32, ptr %i.a, align 4, !tbaa !35   ; 8 uses
  %.not126 = icmp sgt i32 %i.k, %i.j
  br i1 %.not126, label %._crit_edge.split130, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !37, !noalias !75
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !38, !noalias !75
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !36, !noalias !75
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !37, !noalias !76 ; 19 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !38, !noalias !76
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !36, !noalias !76
  %factor.op.mul128 = mul i64 %i.s, %i.u          ; 19 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 212
  %i.w = load i32, ptr %i.v, align 4, !tbaa !29   ; 4 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.noexc.lr.ph.split, label %._crit_edge.split130

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.z = load i32, ptr %i.y, align 8, !tbaa !28   ; 5 uses
  %i.aa = icmp sgt i32 %i.z, 0
  %i.ab = sext i32 %i.z to i64
  br i1 %i.aa, label %.noexc.lr.ph.split.split, label %._crit_edge.split130

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.ac = load i32, ptr %6, align 4, !tbaa !35    ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  %i.ae = sitofp fast i32 %i.ac to float
  br i1 %i.ad, label %.noexc.lr.ph.split.split.split.us, label %.noexc.preheader

.noexc.preheader:                                 ; preds = %.noexc.lr.ph.split.split
  %i.af = zext nneg i32 %i.z to i64
  %i.ag = zext nneg i32 %i.w to i64
  %i.ah = mul nuw nsw i64 %i.ag, %i.af
  %i.ai = shl nuw i64 %i.ah, 2                    ; 9 uses
  %i.aj = sext i32 %i.k to i64                    ; 2 uses
  %i.ak = add nsw i32 %i.j, 1
  %i.al = add i32 %i.j, 1
  %i.am = sub i32 %i.al, %i.k
  %i.an = sub i32 %i.j, %i.k
  %xtraiter = and i32 %i.am, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.noexc.prol.loopexit, label %.noexc.prol

.noexc.prol:                                      ; preds = %.noexc.preheader, %.noexc.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.noexc.prol ], [ %i.aj, %.noexc.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.noexc.prol ], [ 0, %.noexc.preheader ]
  %.reass129.prol = mul i64 %factor.op.mul128, %indvars.iv.prol
  %i.ao = getelementptr i8, ptr %i.q, i64 %.reass129.prol
end_hunk_0
