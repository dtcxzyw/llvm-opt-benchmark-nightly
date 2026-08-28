Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/interp_x86_avx512bf16?download=true
inline.NumInlined: 24
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4ncnnL12cubic_coeffsEiiPiPfi:bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %.thread
  %.sink100 = phi float [ %i.eu, %.thread ], [ %i.ew, %bb.e ] ; 2 uses
  %.sink99 = phi float [ %i.er, %.thread ], [ %i.en, %bb.e ] ; 2 uses
  %.sink = phi float [ 0.000000e+00, %.thread ], [ %i.er, %bb.e ] ; 2 uses
  store float %.sink100, ptr %i.du, align 4, !tbaa !24
  store float %.sink99, ptr %i.ei, align 4, !tbaa !24
  store float %.sink, ptr %i.eo, align 4, !tbaa !24
  store float 0.000000e+00, ptr %i.es, align 4, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d
  %i.ex = phi float [ %i.eh, %bb.d ], [ %.sink99, %.sink.split ]
  %i.ey = phi float [ %i.er, %bb.d ], [ 0.000000e+00, %.sink.split ]
  %i.ez = phi float [ %i.en, %bb.d ], [ %.sink, %.sink.split ]
  %i.fa = phi float [ %i.ec, %bb.d ], [ %.sink100, %.sink.split ] ; 3 uses
  %.1 = phi i32 [ %i.dr, %bb.d ], [ 1, %.sink.split ] ; 3 uses
  %i.fb = icmp eq i32 %.1, %i.j
  br i1 %i.fb, label %.thread91, label %bb.g

.thread91:                                        ; preds = %bb.f
  %i.fc = fadd fast float %i.ey, %i.ez
  br label %.sink.split101

bb.g:                                             ; preds = %bb.f
  %.not89 = icmp slt i32 %.1, %i.k
  br i1 %.not89, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fd = fsub fast float 1.000000e+00, %i.fa
  br label %.sink.split101

.sink.split101:                                   ; preds = %bb.h, %.thread91
  %.sink104 = phi float [ %i.fc, %.thread91 ], [ %i.fd, %bb.h ]
  %.sink103 = phi float [ %i.ex, %.thread91 ], [ %i.fa, %bb.h ]
  %.sink102 = phi float [ %i.fa, %.thread91 ], [ 0.000000e+00, %bb.h ]
  store float %.sink104, ptr %i.es, align 4, !tbaa !24
  store float %.sink103, ptr %i.eo, align 4, !tbaa !24
  store float %.sink102, ptr %i.ei, align 4, !tbaa !24
  store float 0.000000e+00, ptr %i.du, align 4, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %.sink.split101, %bb.g
  %.3 = phi i32 [ %.1, %bb.g ], [ %i.l, %.sink.split101 ]
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %.3, ptr %i.fe, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !66
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !18     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i32 0, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i32 %i.g, ptr %i.b, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i32 1, ptr %i.c, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %i.h = load i32, ptr %0, align 4, !tbaa !18     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !18
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !18
  %i.k = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not164 = icmp sgt i32 %i.k, %i.j
  br i1 %.not164, label %._crit_edge168, label %.lr.ph167

.lr.ph167:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %6, align 4, !tbaa !18     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph167.split.preheader, label %._crit_edge168

.lr.ph167.split.preheader:                        ; preds = %.lr.ph167
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.lr.ph167.split

.lr.ph167.split:                                  ; preds = %.lr.ph167.split.preheader, %._crit_edge163
  %i.t = phi i32 [ %i.p, %.lr.ph167.split.preheader ], [ %i.am, %._crit_edge163 ] ; 2 uses
  %indvars.iv187 = phi i64 [ %i.r, %.lr.ph167.split.preheader ], [ %indvars.iv.next188, %._crit_edge163 ] ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !29     ; 2 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !39
  %i.w = sext i32 %i.v to i64
  %i.x = mul i64 %indvars.iv187, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !34
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %i.ab = icmp sgt i32 %i.t, 0
  br i1 %i.ab, label %.lr.ph162.preheader, label %._crit_edge163

.lr.ph162.preheader:                              ; preds = %.lr.ph167.split
  %i.ac = ptrtoaddr ptr %i.u to i64
  %i.ad = load ptr, ptr %5, align 8, !tbaa !27
  %i.ae = load ptr, ptr %4, align 8, !tbaa !29
  %i.af = load i32, ptr %i.n, align 4, !tbaa !39
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv187, %i.ag
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !34
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %.pre = load i32, ptr %8, align 4, !tbaa !18
  %i.al = add i64 %i.z, %i.ac                     ; 2 uses
  br label %.lr.ph162

._crit_edge163:                                   ; preds = %._crit_edge, %.lr.ph167.split
  %i.am = phi i32 [ %i.t, %.lr.ph167.split ], [ %i.kl, %._crit_edge ]
  %indvars.iv.next188 = add nsw i64 %indvars.iv187, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next188 to i32
  %exitcond190.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond190.not, label %._crit_edge168, label %.lr.ph167.split, !llvm.loop !67

.lr.ph162:                                        ; preds = %.lr.ph162.preheader, %._crit_edge
  %i.an = phi i32 [ %.pre, %.lr.ph162.preheader ], [ %i.el, %._crit_edge ] ; 4 uses
  %indvars.iv184 = phi i64 [ 0, %.lr.ph162.preheader ], [ %indvars.iv.next185, %._crit_edge ] ; 2 uses
  %.0108159 = phi ptr [ %i.ad, %.lr.ph162.preheader ], [ %i.kj, %._crit_edge ] ; 5 uses
  %.0109158 = phi ptr [ %i.ak, %.lr.ph162.preheader ], [ %i.kk, %._crit_edge ] ; 8 uses
  %.0109158213 = ptrtoaddr ptr %.0109158 to i64   ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv184
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !18
  %i.ar = mul i32 %i.an, %i.aq
  %i.as = sext i32 %i.ar to i64                   ; 4 uses
  %i.at = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.as ; 11 uses
  %i.au = load float, ptr %.0108159, align 4, !tbaa !24 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0108159, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !24 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0108159, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !24 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0108159, i64 12
  %i.ba = load float, ptr %i.az, align 4, !tbaa !24 ; 6 uses
  %i.bb = icmp sgt i32 %i.an, 15
  br i1 %i.bb, label %.lr.ph, label %.preheader147

.lr.ph:                                           ; preds = %.lr.ph162
  %i.bc = insertelement <16 x float> poison, float %i.au, i64 0
  %i.bd = shufflevector <16 x float> %i.bc, <16 x float> poison, <16 x i32> zeroinitializer
  %i.be = insertelement <16 x float> poison, float %i.aw, i64 0
  %i.bf = shufflevector <16 x float> %i.be, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bg = insertelement <16 x float> poison, float %i.ay, i64 0
  %i.bh = shufflevector <16 x float> %i.bg, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bi = insertelement <16 x float> poison, float %i.ba, i64 0
  %i.bj = shufflevector <16 x float> %i.bi, <16 x float> poison, <16 x i32> zeroinitializer
  br label %bb.c

.preheader147.loopexit:                           ; preds = %bb.c
  %i.bk = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader147

.preheader147:                                    ; preds = %.preheader147.loopexit, %.lr.ph162
  %i.bl = phi i32 [ %i.an, %.lr.ph162 ], [ %i.cu, %.preheader147.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.lr.ph162 ], [ %i.bk, %.preheader147.loopexit ] ; 3 uses
  %i.bm = or disjoint i32 %.0.lcssa, 7
  %i.bn = icmp slt i32 %i.bm, %i.bl
  br i1 %i.bn, label %.lr.ph150, label %.preheader146

.lr.ph150:                                        ; preds = %.preheader147
  %i.bo = insertelement <8 x float> poison, float %i.au, i64 0
  %i.bp = shufflevector <8 x float> %i.bo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bq = insertelement <8 x float> poison, float %i.aw, i64 0
  %i.br = shufflevector <8 x float> %i.bq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bs = insertelement <8 x float> poison, float %i.ay, i64 0
  %i.bt = shufflevector <8 x float> %i.bs, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bu = insertelement <8 x float> poison, float %i.ba, i64 0
  %i.bv = shufflevector <8 x float> %i.bu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bw = zext nneg i32 %.0.lcssa to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.bx = phi i32 [ %i.an, %.lr.ph ], [ %i.cu, %bb.c ] ; 2 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv ; 4 uses
  %i.bz = sext i32 %i.bx to i64                   ; 2 uses
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.ca
  %i.cc = load <16 x bfloat>, ptr %i.cb, align 1, !tbaa !53
  %i.cd = fpext fast <16 x bfloat> %i.cc to <16 x float>
  %i.ce = load <16 x bfloat>, ptr %i.by, align 1, !tbaa !53
  %i.cf = fpext fast <16 x bfloat> %i.ce to <16 x float>
  %i.cg = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.bz
  %i.ch = load <16 x bfloat>, ptr %i.cg, align 1, !tbaa !53
  %i.ci = fpext fast <16 x bfloat> %i.ch to <16 x float>
  %i.cj = shl nsw i32 %i.bx, 1
  %9 = sext i32 %i.cj to i64
  %i.ck = getelementptr inbounds [2 x i8], ptr %i.by, i64 %9
  %i.cl = load <16 x bfloat>, ptr %i.ck, align 1, !tbaa !53
  %i.cm = fpext fast <16 x bfloat> %i.cl to <16 x float>
  %i.cn = fmul fast <16 x float> %i.bd, %i.cd
  %i.co = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cf, <16 x float> nofpclass(nan inf) %i.bf, <16 x float> nofpclass(nan inf) %i.cn)
  %i.cp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ci, <16 x float> nofpclass(nan inf) %i.bh, <16 x float> nofpclass(nan inf) %i.co)
  %i.cq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cm, <16 x float> nofpclass(nan inf) %i.bj, <16 x float> nofpclass(nan inf) %i.cp)
  %i.cr = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cq)
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %.0109158, i64 %indvars.iv
  store <16 x bfloat> %i.cr, ptr %i.cs, align 1, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 3 uses
  %i.ct = or disjoint i64 %indvars.iv.next, 15
  %i.cu = load i32, ptr %8, align 4, !tbaa !18    ; 3 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = icmp slt i64 %i.ct, %i.cv
  br i1 %i.cw, label %bb.c, label %.preheader147.loopexit, !llvm.loop !68

.preheader146.loopexit:                           ; preds = %bb.d
  %i.cx = trunc nuw nsw i64 %indvars.iv.next176 to i32
  br label %.preheader146

.preheader146:                                    ; preds = %.preheader146.loopexit, %.preheader147
  %i.cy = phi i32 [ %i.bl, %.preheader147 ], [ %i.eh, %.preheader146.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader147 ], [ %i.cx, %.preheader146.loopexit ] ; 3 uses
  %i.cz = or disjoint i32 %.1.lcssa, 3
  %i.da = icmp slt i32 %i.cz, %i.cy
  br i1 %i.da, label %.lr.ph153, label %.preheader

.lr.ph153:                                        ; preds = %.preheader146
  %i.db = insertelement <4 x float> poison, float %i.au, i64 0
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dd = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.df = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dh = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dj = zext nneg i32 %.1.lcssa to i64
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph150, %bb.d
  %indvars.iv175 = phi i64 [ %i.bw, %.lr.ph150 ], [ %indvars.iv.next176, %bb.d ] ; 3 uses
  %i.dk = phi i32 [ %i.bl, %.lr.ph150 ], [ %i.eh, %bb.d ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv175 ; 4 uses
  %i.dm = sext i32 %i.dk to i64                   ; 2 uses
  %i.dn = sub nsw i64 0, %i.dm
  %i.do = getelementptr inbounds [2 x i8], ptr %i.dl, i64 %i.dn
  %i.dp = load <8 x bfloat>, ptr %i.do, align 1, !tbaa !53
  %i.dq = fpext fast <8 x bfloat> %i.dp to <8 x float>
  %i.dr = load <8 x bfloat>, ptr %i.dl, align 1, !tbaa !53
  %i.ds = fpext fast <8 x bfloat> %i.dr to <8 x float>
  %i.dt = getelementptr inbounds [2 x i8], ptr %i.dl, i64 %i.dm
  %i.du = load <8 x bfloat>, ptr %i.dt, align 1, !tbaa !53
  %i.dv = fpext fast <8 x bfloat> %i.du to <8 x float>
  %i.dw = shl nsw i32 %i.dk, 1
  %10 = sext i32 %i.dw to i64
  %i.dx = getelementptr inbounds [2 x i8], ptr %i.dl, i64 %10
  %i.dy = load <8 x bfloat>, ptr %i.dx, align 1, !tbaa !53
  %i.dz = fpext fast <8 x bfloat> %i.dy to <8 x float>
  %i.ea = fmul fast <8 x float> %i.bp, %i.dq
  %i.eb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ds, <8 x float> nofpclass(nan inf) %i.br, <8 x float> nofpclass(nan inf) %i.ea)
  %i.ec = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dv, <8 x float> nofpclass(nan inf) %i.bt, <8 x float> nofpclass(nan inf) %i.eb)
  %i.ed = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dz, <8 x float> nofpclass(nan inf) %i.bv, <8 x float> nofpclass(nan inf) %i.ec)
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %.0109158, i64 %indvars.iv175
  %i.ef = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ed)
  store <8 x bfloat> %i.ef, ptr %i.ee, align 1, !tbaa !53
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 8 ; 3 uses
  %i.eg = or disjoint i64 %indvars.iv.next176, 7
  %i.eh = load i32, ptr %8, align 4, !tbaa !18    ; 3 uses
  %i.ei = sext i32 %i.eh to i64
  %i.ej = icmp slt i64 %i.eg, %i.ei
  br i1 %i.ej, label %bb.d, label %.preheader146.loopexit, !llvm.loop !69

.preheader.loopexit:                              ; preds = %bb.e
  %i.ek = trunc nuw i64 %indvars.iv.next179 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader146
  %i.el = phi i32 [ %i.cy, %.preheader146 ], [ %i.jb, %.preheader.loopexit ] ; 5 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader146 ], [ %i.ek, %.preheader.loopexit ] ; 2 uses
  %i.em = icmp slt i32 %.2.lcssa, %i.el
  br i1 %i.em, label %iter.check, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre191 = sext i32 %i.el to i64
  br label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.en = shl nuw nsw i32 %i.el, 1
  %i.eo = sext i32 %.2.lcssa to i64               ; 7 uses
  %i.ep = sext i32 %i.el to i64                   ; 11 uses
  %i.eq = zext nneg i32 %i.en to i64              ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.at, i64 %i.ep ; 3 uses
  %invariant.gep208 = getelementptr [2 x i8], ptr %i.at, i64 %i.eq ; 3 uses
  %i.er = sub nsw i64 %i.ep, %i.eo                ; 7 uses
  %min.iters.check = icmp ult i64 %i.er, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.es = sub i64 %.0109158213, %i.al             ; 2 uses
  %i.et = add nsw i64 %i.as, %i.eq
  %i.eu = shl nsw i64 %i.et, 1
  %i.ev = sub i64 %i.eu, %i.es
  %diff.check = icmp ugt i64 %i.ev, -64
  %i.ew = add nsw i64 %i.ep, %i.as
  %i.ex = shl nsw i64 %i.ew, 1
  %i.ey = sub i64 %i.ex, %i.es
  %diff.check214 = icmp ugt i64 %i.ey, -64
  %conflict.rdx = or i1 %diff.check, %diff.check214
  %i.ez = sub i64 %.0109158213, %i.al             ; 2 uses
  %i.fa = shl nsw i64 %i.as, 1                    ; 2 uses
  %i.fb = sub i64 %i.fa, %i.ez
  %diff.check215 = icmp ugt i64 %i.fb, -64
  %conflict.rdx216 = or i1 %conflict.rdx, %diff.check215
  %i.fc = shl nsw i64 %i.ep, 1
  %i.fd = add i64 %i.ez, %i.fc
  %i.fe = sub i64 %i.fa, %i.fd
  %diff.check217 = icmp ugt i64 %i.fe, -64
  %conflict.rdx218 = or i1 %conflict.rdx216, %diff.check217
  br i1 %conflict.rdx218, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check219 = icmp ult i64 %i.er, 32
  br i1 %min.iters.check219, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ff = and i64 %i.er, 24
  %n.vec = and i64 %i.er, -32                     ; 4 uses
  %i.fg = add nsw i64 %n.vec, %i.eo
  %broadcast.splatinsert = insertelement <32 x float> poison, float %i.au, i64 0
  %broadcast.splat = shufflevector <32 x float> %broadcast.splatinsert, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert220 = insertelement <32 x float> poison, float %i.aw, i64 0
  %broadcast.splat221 = shufflevector <32 x float> %broadcast.splatinsert220, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert222 = insertelement <32 x float> poison, float %i.ay, i64 0
  %broadcast.splat223 = shufflevector <32 x float> %broadcast.splatinsert222, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert224 = insertelement <32 x float> poison, float %i.ba, i64 0
  %broadcast.splat225 = shufflevector <32 x float> %broadcast.splatinsert224, <32 x float> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fh = add nuw i64 %index, %i.eo               ; 5 uses
  %i.fi = sub nsw i64 %i.fh, %i.ep
  %i.fj = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.fi
  %wide.load = load <32 x i16>, ptr %i.fj, align 2, !tbaa !56
  %i.fk = zext <32 x i16> %wide.load to <32 x i32>
  %i.fl = shl nuw <32 x i32> %i.fk, splat (i32 16)
  %i.fm = bitcast <32 x i32> %i.fl to <32 x float>
  %i.fn = fmul fast <32 x float> %broadcast.splat, %i.fm
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.fh
  %wide.load226 = load <32 x i16>, ptr %i.fo, align 2, !tbaa !56
  %i.fp = zext <32 x i16> %wide.load226 to <32 x i32>
  %i.fq = shl nuw <32 x i32> %i.fp, splat (i32 16)
  %i.fr = bitcast <32 x i32> %i.fq to <32 x float>
  %i.fs = fmul fast <32 x float> %broadcast.splat221, %i.fr
  %i.ft = fadd fast <32 x float> %i.fs, %i.fn
  %i.fu = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.fh
  %wide.load227 = load <32 x i16>, ptr %i.fu, align 2, !tbaa !56
  %i.fv = zext <32 x i16> %wide.load227 to <32 x i32>
  %i.fw = shl nuw <32 x i32> %i.fv, splat (i32 16)
  %i.fx = bitcast <32 x i32> %i.fw to <32 x float>
  %i.fy = fmul fast <32 x float> %broadcast.splat223, %i.fx
  %i.fz = fadd fast <32 x float> %i.ft, %i.fy
  %i.ga = getelementptr [2 x i8], ptr %invariant.gep208, i64 %i.fh
  %wide.load228 = load <32 x i16>, ptr %i.ga, align 2, !tbaa !56
  %i.gb = zext <32 x i16> %wide.load228 to <32 x i32>
  %i.gc = shl nuw <32 x i32> %i.gb, splat (i32 16)
  %i.gd = bitcast <32 x i32> %i.gc to <32 x float>
  %i.ge = fmul fast <32 x float> %broadcast.splat225, %i.gd
  %i.gf = fadd fast <32 x float> %i.fz, %i.ge
  %i.gg = bitcast <32 x float> %i.gf to <32 x i32>
  %i.gh = lshr <32 x i32> %i.gg, splat (i32 16)
  %i.gi = trunc nuw <32 x i32> %i.gh to <32 x i16>
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %.0109158, i64 %i.fh
  store <32 x i16> %i.gi, ptr %i.gj, align 2, !tbaa !56
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gk = icmp eq i64 %index.next, %n.vec
  br i1 %i.gk, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.er, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ff, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !59

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec229 = and i64 %i.er, -8                   ; 3 uses
  %i.gl = add nsw i64 %n.vec229, %i.eo
  %broadcast.splatinsert230 = insertelement <8 x float> poison, float %i.au, i64 0
  %broadcast.splat231 = shufflevector <8 x float> %broadcast.splatinsert230, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert232 = insertelement <8 x float> poison, float %i.aw, i64 0
  %broadcast.splat233 = shufflevector <8 x float> %broadcast.splatinsert232, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert234 = insertelement <8 x float> poison, float %i.ay, i64 0
  %broadcast.splat235 = shufflevector <8 x float> %broadcast.splatinsert234, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert236 = insertelement <8 x float> poison, float %i.ba, i64 0
  %broadcast.splat237 = shufflevector <8 x float> %broadcast.splatinsert236, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index238 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next243, %vec.epilog.vector.body ] ; 2 uses
  %i.gm = add nuw i64 %index238, %i.eo            ; 5 uses
  %i.gn = sub nsw i64 %i.gm, %i.ep
  %i.go = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.gn
  %wide.load239 = load <8 x i16>, ptr %i.go, align 2, !tbaa !56
  %i.gp = zext <8 x i16> %wide.load239 to <8 x i32>
  %i.gq = shl nuw <8 x i32> %i.gp, splat (i32 16)
  %i.gr = bitcast <8 x i32> %i.gq to <8 x float>
  %i.gs = fmul fast <8 x float> %broadcast.splat231, %i.gr
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.gm
  %wide.load240 = load <8 x i16>, ptr %i.gt, align 2, !tbaa !56
  %i.gu = zext <8 x i16> %wide.load240 to <8 x i32>
  %i.gv = shl nuw <8 x i32> %i.gu, splat (i32 16)
  %i.gw = bitcast <8 x i32> %i.gv to <8 x float>
  %i.gx = fmul fast <8 x float> %broadcast.splat233, %i.gw
  %i.gy = fadd fast <8 x float> %i.gx, %i.gs
  %i.gz = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.gm
  %wide.load241 = load <8 x i16>, ptr %i.gz, align 2, !tbaa !56
  %i.ha = zext <8 x i16> %wide.load241 to <8 x i32>
  %i.hb = shl nuw <8 x i32> %i.ha, splat (i32 16)
  %i.hc = bitcast <8 x i32> %i.hb to <8 x float>
  %i.hd = fmul fast <8 x float> %broadcast.splat235, %i.hc
  %i.he = fadd fast <8 x float> %i.gy, %i.hd
  %i.hf = getelementptr [2 x i8], ptr %invariant.gep208, i64 %i.gm
  %wide.load242 = load <8 x i16>, ptr %i.hf, align 2, !tbaa !56
  %i.hg = zext <8 x i16> %wide.load242 to <8 x i32>
  %i.hh = shl nuw <8 x i32> %i.hg, splat (i32 16)
  %i.hi = bitcast <8 x i32> %i.hh to <8 x float>
  %i.hj = fmul fast <8 x float> %broadcast.splat237, %i.hi
  %i.hk = fadd fast <8 x float> %i.he, %i.hj
  %i.hl = bitcast <8 x float> %i.hk to <8 x i32>
  %i.hm = lshr <8 x i32> %i.hl, splat (i32 16)
  %i.hn = trunc nuw <8 x i32> %i.hm to <8 x i16>
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %.0109158, i64 %i.gm
  store <8 x i16> %i.hn, ptr %i.ho, align 2, !tbaa !56
  %index.next243 = add nuw i64 %index238, 8       ; 2 uses
  %i.hp = icmp eq i64 %index.next243, %n.vec229
  br i1 %i.hp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !71

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n244 = icmp eq i64 %i.er, %n.vec229
  br i1 %cmp.n244, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv181.ph = phi i64 [ %i.eo, %iter.check ], [ %i.eo, %vector.memcheck ], [ %i.fg, %vec.epilog.iter.check ], [ %i.gl, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

bb.e:                                             ; preds = %.lr.ph153, %bb.e
  %indvars.iv178 = phi i64 [ %i.dj, %.lr.ph153 ], [ %indvars.iv.next179, %bb.e ] ; 3 uses
  %i.hq = phi i32 [ %i.cy, %.lr.ph153 ], [ %i.jb, %bb.e ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv178 ; 4 uses
  %i.hs = sext i32 %i.hq to i64                   ; 2 uses
  %i.ht = sub nsw i64 0, %i.hs
  %i.hu = getelementptr inbounds [2 x i8], ptr %i.hr, i64 %i.ht
  %i.hv = load i64, ptr %i.hu, align 1, !tbaa !53
  %i.hw = insertelement <2 x i64> poison, i64 %i.hv, i64 0
  %i.hx = bitcast <2 x i64> %i.hw to <8 x i16>
  %i.hy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hz = bitcast <8 x i16> %i.hy to <4 x float>
  %i.ia = load i64, ptr %i.hr, align 1, !tbaa !53
  %i.ib = insertelement <2 x i64> poison, i64 %i.ia, i64 0
  %i.ic = bitcast <2 x i64> %i.ib to <8 x i16>
  %i.id = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ic, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ie = bitcast <8 x i16> %i.id to <4 x float>
  %i.if = getelementptr inbounds [2 x i8], ptr %i.hr, i64 %i.hs
  %i.ig = load i64, ptr %i.if, align 1, !tbaa !53
  %i.ih = insertelement <2 x i64> poison, i64 %i.ig, i64 0
  %i.ii = bitcast <2 x i64> %i.ih to <8 x i16>
  %i.ij = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ii, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ik = bitcast <8 x i16> %i.ij to <4 x float>
  %i.il = shl nsw i32 %i.hq, 1
  %11 = sext i32 %i.il to i64
  %i.im = getelementptr inbounds [2 x i8], ptr %i.hr, i64 %11
  %i.in = load i64, ptr %i.im, align 1, !tbaa !53
  %i.io = insertelement <2 x i64> poison, i64 %i.in, i64 0
  %i.ip = bitcast <2 x i64> %i.io to <8 x i16>
  %i.iq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ip, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ir = bitcast <8 x i16> %i.iq to <4 x float>
  %i.is = fmul fast <4 x float> %i.dc, %i.hz
  %i.it = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ie, <4 x float> nofpclass(nan inf) %i.de, <4 x float> nofpclass(nan inf) %i.is)
  %i.iu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ik, <4 x float> nofpclass(nan inf) %i.dg, <4 x float> nofpclass(nan inf) %i.it)
  %i.iv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ir, <4 x float> nofpclass(nan inf) %i.di, <4 x float> nofpclass(nan inf) %i.iu)
  %i.iw = shufflevector <4 x float> %i.iv, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ix = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.iw)
  %i.iy = bitcast <8 x bfloat> %i.ix to <2 x i64>
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %.0109158, i64 %indvars.iv178
  %i.ja = extractelement <2 x i64> %i.iy, i64 0
  store i64 %i.ja, ptr %i.iz, align 1, !tbaa !53
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 4 ; 3 uses
  %i.jb = load i32, ptr %8, align 4, !tbaa !18    ; 3 uses
  %i.jc = trunc i64 %indvars.iv.next179 to i32
  %i.jd = or i32 %i.jc, 3
  %i.je = icmp slt i32 %i.jd, %i.jb
  br i1 %i.je, label %bb.e, label %.preheader.loopexit, !llvm.loop !72

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %vec.epilog.scalar.ph ], [ %indvars.iv181.ph, %vec.epilog.scalar.ph.preheader ] ; 6 uses
  %i.jf = sub nsw i64 %indvars.iv181, %i.ep
  %i.jg = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.jf
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !56
  %i.ji = zext i16 %i.jh to i32
  %i.jj = shl nuw i32 %i.ji, 16
  %i.jk = bitcast i32 %i.jj to float
  %i.jl = fmul fast float %i.au, %i.jk
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv181
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !56
  %i.jo = zext i16 %i.jn to i32
  %i.jp = shl nuw i32 %i.jo, 16
  %i.jq = bitcast i32 %i.jp to float
  %i.jr = fmul fast float %i.aw, %i.jq
  %i.js = fadd fast float %i.jr, %i.jl
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv181
  %i.jt = load i16, ptr %gep, align 2, !tbaa !56
  %i.ju = zext i16 %i.jt to i32
  %i.jv = shl nuw i32 %i.ju, 16
  %i.jw = bitcast i32 %i.jv to float
  %i.jx = fmul fast float %i.ay, %i.jw
  %i.jy = fadd fast float %i.js, %i.jx
  %gep209 = getelementptr [2 x i8], ptr %invariant.gep208, i64 %indvars.iv181
  %i.jz = load i16, ptr %gep209, align 2, !tbaa !56
  %i.ka = zext i16 %i.jz to i32
  %i.kb = shl nuw i32 %i.ka, 16
  %i.kc = bitcast i32 %i.kb to float
  %i.kd = fmul fast float %i.ba, %i.kc
  %i.ke = fadd fast float %i.jy, %i.kd
  %i.kf = bitcast float %i.ke to i32
  %i.kg = lshr i32 %i.kf, 16
  %i.kh = trunc nuw i32 %i.kg to i16
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %.0109158, i64 %indvars.iv181
  store i16 %i.kh, ptr %i.ki, align 2, !tbaa !56
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next182, %i.ep
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !73

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre191, %.preheader.._crit_edge_crit_edge ], [ %i.ep, %middle.block ], [ %i.ep, %vec.epilog.middle.block ], [ %i.ep, %vec.epilog.scalar.ph ]
  %i.kj = getelementptr inbounds nuw i8, ptr %.0108159, i64 16
  %i.kk = getelementptr inbounds [2 x i8], ptr %.0109158, i64 %.pre-phi
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %i.kl = load i32, ptr %6, align 4, !tbaa !18    ; 2 uses
  %i.km = sext i32 %i.kl to i64
  %i.kn = icmp slt i64 %indvars.iv.next185, %i.km
  br i1 %i.kn, label %.lr.ph162, label %._crit_edge163, !llvm.loop !74

._crit_edge168:                                   ; preds = %._crit_edge163, %.lr.ph167, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge168, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !18     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i32 0, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i32 %i.g, ptr %i.b, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i32 1, ptr %i.c, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %i.h = load i32, ptr %0, align 4, !tbaa !18     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !18
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !18
  %i.k = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not87 = icmp sgt i32 %i.k, %i.j
  br i1 %.not87, label %._crit_edge89, label %.noexc40.lr.ph

.noexc40.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = load i32, ptr %5, align 4, !tbaa !18     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.noexc40.preheader, label %._crit_edge89

.noexc40.preheader:                               ; preds = %.noexc40.lr.ph
  %i.t = sext i32 %i.k to i64
  br label %.noexc40

.noexc40:                                         ; preds = %.noexc40.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.u = phi i32 [ %i.j, %.noexc40.preheader ], [ %i.as, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.v = phi i32 [ %i.r, %.noexc40.preheader ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.w = phi i32 [ %i.r, %.noexc40.preheader ], [ %i.au, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv93 = phi i64 [ %i.t, %.noexc40.preheader ], [ %indvars.iv.next94, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !29, !noalias !75
  %i.y = load i64, ptr %i.m, align 8, !tbaa !33, !noalias !75
  %i.z = mul i64 %i.y, %indvars.iv93
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !34, !noalias !75 ; 2 uses
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  %i.ad = load ptr, ptr %4, align 8, !tbaa !29, !noalias !78
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !33, !noalias !78
  %i.af = mul i64 %i.ae, %indvars.iv93
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !34, !noalias !78 ; 2 uses
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah
  %i.aj = icmp sgt i32 %i.w, 0
  br i1 %i.aj, label %.lr.ph86, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph86:                                         ; preds = %.noexc40
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !39, !noalias !78
  %i.al = sext i32 %i.ak to i64
  %i.am = load i32, ptr %i.l, align 4, !tbaa !39, !noalias !75
  %i.an = sext i32 %i.am to i64
  %i.ao = mul i64 %i.aa, %i.an
  %i.ap = mul i64 %i.ag, %i.al
  %i.aq = load i32, ptr %8, align 4, !tbaa !18    ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph86.split, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit.loopexit:                   ; preds = %._crit_edge
  %.pre97 = load i32, ptr %i.b, align 4, !tbaa !18
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph86, %_ZN4ncnn3MatD2Ev.exit.loopexit, %.noexc40
  %i.as = phi i32 [ %i.u, %.noexc40 ], [ %.pre97, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.u, %.lr.ph86 ] ; 2 uses
  %i.at = phi i32 [ %i.v, %.noexc40 ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.v, %.lr.ph86 ]
  %i.au = phi i32 [ %i.w, %.noexc40 ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.w, %.lr.ph86 ]
  %indvars.iv.next94 = add nsw i64 %indvars.iv93, 1
  %i.av = sext i32 %i.as to i64
  %.not.not = icmp slt i64 %indvars.iv93, %i.av
  br i1 %.not.not, label %.noexc40, label %._crit_edge89, !llvm.loop !81

.lr.ph86.split:                                   ; preds = %.lr.ph86, %._crit_edge
  %i.aw = phi i32 [ %i.bl, %._crit_edge ], [ %i.v, %.lr.ph86 ]
  %i.ax = phi i32 [ %i.bm, %._crit_edge ], [ %i.aq, %.lr.ph86 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph86 ] ; 3 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  %i.az = uitofp nneg i32 %i.ay to float
  %i.ba = load float, ptr %6, align 4, !tbaa !24
  %i.bb = fmul fast float %i.ba, %i.az
  %i.bc = fptosi float %i.bb to i32
  %i.bd = load i32, ptr %7, align 4, !tbaa !18
  %i.be = add nsw i32 %i.bd, -1
  %.sroa.speculated53 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bc)
  %i.bf = sext i32 %.sroa.speculated53 to i64
  %i.bg = mul i64 %i.ao, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bg
  %i.bi = icmp sgt i32 %i.ax, 0
  br i1 %i.bi, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph86.split
  %i.bj = mul i64 %i.ap, %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bj
  %.pre = load i32, ptr %11, align 4, !tbaa !18
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre96 = load i32, ptr %5, align 4, !tbaa !18
  br label %._crit_edge

end_hunk_0
