Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/roialign_x86_fma?download=true
inline.NumInlined: 74
inline.NumDeleted: 35
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4ncnn42original_pre_calc_for_bilinear_interpolateIfEEviiiiT_S1_S1_S1_iRSt6vectorINS_7PreCalcIS1_EESaIS4_EE:bb.a
  %.uncasted = shufflevector <4 x i32> %i.cd, <4 x i32> %i.ce, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %.uncasted181 = shufflevector <4 x i32> %i.cf, <4 x i32> %i.cg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cm = shufflevector <4 x float> %i.ch, <4 x float> %i.ci, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cn = shufflevector <4 x float> %i.cj, <4 x float> %i.ck, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %.uncasted182 = shufflevector <8 x i32> %.uncasted, <8 x i32> %.uncasted181, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.co = bitcast <16 x i32> %.uncasted182 to <16 x float>
  %i.cp = shufflevector <8 x float> %i.cm, <8 x float> %i.cn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.co, <16 x float> %i.cp, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.cl, align 4, !tbaa !42
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ %.2142.us, %.lr.ph.us ], [ %i.bm, %middle.block ]
  %.086139.us.ph = phi i32 [ 0, %.lr.ph.us ], [ %i.ao, %middle.block ]
  %i.cr = shufflevector <2 x i32> %i.bl, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.086139.us = phi i32 [ %i.dq, %scalar.ph ], [ %.086139.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cs = uitofp ninf nsz nneg i32 %.086139.us to float
  %i.ct = fadd fast float %i.cs, 5.000000e-01
  %i.cu = fmul fast float %7, %i.ct
  %i.cv = fmul fast float %i.cu, %i.aq
  %i.cw = fadd fast float %i.cv, %.sroa.speculated115 ; 3 uses
  %i.cx = fptosi float %i.cw to i32               ; 3 uses
  %i.cy = add nsw i32 %i.cx, 1                    ; 3 uses
  %i.cz = sitofp fast i32 %i.cy to float
  %i.da = sitofp fast i32 %i.cx to float
  %.not.us = icmp slt i32 %i.cy, %1
  %.085.us = tail call i32 @llvm.smin.i32(i32 %i.cy, i32 %i.g)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.db = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  %i.dc = insertelement <4 x i32> poison, i32 %i.cx, i64 0
  %i.dd = insertelement <4 x i32> %i.dc, i32 %.085.us, i64 1
  %i.de = shufflevector <4 x i32> %i.dd, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.df = add nsw <4 x i32> %i.cr, %i.de
  store <4 x i32> %i.df, ptr %i.db, align 4, !tbaa !16
  %.sroa.7.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dg = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dh = insertelement <2 x float> %i.dg, float %i.cw, i64 1
  %i.di = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.dj = insertelement <2 x float> %i.di, float %i.da, i64 1
  %i.dk = fsub fast <2 x float> %i.dh, %i.dj
  %i.dl = insertelement <2 x i1> poison, i1 %.not.us, i64 0
  %i.dm = shufflevector <2 x i1> %i.dl, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.dn = select <2 x i1> %i.dm, <2 x float> %i.dk, <2 x float> <float 1.000000e+00, float 0.000000e+00>
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dp = fmul fast <4 x float> %i.do, %i.bi
  store <4 x float> %i.dp, ptr %.sroa.7.0..sroa_idx.us, align 4, !tbaa !36
  %i.dq = add nuw nsw i32 %.086139.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.dq, %i.af
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !74

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.bm, %middle.block ], [ %indvars.iv.next, %scalar.ph ] ; 2 uses
  %i.dr = add nuw nsw i32 %.079141.us, 1          ; 2 uses
  %exitcond155.not = icmp eq i32 %i.dr, %i.ae
  br i1 %exitcond155.not, label %.loopexit.loopexit, label %.lr.ph.us, !llvm.loop !75
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn16ROIAlign_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %12) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !16     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !16
  %i.h = load i32, ptr %0, align 4, !tbaa !16     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !16
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !16
  %i.k = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %.not166 = icmp sgt i32 %i.k, %i.j
  br i1 %.not166, label %._crit_edge168.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !34, !noalias !86
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !35, !noalias !86
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !17, !noalias !86
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !34, !noalias !87
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !35, !noalias !87
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !17, !noalias !87
  %factor.op.mul169 = mul i64 %i.s, %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 212
  %i.w = load i32, ptr %i.v, align 4, !tbaa !33   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 220
  br i1 %i.x, label %.noexc.lr.ph.split, label %._crit_edge168.split

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !32  ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  %i.ac = sext i32 %i.aa to i64
  br i1 %i.ab, label %.noexc.lr.ph.split.split, label %._crit_edge168.split

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.ad = load i32, ptr %10, align 4, !tbaa !16
  %i.ae = load i32, ptr %11, align 4, !tbaa !16
  %i.af = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %i.ag = insertelement <2 x i32> %i.af, i32 %i.ad, i64 1
  %i.ah = sitofp fast <2 x i32> %i.ag to <2 x float> ; 2 uses
  %i.ai = load i32, ptr %i.y, align 4, !tbaa !37  ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  %i.ak = uitofp nneg i32 %i.ai to float
  %i.al = sext i32 %i.k to i64
  %i.am = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.aa to i64
  %i.an = insertelement <2 x i1> poison, i1 %i.aj, i64 0
  %i.ao = shufflevector <2 x i1> %i.an, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ap = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph.split.split, %._crit_edge165
  %indvars.iv181 = phi i64 [ %i.al, %.noexc.lr.ph.split.split ], [ %indvars.iv.next182, %._crit_edge165 ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv181
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 4 uses
  %.reass170 = mul i64 %factor.op.mul169, %indvars.iv181
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass170
  br label %.preheader147

.preheader147:                                    ; preds = %.noexc, %._crit_edge
  %.064164 = phi i32 [ 0, %.noexc ], [ %i.au, %._crit_edge ] ; 2 uses
  %.065163 = phi i32 [ 0, %.noexc ], [ %.2.lcssa, %._crit_edge ]
  %.067162 = phi ptr [ %i.as, %.noexc ], [ %i.aw, %._crit_edge ] ; 2 uses
  %i.at = uitofp ninf nsz nneg i32 %.064164 to float
  %i.au = add nuw nsw i32 %.064164, 1             ; 3 uses
  %i.av = uitofp ninf nsz nneg i32 %i.au to float
  br label %bb.c

._crit_edge165:                                   ; preds = %._crit_edge
  %indvars.iv.next182 = add nsw i64 %indvars.iv181, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next182 to i32
  %exitcond184.not = icmp eq i32 %i.am, %lftr.wideiv
  br i1 %exitcond184.not, label %._crit_edge168.split, label %.noexc

._crit_edge:                                      ; preds = %._crit_edge155
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.067162, i64 %i.ac
  %exitcond180.not = icmp eq i32 %i.au, %i.w
  br i1 %exitcond180.not, label %._crit_edge165, label %.preheader147, !llvm.loop !82

bb.c:                                             ; preds = %.preheader147, %._crit_edge155
  %indvars.iv176 = phi i64 [ 0, %.preheader147 ], [ %indvars.iv.next177, %._crit_edge155 ] ; 3 uses
  %.166159 = phi i32 [ %.065163, %.preheader147 ], [ %.2.lcssa, %._crit_edge155 ] ; 3 uses
  %i.ax = load float, ptr %6, align 4, !tbaa !36  ; 2 uses
  %i.ay = load float, ptr %7, align 4, !tbaa !36  ; 2 uses
  %i.az = load float, ptr %8, align 4, !tbaa !36  ; 2 uses
  %i.ba = trunc nuw nsw i64 %indvars.iv176 to i32
  %i.bb = uitofp ninf nsz nneg i32 %i.ba to float
  %i.bc = load float, ptr %9, align 4, !tbaa !36  ; 2 uses
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 3 uses
  %i.bd = trunc nuw nsw i64 %indvars.iv.next177 to i32
  %i.be = uitofp ninf nsz nneg i32 %i.bd to float
  %i.bf = fmul fast float %i.ay, %i.at
  %i.bg = fadd fast float %i.bf, %i.ax
  %i.bh = fmul fast float %i.bc, %i.bb
  %i.bi = fadd fast float %i.bh, %i.az
  %i.bj = fmul fast float %i.ay, %i.av
  %i.bk = fadd fast float %i.bj, %i.ax
  %i.bl = fmul fast float %i.bc, %i.be
  %i.bm = fadd fast float %i.bl, %i.az
  %i.bn = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bo = insertelement <2 x float> %i.bn, float %i.bg, i64 1
  %i.bp = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bo, <2 x float> zeroinitializer)
  %i.bq = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bp, <2 x float> %i.ah) ; 3 uses
  %i.br = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %i.bk, i64 1
  %i.bt = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bs, <2 x float> zeroinitializer)
  %i.bu = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bt, <2 x float> %i.ah) ; 3 uses
  %i.bv = fsub fast <2 x float> %i.bu, %i.bq
  %i.bw = call fast <2 x float> @llvm.ceil.v2f32(<2 x float> %i.bv)
  %i.bx = select <2 x i1> %i.ao, <2 x float> %i.aq, <2 x float> %i.bw
  %i.by = fptosi <2 x float> %i.bx to <2 x i32>   ; 3 uses
  %i.bz = fcmp ole <2 x float> %i.bu, %i.bq
  %i.ca = extractelement <2 x i1> %i.bz, i64 1
  %i.cb = fcmp ole <2 x float> %i.bu, %i.bq
  %i.cc = extractelement <2 x i1> %i.cb, i64 0
  %i.cd = select i1 %i.ca, i1 true, i1 %i.cc
  %i.ce = extractelement <2 x i32> %i.by, i64 0   ; 3 uses
  %i.cf = extractelement <2 x i32> %i.by, i64 1   ; 2 uses
  %i.cg = mul i32 %i.ce, %i.cf                    ; 2 uses
  %13 = icmp sgt <2 x i32> %i.by, zeroinitializer ; 2 uses
  %14 = extractelement <2 x i1> %13, i64 0
  %15 = extractelement <2 x i1> %13, i64 1
  %or.cond = select i1 %15, i1 %14, i1 false
  br i1 %or.cond, label %.preheader.lr.ph.split.us, label %._crit_edge155

.preheader.lr.ph.split.us:                        ; preds = %bb.c
  %i.ch = load ptr, ptr %12, align 8, !tbaa !40
  %i.ci = zext nneg i32 %i.ce to i64
  %i.cj = sext i32 %.166159 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %.061154.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %i.dw, %._crit_edge.us ]
  %.062153.us = phi float [ 0.000000e+00, %.preheader.lr.ph.split.us ], [ %i.dt, %._crit_edge.us ]
  %.2152.us = phi i64 [ %i.cj, %.preheader.lr.ph.split.us ], [ %i.dv, %._crit_edge.us ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader.us, %bb.d
  %indvars.iv = phi i64 [ %.2152.us, %.preheader.us ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.060150.us = phi i32 [ 0, %.preheader.us ], [ %i.du, %bb.d ]
  %.1149.us = phi float [ %.062153.us, %.preheader.us ], [ %i.dt, %bb.d ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %i.ch, i64 %indvars.iv ; 8 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !44
  %i.cn = load i32, ptr %i.ck, align 4, !tbaa !45
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !36
  %i.cr = fmul fast float %i.cq, %i.cm
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 20
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !46
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !47
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.cw
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !36
  %i.cz = fmul fast float %i.cy, %i.ct
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.db = load float, ptr %i.da, align 4, !tbaa !48
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !49
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.de
  %i.dg = load float, ptr %i.df, align 4, !tbaa !36
  %i.dh = fmul fast float %i.dg, %i.db
  %i.di = getelementptr inbounds nuw i8, ptr %i.ck, i64 28
  %i.dj = load float, ptr %i.di, align 4, !tbaa !50
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !51
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.dm
  %i.do = load float, ptr %i.dn, align 4, !tbaa !36
  %i.dp = fmul fast float %i.do, %i.dj
  %i.dq = fadd fast float %i.cr, %.1149.us
  %i.dr = fadd fast float %i.dq, %i.cz
  %i.ds = fadd fast float %i.dr, %i.dh
  %i.dt = fadd fast float %i.ds, %i.dp            ; 3 uses
  %i.du = add nuw nsw i32 %.060150.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.du, %i.ce
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.d, !llvm.loop !83

._crit_edge.us:                                   ; preds = %bb.d
  %i.dv = add nsw i64 %.2152.us, %i.ci
  %i.dw = add nuw nsw i32 %.061154.us, 1          ; 2 uses
  %exitcond175.not = icmp eq i32 %i.dw, %i.cf
  br i1 %exitcond175.not, label %._crit_edge155.loopexit, label %.preheader.us, !llvm.loop !84

._crit_edge155.loopexit:                          ; preds = %._crit_edge.us
  %i.dx = add i32 %.166159, %i.cg
  br label %._crit_edge155

._crit_edge155:                                   ; preds = %._crit_edge155.loopexit, %bb.c
  %.2.lcssa = phi i32 [ %.166159, %bb.c ], [ %i.dx, %._crit_edge155.loopexit ] ; 2 uses
  %.062.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.dt, %._crit_edge155.loopexit ]
  %i.dy = sitofp fast i32 %i.cg to float
  %i.dz = fdiv fast float %.062.lcssa, %i.dy
  %i.ea = select fast i1 %i.cd, float 0.000000e+00, float %i.dz
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.067162, i64 %indvars.iv176
  store float %i.ea, ptr %i.eb, align 4, !tbaa !36
  %exitcond179.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count
  br i1 %exitcond179.not, label %._crit_edge, label %bb.c, !llvm.loop !85

._crit_edge168.split:                             ; preds = %._crit_edge165, %.noexc.lr.ph, %.noexc.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge168.split, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !53 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn44detectron2_pre_calc_for_bilinear_interpolateIfEEviiiiiiT_S1_S1_S1_iiRSt6vectorINS_7PreCalcIS1_EESaIS4_EE(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6, float noundef nofpclass(nan inf) %7, float noundef nofpclass(nan inf) %8, float noundef nofpclass(nan inf) %9, i32 noundef %10, i32 noundef %11, ptr noundef nonnull align 8 dereferenceable(24) %12) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.preheader109.lr.ph, label %._crit_edge141.split

.preheader109.lr.ph:                              ; preds = %bb.a
  %i.b = icmp slt i32 %3, 1
  %i.c = icmp slt i32 %5, 1
  %i.d = sitofp fast i32 %0 to float
  %i.e = sitofp fast i32 %1 to float
  %i.f = add nsw i32 %0, -1                       ; 4 uses
  %i.g = sitofp fast i32 %i.f to float
  %i.h = add nsw i32 %1, -1                       ; 4 uses
  %i.i = sitofp fast i32 %i.h to float
  %i.j = icmp slt i32 %4, 1
  %or.cond.not169 = or i1 %i.b, %i.j
  %brmerge = or i1 %or.cond.not169, %i.c
  br i1 %brmerge, label %._crit_edge141.split, label %.preheader109.us.us.preheader

.preheader109.us.us.preheader:                    ; preds = %.preheader109.lr.ph
  %i.k = sitofp fast i32 %11 to float
  %i.l = sitofp fast i32 %10 to float
  %i.m = zext nneg i32 %5 to i64
  %i.n = shl nuw nsw i64 %i.m, 5
  %i.o = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.p = fdiv fast float 1.000000e+00, %i.l
  %i.q = fdiv fast float 1.000000e+00, %i.k
  %i.r = shufflevector <2 x i32> %i.o, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %.preheader109.us.us

.preheader109.us.us:                              ; preds = %.preheader109.us.us.preheader, %._crit_edge.split.us.split.us.us.us
  %.0140.us.us = phi i32 [ %.us-phi.us.us.us.us.us, %._crit_edge.split.us.split.us.us.us ], [ 0, %.preheader109.us.us.preheader ]
  %.088139.us.us = phi i32 [ %i.by, %._crit_edge.split.us.split.us.us.us ], [ 0, %.preheader109.us.us.preheader ] ; 2 uses
  %i.s = uitofp ninf nsz nneg i32 %.088139.us.us to float
  %i.t = fmul fast float %8, %i.s
  %i.u = fadd fast float %6, %i.t
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %._crit_edge115.split.us.us.us.us.us, %.preheader109.us.us
  %.1133.us.us.us.us = phi i32 [ %.0140.us.us, %.preheader109.us.us ], [ %.us-phi.us.us.us.us.us, %._crit_edge115.split.us.us.us.us.us ]
  %.089132.us.us.us.us = phi i32 [ 0, %.preheader109.us.us ], [ %i.bx, %._crit_edge115.split.us.us.us.us.us ] ; 2 uses
  %i.v = uitofp ninf nsz nneg i32 %.089132.us.us.us.us to float
  %i.w = fmul fast float %9, %i.v
  %i.x = fadd fast float %7, %i.w
  br label %.lr.ph.us.us.us.us.us

.lr.ph.us.us.us.us.us:                            ; preds = %._crit_edge.us.us.us.us.us, %.preheader.us.us.us.us
  %.2113.us.us.us.us.us = phi i32 [ %.1133.us.us.us.us, %.preheader.us.us.us.us ], [ %.us-phi.us.us.us.us.us, %._crit_edge.us.us.us.us.us ] ; 3 uses
  %.090112.us.us.us.us.us = phi i32 [ 0, %.preheader.us.us.us.us ], [ %i.bw, %._crit_edge.us.us.us.us.us ] ; 2 uses
  %i.y = uitofp ninf nsz nneg i32 %.090112.us.us.us.us.us to float
  %i.z = fadd fast float %i.y, 5.000000e-01
  %i.aa = fmul fast float %8, %i.z
  %i.ab = fmul fast float %i.aa, %i.p
  %i.ac = fadd fast float %i.ab, %i.u             ; 3 uses
  %i.ad = fcmp fast olt float %i.ac, -1.000000e+00
  %i.ae = fcmp fast ogt float %i.ac, %i.d
  %or.cond.us.us.us.us.us = select i1 %i.ad, i1 true, i1 %i.ae
  %spec.store.select.us.us.us.us.us = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.ac, float 0.000000e+00) ; 2 uses
  %i.af = fptosi float %spec.store.select.us.us.us.us.us to i32 ; 3 uses
  %.not.us.us.us.us.us = icmp sgt i32 %i.f, %i.af ; 2 uses
  %i.ag = add nuw nsw i32 %i.af, 1
  %.096.us.us.us.us.us = select i1 %.not.us.us.us.us.us, i32 %i.ag, i32 %i.f
  %.094.us.us.us.us.us = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.af) ; 2 uses
  %i.ah = insertelement <2 x i32> poison, i32 %.094.us.us.us.us.us, i64 0
  %i.ai = insertelement <2 x i32> %i.ah, i32 %.096.us.us.us.us.us, i64 1
  %or.cond.fr.us.us.us.us.us = freeze i1 %or.cond.us.us.us.us.us
  br i1 %or.cond.fr.us.us.us.us.us, label %.lr.ph.split.us.us.us.us.us.us, label %.lr.ph.split.us117.us.us.us.us.preheader

.lr.ph.split.us117.us.us.us.us.preheader:         ; preds = %.lr.ph.us.us.us.us.us
  %.093.us.us.us.us.us = select nsz i1 %.not.us.us.us.us.us, float %spec.store.select.us.us.us.us.us, float %i.g
  %i.aj = sitofp fast i32 %.094.us.us.us.us.us to float
  %i.ak = fsub fast float %.093.us.us.us.us.us, %i.aj ; 2 uses
  %i.al = fsub fast float 1.000000e+00, %i.ak
  %i.am = sext i32 %.2113.us.us.us.us.us to i64
  %i.an = insertelement <4 x float> poison, float %i.al, i64 0
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 1
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.aq = shufflevector <2 x i32> %i.ai, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ar = mul nsw <4 x i32> %i.aq, %i.r
  br label %.lr.ph.split.us117.us.us.us.us

.lr.ph.split.us117.us.us.us.us:                   ; preds = %.lr.ph.split.us117.us.us.us.us.preheader, %bb.d
  %indvars.iv = phi i64 [ %i.am, %.lr.ph.split.us117.us.us.us.us.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.091110.us119.us.us.us.us = phi i32 [ 0, %.lr.ph.split.us117.us.us.us.us.preheader ], [ %i.bq, %bb.d ] ; 2 uses
  %i.as = uitofp ninf nsz nneg i32 %.091110.us119.us.us.us.us to float
  %i.at = fadd fast float %i.as, 5.000000e-01
  %i.au = fmul fast float %9, %i.at
  %i.av = fmul fast float %i.au, %i.q
  %i.aw = fadd fast float %i.av, %i.x             ; 3 uses
  %i.ax = fcmp fast olt float %i.aw, -1.000000e+00
  %i.ay = fcmp fast ogt float %i.aw, %i.e
  %or.cond108.us.us.us.us.us = select i1 %i.ax, i1 true, i1 %i.ay
end_hunk_0
