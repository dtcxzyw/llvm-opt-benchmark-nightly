Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/roipooling?download=true
inline.NumInlined: 18
inline.NumDeleted: 6
begin_hunk_0_@_ZNK4ncnn10ROIPooling7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.ao = load float, ptr %i.al, align 4, !tbaa !37
  %i.ap = insertelement <2 x float> poison, float %i.an, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.ao, i64 1
  %i.ar = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.at = fmul fast <2 x float> %i.aq, %i.as
  %i.au = tail call fast <2 x float> @llvm.round.v2f32(<2 x float> %i.at)
  %i.av = fptosi <2 x float> %i.au to <2 x i32>   ; 3 uses
  %i.aw = extractelement <2 x i32> %i.av, i64 0
  store i32 %i.aw, ptr %i.d, align 4, !tbaa !33
  %i.ax = extractelement <2 x i32> %i.av, i64 1
  store i32 %i.ax, ptr %i.e, align 4, !tbaa !33
  %i.ay = load <2 x float>, ptr %i.am, align 4, !tbaa !37
  %i.az = fmul fast <2 x float> %i.ay, %i.as
  %i.ba = tail call fast <2 x float> @llvm.round.v2f32(<2 x float> %i.az)
  %i.bb = fptosi <2 x float> %i.ba to <2 x i32>
  %i.bc = sub nsw <2 x i32> %i.bb, %i.av
  %i.bd = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.bc, <2 x i32> zeroinitializer)
  %i.be = add nuw nsw <2 x i32> %i.bd, splat (i32 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  %i.bf = uitofp nneg <2 x i32> %i.be to <2 x float>
  %i.bg = load <2 x i32>, ptr %i.t, align 8, !tbaa !33
  %i.bh = sitofp <2 x i32> %i.bg to <2 x float>
  %i.bi = fdiv fast <2 x float> %i.bf, %i.bh      ; 2 uses
  %i.bj = extractelement <2 x float> %i.bi, i64 0
  store float %i.bj, ptr %i.f, align 4, !tbaa !37
  %i.bk = extractelement <2 x float> %i.bi, i64 1
  store float %i.bk, ptr %i.g, align 4, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !46
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.h, i32 %i.bm)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 10, ptr nonnull @_ZNK4ncnn10ROIPooling7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.i, ptr nonnull %i.s, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.f, ptr nonnull %i.b, ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.a, %_ZNK4ncnn3Mat5emptyEv.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn10ROIPoolingC2Ev(ptr noundef nonnull align 8 dereferenceable(220) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn10ROIPoolingE, i64 16), ptr %0, align 8, !tbaa !48
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
define internal void @_ZNK4ncnn10ROIPooling7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %.not125 = icmp sgt i32 %i.k, %i.j
  br i1 %.not125, label %._crit_edge127.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !35, !noalias !58
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36, !noalias !58
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !34, !noalias !58
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !35, !noalias !59
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !36, !noalias !59
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !34, !noalias !59
  %factor.op.mul128 = mul i64 %i.s, %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 212
  %i.w = load i32, ptr %i.v, align 4, !tbaa !29   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.noexc.lr.ph.split, label %._crit_edge127.split

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.z = load i32, ptr %i.y, align 8, !tbaa !28   ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 0
  %i.ab = sext i32 %i.z to i64
  br i1 %i.aa, label %.noexc.lr.ph.split.split, label %._crit_edge127.split

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.ac = load i32, ptr %6, align 4, !tbaa !33
  %i.ad = load i32, ptr %8, align 4, !tbaa !33
  %i.ae = insertelement <2 x i32> poison, i32 %i.ad, i64 0
  %i.af = insertelement <2 x i32> %i.ae, i32 %i.ac, i64 1
  %i.ag = sitofp <2 x i32> %i.af to <2 x float>   ; 3 uses
  %i.ah = load i32, ptr %10, align 4, !tbaa !33   ; 3 uses
  %i.ai = load i32, ptr %11, align 4, !tbaa !33   ; 4 uses
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = sext i32 %i.ah to i64
  %i.al = sext i32 %i.k to i64
  %i.am = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.z to i64
  %i.an = insertelement <2 x i32> poison, i32 %i.ai, i64 0
  %i.ao = insertelement <2 x i32> %i.an, i32 %i.ah, i64 1
  %i.ap = extractelement <2 x float> %i.ag, i64 0
  %i.aq = extractelement <2 x float> %i.ag, i64 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph.split.split, %._crit_edge124
  %indvars.iv142 = phi i64 [ %i.al, %.noexc.lr.ph.split.split ], [ %indvars.iv.next143, %._crit_edge124 ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv142
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 2 uses
  %.reass129 = mul i64 %factor.op.mul128, %indvars.iv142
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass129
  br label %.preheader114

.preheader114:                                    ; preds = %.noexc, %._crit_edge
  %.047123 = phi i32 [ 0, %.noexc ], [ %i.au, %._crit_edge ] ; 2 uses
  %.048122 = phi ptr [ %i.as, %.noexc ], [ %i.aw, %._crit_edge ] ; 2 uses
  %i.at = uitofp ninf nsz nneg i32 %.047123 to float
  %i.au = add nuw nsw i32 %.047123, 1             ; 3 uses
  %i.av = uitofp ninf nsz nneg i32 %i.au to float
  br label %bb.c

._crit_edge124:                                   ; preds = %._crit_edge
  %indvars.iv.next143 = add nsw i64 %indvars.iv142, 1 ; 2 uses
  %lftr.wideiv145 = trunc i64 %indvars.iv.next143 to i32
  %exitcond146.not = icmp eq i32 %i.am, %lftr.wideiv145
  br i1 %exitcond146.not, label %._crit_edge127.split, label %.noexc

._crit_edge:                                      ; preds = %._crit_edge119
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.048122, i64 %i.ab
  %exitcond141.not = icmp eq i32 %i.au, %i.w
  br i1 %exitcond141.not, label %._crit_edge124, label %.preheader114, !llvm.loop !53

bb.c:                                             ; preds = %.preheader114, %._crit_edge119
  %indvars.iv137 = phi i64 [ 0, %.preheader114 ], [ %indvars.iv.next138, %._crit_edge119 ] ; 3 uses
  %i.ax = load float, ptr %7, align 4, !tbaa !37  ; 2 uses
  %i.ay = fmul fast float %i.ax, %i.at
  %i.az = call fast float @llvm.floor.f32(float %i.ay)
  %i.ba = fadd fast float %i.az, %i.aq
  %i.bb = fptosi float %i.ba to i32
  %i.bc = trunc nuw nsw i64 %indvars.iv137 to i32
  %i.bd = uitofp ninf nsz nneg i32 %i.bc to float
  %i.be = load float, ptr %9, align 4, !tbaa !37  ; 2 uses
  %i.bf = fmul fast float %i.be, %i.bd
  %i.bg = call fast float @llvm.floor.f32(float %i.bf)
  %i.bh = fadd fast float %i.bg, %i.ap
  %i.bi = fptosi float %i.bh to i32
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 3 uses
  %i.bj = trunc nuw nsw i64 %indvars.iv.next138 to i32
  %i.bk = uitofp ninf nsz nneg i32 %i.bj to float
  %i.bl = call i32 @llvm.smax.i32(i32 %i.bb, i32 0) ; 2 uses
  %i.bm = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.bl) ; 4 uses
  %i.bn = call i32 @llvm.smax.i32(i32 %i.bi, i32 0) ; 2 uses
  %i.bo = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.bn) ; 5 uses
  %.val = load i32, ptr %10, align 4
  %i.bp = fmul fast float %i.ax, %i.av
  %12 = call fast float @llvm.ceil.f32(float %i.bp)
  %13 = fmul fast float %i.be, %i.bk
  %i.bq = call fast float @llvm.ceil.f32(float %13)
  %i.br = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %12, i64 1
  %i.bt = fadd fast <2 x float> %i.bs, %i.ag
  %i.bu = fptosi <2 x float> %i.bt to <2 x i32>
  %i.bv = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.bu, <2 x i32> zeroinitializer) ; 3 uses
  %i.bw = icmp slt <2 x i32> %i.ao, %i.bv         ; 2 uses
  %i.bx = extractelement <2 x i1> %i.bw, i64 1
  %i.by = extractelement <2 x i32> %i.bv, i64 1
  %i.bz = select i1 %i.bx, i32 %.val, i32 %i.by   ; 3 uses
  %.val111 = load i32, ptr %11, align 4
  %i.ca = extractelement <2 x i1> %i.bw, i64 0
  %i.cb = extractelement <2 x i32> %i.bv, i64 0
  %i.cc = select i1 %i.ca, i32 %.val111, i32 %i.cb ; 4 uses
  %i.cd = icmp sle i32 %i.bz, %i.bm
  %i.ce = icmp sle i32 %i.cc, %i.bo
  %i.cf = select i1 %i.cd, i1 true, i1 %i.ce
  br i1 %i.cf, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cg = mul nsw i32 %i.bm, %i.ai
  %i.ch = add nsw i32 %i.bo, %i.cg
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !37
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.cl = phi fast float [ %i.ck, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.cm = icmp slt i32 %i.bm, %i.bz
  %i.cn = icmp slt i32 %i.bo, %i.cc
  %or.cond = select i1 %i.cm, i1 %i.cn, i1 false
  br i1 %or.cond, label %.preheader.us.preheader, label %._crit_edge119

.preheader.us.preheader:                          ; preds = %bb.e
  %i.co = zext nneg i32 %i.bn to i64
  %smin = call i64 @llvm.smin.i64(i64 %i.co, i64 %i.aj) ; 4 uses
  %i.cp = trunc nsw i64 %smin to i32
  %i.cq = add i32 %i.cc, %i.cp
  %i.cr = sub i32 %i.cq, %i.bo
  %i.cs = zext nneg i32 %i.bl to i64
  %smin132 = call i64 @llvm.smin.i64(i64 %i.cs, i64 %i.ak) ; 2 uses
  %i.ct = trunc nsw i64 %smin132 to i32
  %i.cu = add i32 %i.bz, %i.ct
  %i.cv = sub i32 %i.cu, %i.bm
  %i.cw = xor i32 %i.bo, -1
  %i.cx = add i32 %i.cc, %i.cw                    ; 2 uses
  %i.cy = zext i32 %i.cx to i64
  %i.cz = add nuw nsw i64 %i.cy, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.cx, 7
  %n.vec = and i64 %i.cz, 8589934584              ; 3 uses
  %i.da = add i64 %smin, %n.vec
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv133 = phi i64 [ %smin132, %.preheader.us.preheader ], [ %indvars.iv.next134, %._crit_edge.us ] ; 2 uses
  %.0106117.us = phi float [ %i.cl, %.preheader.us.preheader ], [ %.sroa.speculated.us.lcssa, %._crit_edge.us ] ; 2 uses
  %i.db = mul nsw i64 %indvars.iv133, %i.aj
  %invariant.gep = getelementptr [4 x i8], ptr %i.ar, i64 %i.db ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.0106117.us, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dc = getelementptr [4 x i8], ptr %invariant.gep, i64 %smin
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ %broadcast.splat, %vector.ph ], [ %i.df, %vector.body ]
  %vec.phi160 = phi <4 x float> [ %broadcast.splat, %vector.ph ], [ %i.dg, %vector.body ]
  %i.dd = getelementptr [4 x i8], ptr %i.dc, i64 %index ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  %wide.load = load <4 x float>, ptr %i.dd, align 4, !tbaa !37
  %wide.load161 = load <4 x float>, ptr %i.de, align 4, !tbaa !37
  %i.df = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi, <4 x float> %wide.load) ; 2 uses
  %i.dg = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi160, <4 x float> %wide.load161) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %rdx.minmax.select = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.df, <4 x float> %i.dg)
  %i.di = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ %smin, %.preheader.us ], [ %i.da, %middle.block ]
  %.1115.us.ph = phi float [ %.0106117.us, %.preheader.us ], [ %i.di, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.1115.us = phi float [ %.sroa.speculated.us, %scalar.ph ], [ %.1115.us.ph, %scalar.ph.preheader ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.dj = load float, ptr %gep, align 4, !tbaa !37
  %.sroa.speculated.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.1115.us, float %i.dj) ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.cr, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !55

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.sroa.speculated.us.lcssa = phi float [ %i.di, %middle.block ], [ %.sroa.speculated.us, %scalar.ph ] ; 2 uses
  %indvars.iv.next134 = add nsw i64 %indvars.iv133, 1 ; 2 uses
  %lftr.wideiv135 = trunc i64 %indvars.iv.next134 to i32
  %exitcond136.not = icmp eq i32 %i.cv, %lftr.wideiv135
  br i1 %exitcond136.not, label %._crit_edge119, label %.preheader.us, !llvm.loop !56

._crit_edge119:                                   ; preds = %._crit_edge.us, %bb.e
  %.0106.lcssa = phi float [ %i.cl, %bb.e ], [ %.sroa.speculated.us.lcssa, %._crit_edge.us ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.048122, i64 %indvars.iv137
  store float %.0106.lcssa, ptr %i.dk, align 4, !tbaa !37
  %exitcond140.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count
  br i1 %exitcond140.not, label %._crit_edge, label %bb.c, !llvm.loop !57

._crit_edge127.split:                             ; preds = %._crit_edge124, %.noexc.lr.ph, %.noexc.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge127.split, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #7

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !39 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.round.v2f32(<2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #7

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { builtin nounwind }

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
end_hunk_0
