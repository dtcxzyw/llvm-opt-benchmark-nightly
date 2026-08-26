Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wasm-load-elimination?download=true
inline.NumInlined: 1521
inline.NumDeleted: 781
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal8compiler19WasmLoadElimination15ReduceEffectPhiEPNS1_4NodeE:bb.a

bb.o:                                             ; preds = %.lr.ph53, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit42
  %.052 = phi i32 [ 1, %.lr.ph53 ], [ %i.fg, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit42 ] ; 3 uses
  %i.dt = load ptr, ptr %1, align 8               ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load i32, ptr %i.du, align 8
  %i.dw = icmp slt i32 %.052, %i.dv
  br i1 %i.dw, label %bb.q, label %bb.p, !prof !6

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6) #14
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.dt) #13
  %i.ea = load ptr, ptr %1, align 8
  %i.eb = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.ea) #13
  %i.ec = load i32, ptr %i.j, align 4
  %i.ed = and i32 %i.ec, 251658240
  %.not.i.i.i39 = icmp eq i32 %i.ed, 251658240
  br i1 %.not.i.i.i39, label %bb.r, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit41

bb.r:                                             ; preds = %bb.q
  %i.ee = load ptr, ptr %i.o, align 8
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = add i64 %i.ef, 16
  %i.eh = inttoptr i64 %i.eg to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit41

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit41: ; preds = %bb.q, %bb.r
  %.sink.i.i.i40 = phi ptr [ %i.eh, %bb.r ], [ %i.o, %bb.q ]
  %i.ei = zext i1 %i.dz to i32
  %i.ej = zext i1 %i.eb to i32
  %i.ek = add i32 %i.dy, %.052
  %i.el = add i32 %i.ek, %i.ei
  %i.em = add i32 %i.el, %i.ej
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i40, i64 %i.en
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 20
  %i.er = load i32, ptr %i.eq, align 4
  %i.es = and i32 %i.er, 16777215
  %i.et = zext nneg i32 %i.es to i64              ; 2 uses
  %i.eu = load ptr, ptr %i.be, align 8
  %i.ev = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = ashr exact i64 %i.ey, 3
  %i.fa = icmp ugt i64 %i.ez, %i.et
  br i1 %i.fa, label %bb.s, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit42

bb.s:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit41
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.et
  %i.fc = load ptr, ptr %i.fb, align 8
  br label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit42

_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit42: ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit41, %bb.s
  %i.fd = phi ptr [ %i.fc, %bb.s ], [ null, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit41 ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  tail call void @_ZN2v88internal8compiler19WasmLoadElimination9HalfState13IntersectWithEPKS3_(ptr noundef nonnull align 8 dereferenceable(88) %i.dr, ptr noundef nonnull %i.fe)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 96
  tail call void @_ZN2v88internal8compiler19WasmLoadElimination9HalfState13IntersectWithEPKS3_(ptr noundef nonnull align 8 dereferenceable(88) %i.ds, ptr noundef nonnull %i.ff)
  %i.fg = add nuw nsw i32 %.052, 1                ; 2 uses
  %exitcond55.not = icmp eq i32 %i.fg, %i.al
  br i1 %exitcond55.not, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread.sink.split, label %bb.o, !llvm.loop !14

_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread.sink.split: ; preds = %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit42, %_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit, %bb.i
  %.sink = phi ptr [ %i.bu, %bb.i ], [ %i.dp, %_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit ], [ %i.dp, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit42 ]
  %i.fh = tail call ptr @_ZN2v88internal8compiler19WasmLoadElimination11UpdateStateEPNS1_4NodeEPKNS2_13AbstractStateE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull %1, ptr noundef %.sink)
  br label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread

_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread: ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit37, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit38, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread.sink.split, %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit
  %.sroa.0.4 = phi ptr [ null, %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit ], [ null, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit ], [ %i.fh, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread.sink.split ], [ null, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit38 ], [ null, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit37 ]
  ret ptr %.sroa.0.4
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler19WasmLoadElimination11ReduceStartEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr nofree noundef readonly captures(ret: address, provenance) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call ptr @_ZN2v88internal8compiler19WasmLoadElimination11UpdateStateEPNS1_4NodeEPKNS2_13AbstractStateE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %1, ptr noundef nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler19WasmLoadElimination15ReduceOtherNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::WasmLoadElimination::HalfState", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6) #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.i = load i32, ptr %i.h, align 4
  %i.j = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.a) #13
  %i.k = load ptr, ptr %1, align 8
  %i.l = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.k) #13
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 251658240
  %.not.i.i.i = icmp eq i32 %i.o, 251658240
  %i.p = ptrtoint ptr %1 to i64
  %i.q = add i64 %i.p, 32
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  br i1 %.not.i.i.i, label %bb.e, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = add i64 %i.t, 16
  %i.v = inttoptr i64 %i.u to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i.i = phi ptr [ %i.v, %bb.e ], [ %i.r, %bb.d ]
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
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 3
  %i.ap = icmp ugt i64 %i.ao, %i.ag
  br i1 %i.ap, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread

_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ag
  %i.ar = load ptr, ptr %i.aq, align 8            ; 4 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit
  %i.at = load ptr, ptr %1, align 8               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i16, ptr %i.au, align 8
  %i.aw = icmp eq i16 %i.av, 50
  br i1 %i.aw, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 18
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.ax, align 2
  %i.ay = and i8 %.sroa.0.0.copyload.i.i, 16
  %.not = icmp eq i8 %i.ay, 0
  br i1 %.not, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ba = load ptr, ptr %i.az, align 8            ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = sub i64 %i.bd, %i.bf
  %i.bh = icmp ult i64 %i.bg, 184
  br i1 %i.bh, label %bb.i, label %_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination13AbstractStateEJNS4_9HalfStateERKS6_EEEPT_DpOT0_.exit, !prof !5

bb.i:                                             ; preds = %bb.h
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ba, i64 noundef 184) #13
  %.pre.i.i = load i64, ptr %i.be, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination13AbstractStateEJNS4_9HalfStateERKS6_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination13AbstractStateEJNS4_9HalfStateERKS6_EEEPT_DpOT0_.exit: ; preds = %bb.h, %bb.i
  %i.bi = phi i64 [ %.pre.i.i, %bb.i ], [ %i.bf, %bb.h ] ; 2 uses
  %i.bj = inttoptr i64 %i.bi to ptr               ; 9 uses
  %i.bk = add i64 %i.bi, 184
  store i64 %i.bk, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %i.bb, i64 88, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.ba, ptr %i.bl, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  store ptr %i.ba, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  store ptr %i.ba, ptr %.sroa.6.0..sroa_idx.a, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i8 0, i64 24, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 80
  store ptr %i.ba, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 88
  store ptr %i.ba, ptr %.sroa.9.0..sroa_idx, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bm, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.g, %_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination13AbstractStateEJNS4_9HalfStateERKS6_EEEPT_DpOT0_.exit
  %i.bn = phi ptr [ %i.bj, %_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination13AbstractStateEJNS4_9HalfStateERKS6_EEEPT_DpOT0_.exit ], [ %i.ar, %bb.g ], [ %i.ar, %bb.f ]
  %i.bo = tail call ptr @_ZN2v88internal8compiler19WasmLoadElimination11UpdateStateEPNS1_4NodeEPKNS2_13AbstractStateE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.bn)
  br label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread

_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread: ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit, %bb.a, %bb.j
  %.sroa.0.1 = phi ptr [ %i.bo, %bb.j ], [ null, %bb.a ], [ null, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit ], [ null, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit ]
  ret ptr %.sroa.0.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @_ZNK2v88internal8compiler19WasmLoadElimination9HalfState11LookupFieldEiPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = xor i32 %1, -1
  %i.c = shl i32 %1, 15
  %i.d = add i32 %i.c, %i.b                       ; 2 uses
  %i.e = lshr i32 %i.d, 12
  %i.f = xor i32 %i.e, %i.d
  %i.g = mul i32 %i.f, 5                          ; 2 uses
  %i.h = lshr i32 %i.g, 4
  %i.i = xor i32 %i.h, %i.g
  %i.j = mul i32 %i.i, 2057                       ; 2 uses
  %i.k = lshr i32 %i.j, 16
  %i.l = xor i32 %i.k, %i.j                       ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not16.i.i = icmp eq ptr %i.m, null
  br i1 %.not16.i.i, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.d
  %.018.i.i = phi ptr [ %i.z, %bb.d ], [ %i.m, %bb.a ] ; 6 uses
  %.01217.i.i = phi i32 [ %i.r, %bb.d ], [ 0, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 36
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.n, align 4 ; 2 uses
  %.not15.i.i = icmp eq i32 %i.l, %.sroa.01.0.copyload.i.i
  br i1 %.not15.i.i, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8FindHashENSC_9HashValueE.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i
  %i.o = xor i32 %.sroa.01.0.copyload.i.i, %i.l
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.i.i
  %.1.i.i = phi i32 [ %i.r, %bb.b ], [ %.01217.i.i, %.preheader.i.i ] ; 4 uses
  %i.p = lshr exact i32 -2147483648, %.1.i.i
  %i.q = and i32 %i.p, %i.o
  %.not.i.not.i.i = icmp eq i32 %i.q, 0
  %i.r = add nsw i32 %.1.i.i, 1                   ; 2 uses
  br i1 %.not.i.not.i.i, label %bb.b, label %bb.c, !llvm.loop !15

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 32
  %i.t = load i8, ptr %i.s, align 8
  %i.u = sext i8 %i.t to i32
  %i.v = icmp slt i32 %.1.i.i, %i.u
  br i1 %i.v, label %bb.d, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 48
  %i.x = sext i32 %.1.i.i to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit, label %.lr.ph.i.i, !llvm.loop !16

_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8FindHashENSC_9HashValueE.exit.i: ; preds = %.lr.ph.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %.not11.i.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8FindHashENSC_9HashValueE.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not10.i.i.i.i.i, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.e ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ae, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = icmp slt i32 %i.ag, %1                  ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.ah, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ah, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !17

_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = icmp eq ptr %.19.i.i.i.i.i, %i.ae
  br i1 %i.ai, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit, label %_ZNKSt3mapIiN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS0_4base4hashIS5_EEEESt4lessIiENS1_13ZoneAllocatorISt4pairIKiSB_EEEE4findERSG_.exit.i.i

_ZNKSt3mapIiN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS0_4base4hashIS5_EEEESt4lessIiENS1_13ZoneAllocatorISt4pairIKiSB_EEEE4findERSG_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = icmp slt i32 %1, %i.ak                  ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.al, ptr %i.ae, ptr %.19.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 32
  %spec.select.i.i = select i1 %i.al, ptr %i.a, ptr %i.am
  br label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit

bb.f:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8FindHashENSC_9HashValueE.exit.i
  %i.an = load i32, ptr %.018.i.i, align 8
  %i.ao = icmp eq i32 %1, %i.an
  %..i.i = select i1 %i.ao, ptr %.018.i.i, ptr %i.a
  br label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit

_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit: ; preds = %bb.c, %bb.d, %bb.a, %bb.e, %_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %_ZNKSt3mapIiN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS0_4base4hashIS5_EEEESt4lessIiENS1_13ZoneAllocatorISt4pairIKiSB_EEEE4findERSG_.exit.i.i, %bb.f
  %.sink.i.i = phi ptr [ %i.a, %bb.e ], [ %..i.i, %bb.f ], [ %spec.select.i.i, %_ZNKSt3mapIiN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_19WasmLoadElimination19FieldOrElementValueENS0_4base4hashIS5_EEEESt4lessIiENS1_13ZoneAllocatorISt4pairIKiSB_EEEE4findERSG_.exit.i.i ], [ %i.a, %_ZNKSt8_Rb_treeIiSt4pairIKiN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_19WasmLoadElimination19FieldOrElementValueENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIiENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i ], [ %i.a, %bb.a ], [ %i.a, %bb.d ], [ %i.a, %bb.c ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8 ; 8 uses
  %i.aq = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ar = xor i64 %i.aq, -1
  %i.as = shl i64 %i.aq, 21
  %i.at = add i64 %i.as, %i.ar                    ; 2 uses
  %i.au = lshr i64 %i.at, 24
  %i.av = xor i64 %i.au, %i.at
  %i.aw = mul i64 %i.av, 265                      ; 2 uses
  %i.ax = lshr i64 %i.aw, 14
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = mul i64 %i.ay, 21                       ; 2 uses
  %i.ba = lshr i64 %i.az, 28
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = mul i32 %i.bc, -2147483647              ; 2 uses
  %i.be = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not16.i.i1 = icmp eq ptr %i.be, null
  br i1 %.not16.i.i1, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit, %bb.i
  %.018.i.i3 = phi ptr [ %i.br, %bb.i ], [ %i.be, %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit ] ; 6 uses
  %.01217.i.i4 = phi i32 [ %i.bj, %bb.i ], [ 0, %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.018.i.i3, i64 20
  %.sroa.01.0.copyload.i.i5 = load i32, ptr %i.bf, align 4 ; 2 uses
  %.not15.i.i6 = icmp eq i32 %i.bd, %.sroa.01.0.copyload.i.i5
  br i1 %.not15.i.i6, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i, label %.preheader.i.i7

.preheader.i.i7:                                  ; preds = %.lr.ph.i.i2
  %i.bg = xor i32 %.sroa.01.0.copyload.i.i5, %i.bd
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i.i7
  %.1.i.i8 = phi i32 [ %i.bj, %bb.g ], [ %.01217.i.i4, %.preheader.i.i7 ] ; 4 uses
  %i.bh = lshr exact i32 -2147483648, %.1.i.i8
  %i.bi = and i32 %i.bh, %i.bg
  %.not.i.not.i.i9 = icmp eq i32 %i.bi, 0
  %i.bj = add nsw i32 %.1.i.i8, 1                 ; 2 uses
  br i1 %.not.i.not.i.i9, label %bb.g, label %bb.h, !llvm.loop !18

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %.018.i.i3, i64 16
  %i.bl = load i8, ptr %i.bk, align 8
  %i.bm = sext i8 %i.bl to i32
  %i.bn = icmp slt i32 %.1.i.i8, %i.bm
  br i1 %i.bn, label %bb.i, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE3GetERKS4_.exit

bb.i:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %.018.i.i3, i64 32
  %i.bp = sext i32 %.1.i.i8 to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.br, null
  br i1 %.not.i.i11, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i2, !llvm.loop !19

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i: ; preds = %.lr.ph.i.i2
  %i.bs = getelementptr inbounds nuw i8, ptr %.018.i.i3, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  %.not11.i.i12 = icmp eq ptr %i.bt, null
  br i1 %.not11.i.i12, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 3 uses
  %.not10.i.i.i.i.i13 = icmp eq ptr %i.bv, null
  br i1 %.not10.i.i.i.i.i13, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i.i.i.i14

.lr.ph.i.i.i.i.i14:                               ; preds = %bb.j, %.lr.ph.i.i.i.i.i14
  %.012.i.i.i.i.i15 = phi ptr [ %.1.i.i.i.i.i20, %.lr.ph.i.i.i.i.i14 ], [ %i.bv, %bb.j ] ; 3 uses
  %.0811.i.i.i.i.i16 = phi ptr [ %.19.i.i.i.i.i17, %.lr.ph.i.i.i.i.i14 ], [ %i.bw, %bb.j ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i15, i64 32
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = icmp ult ptr %i.by, %2                  ; 2 uses
  %.19.i.i.i.i.i17 = select i1 %i.bz, ptr %.0811.i.i.i.i.i16, ptr %.012.i.i.i.i.i15 ; 4 uses
  %.1.in.v.i.i.i.i.i18 = select i1 %i.bz, i64 24, i64 16
  %.1.in.i.i.i.i.i19 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i15, i64 %.1.in.v.i.i.i.i.i18
  %.1.i.i.i.i.i20 = load ptr, ptr %.1.in.i.i.i.i.i19, align 8 ; 2 uses
  %.not.i.i.i.i.i21 = icmp eq ptr %.1.i.i.i.i.i20, null
  br i1 %.not.i.i.i.i.i21, label %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i14, !llvm.loop !20

_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_19WasmLoadElimination19FieldOrElementValueEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i14
  %i.ca = icmp eq ptr %.19.i.i.i.i.i17, %i.bw
end_hunk_0
begin_hunk_1_@_ZNK2v88internal8compiler19WasmLoadElimination16ComputeLoopStateEPNS1_4NodeEPKNS2_13AbstractStateE:bb.a
  br label %bb.m

.thread:                                          ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

bb.j:                                             ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.bx = load ptr, ptr %i.bh, align 8
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %.thread, %bb.j
  %.sink94 = phi ptr [ %i.bb, %.thread ], [ %i.bx, %bb.j ]
  %.sink93 = phi i64 [ 32, %.thread ], [ 16, %bb.j ]
  %i.by = ptrtoint ptr %.sink94 to i64
  %i.bz = add i64 %.sink93, %i.by
  %.sink.i.i = inttoptr i64 %i.bz to ptr
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %indvars.iv
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  store ptr %i.cb, ptr %i.b, align 8
  %i.cc = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.cd = load ptr, ptr %i.ac, align 8
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -8
  %.not.i.i.i = icmp eq ptr %i.cc, %i.ce
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  store ptr %i.cb, ptr %i.cc, align 8
  %i.cf = load ptr, ptr %i.z, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.cg, ptr %i.z, align 8
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit

bb.l:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  call void @_ZNSt5dequeIPN2v88internal8compiler4NodeESaIS4_EE16_M_push_back_auxIJS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit

_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.i, !llvm.loop !30

bb.m:                                             ; preds = %.lr.ph73, %.loopexit
  %i.ch = phi ptr [ %i.bu, %.lr.ph73 ], [ %i.hg, %.loopexit ] ; 3 uses
  %.02772 = phi ptr [ %2, %.lr.ph73 ], [ %.532, %.loopexit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.ci = load ptr, ptr %i.ch, align 8
  store ptr %i.ci, ptr %i.c, align 8
  %i.cj = load ptr, ptr %i.y, align 8
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -8
  %.not.i.i36 = icmp eq ptr %i.ch, %i.ck
  br i1 %.not.i.i36, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE3popEv.exit

bb.o:                                             ; preds = %bb.m
  %i.cm = load ptr, ptr %i.w, align 8
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef 512) #16
  %i.cn = load ptr, ptr %i.v, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  store ptr %i.co, ptr %i.v, align 8
  %i.cp = load ptr, ptr %i.co, align 8            ; 3 uses
  store ptr %i.cp, ptr %i.w, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 512
  store ptr %i.cq, ptr %i.y, align 8
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE3popEv.exit

_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE3popEv.exit: ; preds = %bb.n, %bb.o
  %storemerge.i.i = phi ptr [ %i.cl, %bb.n ], [ %i.cp, %bb.o ]
  store ptr %storemerge.i.i, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  store ptr %13, ptr %6, align 8
  %i.cr = call { ptr, i8 } @_ZNSt10_HashtableIPN2v88internal8compiler4NodeES4_NS1_13ZoneAllocatorIS4_EENSt8__detail9_IdentityESt8equal_toIS4_ENS0_4base4hashIS4_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS4_SM_NS7_10_AllocNodeINS5_INS7_10_Hash_nodeIS4_Lb1EEEEEEEEESt4pairINS7_14_Node_iteratorIS4_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.fca.1.extract = extractvalue { ptr, i8 } %i.cr, 1
  %i.cs = trunc i8 %.fca.1.extract to i1
  br i1 %i.cs, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE3popEv.exit
  %i.ct = load ptr, ptr %i.c, align 8             ; 6 uses
  %i.cu = load ptr, ptr %i.ct, align 8            ; 8 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load i16, ptr %i.cv, align 8
  switch i16 %i.cw, label %.thread57 [
    i16 259, label %bb.q
    i16 50, label %bb.aa
  ]

bb.q:                                             ; preds = %bb.p
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 20
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %bb.s, label %bb.r, !prof !6

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5) #14
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = and i32 %i.db, 251658240
  %.not.i.i.i37 = icmp eq i32 %i.dc, 251658240
  %i.dd = ptrtoint ptr %i.ct to i64
  %i.de = add i64 %i.dd, 32
  %i.df = inttoptr i64 %i.de to ptr               ; 2 uses
  br i1 %.not.i.i.i37, label %bb.t, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

bb.t:                                             ; preds = %bb.s
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = add i64 %i.dh, 16
  %i.dj = inttoptr i64 %i.di to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit: ; preds = %bb.s, %bb.t
  %.sink.i.i.i = phi ptr [ %i.dj, %bb.t ], [ %i.df, %bb.s ]
  %i.dk = load ptr, ptr %.sink.i.i.i, align 8     ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load i16, ptr %i.dm, align 8
  %i.do = add i16 %i.dn, -63
  %switch = icmp ult i16 %i.do, 2
  br i1 %switch, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  %i.dp = load ptr, ptr %i.bw, align 8            ; 8 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.02772, i64 96
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 3 uses
  %i.du = load i64, ptr %i.dt, align 8            ; 2 uses
  %i.dv = sub i64 %i.ds, %i.du
  %i.dw = icmp ult i64 %i.dv, 184
  br i1 %i.dw, label %bb.v, label %bb.z, !prof !5

bb.v:                                             ; preds = %bb.u
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.dp, i64 noundef 184) #13
  %.pre.i.i = load i64, ptr %i.dt, align 8
  br label %bb.z

bb.w:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.dx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = zext i32 %.sroa.4.0.copyload to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !range !9, !noundef !10
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.x, label %.thread57

bb.x:                                             ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw i8, ptr %.02772, i64 8
  %i.ef = call noundef ptr @_ZNK2v88internal8compiler19WasmLoadElimination9HalfState9KillFieldEiPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(88) %i.ee, i32 noundef %.sroa.4.0.copyload, ptr noundef nonnull %i.dk)
  %i.eg = load ptr, ptr %i.bw, align 8            ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.02772, i64 96
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 3 uses
  %i.el = load i64, ptr %i.ek, align 8            ; 2 uses
  %i.em = sub i64 %i.ej, %i.el
  %i.en = icmp ult i64 %i.em, 184
  br i1 %i.en, label %bb.y, label %_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination13AbstractStateEJRKNS4_9HalfStateES8_EEEPT_DpOT0_.exit, !prof !5

bb.y:                                             ; preds = %bb.x
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.eg, i64 noundef 184) #13
  %.pre.i.i38 = load i64, ptr %i.ek, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination13AbstractStateEJRKNS4_9HalfStateES8_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination13AbstractStateEJRKNS4_9HalfStateES8_EEEPT_DpOT0_.exit: ; preds = %bb.x, %bb.y
  %i.eo = phi i64 [ %.pre.i.i38, %bb.y ], [ %i.el, %bb.x ] ; 2 uses
  %i.ep = inttoptr i64 %i.eo to ptr               ; 3 uses
  %i.eq = add i64 %i.eo, 184
  store i64 %i.eq, ptr %i.ek, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 8 dereferenceable(88) %i.eh, i64 88, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.er, ptr noundef nonnull align 8 dereferenceable(88) %i.ef, i64 88, i1 false)
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.es, ptr noundef nonnull align 8 dereferenceable(88) %4, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre = load ptr, ptr %i.c, align 8             ; 2 uses
  %.pre79 = load ptr, ptr %.pre, align 8
  br label %.thread57

bb.z:                                             ; preds = %bb.v, %bb.u
  %i.et = phi i64 [ %.pre.i.i, %bb.v ], [ %i.du, %bb.u ] ; 2 uses
  %i.eu = inttoptr i64 %i.et to ptr               ; 9 uses
  %i.ev = add i64 %i.et, 184
  store i64 %i.ev, ptr %i.dt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(88) %i.dq, i64 88, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr %i.dp, ptr %i.ew, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.451.0..sroa_idx, i8 0, i64 24, i1 false)
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  store ptr %i.dp, ptr %.sroa.552.0..sroa_idx, align 8
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  store ptr %i.dp, ptr %.sroa.653.0..sroa_idx, align 8
  %.sroa.754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.754.0..sroa_idx, i8 0, i64 24, i1 false)
  %.sroa.855.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 80
  store ptr %i.dp, ptr %.sroa.855.0..sroa_idx, align 8
  %.sroa.956.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 88
  store ptr %i.dp, ptr %.sroa.956.0..sroa_idx, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ex, ptr noundef nonnull align 8 dereferenceable(88) %5, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.thread62

bb.aa:                                            ; preds = %bb.p
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cu, i64 18
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.ey, align 2
  %i.ez = and i8 %.sroa.0.0.copyload.i.i, 16
  %.not = icmp eq i8 %i.ez, 0
  br i1 %.not, label %bb.ab, label %.thread57

bb.ab:                                            ; preds = %bb.aa
  %i.fa = load ptr, ptr %i.bw, align 8            ; 8 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.02772, i64 96
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 3 uses
  %i.ff = load i64, ptr %i.fe, align 8            ; 2 uses
  %i.fg = sub i64 %i.fd, %i.ff
  %i.fh = icmp ult i64 %i.fg, 184
  br i1 %i.fh, label %bb.ac, label %_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination13AbstractStateEJNS4_9HalfStateERKS6_EEEPT_DpOT0_.exit42, !prof !5

bb.ac:                                            ; preds = %bb.ab
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.fa, i64 noundef 184) #13
  %.pre.i.i41 = load i64, ptr %i.fe, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination13AbstractStateEJNS4_9HalfStateERKS6_EEEPT_DpOT0_.exit42

_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination13AbstractStateEJNS4_9HalfStateERKS6_EEEPT_DpOT0_.exit42: ; preds = %bb.ab, %bb.ac
  %i.fi = phi i64 [ %.pre.i.i41, %bb.ac ], [ %i.ff, %bb.ab ] ; 2 uses
  %i.fj = inttoptr i64 %i.fi to ptr               ; 9 uses
  %i.fk = add i64 %i.fi, 184
  store i64 %i.fk, ptr %i.fe, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 8 dereferenceable(88) %i.fb, i64 88, i1 false)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store ptr %i.fa, ptr %i.fl, align 8
  %.sroa.4.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx49, i8 0, i64 24, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  store ptr %i.fa, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.fj, i64 48
  store ptr %i.fa, ptr %.sroa.6.0..sroa_idx.a, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i8 0, i64 24, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 80
  store ptr %i.fa, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 88
  store ptr %i.fa, ptr %.sroa.9.0..sroa_idx, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fm, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.thread62

.thread57:                                        ; preds = %bb.p, %_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination13AbstractStateEJRKNS4_9HalfStateES8_EEEPT_DpOT0_.exit, %bb.w, %bb.aa
  %i.fn = phi ptr [ %i.cu, %bb.p ], [ %i.cu, %bb.aa ], [ %i.cu, %bb.w ], [ %.pre79, %_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination13AbstractStateEJRKNS4_9HalfStateES8_EEEPT_DpOT0_.exit ]
  %i.fo = phi ptr [ %i.ct, %bb.p ], [ %i.ct, %bb.aa ], [ %i.ct, %bb.w ], [ %.pre, %_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination13AbstractStateEJRKNS4_9HalfStateES8_EEEPT_DpOT0_.exit ]
  %.330 = phi ptr [ %.02772, %bb.p ], [ %.02772, %bb.aa ], [ %.02772, %bb.w ], [ %i.ep, %_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination13AbstractStateEJRKNS4_9HalfStateES8_EEEPT_DpOT0_.exit ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fq = load i32, ptr %i.fp, align 8
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.thread57, %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit46
  %i.fs = phi ptr [ %i.ha, %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit46 ], [ %i.fo, %.thread57 ] ; 4 uses
  %.071 = phi i32 [ %i.gz, %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit46 ], [ 0, %.thread57 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.ft = load ptr, ptr %i.fs, align 8            ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fv = load i32, ptr %i.fu, align 8
  %i.fw = icmp slt i32 %.071, %i.fv
  br i1 %i.fw, label %bb.ae, label %bb.ad, !prof !6

bb.ad:                                            ; preds = %.lr.ph
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6) #14
  unreachable

bb.ae:                                            ; preds = %.lr.ph
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 20
  %i.fy = load i32, ptr %i.fx, align 4
  %i.fz = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.ft) #13
  %i.ga = load ptr, ptr %i.fs, align 8
  %i.gb = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.ga) #13
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fs, i64 20
  %i.gd = load i32, ptr %i.gc, align 4
  %i.ge = and i32 %i.gd, 251658240
  %.not.i.i.i43 = icmp eq i32 %i.ge, 251658240
  %i.gf = ptrtoint ptr %i.fs to i64
  %i.gg = add i64 %i.gf, 32
  %i.gh = inttoptr i64 %i.gg to ptr               ; 2 uses
  br i1 %.not.i.i.i43, label %bb.af, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

bb.af:                                            ; preds = %bb.ae
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = add i64 %i.gj, 16
  %i.gl = inttoptr i64 %i.gk to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit: ; preds = %bb.ae, %bb.af
  %.sink.i.i.i44 = phi ptr [ %i.gl, %bb.af ], [ %i.gh, %bb.ae ]
  %i.gm = zext i1 %i.fz to i32
  %i.gn = zext i1 %i.gb to i32
  %i.go = add i32 %i.fy, %.071
  %i.gp = add i32 %i.go, %i.gm
  %i.gq = add i32 %i.gp, %i.gn
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i44, i64 %i.gr
  %i.gt = load ptr, ptr %i.gs, align 8            ; 2 uses
  store ptr %i.gt, ptr %i.d, align 8
  %i.gu = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.gv = load ptr, ptr %i.ac, align 8
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 -8
  %.not.i.i.i45 = icmp eq ptr %i.gu, %i.gw
  br i1 %.not.i.i.i45, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  store ptr %i.gt, ptr %i.gu, align 8
  %i.gx = load ptr, ptr %i.z, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store ptr %i.gy, ptr %i.z, align 8
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit46

bb.ah:                                            ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  call void @_ZNSt5dequeIPN2v88internal8compiler4NodeESaIS4_EE16_M_push_back_auxIJS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit46

_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit46: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %i.gz = add nuw nsw i32 %.071, 1                ; 2 uses
  %i.ha = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.hd = load i32, ptr %i.hc, align 8
  %i.he = icmp slt i32 %i.gz, %i.hd
  br i1 %i.he, label %.lr.ph, label %.loopexit, !llvm.loop !31

.thread62:                                        ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination13AbstractStateEJNS4_9HalfStateERKS6_EEEPT_DpOT0_.exit42, %bb.z
  %.4.ph = phi ptr [ %i.eu, %bb.z ], [ %i.fj, %_ZN2v88internal4Zone3NewINS0_8compiler19WasmLoadElimination13AbstractStateEJNS4_9HalfStateERKS6_EEEPT_DpOT0_.exit42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %.loopexit66

.loopexit:                                        ; preds = %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit46, %.thread57, %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE3popEv.exit
  %.532 = phi ptr [ %.02772, %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE3popEv.exit ], [ %.330, %.thread57 ], [ %.330, %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit46 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.hf = load ptr, ptr %i.z, align 8
  %i.hg = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %.loopexit66, label %bb.m, !llvm.loop !32

.loopexit66:                                      ; preds = %.loopexit, %.preheader, %.thread62
  %.5 = phi ptr [ %.4.ph, %.thread62 ], [ %2, %.preheader ], [ %.532, %.loopexit ]
  %i.hi = load ptr, ptr %i.ae, align 8
  %i.hj = load i64, ptr %i.ag, align 8
  %i.hk = shl i64 %i.hj, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.hi, i8 0, i64 %i.hk, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @_ZN2v88internal4ZoneD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(64) %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @_ZN2v88internal19AccountingAllocatorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %i.hl = load ptr, ptr %10, align 8              ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i47, label %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %.loopexit66
  %i.hm = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.hn = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = icmp ult ptr %i.hm, %i.ho
  br i1 %i.hp, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ai, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.hr, %.lr.ph.i.i.i.i ], [ %i.hm, %bb.ai ] ; 3 uses
  %i.hq = load ptr, ptr %.06.i.i.i.i, align 8
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef 512) #16
  %i.hr = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.hs = icmp ult ptr %.06.i.i.i.i, %i.hn
  br i1 %i.hs, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i, !llvm.loop !33

_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %10, align 8
  br label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i

_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i, %bb.ai
  %i.ht = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i ], [ %i.hl, %bb.ai ]
  %i.hu = load i64, ptr %i.m, align 8
  %i.hv = shl i64 %i.hu, 3
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hv) #16
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEED2Ev.exit

_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEED2Ev.exit: ; preds = %.loopexit66, %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNK2v88internal8compiler19WasmLoadElimination9HalfState7IsEmptyEv.exit, %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEED2Ev.exit
  %.6 = phi ptr [ %.5, %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEED2Ev.exit ], [ %2, %_ZNK2v88internal8compiler19WasmLoadElimination9HalfState7IsEmptyEv.exit ]
  ret ptr %.6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler19WasmLoadElimination9HalfState6UpdateIiEEvRNS1_13PersistentMapIT_NS5_IPNS1_4NodeENS2_19FieldOrElementValueENS_4base4hashIS8_EEEENSB_IS6_EEEES6_S8_S9_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::PersistentMap.0", align 8 ; 4 uses
  %5 = alloca %"struct.v8::internal::compiler::WasmLoadElimination::FieldOrElementValue", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::compiler::PersistentMap.0", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.a = xor i32 %1, -1
  %i.b = shl i32 %1, 15
  %i.c = add i32 %i.b, %i.a                       ; 2 uses
  %i.d = lshr i32 %i.c, 12
  %i.e = xor i32 %i.d, %i.c
  %i.f = mul i32 %i.e, 5                          ; 2 uses
  %i.g = lshr i32 %i.f, 4
  %i.h = xor i32 %i.g, %i.f
  %i.i = mul i32 %i.h, 2057                       ; 2 uses
  %i.j = lshr i32 %i.i, 16
  %i.k = xor i32 %i.j, %i.i                       ; 2 uses
  %i.l = load ptr, ptr %0, align 8                ; 2 uses
  %.not16.i.i = icmp eq ptr %i.l, null
  br i1 %.not16.i.i, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE3GetERKi.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.d
  %.018.i.i = phi ptr [ %i.y, %bb.d ], [ %i.l, %bb.a ] ; 6 uses
  %.01217.i.i = phi i32 [ %i.q, %bb.d ], [ 0, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 36
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.m, align 4 ; 2 uses
  %.not15.i.i = icmp eq i32 %i.k, %.sroa.01.0.copyload.i.i
  br i1 %.not15.i.i, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8FindHashENSC_9HashValueE.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i
  %i.n = xor i32 %.sroa.01.0.copyload.i.i, %i.k
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.i.i
  %.1.i.i = phi i32 [ %i.q, %bb.b ], [ %.01217.i.i, %.preheader.i.i ] ; 4 uses
  %i.o = lshr exact i32 -2147483648, %.1.i.i
  %i.p = and i32 %i.o, %i.n
  %.not.i.not.i.i = icmp eq i32 %i.p, 0
  %i.q = add nsw i32 %.1.i.i, 1                   ; 2 uses
  br i1 %.not.i.not.i.i, label %bb.b, label %bb.c, !llvm.loop !15

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 32
  %i.s = load i8, ptr %i.r, align 8
  %i.t = sext i8 %i.s to i32
  %i.u = icmp slt i32 %.1.i.i, %i.t
end_hunk_1
begin_hunk_2_@_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE5beginEv:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false)
  br label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratordeEv.exit.i

_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratordeEv.exit.i: ; preds = %bb.g, %bb.f
  %i.an = call noundef zeroext i1 @_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13, !noalias !51
  br i1 %i.an, label %bb.h, label %_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iterator5beginEPKNSC_11FocusedTreeESA_.exit

bb.h:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratordeEv.exit.i
  %i.ao = call noundef nonnull align 8 dereferenceable(304) ptr @_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratorppEv(ptr noundef nonnull align 8 dereferenceable(304) %0) ; 0 uses
  %i.ap = load ptr, ptr %i.aa, align 8, !alias.scope !51 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13, !noalias !51
  br i1 %i.aq, label %.critedge.i, label %bb.e, !llvm.loop !58

.critedge.i:                                      ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13, !noalias !51
  br label %_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iterator5beginEPKNSC_11FocusedTreeESA_.exit

_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iterator5beginEPKNSC_11FocusedTreeESA_.exit: ; preds = %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratordeEv.exit.i, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iterator5beginEPKNSC_11FocusedTreeESA_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(304) ptr @_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratorppEv(ptr noundef nonnull align 8 dereferenceable(304) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.512 = alloca { %"struct.std::array.109", %"class.v8::internal::compiler::PersistentMap.0" }, align 8 ; 4 uses
  %.sroa.5 = alloca { %"struct.std::array.109", %"class.v8::internal::compiler::PersistentMap.0" }, align 8 ; 4 uses
  %1 = alloca %"struct.std::pair.110", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratordeEv.exit, %bb.a
  %i.f = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not6 = icmp eq ptr %i.h, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.i) #17 ; 2 uses
  store ptr %i.j, ptr %i.b, align 8
  %i.k = load ptr, ptr %i.g, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = load i32, ptr %0, align 8                ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.q = sext i32 %i.n to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.512)
  %.sroa.512.280..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.512, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.512.280..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.c, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.512, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.512)
  br label %.loopexit

bb.g:                                             ; preds = %.preheader, %.critedge
  %indvars.iv = phi i64 [ %i.q, %.preheader ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 4 uses
  %i.s = trunc nsw i64 %indvars.iv.next to i32    ; 2 uses
  store i32 %i.s, ptr %0, align 8
  %i.t = load i32, ptr %i.p, align 4
  %i.u = lshr exact i32 -2147483648, %i.s
  %i.v = and i32 %i.t, %i.u
  %.not.i.not = icmp eq i32 %i.v, 0
  br i1 %.not.i.not, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.critedge, label %bb.j

.critedge:                                        ; preds = %bb.g, %bb.h
  %i.z = icmp eq i64 %indvars.iv.next, 0
  br i1 %i.z, label %bb.i, label %bb.g, !llvm.loop !59

bb.i:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.5.280..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.280..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store i32 0, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.c, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.5, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.ab = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  store i32 %i.ab, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ad = load i8, ptr %i.ac, align 8
  %i.ae = sext i8 %i.ad to i64
  %i.af = icmp slt i64 %indvars.iv, %i.ae
  br i1 %i.af, label %.lr.ph.i, label %_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE12FindLeftmostEPKNSC_11FocusedTreeEPiPSt5arrayISF_Lm32EE.exit

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %storemerge.i18 = phi i32 [ %storemerge.i, %.lr.ph.i ], [ %i.ab, %bb.j ] ; 3 uses
  %.041.i = phi ptr [ %.1.i, %.lr.ph.i ], [ %i.x, %bb.j ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.041.i, i64 36
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = lshr exact i32 -2147483648, %storemerge.i18
  %i.aj = and i32 %i.ah, %i.ai
  %.not.i.i.not.i = icmp eq i32 %i.aj, 0          ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.041.i, i64 48
  %i.al = sext i32 %storemerge.i18 to i64         ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %.not.i8 = icmp eq ptr %i.an, null              ; 2 uses
  %spec.select = select i1 %.not.i8, ptr null, ptr %.041.i
  %.sink.i = select i1 %.not.i.i.not.i, ptr %i.an, ptr %spec.select
  %i.ao = select i1 %.not.i.i.not.i, i1 true, i1 %.not.i8
  %.1.i = select i1 %i.ao, ptr %.041.i, ptr %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.al
  store ptr %.sink.i, ptr %i.ap, align 8
  %storemerge.i = add nsw i32 %storemerge.i18, 1  ; 3 uses
  store i32 %storemerge.i, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  %i.ar = load i8, ptr %i.aq, align 8
  %i.as = sext i8 %i.ar to i32
  %i.at = icmp slt i32 %storemerge.i, %i.as
  br i1 %i.at, label %.lr.ph.i, label %_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE12FindLeftmostEPKNSC_11FocusedTreeEPiPSt5arrayISF_Lm32EE.exit, !llvm.loop !54

_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE12FindLeftmostEPKNSC_11FocusedTreeEPiPSt5arrayISF_Lm32EE.exit: ; preds = %.lr.ph.i, %bb.j
  %.0.lcssa.i = phi ptr [ %i.x, %bb.j ], [ %.1.i, %.lr.ph.i ] ; 3 uses
  store ptr %.0.lcssa.i, ptr %i.a, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 40 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not7 = icmp eq ptr %i.av, null
  br i1 %.not7, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE12FindLeftmostEPKNSC_11FocusedTreeEPiPSt5arrayISF_Lm32EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  br label %bb.m

bb.k:                                             ; preds = %_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE12FindLeftmostEPKNSC_11FocusedTreeEPiPSt5arrayISF_Lm32EE.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8            ; 3 uses
  store ptr %i.ax, ptr %i.b, align 8
  %.pr = load ptr, ptr %i.au, align 8, !noalias !60
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %.not.i9 = icmp eq ptr %.pr, null
  br i1 %.not.i9, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load i32, ptr %i.ay, align 8, !noalias !60
  store i32 %i.az, ptr %1, align 8, !alias.scope !60
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  br label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratordeEv.exit

bb.m:                                             ; preds = %.thread, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %.0.lcssa.i, i64 32, i1 false)
  br label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratordeEv.exit

_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratordeEv.exit: ; preds = %bb.l, %bb.m
  %i.bb = call noundef zeroext i1 @_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br i1 %i.bb, label %bb.b, label %.loopexit, !llvm.loop !63

.loopexit:                                        ; preds = %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratordeEv.exit, %bb.d, %bb.b, %bb.i, %bb.f
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19WasmLoadEliminationC2EPNS1_15AdvancedReducer6EditorEPNS1_7JSGraphEPNS0_4ZoneE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(264) initializes((0, 16), (24, 240)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2v88internal8compiler19WasmLoadEliminationE, i64 16), ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr %3, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.514.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %3, ptr %.sroa.514.0..sroa_idx.i.i, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %3, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.5.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  store ptr %3, ptr %.sroa.5.0..sroa_idx.i3.i, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.sroa.514.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  store ptr %3, ptr %.sroa.514.0..sroa_idx.i4.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %3, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.m = load ptr, ptr %2, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  store ptr %3, ptr %i.l, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %3, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.not.i.i = icmp eq i32 %i.o, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  br i1 %.not.i.i, label %_ZN2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEEC2EmSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = zext i32 %i.o to i64
  %i.u = shl nuw nsw i64 %i.t, 3                  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = sub i64 %i.w, %i.y
  %i.aa = icmp ugt i64 %i.u, %i.z
  br i1 %i.aa, label %bb.c, label %.lr.ph.preheader.i.i, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 noundef %i.u) #13
  %.pre.i.i.i.i = load i64, ptr %i.x, align 8
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c, %bb.b
  %i.ab = phi i64 [ %.pre.i.i.i.i, %bb.c ], [ %i.y, %bb.b ] ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr               ; 3 uses
  %i.ad = add i64 %i.ab, %i.u
  store i64 %i.ad, ptr %i.x, align 8
  store ptr %i.ac, ptr %i.q, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u ; 2 uses
  store ptr %i.ae, ptr %i.s, align 8
  store ptr %i.ae, ptr %i.r, align 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.09.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %i.ac, %.lr.ph.preheader.i.i ] ; 2 uses
  store ptr null, ptr %.09.i.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.r, align 8
  %i.ah = icmp ult ptr %i.af, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i, label %_ZN2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEEC2EmSA_.exit, !llvm.loop !64

_ZN2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEEC2EmSA_.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %2, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 792 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit

bb.d:                                             ; preds = %_ZN2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEEC2EmSA_.exit
  %i.al = load ptr, ptr %2, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4DeadEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #13
  %i.ap = tail call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.al, ptr noundef %i.ao, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #13 ; 2 uses
  store ptr %i.ap, ptr %i.aj, align 8
  br label %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit

_ZN2v88internal8compiler12MachineGraph4DeadEv.exit: ; preds = %_ZN2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEEC2EmSA_.exit, %bb.d
  %i.aq = phi ptr [ %i.ap, %bb.d ], [ %i.ak, %_ZN2v88internal8compiler11NodeAuxDataIPKNS1_19WasmLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEEC2EmSA_.exit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.aq, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %3, ptr %i.as, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK2v88internal8compiler19WasmLoadElimination7isolateEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 800
  %i.d = load ptr, ptr %i.c, align 8
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler19WasmLoadEliminationD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler19WasmLoadEliminationD0Ev(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 264) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK2v88internal8compiler19WasmLoadElimination12reducer_nameEv(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @.str.9
}

declare void @_ZN2v88internal8compiler7Reducer8FinalizeEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEEeqERKSC_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.59.i = alloca [28 x i8], align 4         ; 4 uses
  %.sroa.4.i = alloca [28 x i8], align 4          ; 4 uses
  %.sroa.5.i = alloca [28 x i8], align 4          ; 4 uses
  %2 = alloca %"struct.v8::internal::compiler::PersistentMap<int, v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::WasmLoadElimination::FieldOrElementValue>>::ZipIterable", align 8 ; 5 uses
  %3 = alloca %"class.v8::internal::compiler::PersistentMap<int, v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::WasmLoadElimination::FieldOrElementValue>>::double_iterator", align 8 ; 12 uses
  %4 = alloca %"class.std::tuple.112", align 8    ; 7 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call noundef zeroext i1 @_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  br i1 %i.f, label %_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE11ZipIterable3endEv.exit, label %bb.l

_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE11ZipIterable3endEv.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE11ZipIterable5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::PersistentMap<int, v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::WasmLoadElimination::FieldOrElementValue>>::double_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(80) %2)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 320 ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  %i.l = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not29 = icmp eq ptr %i.l, null
  %or.cond30 = select i1 %i.k, i1 %.not29, i1 false
  br i1 %or.cond30, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratorneERKSD_.exit.i._crit_edge, label %_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE15double_iteratorneERKSD_.exit.thread.lr.ph

_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE15double_iteratorneERKSD_.exit.thread.lr.ph: ; preds = %_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE11ZipIterable3endEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 608
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 312 ; 2 uses
  %.sroa.5.8..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %.sroa.5.i, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 280
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.59.8..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %.sroa.59.i, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 609
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 584
  %.sroa.4.8..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 4 ; 3 uses
  br label %_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE15double_iteratorneERKSD_.exit.thread

_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE15double_iteratorneERKSD_.exit.thread: ; preds = %_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE15double_iteratorneERKSD_.exit.thread.lr.ph, %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratorneERKSD_.exit.i
  %i.u = phi ptr [ %i.l, %_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE15double_iteratorneERKSD_.exit.thread.lr.ph ], [ %i.au, %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratorneERKSD_.exit.i ] ; 5 uses
  %i.v = phi ptr [ %i.j, %_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE15double_iteratorneERKSD_.exit.thread.lr.ph ], [ %i.as, %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratorneERKSD_.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.w = load i8, ptr %i.m, align 8, !range !9, !noalias !65, !noundef !10
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZN2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE15double_iteratorneERKSD_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.59.i)
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !noalias !68
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.r, align 8, !noalias !68 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !noalias !68
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.59.8..sroa_idx10.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !65
  br label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratordeEv.exit.i

bb.e:                                             ; preds = %bb.c
  %.sroa.08.0.copyload.i = load i32, ptr %i.v, align 8, !noalias !65
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.59.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.59.0..sroa_idx.i, i64 28, i1 false), !noalias !65
  br label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratordeEv.exit.i

_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratordeEv.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.08.0.i = phi i32 [ %.sroa.08.0.copyload.i, %bb.e ], [ %i.ac, %bb.d ]
  %i.ae = load i8, ptr %i.s, align 1, !range !9, !noalias !65, !noundef !10
  %i.af = trunc nuw i8 %i.ae to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !noalias !65
  br i1 %i.af, label %bb.f, label %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratordeEv.exit2.i

bb.f:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIiNS2_IPNS1_4NodeENS1_19WasmLoadElimination19FieldOrElementValueENS_4base4hashIS4_EEEENS8_IiEEE8iteratordeEv.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !71
  %.not.i1.i = icmp eq ptr %i.ah, null
  br i1 %.not.i1.i, label %bb.h, label %bb.g
end_hunk_2
