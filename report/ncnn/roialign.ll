Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/roialign?download=true
inline.NumInlined: 20
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4ncnn8ROIAlign7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bi = fsub fast <2 x float> %i.ba, %i.aw
  %i.bj = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bi, <2 x float> splat (float 1.000000e+00))
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.bk = phi <2 x float> [ %i.bh, %.thread ], [ %i.bj, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  %i.bl = load <2 x i32>, ptr %i.w, align 8, !tbaa !36
  %i.bm = sitofp <2 x i32> %i.bl to <2 x float>
  %i.bn = fdiv fast <2 x float> %i.bk, %i.bm      ; 3 uses
  %i.bo = extractelement <2 x float> %i.bn, i64 0
  store float %i.bo, ptr %i.f, align 4, !tbaa !40
  %i.bp = extractelement <2 x float> %i.bn, i64 1
  store float %i.bp, ptr %i.g, align 4, !tbaa !40
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !33
  switch i32 %i.br, label %bb.j [
    i32 0, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !52
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.bt)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 10, ptr nonnull @_ZNK4ncnn8ROIAlign7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.l, ptr nonnull %i.v, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.f, ptr nonnull %i.b, ptr nonnull %i.a)
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !31 ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  br i1 %i.bw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bx = uitofp nneg i32 %i.bv to float
  %i.by = fptosi float %i.bx to i32
  %i.bz = insertelement <2 x i32> poison, i32 %i.by, i64 0
  %i.ca = shufflevector <2 x i32> %i.bz, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cb = tail call fast <2 x float> @llvm.ceil.v2f32(<2 x float> %i.bn)
  %i.cc = fptosi <2 x float> %i.cb to <2 x i32>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cd = phi <2 x i32> [ %i.cc, %bb.h ], [ %i.ca, %bb.g ] ; 2 uses
  %i.ce = extractelement <2 x i32> %i.cd, i64 1   ; 2 uses
  store i32 %i.ce, ptr %i.h, align 4, !tbaa !36
  %i.cf = extractelement <2 x i32> %i.cd, i64 0   ; 2 uses
  store i32 %i.cf, ptr %i.i, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  %i.cg = mul nsw i32 %i.ce, %i.cf
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.cg, i32 1)
  %i.ch = uitofp nneg i32 %.sroa.speculated to float
  store float %i.ch, ptr %i.j, align 4, !tbaa !40
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !52
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.cj)
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
  %i.e = load i32, ptr %2, align 4, !tbaa !36     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !36
  %i.h = load i32, ptr %0, align 4, !tbaa !36     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !36
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !36
  %i.k = load i32, ptr %i.a, align 4, !tbaa !36   ; 2 uses
  %.not158 = icmp sgt i32 %i.k, %i.j
  br i1 %.not158, label %._crit_edge160.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !38, !noalias !63
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39, !noalias !63
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !37, !noalias !63
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !38, !noalias !64
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39, !noalias !64
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !37, !noalias !64
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
  %i.ad = load i32, ptr %10, align 4, !tbaa !36   ; 3 uses
  %i.ae = load i32, ptr %11, align 4, !tbaa !36   ; 5 uses
  %i.af = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %i.ag = insertelement <2 x i32> %i.af, i32 %i.ad, i64 1
  %i.ah = sitofp <2 x i32> %i.ag to <2 x float>   ; 2 uses
  %i.ai = load i32, ptr %i.y, align 4, !tbaa !31  ; 2 uses
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
  %i.az = load float, ptr %6, align 4, !tbaa !40
  %i.ba = load float, ptr %7, align 4, !tbaa !40  ; 2 uses
  %i.bb = load float, ptr %8, align 4, !tbaa !40
  %i.bc = trunc nuw nsw i64 %indvars.iv to i32
  %i.bd = uitofp ninf nsz nneg i32 %i.bc to float
  %i.be = load float, ptr %9, align 4, !tbaa !40  ; 2 uses
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
  %i.cj = icmp sgt <2 x i32> %i.by, zeroinitializer ; 2 uses
  %i.ck = extractelement <2 x i1> %i.cj, i64 0
  %i.cl = extractelement <2 x i1> %i.cj, i64 1
  %or.cond = select i1 %i.cl, i1 %i.ck, i1 false
  br i1 %or.cond, label %.lr.ph149.split.us, label %._crit_edge150

.lr.ph149.split.us:                               ; preds = %bb.e
  %i.cm = uitofp <2 x i32> %i.by to <2 x float>   ; 2 uses
  %i.cn = extractelement <2 x float> %i.cm, i64 1
  %i.co = fdiv fast float 1.000000e+00, %i.cn
  %i.cp = extractelement <2 x float> %i.cm, i64 0
  %i.cq = fdiv fast float 1.000000e+00, %i.cp
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.lr.ph149.split.us
  %.055147.us = phi i32 [ 0, %.lr.ph149.split.us ], [ %i.eq, %._crit_edge.us ] ; 2 uses
  %.056146.us = phi float [ 0.000000e+00, %.lr.ph149.split.us ], [ %i.eo, %._crit_edge.us ]
  %i.cr = uitofp ninf nsz nneg i32 %.055147.us to float
  %i.cs = fadd fast float %i.cr, 5.000000e-01
  %i.ct = fmul fast float %i.ba, %i.cs
  %i.cu = fmul fast float %i.ct, %i.co
  %i.cv = fadd fast float %i.cu, %i.ca            ; 3 uses
  %i.cw = fptosi float %i.cv to i32               ; 3 uses
  %i.cx = add nsw i32 %i.cw, 1                    ; 3 uses
  %i.cy = sitofp fast i32 %i.cx to float
  %i.cz = fsub fast float %i.cy, %i.cv
  %i.da = sitofp fast i32 %i.cw to float
  %i.db = fsub fast float %i.cv, %i.da
  %.not51.i.us = icmp slt i32 %i.cx, %i.ad        ; 2 uses
  %.046.i.us = call i32 @llvm.smin.i32(i32 %i.cx, i32 %i.am)
  %.043.i.us = select nsz i1 %.not51.i.us, float %i.cz, float 1.000000e+00
  %.042.i.us = select nsz i1 %.not51.i.us, float %i.db, float 0.000000e+00
  %i.dc = mul nsw i32 %i.ae, %i.cw                ; 2 uses
  %i.dd = mul nsw i32 %.046.i.us, %i.ae           ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.us, %bb.f
  %.054145.us = phi i32 [ 0, %.lr.ph.us ], [ %i.ep, %bb.f ] ; 2 uses
  %.1144.us = phi float [ %.056146.us, %.lr.ph.us ], [ %i.eo, %bb.f ]
  %i.de = uitofp ninf nsz nneg i32 %.054145.us to float
  %i.df = fadd fast float %i.de, 5.000000e-01
  %i.dg = fmul fast float %i.be, %i.df
  %i.dh = fmul fast float %i.dg, %i.cq
  %i.di = fadd fast float %i.dh, %i.cd            ; 3 uses
  %i.dj = fptosi float %i.di to i32               ; 4 uses
  %i.dk = add nsw i32 %i.dj, 1                    ; 3 uses
  %i.dl = sitofp fast i32 %i.dk to float
  %i.dm = fsub fast float %i.dl, %i.di
  %i.dn = sitofp fast i32 %i.dj to float
  %i.do = fsub fast float %i.di, %i.dn
  %.not.i82.us = icmp slt i32 %i.dk, %i.ae        ; 2 uses
  %.045.i.us = select nsz i1 %.not.i82.us, float %i.dm, float 1.000000e+00 ; 2 uses
  %.044.i.us = select nsz i1 %.not.i82.us, float %i.do, float 0.000000e+00 ; 2 uses
  %.0.i.us = call i32 @llvm.smin.i32(i32 %i.dk, i32 %i.al) ; 2 uses
  %i.dp = add nsw i32 %i.dc, %i.dj
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !40
  %i.dt = fmul fast float %i.ds, %.045.i.us
  %i.du = add nsw i32 %.0.i.us, %i.dc
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.dv
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !40
  %i.dy = fmul fast float %i.dx, %.044.i.us
  %i.dz = fadd fast float %i.dy, %i.dt
  %i.ea = add nsw i32 %i.dd, %i.dj
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.eb
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !40
  %i.ee = fmul fast float %i.ed, %.045.i.us
  %i.ef = add nsw i32 %.0.i.us, %i.dd
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.eg
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !40
  %i.ej = fmul fast float %i.ei, %.044.i.us
  %i.ek = fadd fast float %i.ej, %i.ee
  %i.el = fmul fast float %i.dz, %.043.i.us
  %i.em = fmul fast float %i.ek, %.042.i.us
  %i.en = fadd fast float %i.el, %.1144.us
  %i.eo = fadd fast float %i.en, %i.em            ; 3 uses
  %i.ep = add nuw nsw i32 %.054145.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.ep, %i.cg
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.f, !llvm.loop !60

._crit_edge.us:                                   ; preds = %bb.f
  %i.eq = add nuw nsw i32 %.055147.us, 1          ; 2 uses
  %exitcond166.not = icmp eq i32 %i.eq, %i.ch
  br i1 %exitcond166.not, label %._crit_edge150, label %.lr.ph.us, !llvm.loop !61

._crit_edge150:                                   ; preds = %._crit_edge.us, %bb.e
  %.056.lcssa = phi float [ 0.000000e+00, %bb.e ], [ %i.eo, %._crit_edge.us ]
  %i.er = sitofp fast i32 %i.ci to float
  %i.es = fdiv fast float %.056.lcssa, %i.er
  %i.et = select fast i1 %i.cf, float 0.000000e+00, float %i.es
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.059155, i64 %indvars.iv
  store float %i.et, ptr %i.eu, align 4, !tbaa !40
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
declare !callback !43 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn8ROIAlign7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !36     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !36
  %i.h = load i32, ptr %0, align 4, !tbaa !36     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !36
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 9 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !36
  %i.k = load i32, ptr %i.a, align 4, !tbaa !36   ; 8 uses
  %.not126 = icmp sgt i32 %i.k, %i.j
  br i1 %.not126, label %._crit_edge.split130, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !38, !noalias !75
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39, !noalias !75
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !37, !noalias !75
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !38, !noalias !76 ; 19 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39, !noalias !76
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !37, !noalias !76
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
  %i.ac = load i32, ptr %6, align 4, !tbaa !36    ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  %i.ae = sitofp fast i32 %i.ac to float
  br i1 %i.ad, label %.noexc.lr.ph.split.split.split.us, label %.noexc.preheader

.noexc.preheader:                                 ; preds = %.noexc.lr.ph.split.split
  %i.af = zext nneg i32 %i.z to i64
  %i.ag = zext nneg i32 %i.w to i64
  %i.ah = mul nuw nsw i64 %i.af, %i.ag
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
  call void @llvm.memset.p0.i64(ptr align 4 %i.ao, i8 0, i64 %i.ai, i1 false), !tbaa !40
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.noexc.prol.loopexit, label %.noexc.prol, !llvm.loop !69

.noexc.prol.loopexit:                             ; preds = %.noexc.prol, %.noexc.preheader
  %indvars.iv.unr = phi i64 [ %i.aj, %.noexc.preheader ], [ %indvars.iv.next.prol, %.noexc.prol ]
  %i.ap = icmp ult i32 %i.an, 7
  br i1 %i.ap, label %._crit_edge.split130, label %.noexc

.noexc.lr.ph.split.split.split.us:                ; preds = %.noexc.lr.ph.split.split
  %i.aq = load i32, ptr %9, align 4, !tbaa !36    ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.noexc.us.us.preheader, label %.noexc.us.preheader

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.split.split.us
  %i.as = zext nneg i32 %i.z to i64
  %i.at = zext nneg i32 %i.w to i64
  %i.au = mul nuw nsw i64 %i.as, %i.at
  %i.av = shl nuw i64 %i.au, 2                    ; 9 uses
  %i.aw = sext i32 %i.k to i64                    ; 2 uses
  %i.ax = add nsw i32 %i.j, 1
  %i.ay = add i32 %i.j, 1
  %i.az = sub i32 %i.ay, %i.k
  %i.ba = sub i32 %i.j, %i.k
  %xtraiter182 = and i32 %i.az, 7                 ; 2 uses
  %lcmp.mod183.not = icmp eq i32 %xtraiter182, 0
  br i1 %lcmp.mod183.not, label %.noexc.us.prol.loopexit, label %.noexc.us.prol

.noexc.us.prol:                                   ; preds = %.noexc.us.preheader, %.noexc.us.prol
  %indvars.iv146.prol = phi i64 [ %indvars.iv.next147.prol, %.noexc.us.prol ], [ %i.aw, %.noexc.us.preheader ] ; 2 uses
  %prol.iter184 = phi i32 [ %prol.iter184.next, %.noexc.us.prol ], [ 0, %.noexc.us.preheader ]
  %.reass129.us.prol = mul i64 %factor.op.mul128, %indvars.iv146.prol
  %i.bb = getelementptr i8, ptr %i.q, i64 %.reass129.us.prol
  call void @llvm.memset.p0.i64(ptr align 4 %i.bb, i8 0, i64 %i.av, i1 false), !tbaa !40
  %indvars.iv.next147.prol = add nsw i64 %indvars.iv146.prol, 1 ; 2 uses
  %prol.iter184.next = add i32 %prol.iter184, 1   ; 2 uses
  %prol.iter184.cmp.not = icmp eq i32 %prol.iter184.next, %xtraiter182
  br i1 %prol.iter184.cmp.not, label %.noexc.us.prol.loopexit, label %.noexc.us.prol, !llvm.loop !70

.noexc.us.prol.loopexit:                          ; preds = %.noexc.us.prol, %.noexc.us.preheader
  %indvars.iv146.unr = phi i64 [ %i.aw, %.noexc.us.preheader ], [ %indvars.iv.next147.prol, %.noexc.us.prol ]
  %i.bc = icmp ult i32 %i.ba, 7
  br i1 %i.bc, label %._crit_edge.split130, label %.noexc.us

.noexc.us.us.preheader:                           ; preds = %.noexc.lr.ph.split.split.split.us
  %i.bd = sitofp fast i32 %i.aq to float
  %i.be = sext i32 %i.k to i64
  %i.bf = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.z to i64
  %i.bg = fdiv fast float 1.000000e+00, %i.ae
  %i.bh = fdiv fast float 1.000000e+00, %i.bd
  br label %.noexc.us.us

.noexc.us.us:                                     ; preds = %.noexc.us.us.preheader, %._crit_edge119.split125.us.split.us.us.us
  %indvars.iv158 = phi i64 [ %i.be, %.noexc.us.us.preheader ], [ %indvars.iv.next159, %._crit_edge119.split125.us.split.us.us.us ] ; 3 uses
  %.reass.us.us = mul i64 %factor.op.mul, %indvars.iv158
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.us.us ; 4 uses
  %.reass129.us.us = mul i64 %factor.op.mul128, %indvars.iv158
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass129.us.us
  br label %.preheader98.us.us.us.us

.preheader98.us.us.us.us:                         ; preds = %._crit_edge.split.us.split.us.us.us.us.us, %.noexc.us.us
  %.060118.us.us.us.us = phi i32 [ 0, %.noexc.us.us ], [ %i.eb, %._crit_edge.split.us.split.us.us.us.us.us ] ; 2 uses
  %.061115.us.us.us.us = phi ptr [ %i.bj, %.noexc.us.us ], [ %i.ea, %._crit_edge.split.us.split.us.us.us.us.us ] ; 2 uses
  %i.bk = uitofp ninf nsz nneg i32 %.060118.us.us.us.us to float
  br label %.preheader.us.us.us.us.us.us

.preheader.us.us.us.us.us.us:                     ; preds = %._crit_edge105.split.us.us.us.us.us.us.us, %.preheader98.us.us.us.us
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %._crit_edge105.split.us.us.us.us.us.us.us ], [ 0, %.preheader98.us.us.us.us ] ; 3 uses
  %i.bl = load float, ptr %7, align 4, !tbaa !40
  %i.bm = load float, ptr %8, align 4, !tbaa !40  ; 2 uses
  %i.bn = fmul fast float %i.bm, %i.bk
  %i.bo = fadd fast float %i.bl, %i.bn
  %i.bp = trunc nuw nsw i64 %indvars.iv153 to i32
  %i.bq = uitofp ninf nsz nneg i32 %i.bp to float
  %i.br = load float, ptr %10, align 4, !tbaa !40
  %i.bs = load float, ptr %11, align 4, !tbaa !40 ; 2 uses
  %i.bt = fmul fast float %i.bs, %i.bq
  %i.bu = fadd fast float %i.br, %i.bt
  br label %.lr.ph.us.us.us.us.us.us.us

.lr.ph.us.us.us.us.us.us.us:                      ; preds = %._crit_edge.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us
  %.056103.us.us.us.us.us.us.us = phi i32 [ 0, %.preheader.us.us.us.us.us.us ], [ %i.dw, %._crit_edge.us.us.us.us.us.us.us ] ; 2 uses
  %.057102.us.us.us.us.us.us.us = phi float [ 0.000000e+00, %.preheader.us.us.us.us.us.us ], [ %.2.us.us.us.us.us.us.us, %._crit_edge.us.us.us.us.us.us.us ]
  %i.bv = uitofp ninf nsz nneg i32 %.056103.us.us.us.us.us.us.us to float
  %i.bw = fadd fast float %i.bv, 5.000000e-01
  %i.bx = fmul fast float %i.bm, %i.bw
  %i.by = fmul fast float %i.bx, %i.bg
  %i.bz = fadd fast float %i.bo, %i.by
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.us.us.us.us.us.us.us
  %.054101.us.us.us.us.us.us.us = phi i32 [ 0, %.lr.ph.us.us.us.us.us.us.us ], [ %i.dv, %bb.g ] ; 2 uses
  %.055100.us.us.us.us.us.us.us = phi float [ %i.bz, %.lr.ph.us.us.us.us.us.us.us ], [ %.1.us.us.us.us.us.us.us, %bb.g ] ; 6 uses
  %.15899.us.us.us.us.us.us.us = phi float [ %.057102.us.us.us.us.us.us.us, %.lr.ph.us.us.us.us.us.us.us ], [ %.2.us.us.us.us.us.us.us, %bb.g ] ; 4 uses
  %i.ca = uitofp ninf nsz nneg i32 %.054101.us.us.us.us.us.us.us to float
  %i.cb = fadd fast float %i.ca, 5.000000e-01
  %i.cc = fmul fast float %i.bs, %i.cb
  %i.cd = fmul fast float %i.cc, %i.bh
  %i.ce = fadd fast float %i.bu, %i.cd            ; 3 uses
  %i.cf = fcmp fast olt float %.055100.us.us.us.us.us.us.us, -1.000000e+00
  br i1 %i.cf, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cg = load i32, ptr %12, align 4, !tbaa !36   ; 3 uses
  %i.ch = sitofp fast i32 %i.cg to float
  %i.ci = fcmp fast ogt float %.055100.us.us.us.us.us.us.us, %i.ch
  %i.cj = fcmp fast olt float %i.ce, -1.000000e+00
  %or.cond.us.us.us.us.us.us.us = select i1 %i.ci, i1 true, i1 %i.cj
  br i1 %or.cond.us.us.us.us.us.us.us, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ck = load i32, ptr %13, align 4, !tbaa !36   ; 5 uses
  %i.cl = sitofp fast i32 %i.ck to float
  %i.cm = fcmp fast ogt float %i.ce, %i.cl
  br i1 %i.cm, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %spec.store.select.us.us.us.us.us.us.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.055100.us.us.us.us.us.us.us, float 0.000000e+00) ; 4 uses
  %spec.store.select1.us.us.us.us.us.us.us = call nnan ninf nsz float @llvm.maxnum.f32(float %i.ce, float 0.000000e+00) ; 3 uses
  %15 = fptosi float %spec.store.select1.us.us.us.us.us.us.us to i32 ; 4 uses
  %i.cn = add nuw nsw i32 %15, 1                  ; 3 uses
  %16 = fptosi float %spec.store.select.us.us.us.us.us.us.us to i32 ; 3 uses
  %i.co = add nuw nsw i32 %16, 1                  ; 3 uses
  %17 = uitofp ninf nsz nneg i32 %i.cn to float
  %i.cp = fsub fast float %17, %spec.store.select1.us.us.us.us.us.us.us
  %18 = uitofp ninf nsz nneg i32 %15 to float
  %19 = fsub fast float %spec.store.select1.us.us.us.us.us.us.us, %18
  %20 = uitofp ninf nsz nneg i32 %i.co to float
  %i.cq = fsub fast float %20, %spec.store.select.us.us.us.us.us.us.us
  %21 = uitofp ninf nsz nneg i32 %16 to float
  %22 = fsub fast float %spec.store.select.us.us.us.us.us.us.us, %21
  %.not.i76.us.us.us.us.us.us.us = icmp slt i32 %i.cn, %i.ck ; 2 uses
  %i.cr = add nsw i32 %i.ck, -1
  %.045.i.us.us.us.us.us.us.us = select nsz i1 %.not.i76.us.us.us.us.us.us.us, float %i.cp, float 1.000000e+00 ; 2 uses
  %.044.i.us.us.us.us.us.us.us = select nsz i1 %.not.i76.us.us.us.us.us.us.us, float %19, float 0.000000e+00 ; 2 uses
  %.0.i.us.us.us.us.us.us.us = call i32 @llvm.smin.i32(i32 %i.cn, i32 %i.cr) ; 2 uses
  %.not51.i.us.us.us.us.us.us.us = icmp slt i32 %i.co, %i.cg ; 2 uses
  %i.cs = add nsw i32 %i.cg, -1
  %.046.i.us.us.us.us.us.us.us = call i32 @llvm.smin.i32(i32 %i.co, i32 %i.cs)
  %.043.i.us.us.us.us.us.us.us = select nsz i1 %.not51.i.us.us.us.us.us.us.us, float %i.cq, float 1.000000e+00
  %.042.i.us.us.us.us.us.us.us = select nsz i1 %.not51.i.us.us.us.us.us.us.us, float %22, float 0.000000e+00
  %i.ct = mul nsw i32 %i.ck, %16                  ; 2 uses
  %i.cu = add nsw i32 %i.ct, %15
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !40
  %i.cy = fmul fast float %i.cx, %.045.i.us.us.us.us.us.us.us
  %i.cz = add nsw i32 %.0.i.us.us.us.us.us.us.us, %i.ct
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.da
  %i.dc = load float, ptr %i.db, align 4, !tbaa !40
  %i.dd = fmul fast float %i.dc, %.044.i.us.us.us.us.us.us.us
  %i.de = fadd fast float %i.dd, %i.cy
  %i.df = mul nsw i32 %i.ck, %.046.i.us.us.us.us.us.us.us ; 2 uses
  %i.dg = add nsw i32 %i.df, %15
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.dh
  %i.dj = load float, ptr %i.di, align 4, !tbaa !40
  %i.dk = fmul fast float %i.dj, %.045.i.us.us.us.us.us.us.us
  %i.dl = add nsw i32 %.0.i.us.us.us.us.us.us.us, %i.df
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.dm
  %i.do = load float, ptr %i.dn, align 4, !tbaa !40
  %i.dp = fmul fast float %i.do, %.044.i.us.us.us.us.us.us.us
  %i.dq = fadd fast float %i.dp, %i.dk
  %i.dr = fmul fast float %i.de, %.043.i.us.us.us.us.us.us.us
  %i.ds = fmul fast float %i.dq, %.042.i.us.us.us.us.us.us.us
  %i.dt = fadd fast float %i.dr, %.15899.us.us.us.us.us.us.us
  %i.du = fadd fast float %i.dt, %i.ds
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.2.us.us.us.us.us.us.us = phi nsz float [ %i.du, %bb.f ], [ %.15899.us.us.us.us.us.us.us, %bb.e ], [ %.15899.us.us.us.us.us.us.us, %bb.d ], [ %.15899.us.us.us.us.us.us.us, %bb.c ] ; 3 uses
  %.1.us.us.us.us.us.us.us = phi nsz float [ %spec.store.select.us.us.us.us.us.us.us, %bb.f ], [ %.055100.us.us.us.us.us.us.us, %bb.e ], [ %.055100.us.us.us.us.us.us.us, %bb.d ], [ %.055100.us.us.us.us.us.us.us, %bb.c ]
  %i.dv = add nuw nsw i32 %.054101.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond151.not = icmp eq i32 %i.dv, %i.aq
  br i1 %exitcond151.not, label %._crit_edge.us.us.us.us.us.us.us, label %bb.c, !llvm.loop !71

._crit_edge.us.us.us.us.us.us.us:                 ; preds = %bb.g
  %i.dw = add nuw nsw i32 %.056103.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond152.not = icmp eq i32 %i.dw, %i.ac
  br i1 %exitcond152.not, label %._crit_edge105.split.us.us.us.us.us.us.us, label %.lr.ph.us.us.us.us.us.us.us, !llvm.loop !72

._crit_edge105.split.us.us.us.us.us.us.us:        ; preds = %._crit_edge.us.us.us.us.us.us.us
  %i.dx = load float, ptr %14, align 4, !tbaa !40
  %i.dy = fdiv fast float %.2.us.us.us.us.us.us.us, %i.dx
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.061115.us.us.us.us, i64 %indvars.iv153
  store float %i.dy, ptr %i.dz, align 4, !tbaa !40
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %exitcond156.not = icmp eq i64 %indvars.iv.next154, %wide.trip.count
  br i1 %exitcond156.not, label %._crit_edge.split.us.split.us.us.us.us.us, label %.preheader.us.us.us.us.us.us, !llvm.loop !73

._crit_edge.split.us.split.us.us.us.us.us:        ; preds = %._crit_edge105.split.us.us.us.us.us.us.us
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.061115.us.us.us.us, i64 %i.ab
  %i.eb = add nuw nsw i32 %.060118.us.us.us.us, 1 ; 2 uses
  %exitcond157.not = icmp eq i32 %i.eb, %i.w
  br i1 %exitcond157.not, label %._crit_edge119.split125.us.split.us.us.us, label %.preheader98.us.us.us.us, !llvm.loop !74

._crit_edge119.split125.us.split.us.us.us:        ; preds = %._crit_edge.split.us.split.us.us.us.us.us
  %indvars.iv.next159 = add nsw i64 %indvars.iv158, 1 ; 2 uses
  %lftr.wideiv161 = trunc i64 %indvars.iv.next159 to i32
  %exitcond162.not = icmp eq i32 %i.bf, %lftr.wideiv161
  br i1 %exitcond162.not, label %._crit_edge.split130, label %.noexc.us.us

.noexc.us:                                        ; preds = %.noexc.us.prol.loopexit, %.noexc.us
  %indvars.iv146 = phi i64 [ %indvars.iv.next147.7, %.noexc.us ], [ %indvars.iv146.unr, %.noexc.us.prol.loopexit ] ; 9 uses
  %.reass129.us = mul i64 %factor.op.mul128, %indvars.iv146
  %i.ec = getelementptr i8, ptr %i.q, i64 %.reass129.us
  call void @llvm.memset.p0.i64(ptr align 4 %i.ec, i8 0, i64 %i.av, i1 false), !tbaa !40
  %indvars.iv.next147 = add nsw i64 %indvars.iv146, 1
  %.reass129.us.1 = mul i64 %factor.op.mul128, %indvars.iv.next147
  %i.ed = getelementptr i8, ptr %i.q, i64 %.reass129.us.1
  call void @llvm.memset.p0.i64(ptr align 4 %i.ed, i8 0, i64 %i.av, i1 false), !tbaa !40
  %indvars.iv.next147.1 = add nsw i64 %indvars.iv146, 2
  %.reass129.us.2 = mul i64 %factor.op.mul128, %indvars.iv.next147.1
  %i.ee = getelementptr i8, ptr %i.q, i64 %.reass129.us.2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ee, i8 0, i64 %i.av, i1 false), !tbaa !40
  %indvars.iv.next147.2 = add nsw i64 %indvars.iv146, 3
  %.reass129.us.3 = mul i64 %factor.op.mul128, %indvars.iv.next147.2
  %i.ef = getelementptr i8, ptr %i.q, i64 %.reass129.us.3
  call void @llvm.memset.p0.i64(ptr align 4 %i.ef, i8 0, i64 %i.av, i1 false), !tbaa !40
  %indvars.iv.next147.3 = add nsw i64 %indvars.iv146, 4
  %.reass129.us.4 = mul i64 %factor.op.mul128, %indvars.iv.next147.3
  %i.eg = getelementptr i8, ptr %i.q, i64 %.reass129.us.4
  call void @llvm.memset.p0.i64(ptr align 4 %i.eg, i8 0, i64 %i.av, i1 false), !tbaa !40
  %indvars.iv.next147.4 = add nsw i64 %indvars.iv146, 5
  %.reass129.us.5 = mul i64 %factor.op.mul128, %indvars.iv.next147.4
  %i.eh = getelementptr i8, ptr %i.q, i64 %.reass129.us.5
  call void @llvm.memset.p0.i64(ptr align 4 %i.eh, i8 0, i64 %i.av, i1 false), !tbaa !40
  %indvars.iv.next147.5 = add nsw i64 %indvars.iv146, 6
  %.reass129.us.6 = mul i64 %factor.op.mul128, %indvars.iv.next147.5
  %i.ei = getelementptr i8, ptr %i.q, i64 %.reass129.us.6
  call void @llvm.memset.p0.i64(ptr align 4 %i.ei, i8 0, i64 %i.av, i1 false), !tbaa !40
  %indvars.iv.next147.6 = add nsw i64 %indvars.iv146, 7
  %.reass129.us.7 = mul i64 %factor.op.mul128, %indvars.iv.next147.6
  %i.ej = getelementptr i8, ptr %i.q, i64 %.reass129.us.7
  call void @llvm.memset.p0.i64(ptr align 4 %i.ej, i8 0, i64 %i.av, i1 false), !tbaa !40
  %indvars.iv.next147.7 = add nsw i64 %indvars.iv146, 8 ; 2 uses
  %lftr.wideiv149.7 = trunc i64 %indvars.iv.next147.7 to i32
  %exitcond150.not.7 = icmp eq i32 %i.ax, %lftr.wideiv149.7
  br i1 %exitcond150.not.7, label %._crit_edge.split130, label %.noexc.us

.noexc:                                           ; preds = %.noexc.prol.loopexit, %.noexc
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.noexc ], [ %indvars.iv.unr, %.noexc.prol.loopexit ] ; 9 uses
  %.reass129 = mul i64 %factor.op.mul128, %indvars.iv
  %i.ek = getelementptr i8, ptr %i.q, i64 %.reass129
  call void @llvm.memset.p0.i64(ptr align 4 %i.ek, i8 0, i64 %i.ai, i1 false), !tbaa !40
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %.reass129.1 = mul i64 %factor.op.mul128, %indvars.iv.next
  %i.el = getelementptr i8, ptr %i.q, i64 %.reass129.1
  call void @llvm.memset.p0.i64(ptr align 4 %i.el, i8 0, i64 %i.ai, i1 false), !tbaa !40
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %.reass129.2 = mul i64 %factor.op.mul128, %indvars.iv.next.1
  %i.em = getelementptr i8, ptr %i.q, i64 %.reass129.2
  call void @llvm.memset.p0.i64(ptr align 4 %i.em, i8 0, i64 %i.ai, i1 false), !tbaa !40
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3
  %.reass129.3 = mul i64 %factor.op.mul128, %indvars.iv.next.2
  %i.en = getelementptr i8, ptr %i.q, i64 %.reass129.3
  call void @llvm.memset.p0.i64(ptr align 4 %i.en, i8 0, i64 %i.ai, i1 false), !tbaa !40
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4
  %.reass129.4 = mul i64 %factor.op.mul128, %indvars.iv.next.3
  %i.eo = getelementptr i8, ptr %i.q, i64 %.reass129.4
  call void @llvm.memset.p0.i64(ptr align 4 %i.eo, i8 0, i64 %i.ai, i1 false), !tbaa !40
  %indvars.iv.next.4 = add nsw i64 %indvars.iv, 5
  %.reass129.5 = mul i64 %factor.op.mul128, %indvars.iv.next.4
  %i.ep = getelementptr i8, ptr %i.q, i64 %.reass129.5
  call void @llvm.memset.p0.i64(ptr align 4 %i.ep, i8 0, i64 %i.ai, i1 false), !tbaa !40
  %indvars.iv.next.5 = add nsw i64 %indvars.iv, 6
  %.reass129.6 = mul i64 %factor.op.mul128, %indvars.iv.next.5
  %i.eq = getelementptr i8, ptr %i.q, i64 %.reass129.6
  call void @llvm.memset.p0.i64(ptr align 4 %i.eq, i8 0, i64 %i.ai, i1 false), !tbaa !40
  %indvars.iv.next.6 = add nsw i64 %indvars.iv, 7
  %.reass129.7 = mul i64 %factor.op.mul128, %indvars.iv.next.6
  %i.er = getelementptr i8, ptr %i.q, i64 %.reass129.7
  call void @llvm.memset.p0.i64(ptr align 4 %i.er, i8 0, i64 %i.ai, i1 false), !tbaa !40
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 8 ; 2 uses
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next.7 to i32
  %exitcond.not.7 = icmp eq i32 %i.ak, %lftr.wideiv.7
  br i1 %exitcond.not.7, label %._crit_edge.split130, label %.noexc

._crit_edge.split130:                             ; preds = %.noexc.prol.loopexit, %.noexc, %.noexc.us.prol.loopexit, %.noexc.us, %._crit_edge119.split125.us.split.us.us.us, %.noexc.lr.ph, %.noexc.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.split130, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #8

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !13, i64 8, !5, i64 16}
!15 = !{!"p1 int", !10, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !16, i64 0}
!18 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !17, i64 0}
!19 = !{!"_ZTSSt6vectorIiSaIiEE", !18, i64 0}
!20 = !{!"p1 _ZTSN4ncnn3MatE", !10, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!22 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !21, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !22, i64 0}
!24 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !23, i64 0}
!25 = !{!"_ZTSN4ncnn5LayerE", !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15, !9, i64 16, !9, i64 17, !9, i64 18, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 22, !9, i64 23, !9, i64 24, !9, i64 25, !9, i64 26, !9, i64 27, !6, i64 28, !10, i64 32, !6, i64 40, !14, i64 48, !14, i64 80, !19, i64 112, !19, i64 136, !24, i64 160, !24, i64 184}
!26 = !{!"float", !5, i64 0}
!27 = !{!"_ZTSN4ncnn8ROIAlignE", !25, i64 0, !6, i64 208, !6, i64 212, !26, i64 216, !6, i64 220, !9, i64 224, !6, i64 228}
!28 = !{!27, !6, i64 208}
!29 = !{!27, !6, i64 212}
!30 = !{!27, !26, i64 216}
!31 = !{!27, !6, i64 220}
!32 = !{!27, !9, i64 224}
!33 = !{!27, !6, i64 228}
!34 = !{!"p1 _ZTSN4ncnn9AllocatorE", !10, i64 0}
!35 = !{!"_ZTSN4ncnn3MatE", !10, i64 0, !15, i64 8, !13, i64 16, !6, i64 24, !34, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !13, i64 64}
!36 = !{!6, !6, i64 0}
!37 = !{!35, !13, i64 16}
!38 = !{!35, !10, i64 0}
!39 = !{!35, !13, i64 64}
!40 = !{!26, !26, i64 0}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{i64 2, i64 -1, i64 -1, i1 true}
!43 = !{!42}
!44 = !{!21, !20, i64 0}
!45 = !{!35, !6, i64 44}
!46 = !{!35, !6, i64 48}
!47 = !{!35, !6, i64 56}
!48 = !{!"_ZTSN4ncnn6OptionE", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !6, i64 4, !34, i64 8, !34, i64 16, !6, i64 24, !9, i64 28, !9, i64 29, !9, i64 30, !9, i64 31, !9, i64 32, !9, i64 33, !9, i64 34, !9, i64 35, !9, i64 36, !9, i64 37, !9, i64 38, !9, i64 39, !6, i64 40, !9, i64 44, !9, i64 45, !9, i64 46, !9, i64 47, !5, i64 48, !9, i64 49, !9, i64 50, !9, i64 51, !9, i64 52, !9, i64 53, !9, i64 54, !9, i64 55, !9, i64 56, !9, i64 57, !9, i64 58, !9, i64 59, !9, i64 60, !9, i64 61, !9, i64 62, !9, i64 63}
!49 = !{!48, !34, i64 8}
!50 = !{i8 0, i8 2}
!51 = !{}
!52 = !{!48, !6, i64 4}
!53 = !{!"vtable pointer", !4, i64 0}
!54 = !{!53, !53, i64 0}
!55 = distinct !{!55, !"_ZNK4ncnn3Mat7channelEi"}
!56 = distinct !{!56, !55, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!57 = distinct !{!57, !"_ZN4ncnn3Mat7channelEi"}
!58 = distinct !{!58, !57, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!59 = distinct !{!59, !41}
!60 = distinct !{!60, !41}
!61 = distinct !{!61, !41}
!62 = distinct !{!62, !41}
!63 = !{!56}
!64 = !{!58}
!65 = distinct !{!65, !"_ZNK4ncnn3Mat7channelEi"}
!66 = distinct !{!66, !65, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!67 = distinct !{!67, !"_ZN4ncnn3Mat7channelEi"}
!68 = distinct !{!68, !67, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!69 = distinct !{!69, !77}
!70 = distinct !{!70, !77}
!71 = distinct !{!71, !41}
!72 = distinct !{!72, !41}
!73 = distinct !{!73, !41}
!74 = distinct !{!74, !41}
!75 = !{!66}
!76 = !{!68}
!77 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
