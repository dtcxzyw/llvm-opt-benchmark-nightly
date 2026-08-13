inline.NumInlined: 74
inline.NumDeleted: 35
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4ncnn42original_pre_calc_for_bilinear_interpolateIfEEviiiiT_S1_S1_S1_iRSt6vectorINS_7PreCalcIS1_EESaIS4_EE:bb.a
  %i.cp = shufflevector <8 x float> %i.cm, <8 x float> %i.cn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.co, <16 x float> %i.cp, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.cl, align 4, !tbaa !62
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ %.2142.us, %.lr.ph.us ], [ %i.bm, %middle.block ]
  %.080139.us.ph = phi i32 [ 0, %.lr.ph.us ], [ %i.ao, %middle.block ]
  %i.cr = shufflevector <2 x i32> %i.bl, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.080139.us = phi i32 [ %i.dq, %scalar.ph ], [ %.080139.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cs = uitofp nneg i32 %.080139.us to float
  %i.ct = fadd fast float %i.cs, 5.000000e-01
  %i.cu = fmul fast float %7, %i.ct
  %i.cv = fmul fast float %i.cu, %i.aq
  %i.cw = fadd fast float %i.cv, %.sroa.speculated115 ; 3 uses
  %i.cx = fptosi float %i.cw to i32               ; 3 uses
  %i.cy = add nsw i32 %i.cx, 1                    ; 3 uses
  %i.cz = sitofp fast i32 %i.cy to float
  %i.da = sitofp fast i32 %i.cx to float
  %.not.us = icmp slt i32 %i.cy, %1
  %.081.us = tail call i32 @llvm.smin.i32(i32 %i.cy, i32 %i.g)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.db = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  %i.dc = insertelement <4 x i32> poison, i32 %i.cx, i64 0
  %i.dd = insertelement <4 x i32> %i.dc, i32 %.081.us, i64 1
  %i.de = shufflevector <4 x i32> %i.dd, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.df = add nsw <4 x i32> %i.cr, %i.de
  store <4 x i32> %i.df, ptr %i.db, align 4, !tbaa !18
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
  store <4 x float> %i.dp, ptr %.sroa.7.0..sroa_idx.us, align 4, !tbaa !43
  %i.dq = add nuw nsw i32 %.080139.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.dq, %i.af
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !66

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.bm, %middle.block ], [ %indvars.iv.next, %scalar.ph ] ; 2 uses
  %i.dr = add nuw nsw i32 %.079141.us, 1          ; 2 uses
  %exitcond155.not = icmp eq i32 %i.dr, %i.ae
  br i1 %exitcond155.not, label %.loopexit.loopexit, label %.lr.ph.us, !llvm.loop !67
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn16ROIAlign_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %12) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !18     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %i.h = load i32, ptr %0, align 4, !tbaa !18     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !18
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !18
  %i.k = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not166 = icmp sgt i32 %i.k, %i.j
  br i1 %.not166, label %._crit_edge168.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !40, !noalias !68
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !41, !noalias !68
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !68
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !40, !noalias !71
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !41, !noalias !71
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !71
  %factor.op.mul169 = mul i64 %i.s, %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 212
  %i.w = load i32, ptr %i.v, align 4, !tbaa !37   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 220
  br i1 %i.x, label %.noexc.lr.ph.split, label %._crit_edge168.split

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !22  ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  %i.ac = sext i32 %i.aa to i64
  br i1 %i.ab, label %.noexc.lr.ph.split.split, label %._crit_edge168.split

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.ad = load i32, ptr %10, align 4, !tbaa !18
  %i.ae = load i32, ptr %11, align 4, !tbaa !18
  %i.af = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %i.ag = insertelement <2 x i32> %i.af, i32 %i.ad, i64 1
  %i.ah = sitofp <2 x i32> %i.ag to <2 x float>   ; 2 uses
  %i.ai = load i32, ptr %i.y, align 4, !tbaa !48  ; 2 uses
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
  %.063164 = phi ptr [ %i.as, %.noexc ], [ %i.aw, %._crit_edge ] ; 2 uses
  %.064163 = phi i32 [ 0, %.noexc ], [ %.2.lcssa, %._crit_edge ]
  %.066162 = phi i32 [ 0, %.noexc ], [ %i.au, %._crit_edge ] ; 2 uses
  %i.at = uitofp nneg i32 %.066162 to float
  %i.au = add nuw nsw i32 %.066162, 1             ; 3 uses
  %i.av = uitofp nneg i32 %i.au to float
  br label %bb.c

._crit_edge165:                                   ; preds = %._crit_edge
  %indvars.iv.next182 = add nsw i64 %indvars.iv181, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next182 to i32
  %exitcond184.not = icmp eq i32 %i.am, %lftr.wideiv
  br i1 %exitcond184.not, label %._crit_edge168.split, label %.noexc

._crit_edge:                                      ; preds = %._crit_edge155
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.063164, i64 %i.ac
  %exitcond180.not.a = icmp eq i32 %i.au, %i.w
  br i1 %exitcond180.not.a, label %._crit_edge165, label %.preheader147, !llvm.loop !74

bb.c:                                             ; preds = %.preheader147, %._crit_edge155
  %indvars.iv176 = phi i64 [ 0, %.preheader147 ], [ %indvars.iv.next177, %._crit_edge155 ] ; 3 uses
  %.165160 = phi i32 [ %.064163, %.preheader147 ], [ %.2.lcssa, %._crit_edge155 ] ; 3 uses
  %i.ax = load float, ptr %6, align 4, !tbaa !43
  %i.ay = load float, ptr %7, align 4, !tbaa !43  ; 2 uses
  %i.az = load float, ptr %8, align 4, !tbaa !43
  %i.ba = trunc nuw nsw i64 %indvars.iv176 to i32
  %i.bb = uitofp nneg i32 %i.ba to float
  %i.bc = load float, ptr %9, align 4, !tbaa !43  ; 2 uses
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 3 uses
  %i.bd = trunc nuw nsw i64 %indvars.iv.next177 to i32
  %i.be = uitofp nneg i32 %i.bd to float
  %i.bf = fmul fast float %i.ay, %i.at
  %i.bg = fmul fast float %i.bc, %i.bb
  %i.bh = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bi = insertelement <2 x float> %i.bh, float %i.bf, i64 1
  %i.bj = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.ax, i64 1 ; 2 uses
  %i.bl = fadd fast <2 x float> %i.bi, %i.bk
  %i.bm = fmul fast float %i.ay, %i.av
  %i.bn = fmul fast float %i.bc, %i.be
  %i.bo = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.bm, i64 1
  %i.bq = fadd fast <2 x float> %i.bp, %i.bk
  %i.br = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bl, <2 x float> zeroinitializer)
  %i.bs = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.br, <2 x float> %i.ah) ; 3 uses
  %i.bt = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bq, <2 x float> zeroinitializer)
  %i.bu = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bt, <2 x float> %i.ah) ; 3 uses
  %i.bv = fsub fast <2 x float> %i.bu, %i.bs
  %i.bw = call fast <2 x float> @llvm.ceil.v2f32(<2 x float> %i.bv)
  %i.bx = select <2 x i1> %i.ao, <2 x float> %i.aq, <2 x float> %i.bw
  %i.by = fptosi <2 x float> %i.bx to <2 x i32>   ; 3 uses
  %i.bz = fcmp ole <2 x float> %i.bu, %i.bs
  %i.ca = extractelement <2 x i1> %i.bz, i64 1
  %i.cb = fcmp ole <2 x float> %i.bu, %i.bs
  %i.cc = extractelement <2 x i1> %i.cb, i64 0
  %i.cd = select i1 %i.ca, i1 true, i1 %i.cc
  %i.ce = extractelement <2 x i32> %i.by, i64 0   ; 3 uses
  %i.cf = extractelement <2 x i32> %i.by, i64 1   ; 2 uses
  %i.cg = mul i32 %i.ce, %i.cf                    ; 2 uses
  %i.ch = icmp sgt <2 x i32> %i.by, zeroinitializer ; 2 uses
  %i.ci = extractelement <2 x i1> %i.ch, i64 0
  %i.cj = extractelement <2 x i1> %i.ch, i64 1
  %or.cond = select i1 %i.cj, i1 %i.ci, i1 false
  br i1 %or.cond, label %.preheader.lr.ph.split.us, label %._crit_edge155

.preheader.lr.ph.split.us:                        ; preds = %bb.c
  %i.ck = load ptr, ptr %12, align 8, !tbaa !49
  %i.cl = zext nneg i32 %i.ce to i64
  %i.cm = sext i32 %.165160 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %.061154.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %i.do, %._crit_edge.us ]
  %.062153.us = phi float [ 0.000000e+00, %.preheader.lr.ph.split.us ], [ %op.rdx, %._crit_edge.us ]
  %.2152.us = phi i64 [ %i.cm, %.preheader.lr.ph.split.us ], [ %14, %._crit_edge.us ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader.us, %bb.d
  %indvars.iv = phi i64 [ %.2152.us, %.preheader.us ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.060150.us = phi i32 [ 0, %.preheader.us ], [ %13, %bb.d ]
  %.1149.us = phi float [ %.062153.us, %.preheader.us ], [ %op.rdx, %bb.d ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %indvars.iv ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !75
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !43
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !77
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !43
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !78
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.da
  %i.dc = load float, ptr %i.db, align 4, !tbaa !43
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !79
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !43
  %i.di = load <4 x float>, ptr %i.co, align 4, !tbaa !43
  %i.dj = insertelement <4 x float> poison, float %i.cs, i64 0
  %i.dk = insertelement <4 x float> %i.dj, float %i.cx, i64 1
  %i.dl = insertelement <4 x float> %i.dk, float %i.dc, i64 2
  %i.dm = insertelement <4 x float> %i.dl, float %i.dh, i64 3
  %i.dn = fmul fast <4 x float> %i.dm, %i.di
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.1149.us, <4 x float> %i.dn) ; 3 uses
  %13 = add nuw nsw i32 %.060150.us, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %13, %i.ce
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.d, !llvm.loop !80

._crit_edge.us:                                   ; preds = %bb.d
  %14 = add nsw i64 %.2152.us, %i.cl
  %i.do = add nuw nsw i32 %.061154.us, 1          ; 2 uses
  %exitcond175.not = icmp eq i32 %i.do, %i.cf
  br i1 %exitcond175.not, label %._crit_edge155.loopexit, label %.preheader.us, !llvm.loop !81

._crit_edge155.loopexit:                          ; preds = %._crit_edge.us
  %15 = add i32 %.165160, %i.cg
  br label %._crit_edge155

._crit_edge155:                                   ; preds = %._crit_edge155.loopexit, %bb.c
  %.2.lcssa = phi i32 [ %.165160, %bb.c ], [ %15, %._crit_edge155.loopexit ] ; 2 uses
  %.062.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %op.rdx, %._crit_edge155.loopexit ]
  %i.dp = sitofp fast i32 %i.cg to float
  %i.dq = fdiv fast float %.062.lcssa, %i.dp
  %i.dr = select fast i1 %i.cd, float 0.000000e+00, float %i.dq
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.063164, i64 %indvars.iv176
  store float %i.dr, ptr %i.ds, align 4, !tbaa !43
  %exitcond179.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count
  br i1 %exitcond179.not, label %._crit_edge, label %bb.c, !llvm.loop !82

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
declare !callback !83 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn44detectron2_pre_calc_for_bilinear_interpolateIfEEviiiiiiT_S1_S1_S1_iiRSt6vectorINS_7PreCalcIS1_EESaIS4_EE(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6, float noundef nofpclass(nan inf) %7, float noundef nofpclass(nan inf) %8, float noundef nofpclass(nan inf) %9, i32 noundef %10, i32 noundef %11, ptr noundef nonnull align 8 dereferenceable(24) %12) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.preheader110.lr.ph, label %._crit_edge142.split

.preheader110.lr.ph:                              ; preds = %bb.a
  %i.b = icmp slt i32 %3, 1
  %i.c = icmp slt i32 %5, 1
  %i.d = sitofp fast i32 %0 to float
  %i.e = sitofp fast i32 %1 to float
  %i.f = add nsw i32 %0, -1                       ; 4 uses
  %i.g = sitofp fast i32 %i.f to float
  %i.h = add nsw i32 %1, -1                       ; 4 uses
  %i.i = sitofp fast i32 %i.h to float
  %i.j = icmp slt i32 %4, 1
  %or.cond.not170 = or i1 %i.b, %i.j
  %brmerge = or i1 %or.cond.not170, %i.c
  br i1 %brmerge, label %._crit_edge142.split, label %.preheader110.us.us.preheader

.preheader110.us.us.preheader:                    ; preds = %.preheader110.lr.ph
  %i.k = sitofp fast i32 %11 to float
  %i.l = sitofp fast i32 %10 to float
  %i.m = zext nneg i32 %5 to i64
  %i.n = shl nuw nsw i64 %i.m, 5
  %i.o = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.p = fdiv fast float 1.000000e+00, %i.l
  %i.q = fdiv fast float 1.000000e+00, %i.k
  %i.r = shufflevector <2 x i32> %i.o, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %.preheader110.us.us

.preheader110.us.us:                              ; preds = %.preheader110.us.us.preheader, %._crit_edge.split.us.split.us.us.us
  %.0141.us.us = phi i32 [ %.us-phi.us.us.us.us.us, %._crit_edge.split.us.split.us.us.us ], [ 0, %.preheader110.us.us.preheader ]
  %.087140.us.us = phi i32 [ %i.by, %._crit_edge.split.us.split.us.us.us ], [ 0, %.preheader110.us.us.preheader ] ; 2 uses
  %i.s = uitofp nneg i32 %.087140.us.us to float
  %i.t = fmul fast float %8, %i.s
  %i.u = fadd fast float %i.t, %6
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %._crit_edge116.split.us.us.us.us.us, %.preheader110.us.us
  %.1134.us.us.us.us = phi i32 [ %.0141.us.us, %.preheader110.us.us ], [ %.us-phi.us.us.us.us.us, %._crit_edge116.split.us.us.us.us.us ]
  %.088133.us.us.us.us = phi i32 [ 0, %.preheader110.us.us ], [ %i.bx, %._crit_edge116.split.us.us.us.us.us ] ; 2 uses
  %i.v = uitofp nneg i32 %.088133.us.us.us.us to float
  %i.w = fmul fast float %9, %i.v
  %i.x = fadd fast float %i.w, %7
  br label %.lr.ph.us.us.us.us.us

.lr.ph.us.us.us.us.us:                            ; preds = %._crit_edge.us.us.us.us.us, %.preheader.us.us.us.us
  %.2114.us.us.us.us.us = phi i32 [ %.1134.us.us.us.us, %.preheader.us.us.us.us ], [ %.us-phi.us.us.us.us.us, %._crit_edge.us.us.us.us.us ] ; 3 uses
  %.089113.us.us.us.us.us = phi i32 [ 0, %.preheader.us.us.us.us ], [ %i.bs, %._crit_edge.us.us.us.us.us ] ; 2 uses
  %i.y = uitofp nneg i32 %.089113.us.us.us.us.us to float
  %i.z = fadd fast float %i.y, 5.000000e-01
  %i.aa = fmul fast float %8, %i.z
  %i.ab = fmul fast float %i.aa, %i.p
  %i.ac = fadd fast float %i.u, %i.ab             ; 3 uses
  %i.ad = fcmp fast olt float %i.ac, -1.000000e+00
  %i.ae = fcmp fast ogt float %i.ac, %i.d
  %or.cond.us.us.us.us.us = select i1 %i.ad, i1 true, i1 %i.ae
  %.093.us.us.us.us.us = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.ac, float 0.000000e+00) ; 2 uses
  %i.af = fptosi float %.093.us.us.us.us.us to i32 ; 3 uses
  %.not.us.us.us.us.us = icmp sgt i32 %i.f, %i.af ; 2 uses
  %i.ag = add nsw i32 %i.af, 1
  %.097.us.us.us.us.us = select i1 %.not.us.us.us.us.us, i32 %i.ag, i32 %i.f
  %.095.us.us.us.us.us = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.af) ; 2 uses
  %i.ah = insertelement <2 x i32> poison, i32 %.095.us.us.us.us.us, i64 0
  %i.ai = insertelement <2 x i32> %i.ah, i32 %.097.us.us.us.us.us, i64 1
  %or.cond.fr.us.us.us.us.us = freeze i1 %or.cond.us.us.us.us.us
  br i1 %or.cond.fr.us.us.us.us.us, label %.lr.ph.split.us.us.us.us.us.us, label %.lr.ph.split.us130.us.us.us.us.preheader

.lr.ph.split.us130.us.us.us.us.preheader:         ; preds = %.lr.ph.us.us.us.us.us
  %.194.us.us.us.us.us = select nsz i1 %.not.us.us.us.us.us, float %.093.us.us.us.us.us, float %i.g
  %i.aj = sitofp fast i32 %.095.us.us.us.us.us to float
  %i.ak = fsub fast float %.194.us.us.us.us.us, %i.aj ; 2 uses
  %i.al = fsub fast float 1.000000e+00, %i.ak
  %i.am = sext i32 %.2114.us.us.us.us.us to i64
  %i.an = insertelement <4 x float> poison, float %i.al, i64 0
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 1
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.aq = shufflevector <2 x i32> %i.ai, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ar = mul nsw <4 x i32> %i.aq, %i.r
  br label %.lr.ph.split.us130.us.us.us.us

.lr.ph.split.us130.us.us.us.us:                   ; preds = %.lr.ph.split.us130.us.us.us.us.preheader, %bb.d
  %indvars.iv = phi i64 [ %i.am, %.lr.ph.split.us130.us.us.us.us.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.090111.us119.us.us.us.us = phi i32 [ 0, %.lr.ph.split.us130.us.us.us.us.preheader ], [ %i.bq, %bb.d ] ; 2 uses
  %i.as = uitofp nneg i32 %.090111.us119.us.us.us.us to float
  %i.at = fadd fast float %i.as, 5.000000e-01
  %i.au = fmul fast float %9, %i.at
  %i.av = fmul fast float %i.au, %i.q
  %i.aw = fadd fast float %i.x, %i.av             ; 3 uses
  %i.ax = fcmp fast olt float %i.aw, -1.000000e+00
  %i.ay = fcmp fast ogt float %i.aw, %i.e
  %or.cond109.us.us.us.us.us = select i1 %i.ax, i1 true, i1 %i.ay
  br i1 %or.cond109.us.us.us.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us130.us.us.us.us
  %.091.us.us.us.us.us = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.aw, float 0.000000e+00) ; 2 uses
  %i.az = fptosi float %.091.us.us.us.us.us to i32 ; 3 uses
  %.not105.us.us.us.us.us = icmp sgt i32 %i.h, %i.az ; 2 uses
  %i.ba = add nsw i32 %i.az, 1
  %.098.us.us.us.us.us = select i1 %.not105.us.us.us.us.us, i32 %i.ba, i32 %i.h
  %.096.us.us.us.us.us = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.az) ; 2 uses
  %.192.us.us.us.us.us = select nsz i1 %.not105.us.us.us.us.us, float %.091.us.us.us.us.us, float %i.i
  %i.bb = sitofp fast i32 %.096.us.us.us.us.us to float
  %i.bc = fsub fast float %.192.us.us.us.us.us, %i.bb ; 2 uses
  %i.bd = fsub fast float 1.000000e+00, %i.bc
  %i.be = load ptr, ptr %12, align 8, !tbaa !49
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.be, i64 %indvars.iv ; 2 uses
  %i.bg = insertelement <4 x i32> poison, i32 %.096.us.us.us.us.us, i64 0
  %i.bh = insertelement <4 x i32> %i.bg, i32 %.098.us.us.us.us.us, i64 1
  %i.bi = shufflevector <4 x i32> %i.bh, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bj = add nsw <4 x i32> %i.bi, %i.ar
  store <4 x i32> %i.bj, ptr %i.bf, align 4, !tbaa !18
  %.sroa.7.0..sroa_idx.us.us.us.us.us = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bk = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bl = insertelement <4 x float> %i.bk, float %i.bc, i64 1
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bn = fmul fast <4 x float> %i.bm, %i.ap
  store <4 x float> %i.bn, ptr %.sroa.7.0..sroa_idx.us.us.us.us.us, align 4, !tbaa !43
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.split.us130.us.us.us.us
  %i.bo = load ptr, ptr %12, align 8, !tbaa !49
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %indvars.iv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bp, i8 0, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bq = add nuw nsw i32 %.090111.us119.us.us.us.us, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %i.bq, %5
  br i1 %exitcond.not, label %._crit_edge.us.us.us.us.us.loopexit149, label %.lr.ph.split.us130.us.us.us.us, !llvm.loop !85

._crit_edge.us.us.us.us.us.loopexit149:           ; preds = %bb.d
  %i.br = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge.us.us.us.us.us

._crit_edge.us.us.us.us.us:                       ; preds = %._crit_edge.us.us.us.us.us.loopexit149, %.lr.ph.split.us.us.us.us.us.us
  %.us-phi.us.us.us.us.us = phi i32 [ %i.bw, %.lr.ph.split.us.us.us.us.us.us ], [ %i.br, %._crit_edge.us.us.us.us.us.loopexit149 ] ; 3 uses
  %i.bs = add nuw nsw i32 %.089113.us.us.us.us.us, 1 ; 2 uses
  %exitcond157.not = icmp eq i32 %i.bs, %4
  br i1 %exitcond157.not, label %._crit_edge116.split.us.us.us.us.us, label %.lr.ph.us.us.us.us.us, !llvm.loop !86

.lr.ph.split.us.us.us.us.us.us:                   ; preds = %.lr.ph.us.us.us.us.us
  %i.bt = load ptr, ptr %12, align 8, !tbaa !49
  %i.bu = sext i32 %.2114.us.us.us.us.us to i64
  %i.bv = shl nsw i64 %i.bu, 5
  %scevgep = getelementptr nuw i8, ptr %i.bt, i64 %i.bv
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.n, i1 false), !tbaa !62
  %i.bw = add i32 %5, %.2114.us.us.us.us.us
  br label %._crit_edge.us.us.us.us.us

._crit_edge116.split.us.us.us.us.us:              ; preds = %._crit_edge.us.us.us.us.us
  %i.bx = add nuw nsw i32 %.088133.us.us.us.us, 1 ; 2 uses
  %exitcond158.not = icmp eq i32 %i.bx, %3
  br i1 %exitcond158.not, label %._crit_edge.split.us.split.us.us.us, label %.preheader.us.us.us.us, !llvm.loop !87

._crit_edge.split.us.split.us.us.us:              ; preds = %._crit_edge116.split.us.us.us.us.us
  %i.by = add nuw nsw i32 %.087140.us.us, 1       ; 2 uses
  %exitcond159.not = icmp eq i32 %i.by, %2
  br i1 %exitcond159.not, label %._crit_edge142.split, label %.preheader110.us.us, !llvm.loop !88

._crit_edge142.split:                             ; preds = %._crit_edge.split.us.split.us.us.us, %.preheader110.lr.ph, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn16ROIAlign_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !18     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %i.h = load i32, ptr %0, align 4, !tbaa !18     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !18
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 7 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !18
  %i.k = load i32, ptr %i.a, align 4, !tbaa !18   ; 8 uses
  %.not124 = icmp sgt i32 %i.k, %i.j
  br i1 %.not124, label %._crit_edge.split128, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !40, !noalias !89
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !41, !noalias !89
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !89
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !40, !noalias !92 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !41, !noalias !92
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !92
  %factor.op.mul126 = mul i64 %i.s, %i.u          ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 212
  %i.w = load i32, ptr %i.v, align 4, !tbaa !37   ; 4 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.noexc.lr.ph.split, label %._crit_edge.split128

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.z = load i32, ptr %i.y, align 8, !tbaa !22   ; 5 uses
  %i.aa = icmp sgt i32 %i.z, 0
  %i.ab = sext i32 %i.z to i64
  br i1 %i.aa, label %.noexc.lr.ph.split.split, label %._crit_edge.split128

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.ac = load i32, ptr %6, align 4, !tbaa !18    ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.noexc.lr.ph.split.split.split.us, label %.noexc.preheader

.noexc.preheader:                                 ; preds = %.noexc.lr.ph.split.split
  %i.ae = zext nneg i32 %i.z to i64
  %i.af = sext i32 %i.k to i64                    ; 5 uses
  %i.ag = zext nneg i32 %i.w to i64
  %i.ah = mul nuw nsw i64 %i.ae, %i.ag
  %i.ai = shl nuw i64 %i.ah, 2                    ; 5 uses
  %i.aj = add nsw i32 %i.j, 1
  %i.ak = sub i32 %i.aj, %i.k                     ; 2 uses
  %i.al = sub i32 %i.j, %i.k
  %xtraiter = and i32 %i.ak, 3                    ; 3 uses
  %i.am = icmp ult i32 %i.al, 3
  br i1 %i.am, label %.noexc.epil.preheader, label %.noexc.preheader.new

.noexc.preheader.new:                             ; preds = %.noexc.preheader
  %unroll_iter = and i32 %i.ak, -4
  br label %.noexc

.noexc.lr.ph.split.split.split.us:                ; preds = %.noexc.lr.ph.split.split
  %i.an = load i32, ptr %7, align 4, !tbaa !18    ; 4 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.noexc.lr.ph.split.split.split.us.split.us, label %.noexc.us.preheader

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.split.split.us
  %i.ap = zext nneg i32 %i.z to i64
  %i.aq = sext i32 %i.k to i64                    ; 5 uses
  %i.ar = zext nneg i32 %i.w to i64
  %i.as = mul nuw nsw i64 %i.ap, %i.ar
  %i.at = shl nuw i64 %i.as, 2                    ; 5 uses
  %10 = add nsw i32 %i.j, 1
  %i.au = sub i32 %10, %i.k                       ; 2 uses
  %i.av = sub i32 %i.j, %i.k
  %xtraiter179 = and i32 %i.au, 3                 ; 3 uses
  %i.aw = icmp ult i32 %i.av, 3
  br i1 %i.aw, label %.noexc.us.epil.preheader, label %.noexc.us.preheader.new

.noexc.us.preheader.new:                          ; preds = %.noexc.us.preheader
  %unroll_iter183 = and i32 %i.au, -4
  br label %.noexc.us

.noexc.lr.ph.split.split.split.us.split.us:       ; preds = %.noexc.lr.ph.split.split.split.us
  %i.ax = load ptr, ptr %8, align 8, !tbaa !49
  %i.ay = zext nneg i32 %i.an to i64
  %11 = mul i32 %i.an, %i.ac
  %12 = sext i32 %i.k to i64
  %13 = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.z to i64
  br label %.noexc.us.us

.noexc.us.us:                                     ; preds = %._crit_edge117.split123.us.split.us.us.us, %.noexc.lr.ph.split.split.split.us.split.us
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %._crit_edge117.split123.us.split.us.us.us ], [ %12, %.noexc.lr.ph.split.split.split.us.split.us ] ; 3 uses
  %.reass.us.us = mul i64 %factor.op.mul, %indvars.iv155
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.us.us ; 4 uses
  %.reass127.us.us = mul i64 %factor.op.mul126, %indvars.iv155
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass127.us.us
  br label %.preheader89.us.us.us.us

.preheader89.us.us.us.us:                         ; preds = %._crit_edge.split.us.split.us.us.us.us.us, %.noexc.us.us
  %.052116.us.us.us.us = phi i32 [ 0, %.noexc.us.us ], [ %i.cg, %._crit_edge.split.us.split.us.us.us.us.us ]
  %.053115.us.us.us.us = phi i32 [ 0, %.noexc.us.us ], [ %18, %._crit_edge.split.us.split.us.us.us.us.us ]
  %.055112.us.us.us.us = phi ptr [ %i.ba, %.noexc.us.us ], [ %i.cf, %._crit_edge.split.us.split.us.us.us.us.us ] ; 2 uses
  br label %.preheader88.us.us.us.us.us.us

.preheader88.us.us.us.us.us.us:                   ; preds = %._crit_edge97.split.us.us.us.us.us.us.us, %.preheader89.us.us.us.us
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %._crit_edge97.split.us.us.us.us.us.us.us ], [ 0, %.preheader89.us.us.us.us ] ; 2 uses
  %.154101.us.us.us.us.us.us = phi i32 [ %18, %._crit_edge97.split.us.us.us.us.us.us.us ], [ %.053115.us.us.us.us, %.preheader89.us.us.us.us ] ; 2 uses
  %14 = sext i32 %.154101.us.us.us.us.us.us to i64
  br label %.preheader.us.us.us.us.us.us.us.a

.preheader.us.us.us.us.us.us.us.a:                ; preds = %._crit_edge.us.us.us.us.us.us.us, %.preheader88.us.us.us.us.us.us
  %.04996.us.us.us.us.us.us.us = phi i32 [ 0, %.preheader88.us.us.us.us.us.us ], [ %17, %._crit_edge.us.us.us.us.us.us.us ]
  %.05095.us.us.us.us.us.us.us = phi float [ 0.000000e+00, %.preheader88.us.us.us.us.us.us ], [ %op.rdx, %._crit_edge.us.us.us.us.us.us.us ]
  %.294.us.us.us.us.us.us.us = phi i64 [ %14, %.preheader88.us.us.us.us.us.us ], [ %16, %._crit_edge.us.us.us.us.us.us.us ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.us.us.us.us.us.us.us.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %.294.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.a ] ; 2 uses
  %.04892.us.us.us.us.us.us.us = phi i32 [ %15, %bb.c ], [ 0, %.preheader.us.us.us.us.us.us.us.a ]
  %.191.us.us.us.us.us.us.us = phi float [ %op.rdx, %bb.c ], [ %.05095.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.a ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %indvars.iv ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !75
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !43
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !77
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.bj
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !43
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !78
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !43
  %i.br = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !79
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.bt
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !43
  %i.bw = load <4 x float>, ptr %i.bc, align 4, !tbaa !43
  %i.bx = insertelement <4 x float> poison, float %i.bg, i64 0
  %i.by = insertelement <4 x float> %i.bx, float %i.bl, i64 1
  %i.bz = insertelement <4 x float> %i.by, float %i.bq, i64 2
  %i.ca = insertelement <4 x float> %i.bz, float %i.bv, i64 3
  %i.cb = fmul fast <4 x float> %i.ca, %i.bw
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.191.us.us.us.us.us.us.us, <4 x float> %i.cb) ; 3 uses
  %15 = add nuw nsw i32 %.04892.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond148.not = icmp eq i32 %15, %i.an
  br i1 %exitcond148.not, label %._crit_edge.us.us.us.us.us.us.us, label %bb.c, !llvm.loop !95

._crit_edge.us.us.us.us.us.us.us:                 ; preds = %bb.c
  %16 = add nsw i64 %.294.us.us.us.us.us.us.us, %i.ay
  %17 = add nuw nsw i32 %.04996.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond149.not = icmp eq i32 %17, %i.ac
  br i1 %exitcond149.not, label %._crit_edge97.split.us.us.us.us.us.us.us, label %.preheader.us.us.us.us.us.us.us.a, !llvm.loop !96

._crit_edge97.split.us.us.us.us.us.us.us:         ; preds = %._crit_edge.us.us.us.us.us.us.us
  %18 = add i32 %11, %.154101.us.us.us.us.us.us   ; 2 uses
  %i.cc = load float, ptr %9, align 4, !tbaa !43
  %i.cd = fdiv fast float %op.rdx, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.055112.us.us.us.us, i64 %indvars.iv150
  store float %i.cd, ptr %i.ce, align 4, !tbaa !43
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count
  br i1 %exitcond153.not, label %._crit_edge.split.us.split.us.us.us.us.us, label %.preheader88.us.us.us.us.us.us, !llvm.loop !97

._crit_edge.split.us.split.us.us.us.us.us:        ; preds = %._crit_edge97.split.us.us.us.us.us.us.us
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.055112.us.us.us.us, i64 %i.ab
  %i.cg = add nuw nsw i32 %.052116.us.us.us.us, 1 ; 2 uses
  %exitcond154.not = icmp eq i32 %i.cg, %i.w
  br i1 %exitcond154.not, label %._crit_edge117.split123.us.split.us.us.us, label %.preheader89.us.us.us.us, !llvm.loop !98

._crit_edge117.split123.us.split.us.us.us:        ; preds = %._crit_edge.split.us.split.us.us.us.us.us
  %indvars.iv.next156 = add nsw i64 %indvars.iv155, 1 ; 2 uses
  %lftr.wideiv158 = trunc i64 %indvars.iv.next156 to i32
  %exitcond159.not = icmp eq i32 %13, %lftr.wideiv158
  br i1 %exitcond159.not, label %._crit_edge.split128, label %.noexc.us.us

.noexc.us:                                        ; preds = %.noexc.us, %.noexc.us.preheader.new
  %indvar142 = phi i64 [ 0, %.noexc.us.preheader.new ], [ %indvar.next143.3, %.noexc.us ] ; 5 uses
  %niter184 = phi i32 [ 0, %.noexc.us.preheader.new ], [ %niter184.next.3, %.noexc.us ]
  %i.ch = add nsw i64 %indvar142, %i.aq
  %i.ci = mul i64 %factor.op.mul126, %i.ch
  %scevgep144 = getelementptr i8, ptr %i.q, i64 %i.ci
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep144, i8 0, i64 %i.at, i1 false), !tbaa !43
  %indvar.next143 = or disjoint i64 %indvar142, 1
  %i.cj = add nsw i64 %indvar.next143, %i.aq
  %i.ck = mul i64 %factor.op.mul126, %i.cj
  %scevgep144.1 = getelementptr i8, ptr %i.q, i64 %i.ck
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep144.1, i8 0, i64 %i.at, i1 false), !tbaa !43
  %indvar.next143.1 = or disjoint i64 %indvar142, 2
  %i.cl = add nsw i64 %indvar.next143.1, %i.aq
  %i.cm = mul i64 %factor.op.mul126, %i.cl
  %scevgep144.2 = getelementptr i8, ptr %i.q, i64 %i.cm
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep144.2, i8 0, i64 %i.at, i1 false), !tbaa !43
  %indvar.next143.2 = or disjoint i64 %indvar142, 3
  %i.cn = add nsw i64 %indvar.next143.2, %i.aq
  %i.co = mul i64 %factor.op.mul126, %i.cn
  %scevgep144.3 = getelementptr i8, ptr %i.q, i64 %i.co
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep144.3, i8 0, i64 %i.at, i1 false), !tbaa !43
  %indvar.next143.3 = add nuw nsw i64 %indvar142, 4 ; 2 uses
  %niter184.next.3 = add i32 %niter184, 4         ; 2 uses
  %niter184.ncmp.3 = icmp eq i32 %niter184.next.3, %unroll_iter183
  br i1 %niter184.ncmp.3, label %._crit_edge.split128.loopexit174.unr-lcssa, label %.noexc.us

.noexc:                                           ; preds = %.noexc, %.noexc.preheader.new
  %indvar = phi i64 [ 0, %.noexc.preheader.new ], [ %indvar.next.3, %.noexc ] ; 5 uses
  %niter = phi i32 [ 0, %.noexc.preheader.new ], [ %niter.next.3, %.noexc ]
  %i.cp = add nsw i64 %indvar, %i.af
  %i.cq = mul i64 %factor.op.mul126, %i.cp
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.cq
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.ai, i1 false), !tbaa !43
  %indvar.next = or disjoint i64 %indvar, 1
  %i.cr = add nsw i64 %indvar.next, %i.af
  %i.cs = mul i64 %factor.op.mul126, %i.cr
  %scevgep.1 = getelementptr i8, ptr %i.q, i64 %i.cs
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.1, i8 0, i64 %i.ai, i1 false), !tbaa !43
  %indvar.next.1 = or disjoint i64 %indvar, 2
  %i.ct = add nsw i64 %indvar.next.1, %i.af
  %i.cu = mul i64 %factor.op.mul126, %i.ct
  %scevgep.2 = getelementptr i8, ptr %i.q, i64 %i.cu
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.2, i8 0, i64 %i.ai, i1 false), !tbaa !43
  %indvar.next.2 = or disjoint i64 %indvar, 3
  %i.cv = add nsw i64 %indvar.next.2, %i.af
  %i.cw = mul i64 %factor.op.mul126, %i.cv
  %scevgep.3 = getelementptr i8, ptr %i.q, i64 %i.cw
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.3, i8 0, i64 %i.ai, i1 false), !tbaa !43
  %indvar.next.3 = add nuw nsw i64 %indvar, 4     ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.split128.loopexit175.unr-lcssa, label %.noexc

._crit_edge.split128.loopexit174.unr-lcssa:       ; preds = %.noexc.us
  %lcmp.mod181.not = icmp eq i32 %xtraiter179, 0
  br i1 %lcmp.mod181.not, label %._crit_edge.split128, label %.noexc.us.epil.preheader

.noexc.us.epil.preheader:                         ; preds = %._crit_edge.split128.loopexit174.unr-lcssa, %.noexc.us.preheader
  %indvar142.epil.init = phi i64 [ 0, %.noexc.us.preheader ], [ %indvar.next143.3, %._crit_edge.split128.loopexit174.unr-lcssa ]
  %lcmp.mod182 = icmp ne i32 %xtraiter179, 0
  call void @llvm.assume(i1 %lcmp.mod182)
  br label %.noexc.us.epil

.noexc.us.epil:                                   ; preds = %.noexc.us.epil, %.noexc.us.epil.preheader
  %indvar142.epil = phi i64 [ %indvar142.epil.init, %.noexc.us.epil.preheader ], [ %indvar.next143.epil, %.noexc.us.epil ] ; 2 uses
  %epil.iter180 = phi i32 [ 0, %.noexc.us.epil.preheader ], [ %epil.iter180.next, %.noexc.us.epil ]
  %i.cx = add i64 %indvar142.epil, %i.aq
  %i.cy = mul i64 %factor.op.mul126, %i.cx
  %scevgep144.epil = getelementptr i8, ptr %i.q, i64 %i.cy
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep144.epil, i8 0, i64 %i.at, i1 false), !tbaa !43
  %indvar.next143.epil = add nuw nsw i64 %indvar142.epil, 1
  %epil.iter180.next = add i32 %epil.iter180, 1   ; 2 uses
  %epil.iter180.cmp.not = icmp eq i32 %epil.iter180.next, %xtraiter179
  br i1 %epil.iter180.cmp.not, label %._crit_edge.split128, label %.noexc.us.epil, !llvm.loop !99

._crit_edge.split128.loopexit175.unr-lcssa:       ; preds = %.noexc
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.split128, label %.noexc.epil.preheader

.noexc.epil.preheader:                            ; preds = %._crit_edge.split128.loopexit175.unr-lcssa, %.noexc.preheader
  %indvar.epil.init = phi i64 [ 0, %.noexc.preheader ], [ %indvar.next.3, %._crit_edge.split128.loopexit175.unr-lcssa ]
  %lcmp.mod176 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod176)
  br label %.noexc.epil

.noexc.epil:                                      ; preds = %.noexc.epil, %.noexc.epil.preheader
  %indvar.epil = phi i64 [ %indvar.epil.init, %.noexc.epil.preheader ], [ %indvar.next.epil, %.noexc.epil ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.noexc.epil.preheader ], [ %epil.iter.next, %.noexc.epil ]
  %i.cz = add i64 %indvar.epil, %i.af
  %i.da = mul i64 %factor.op.mul126, %i.cz
  %scevgep.epil = getelementptr i8, ptr %i.q, i64 %i.da
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.epil, i8 0, i64 %i.ai, i1 false), !tbaa !43
  %indvar.next.epil = add nuw nsw i64 %indvar.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.split128, label %.noexc.epil, !llvm.loop !101

._crit_edge.split128:                             ; preds = %._crit_edge.split128.loopexit175.unr-lcssa, %.noexc.epil, %._crit_edge.split128.loopexit174.unr-lcssa, %.noexc.us.epil, %._crit_edge117.split123.us.split.us.us.us, %.noexc.lr.ph, %.noexc.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.split128, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn }
attributes #16 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!11 = !{!"p1 _ZTSN4ncnn3MatE", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!14, !6, i64 44}
!14 = !{!"_ZTSN4ncnn3MatE", !12, i64 0, !15, i64 8, !16, i64 16, !6, i64 24, !17, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !16, i64 64}
!15 = !{!"p1 int", !12, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = !{!"p1 _ZTSN4ncnn9AllocatorE", !12, i64 0}
!18 = !{!6, !6, i64 0}
!19 = !{!14, !6, i64 48}
!20 = !{!14, !16, i64 16}
!21 = !{!14, !6, i64 56}
!22 = !{!23, !6, i64 208}
!23 = !{!"_ZTSN4ncnn8ROIAlignE", !24, i64 0, !6, i64 208, !6, i64 212, !36, i64 216, !6, i64 220, !25, i64 224, !6, i64 228}
!24 = !{!"_ZTSN4ncnn5LayerE", !25, i64 8, !25, i64 9, !25, i64 10, !25, i64 11, !25, i64 12, !25, i64 13, !25, i64 14, !25, i64 15, !25, i64 16, !25, i64 17, !25, i64 18, !25, i64 19, !25, i64 20, !25, i64 21, !25, i64 22, !25, i64 23, !25, i64 24, !25, i64 25, !25, i64 26, !25, i64 27, !6, i64 28, !12, i64 32, !6, i64 40, !26, i64 48, !26, i64 80, !29, i64 112, !29, i64 136, !33, i64 160, !33, i64 184}
!25 = !{!"bool", !7, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !16, i64 8, !7, i64 16}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !28, i64 0}
!28 = !{!"p1 omnipotent char", !12, i64 0}
!29 = !{!"_ZTSSt6vectorIiSaIiEE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!33 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !34, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !10, i64 0}
!36 = !{!"float", !7, i64 0}
!37 = !{!23, !6, i64 212}
!38 = !{!39, !17, i64 8}
!39 = !{!"_ZTSN4ncnn6OptionE", !25, i64 0, !25, i64 1, !25, i64 2, !25, i64 3, !6, i64 4, !17, i64 8, !17, i64 16, !6, i64 24, !25, i64 28, !25, i64 29, !25, i64 30, !25, i64 31, !25, i64 32, !25, i64 33, !25, i64 34, !25, i64 35, !25, i64 36, !25, i64 37, !25, i64 38, !25, i64 39, !6, i64 40, !25, i64 44, !25, i64 45, !25, i64 46, !25, i64 47, !7, i64 48, !25, i64 49, !25, i64 50, !25, i64 51, !25, i64 52, !25, i64 53, !25, i64 54, !25, i64 55, !25, i64 56, !25, i64 57, !25, i64 58, !25, i64 59, !25, i64 60, !25, i64 61, !25, i64 62, !25, i64 63}
!40 = !{!14, !12, i64 0}
!41 = !{!14, !16, i64 64}
!42 = !{!23, !36, i64 216}
!43 = !{!36, !36, i64 0}
!44 = !{!23, !25, i64 224}
!45 = !{i8 0, i8 2}
!46 = !{}
!47 = !{!23, !6, i64 228}
!48 = !{!23, !6, i64 220}
!49 = !{!50, !51, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIN4ncnn7PreCalcIfEESaIS2_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!51 = !{!"p1 _ZTSN4ncnn7PreCalcIfEE", !12, i64 0}
!52 = !{!50, !51, i64 16}
!53 = !{i64 0, i64 4, !18, i64 4, i64 4, !18, i64 8, i64 4, !18, i64 12, i64 4, !18, i64 16, i64 4, !43, i64 20, i64 4, !43, i64 24, i64 4, !43, i64 28, i64 4, !43}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!50, !51, i64 8}
!57 = !{!39, !6, i64 4}
!58 = !{!59, !59, i64 0}
!59 = !{!"vtable pointer", !8, i64 0}
!60 = distinct !{!60, !55}
!61 = distinct !{!61, !55}
!62 = !{!7, !7, i64 0}
!63 = distinct !{!63, !55, !64, !65}
!64 = !{!"llvm.loop.isvectorized", i32 1}
!65 = !{!"llvm.loop.unroll.runtime.disable"}
!66 = distinct !{!66, !55, !65, !64}
!67 = distinct !{!67, !55}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!70 = distinct !{!70, !"_ZNK4ncnn3Mat7channelEi"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!73 = distinct !{!73, !"_ZN4ncnn3Mat7channelEi"}
!74 = distinct !{!74, !55}
!75 = !{!76, !6, i64 0}
!76 = !{!"_ZTSN4ncnn7PreCalcIfEE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28}
!77 = !{!76, !6, i64 4}
!78 = !{!76, !6, i64 8}
!79 = !{!76, !6, i64 12}
!80 = distinct !{!80, !55}
!81 = distinct !{!81, !55}
!82 = distinct !{!82, !55}
!83 = !{!84}
!84 = !{i64 2, i64 -1, i64 -1, i1 true}
!85 = distinct !{!85, !55}
!86 = distinct !{!86, !55}
!87 = distinct !{!87, !55}
!88 = distinct !{!88, !55}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!91 = distinct !{!91, !"_ZNK4ncnn3Mat7channelEi"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!94 = distinct !{!94, !"_ZN4ncnn3Mat7channelEi"}
!95 = distinct !{!95, !55}
!96 = distinct !{!96, !55}
!97 = distinct !{!97, !55}
!98 = distinct !{!98, !55}
!99 = distinct !{!99, !100}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = distinct !{!101, !100}
end_hunk_0
