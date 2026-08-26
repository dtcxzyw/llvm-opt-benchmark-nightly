Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/csa-load-elimination?download=true
inline.NumInlined: 1756
inline.NumDeleted: 834
begin_hunk_0_@_ZN2v88internal8compiler18CsaLoadElimination15ReduceEffectPhiEPNS1_4NodeE:bb.a

bb.n:                                             ; preds = %._crit_edge
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.dh, i64 noundef 600) #14
  %.pre.i.i = load i64, ptr %i.dk, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit: ; preds = %._crit_edge, %bb.n
  %i.do = phi i64 [ %.pre.i.i, %bb.n ], [ %i.dl, %._crit_edge ] ; 2 uses
  %i.dp = inttoptr i64 %i.do to ptr               ; 4 uses
  %i.dq = add i64 %i.do, 600
  store i64 %i.dq, ptr %i.dk, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(600) %i.dp, ptr noundef nonnull align 8 dereferenceable(600) %i.bo, i64 600, i1 false)
  br i1 %.not3250, label %.lr.ph53, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread.sink.split

.lr.ph53:                                         ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit42
  %.052 = phi i32 [ %i.fc, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit42 ], [ 1, %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit ] ; 3 uses
  %i.dr = load ptr, ptr %1, align 8               ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load i32, ptr %i.ds, align 8
  %i.du = icmp slt i32 %.052, %i.dt
  br i1 %i.du, label %bb.p, label %bb.o, !prof !7

bb.o:                                             ; preds = %.lr.ph53
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.13) #15
  unreachable

bb.p:                                             ; preds = %.lr.ph53
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.dr) #14
  %i.dy = load ptr, ptr %1, align 8
  %i.dz = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.dy) #14
  %i.ea = load i32, ptr %i.j, align 4
  %i.eb = and i32 %i.ea, 251658240
  %.not.i.i.i39 = icmp eq i32 %i.eb, 251658240
  br i1 %.not.i.i.i39, label %bb.q, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit41

bb.q:                                             ; preds = %bb.p
  %i.ec = load ptr, ptr %i.o, align 8
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = add i64 %i.ed, 16
  %i.ef = inttoptr i64 %i.ee to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit41

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit41: ; preds = %bb.p, %bb.q
  %.sink.i.i.i40 = phi ptr [ %i.ef, %bb.q ], [ %i.o, %bb.p ]
  %i.eg = zext i1 %i.dx to i32
  %i.eh = zext i1 %i.dz to i32
  %i.ei = add i32 %i.dw, %.052
  %i.ej = add i32 %i.ei, %i.eg
  %i.ek = add i32 %i.ej, %i.eh
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i40, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 20
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = and i32 %i.ep, 16777215
  %i.er = zext nneg i32 %i.eq to i64              ; 2 uses
  %i.es = load ptr, ptr %i.be, align 8
  %i.et = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = ashr exact i64 %i.ew, 3
  %i.ey = icmp ugt i64 %i.ex, %i.er
  br i1 %i.ey, label %bb.r, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit42

bb.r:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit41
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.er
  %i.fa = load ptr, ptr %i.ez, align 8
  br label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit42

_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit42: ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit41, %bb.r
  %i.fb = phi ptr [ %i.fa, %bb.r ], [ null, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit41 ]
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination13AbstractState13IntersectWithEPKS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.dp, ptr noundef %i.fb)
  %i.fc = add nuw nsw i32 %.052, 1                ; 2 uses
  %exitcond55.not = icmp eq i32 %i.fc, %i.al
  br i1 %exitcond55.not, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread.sink.split, label %.lr.ph53, !llvm.loop !17

_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread.sink.split: ; preds = %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit42, %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit, %bb.i
  %.sink = phi ptr [ %i.bu, %bb.i ], [ %i.dp, %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit ], [ %i.dp, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit42 ]
  %i.fd = tail call ptr @_ZN2v88internal8compiler18CsaLoadElimination11UpdateStateEPNS1_4NodeEPKNS2_13AbstractStateE(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull %1, ptr noundef %.sink)
  br label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread

_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread: ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit37, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit38, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread.sink.split, %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit
  %.sroa.0.4 = phi ptr [ null, %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit ], [ null, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit ], [ %i.fd, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread.sink.split ], [ null, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit38 ], [ null, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit37 ]
  ret ptr %.sroa.0.4
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler18CsaLoadElimination11ReduceStartEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr nofree noundef readonly captures(ret: address, provenance) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call ptr @_ZN2v88internal8compiler18CsaLoadElimination11UpdateStateEPNS1_4NodeEPKNS2_13AbstractStateE(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef %1, ptr noundef nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler18CsaLoadElimination15ReduceOtherNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::CsaLoadElimination::HalfState", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 1
  br i1 %i.g, label %bb.c, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.i = load i32, ptr %i.h, align 4
  %i.j = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.a) #14
  %i.k = load ptr, ptr %1, align 8
  %i.l = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.k) #14
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 251658240
  %.not.i.i.i = icmp eq i32 %i.o, 251658240
  %i.p = ptrtoint ptr %1 to i64
  %i.q = add i64 %i.p, 32
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = add i64 %i.t, 16
  %i.v = inttoptr i64 %i.u to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i.i = phi ptr [ %i.v, %bb.d ], [ %i.r, %bb.c ]
  %i.w = zext i1 %i.j to i32
  %i.x = zext i1 %i.l to i32
  %i.y = add i32 %i.i, %i.w
  %i.z = add i32 %i.y, %i.x
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = and i32 %i.ae, 16777215
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 3
  %i.ap = icmp ugt i64 %i.ao, %i.ag
  br i1 %i.ap, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread

_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ag
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit
  %i.at = load ptr, ptr %1, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 18
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.au, align 2
  %i.av = and i8 %.sroa.0.0.copyload.i.i, 16
  %.not = icmp eq i8 %i.av, 0
  br i1 %.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ax = load ptr, ptr %i.aw, align 8            ; 16 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 304
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.bd = sub i64 %i.ba, %i.bc
  %i.be = icmp ult i64 %i.bd, 600
  br i1 %i.be, label %bb.g, label %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination13AbstractStateEJNS4_9HalfStateERKS6_EEEPT_DpOT0_.exit, !prof !12

bb.g:                                             ; preds = %bb.f
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, i64 noundef 600) #14
  %.pre.i.i = load i64, ptr %i.bb, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination13AbstractStateEJNS4_9HalfStateERKS6_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination13AbstractStateEJNS4_9HalfStateERKS6_EEEPT_DpOT0_.exit: ; preds = %bb.f, %bb.g
  %i.bf = phi i64 [ %.pre.i.i, %bb.g ], [ %i.bc, %bb.f ] ; 2 uses
  %i.bg = inttoptr i64 %i.bf to ptr               ; 21 uses
  %i.bh = add i64 %i.bf, 600
  store i64 %i.bh, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %2, ptr noundef nonnull align 8 dereferenceable(296) %i.ay, i64 296, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.ax, ptr %i.bi, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.4.0..sroa_idx, i8 0, i64 25, i1 false)
  store ptr %i.ax, ptr %.sroa.610.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  store ptr %i.ax, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %.sroa.1011.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.7.0..sroa_idx, i8 0, i64 25, i1 false)
  store ptr %i.ax, ptr %.sroa.1011.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 104
  store ptr %i.ax, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 112
  %.sroa.1412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.10.0..sroa_idx, i8 0, i64 25, i1 false)
  store ptr %i.ax, ptr %.sroa.1412.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 152
  store ptr %i.ax, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 160
  %.sroa.1813.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.13.0..sroa_idx, i8 0, i64 25, i1 false)
  store ptr %i.ax, ptr %.sroa.1813.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 200
  store ptr %i.ax, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 208
  %.sroa.2214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.16.0..sroa_idx, i8 0, i64 25, i1 false)
  store ptr %i.ax, ptr %.sroa.2214.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 248
  store ptr %i.ax, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 256
  %.sroa.2615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.19.0..sroa_idx, i8 0, i64 25, i1 false)
  store ptr %i.ax, ptr %.sroa.2615.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 296
  store ptr %i.ax, ptr %.sroa.21.0..sroa_idx, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.bj, ptr noundef nonnull align 8 dereferenceable(296) %2, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination13AbstractStateEJNS4_9HalfStateERKS6_EEEPT_DpOT0_.exit
  %i.bk = phi ptr [ %i.bg, %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination13AbstractStateEJNS4_9HalfStateERKS6_EEEPT_DpOT0_.exit ], [ %i.ar, %bb.e ]
  %i.bl = tail call ptr @_ZN2v88internal8compiler18CsaLoadElimination11UpdateStateEPNS1_4NodeEPKNS2_13AbstractStateE(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.bk)
  br label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread

_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread: ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit, %bb.a, %bb.b, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit, %bb.h
  %.sroa.0.1 = phi ptr [ null, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit ], [ %i.bl, %bb.h ], [ null, %bb.a ], [ null, %bb.b ], [ null, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit ]
  ret ptr %.sroa.0.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler25CsaLoadEliminationHelpers8SubsumesENS0_21MachineRepresentationES3_(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i8 %0, %1
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i8 %0, -6
  %i.c = icmp ult i8 %i.b, 4
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = add i8 %1, -6
  %i.e = icmp ult i8 %i.d, 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = add i8 %0, -2
  %i.g = add i8 %1, -2
  %i.h = or i8 %i.g, %i.f
  %or.cond = icmp ult i8 %i.h, 4
  br i1 %or.cond, label %switch.lookup, label %bb.e

switch.lookup:                                    ; preds = %bb.d
  %switch.tableidx = add nsw i8 %0, -2
  %switch.idx.cast = zext nneg i8 %switch.tableidx to i32
  %i.i = shl nuw nsw i32 1, %switch.idx.cast
  %switch.tableidx16 = add nsw i8 %1, -2
  %switch.idx.cast18 = zext nneg i8 %switch.tableidx16 to i32
  %i.j = shl nuw nsw i32 1, %switch.idx.cast18
  %i.k = icmp samesign uge i32 %i.i, %i.j
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %switch.lookup, %bb.a, %bb.c
  %.0 = phi i1 [ %i.k, %switch.lookup ], [ %i.e, %bb.c ], [ true, %bb.a ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i16, ptr %i.b, align 8              ; 2 uses
  switch i16 %i.c, label %bb.b [
    i16 51, label %bb.c
    i16 523, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = add i16 %i.c, -22
  %switch.i.i = icmp ult i16 %i.d, 13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.b
  %i.e = phi i1 [ true, %bb.a ], [ true, %bb.a ], [ %switch.i.i, %bb.b ]
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler25CsaLoadEliminationHelpers13IsFreshObjectEPNS1_4NodeE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i16, ptr %i.b, align 8
  %i.d = and i16 %i.c, -2
  %spec.select = icmp eq i16 %i.d, 266
  ret i1 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState13IntersectWithEPKS3_(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState13IntersectWithIjEEvRNS1_13PersistentMapIT_NS5_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS8_EEEENSB_IS6_EEEERKSF_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState13IntersectWithIjEEvRNS1_13PersistentMapIT_NS5_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS8_EEEENSB_IS6_EEEERKSF_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState13IntersectWithIjEEvRNS1_13PersistentMapIT_NS5_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS8_EEEENSB_IS6_EEEERKSF_(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 152
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState13IntersectWithIPNS1_4NodeEEEvRNS1_13PersistentMapIT_NS7_IS6_NS2_9FieldInfoENS_4base4hashIS6_EEEENSB_IS8_EEEERKSF_(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 200
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState13IntersectWithIPNS1_4NodeEEEvRNS1_13PersistentMapIT_NS7_IS6_NS2_9FieldInfoENS_4base4hashIS6_EEEENSB_IS8_EEEERKSF_(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 248
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState13IntersectWithIPNS1_4NodeEEEvRNS1_13PersistentMapIT_NS7_IS6_NS2_9FieldInfoENS_4base4hashIS6_EEEENSB_IS8_EEEERKSF_(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.l)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState13IntersectWithIjEEvRNS1_13PersistentMapIT_NS5_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS8_EEEENSB_IS6_EEEERKSF_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.v8::internal::compiler::CsaLoadElimination::FieldInfo", align 8 ; 5 uses
  %3 = alloca %"class.v8::internal::compiler::PersistentMap.6", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::compiler::PersistentMap<unsigned int, v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::CsaLoadElimination::FieldInfo>>::iterator", align 8 ; 6 uses
  %.sroa.14 = alloca [15 x i8], align 1           ; 4 uses
  %5 = alloca %"class.v8::internal::compiler::PersistentMap.6", align 8 ; 8 uses
  %6 = alloca %"class.v8::internal::compiler::PersistentMap.6", align 8 ; 11 uses
  %7 = alloca %"class.v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::CsaLoadElimination::FieldInfo>::iterator", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::PersistentMap<unsigned int, v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::CsaLoadElimination::FieldInfo>>::iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not138 = icmp eq ptr %i.b, null
  br i1 %.not138, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.8111.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.14.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 280 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 288 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit._crit_edge: ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit
  %i.i = phi ptr [ %i.b, %.lr.ph ], [ %i.eo, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !noalias !18
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.c, align 8, !noalias !18 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.8111.8..sroa_idx112 = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.11.8..sroa_idx114 = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.14.8..sroa_idx116 = getelementptr inbounds nuw i8, ptr %i.l, i64 57
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratordeEv.exit

bb.d:                                             ; preds = %bb.b
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.8111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 25
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratordeEv.exit

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratordeEv.exit: ; preds = %bb.c, %bb.d
  %.sroa.14.8..sroa_idx116.sink = phi ptr [ %.sroa.14.8..sroa_idx116, %bb.c ], [ %.sroa.14.0..sroa_idx, %bb.d ]
  %.sroa.0107.0.in = phi ptr [ %i.m, %bb.c ], [ %i.i, %bb.d ]
  %.sroa.5109.0.in = phi ptr [ %i.n, %bb.c ], [ %.sroa.5109.0..sroa_idx, %bb.d ]
  %.sroa.8111.0.in = phi ptr [ %.sroa.8111.8..sroa_idx112, %bb.c ], [ %.sroa.8111.0..sroa_idx, %bb.d ]
  %.sroa.11.0.in = phi ptr [ %.sroa.11.8..sroa_idx114, %bb.c ], [ %.sroa.11.0..sroa_idx, %bb.d ]
  %.sroa.11.0 = load i8, ptr %.sroa.11.0.in, align 8 ; 4 uses
  %.sroa.8111.0 = load ptr, ptr %.sroa.8111.0.in, align 8 ; 4 uses
  %.sroa.5109.0 = load ptr, ptr %.sroa.5109.0.in, align 8 ; 5 uses
  %.sroa.0107.0 = load i32, ptr %.sroa.0107.0.in, align 8 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.14, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.14.8..sroa_idx116.sink, i64 15, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr %.sroa.5109.0, ptr %5, align 8
  store ptr %.sroa.8111.0, ptr %.sroa.8111.8..sroa_idx, align 8
  store i8 %.sroa.11.0, ptr %.sroa.11.8..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.14.8..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.14, i64 15, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.o = xor i32 %.sroa.0107.0, -1
  %i.p = shl i32 %.sroa.0107.0, 15
  %i.q = add i32 %i.p, %i.o                       ; 2 uses
  %i.r = lshr i32 %i.q, 12
  %i.s = xor i32 %i.r, %i.q
  %i.t = mul i32 %i.s, 5                          ; 2 uses
  %i.u = lshr i32 %i.t, 4
  %i.v = xor i32 %i.u, %i.t
  %i.w = mul i32 %i.v, 2057                       ; 2 uses
  %i.x = lshr i32 %i.w, 16
  %i.y = xor i32 %i.x, %i.w                       ; 2 uses
  %i.z = load ptr, ptr %1, align 8                ; 2 uses
  %.not16.i.i = icmp eq ptr %i.z, null
  br i1 %.not16.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %.lr.ph.i.i
end_hunk_0
begin_hunk_1_@_ZNK2v88internal8compiler18CsaLoadElimination9HalfState9KillFieldEPNS1_4NodeES5_NS0_21MachineRepresentationE:bb.a
  %.sroa.12.sroa.15.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.av, i8 0, i64 25, i1 false)
  store ptr %i.k, ptr %.sroa.12.sroa.15.0..sroa.12.0..sroa_idx.sroa_idx, align 8
  br label %.thread

bb.i:                                             ; preds = %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit
  switch i16 %i.ap, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit [
    i16 51, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit.thread
    i16 523, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit.thread
  ]

_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit: ; preds = %bb.i
  %i.aw = add i16 %i.ap, -22
  %switch.i.i.i = icmp ult i16 %i.aw, 13
  br i1 %switch.i.i.i, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit.thread, label %bb.j

_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit.thread: ; preds = %bb.i, %bb.i, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState10KillOffsetERNS1_13PersistentMapIjNS4_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS6_EEEENS9_IjEEEEjNS0_21MachineRepresentationEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, i32 noundef %.sroa.399.0.ph, i8 noundef zeroext %3, ptr noundef %i.k)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.az = load ptr, ptr %0, align 8
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState10KillOffsetERNS1_13PersistentMapIjNS4_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS6_EEEENS9_IjEEEEjNS0_21MachineRepresentationEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, i32 noundef %.sroa.399.0.ph, i8 noundef zeroext %3, ptr noundef %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %.sroa.12.sroa.15.0..sroa.12.0..sroa_idx119.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ba, i8 0, i64 25, i1 false)
  store ptr %i.k, ptr %.sroa.12.sroa.15.0..sroa.12.0..sroa_idx119.sroa_idx, align 8
  %.sroa.13.0..sroa_idx127 = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  store ptr %i.k, ptr %.sroa.13.0..sroa_idx127, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 248
  %.sroa.12.sroa.15.0..sroa.12.0..sroa_idx120.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bb, i8 0, i64 25, i1 false)
  store ptr %i.k, ptr %.sroa.12.sroa.15.0..sroa.12.0..sroa_idx120.sroa_idx, align 8
  br label %.thread

bb.j:                                             ; preds = %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState10KillOffsetERNS1_13PersistentMapIjNS4_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS6_EEEENS9_IjEEEEjNS0_21MachineRepresentationEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(48) %i.bc, i32 noundef %.sroa.399.0.ph, i8 noundef zeroext %3, ptr noundef %i.k)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.be = load ptr, ptr %0, align 8
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState10KillOffsetERNS1_13PersistentMapIjNS4_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS6_EEEENS9_IjEEEEjNS0_21MachineRepresentationEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, i32 noundef %.sroa.399.0.ph, i8 noundef zeroext %3, ptr noundef %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.bg = load ptr, ptr %0, align 8
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState10KillOffsetERNS1_13PersistentMapIjNS4_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS6_EEEENS9_IjEEEEjNS0_21MachineRepresentationEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, i32 noundef %.sroa.399.0.ph, i8 noundef zeroext %3, ptr noundef %i.bg)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %.sroa.12.sroa.15.0..sroa.12.0..sroa_idx121.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bh, i8 0, i64 25, i1 false)
  store ptr %i.k, ptr %.sroa.12.sroa.15.0..sroa.12.0..sroa_idx121.sroa_idx, align 8
  %.sroa.13.0..sroa_idx131 = getelementptr inbounds nuw i8, ptr %i.i, i64 192
  store ptr %i.k, ptr %.sroa.13.0..sroa_idx131, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %.sroa.12.sroa.15.0..sroa.12.0..sroa_idx122.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bi, i8 0, i64 25, i1 false)
  store ptr %i.k, ptr %.sroa.12.sroa.15.0..sroa.12.0..sroa_idx122.sroa_idx, align 8
  %.sroa.13.0..sroa_idx133 = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  store ptr %i.k, ptr %.sroa.13.0..sroa_idx133, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 248
  %.sroa.12.sroa.15.0..sroa.12.0..sroa_idx123.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bj, i8 0, i64 25, i1 false)
  store ptr %i.k, ptr %.sroa.12.sroa.15.0..sroa.12.0..sroa_idx123.sroa_idx, align 8
  br label %.thread

_ZN2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EEC2EPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler19SkipValueIdentitiesEPNS1_4NodeE.exit.i.i
  %i.bk = load ptr, ptr %1, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i16, ptr %i.bl, align 8            ; 3 uses
  %i.bn = and i16 %i.bm, -2
  %spec.select.i54 = icmp eq i16 %i.bn, 266
  br i1 %spec.select.i54, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_ZN2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EEC2EPNS1_4NodeE.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::PersistentMap<unsigned int, v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::CsaLoadElimination::FieldInfo>>::iterator") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %.not199 = icmp eq ptr %i.bq, null
  br i1 %.not199, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.5.8..sroa_idx67 = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.l

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit._crit_edge: ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratordeEv.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %i.bu = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %6, i8 0, i64 17, i1 false)
  store ptr %i.bu, ptr %.sroa.462.0..sroa_idx, align 8
  call void @_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS2_IS4_NS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEES9_E6ModifyIZNSB_3SetES4_SA_EUlPSA_E_EEvS4_T_(ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef nonnull %1, ptr nonnull align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %.sroa.683.sroa.9.0..sroa.683.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bv, i8 0, i64 25, i1 false)
  store ptr %i.k, ptr %.sroa.683.sroa.9.0..sroa.683.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  store ptr %i.k, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 248
  %.sroa.12.sroa.15.0..sroa.12.0..sroa_idx124.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bw, i8 0, i64 25, i1 false)
  store ptr %i.k, ptr %.sroa.12.sroa.15.0..sroa.12.0..sroa_idx124.sroa_idx, align 8
  br label %.thread

bb.l:                                             ; preds = %.lr.ph, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratordeEv.exit
  %i.bx = phi ptr [ %i.bq, %.lr.ph ], [ %i.cf, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratordeEv.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !73
  %.not.i = icmp eq ptr %i.bz, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = load ptr, ptr %i.br, align 8, !noalias !73 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !noalias !73
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.5.8..sroa_idx67, ptr noundef nonnull align 8 dereferenceable(32) %i.cd, i64 32, i1 false)
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratordeEv.exit

bb.n:                                             ; preds = %bb.l
  %.sroa.066.0.copyload = load i32, ptr %i.bx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.5.0..sroa_idx, i64 36, i1 false)
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratordeEv.exit

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratordeEv.exit: ; preds = %bb.m, %bb.n
  %.sroa.066.0 = phi i32 [ %.sroa.066.0.copyload, %bb.n ], [ %i.cc, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.5.8..sroa_idx67, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr null, ptr %5, align 8
  store i8 0, ptr %i.bs, align 8
  call void @_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE6ModifyIZNSA_3SetES4_S6_EUlPS6_E_EEvS4_T_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %1, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  call void @_ZN2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE6ModifyIZNSC_3SetEjSA_EUlPSA_E_EEvjT_(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, i32 noundef %.sroa.066.0, ptr nonnull align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %i.ce = call noundef nonnull align 8 dereferenceable(312) ptr @_ZN2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorppEv(ptr noundef nonnull align 8 dereferenceable(312) %8) ; 0 uses
  %i.cf = load ptr, ptr %i.bp, align 8            ; 2 uses
  %.not = icmp eq ptr %i.cf, null
  br i1 %.not, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit._crit_edge, label %bb.l

bb.o:                                             ; preds = %_ZN2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EEC2EPNS1_4NodeE.exit
  switch i16 %i.bm, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit57 [
    i16 51, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit57.thread
    i16 523, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit57.thread
  ]

_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit57: ; preds = %bb.o
  %i.cg = add i16 %i.bm, -22
  %switch.i.i.i56 = icmp ult i16 %i.cg, 13
  br i1 %switch.i.i.i56, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit57.thread, label %bb.p

_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit57.thread: ; preds = %bb.o, %bb.o, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit57
  %i.ch = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %.sroa.683.sroa.9.0..sroa.683.0..sroa_idx84.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ch, i8 0, i64 25, i1 false)
  store ptr %i.k, ptr %.sroa.683.sroa.9.0..sroa.683.0..sroa_idx84.sroa_idx, align 8
  %.sroa.7.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store ptr %i.k, ptr %.sroa.7.0..sroa_idx86, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %.sroa.12.sroa.15.0..sroa.12.0..sroa_idx125.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ci, i8 0, i64 25, i1 false)
  store ptr %i.k, ptr %.sroa.12.sroa.15.0..sroa.12.0..sroa_idx125.sroa_idx, align 8
  %.sroa.13.0..sroa_idx139 = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  store ptr %i.k, ptr %.sroa.13.0..sroa_idx139, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %.sroa.683.sroa.9.0..sroa.683.0..sroa_idx85.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.cj, i8 0, i64 25, i1 false)
  store ptr %i.k, ptr %.sroa.683.sroa.9.0..sroa.683.0..sroa_idx85.sroa_idx, align 8
  %.sroa.7.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  store ptr %i.k, ptr %.sroa.7.0..sroa_idx88, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.i, i64 248
  %.sroa.12.sroa.15.0..sroa.12.0..sroa_idx126.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ck, i8 0, i64 25, i1 false)
  store ptr %i.k, ptr %.sroa.12.sroa.15.0..sroa.12.0..sroa_idx126.sroa_idx, align 8
  br label %.thread

bb.p:                                             ; preds = %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit57
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.co = load i64, ptr %i.cn, align 8            ; 2 uses
  %i.cp = sub i64 %i.cm, %i.co
  %i.cq = icmp ult i64 %i.cp, 296
  br i1 %i.cq, label %bb.q, label %bb.r, !prof !12

bb.q:                                             ; preds = %bb.p
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 noundef 296) #14
  %.pre.i.i58 = load i64, ptr %i.cn, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cr = phi i64 [ %.pre.i.i58, %bb.q ], [ %i.co, %bb.p ] ; 2 uses
  %i.cs = inttoptr i64 %i.cr to ptr               ; 25 uses
  %i.ct = add i64 %i.cr, 296
  store i64 %i.ct, ptr %i.cn, align 8
  %i.cu = load ptr, ptr %0, align 8               ; 13 uses
  store ptr %i.cu, ptr %i.cs, align 8
  %10 = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.cv, i8 0, i64 17, i1 false)
  store ptr %i.cu, ptr %.sroa.7.0..sroa_idx.i.i, align 8
  store ptr null, ptr %10, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  store ptr %i.cu, ptr %i.cw, align 8
  %11 = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  %.sroa.769.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.cx, i8 0, i64 17, i1 false)
  store ptr %i.cu, ptr %.sroa.769.0..sroa_idx.i.i, align 8
  store ptr null, ptr %11, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 96
  store ptr %i.cu, ptr %i.cy, align 8
  %12 = getelementptr inbounds nuw i8, ptr %i.cs, i64 104
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 112
  %.sroa.774.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.cz, i8 0, i64 17, i1 false)
  store ptr %i.cu, ptr %.sroa.774.0..sroa_idx.i.i, align 8
  store ptr null, ptr %12, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 144
  store ptr %i.cu, ptr %i.da, align 8
  %13 = getelementptr inbounds nuw i8, ptr %i.cs, i64 152
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 160
  %.sroa.779.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.db, i8 0, i64 17, i1 false)
  store ptr %i.cu, ptr %.sroa.779.0..sroa_idx.i.i, align 8
  store ptr null, ptr %13, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 192
  store ptr %i.cu, ptr %i.dc, align 8
  %14 = getelementptr inbounds nuw i8, ptr %i.cs, i64 200
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 208
  %.sroa.784.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.dd, i8 0, i64 17, i1 false)
  store ptr %i.cu, ptr %.sroa.784.0..sroa_idx.i.i, align 8
  store ptr null, ptr %14, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 240
  store ptr %i.cu, ptr %i.de, align 8
  %15 = getelementptr inbounds nuw i8, ptr %i.cs, i64 248
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 256
  %.sroa.789.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.df, i8 0, i64 17, i1 false)
  store ptr %i.cu, ptr %.sroa.789.0..sroa_idx.i.i, align 8
  store ptr null, ptr %15, align 8
  br label %.thread

.thread:                                          ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit._crit_edge, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit57.thread, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit.thread, %bb.j, %bb.h, %bb.r
  %.sink205 = phi ptr [ %i.i, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit._crit_edge ], [ %i.i, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit57.thread ], [ %i.i, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit.thread ], [ %i.i, %bb.j ], [ %i.i, %bb.h ], [ %i.cs, %bb.r ] ; 2 uses
  %.sink = phi ptr [ %i.k, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit._crit_edge ], [ %i.k, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit57.thread ], [ %i.k, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit.thread ], [ %i.k, %bb.j ], [ %i.k, %bb.h ], [ %i.cu, %bb.r ]
  %.sroa.13.0..sroa_idx137 = getelementptr inbounds nuw i8, ptr %.sink205, i64 288
  store ptr %.sink, ptr %.sroa.13.0..sroa_idx137, align 8
  ret ptr %.sink205
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState17KillOffsetInFreshEPNS1_4NodeEjNS0_21MachineRepresentationE(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %switch.tableidx = add i8 %3, -1                ; 2 uses
  %i.b = icmp ult i8 %switch.tableidx, 20
  br i1 %i.b, label %switch.hole_check, label %bb.b

switch.hole_check:                                ; preds = %bb.a
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 1032191, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup.preheader, label %bb.b

switch.lookup.preheader:                          ; preds = %switch.hole_check
  %switch.tableidx75 = add nsw i8 %3, -1          ; 2 uses
  %i.c = icmp ult i8 %switch.tableidx75, 20
  %i.d = zext nneg i8 %switch.tableidx75 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal8compiler18CsaLoadElimination9HalfState10KillOffsetERNS1_13PersistentMapIjNS4_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS6_EEEENS9_IjEEEEjNS0_21MachineRepresentationEPNS0_4ZoneE, i64 %i.d
  br label %switch.lookup

switch.lookup:                                    ; preds = %switch.lookup.preheader, %bb.d
  %.0 = phi i32 [ %i.w, %bb.d ], [ 0, %switch.lookup.preheader ] ; 3 uses
  br i1 %i.c, label %switch.lookup76, label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit

bb.b:                                             ; preds = %switch.hole_check, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14) #15
  unreachable

switch.lookup76:                                  ; preds = %switch.lookup
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit

_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit: ; preds = %switch.lookup, %switch.lookup76
  %.0.i.i = phi i32 [ %switch.ext, %switch.lookup76 ], [ 3, %switch.lookup ]
  %.0.highbits = lshr i32 %.0, %.0.i.i
  %i.e = icmp eq i32 %.0.highbits, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit
  %i.f = tail call i32 @llvm.usub.sat.i32(i32 %2, i32 15) ; 2 uses
  %i.g = icmp ult i32 %i.f, %2
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.h = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.i = xor i64 %i.h, -1
  %i.j = shl i64 %i.h, 21
  %i.k = add i64 %i.j, %i.i                       ; 2 uses
  %i.l = lshr i64 %i.k, 24
  %i.m = xor i64 %i.l, %i.k
  %i.n = mul i64 %i.m, 265                        ; 2 uses
  %i.o = lshr i64 %i.n, 14
  %i.p = xor i64 %i.o, %i.n
  %i.q = mul i64 %i.p, 21                         ; 2 uses
  %i.r = lshr i64 %i.q, 28
  %i.s = xor i64 %i.r, %i.q
  %i.t = trunc i64 %i.s to i32
  %i.u = mul i32 %i.t, -2147483647                ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit
  %i.v = add i32 %.0, %2
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState6UpdateIjEEvRNS1_13PersistentMapIT_NS5_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS8_EEEENSB_IS6_EEEES6_S8_S9_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef %i.v, ptr noundef %1, ptr null, i8 0)
  %i.w = add nuw nsw i32 %.0, 1
  br label %switch.lookup, !llvm.loop !76

._crit_edge:                                      ; preds = %bb.w, %bb.c
  ret void

bb.e:                                             ; preds = %.lr.ph, %bb.w
  %storemerge50 = phi i32 [ %i.f, %.lr.ph ], [ %i.cu, %bb.w ] ; 8 uses
  %i.x = xor i32 %storemerge50, -1
  %i.y = shl i32 %storemerge50, 15
  %i.z = add i32 %i.y, %i.x                       ; 2 uses
  %i.aa = lshr i32 %i.z, 12
  %i.ab = xor i32 %i.aa, %i.z
  %i.ac = mul i32 %i.ab, 5                        ; 2 uses
  %i.ad = lshr i32 %i.ac, 4
  %i.ae = xor i32 %i.ad, %i.ac
  %i.af = mul i32 %i.ae, 2057                     ; 2 uses
  %i.ag = lshr i32 %i.af, 16
  %i.ah = xor i32 %i.ag, %i.af                    ; 2 uses
  %i.ai = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not16.i.i = icmp eq ptr %i.ai, null
  br i1 %.not16.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.h
  %.018.i.i = phi ptr [ %i.av, %bb.h ], [ %i.ai, %bb.e ] ; 6 uses
  %.01217.i.i = phi i32 [ %i.an, %bb.h ], [ 0, %bb.e ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 44
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.aj, align 4 ; 2 uses
  %.not15.i.i = icmp eq i32 %i.ah, %.sroa.01.0.copyload.i.i
  br i1 %.not15.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i
  %i.ak = xor i32 %.sroa.01.0.copyload.i.i, %i.ah
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader.i.i
  %.1.i.i = phi i32 [ %i.an, %bb.f ], [ %.01217.i.i, %.preheader.i.i ] ; 4 uses
  %i.al = lshr exact i32 -2147483648, %.1.i.i
  %i.am = and i32 %i.al, %i.ak
  %.not.i.not.i.i = icmp eq i32 %i.am, 0
  %i.an = add nsw i32 %.1.i.i, 1                  ; 2 uses
  br i1 %.not.i.not.i.i, label %bb.f, label %bb.g, !llvm.loop !21

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 40
  %i.ap = load i8, ptr %i.ao, align 8
  %i.aq = sext i8 %i.ap to i32
  %i.ar = icmp slt i32 %.1.i.i, %i.aq
  br i1 %i.ar, label %bb.h, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 56
  %i.at = sext i32 %.1.i.i to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %.lr.ph.i.i, !llvm.loop !22

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i: ; preds = %.lr.ph.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8            ; 3 uses
  %.not11.i.i = icmp eq ptr %i.ax, null
  br i1 %.not11.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not10.i.i.i.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.az, %bb.i ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ba, %bb.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = icmp ult i32 %i.bc, %storemerge50       ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.bd, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.bd, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !23

_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.be = icmp eq ptr %.19.i.i.i.i.i, %i.ba
  br i1 %i.be, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i

_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = icmp ult i32 %storemerge50, %i.bg       ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.bh, ptr %i.ba, ptr %.19.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 32
  %spec.select.i.i = select i1 %i.bh, ptr %i.a, ptr %i.bi
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit

bb.j:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i
  %i.bj = load i32, ptr %.018.i.i, align 8
  %i.bk = icmp eq i32 %storemerge50, %i.bj
  %..i.i = select i1 %i.bk, ptr %.018.i.i, ptr %i.a
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit: ; preds = %bb.g, %bb.h, %bb.e, %bb.i, %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i, %bb.j
  %.sink.i.i = phi ptr [ %i.a, %bb.i ], [ %..i.i, %bb.j ], [ %spec.select.i.i, %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i ], [ %i.a, %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i ], [ %i.a, %bb.e ], [ %i.a, %bb.h ], [ %i.a, %bb.g ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8 ; 8 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not16.i.i14 = icmp eq ptr %i.bm, null
  br i1 %.not16.i.i14, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i15

.lr.ph.i.i15:                                     ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, %bb.m
  %.018.i.i16 = phi ptr [ %i.bz, %bb.m ], [ %i.bm, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit ] ; 6 uses
  %.01217.i.i17 = phi i32 [ %i.br, %bb.m ], [ 0, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.018.i.i16, i64 28
  %.sroa.01.0.copyload.i.i18 = load i32, ptr %i.bn, align 4 ; 2 uses
  %.not15.i.i19 = icmp eq i32 %i.u, %.sroa.01.0.copyload.i.i18
  br i1 %.not15.i.i19, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i, label %.preheader.i.i20

.preheader.i.i20:                                 ; preds = %.lr.ph.i.i15
  %i.bo = xor i32 %.sroa.01.0.copyload.i.i18, %i.u
  br label %bb.k

end_hunk_1
begin_hunk_2_@_ZNK2v88internal8compiler18CsaLoadElimination16ComputeLoopStateEPNS1_4NodeEPKNS2_13AbstractStateE:bb.a

.thread:                                          ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

bb.c:                                             ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.as = load ptr, ptr %i.ac, align 8
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %.thread, %bb.c
  %.sink81 = phi ptr [ %i.w, %.thread ], [ %i.as, %bb.c ]
  %.sink80 = phi i64 [ 32, %.thread ], [ 16, %bb.c ]
  %i.at = ptrtoint ptr %.sink81 to i64
  %i.au = add i64 %.sink80, %i.at
  %.sink.i.i = inttoptr i64 %i.au to ptr
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %indvars.iv
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  store ptr %i.aw, ptr %i.b, align 8
  %i.ax = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.ay = load ptr, ptr %i.p, align 8
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %.not.i.i.i = icmp eq ptr %i.ax, %i.az
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  store ptr %i.aw, ptr %i.ax, align 8
  %i.ba = load ptr, ptr %i.m, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bb, ptr %i.m, align 8
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit

bb.e:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  call void @_ZNSt5dequeIPN2v88internal8compiler4NodeESaIS4_EE16_M_push_back_auxIJS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit

_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.b, !llvm.loop !166

bb.f:                                             ; preds = %.lr.ph59, %.loopexit
  %i.bc = phi ptr [ %i.ap, %.lr.ph59 ], [ %i.gq, %.loopexit ] ; 3 uses
  %.02058 = phi ptr [ %2, %.lr.ph59 ], [ %.3, %.loopexit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.bd = load ptr, ptr %i.bc, align 8
  store ptr %i.bd, ptr %i.c, align 8
  %i.be = load ptr, ptr %i.l, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -8
  %.not.i.i24 = icmp eq ptr %i.bc, %i.bf
  br i1 %.not.i.i24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE3popEv.exit

bb.h:                                             ; preds = %bb.f
  %i.bh = load ptr, ptr %i.j, align 8
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef 512) #18
  %i.bi = load ptr, ptr %i.i, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  store ptr %i.bj, ptr %i.i, align 8
  %i.bk = load ptr, ptr %i.bj, align 8            ; 3 uses
  store ptr %i.bk, ptr %i.j, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 512
  store ptr %i.bl, ptr %i.l, align 8
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE3popEv.exit

_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE3popEv.exit: ; preds = %bb.g, %bb.h
  %storemerge.i.i = phi ptr [ %i.bg, %bb.g ], [ %i.bk, %bb.h ]
  store ptr %storemerge.i.i, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr %8, ptr %5, align 8
  %i.bm = call { ptr, i8 } @_ZNSt10_HashtableIPN2v88internal8compiler4NodeES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS4_SK_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %.fca.1.extract = extractvalue { ptr, i8 } %i.bm, 1
  %i.bn = trunc i8 %.fca.1.extract to i1
  br i1 %i.bn, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE3popEv.exit
  %i.bo = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i16, ptr %i.bq, align 8
  switch i16 %i.br, label %bb.p [
    i16 353, label %bb.j
    i16 305, label %bb.s
  ]

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  %i.bt = load i32, ptr %i.bs, align 4            ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %bb.l, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12) #15
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = and i32 %i.bw, 251658240
  %.not.i.i.i25 = icmp eq i32 %i.bx, 251658240
  %i.by = ptrtoint ptr %i.bo to i64
  %i.bz = add i64 %i.by, 32
  %i.ca = inttoptr i64 %i.bz to ptr               ; 2 uses
  %.not50 = icmp eq i32 %i.bt, 1                  ; 2 uses
  br i1 %.not.i.i.i25, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.thread

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit: ; preds = %bb.l
  br i1 %.not50, label %bb.m, label %bb.n, !prof !12

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.thread: ; preds = %bb.l
  br i1 %.not50, label %bb.m, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit28, !prof !12

bb.m:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.thread, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12) #15
  unreachable

bb.n:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = add i64 %i.cc, 16
  %i.ce = inttoptr i64 %i.cd to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit28

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit28: ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.thread, %bb.n
  %.in = phi ptr [ %i.ce, %bb.n ], [ %i.ca, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.thread ] ; 2 uses
  %i.cf = load ptr, ptr %.in, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.in, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = call noundef nonnull align 1 dereferenceable(3) ptr @_ZN2v88internal8compiler14ObjectAccessOfEPKNS1_8OperatorE(ptr noundef nonnull %i.bp) #14
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %.02058, i64 8
  %i.cl = call noundef ptr @_ZNK2v88internal8compiler18CsaLoadElimination9HalfState9KillFieldEPNS1_4NodeES5_NS0_21MachineRepresentationE(ptr noundef nonnull align 8 dereferenceable(296) %i.ck, ptr noundef %i.cf, ptr noundef %i.ch, i8 noundef zeroext %i.cj)
  %i.cm = load ptr, ptr %i.ar, align 8            ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02058, i64 304
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 3 uses
  %i.cr = load i64, ptr %i.cq, align 8            ; 2 uses
  %i.cs = sub i64 %i.cp, %i.cr
  %i.ct = icmp ult i64 %i.cs, 600
  br i1 %i.ct, label %bb.o, label %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination13AbstractStateEJRKNS4_9HalfStateES8_EEEPT_DpOT0_.exit, !prof !12

bb.o:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit28
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cm, i64 noundef 600) #14
  %.pre.i.i = load i64, ptr %i.cq, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination13AbstractStateEJRKNS4_9HalfStateES8_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination13AbstractStateEJRKNS4_9HalfStateES8_EEEPT_DpOT0_.exit: ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit28, %bb.o
  %i.cu = phi i64 [ %.pre.i.i, %bb.o ], [ %i.cr, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit28 ] ; 2 uses
  %i.cv = inttoptr i64 %i.cu to ptr               ; 3 uses
  %i.cw = add i64 %i.cu, 600
  store i64 %i.cw, ptr %i.cq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %4, ptr noundef nonnull align 8 dereferenceable(296) %i.cn, i64 296, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.cx, ptr noundef nonnull align 8 dereferenceable(296) %i.cl, i64 296, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.cy, ptr noundef nonnull align 8 dereferenceable(296) %4, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre = load ptr, ptr %i.c, align 8             ; 2 uses
  %.pre65 = load ptr, ptr %.pre, align 8
  br label %bb.s

bb.p:                                             ; preds = %bb.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bp, i64 18
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.cz, align 2
  %i.da = and i8 %.sroa.0.0.copyload.i.i, 16
  %.not51 = icmp eq i8 %i.da, 0
  br i1 %.not51, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.db = load ptr, ptr %i.ar, align 8            ; 16 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.02058, i64 304
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 3 uses
  %i.dg = load i64, ptr %i.df, align 8            ; 2 uses
  %i.dh = sub i64 %i.de, %i.dg
  %i.di = icmp ult i64 %i.dh, 600
  br i1 %i.di, label %bb.r, label %.thread46, !prof !12

bb.r:                                             ; preds = %bb.q
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.db, i64 noundef 600) #14
  %.pre.i.i29 = load i64, ptr %i.df, align 8
  br label %.thread46

.thread46:                                        ; preds = %bb.r, %bb.q
  %i.dj = phi i64 [ %.pre.i.i29, %bb.r ], [ %i.dg, %bb.q ] ; 2 uses
  %i.dk = inttoptr i64 %i.dj to ptr               ; 21 uses
  %i.dl = add i64 %i.dj, 600
  store i64 %i.dl, ptr %i.df, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %3, ptr noundef nonnull align 8 dereferenceable(296) %i.dc, i64 296, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.db, ptr %i.dm, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.4.0..sroa_idx, i8 0, i64 25, i1 false)
  store ptr %i.db, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  store ptr %i.db, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  %.sroa.1039.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.7.0..sroa_idx, i8 0, i64 25, i1 false)
  store ptr %i.db, ptr %.sroa.1039.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 104
  store ptr %i.db, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 112
  %.sroa.1440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.10.0..sroa_idx, i8 0, i64 25, i1 false)
  store ptr %i.db, ptr %.sroa.1440.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 152
  store ptr %i.db, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 160
  %.sroa.1841.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.13.0..sroa_idx, i8 0, i64 25, i1 false)
  store ptr %i.db, ptr %.sroa.1841.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 200
  store ptr %i.db, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 208
  %.sroa.2242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.16.0..sroa_idx, i8 0, i64 25, i1 false)
  store ptr %i.db, ptr %.sroa.2242.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 248
  store ptr %i.db, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 256
  %.sroa.2643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.19.0..sroa_idx, i8 0, i64 25, i1 false)
  store ptr %i.db, ptr %.sroa.2643.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 296
  store ptr %i.db, ptr %.sroa.21.0..sroa_idx, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.dn, ptr noundef nonnull align 8 dereferenceable(296) %3, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %.loopexit52

bb.s:                                             ; preds = %bb.i, %bb.p, %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination13AbstractStateEJRKNS4_9HalfStateES8_EEEPT_DpOT0_.exit
  %i.do = phi ptr [ %.pre65, %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination13AbstractStateEJRKNS4_9HalfStateES8_EEEPT_DpOT0_.exit ], [ %i.bp, %bb.i ], [ %i.bp, %bb.p ] ; 2 uses
  %i.dp = phi ptr [ %.pre, %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination13AbstractStateEJRKNS4_9HalfStateES8_EEEPT_DpOT0_.exit ], [ %i.bo, %bb.i ], [ %i.bo, %bb.p ]
  %.121 = phi ptr [ %i.cv, %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination13AbstractStateEJRKNS4_9HalfStateES8_EEEPT_DpOT0_.exit ], [ %.02058, %bb.i ], [ %.02058, %bb.p ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dr = load i32, ptr %i.dq, align 8
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.s, %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit33
  %i.dt = phi ptr [ %i.gl, %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit33 ], [ %i.do, %bb.s ] ; 2 uses
  %i.du = phi ptr [ %i.gk, %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit33 ], [ %i.dp, %bb.s ] ; 3 uses
  %.057 = phi i32 [ %i.gj, %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit33 ], [ 0, %bb.s ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.dt) #14
  %i.dy = load ptr, ptr %i.du, align 8
  %i.dz = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.dy) #14
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 20
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = and i32 %i.eb, 251658240
  %.not.i.i.i30 = icmp eq i32 %i.ec, 251658240
  %i.ed = ptrtoint ptr %i.du to i64
  %i.ee = add i64 %i.ed, 32
  %i.ef = inttoptr i64 %i.ee to ptr               ; 2 uses
  br i1 %.not.i.i.i30, label %bb.t, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

bb.t:                                             ; preds = %.lr.ph
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = add i64 %i.eh, 16
  %i.ej = inttoptr i64 %i.ei to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit: ; preds = %.lr.ph, %bb.t
  %.sink.i.i.i31 = phi ptr [ %i.ej, %bb.t ], [ %i.ef, %.lr.ph ]
  %i.ek = zext i1 %i.dx to i32
  %i.el = zext i1 %i.dz to i32
  %i.em = add i32 %i.dw, %.057
  %i.en = add i32 %i.em, %i.ek
  %i.eo = add i32 %i.en, %i.el
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i31, i64 %i.ep
  %i.er = load ptr, ptr %i.eq, align 8            ; 2 uses
  %i.es = load ptr, ptr %i.m, align 8             ; 3 uses
  %i.et = load ptr, ptr %i.p, align 8
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 -8
  %.not.i.i.i32 = icmp eq ptr %i.es, %i.eu
  br i1 %.not.i.i.i32, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  store ptr %i.er, ptr %i.es, align 8
  %i.ev = load ptr, ptr %i.m, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit33

bb.v:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  %i.ex = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.ey = load ptr, ptr %i.i, align 8
  %i.ez = ptrtoint ptr %i.ex to i64               ; 2 uses
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 3
  %i.fd = icmp ne ptr %i.ex, null
  %.neg.i.i.i = sext i1 %i.fd to i64
  %i.fe = add nsw i64 %i.fc, %.neg.i.i.i
  %i.ff = shl nsw i64 %i.fe, 6
  %i.fg = load ptr, ptr %i.o, align 8
  %i.fh = ptrtoint ptr %i.es to i64
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = ashr exact i64 %i.fj, 3
  %i.fl = add nsw i64 %i.ff, %i.fk
  %i.fm = load ptr, ptr %i.l, align 8
  %i.fn = load ptr, ptr %i.h, align 8
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = ashr exact i64 %i.fq, 3
  %i.fs = add nsw i64 %i.fl, %i.fr
  %i.ft = icmp eq i64 %i.fs, 2305843009213693951
  br i1 %i.ft, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #15
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.fu = load i64, ptr %i.d, align 8
  %i.fv = load ptr, ptr %7, align 8
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = sub i64 %i.ez, %i.fw
  %i.fy = ashr exact i64 %i.fx, 3
  %i.fz = sub i64 %i.fu, %i.fy
  %i.ga = icmp ult i64 %i.fz, 2
  br i1 %i.ga, label %bb.y, label %_ZNSt5dequeIPN2v88internal8compiler4NodeESaIS4_EE16_M_push_back_auxIJS4_EEEvDpOT_.exit

bb.y:                                             ; preds = %bb.x
  call void @_ZNSt5dequeIPN2v88internal8compiler4NodeESaIS4_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIPN2v88internal8compiler4NodeESaIS4_EE16_M_push_back_auxIJS4_EEEvDpOT_.exit

_ZNSt5dequeIPN2v88internal8compiler4NodeESaIS4_EE16_M_push_back_auxIJS4_EEEvDpOT_.exit: ; preds = %bb.x, %bb.y
  %i.gb = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #17
  %i.gc = load ptr, ptr %i.n, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store ptr %i.gb, ptr %i.gd, align 8
  %i.ge = load ptr, ptr %i.m, align 8
  store ptr %i.er, ptr %i.ge, align 8
  %i.gf = load ptr, ptr %i.n, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 2 uses
  store ptr %i.gg, ptr %i.n, align 8
  %i.gh = load ptr, ptr %i.gg, align 8            ; 3 uses
  store ptr %i.gh, ptr %i.o, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 512
  store ptr %i.gi, ptr %i.p, align 8
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit33

_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit33: ; preds = %bb.u, %_ZNSt5dequeIPN2v88internal8compiler4NodeESaIS4_EE16_M_push_back_auxIJS4_EEEvDpOT_.exit
  %storemerge = phi ptr [ %i.ew, %bb.u ], [ %i.gh, %_ZNSt5dequeIPN2v88internal8compiler4NodeESaIS4_EE16_M_push_back_auxIJS4_EEEvDpOT_.exit ]
  store ptr %storemerge, ptr %i.m, align 8
  %i.gj = add nuw nsw i32 %.057, 1                ; 2 uses
  %i.gk = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8            ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load i32, ptr %i.gm, align 8
  %i.go = icmp slt i32 %i.gj, %i.gn
  br i1 %i.go, label %.lr.ph, label %.loopexit, !llvm.loop !167

.loopexit:                                        ; preds = %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit33, %bb.s, %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE3popEv.exit
  %.3 = phi ptr [ %.02058, %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE3popEv.exit ], [ %.121, %bb.s ], [ %.121, %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit33 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.gp = load ptr, ptr %i.m, align 8
  %i.gq = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %.loopexit52, label %bb.f, !llvm.loop !168

.loopexit52:                                      ; preds = %.loopexit, %.preheader, %.thread46
  %.2 = phi ptr [ %i.dk, %.thread46 ], [ %2, %.preheader ], [ %.3, %.loopexit ]
  %i.gs = load ptr, ptr %i.s, align 8             ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.gs, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIPN2v88internal8compiler4NodeES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit52, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.gt, %.lr.ph.i.i.i.i ], [ %i.gs, %.loopexit52 ] ; 2 uses
  %i.gt = load ptr, ptr %.06.i.i.i.i, align 8     ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #18
  %.not.i.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIPN2v88internal8compiler4NodeES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !169

_ZNSt10_HashtableIPN2v88internal8compiler4NodeES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %.loopexit52
  %i.gu = load ptr, ptr %8, align 8
  %i.gv = load i64, ptr %i.r, align 8
  %i.gw = shl i64 %i.gv, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gu, i8 0, i64 %i.gw, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.gx = load ptr, ptr %8, align 8               ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.q
  br i1 %i.gy, label %_ZNSt13unordered_setIPN2v88internal8compiler4NodeESt4hashIS4_ESt8equal_toIS4_ESaIS4_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt10_HashtableIPN2v88internal8compiler4NodeES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.gz = load i64, ptr %i.r, align 8
  %i.ha = shl i64 %i.gz, 3
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #18
  br label %_ZNSt13unordered_setIPN2v88internal8compiler4NodeESt4hashIS4_ESt8equal_toIS4_ESaIS4_EED2Ev.exit

_ZNSt13unordered_setIPN2v88internal8compiler4NodeESt4hashIS4_ESt8equal_toIS4_ESaIS4_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIPN2v88internal8compiler4NodeES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.hb = load ptr, ptr %7, align 8               ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i34, label %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt13unordered_setIPN2v88internal8compiler4NodeESt4hashIS4_ESt8equal_toIS4_ESaIS4_EED2Ev.exit
  %i.hc = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.hd = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = icmp ult ptr %i.hc, %i.he
  br i1 %i.hf, label %.lr.ph.i.i.i.i35, label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i

.lr.ph.i.i.i.i35:                                 ; preds = %bb.aa, %.lr.ph.i.i.i.i35
  %.06.i.i.i.i36 = phi ptr [ %i.hh, %.lr.ph.i.i.i.i35 ], [ %i.hc, %bb.aa ] ; 3 uses
  %i.hg = load ptr, ptr %.06.i.i.i.i36, align 8
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef 512) #18
  %i.hh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i36, i64 8
  %i.hi = icmp ult ptr %.06.i.i.i.i36, %i.hd
  br i1 %i.hi, label %.lr.ph.i.i.i.i35, label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i, !llvm.loop !170

_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i35
  %.pre.i.i.i = load ptr, ptr %7, align 8
  br label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i

_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i, %bb.aa
  %i.hj = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i ], [ %i.hb, %bb.aa ]
end_hunk_2
