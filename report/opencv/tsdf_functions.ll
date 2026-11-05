Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tsdf_functions?download=true
inline.NumInlined: 1096
inline.NumDeleted: 455
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 31
begin_hunk_0_@llvm.floor.f32
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_INS_3VecIfLi4EEEEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !32
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 101
  store i32 %i.d, ptr %0, align 8, !tbaa !32
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !32     ; 2 uses
  %i.f = and i32 %i.e, 4095
  %i.g = icmp eq i32 %i.f, 101
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.e, 31
  %i.j = icmp eq i32 %i.i, 5
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !22
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 4, i32 noundef %i.l, ptr noundef null)
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.n

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.p, align 8
  store i32 -2113863579, ptr %3, align 8, !tbaa !29
  store ptr %0, ptr %i.o, align 8, !tbaa !30
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 101, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.d, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_21raycastTsdfVolumeUnitERKNS0_14VolumeSettingsERKNS0_4MatxIfLi4ELi4EEEiiRKNS0_11_InputArrayESE_RKNS0_12_OutputArrayESH_E3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #17 align 2 {
bb.a:
  %2 = alloca %"class.cv::Point3_.12", align 16   ; 6 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !61    ; 14 uses
  %i.a = load ptr, ptr %.val, align 8, !tbaa !270, !nonnull !110, !align !111 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.d = load float, ptr %i.c, align 4, !tbaa !12, !noalias !271 ; 3 uses
  %i.e = load <8 x float>, ptr %i.a, align 4, !tbaa !12, !noalias !110 ; 4 uses
  %i.f = load float, ptr %i.b, align 4, !tbaa !12, !noalias !271
  %i.g = load <4 x float>, ptr %i.a, align 4
  %i.h = shufflevector <4 x float> %i.g, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = load float, ptr %i.i, align 4, !tbaa !12, !noalias !272
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.l = load float, ptr %i.k, align 4, !tbaa !12, !noalias !272
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.n = load float, ptr %i.m, align 4, !tbaa !12, !noalias !272
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !273, !nonnull !110, !align !111 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !12, !noalias !274
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load <2 x float>, ptr %i.p, align 4, !tbaa !12, !noalias !274 ; 2 uses
  %i.u = load <2 x float>, ptr %i.s, align 4, !tbaa !12, !noalias !274 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.w = load float, ptr %i.v, align 4, !tbaa !12, !noalias !274
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.y = load float, ptr %i.x, align 4, !tbaa !12, !noalias !274
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  %i.aa = load float, ptr %i.z, align 4, !tbaa !12, !noalias !274
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !12, !noalias !274
  %i.ad = load i32, ptr %1, align 4, !tbaa !40    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !41 ; 2 uses
  %i.ag = icmp slt i32 %i.ad, %i.af
  br i1 %i.ag, label %.lr.ph431.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv21raycastTsdfVolumeUnitERKNS0_14VolumeSettingsERKNS0_4MatxIfLi4ELi4EEEiiRKNS0_11_InputArrayESA_RKNS0_12_OutputArrayESD_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit"

.lr.ph431.i.i.i:                                  ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %.sroa.228.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.at = load ptr, ptr %i.ah, align 8, !tbaa !275, !nonnull !110, !align !113 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !115
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph431.split.preheader.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv21raycastTsdfVolumeUnitERKNS0_14VolumeSettingsERKNS0_4MatxIfLi4ELi4EEEiiRKNS0_11_InputArrayESA_RKNS0_12_OutputArrayESD_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit"

.lr.ph431.split.preheader.i.i.i:                  ; preds = %.lr.ph431.i.i.i
  %i.ax = sext i32 %i.ad to i64
  %i.ay = insertelement <2 x float> poison, float %i.r, i64 0
  %i.az = insertelement <2 x float> %i.ay, float %i.w, i64 1
  %i.ba = shufflevector <2 x float> %i.t, <2 x float> %i.u, <2 x i32> <i32 1, i32 3>
  %i.bb = shufflevector <2 x float> %i.t, <2 x float> %i.u, <2 x i32> <i32 0, i32 2>
  %i.bc = shufflevector <8 x float> %i.e, <8 x float> poison, <2 x i32> <i32 7, i32 3>
  %i.bd = shufflevector <8 x float> %i.e, <8 x float> poison, <2 x i32> <i32 6, i32 2>
  %i.be = shufflevector <8 x float> %i.e, <8 x float> poison, <2 x i32> <i32 5, i32 1>
  %i.bf = shufflevector <8 x float> %i.e, <8 x float> poison, <2 x i32> <i32 4, i32 0>
  %i.bg = insertelement <2 x float> %i.h, float %i.f, i64 1 ; 2 uses
  br label %.lr.ph431.split.i.i.i

.lr.ph431.split.i.i.i:                            ; preds = %._crit_edge428.i.i.i, %.lr.ph431.split.preheader.i.i.i
  %i.bh = phi i32 [ %i.af, %.lr.ph431.split.preheader.i.i.i ], [ %i.cc, %._crit_edge428.i.i.i ]
  %i.bi = phi ptr [ %i.at, %.lr.ph431.split.preheader.i.i.i ], [ %i.cd, %._crit_edge428.i.i.i ] ; 4 uses
  %indvars.iv435.i.i.i = phi i64 [ %i.ax, %.lr.ph431.split.preheader.i.i.i ], [ %indvars.iv.next436.i.i.i, %._crit_edge428.i.i.i ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !23
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 128
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !84
  %i.bn = mul i64 %i.bm, %indvars.iv435.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bn
  %i.bp = load ptr, ptr %i.ai, align 8, !tbaa !276, !nonnull !110, !align !113 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !23
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 128
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !84
  %i.bu = mul i64 %i.bt, %indvars.iv435.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !115
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph427.i.i.i, label %._crit_edge428.i.i.i

.lr.ph427.i.i.i:                                  ; preds = %.lr.ph431.split.i.i.i
  %i.bz = trunc nsw i64 %indvars.iv435.i.i.i to i32
  %i.ca = sitofp i32 %i.bz to float
  %i.cb = insertelement <2 x float> poison, float %i.ca, i64 1
  br label %.lr.ph.i.i.i.i.i

._crit_edge428.loopexit.i.i.i:                    ; preds = %bb.p
  %.pre.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !41
  br label %._crit_edge428.i.i.i

._crit_edge428.i.i.i:                             ; preds = %._crit_edge428.loopexit.i.i.i, %.lr.ph431.split.i.i.i
  %i.cc = phi i32 [ %.pre.i.i.i, %._crit_edge428.loopexit.i.i.i ], [ %i.bh, %.lr.ph431.split.i.i.i ] ; 2 uses
  %i.cd = phi ptr [ %i.xu, %._crit_edge428.loopexit.i.i.i ], [ %i.bi, %.lr.ph431.split.i.i.i ]
  %indvars.iv.next436.i.i.i = add nsw i64 %indvars.iv435.i.i.i, 1 ; 2 uses
  %i.ce = sext i32 %i.cc to i64
  %i.cf = icmp slt i64 %indvars.iv.next436.i.i.i, %i.ce
  br i1 %i.cf, label %.lr.ph431.split.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv21raycastTsdfVolumeUnitERKNS0_14VolumeSettingsERKNS0_4MatxIfLi4ELi4EEEiiRKNS0_11_InputArrayESA_RKNS0_12_OutputArrayESD_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit", !llvm.loop !266

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.p, %.lr.ph427.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph427.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.p ] ; 4 uses
  %i.cg = load ptr, ptr %i.aj, align 8, !tbaa !277, !nonnull !110, !align !111 ; 2 uses
  %i.ch = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.ci = uitofp nneg i32 %i.ch to float
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load <2 x float>, ptr %i.cj, align 4, !tbaa !12
  %i.cl = insertelement <2 x float> %i.cb, float %i.ci, i64 0
  %i.cm = fsub <2 x float> %i.cl, %i.ck
  %i.cn = load <2 x float>, ptr %i.cg, align 4, !tbaa !12
  %i.co = fmul <2 x float> %i.cn, %i.cm           ; 4 uses
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.cp, <2 x float> zeroinitializer)
  %i.cr = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.cr, <2 x float> %i.cq)
  %i.ct = fadd <2 x float> %i.bd, %i.cs
  %i.cu = extractelement <2 x float> %i.co, i64 0
  %i.cv = call float @llvm.fmuladd.f32(float %i.j, float %i.cu, float 0.000000e+00)
  %i.cw = extractelement <2 x float> %i.co, i64 1
  %i.cx = call float @llvm.fmuladd.f32(float %i.l, float %i.cw, float %i.cv)
  %i.cy = fadd float %i.n, %i.cx
  %i.cz = fpext <2 x float> %i.ct to <2 x double> ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.cz, %i.cz
  %3 = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.da = extractelement <2 x double> %i.cz, i64 0 ; 2 uses
  %i.db = call double @llvm.fmuladd.f64(double %i.da, double %i.da, double %3)
  %i.dc = fpext float %i.cy to double             ; 3 uses
  %i.dd = call noundef double @llvm.fmuladd.f64(double %i.dc, double %i.dc, double %i.db) ; 2 uses
  %sqrt.i.i.i.i.i = call noundef double @llvm.sqrt.f64(double %i.dd)
  %i.de = fcmp une double %i.dd, 0.000000e+00
  %i.df = fdiv double 1.000000e+00, %sqrt.i.i.i.i.i
  %i.dg = select i1 %i.de, double %i.df, double 0.000000e+00 ; 2 uses
  %i.dh = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x double> %i.di, %i.cz
  %i.dk = fptrunc <2 x double> %i.dj to <2 x float> ; 2 uses
  %i.dl = fmul double %i.dg, %i.dc
  %i.dm = fptrunc double %i.dl to float           ; 2 uses
  %i.dn = fdiv float 1.000000e+00, %i.dm          ; 2 uses
  %i.do = load ptr, ptr %i.ak, align 8, !tbaa !278, !nonnull !110, !align !111 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !74
  %i.dr = fsub float %i.dq, %i.d
  %i.ds = fmul float %i.dr, %i.dn                 ; 4 uses
  %i.dt = load ptr, ptr %i.al, align 8, !tbaa !279, !nonnull !110, !align !111 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load float, ptr %i.du, align 4, !tbaa !74
  %i.dw = fsub float %i.dv, %i.d
  %i.dx = fmul float %i.dw, %i.dn                 ; 4 uses
  %i.dy = fcmp olt float %i.ds, %i.dx
  %.sroa.speculated280.i.i.i = select i1 %i.dy, float %i.ds, float %i.dx ; 2 uses
  %i.dz = fdiv <2 x float> splat (float 1.000000e+00), %i.dk
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.eb = load <2 x float>, ptr %i.do, align 4, !tbaa !12
  %i.ec = fsub <2 x float> %i.eb, %i.bg
  %i.ed = fmul <2 x float> %i.ec, %i.ea           ; 4 uses
  %i.ee = load <2 x float>, ptr %i.dt, align 4, !tbaa !12
  %i.ef = fsub <2 x float> %i.ee, %i.bg
  %i.eg = fmul <2 x float> %i.ef, %i.ea           ; 4 uses
  %i.eh = fcmp olt <2 x float> %i.ed, %i.eg
  %i.ei = select <2 x i1> %i.eh, <2 x float> %i.ed, <2 x float> %i.eg ; 2 uses
  %i.ej = extractelement <2 x float> %i.ei, i64 0 ; 2 uses
  %i.ek = extractelement <2 x float> %i.ei, i64 1 ; 2 uses
  %i.el = fcmp olt float %i.ej, %i.ek
  %i.em = select i1 %i.el, float %i.ek, float %i.ej ; 2 uses
  %i.en = fcmp olt float %i.em, %.sroa.speculated280.i.i.i
  %i.eo = select i1 %i.en, float %.sroa.speculated280.i.i.i, float %i.em ; 2 uses
  %i.ep = fcmp olt float %i.eo, 0.000000e+00
  %i.eq = fcmp olt <2 x float> %i.eg, %i.ed
  %i.er = select <2 x i1> %i.eq, <2 x float> %i.ed, <2 x float> %i.eg ; 2 uses
  %i.es = fcmp olt float %i.dx, %i.ds
  %.sroa.speculated.i.i.i = select i1 %i.es, float %i.ds, float %i.dx ; 2 uses
  %.sroa.speculated442.i.i.i = select i1 %i.ep, float 0.000000e+00, float %i.eo
  %i.et = extractelement <2 x float> %i.er, i64 0 ; 2 uses
  %i.eu = extractelement <2 x float> %i.er, i64 1 ; 2 uses
  %i.ev = fcmp olt float %i.eu, %i.et
  %i.ew = select i1 %i.ev, float %i.eu, float %i.et ; 2 uses
  %i.ex = fcmp olt float %.sroa.speculated.i.i.i, %i.ew
  %.sroa.speculated438.i.i.i = select i1 %i.ex, float %.sroa.speculated.i.i.i, float %i.ew
  %i.ey = load ptr, ptr %i.am, align 8, !tbaa !280, !nonnull !110, !align !111
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !12 ; 6 uses
  %i.fa = fadd float %i.ez, %.sroa.speculated442.i.i.i ; 5 uses
  %i.fb = fsub float %.sroa.speculated438.i.i.i, %i.ez ; 2 uses
  %i.fc = fcmp olt float %i.fa, %i.fb
  br i1 %i.fc, label %bb.b, label %bb.p

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.fd = load ptr, ptr %i.an, align 8, !tbaa !281, !nonnull !110, !align !111
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !12 ; 3 uses
  %i.ff = fmul float %i.d, %i.fe                  ; 2 uses
  %i.fg = insertelement <2 x float> poison, float %i.fe, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fi = fmul <2 x float> %i.bc, %i.fh           ; 2 uses
  %i.fj = fmul <2 x float> %i.fh, %i.dk           ; 3 uses
  %i.fk = fmul float %i.fe, %i.dm                 ; 3 uses
  %i.fl = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fm = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fn = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fo = fmul <2 x float> %i.fm, %i.fn           ; 3 uses
  %i.fp = fmul float %i.ez, %i.fk                 ; 2 uses
  %i.fq = load ptr, ptr %i.ao, align 8, !tbaa !282, !nonnull !110, !align !113 ; 7 uses
  %i.fr = load ptr, ptr %i.ap, align 8, !tbaa !283, !nonnull !110, !align !111 ; 4 uses
  %i.fs = load ptr, ptr %i.aq, align 8, !tbaa !284, !nonnull !110, !align !111 ; 9 uses
  %i.ft = load i32, ptr %i.fr, align 4, !tbaa !31 ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !31 ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !31 ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !23 ; 36 uses
  %i.ga = load i32, ptr %i.fs, align 4, !tbaa !31 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !31 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !31 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !31 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !31 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fs, i64 20
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !31 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !31 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fs, i64 28
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !31 ; 4 uses
  %i.gp = fmul float %i.fa, %i.fk
  %i.gq = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = fmul <2 x float> %i.gr, %i.fj
  %i.gt = fadd <2 x float> %i.fi, %i.gs           ; 4 uses
  %i.gu = extractelement <2 x float> %i.gt, i64 1 ; 2 uses
  %i.gv = call float @llvm.floor.f32(float %i.gu)
  %i.gw = fptosi float %i.gv to i32               ; 2 uses
  %i.gx = mul nsw i32 %i.ft, %i.gw
  %i.gy = sitofp i32 %i.gw to float
  %i.gz = fsub float %i.gu, %i.gy
  %i.ha = fadd float %i.ff, %i.gp                 ; 4 uses
  %i.hb = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hc = extractelement <2 x float> %i.gt, i64 0
  %i.hd = call float @llvm.floor.f32(float %i.hc)
  %i.he = call float @llvm.floor.f32(float %i.ha)
  %i.hf = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.hg = insertelement <2 x float> %i.hf, float %i.he, i64 1
  %i.hh = fptosi <2 x float> %i.hg to <2 x i32>   ; 3 uses
  %i.hi = extractelement <2 x i32> %i.hh, i64 0
  %i.hj = mul nsw i32 %i.fv, %i.hi
  %i.hk = add nsw i32 %i.hj, %i.gx
  %i.hl = extractelement <2 x i32> %i.hh, i64 1
  %i.hm = mul nsw i32 %i.fx, %i.hl
  %i.hn = add nsw i32 %i.hk, %i.hm                ; 8 uses
  %i.ho = add nsw i32 %i.hn, %i.ga
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [2 x i8], ptr %i.fz, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !119
  %i.hs = add nsw i32 %i.gc, %i.hn
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [2 x i8], ptr %i.fz, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !119
  %i.hw = add nsw i32 %i.ge, %i.hn
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [2 x i8], ptr %i.fz, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !119
  %i.ia = add nsw i32 %i.gg, %i.hn
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [2 x i8], ptr %i.fz, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !119
  %i.ie = add nsw i32 %i.gi, %i.hn
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [2 x i8], ptr %i.fz, i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !119
  %i.ii = insertelement <2 x i8> poison, i8 %i.ih, i64 0
  %i.ij = insertelement <2 x i8> %i.ii, i8 %i.hr, i64 1
  %i.ik = sitofp <2 x i8> %i.ij to <2 x float>
  %i.il = fmul nnan <2 x float> %i.ik, splat (float -7.812500e-03) ; 2 uses
  %i.im = add nsw i32 %i.gk, %i.hn
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [2 x i8], ptr %i.fz, i64 %i.in
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !119
  %i.iq = insertelement <2 x i8> poison, i8 %i.ip, i64 0
  %i.ir = insertelement <2 x i8> %i.iq, i8 %i.hv, i64 1
  %i.is = sitofp <2 x i8> %i.ir to <2 x float>
  %i.it = fmul nnan <2 x float> %i.is, splat (float -7.812500e-03)
  %i.iu = add nsw i32 %i.gm, %i.hn
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds [2 x i8], ptr %i.fz, i64 %i.iv
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !119
  %i.iy = insertelement <2 x i8> poison, i8 %i.ix, i64 0
  %i.iz = insertelement <2 x i8> %i.iy, i8 %i.hz, i64 1
  %i.ja = sitofp <2 x i8> %i.iz to <2 x float>
  %i.jb = fmul nnan <2 x float> %i.ja, splat (float -7.812500e-03) ; 2 uses
  %i.jc = add nsw i32 %i.go, %i.hn
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [2 x i8], ptr %i.fz, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !119
  %i.jg = insertelement <2 x i8> poison, i8 %i.jf, i64 0
  %i.jh = insertelement <2 x i8> %i.jg, i8 %i.id, i64 1
  %i.ji = sitofp <2 x i8> %i.jh to <2 x float>
  %i.jj = fmul nnan <2 x float> %i.ji, splat (float -7.812500e-03)
  %i.jk = sitofp <2 x i32> %i.hh to <2 x float>
  %i.jl = insertelement <2 x float> %i.gt, float %i.ha, i64 1
  %i.jm = fsub <2 x float> %i.jl, %i.jk           ; 2 uses
  %i.jn = fsub <2 x float> %i.it, %i.il
  %i.jo = shufflevector <2 x float> %i.jm, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.jp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jo, <2 x float> %i.jn, <2 x float> %i.il) ; 2 uses
  %i.jq = fsub <2 x float> %i.jj, %i.jb
  %i.jr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jo, <2 x float> %i.jq, <2 x float> %i.jb)
  %i.js = fsub <2 x float> %i.jr, %i.jp
  %i.jt = shufflevector <2 x float> %i.jm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ju = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jt, <2 x float> %i.js, <2 x float> %i.jp) ; 2 uses
  %i.jv = extractelement <2 x float> %i.ju, i64 0
  %i.jw = extractelement <2 x float> %i.ju, i64 1 ; 2 uses
  %i.jx = fsub float %i.jv, %i.jw
  %i.jy = call noundef float @llvm.fmuladd.f32(float %i.gz, float %i.jx, float %i.jw) ; 3 uses
  %i.jz = fsub float %i.fb, %i.fa
  %i.ka = fdiv float %i.jz, %i.ez
  %i.kb = call float @llvm.floor.f32(float %i.ka)
  %i.kc = fptosi float %i.kb to i32               ; 3 uses
  %i.kd = icmp sgt i32 %i.kc, 0
  br i1 %i.kd, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.ke = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !22
  %i.kg = icmp slt i32 %i.kf, 2
  %i.kh = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
end_hunk_0
