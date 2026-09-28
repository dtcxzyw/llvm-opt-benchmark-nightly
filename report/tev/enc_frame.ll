Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_frame?download=true
inline.NumInlined: 8030
inline.NumDeleted: 4373
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZNSt3__16vectorIiNS_9allocatorIiEEE18__assign_with_sizeB8nn180100IPiS5_EEvT_T0_l:bb.a
bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.x, align 8, !tbaa !584
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEE13__vdeallocateEv.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEE13__vdeallocateEv.exit: ; preds = %bb.h, %bb.i
  %i.y = phi ptr [ %i.b, %bb.h ], [ null, %bb.i ] ; 2 uses
  %i.z = icmp ugt i64 %3, 4611686018427387903
  br i1 %i.z, label %bb.j, label %_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8nn180100Em.exit

bb.j:                                             ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEE13__vdeallocateEv.exit
  tail call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #31
  unreachable

_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8nn180100Em.exit: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEE13__vdeallocateEv.exit
  %i.aa = ptrtoint ptr %i.y to i64
  %.not.i16 = icmp ult ptr %i.y, inttoptr (i64 9223372036854775804 to ptr)
  %i.ab = ashr exact i64 %i.aa, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 %3)
  %.0.i = select i1 %.not.i16, i64 %.sroa.speculated.i, i64 4611686018427387903 ; 3 uses
  %i.ac = icmp ugt i64 %.0.i, 4611686018427387903
  br i1 %i.ac, label %bb.k, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit

bb.k:                                             ; preds = %_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8nn180100Em.exit
  tail call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #31
  unreachable

_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit: ; preds = %_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8nn180100Em.exit
  %i.ad = shl nuw i64 %.0.i, 2
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #32 ; 5 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !583
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !584
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.0.i
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !111
  %i.ah = ptrtoint ptr %2 to i64
  %i.ai = ptrtoint ptr %1 to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i17 = icmp eq ptr %2, %1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i17, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPiS5_EEvT_T0_m.exit18, label %bb.l

bb.l:                                             ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ae, ptr align 4 %1, i64 %i.aj, i1 false)
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPiS5_EEvT_T0_m.exit18

_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPiS5_EEvT_T0_m.exit18: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit, %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !584
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPiS5_EEvT_T0_m.exit, %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPiS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_.exit, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPiS5_EEvT_T0_m.exit18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i32 -1, 1) i32 @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_126ComputeJPEGTranscodingDataERKNS_4jpeg8JPEGDataERKNS_11FrameHeaderEPS0_PNS_19ModularFrameEncoderEPNS_18PassesEncoderStateEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SG_E12CallInitFuncEPvm"(ptr nofree readnone captures(none) %0, i64 %1) #18 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_126ComputeJPEGTranscodingDataERKNS_4jpeg8JPEGDataERKNS_11FrameHeaderEPS0_PNS_19ModularFrameEncoderEPNS_18PassesEncoderStateEE3$_0EENS_6StatusESB_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SG_E12CallDataFuncEPvjm"(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 %2) #19 align 2 {
bb.a:
  %i.a = alloca [257 x i32], align 16             ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %"_ZZN3jxl12_GLOBAL__N_126ComputeJPEGTranscodingDataERKNS_4jpeg8JPEGDataERKNS_11FrameHeaderEPNS_10ThreadPoolEPNS_19ModularFrameEncoderEPNS_18PassesEncoderStateEENK3$_0clEjm.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1297, !nonnull !85, !align !635 ; 8 uses
  %i.f = zext i32 %1 to i64                       ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !1299, !nonnull !85, !align !635
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !591  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !345
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !543
  %i.m = mul i64 %i.l, %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.n, i64 64) ]
  %i.o = load i32, ptr %i.h, align 8, !tbaa !404
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %"_ZZN3jxl12_GLOBAL__N_126ComputeJPEGTranscodingDataERKNS_4jpeg8JPEGDataERKNS_11FrameHeaderEPNS_10ThreadPoolEPNS_19ModularFrameEncoderEPNS_18PassesEncoderStateEENK3$_0clEjm.exit", label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %bb.b
  %i.p = shl nuw nsw i64 %i.f, 3                  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = add nuw nsw i64 %i.p, 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %.lr.ph84.i
  %.06182.i = phi i64 [ 0, %.lr.ph84.i ], [ %i.ac, %bb.i ] ; 3 uses
  %i.x = shl nuw nsw i64 %.06182.i, 3             ; 2 uses
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !1300, !nonnull !85, !align !635 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !142 ; 2 uses
  %.sroa.speculated72.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ac = add nuw nsw i64 %.06182.i, 1            ; 3 uses
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !142 ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1028) %i.a, i8 0, i64 1028, i1 false)
  %i.af = icmp ugt i64 %i.aa, %i.p
  br i1 %i.af, label %.lr.ph.i, label %.preheader75.i.preheader

.preheader75.i.preheader:                         ; preds = %._crit_edge.i, %.lr.ph.i, %bb.c
  br label %.preheader75.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !1301, !nonnull !85, !align !635 ; 2 uses
  %.val66.i = load ptr, ptr %i.ag, align 8, !tbaa !597
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val67.i = load ptr, ptr %i.ah, align 8, !tbaa !598 ; 2 uses
  %i.ai = getelementptr i8, ptr %.val66.i, i64 144
  %.val66.val.i = load ptr, ptr %i.ai, align 8, !tbaa !574 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val67.i, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !298
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %.val66.val.i, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !599
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !600
  %i.ar = zext i32 %i.aq to i64
  %i.as = load ptr, ptr %i.t, align 8, !tbaa !1302, !nonnull !85, !align !635
  %i.at = load i64, ptr %i.as, align 8, !tbaa !142 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.val67.i, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !298
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [48 x i8], ptr %.val66.val.i, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !599
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !600
  %i.bc = zext i32 %i.bb to i64
  %i.bd = icmp ugt i64 %i.ae, %i.x
  br i1 %i.bd, label %.lr.ph.split.i, label %.preheader75.i.preheader

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %.idx.i = shl i64 %i.at, 8
  %i.be = load ptr, ptr %i.u, align 8, !tbaa !1303, !nonnull !85, !align !635
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !583
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx.i
  %i.bh = load ptr, ptr %i.v, align 8, !tbaa !1304, !nonnull !85, !align !671
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !96
  %i.bj = fneg float %i.bi
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float 8.400000e+01, float 1.270000e+02)
  br label %.preheader.lr.ph.i

.preheader75.i:                                   ; preds = %.preheader75.i, %.preheader75.i.preheader
  %.021.i.i = phi i64 [ 0, %.preheader75.i.preheader ], [ %i.bw, %.preheader75.i ] ; 4 uses
  %.01220.i.i = phi i8 [ 0, %.preheader75.i.preheader ], [ %spec.select17.i.i.1, %.preheader75.i ]
  %.01319.i.i = phi i32 [ 0, %.preheader75.i.preheader ], [ %i.bt, %.preheader75.i ]
  %.01418.i.i = phi i32 [ 0, %.preheader75.i.preheader ], [ %spec.select.i.i.1, %.preheader75.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.021.i.i
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !298
  %i.bn = add nsw i32 %i.bm, %.01319.i.i          ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, %.01418.i.i
  %i.bp = trunc i64 %.021.i.i to i8
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.bn, i32 %.01418.i.i) ; 2 uses
  %spec.select17.i.i = select i1 %i.bo, i8 %i.bp, i8 %.01220.i.i
  %i.bq = or disjoint i64 %.021.i.i, 1            ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !298
  %i.bt = add nsw i32 %i.bs, %i.bn                ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, %spec.select.i.i
  %i.bv = trunc i64 %i.bq to i8
  %spec.select.i.i.1 = tail call i32 @llvm.smax.i32(i32 %i.bt, i32 %spec.select.i.i) ; 2 uses
  %spec.select17.i.i.1 = select i1 %i.bu, i8 %i.bv, i8 %spec.select17.i.i ; 2 uses
  %i.bw = add nuw nsw i64 %.021.i.i, 2            ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.bw, 256
  br i1 %exitcond.not.i.i.1, label %_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.preheader.i, label %.preheader75.i, !llvm.loop !1290

.preheader.lr.ph.i:                               ; preds = %._crit_edge.i, %.lr.ph.split.i
  %.06078.i = phi i64 [ %i.p, %.lr.ph.split.i ], [ %i.cd, %._crit_edge.i ] ; 2 uses
  %i.bx = shl nuw nsw i64 %.06078.i, 6            ; 2 uses
  %i.by = mul i64 %i.bx, %i.ar
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.by
  %i.ca = mul i64 %i.bx, %i.bc
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.ca
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.lr.ph.i
  %.05977.i = phi i64 [ %i.x, %.preheader.lr.ph.i ], [ %i.ce, %bb.d ] ; 2 uses
  %i.cc = shl nuw nsw i64 %.05977.i, 6
  br label %bb.e

._crit_edge.i:                                    ; preds = %bb.d
  %i.cd = add nuw nsw i64 %.06078.i, 1            ; 2 uses
  %3 = icmp samesign ult i64 %i.cd, %.sroa.speculated72.i
  br i1 %3, label %.preheader.lr.ph.i, label %.preheader75.i.preheader, !llvm.loop !1291

bb.d:                                             ; preds = %bb.h
  %i.ce = add nuw nsw i64 %.05977.i, 1            ; 2 uses
  %i.cf = icmp samesign ult i64 %i.ce, %.sroa.speculated.i
  br i1 %i.cf, label %.preheader.i, label %._crit_edge.i, !llvm.loop !1292

bb.e:                                             ; preds = %bb.h, %.preheader.i
  %.05876.i = phi i64 [ 1, %.preheader.i ], [ %i.ec, %bb.h ] ; 3 uses
  %i.cg = add nuw nsw i64 %.05876.i, %i.cc        ; 2 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !602
  %i.cj = sext i16 %i.ci to i32
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.05876.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !298
  %i.cm = mul nsw i32 %i.cl, %i.cj
  %i.cn = sitofp i32 %i.cm to float
  %i.co = fmul nnan float %i.cn, f0x3A000000      ; 4 uses
  %i.cp = tail call noundef float @llvm.fabs.f32(float %i.co)
  %i.cq = fcmp ogt float %i.cp, f0x322BCC77
  br i1 %i.cq, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.cg
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !602
  %i.ct = sitofp i16 %i.cs to float
  %i.cu = fmul float %i.bk, %i.co
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.ct, float 8.400000e+01, float %i.cu)
  %i.cw = fcmp ogt float %i.co, 0.000000e+00      ; 2 uses
  %i.cx = load ptr, ptr %i.w, align 8, !tbaa !1305, !nonnull !85, !align !671
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !96 ; 3 uses
  %i.cz = fneg float %i.cy                        ; 2 uses
  %.pn.p.i = select i1 %i.cw, float %i.cz, float %i.cy
  %.pn64.p.i = select i1 %i.cw, float %i.cy, float %i.cz
  %i.da = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.db = insertelement <2 x float> poison, float %.pn64.p.i, i64 0
  %i.dc = insertelement <2 x float> %i.db, float %.pn.p.i, i64 1
  %i.dd = insertelement <2 x float> poison, float %i.co, i64 0
  %i.de = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = fadd <2 x float> %i.de, %i.dc
  %i.dg = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = fdiv <2 x float> %i.df, %i.dg           ; 3 uses
  %i.di = insertelement <2 x float> %i.dh, float 2.550000e+02, i64 0
  %i.dj = insertelement <2 x float> %i.dh, float 0.000000e+00, i64 1
  %i.dk = fcmp olt <2 x float> %i.di, %i.dj
  %i.dl = select <2 x i1> %i.dk, <2 x float> <float 2.550000e+02, float 0.000000e+00>, <2 x float> %i.dh ; 2 uses
  %i.dm = extractelement <2 x float> %i.dl, i64 0 ; 2 uses
  %i.dn = extractelement <2 x float> %i.dl, i64 1 ; 2 uses
  %i.do = fcmp ugt float %i.dn, %i.dm
  br i1 %i.do, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dp = tail call noundef float @llvm.ceil.f32(float %i.dn)
  %i.dq = fptosi float %i.dp to i32
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dr ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !298
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !298
  %i.dv = fadd float %i.dm, 1.000000e+00
  %i.dw = tail call noundef float @llvm.floor.f32(float %i.dv)
  %i.dx = fptosi float %i.dw to i32
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !298
  %i.eb = add nsw i32 %i.ea, -1
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !298
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ec = add nuw nsw i64 %.05876.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ec, 64
  br i1 %exitcond.not.i, label %bb.d, label %bb.e, !llvm.loop !1293

bb.i:                                             ; preds = %_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.i.3
  %i.ed = getelementptr inbounds nuw i8, ptr %i.n, i64 %.06182.i
  %i.ee = add nsw i32 %.1.i.3, 1
  %i.ef = icmp sgt i32 %spec.select.i.i.1, %i.ee
  %i.eg = add i8 %spec.select17.i.i.1, -127
  %spec.select.i = select i1 %i.ef, i8 %i.eg, i8 0
  store i8 %spec.select.i, ptr %i.ed, align 1, !tbaa !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.eh = load ptr, ptr %i.e, align 8, !tbaa !1299, !nonnull !85, !align !635
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !591
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !404
  %i.ek = zext i32 %i.ej to i64
  %i.el = icmp samesign ult i64 %i.ac, %i.ek
  br i1 %i.el, label %bb.c, label %"_ZZN3jxl12_GLOBAL__N_126ComputeJPEGTranscodingDataERKNS_4jpeg8JPEGDataERKNS_11FrameHeaderEPNS_10ThreadPoolEPNS_19ModularFrameEncoderEPNS_18PassesEncoderStateEENK3$_0clEjm.exit", !llvm.loop !1294

_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.preheader.i: ; preds = %.preheader75.i, %_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.i.3
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.i.3 ], [ 0, %.preheader75.i ] ; 9 uses
  %.05580.i = phi i32 [ %.1.i.3, %_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.i.3 ], [ 0, %.preheader75.i ] ; 2 uses
  %i.em = icmp samesign ult i64 %indvars.iv.i, 128
  br i1 %i.em, label %bb.j, label %_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.i

bb.j:                                             ; preds = %_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.preheader.i
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.eo = load i32, ptr %i.en, align 16, !tbaa !298
  %i.ep = add nsw i32 %i.eo, %.05580.i
  br label %_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.i

_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.i: ; preds = %bb.j, %_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.preheader.i
  %.1.i = phi i32 [ %i.ep, %bb.j ], [ %.05580.i, %_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.preheader.i ] ; 2 uses
  %i.eq = icmp samesign ult i64 %indvars.iv.i, 128
  br i1 %i.eq, label %bb.k, label %_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.i.1

bb.k:                                             ; preds = %_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.i
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !298
  %i.eu = add nsw i32 %i.et, %.1.i
  br label %_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.i.1

_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.i.1: ; preds = %bb.k, %_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.i
  %.1.i.1 = phi i32 [ %i.eu, %bb.k ], [ %.1.i, %_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.i ] ; 2 uses
  %i.ev = icmp samesign ult i64 %indvars.iv.i, 128
  br i1 %i.ev, label %bb.l, label %_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.i.2

bb.l:                                             ; preds = %_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.i.1
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !298
  %i.ez = add nsw i32 %i.ey, %.1.i.1
  br label %_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.i.2

_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.i.2: ; preds = %bb.l, %_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.i.1
  %.1.i.2 = phi i32 [ %i.ez, %bb.l ], [ %.1.i.1, %_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.i.1 ] ; 2 uses
  %i.fa = icmp samesign ult i64 %indvars.iv.i, 128
  br i1 %i.fa, label %bb.m, label %_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.i.3

bb.m:                                             ; preds = %_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.i.2
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !298
  %i.fe = add nsw i32 %i.fd, %.1.i.2
  br label %_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.i.3

_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.i.3: ; preds = %bb.m, %_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.i.2
  %.1.i.3 = phi i32 [ %i.fe, %bb.m ], [ %.1.i.2, %_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.i.2 ] ; 2 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond87.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 256
  br i1 %exitcond87.not.i.3, label %bb.i, label %_ZN3jxl12_GLOBAL__N_121FindIndexOfSumMaximumILm256EiiEEvPKT0_PT1_PS2_.exit.preheader.i, !llvm.loop !1295

"_ZZN3jxl12_GLOBAL__N_126ComputeJPEGTranscodingDataERKNS_4jpeg8JPEGDataERKNS_11FrameHeaderEPNS_10ThreadPoolEPNS_19ModularFrameEncoderEPNS_18PassesEncoderStateEENK3$_0clEjm.exit": ; preds = %bb.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #20

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !381
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !365  ; 5 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %.not = icmp ult i64 %i.g, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp samesign eq i64 %1, 0
  br i1 %.not7.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEmRKh.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %1
  %.pre.i = load i8, ptr %2, align 1, !tbaa !280
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 %.pre.i, i64 %1, i1 false), !tbaa !280
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEmRKh.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEmRKh.exit: ; preds = %.lr.ph.preheader.i, %bb.b
  %.sroa.4.0.lcssa.i = phi ptr [ %i.d, %bb.b ], [ %i.h, %.lr.ph.preheader.i ]
  store ptr %.sroa.4.0.lcssa.i, ptr %i.c, align 8, !tbaa !365
  br label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !364    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 2 uses
  %i.l = add i64 %i.k, %1                         ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8nn180100Em.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #31
  unreachable

_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8nn180100Em.exit: ; preds = %bb.c
  %i.n = sub i64 %i.e, %i.j                       ; 2 uses
end_hunk_0
