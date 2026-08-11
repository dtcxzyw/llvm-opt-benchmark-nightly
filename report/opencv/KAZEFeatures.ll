inline.NumInlined: 921
inline.NumDeleted: 296
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2cv11xfeatures2d12KAZEFeatures24Compute_Main_OrientationERNS_8KeyPointERKSt6vectorINS_10TEvolutionESaIS5_EERKNS0_11KAZEOptionsE:bb.a
bb.q:                                             ; preds = %bb.h, %bb.p
  %.2107 = phi i32 [ %i.ci, %bb.p ], [ %.1106164, %bb.h ] ; 2 uses
  %i.cj = add nsw i32 %.091165, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.cj, 7
  br i1 %exitcond.not, label %bb.g, label %bb.h, !llvm.loop !208

bb.r:                                             ; preds = %.preheader, %bb.ac
  %.093185 = phi float [ 0.000000e+00, %.preheader ], [ %i.ep, %bb.ac ] ; 9 uses
  %.094184 = phi float [ 0.000000e+00, %.preheader ], [ %.1, %bb.ac ] ; 2 uses
  %i.ck = fadd float %.093185, f0x3F860A92        ; 2 uses
  %i.cl = fcmp ogt float %i.ck, f0x40C90FDB
  %i.cm = fadd float %.093185, f0xC0A78D36
  %i.cn = select i1 %i.cl, float %i.cm, float %i.ck ; 6 uses
  %i.co = fcmp olt float %.093185, %i.cn          ; 2 uses
  %i.cp = fcmp olt float %i.cn, %.093185
  %.fr = freeze i1 %i.cp
  br i1 %.fr, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.r, %bb.v
  %.0170.us = phi i64 [ %i.dg, %bb.v ], [ 0, %bb.r ] ; 4 uses
  %i.cq = phi <2 x float> [ %i.df, %bb.v ], [ zeroinitializer, %bb.r ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0170.us
  %.pre = load float, ptr %i.cr, align 4, !tbaa !10 ; 6 uses
  br i1 %i.co, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.split.us
  %i.cs = fcmp olt float %.093185, %.pre
  %i.ct = fcmp olt float %.pre, %i.cn
  %or.cond120.us = and i1 %i.cs, %i.ct
  br i1 %or.cond120.us, label %.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s, %.split.us
  %i.cu = fcmp ogt float %.pre, 0.000000e+00
  %i.cv = fcmp olt float %.pre, %i.cn
  %or.cond121.us = and i1 %i.cu, %i.cv
  br i1 %or.cond121.us, label %.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cw = fcmp ogt float %.pre, %.093185
  %i.cx = fcmp olt float %.pre, f0x40C90FDB
  %or.cond122.us = and i1 %i.cw, %i.cx
  br i1 %or.cond122.us, label %.sink.split, label %bb.v

.sink.split:                                      ; preds = %bb.s, %bb.t, %bb.u
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0170.us
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !10
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0170.us
  %i.db = load float, ptr %i.da, align 4, !tbaa !10
  %i.dc = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dd = insertelement <2 x float> %i.dc, float %i.db, i64 1
  %i.de = fadd <2 x float> %i.cq, %i.dd
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.u
  %i.df = phi <2 x float> [ %i.cq, %bb.u ], [ %i.de, %.sink.split ] ; 2 uses
  %i.dg = add nuw nsw i64 %.0170.us, 1            ; 2 uses
  %exitcond191.not = icmp eq i64 %i.dg, 109
  br i1 %exitcond191.not, label %.split172.us, label %.split.us, !llvm.loop !209

.split:                                           ; preds = %bb.r
  br i1 %i.co, label %.split.split.us, label %.split172.us

.split.split.us:                                  ; preds = %.split, %bb.z
  %.0170.us174 = phi i64 [ %i.eh, %bb.z ], [ 0, %.split ] ; 6 uses
  %i.dh = phi <2 x float> [ %i.eg, %bb.z ], [ zeroinitializer, %.split ] ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0170.us174
  %i.dj = load float, ptr %i.di, align 4, !tbaa !10 ; 2 uses
  %i.dk = fcmp olt float %.093185, %i.dj
  %i.dl = fcmp olt float %i.dj, %i.cn
  %or.cond120.us177 = and i1 %i.dk, %i.dl
  br i1 %or.cond120.us177, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.split.split.us
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0170.us174
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !10
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0170.us174
  %i.dp = load float, ptr %i.do, align 4, !tbaa !10
  %i.dq = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.dr = insertelement <2 x float> %i.dq, float %i.dp, i64 1
  %i.ds = fadd <2 x float> %i.dh, %i.dr
  br label %bb.x

bb.x:                                             ; preds = %.split.split.us, %bb.w
  %i.dt = phi <2 x float> [ %i.ds, %bb.w ], [ %i.dh, %.split.split.us ] ; 3 uses
  %i.du = or disjoint i64 %.0170.us174, 1         ; 3 uses
  %exitcond190.not = icmp eq i64 %.0170.us174, 108
  br i1 %exitcond190.not, label %.split172.us, label %.split.split.us.1

.split.split.us.1:                                ; preds = %bb.x
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !10 ; 2 uses
  %i.dx = fcmp olt float %.093185, %i.dw
  %i.dy = fcmp olt float %i.dw, %i.cn
  %or.cond120.us177.1 = and i1 %i.dx, %i.dy
  br i1 %or.cond120.us177.1, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.split.split.us.1
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.du
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !10
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.du
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !10
  %i.ed = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ee = insertelement <2 x float> %i.ed, float %i.ec, i64 1
  %i.ef = fadd <2 x float> %i.dt, %i.ee
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.split.split.us.1
  %i.eg = phi <2 x float> [ %i.ef, %bb.y ], [ %i.dt, %.split.split.us.1 ]
  %i.eh = add nuw nsw i64 %.0170.us174, 2
  br label %.split.split.us

.split172.us:                                     ; preds = %bb.x, %bb.v, %.split
  %i.ei = phi <2 x float> [ %i.df, %bb.v ], [ zeroinitializer, %.split ], [ %i.dt, %bb.x ] ; 2 uses
  %i.ej = extractelement <2 x float> %i.ei, i64 1 ; 3 uses
  %i.ek = fmul float %i.ej, %i.ej
  %i.el = extractelement <2 x float> %i.ei, i64 0 ; 3 uses
  %i.em = tail call float @llvm.fmuladd.f32(float %i.el, float %i.el, float %i.ek) ; 2 uses
  %i.en = fcmp ogt float %i.em, %.094184
  br i1 %i.en, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %.split172.us
  %i.eo = invoke noundef float @_ZN2cv9fastAtan2Eff(float noundef %i.ej, float noundef %i.el)
          to label %bb.ab unwind label %bb.f

bb.ab:                                            ; preds = %bb.aa
  store float %i.eo, ptr %i.z, align 4, !tbaa !189
  br label %bb.ac

bb.ac:                                            ; preds = %.split172.us, %bb.ab
  %.1 = phi float [ %i.em, %bb.ab ], [ %.094184, %.split172.us ]
  %i.ep = fadd float %.093185, 1.500000e-01       ; 2 uses
  %i.eq = fpext float %i.ep to double
  %i.er = fcmp olt double %i.eq, f0x401921FB54442D18
  br i1 %i.er, label %bb.r, label %_ZNSt6vectorIfSaIfEED2Ev.exit128, !llvm.loop !210

_ZNSt6vectorIfSaIfEED2Ev.exit128:                 ; preds = %bb.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 436) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 436) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 436) #21
  ret void

_ZNSt6vectorIfSaIfEED2Ev.exit130:                 ; preds = %bb.m, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.m ], [ %i.ac, %bb.f ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 436) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit132

_ZNSt6vectorIfSaIfEED2Ev.exit132:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit130, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit130 ], [ %i.ab, %bb.e ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 436) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit134

_ZNSt6vectorIfSaIfEED2Ev.exit134:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit132, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit132 ], [ %i.aa, %bb.d ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 436) #21
  resume { ptr, i32 } %.pn.pn.pn
}

declare noundef float @_ZN2cv9fastAtan2Eff(float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden void @_ZNK2cv11xfeatures2d23KAZE_Descriptor_Invoker30Get_KAZE_Upright_Descriptor_64ERKNS_8KeyPointEPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !187 ; 2 uses
  %i.e = load float, ptr %1, align 4, !tbaa !186  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !168
  %i.h = fmul float %i.g, 5.000000e-01
  %i.i = insertelement <4 x float> poison, float %i.h, i64 0
  %i.j = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.i) ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 4, !tbaa !161
  %i.m = sitofp i32 %i.j to float
  %i.n = fmul nnan float %i.m, 2.500000e+00       ; 2 uses
  %i.o = fmul nnan float %i.n, 2.000000e+00
  %i.p = fmul float %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load i32, ptr %i.q, align 8, !tbaa !211
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !212
  %i.u = add nsw i32 %i.r, -1
  %i.v = add nsw i32 %i.t, -1                     ; 2 uses
  %i.w = sext i32 %i.l to i64
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw [1688 x i8], ptr %i.x, i64 %i.w ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !133 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !124 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 232
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !133 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 336
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !124 ; 2 uses
  %i.ah = insertelement <2 x i32> poison, i32 %i.u, i64 0
  %i.ai = shufflevector <2 x i32> %i.ah, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.f
  %indvars.iv220 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next221, %bb.f ] ; 2 uses
  %indvars.iv217 = phi i32 [ -3, %bb.a ], [ %indvars.iv.next218, %bb.f ] ; 2 uses
  %.0139210 = phi float [ -5.000000e-01, %bb.a ], [ %i.ak, %bb.f ]
  %.0144208 = phi i32 [ -8, %bb.a ], [ %i.ff, %bb.f ] ; 4 uses
  %.0146207 = phi float [ 0.000000e+00, %bb.a ], [ %i.ck, %bb.f ]
  %i.aj = add nsw i32 %.0144208, -4
  %i.ak = fadd float %.0139210, 1.000000e+00      ; 2 uses
  %i.al = add nsw i32 %.0144208, 1
  %i.am = mul nsw i32 %i.al, %i.j
  %i.an = sitofp i32 %i.am to float
  %i.ao = fadd float %i.d, %i.an
  %i.ap = fadd float %i.ak, -2.000000e+00         ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d
  %indvars.iv220.a = phi i64 [ %indvars.iv220, %bb.b ], [ %indvars.iv.next221.a, %bb.d ] ; 2 uses
  %indvars.iv = phi i32 [ -3, %bb.b ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.0138206 = phi float [ -5.000000e-01, %bb.b ], [ %i.bs, %bb.d ]
  %.0143204 = phi i32 [ -8, %bb.b ], [ %i.cl, %bb.d ] ; 4 uses
  %.1147203 = phi float [ %.0146207, %bb.b ], [ %i.ck, %bb.d ]
  %i.aq = add nsw i32 %.0143204, -4
  %i.ar = add nsw i32 %.0143204, 1
  %i.as = mul nsw i32 %i.ar, %i.j
  %i.at = sitofp i32 %i.as to float
  %i.au = fadd float %i.e, %i.at
  br label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.e
  %.0137202 = phi i32 [ %i.aj, %bb.c ], [ %i.cn, %bb.e ] ; 2 uses
  %i.av = phi <4 x float> [ zeroinitializer, %bb.c ], [ %i.fd, %bb.e ]
  %i.aw = mul nsw i32 %.0137202, %i.j
  %i.ax = sitofp i32 %i.aw to float
  %i.ay = fadd float %i.d, %i.ax                  ; 4 uses
  %i.az = fsub float %i.ao, %i.ay                 ; 2 uses
  %i.ba = fmul float %i.az, %i.az
  %i.bb = fadd float %i.ay, -5.000000e-01
  %i.bc = fptosi float %i.bb to i32
  %.0188 = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 0)
  %.1189 = tail call i32 @llvm.smin.i32(i32 %.0188, i32 %i.v) ; 2 uses
  %i.bd = fadd float %i.ay, 5.000000e-01
  %i.be = fptosi float %i.bd to i32
  %.0184 = tail call i32 @llvm.smax.i32(i32 %i.be, i32 0)
  %.1185 = tail call i32 @llvm.smin.i32(i32 %.0184, i32 %i.v)
  %i.bf = sitofp i32 %.1189 to float
  %i.bg = fsub float %i.ay, %i.bf                 ; 3 uses
  %i.bh = sext i32 %.1189 to i64                  ; 2 uses
  %i.bi = mul i64 %i.ac, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.bi ; 2 uses
  %i.bk = sext i32 %.1185 to i64                  ; 2 uses
  %i.bl = mul i64 %i.ac, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.bl ; 2 uses
  %i.bn = fsub float 1.000000e+00, %i.bg          ; 2 uses
  %i.bo = mul i64 %i.ag, %i.bh
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bo ; 2 uses
  %i.bq = mul i64 %i.ag, %i.bk
  %i.br = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bq ; 2 uses
  br label %_Z21checkDescriptorLimitsRiS_ii.exit

bb.d:                                             ; preds = %bb.e
  %i.bs = fadd float %.0138206, 1.000000e+00      ; 2 uses
  %i.bt = fadd float %i.bs, -2.000000e+00         ; 2 uses
  %i.bu = fmul float %i.bt, %i.bt
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.bu)
  %i.bw = fdiv float %i.bv, -4.500000e+00
  %i.bx = tail call noundef float @expf(float noundef %i.bw) #22 ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv220.a
  %indvars.iv.next221.a = add nuw nsw i64 %indvars.iv220.a, 4
  %i.bz = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cb = fmul <4 x float> %i.fd, %i.ca
  store <4 x float> %i.cb, ptr %i.by, align 4, !tbaa !10
  %foldExtExtBinop = fmul <4 x float> %i.fd, %i.fd
  %i.cc = extractelement <4 x float> %foldExtExtBinop, i64 1
  %i.cd = extractelement <4 x float> %i.fd, i64 0 ; 2 uses
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.cd, float %i.cc)
  %i.cf = extractelement <4 x float> %i.fd, i64 2 ; 2 uses
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.cf, float %i.ce)
  %i.ch = extractelement <4 x float> %i.fd, i64 3 ; 2 uses
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.ch, float %i.cg)
  %i.cj = fmul float %i.ci, %i.bx
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.bx, float %.1147203) ; 3 uses
  %i.cl = add nsw i32 %.0143204, 5
  %i.cm = icmp slt i32 %.0143204, 7
  %indvars.iv.next = add nsw i32 %indvars.iv, 5
  br i1 %i.cm, label %bb.c, label %bb.f, !llvm.loop !213

bb.e:                                             ; preds = %_Z21checkDescriptorLimitsRiS_ii.exit
  %i.cn = add nsw i32 %.0137202, 1                ; 2 uses
  %exitcond219.not = icmp eq i32 %i.cn, %indvars.iv217
  br i1 %exitcond219.not, label %bb.d, label %.preheader, !llvm.loop !214

_Z21checkDescriptorLimitsRiS_ii.exit:             ; preds = %.preheader, %_Z21checkDescriptorLimitsRiS_ii.exit
  %.0197 = phi i32 [ %i.aq, %.preheader ], [ %i.fe, %_Z21checkDescriptorLimitsRiS_ii.exit ] ; 2 uses
  %i.co = phi <4 x float> [ %i.av, %.preheader ], [ %i.fd, %_Z21checkDescriptorLimitsRiS_ii.exit ]
  %i.cp = mul nsw i32 %.0197, %i.j
  %i.cq = sitofp i32 %i.cp to float
  %i.cr = fadd float %i.e, %i.cq                  ; 3 uses
  %i.cs = fsub float %i.au, %i.cr                 ; 2 uses
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.cs, float %i.ba)
  %i.cu = fneg float %i.ct
  %i.cv = fdiv float %i.cu, %i.p
  %i.cw = tail call noundef float @expf(float noundef %i.cv) #22
  %i.cx = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = fadd <2 x float> %i.cy, <float -5.000000e-01, float 5.000000e-01>
  %i.da = fptosi <2 x float> %i.cz to <2 x i32>
  %i.db = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.da, <2 x i32> zeroinitializer)
  %i.dc = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.db, <2 x i32> %i.ai) ; 2 uses
  %i.dd = extractelement <2 x i32> %i.dc, i64 0   ; 2 uses
  %i.de = sitofp i32 %i.dd to float
  %i.df = fsub float %i.cr, %i.de                 ; 3 uses
  %i.dg = sext i32 %i.dd to i64                   ; 4 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.dg
  %i.di = load float, ptr %i.dh, align 4, !tbaa !10
  %i.dj = extractelement <2 x i32> %i.dc, i64 1
  %i.dk = sext i32 %i.dj to i64                   ; 4 uses
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !10
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.dg
  %i.do = load float, ptr %i.dn, align 4, !tbaa !10
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.dk
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !10
  %i.dr = fsub float 1.000000e+00, %i.df          ; 2 uses
  %i.ds = fmul float %i.dr, %i.bn
  %i.dt = fmul float %i.df, %i.bn
  %i.du = fmul float %i.dr, %i.bg
  %i.dv = fmul float %i.df, %i.bg
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.dg
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !10
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.dk
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !10
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.dg
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !10
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.dk
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !10
  %i.ee = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.ef = insertelement <2 x float> %i.ee, float %i.dz, i64 1
  %i.eg = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ei = fmul <2 x float> %i.ef, %i.eh
  %i.ej = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = insertelement <2 x float> poison, float %i.di, i64 0
  %i.em = insertelement <2 x float> %i.el, float %i.dx, i64 1
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.em, <2 x float> %i.ei)
  %i.eo = insertelement <2 x float> poison, float %i.du, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = insertelement <2 x float> poison, float %i.do, i64 0
  %i.er = insertelement <2 x float> %i.eq, float %i.eb, i64 1
  %i.es = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.er, <2 x float> %i.en)
  %i.et = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.ew = insertelement <2 x float> %i.ev, float %i.ed, i64 1
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.ew, <2 x float> %i.es)
  %i.ey = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = fmul <2 x float> %i.ez, %i.ex           ; 2 uses
  %i.fb = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.fa)
  %i.fc = shufflevector <2 x float> %i.fa, <2 x float> %i.fb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fd = fadd <4 x float> %i.co, %i.fc           ; 8 uses
  %i.fe = add nsw i32 %.0197, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.fe, %indvars.iv
  br i1 %exitcond.not, label %bb.e, label %_Z21checkDescriptorLimitsRiS_ii.exit, !llvm.loop !215

bb.f:                                             ; preds = %bb.d
  %i.ff = add nsw i32 %.0144208, 5
  %i.fg = icmp slt i32 %.0144208, 7
  %indvars.iv.next218 = add nsw i32 %indvars.iv217, 5
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 16
  br i1 %i.fg, label %bb.b, label %vector.ph, !llvm.loop !216

vector.ph:                                        ; preds = %bb.f
  %i.fh = tail call noundef float @sqrtf(float noundef %i.ck) #22
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fh, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 16 uses
  %wide.load = load <4 x float>, ptr %2, align 4, !tbaa !10
  %i.fi = fdiv <4 x float> %wide.load, %broadcast.splat
  store <4 x float> %i.fi, ptr %2, align 4, !tbaa !10
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load.1 = load <4 x float>, ptr %i.fj, align 4, !tbaa !10
  %i.fk = fdiv <4 x float> %wide.load.1, %broadcast.splat
  store <4 x float> %i.fk, ptr %i.fj, align 4, !tbaa !10
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %wide.load.2 = load <4 x float>, ptr %i.fl, align 4, !tbaa !10
  %i.fm = fdiv <4 x float> %wide.load.2, %broadcast.splat
  store <4 x float> %i.fm, ptr %i.fl, align 4, !tbaa !10
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load.3 = load <4 x float>, ptr %i.fn, align 4, !tbaa !10
  %i.fo = fdiv <4 x float> %wide.load.3, %broadcast.splat
  store <4 x float> %i.fo, ptr %i.fn, align 4, !tbaa !10
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %wide.load.4 = load <4 x float>, ptr %i.fp, align 4, !tbaa !10
  %i.fq = fdiv <4 x float> %wide.load.4, %broadcast.splat
  store <4 x float> %i.fq, ptr %i.fp, align 4, !tbaa !10
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %wide.load.5 = load <4 x float>, ptr %i.fr, align 4, !tbaa !10
  %i.fs = fdiv <4 x float> %wide.load.5, %broadcast.splat
  store <4 x float> %i.fs, ptr %i.fr, align 4, !tbaa !10
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %wide.load.6 = load <4 x float>, ptr %i.ft, align 4, !tbaa !10
  %i.fu = fdiv <4 x float> %wide.load.6, %broadcast.splat
  store <4 x float> %i.fu, ptr %i.ft, align 4, !tbaa !10
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %wide.load.7 = load <4 x float>, ptr %i.fv, align 4, !tbaa !10
  %i.fw = fdiv <4 x float> %wide.load.7, %broadcast.splat
  store <4 x float> %i.fw, ptr %i.fv, align 4, !tbaa !10
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %wide.load.8 = load <4 x float>, ptr %i.fx, align 4, !tbaa !10
  %i.fy = fdiv <4 x float> %wide.load.8, %broadcast.splat
  store <4 x float> %i.fy, ptr %i.fx, align 4, !tbaa !10
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %wide.load.9 = load <4 x float>, ptr %i.fz, align 4, !tbaa !10
  %i.ga = fdiv <4 x float> %wide.load.9, %broadcast.splat
  store <4 x float> %i.ga, ptr %i.fz, align 4, !tbaa !10
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  %wide.load.10 = load <4 x float>, ptr %i.gb, align 4, !tbaa !10
  %i.gc = fdiv <4 x float> %wide.load.10, %broadcast.splat
  store <4 x float> %i.gc, ptr %i.gb, align 4, !tbaa !10
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %wide.load.11 = load <4 x float>, ptr %i.gd, align 4, !tbaa !10
  %i.ge = fdiv <4 x float> %wide.load.11, %broadcast.splat
  store <4 x float> %i.ge, ptr %i.gd, align 4, !tbaa !10
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %wide.load.12 = load <4 x float>, ptr %i.gf, align 4, !tbaa !10
  %i.gg = fdiv <4 x float> %wide.load.12, %broadcast.splat
  store <4 x float> %i.gg, ptr %i.gf, align 4, !tbaa !10
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %wide.load.13 = load <4 x float>, ptr %i.gh, align 4, !tbaa !10
  %i.gi = fdiv <4 x float> %wide.load.13, %broadcast.splat
  store <4 x float> %i.gi, ptr %i.gh, align 4, !tbaa !10
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 2 uses
  %wide.load.14 = load <4 x float>, ptr %i.gj, align 4, !tbaa !10
  %i.gk = fdiv <4 x float> %wide.load.14, %broadcast.splat
  store <4 x float> %i.gk, ptr %i.gj, align 4, !tbaa !10
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  %wide.load.15 = load <4 x float>, ptr %i.gl, align 4, !tbaa !10
  %i.gm = fdiv <4 x float> %wide.load.15, %broadcast.splat
  store <4 x float> %i.gm, ptr %i.gl, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden void @_ZNK2cv11xfeatures2d23KAZE_Descriptor_Invoker22Get_KAZE_Descriptor_64ERKNS_8KeyPointEPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !168
  %i.e = fmul float %i.d, 5.000000e-01
  %i.f = insertelement <4 x float> poison, float %i.e, i64 0
  %i.g = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.f) ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !189
  %i.j = fmul float %i.i, f0x3C8EFA35             ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 4, !tbaa !161
  %i.m = tail call noundef float @cosf(float noundef %i.j) #22
  %i.n = tail call noundef float @sinf(float noundef %i.j) #22
  %i.o = sitofp i32 %i.g to float
  %i.p = fmul nnan float %i.o, 2.500000e+00       ; 2 uses
  %i.q = fmul nnan float %i.p, 2.000000e+00
  %i.r = fmul float %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load <2 x float>, ptr %1, align 4, !tbaa !10 ; 2 uses
  %i.u = load <2 x i32>, ptr %i.s, align 8, !tbaa !9
  %i.v = add nsw <2 x i32> %i.u, splat (i32 -1)   ; 3 uses
  %i.w = sext i32 %i.l to i64
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw [1688 x i8], ptr %i.x, i64 %i.w ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !133 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !124 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 232
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !133 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 336
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !124 ; 2 uses
  %i.ah = insertelement <2 x float> poison, float %i.m, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.n, i64 1 ; 4 uses
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.ak = extractelement <2 x i32> %i.v, i64 0
  %i.al = extractelement <2 x i32> %i.v, i64 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.f
  %indvars.iv245 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next246, %bb.f ] ; 2 uses
  %indvars.iv242 = phi i32 [ -3, %bb.a ], [ %indvars.iv.next243, %bb.f ] ; 2 uses
  %.0162235 = phi float [ -5.000000e-01, %bb.a ], [ %i.an, %bb.f ]
  %.0167233 = phi i32 [ -8, %bb.a ], [ %i.fr, %bb.f ] ; 4 uses
  %.0171232 = phi float [ 0.000000e+00, %bb.a ], [ %i.cd, %bb.f ]
  %i.am = add nsw i32 %.0167233, -4
  %i.an = fadd float %.0162235, 1.000000e+00      ; 2 uses
  %i.ao = add nsw i32 %.0167233, 1
  %i.ap = mul nsw i32 %i.ao, %i.g
  %i.aq = sitofp i32 %i.ap to float
  %i.ar = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x float> %i.ai, %i.as
  %i.au = fadd float %i.an, -2.000000e+00         ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d
  %indvars.iv245.a = phi i64 [ %indvars.iv245, %bb.b ], [ %indvars.iv.next246.a, %bb.d ] ; 2 uses
  %indvars.iv = phi i32 [ -3, %bb.b ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.0161231 = phi float [ -5.000000e-01, %bb.b ], [ %i.bl, %bb.d ]
  %.0166229 = phi i32 [ -8, %bb.b ], [ %i.ce, %bb.d ] ; 5 uses
  %.1172228 = phi float [ %.0171232, %bb.b ], [ %i.cd, %bb.d ]
  %i.av = add nsw i32 %.0166229, -4
  %i.aw = add nsw i32 %.0166229, 1
  %i.ax = xor i32 %.0166229, -1
  %i.ay = mul nsw i32 %i.aw, %i.g
  %i.az = mul nsw i32 %i.g, %i.ax
  %i.ba = insertelement <2 x i32> poison, i32 %i.az, i64 0
  %i.bb = insertelement <2 x i32> %i.ba, i32 %i.ay, i64 1
  %i.bc = sitofp <2 x i32> %i.bb to <2 x float>
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.aj, <2 x float> %i.at)
  %i.be = fadd <2 x float> %i.t, %i.bd            ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.e
  %.0160227 = phi i32 [ %i.am, %bb.c ], [ %i.cg, %bb.e ] ; 2 uses
  %i.bf = phi <4 x float> [ zeroinitializer, %bb.c ], [ %i.fp, %bb.e ]
  %i.bg = mul nsw i32 %.0160227, %i.g
  %i.bh = sitofp i32 %i.bg to float
  %i.bi = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x float> %i.ai, %i.bj
  br label %_Z21checkDescriptorLimitsRiS_ii.exit

bb.d:                                             ; preds = %bb.e
  %i.bl = fadd float %.0161231, 1.000000e+00      ; 2 uses
  %i.bm = fadd float %i.bl, -2.000000e+00         ; 2 uses
  %i.bn = fmul float %i.bm, %i.bm
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.au, float %i.au, float %i.bn)
  %i.bp = fdiv float %i.bo, -4.500000e+00
  %i.bq = tail call noundef float @expf(float noundef %i.bp) #22 ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv245.a
  %indvars.iv.next246.a = add nuw nsw i64 %indvars.iv245.a, 4
  %i.bs = insertelement <4 x float> poison, float %i.bq, i64 0
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bu = fmul <4 x float> %i.fp, %i.bt
  store <4 x float> %i.bu, ptr %i.br, align 4, !tbaa !10
  %foldExtExtBinop = fmul <4 x float> %i.fp, %i.fp
  %i.bv = extractelement <4 x float> %foldExtExtBinop, i64 1
  %i.bw = extractelement <4 x float> %i.fp, i64 0 ; 2 uses
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bw, float %i.bv)
  %i.by = extractelement <4 x float> %i.fp, i64 2 ; 2 uses
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.bx)
  %i.ca = extractelement <4 x float> %i.fp, i64 3 ; 2 uses
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.ca, float %i.bz)
  %i.cc = fmul float %i.cb, %i.bq
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.bq, float %.1172228) ; 3 uses
  %i.ce = add nsw i32 %.0166229, 5
  %i.cf = icmp slt i32 %.0166229, 7
  %indvars.iv.next = add nsw i32 %indvars.iv, 5
  br i1 %i.cf, label %bb.c, label %bb.f, !llvm.loop !217

bb.e:                                             ; preds = %_Z21checkDescriptorLimitsRiS_ii.exit
  %i.cg = add nsw i32 %.0160227, 1                ; 2 uses
  %exitcond244.not = icmp eq i32 %i.cg, %indvars.iv242
  br i1 %exitcond244.not, label %bb.d, label %.preheader, !llvm.loop !218

_Z21checkDescriptorLimitsRiS_ii.exit:             ; preds = %.preheader, %_Z21checkDescriptorLimitsRiS_ii.exit
  %.0222 = phi i32 [ %i.av, %.preheader ], [ %i.fq, %_Z21checkDescriptorLimitsRiS_ii.exit ] ; 2 uses
  %i.ch = phi <4 x float> [ %i.bf, %.preheader ], [ %i.fp, %_Z21checkDescriptorLimitsRiS_ii.exit ]
  %i.ci = mul i32 %.0222, %i.g                    ; 2 uses
  %i.cj = sub i32 0, %i.ci
  %i.ck = insertelement <2 x i32> poison, i32 %i.cj, i64 0
  %i.cl = insertelement <2 x i32> %i.ck, i32 %i.ci, i64 1
  %i.cm = sitofp <2 x i32> %i.cl to <2 x float>
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.aj, <2 x float> %i.bk)
  %i.co = fadd <2 x float> %i.t, %i.cn            ; 5 uses
  %i.cp = extractelement <2 x float> %i.co, i64 0
  %foldExtExtBinop261 = fsub <2 x float> %i.be, %i.co
  %i.cq = extractelement <2 x float> %foldExtExtBinop261, i64 0 ; 2 uses
  %i.cr = extractelement <2 x float> %i.co, i64 1
  %foldExtExtBinop263 = fsub <2 x float> %i.be, %i.co ; 2 uses
  %foldExtExtBinop265 = fmul <2 x float> %foldExtExtBinop263, %foldExtExtBinop263
  %i.cs = extractelement <2 x float> %foldExtExtBinop265, i64 1
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.cq, float %i.cs)
  %i.cu = fneg float %i.ct
  %i.cv = fdiv float %i.cu, %i.r
  %i.cw = tail call noundef float @expf(float noundef %i.cv) #22
  %i.cx = tail call float @llvm.floor.f32(float %i.cr)
  %i.cy = tail call float @llvm.floor.f32(float %i.cp)
  %i.cz = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %i.cx, i64 1
  %i.db = fptosi <2 x float> %i.da to <2 x i32>
  %i.dc = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.db, <2 x i32> zeroinitializer)
  %i.dd = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.dc, <2 x i32> %i.v) ; 3 uses
  %i.de = extractelement <2 x i32> %i.dd, i64 0   ; 2 uses
  %i.df = tail call i32 @llvm.smax.i32(i32 %i.de, i32 -1)
  %.0211 = add nsw i32 %i.df, 1
  %i.dg = extractelement <2 x i32> %i.dd, i64 1   ; 2 uses
  %i.dh = tail call i32 @llvm.smax.i32(i32 %i.dg, i32 -1)
  %.0209 = add nsw i32 %i.dh, 1
  %.1212 = tail call i32 @llvm.smin.i32(i32 %.0211, i32 %i.ak)
  %.1210 = tail call i32 @llvm.smin.i32(i32 %.0209, i32 %i.al)
  %i.di = sitofp <2 x i32> %i.dd to <2 x float>
  %i.dj = fsub <2 x float> %i.co, %i.di           ; 3 uses
  %i.dk = sext i32 %i.dg to i64                   ; 2 uses
  %i.dl = mul i64 %i.ac, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.dl ; 2 uses
  %i.dn = sext i32 %i.de to i64                   ; 4 uses
  %i.do = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = load float, ptr %i.do, align 4, !tbaa !10
  %i.dq = sext i32 %.1212 to i64                  ; 4 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !10
  %i.dt = sext i32 %.1210 to i64                  ; 2 uses
  %i.du = mul i64 %i.ac, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.du ; 2 uses
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.dn
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !10
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.dq
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !10
  %i.ea = extractelement <2 x float> %i.dj, i64 0 ; 2 uses
  %i.eb = extractelement <2 x float> %i.dj, i64 1 ; 2 uses
  %i.ec = fsub <2 x float> splat (float 1.000000e+00), %i.dj ; 2 uses
  %i.ed = extractelement <2 x float> %i.ec, i64 0 ; 2 uses
  %i.ee = extractelement <2 x float> %i.ec, i64 1 ; 2 uses
  %i.ef = fmul float %i.ed, %i.ee                 ; 2 uses
  %i.eg = fmul float %i.ea, %i.ee                 ; 2 uses
  %i.eh = fmul float %i.ds, %i.eg
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.ef, float %i.dp, float %i.eh)
  %i.ej = fmul float %i.ed, %i.eb                 ; 2 uses
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.ej, float %i.dx, float %i.ei)
  %i.el = fmul float %i.ea, %i.eb                 ; 2 uses
  %i.em = tail call float @llvm.fmuladd.f32(float %i.el, float %i.dz, float %i.ek) ; 2 uses
  %i.en = mul i64 %i.ag, %i.dk
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.en ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.dn
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !10
  %i.er = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.dq
  %i.es = load float, ptr %i.er, align 4, !tbaa !10
  %i.et = mul i64 %i.ag, %i.dt
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.et ; 2 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.dn
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !10
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.dq
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !10
  %i.ez = fmul float %i.eg, %i.es
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.ef, float %i.eq, float %i.ez)
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.ej, float %i.ew, float %i.fa)
  %i.fc = tail call float @llvm.fmuladd.f32(float %i.el, float %i.ey, float %i.fb)
  %i.fd = fneg float %i.em
  %i.fe = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = fmul <2 x float> %i.ai, %i.ff
  %i.fh = insertelement <2 x float> poison, float %i.fd, i64 0
  %i.fi = insertelement <2 x float> %i.fh, float %i.em, i64 1
  %i.fj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fi, <2 x float> %i.aj, <2 x float> %i.fg)
  %i.fk = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x float> %i.fl, %i.fj           ; 2 uses
  %i.fn = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.fm)
  %i.fo = shufflevector <2 x float> %i.fm, <2 x float> %i.fn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fp = fadd <4 x float> %i.ch, %i.fo           ; 8 uses
  %i.fq = add nsw i32 %.0222, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.fq, %indvars.iv
  br i1 %exitcond.not, label %bb.e, label %_Z21checkDescriptorLimitsRiS_ii.exit, !llvm.loop !219

bb.f:                                             ; preds = %bb.d
  %i.fr = add nsw i32 %.0167233, 5
  %i.fs = icmp slt i32 %.0167233, 7
  %indvars.iv.next243 = add nsw i32 %indvars.iv242, 5
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 16
  br i1 %i.fs, label %bb.b, label %vector.ph, !llvm.loop !220

vector.ph:                                        ; preds = %bb.f
  %i.ft = tail call noundef float @sqrtf(float noundef %i.cd) #22
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ft, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 16 uses
  %wide.load = load <4 x float>, ptr %2, align 4, !tbaa !10
  %i.fu = fdiv <4 x float> %wide.load, %broadcast.splat
  store <4 x float> %i.fu, ptr %2, align 4, !tbaa !10
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load.1 = load <4 x float>, ptr %i.fv, align 4, !tbaa !10
  %i.fw = fdiv <4 x float> %wide.load.1, %broadcast.splat
  store <4 x float> %i.fw, ptr %i.fv, align 4, !tbaa !10
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %wide.load.2 = load <4 x float>, ptr %i.fx, align 4, !tbaa !10
  %i.fy = fdiv <4 x float> %wide.load.2, %broadcast.splat
  store <4 x float> %i.fy, ptr %i.fx, align 4, !tbaa !10
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load.3 = load <4 x float>, ptr %i.fz, align 4, !tbaa !10
  %i.ga = fdiv <4 x float> %wide.load.3, %broadcast.splat
  store <4 x float> %i.ga, ptr %i.fz, align 4, !tbaa !10
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %wide.load.4 = load <4 x float>, ptr %i.gb, align 4, !tbaa !10
  %i.gc = fdiv <4 x float> %wide.load.4, %broadcast.splat
  store <4 x float> %i.gc, ptr %i.gb, align 4, !tbaa !10
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %wide.load.5 = load <4 x float>, ptr %i.gd, align 4, !tbaa !10
  %i.ge = fdiv <4 x float> %wide.load.5, %broadcast.splat
  store <4 x float> %i.ge, ptr %i.gd, align 4, !tbaa !10
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %wide.load.6 = load <4 x float>, ptr %i.gf, align 4, !tbaa !10
  %i.gg = fdiv <4 x float> %wide.load.6, %broadcast.splat
  store <4 x float> %i.gg, ptr %i.gf, align 4, !tbaa !10
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %wide.load.7 = load <4 x float>, ptr %i.gh, align 4, !tbaa !10
  %i.gi = fdiv <4 x float> %wide.load.7, %broadcast.splat
  store <4 x float> %i.gi, ptr %i.gh, align 4, !tbaa !10
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %wide.load.8 = load <4 x float>, ptr %i.gj, align 4, !tbaa !10
  %i.gk = fdiv <4 x float> %wide.load.8, %broadcast.splat
  store <4 x float> %i.gk, ptr %i.gj, align 4, !tbaa !10
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %wide.load.9 = load <4 x float>, ptr %i.gl, align 4, !tbaa !10
  %i.gm = fdiv <4 x float> %wide.load.9, %broadcast.splat
  store <4 x float> %i.gm, ptr %i.gl, align 4, !tbaa !10
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  %wide.load.10 = load <4 x float>, ptr %i.gn, align 4, !tbaa !10
  %i.go = fdiv <4 x float> %wide.load.10, %broadcast.splat
  store <4 x float> %i.go, ptr %i.gn, align 4, !tbaa !10
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %wide.load.11 = load <4 x float>, ptr %i.gp, align 4, !tbaa !10
  %i.gq = fdiv <4 x float> %wide.load.11, %broadcast.splat
  store <4 x float> %i.gq, ptr %i.gp, align 4, !tbaa !10
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %wide.load.12 = load <4 x float>, ptr %i.gr, align 4, !tbaa !10
  %i.gs = fdiv <4 x float> %wide.load.12, %broadcast.splat
  store <4 x float> %i.gs, ptr %i.gr, align 4, !tbaa !10
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %wide.load.13 = load <4 x float>, ptr %i.gt, align 4, !tbaa !10
  %i.gu = fdiv <4 x float> %wide.load.13, %broadcast.splat
  store <4 x float> %i.gu, ptr %i.gt, align 4, !tbaa !10
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 2 uses
  %wide.load.14 = load <4 x float>, ptr %i.gv, align 4, !tbaa !10
  %i.gw = fdiv <4 x float> %wide.load.14, %broadcast.splat
  store <4 x float> %i.gw, ptr %i.gv, align 4, !tbaa !10
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  %wide.load.15 = load <4 x float>, ptr %i.gx, align 4, !tbaa !10
  %i.gy = fdiv <4 x float> %wide.load.15, %broadcast.splat
  store <4 x float> %i.gy, ptr %i.gx, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden void @_ZNK2cv11xfeatures2d23KAZE_Descriptor_Invoker31Get_KAZE_Upright_Descriptor_128ERKNS_8KeyPointEPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !187 ; 2 uses
  %i.e = load float, ptr %1, align 4, !tbaa !186  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !168
  %i.h = fmul float %i.g, 5.000000e-01
  %i.i = insertelement <4 x float> poison, float %i.h, i64 0
  %i.j = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.i) ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 4, !tbaa !161
  %i.m = sitofp i32 %i.j to float
  %i.n = fmul nnan float %i.m, 2.500000e+00       ; 2 uses
  %i.o = fmul nnan float %i.n, 2.000000e+00
  %i.p = fmul float %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load i32, ptr %i.q, align 8, !tbaa !211
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !212
  %i.u = add nsw i32 %i.r, -1
  %i.v = add nsw i32 %i.t, -1                     ; 2 uses
  %i.w = sext i32 %i.l to i64
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw [1688 x i8], ptr %i.x, i64 %i.w ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !133 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !124 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 232
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !133 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 336
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !124 ; 2 uses
  %i.ah = insertelement <2 x i32> poison, i32 %i.u, i64 0
  %i.ai = shufflevector <2 x i32> %i.ah, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.l
  %indvars.iv273 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next274, %bb.l ] ; 2 uses
  %indvars.iv270 = phi i32 [ -3, %bb.a ], [ %indvars.iv.next271, %bb.l ] ; 2 uses
  %.0173267 = phi float [ -5.000000e-01, %bb.a ], [ %i.ak, %bb.l ]
  %.0199265 = phi i32 [ -8, %bb.a ], [ %i.fs, %bb.l ] ; 4 uses
  %.0201264 = phi float [ 0.000000e+00, %bb.a ], [ %i.cz, %bb.l ]
  %i.aj = add nsw i32 %.0199265, -4
  %i.ak = fadd float %.0173267, 1.000000e+00      ; 2 uses
  %i.al = add nsw i32 %.0199265, 1
  %i.am = mul nsw i32 %i.al, %i.j
  %i.an = sitofp i32 %i.am to float
  %i.ao = fadd float %i.d, %i.an
  %i.ap = fadd float %i.ak, -2.000000e+00         ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d
  %indvars.iv273.a = phi i64 [ %indvars.iv273, %bb.b ], [ %indvars.iv.next274.a, %bb.d ] ; 2 uses
  %indvars.iv = phi i32 [ -3, %bb.b ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.0172263 = phi float [ -5.000000e-01, %bb.b ], [ %i.bs, %bb.d ]
  %.0198261 = phi i32 [ -8, %bb.b ], [ %i.da, %bb.d ] ; 4 uses
  %.1202260 = phi float [ %.0201264, %bb.b ], [ %i.cz, %bb.d ]
  %i.aq = add nsw i32 %.0198261, -4
  %i.ar = add nsw i32 %.0198261, 1
  %i.as = mul nsw i32 %i.ar, %i.j
  %i.at = sitofp i32 %i.as to float
  %i.au = fadd float %i.e, %i.at
  br label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.e
  %.0171259 = phi i32 [ %i.aj, %bb.c ], [ %i.dc, %bb.e ] ; 2 uses
  %.0175257 = phi float [ 0.000000e+00, %bb.c ], [ %.2177, %bb.e ]
  %.0181255 = phi float [ 0.000000e+00, %bb.c ], [ %.2183, %bb.e ]
  %.0184254 = phi float [ 0.000000e+00, %bb.c ], [ %.2186, %bb.e ]
  %.0187253 = phi float [ 0.000000e+00, %bb.c ], [ %.2189, %bb.e ]
  %.0190252 = phi float [ 0.000000e+00, %bb.c ], [ %.2192, %bb.e ]
  %.0193251 = phi float [ 0.000000e+00, %bb.c ], [ %.2195, %bb.e ]
  %i.av = phi <2 x float> [ zeroinitializer, %bb.c ], [ %i.fq, %bb.e ]
  %i.aw = mul nsw i32 %.0171259, %i.j
  %i.ax = sitofp i32 %i.aw to float
  %i.ay = fadd float %i.d, %i.ax                  ; 4 uses
  %i.az = fsub float %i.ao, %i.ay                 ; 2 uses
  %i.ba = fmul float %i.az, %i.az
  %i.bb = fadd float %i.ay, -5.000000e-01
  %i.bc = fptosi float %i.bb to i32
  %.0237 = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 0)
  %.1238 = tail call i32 @llvm.smin.i32(i32 %.0237, i32 %i.v) ; 2 uses
  %i.bd = fadd float %i.ay, 5.000000e-01
  %i.be = fptosi float %i.bd to i32
  %.0233 = tail call i32 @llvm.smax.i32(i32 %i.be, i32 0)
  %.1234 = tail call i32 @llvm.smin.i32(i32 %.0233, i32 %i.v)
  %i.bf = sitofp i32 %.1238 to float
  %i.bg = fsub float %i.ay, %i.bf                 ; 3 uses
  %i.bh = sext i32 %.1238 to i64                  ; 2 uses
  %i.bi = mul i64 %i.ac, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.bi ; 2 uses
  %i.bk = sext i32 %.1234 to i64                  ; 2 uses
  %i.bl = mul i64 %i.ac, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.bl ; 2 uses
  %i.bn = fsub float 1.000000e+00, %i.bg          ; 2 uses
  %i.bo = mul i64 %i.ag, %i.bh
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bo ; 2 uses
  %i.bq = mul i64 %i.ag, %i.bk
  %i.br = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bq ; 2 uses
  br label %_Z21checkDescriptorLimitsRiS_ii.exit

bb.d:                                             ; preds = %bb.e
  %i.bs = fadd float %.0172263, 1.000000e+00      ; 2 uses
  %i.bt = fadd float %i.bs, -2.000000e+00         ; 2 uses
  %i.bu = fmul float %i.bt, %i.bt
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.bu)
  %i.bw = fdiv float %i.bv, -4.500000e+00
  %i.bx = tail call noundef float @expf(float noundef %i.bw) #22 ; 7 uses
  %i.by = fmul float %.2195, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv273.a ; 5 uses
  store float %i.by, ptr %i.bz, align 4, !tbaa !10
  %i.ca = getelementptr i8, ptr %i.bz, i64 4
  %i.cb = insertelement <4 x float> poison, float %.2183, i64 0
  %i.cc = insertelement <4 x float> %i.cb, float %.2189, i64 1
  %i.cd = insertelement <4 x float> %i.cc, float %.2177, i64 2
  %i.ce = insertelement <4 x float> %i.cd, float %.2192, i64 3
  %i.cf = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ch = fmul <4 x float> %i.ce, %i.cg
  store <4 x float> %i.ch, ptr %i.ca, align 4, !tbaa !10
  %i.ci = extractelement <2 x float> %i.fq, i64 0 ; 3 uses
  %i.cj = fmul float %i.ci, %i.bx
  %i.ck = getelementptr i8, ptr %i.bz, i64 20
  store float %i.cj, ptr %i.ck, align 4, !tbaa !10
  %i.cl = fmul float %.2186, %i.bx
  %i.cm = getelementptr i8, ptr %i.bz, i64 24
  store float %i.cl, ptr %i.cm, align 4, !tbaa !10
  %i.cn = extractelement <2 x float> %i.fq, i64 1 ; 3 uses
  %i.co = fmul float %i.cn, %i.bx
  %indvars.iv.next274.a = add nuw nsw i64 %indvars.iv273.a, 8
  %i.cp = getelementptr i8, ptr %i.bz, i64 28
  store float %i.co, ptr %i.cp, align 4, !tbaa !10
  %i.cq = fmul float %.2183, %.2183
  %i.cr = tail call float @llvm.fmuladd.f32(float %.2195, float %.2195, float %i.cq)
  %i.cs = tail call float @llvm.fmuladd.f32(float %.2189, float %.2189, float %i.cr)
  %i.ct = tail call float @llvm.fmuladd.f32(float %.2177, float %.2177, float %i.cs)
  %i.cu = tail call float @llvm.fmuladd.f32(float %.2192, float %.2192, float %i.ct)
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.ci, float %i.cu)
  %i.cw = tail call float @llvm.fmuladd.f32(float %.2186, float %.2186, float %i.cv)
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.cn, float %i.cw)
  %i.cy = fmul float %i.cx, %i.bx
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.bx, float %.1202260) ; 3 uses
  %i.da = add nsw i32 %.0198261, 5
  %i.db = icmp slt i32 %.0198261, 7
  %indvars.iv.next = add nsw i32 %indvars.iv, 5
  br i1 %i.db, label %bb.c, label %bb.l, !llvm.loop !221

bb.e:                                             ; preds = %bb.k
  %i.dc = add nsw i32 %.0171259, 1                ; 2 uses
  %exitcond272.not = icmp eq i32 %i.dc, %indvars.iv270
  br i1 %exitcond272.not, label %bb.d, label %.preheader, !llvm.loop !222

_Z21checkDescriptorLimitsRiS_ii.exit:             ; preds = %.preheader, %bb.k
  %.0250 = phi i32 [ %i.aq, %.preheader ], [ %i.fr, %bb.k ] ; 2 uses
  %.1176248 = phi float [ %.0175257, %.preheader ], [ %.2177, %bb.k ] ; 2 uses
  %.1182246 = phi float [ %.0181255, %.preheader ], [ %.2183, %bb.k ] ; 2 uses
  %.1185245 = phi float [ %.0184254, %.preheader ], [ %.2186, %bb.k ] ; 2 uses
  %.1188244 = phi float [ %.0187253, %.preheader ], [ %.2189, %bb.k ] ; 2 uses
  %.1191243 = phi float [ %.0190252, %.preheader ], [ %.2192, %bb.k ] ; 2 uses
  %.1194242 = phi float [ %.0193251, %.preheader ], [ %.2195, %bb.k ] ; 2 uses
  %i.dd = phi <2 x float> [ %i.av, %.preheader ], [ %i.fq, %bb.k ] ; 2 uses
  %i.de = mul nsw i32 %.0250, %i.j
  %i.df = sitofp i32 %i.de to float
  %i.dg = fadd float %i.e, %i.df                  ; 3 uses
  %i.dh = fsub float %i.au, %i.dg                 ; 2 uses
  %i.di = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.dh, float %i.ba)
  %i.dj = fneg float %i.di
  %i.dk = fdiv float %i.dj, %i.p
  %i.dl = tail call noundef float @expf(float noundef %i.dk) #22 ; 2 uses
  %i.dm = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = fadd <2 x float> %i.dn, <float -5.000000e-01, float 5.000000e-01>
  %i.dp = fptosi <2 x float> %i.do to <2 x i32>
  %i.dq = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.dp, <2 x i32> zeroinitializer)
  %i.dr = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.dq, <2 x i32> %i.ai) ; 2 uses
  %i.ds = extractelement <2 x i32> %i.dr, i64 0   ; 2 uses
  %i.dt = sitofp i32 %i.ds to float
  %i.du = fsub float %i.dg, %i.dt                 ; 3 uses
  %i.dv = sext i32 %i.ds to i64                   ; 4 uses
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.dv
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !10
  %i.dy = extractelement <2 x i32> %i.dr, i64 1
  %i.dz = sext i32 %i.dy to i64                   ; 4 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.dz
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !10
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.dv
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !10
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.dz
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !10
  %i.eg = fsub float 1.000000e+00, %i.du          ; 2 uses
  %i.eh = fmul float %i.eg, %i.bn                 ; 2 uses
  %i.ei = fmul float %i.du, %i.bn                 ; 2 uses
  %i.ej = fmul float %i.eb, %i.ei
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.eh, float %i.dx, float %i.ej)
  %i.el = fmul float %i.eg, %i.bg                 ; 2 uses
  %i.em = tail call float @llvm.fmuladd.f32(float %i.el, float %i.ed, float %i.ek)
  %i.en = fmul float %i.du, %i.bg                 ; 2 uses
  %i.eo = tail call float @llvm.fmuladd.f32(float %i.en, float %i.ef, float %i.em)
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.dv
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !10
  %i.er = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.dz
  %i.es = load float, ptr %i.er, align 4, !tbaa !10
  %i.et = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.dv
  %i.eu = load float, ptr %i.et, align 4, !tbaa !10
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.dz
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !10
  %i.ex = fmul float %i.ei, %i.es
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.eh, float %i.eq, float %i.ex)
  %i.ez = tail call float @llvm.fmuladd.f32(float %i.el, float %i.eu, float %i.ey)
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.en, float %i.ew, float %i.ez)
  %i.fb = fmul float %i.dl, %i.eo                 ; 4 uses
  %i.fc = fmul float %i.dl, %i.fa                 ; 4 uses
  %i.fd = fcmp ult float %i.fc, 0.000000e+00
  %i.fe = tail call noundef float @llvm.fabs.f32(float %i.fb) ; 2 uses
  br i1 %i.fd, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_Z21checkDescriptorLimitsRiS_ii.exit
  %i.ff = fadd float %.1194242, %i.fb
  %i.fg = fadd float %.1188244, %i.fe
  br label %bb.h

bb.g:                                             ; preds = %_Z21checkDescriptorLimitsRiS_ii.exit
  %i.fh = fadd float %.1182246, %i.fb
  %i.fi = fadd float %.1176248, %i.fe
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2195 = phi float [ %i.ff, %bb.f ], [ %.1194242, %bb.g ] ; 5 uses
  %.2189 = phi float [ %i.fg, %bb.f ], [ %.1188244, %bb.g ] ; 5 uses
  %.2183 = phi float [ %.1182246, %bb.f ], [ %i.fh, %bb.g ] ; 5 uses
  %.2177 = phi float [ %.1176248, %bb.f ], [ %i.fi, %bb.g ] ; 5 uses
  %i.fj = fcmp ult float %i.fb, 0.000000e+00
  %i.fk = tail call noundef float @llvm.fabs.f32(float %i.fc) ; 2 uses
  br i1 %i.fj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fl = fadd float %.1191243, %i.fc
  %i.fm = fadd float %.1185245, %i.fk
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.fn = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.fo = insertelement <2 x float> %i.fn, float %i.fk, i64 1
  %i.fp = fadd <2 x float> %i.dd, %i.fo
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.2192 = phi float [ %i.fl, %bb.i ], [ %.1191243, %bb.j ] ; 5 uses
  %.2186 = phi float [ %i.fm, %bb.i ], [ %.1185245, %bb.j ] ; 5 uses
  %i.fq = phi <2 x float> [ %i.dd, %bb.i ], [ %i.fp, %bb.j ] ; 4 uses
  %i.fr = add nsw i32 %.0250, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.fr, %indvars.iv
  br i1 %exitcond.not, label %bb.e, label %_Z21checkDescriptorLimitsRiS_ii.exit, !llvm.loop !223

bb.l:                                             ; preds = %bb.d
  %i.fs = add nsw i32 %.0199265, 5
  %i.ft = icmp slt i32 %.0199265, 7
  %indvars.iv.next271 = add nsw i32 %indvars.iv270, 5
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 32
  br i1 %i.ft, label %bb.b, label %vector.ph, !llvm.loop !224

vector.ph:                                        ; preds = %bb.l
  %i.fu = tail call noundef float @sqrtf(float noundef %i.cz) #22
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fu, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 32 uses
  %wide.load = load <4 x float>, ptr %2, align 4, !tbaa !10
  %i.fv = fdiv <4 x float> %wide.load, %broadcast.splat
  store <4 x float> %i.fv, ptr %2, align 4, !tbaa !10
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load.1 = load <4 x float>, ptr %i.fw, align 4, !tbaa !10
  %i.fx = fdiv <4 x float> %wide.load.1, %broadcast.splat
  store <4 x float> %i.fx, ptr %i.fw, align 4, !tbaa !10
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %wide.load.2 = load <4 x float>, ptr %i.fy, align 4, !tbaa !10
  %i.fz = fdiv <4 x float> %wide.load.2, %broadcast.splat
  store <4 x float> %i.fz, ptr %i.fy, align 4, !tbaa !10
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load.3 = load <4 x float>, ptr %i.ga, align 4, !tbaa !10
  %i.gb = fdiv <4 x float> %wide.load.3, %broadcast.splat
  store <4 x float> %i.gb, ptr %i.ga, align 4, !tbaa !10
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %wide.load.4 = load <4 x float>, ptr %i.gc, align 4, !tbaa !10
  %i.gd = fdiv <4 x float> %wide.load.4, %broadcast.splat
  store <4 x float> %i.gd, ptr %i.gc, align 4, !tbaa !10
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %wide.load.5 = load <4 x float>, ptr %i.ge, align 4, !tbaa !10
  %i.gf = fdiv <4 x float> %wide.load.5, %broadcast.splat
  store <4 x float> %i.gf, ptr %i.ge, align 4, !tbaa !10
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %wide.load.6 = load <4 x float>, ptr %i.gg, align 4, !tbaa !10
  %i.gh = fdiv <4 x float> %wide.load.6, %broadcast.splat
  store <4 x float> %i.gh, ptr %i.gg, align 4, !tbaa !10
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %wide.load.7 = load <4 x float>, ptr %i.gi, align 4, !tbaa !10
  %i.gj = fdiv <4 x float> %wide.load.7, %broadcast.splat
  store <4 x float> %i.gj, ptr %i.gi, align 4, !tbaa !10
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %wide.load.8 = load <4 x float>, ptr %i.gk, align 4, !tbaa !10
  %i.gl = fdiv <4 x float> %wide.load.8, %broadcast.splat
  store <4 x float> %i.gl, ptr %i.gk, align 4, !tbaa !10
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %wide.load.9 = load <4 x float>, ptr %i.gm, align 4, !tbaa !10
  %i.gn = fdiv <4 x float> %wide.load.9, %broadcast.splat
  store <4 x float> %i.gn, ptr %i.gm, align 4, !tbaa !10
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  %wide.load.10 = load <4 x float>, ptr %i.go, align 4, !tbaa !10
  %i.gp = fdiv <4 x float> %wide.load.10, %broadcast.splat
  store <4 x float> %i.gp, ptr %i.go, align 4, !tbaa !10
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %wide.load.11 = load <4 x float>, ptr %i.gq, align 4, !tbaa !10
  %i.gr = fdiv <4 x float> %wide.load.11, %broadcast.splat
  store <4 x float> %i.gr, ptr %i.gq, align 4, !tbaa !10
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %wide.load.12 = load <4 x float>, ptr %i.gs, align 4, !tbaa !10
  %i.gt = fdiv <4 x float> %wide.load.12, %broadcast.splat
  store <4 x float> %i.gt, ptr %i.gs, align 4, !tbaa !10
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %wide.load.13 = load <4 x float>, ptr %i.gu, align 4, !tbaa !10
  %i.gv = fdiv <4 x float> %wide.load.13, %broadcast.splat
  store <4 x float> %i.gv, ptr %i.gu, align 4, !tbaa !10
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 2 uses
  %wide.load.14 = load <4 x float>, ptr %i.gw, align 4, !tbaa !10
  %i.gx = fdiv <4 x float> %wide.load.14, %broadcast.splat
  store <4 x float> %i.gx, ptr %i.gw, align 4, !tbaa !10
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  %wide.load.15 = load <4 x float>, ptr %i.gy, align 4, !tbaa !10
  %i.gz = fdiv <4 x float> %wide.load.15, %broadcast.splat
  store <4 x float> %i.gz, ptr %i.gy, align 4, !tbaa !10
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %wide.load.16 = load <4 x float>, ptr %i.ha, align 4, !tbaa !10
  %i.hb = fdiv <4 x float> %wide.load.16, %broadcast.splat
  store <4 x float> %i.hb, ptr %i.ha, align 4, !tbaa !10
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %wide.load.17 = load <4 x float>, ptr %i.hc, align 4, !tbaa !10
  %i.hd = fdiv <4 x float> %wide.load.17, %broadcast.splat
  store <4 x float> %i.hd, ptr %i.hc, align 4, !tbaa !10
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %wide.load.18 = load <4 x float>, ptr %i.he, align 4, !tbaa !10
  %i.hf = fdiv <4 x float> %wide.load.18, %broadcast.splat
  store <4 x float> %i.hf, ptr %i.he, align 4, !tbaa !10
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %wide.load.19 = load <4 x float>, ptr %i.hg, align 4, !tbaa !10
  %i.hh = fdiv <4 x float> %wide.load.19, %broadcast.splat
  store <4 x float> %i.hh, ptr %i.hg, align 4, !tbaa !10
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %wide.load.20 = load <4 x float>, ptr %i.hi, align 4, !tbaa !10
  %i.hj = fdiv <4 x float> %wide.load.20, %broadcast.splat
  store <4 x float> %i.hj, ptr %i.hi, align 4, !tbaa !10
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 2 uses
  %wide.load.21 = load <4 x float>, ptr %i.hk, align 4, !tbaa !10
  %i.hl = fdiv <4 x float> %wide.load.21, %broadcast.splat
  store <4 x float> %i.hl, ptr %i.hk, align 4, !tbaa !10
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  %wide.load.22 = load <4 x float>, ptr %i.hm, align 4, !tbaa !10
  %i.hn = fdiv <4 x float> %wide.load.22, %broadcast.splat
  store <4 x float> %i.hn, ptr %i.hm, align 4, !tbaa !10
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 2 uses
  %wide.load.23 = load <4 x float>, ptr %i.ho, align 4, !tbaa !10
  %i.hp = fdiv <4 x float> %wide.load.23, %broadcast.splat
  store <4 x float> %i.hp, ptr %i.ho, align 4, !tbaa !10
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 384 ; 2 uses
  %wide.load.24 = load <4 x float>, ptr %i.hq, align 4, !tbaa !10
  %i.hr = fdiv <4 x float> %wide.load.24, %broadcast.splat
  store <4 x float> %i.hr, ptr %i.hq, align 4, !tbaa !10
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 400 ; 2 uses
  %wide.load.25 = load <4 x float>, ptr %i.hs, align 4, !tbaa !10
  %i.ht = fdiv <4 x float> %wide.load.25, %broadcast.splat
  store <4 x float> %i.ht, ptr %i.hs, align 4, !tbaa !10
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 416 ; 2 uses
  %wide.load.26 = load <4 x float>, ptr %i.hu, align 4, !tbaa !10
  %i.hv = fdiv <4 x float> %wide.load.26, %broadcast.splat
  store <4 x float> %i.hv, ptr %i.hu, align 4, !tbaa !10
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 432 ; 2 uses
  %wide.load.27 = load <4 x float>, ptr %i.hw, align 4, !tbaa !10
  %i.hx = fdiv <4 x float> %wide.load.27, %broadcast.splat
  store <4 x float> %i.hx, ptr %i.hw, align 4, !tbaa !10
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 448 ; 2 uses
  %wide.load.28 = load <4 x float>, ptr %i.hy, align 4, !tbaa !10
  %i.hz = fdiv <4 x float> %wide.load.28, %broadcast.splat
  store <4 x float> %i.hz, ptr %i.hy, align 4, !tbaa !10
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 464 ; 2 uses
  %wide.load.29 = load <4 x float>, ptr %i.ia, align 4, !tbaa !10
  %i.ib = fdiv <4 x float> %wide.load.29, %broadcast.splat
  store <4 x float> %i.ib, ptr %i.ia, align 4, !tbaa !10
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 480 ; 2 uses
  %wide.load.30 = load <4 x float>, ptr %i.ic, align 4, !tbaa !10
  %i.id = fdiv <4 x float> %wide.load.30, %broadcast.splat
  store <4 x float> %i.id, ptr %i.ic, align 4, !tbaa !10
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 496 ; 2 uses
  %wide.load.31 = load <4 x float>, ptr %i.ie, align 4, !tbaa !10
  %i.if = fdiv <4 x float> %wide.load.31, %broadcast.splat
  store <4 x float> %i.if, ptr %i.ie, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden void @_ZNK2cv11xfeatures2d23KAZE_Descriptor_Invoker23Get_KAZE_Descriptor_128ERKNS_8KeyPointEPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !168
  %i.e = fmul float %i.d, 5.000000e-01
  %i.f = insertelement <4 x float> poison, float %i.e, i64 0
  %i.g = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.f) ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !189
  %i.j = fmul float %i.i, f0x3C8EFA35             ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 4, !tbaa !161
  %i.m = tail call noundef float @cosf(float noundef %i.j) #22 ; 3 uses
  %i.n = tail call noundef float @sinf(float noundef %i.j) #22 ; 3 uses
  %i.o = sitofp i32 %i.g to float
  %i.p = fmul nnan float %i.o, 2.500000e+00       ; 2 uses
  %i.q = fmul nnan float %i.p, 2.000000e+00
  %i.r = fmul float %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load <2 x float>, ptr %1, align 4, !tbaa !10 ; 2 uses
  %i.u = load <2 x i32>, ptr %i.s, align 8, !tbaa !9
  %i.v = add nsw <2 x i32> %i.u, splat (i32 -1)   ; 3 uses
  %i.w = sext i32 %i.l to i64
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw [1688 x i8], ptr %i.x, i64 %i.w ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !133 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !124 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 232
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !133 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 336
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !124 ; 2 uses
  %i.ah = insertelement <2 x float> poison, float %i.m, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.n, i64 1 ; 3 uses
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ak = extractelement <2 x i32> %i.v, i64 0
  %i.al = extractelement <2 x i32> %i.v, i64 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.l
  %indvars.iv298 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next299, %bb.l ] ; 2 uses
  %indvars.iv295 = phi i32 [ -3, %bb.a ], [ %indvars.iv.next296, %bb.l ] ; 2 uses
  %.0196292 = phi float [ -5.000000e-01, %bb.a ], [ %i.an, %bb.l ]
  %.0199290 = phi i32 [ -8, %bb.a ], [ %i.go, %bb.l ] ; 4 uses
  %.0224289 = phi float [ 0.000000e+00, %bb.a ], [ %i.cs, %bb.l ]
  %i.am = add nsw i32 %.0199290, -4
  %i.an = fadd float %.0196292, 1.000000e+00      ; 2 uses
  %i.ao = add nsw i32 %.0199290, 1
  %i.ap = mul nsw i32 %i.ao, %i.g
  %i.aq = sitofp i32 %i.ap to float
  %i.ar = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x float> %i.ai, %i.as
  %i.au = fadd float %i.an, -2.000000e+00         ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d
  %indvars.iv298.a = phi i64 [ %indvars.iv298, %bb.b ], [ %indvars.iv.next299.a, %bb.d ] ; 2 uses
  %indvars.iv = phi i32 [ -3, %bb.b ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.0195288 = phi float [ -5.000000e-01, %bb.b ], [ %i.bl, %bb.d ]
  %.0198286 = phi i32 [ -8, %bb.b ], [ %i.ct, %bb.d ] ; 5 uses
  %.1225285 = phi float [ %.0224289, %bb.b ], [ %i.cs, %bb.d ]
  %i.av = add nsw i32 %.0198286, -4
  %i.aw = add nsw i32 %.0198286, 1
  %i.ax = xor i32 %.0198286, -1
  %i.ay = mul nsw i32 %i.aw, %i.g
  %i.az = mul nsw i32 %i.g, %i.ax
  %i.ba = insertelement <2 x i32> poison, i32 %i.az, i64 0
  %i.bb = insertelement <2 x i32> %i.ba, i32 %i.ay, i64 1
  %i.bc = sitofp <2 x i32> %i.bb to <2 x float>
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.aj, <2 x float> %i.at)
  %i.be = fadd <2 x float> %i.t, %i.bd            ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.e
  %.0194284 = phi i32 [ %i.am, %bb.c ], [ %i.cv, %bb.e ] ; 2 uses
  %.0203282 = phi float [ 0.000000e+00, %bb.c ], [ %.2205, %bb.e ]
  %.0209280 = phi float [ 0.000000e+00, %bb.c ], [ %.2211, %bb.e ]
  %.0212279 = phi float [ 0.000000e+00, %bb.c ], [ %.2214, %bb.e ]
  %.0215278 = phi float [ 0.000000e+00, %bb.c ], [ %.2217, %bb.e ]
  %.0218277 = phi float [ 0.000000e+00, %bb.c ], [ %.2220, %bb.e ]
  %.0221276 = phi float [ 0.000000e+00, %bb.c ], [ %.2223, %bb.e ]
  %i.bf = phi <2 x float> [ zeroinitializer, %bb.c ], [ %i.gm, %bb.e ]
  %i.bg = mul nsw i32 %.0194284, %i.g
  %i.bh = sitofp i32 %i.bg to float
  %i.bi = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x float> %i.ai, %i.bj
  br label %_Z21checkDescriptorLimitsRiS_ii.exit

bb.d:                                             ; preds = %bb.e
  %i.bl = fadd float %.0195288, 1.000000e+00      ; 2 uses
  %i.bm = fadd float %i.bl, -2.000000e+00         ; 2 uses
  %i.bn = fmul float %i.bm, %i.bm
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.au, float %i.au, float %i.bn)
  %i.bp = fdiv float %i.bo, -4.500000e+00
  %i.bq = tail call noundef float @expf(float noundef %i.bp) #22 ; 7 uses
  %i.br = fmul float %.2223, %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv298.a ; 5 uses
  store float %i.br, ptr %i.bs, align 4, !tbaa !10
  %i.bt = getelementptr i8, ptr %i.bs, i64 4
  %i.bu = insertelement <4 x float> poison, float %.2211, i64 0
  %i.bv = insertelement <4 x float> %i.bu, float %.2217, i64 1
  %i.bw = insertelement <4 x float> %i.bv, float %.2205, i64 2
  %i.bx = insertelement <4 x float> %i.bw, float %.2220, i64 3
  %i.by = insertelement <4 x float> poison, float %i.bq, i64 0
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ca = fmul <4 x float> %i.bx, %i.bz
  store <4 x float> %i.ca, ptr %i.bt, align 4, !tbaa !10
  %i.cb = extractelement <2 x float> %i.gm, i64 0 ; 3 uses
  %i.cc = fmul float %i.cb, %i.bq
  %i.cd = getelementptr i8, ptr %i.bs, i64 20
  store float %i.cc, ptr %i.cd, align 4, !tbaa !10
  %i.ce = fmul float %.2214, %i.bq
  %i.cf = getelementptr i8, ptr %i.bs, i64 24
  store float %i.ce, ptr %i.cf, align 4, !tbaa !10
  %i.cg = extractelement <2 x float> %i.gm, i64 1 ; 3 uses
  %i.ch = fmul float %i.cg, %i.bq
  %indvars.iv.next299.a = add nuw nsw i64 %indvars.iv298.a, 8
  %i.ci = getelementptr i8, ptr %i.bs, i64 28
  store float %i.ch, ptr %i.ci, align 4, !tbaa !10
  %i.cj = fmul float %.2211, %.2211
  %i.ck = tail call float @llvm.fmuladd.f32(float %.2223, float %.2223, float %i.cj)
  %i.cl = tail call float @llvm.fmuladd.f32(float %.2217, float %.2217, float %i.ck)
  %i.cm = tail call float @llvm.fmuladd.f32(float %.2205, float %.2205, float %i.cl)
  %i.cn = tail call float @llvm.fmuladd.f32(float %.2220, float %.2220, float %i.cm)
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.cb, float %i.cn)
  %i.cp = tail call float @llvm.fmuladd.f32(float %.2214, float %.2214, float %i.co)
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.cg, float %i.cp)
  %i.cr = fmul float %i.cq, %i.bq
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.bq, float %.1225285) ; 3 uses
  %i.ct = add nsw i32 %.0198286, 5
  %i.cu = icmp slt i32 %.0198286, 7
  %indvars.iv.next = add nsw i32 %indvars.iv, 5
  br i1 %i.cu, label %bb.c, label %bb.l, !llvm.loop !225

bb.e:                                             ; preds = %bb.k
  %i.cv = add nsw i32 %.0194284, 1                ; 2 uses
  %exitcond297.not = icmp eq i32 %i.cv, %indvars.iv295
  br i1 %exitcond297.not, label %bb.d, label %.preheader, !llvm.loop !226

_Z21checkDescriptorLimitsRiS_ii.exit:             ; preds = %.preheader, %bb.k
  %.0275 = phi i32 [ %i.av, %.preheader ], [ %i.gn, %bb.k ] ; 2 uses
  %.1204273 = phi float [ %.0203282, %.preheader ], [ %.2205, %bb.k ] ; 2 uses
  %.1210271 = phi float [ %.0209280, %.preheader ], [ %.2211, %bb.k ] ; 2 uses
  %.1213270 = phi float [ %.0212279, %.preheader ], [ %.2214, %bb.k ] ; 2 uses
  %.1216269 = phi float [ %.0215278, %.preheader ], [ %.2217, %bb.k ] ; 2 uses
  %.1219268 = phi float [ %.0218277, %.preheader ], [ %.2220, %bb.k ] ; 2 uses
  %.1222267 = phi float [ %.0221276, %.preheader ], [ %.2223, %bb.k ] ; 2 uses
  %i.cw = phi <2 x float> [ %i.bf, %.preheader ], [ %i.gm, %bb.k ] ; 2 uses
  %i.cx = mul i32 %.0275, %i.g                    ; 2 uses
  %i.cy = sub i32 0, %i.cx
  %i.cz = insertelement <2 x i32> poison, i32 %i.cy, i64 0
  %i.da = insertelement <2 x i32> %i.cz, i32 %i.cx, i64 1
  %i.db = sitofp <2 x i32> %i.da to <2 x float>
  %i.dc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> %i.aj, <2 x float> %i.bk)
  %i.dd = fadd <2 x float> %i.t, %i.dc            ; 5 uses
  %i.de = extractelement <2 x float> %i.dd, i64 0
  %foldExtExtBinop = fsub <2 x float> %i.be, %i.dd
  %i.df = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.dg = extractelement <2 x float> %i.dd, i64 1
  %foldExtExtBinop307 = fsub <2 x float> %i.be, %i.dd ; 2 uses
  %foldExtExtBinop309 = fmul <2 x float> %foldExtExtBinop307, %foldExtExtBinop307
  %i.dh = extractelement <2 x float> %foldExtExtBinop309, i64 1
  %i.di = tail call float @llvm.fmuladd.f32(float %i.df, float %i.df, float %i.dh)
  %i.dj = fneg float %i.di
  %i.dk = fdiv float %i.dj, %i.r
  %i.dl = tail call noundef float @expf(float noundef %i.dk) #22 ; 2 uses
  %i.dm = tail call float @llvm.floor.f32(float %i.dg)
  %i.dn = tail call float @llvm.floor.f32(float %i.de)
  %i.do = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %i.dm, i64 1
  %i.dq = fptosi <2 x float> %i.dp to <2 x i32>
  %i.dr = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.dq, <2 x i32> zeroinitializer)
  %i.ds = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.dr, <2 x i32> %i.v) ; 3 uses
  %i.dt = extractelement <2 x i32> %i.ds, i64 0   ; 2 uses
  %i.du = tail call i32 @llvm.smax.i32(i32 %i.dt, i32 -1)
  %.0260 = add nsw i32 %i.du, 1
  %i.dv = extractelement <2 x i32> %i.ds, i64 1   ; 2 uses
  %i.dw = tail call i32 @llvm.smax.i32(i32 %i.dv, i32 -1)
  %.0258 = add nsw i32 %i.dw, 1
  %.1261 = tail call i32 @llvm.smin.i32(i32 %.0260, i32 %i.ak)
  %.1259 = tail call i32 @llvm.smin.i32(i32 %.0258, i32 %i.al)
  %i.dx = sitofp <2 x i32> %i.ds to <2 x float>
  %i.dy = fsub <2 x float> %i.dd, %i.dx           ; 3 uses
  %i.dz = sext i32 %i.dv to i64                   ; 2 uses
  %i.ea = mul i64 %i.ac, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ea ; 2 uses
  %i.ec = sext i32 %i.dt to i64                   ; 4 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.ec
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !10
  %i.ef = sext i32 %.1261 to i64                  ; 4 uses
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.ef
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !10
  %i.ei = sext i32 %.1259 to i64                  ; 2 uses
  %i.ej = mul i64 %i.ac, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ej ; 2 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.ec
  %i.em = load float, ptr %i.el, align 4, !tbaa !10
  %i.en = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.ef
  %i.eo = load float, ptr %i.en, align 4, !tbaa !10
  %i.ep = extractelement <2 x float> %i.dy, i64 0 ; 2 uses
  %i.eq = extractelement <2 x float> %i.dy, i64 1 ; 2 uses
  %i.er = fsub <2 x float> splat (float 1.000000e+00), %i.dy ; 2 uses
  %i.es = extractelement <2 x float> %i.er, i64 0 ; 2 uses
  %i.et = extractelement <2 x float> %i.er, i64 1 ; 2 uses
  %i.eu = fmul float %i.es, %i.et                 ; 2 uses
  %i.ev = fmul float %i.ep, %i.et                 ; 2 uses
  %i.ew = fmul float %i.eh, %i.ev
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.eu, float %i.ee, float %i.ew)
  %i.ey = fmul float %i.es, %i.eq                 ; 2 uses
  %i.ez = tail call float @llvm.fmuladd.f32(float %i.ey, float %i.em, float %i.ex)
  %i.fa = fmul float %i.ep, %i.eq                 ; 2 uses
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.fa, float %i.eo, float %i.ez) ; 2 uses
  %i.fc = mul i64 %i.ag, %i.dz
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.ec
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !10
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.ef
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !10
  %i.fi = mul i64 %i.ag, %i.ei
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.fi ; 2 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.ec
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !10
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.ef
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !10
  %i.fo = fmul float %i.ev, %i.fh
  %i.fp = tail call float @llvm.fmuladd.f32(float %i.eu, float %i.ff, float %i.fo)
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.ey, float %i.fl, float %i.fp)
  %i.fr = tail call float @llvm.fmuladd.f32(float %i.fa, float %i.fn, float %i.fq) ; 2 uses
  %i.fs = fmul float %i.n, %i.fr
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.m, float %i.fs)
  %i.fu = fmul float %i.dl, %i.ft                 ; 4 uses
  %i.fv = fneg float %i.fb
  %i.fw = fmul float %i.m, %i.fr
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.n, float %i.fw)
  %i.fy = fmul float %i.dl, %i.fx                 ; 4 uses
  %i.fz = fcmp ult float %i.fu, 0.000000e+00
  %i.ga = tail call noundef float @llvm.fabs.f32(float %i.fy) ; 2 uses
  br i1 %i.fz, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_Z21checkDescriptorLimitsRiS_ii.exit
  %i.gb = fadd float %.1222267, %i.fy
  %i.gc = fadd float %.1216269, %i.ga
  br label %bb.h

bb.g:                                             ; preds = %_Z21checkDescriptorLimitsRiS_ii.exit
  %i.gd = fadd float %.1210271, %i.fy
  %i.ge = fadd float %.1204273, %i.ga
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2223 = phi float [ %i.gb, %bb.f ], [ %.1222267, %bb.g ] ; 5 uses
  %.2217 = phi float [ %i.gc, %bb.f ], [ %.1216269, %bb.g ] ; 5 uses
  %.2211 = phi float [ %.1210271, %bb.f ], [ %i.gd, %bb.g ] ; 5 uses
  %.2205 = phi float [ %.1204273, %bb.f ], [ %i.ge, %bb.g ] ; 5 uses
  %i.gf = fcmp ult float %i.fy, 0.000000e+00
  %i.gg = tail call noundef float @llvm.fabs.f32(float %i.fu) ; 2 uses
  br i1 %i.gf, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gh = fadd float %.1219268, %i.fu
  %i.gi = fadd float %.1213270, %i.gg
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.gj = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.gk = insertelement <2 x float> %i.gj, float %i.gg, i64 1
  %i.gl = fadd <2 x float> %i.cw, %i.gk
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.2220 = phi float [ %i.gh, %bb.i ], [ %.1219268, %bb.j ] ; 5 uses
  %.2214 = phi float [ %i.gi, %bb.i ], [ %.1213270, %bb.j ] ; 5 uses
  %i.gm = phi <2 x float> [ %i.cw, %bb.i ], [ %i.gl, %bb.j ] ; 4 uses
  %i.gn = add nsw i32 %.0275, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.gn, %indvars.iv
  br i1 %exitcond.not, label %bb.e, label %_Z21checkDescriptorLimitsRiS_ii.exit, !llvm.loop !227

bb.l:                                             ; preds = %bb.d
  %i.go = add nsw i32 %.0199290, 5
  %i.gp = icmp slt i32 %.0199290, 7
  %indvars.iv.next296 = add nsw i32 %indvars.iv295, 5
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 32
  br i1 %i.gp, label %bb.b, label %vector.ph, !llvm.loop !228

vector.ph:                                        ; preds = %bb.l
  %i.gq = tail call noundef float @sqrtf(float noundef %i.cs) #22
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.gq, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 32 uses
  %wide.load = load <4 x float>, ptr %2, align 4, !tbaa !10
  %i.gr = fdiv <4 x float> %wide.load, %broadcast.splat
  store <4 x float> %i.gr, ptr %2, align 4, !tbaa !10
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load.1 = load <4 x float>, ptr %i.gs, align 4, !tbaa !10
  %i.gt = fdiv <4 x float> %wide.load.1, %broadcast.splat
  store <4 x float> %i.gt, ptr %i.gs, align 4, !tbaa !10
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %wide.load.2 = load <4 x float>, ptr %i.gu, align 4, !tbaa !10
  %i.gv = fdiv <4 x float> %wide.load.2, %broadcast.splat
  store <4 x float> %i.gv, ptr %i.gu, align 4, !tbaa !10
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load.3 = load <4 x float>, ptr %i.gw, align 4, !tbaa !10
  %i.gx = fdiv <4 x float> %wide.load.3, %broadcast.splat
  store <4 x float> %i.gx, ptr %i.gw, align 4, !tbaa !10
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %wide.load.4 = load <4 x float>, ptr %i.gy, align 4, !tbaa !10
  %i.gz = fdiv <4 x float> %wide.load.4, %broadcast.splat
  store <4 x float> %i.gz, ptr %i.gy, align 4, !tbaa !10
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %wide.load.5 = load <4 x float>, ptr %i.ha, align 4, !tbaa !10
  %i.hb = fdiv <4 x float> %wide.load.5, %broadcast.splat
  store <4 x float> %i.hb, ptr %i.ha, align 4, !tbaa !10
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %wide.load.6 = load <4 x float>, ptr %i.hc, align 4, !tbaa !10
  %i.hd = fdiv <4 x float> %wide.load.6, %broadcast.splat
  store <4 x float> %i.hd, ptr %i.hc, align 4, !tbaa !10
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %wide.load.7 = load <4 x float>, ptr %i.he, align 4, !tbaa !10
  %i.hf = fdiv <4 x float> %wide.load.7, %broadcast.splat
  store <4 x float> %i.hf, ptr %i.he, align 4, !tbaa !10
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %wide.load.8 = load <4 x float>, ptr %i.hg, align 4, !tbaa !10
  %i.hh = fdiv <4 x float> %wide.load.8, %broadcast.splat
  store <4 x float> %i.hh, ptr %i.hg, align 4, !tbaa !10
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %wide.load.9 = load <4 x float>, ptr %i.hi, align 4, !tbaa !10
  %i.hj = fdiv <4 x float> %wide.load.9, %broadcast.splat
  store <4 x float> %i.hj, ptr %i.hi, align 4, !tbaa !10
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  %wide.load.10 = load <4 x float>, ptr %i.hk, align 4, !tbaa !10
  %i.hl = fdiv <4 x float> %wide.load.10, %broadcast.splat
  store <4 x float> %i.hl, ptr %i.hk, align 4, !tbaa !10
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %wide.load.11 = load <4 x float>, ptr %i.hm, align 4, !tbaa !10
  %i.hn = fdiv <4 x float> %wide.load.11, %broadcast.splat
  store <4 x float> %i.hn, ptr %i.hm, align 4, !tbaa !10
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %wide.load.12 = load <4 x float>, ptr %i.ho, align 4, !tbaa !10
  %i.hp = fdiv <4 x float> %wide.load.12, %broadcast.splat
  store <4 x float> %i.hp, ptr %i.ho, align 4, !tbaa !10
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %wide.load.13 = load <4 x float>, ptr %i.hq, align 4, !tbaa !10
  %i.hr = fdiv <4 x float> %wide.load.13, %broadcast.splat
  store <4 x float> %i.hr, ptr %i.hq, align 4, !tbaa !10
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 2 uses
  %wide.load.14 = load <4 x float>, ptr %i.hs, align 4, !tbaa !10
  %i.ht = fdiv <4 x float> %wide.load.14, %broadcast.splat
  store <4 x float> %i.ht, ptr %i.hs, align 4, !tbaa !10
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  %wide.load.15 = load <4 x float>, ptr %i.hu, align 4, !tbaa !10
  %i.hv = fdiv <4 x float> %wide.load.15, %broadcast.splat
  store <4 x float> %i.hv, ptr %i.hu, align 4, !tbaa !10
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %wide.load.16 = load <4 x float>, ptr %i.hw, align 4, !tbaa !10
  %i.hx = fdiv <4 x float> %wide.load.16, %broadcast.splat
  store <4 x float> %i.hx, ptr %i.hw, align 4, !tbaa !10
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %wide.load.17 = load <4 x float>, ptr %i.hy, align 4, !tbaa !10
  %i.hz = fdiv <4 x float> %wide.load.17, %broadcast.splat
  store <4 x float> %i.hz, ptr %i.hy, align 4, !tbaa !10
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %wide.load.18 = load <4 x float>, ptr %i.ia, align 4, !tbaa !10
  %i.ib = fdiv <4 x float> %wide.load.18, %broadcast.splat
  store <4 x float> %i.ib, ptr %i.ia, align 4, !tbaa !10
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %wide.load.19 = load <4 x float>, ptr %i.ic, align 4, !tbaa !10
  %i.id = fdiv <4 x float> %wide.load.19, %broadcast.splat
  store <4 x float> %i.id, ptr %i.ic, align 4, !tbaa !10
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %wide.load.20 = load <4 x float>, ptr %i.ie, align 4, !tbaa !10
  %i.if = fdiv <4 x float> %wide.load.20, %broadcast.splat
  store <4 x float> %i.if, ptr %i.ie, align 4, !tbaa !10
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 2 uses
  %wide.load.21 = load <4 x float>, ptr %i.ig, align 4, !tbaa !10
  %i.ih = fdiv <4 x float> %wide.load.21, %broadcast.splat
  store <4 x float> %i.ih, ptr %i.ig, align 4, !tbaa !10
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  %wide.load.22 = load <4 x float>, ptr %i.ii, align 4, !tbaa !10
  %i.ij = fdiv <4 x float> %wide.load.22, %broadcast.splat
  store <4 x float> %i.ij, ptr %i.ii, align 4, !tbaa !10
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 2 uses
  %wide.load.23 = load <4 x float>, ptr %i.ik, align 4, !tbaa !10
  %i.il = fdiv <4 x float> %wide.load.23, %broadcast.splat
  store <4 x float> %i.il, ptr %i.ik, align 4, !tbaa !10
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 384 ; 2 uses
  %wide.load.24 = load <4 x float>, ptr %i.im, align 4, !tbaa !10
  %i.in = fdiv <4 x float> %wide.load.24, %broadcast.splat
  store <4 x float> %i.in, ptr %i.im, align 4, !tbaa !10
  %i.io = getelementptr inbounds nuw i8, ptr %2, i64 400 ; 2 uses
  %wide.load.25 = load <4 x float>, ptr %i.io, align 4, !tbaa !10
  %i.ip = fdiv <4 x float> %wide.load.25, %broadcast.splat
  store <4 x float> %i.ip, ptr %i.io, align 4, !tbaa !10
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 416 ; 2 uses
  %wide.load.26 = load <4 x float>, ptr %i.iq, align 4, !tbaa !10
  %i.ir = fdiv <4 x float> %wide.load.26, %broadcast.splat
  store <4 x float> %i.ir, ptr %i.iq, align 4, !tbaa !10
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 432 ; 2 uses
  %wide.load.27 = load <4 x float>, ptr %i.is, align 4, !tbaa !10
  %i.it = fdiv <4 x float> %wide.load.27, %broadcast.splat
  store <4 x float> %i.it, ptr %i.is, align 4, !tbaa !10
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 448 ; 2 uses
  %wide.load.28 = load <4 x float>, ptr %i.iu, align 4, !tbaa !10
  %i.iv = fdiv <4 x float> %wide.load.28, %broadcast.splat
  store <4 x float> %i.iv, ptr %i.iu, align 4, !tbaa !10
  %i.iw = getelementptr inbounds nuw i8, ptr %2, i64 464 ; 2 uses
  %wide.load.29 = load <4 x float>, ptr %i.iw, align 4, !tbaa !10
  %i.ix = fdiv <4 x float> %wide.load.29, %broadcast.splat
  store <4 x float> %i.ix, ptr %i.iw, align 4, !tbaa !10
  %i.iy = getelementptr inbounds nuw i8, ptr %2, i64 480 ; 2 uses
  %wide.load.30 = load <4 x float>, ptr %i.iy, align 4, !tbaa !10
  %i.iz = fdiv <4 x float> %wide.load.30, %broadcast.splat
  store <4 x float> %i.iz, ptr %i.iy, align 4, !tbaa !10
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 496 ; 2 uses
  %wide.load.31 = load <4 x float>, ptr %i.ja, align 4, !tbaa !10
  %i.jb = fdiv <4 x float> %wide.load.31, %broadcast.splat
  store <4 x float> %i.jb, ptr %i.ja, align 4, !tbaa !10
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse.cvtss2si(<4 x float>) #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv11xfeatures2d32MultiscaleDerivativesKAZEInvokerD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv11xfeatures2d32MultiscaleDerivativesKAZEInvokerclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %3 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %4 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %5 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %6 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129  ; 15 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !126    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !128
  %i.f = icmp slt i32 %i.c, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 432
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 432
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 432
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 432
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 224
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.v = sext i32 %i.c to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit78, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN2cv3MataSERKNS_7MatExprE.exit78
  %indvars.iv = phi i64 [ %i.v, %.lr.ph ], [ %indvars.iv.next, %_ZN2cv3MataSERKNS_7MatExprE.exit78 ] ; 16 uses
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw [1688 x i8], ptr %i.w, i64 %indvars.iv ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1248
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 1680
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !70
  call void @_ZN2cv26compute_scharr_derivativesERKNS_3MatERS0_iii(ptr noundef nonnull align 8 dereferenceable(208) %i.y, ptr noundef nonnull align 8 dereferenceable(208) %i.x, i32 noundef 1, i32 noundef 0, i32 noundef %i.aa)
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.ac = getelementptr inbounds nuw [1688 x i8], ptr %i.ab, i64 %indvars.iv ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1248
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 208
end_hunk_0
