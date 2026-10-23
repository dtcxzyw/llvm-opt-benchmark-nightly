Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/tramp3d-v4?download=true
inline.NumInlined: 28160
inline.NumDeleted: 8420
loop-unroll.NumCompletelyUnrolled: 144
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 167
begin_hunk_0_@_ZN21SimpleIntersectorDataILi3EE9intersectI6EngineILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEEEEvRKT_b:bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  call void @_ZN6EngineILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(88) %i.cu, ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47
  %i.cw = load ptr, ptr %11, align 8, !tbaa !709
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !431, !noalias !6507
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %8, ptr noundef nonnull align 4 dereferenceable(24) %i.cz, i64 24, i1 false), !tbaa.struct !465
  %i.da = load ptr, ptr %i.cv, align 8, !tbaa !942
  %i.db = call noundef zeroext i1 @_ZN15IntersectorDataILi3EE9intersectI6EngineILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEELi3EEEbRKT_RK11GuardLayersIXT0_EERSE_(ptr noundef nonnull align 8 dereferenceable(200) %i.da, ptr noundef nonnull align 8 dereferenceable(96) %11, ptr noundef nonnull align 4 dereferenceable(24) %8, ptr noundef nonnull align 4 dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  br i1 %i.db, label %bb.g, label %_Z15expressionApplyI6EngineILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14IntersectorTagI11IntersectorILi3EEEEvRKT_RKT0_.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  call void @_ZNK6EngineILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEE17fillGuardsHandlerERK11GuardLayersILi3EERK10WrappedIntILi1EE(ptr noundef nonnull align 8 dereferenceable(88) %i.cu, ptr noundef nonnull align 4 dereferenceable(24) %7, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  br label %_Z15expressionApplyI6EngineILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14IntersectorTagI11IntersectorILi3EEEEvRKT_RKT0_.exit

_Z15expressionApplyI6EngineILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14IntersectorTagI11IntersectorILi3EEEEvRKT_RKT0_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  call void @_ZN6EngineILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %i.cu) #47
  %i.dc = load ptr, ptr %11, align 8, !tbaa !709  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i, label %_ZN6EngineILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_Z15expressionApplyI6EngineILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14IntersectorTagI11IntersectorILi3EEEEvRKT_RKT0_.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 284 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !433
  %i.df = add nsw i32 %i.de, -1                   ; 2 uses
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !433
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.i, label %_ZN6EngineILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  call void @_ZN18GridLayoutViewDataILi3ELi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(289) %i.dc) #47
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef 296) #48
  br label %_ZN6EngineILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEED2Ev.exit

_ZN6EngineILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEED2Ev.exit: ; preds = %_Z15expressionApplyI6EngineILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14IntersectorTagI11IntersectorILi3EEEEvRKT_RKT0_.exit, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #47
  br label %bb.n

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #47
  %i.dh = call noalias noundef nonnull dereferenceable(296) ptr @_Znwm(i64 noundef 296) #45 ; 28 uses
  %i.di = load i64, ptr @_ZN6Unique6next_sE, align 8, !tbaa !171 ; 2 uses
  %i.dj = add nsw i64 %i.di, 1
  store i64 %i.dj, ptr @_ZN6Unique6next_sE, align 8, !tbaa !171
  store i64 %i.di, ptr %i.dh, align 8, !tbaa !706
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  call void @_ZN10GridLayoutILi3EEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(53) %i.dk, ptr noundef nonnull align 8 dereferenceable(53) %i.a)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !431, !noalias !6508 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noundef nonnull align 4 dereferenceable(24) %i.do, i64 24, i1 false), !tbaa.struct !465
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 88
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 4 dereferenceable(24) %i.dq, i64 24, i1 false), !tbaa.struct !465
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 112
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dh, i64 136
  %i.dt = load i32, ptr %i.ag, align 8, !tbaa !165 ; 2 uses
  store i32 %i.dt, ptr %i.ds, align 8, !tbaa !165
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !165 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dh, i64 140
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !165
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dh, i64 144
  store i32 1, ptr %i.dx, align 8, !tbaa !165
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dh, i64 148
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !165 ; 2 uses
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !165
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !165 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dh, i64 152
  store i32 %i.ec, ptr %i.ed, align 8, !tbaa !165
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dh, i64 156
  store i32 1, ptr %i.ee, align 4, !tbaa !165
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dh, i64 160
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !165 ; 2 uses
  store i32 %i.eh, ptr %i.ef, align 8, !tbaa !165
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !165 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dh, i64 164
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !165
  %i.el = getelementptr inbounds nuw i8, ptr %i.dh, i64 168
  %i.em = getelementptr inbounds nuw i8, ptr %i.dh, i64 196
  store i32 0, ptr %i.em, align 4, !tbaa !165
  %i.en = getelementptr inbounds nuw i8, ptr %i.dh, i64 200
  store i32 0, ptr %i.en, align 8, !tbaa !165
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dh, i64 204
  store i32 0, ptr %i.eo, align 4, !tbaa !165
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dh, i64 184
  store i32 %i.dt, ptr %i.ep, align 8, !tbaa !165
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dh, i64 116
  store i32 0, ptr %i.dr, align 8, !tbaa !165
  store i32 %i.dv, ptr %i.eq, align 4, !tbaa !165
  %i.er = getelementptr inbounds nuw i8, ptr %i.dh, i64 188
  store i32 %i.ea, ptr %i.er, align 4, !tbaa !165
  %i.es = getelementptr inbounds nuw i8, ptr %i.dh, i64 120
  %i.et = getelementptr inbounds nuw i8, ptr %i.dh, i64 124
  store i32 0, ptr %i.es, align 8, !tbaa !165
  store i32 %i.ec, ptr %i.et, align 4, !tbaa !165
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dh, i64 192
  store i32 %i.eh, ptr %i.eu, align 8, !tbaa !165
  store <4 x i32> splat (i32 1), ptr %i.el, align 8, !tbaa !165
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dh, i64 128
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dh, i64 132
  store i32 0, ptr %i.ev, align 8, !tbaa !165
  store i32 %i.ej, ptr %i.ew, align 4, !tbaa !165
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dh, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.ex, i8 0, i64 73, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dh, i64 284
  store ptr %i.dh, ptr %12, align 8, !tbaa !709
  store i32 1, ptr %i.ey, align 4, !tbaa !433
  %i.ez = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  call void @_ZN6EngineILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(88) %i.ez, ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  %i.fb = load ptr, ptr %12, align 8, !tbaa !709
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !431, !noalias !6509
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(24) %i.fe, i64 24, i1 false), !tbaa.struct !465
  %i.ff = load ptr, ptr %i.fa, align 8, !tbaa !942
  %i.fg = call noundef zeroext i1 @_ZN15IntersectorDataILi3EE9intersectI6EngineILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEELi3EEEbRKT_RK11GuardLayersIXT0_EERSE_(ptr noundef nonnull align 8 dereferenceable(200) %i.ff, ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  br i1 %i.fg, label %bb.k, label %_Z15expressionApplyI6EngineILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14IntersectorTagI11IntersectorILi3EEEEvRKT_RKT0_.exit8

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  call void @_ZNK6EngineILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEE17fillGuardsHandlerERK11GuardLayersILi3EERK10WrappedIntILi1EE(ptr noundef nonnull align 8 dereferenceable(88) %i.ez, ptr noundef nonnull align 4 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  br label %_Z15expressionApplyI6EngineILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14IntersectorTagI11IntersectorILi3EEEEvRKT_RKT0_.exit8

_Z15expressionApplyI6EngineILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14IntersectorTagI11IntersectorILi3EEEEvRKT_RKT0_.exit8: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  call void @_ZN6EngineILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %i.ez) #47
  %i.fh = load ptr, ptr %12, align 8, !tbaa !709  ; 4 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i9, label %_ZN6EngineILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEED2Ev.exit10, label %bb.l

bb.l:                                             ; preds = %_Z15expressionApplyI6EngineILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14IntersectorTagI11IntersectorILi3EEEEvRKT_RKT0_.exit8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 284 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !433
  %i.fk = add nsw i32 %i.fj, -1                   ; 2 uses
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !433
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %bb.m, label %_ZN6EngineILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEED2Ev.exit10

bb.m:                                             ; preds = %bb.l
  call void @_ZN18GridLayoutViewDataILi3ELi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(289) %i.fh) #47
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef 296) #48
  br label %_ZN6EngineILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEED2Ev.exit10

_ZN6EngineILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEED2Ev.exit10: ; preds = %_Z15expressionApplyI6EngineILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEE14IntersectorTagI11IntersectorILi3EEEEvRKT_RKT0_.exit8, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #47
  br label %bb.n

bb.n:                                             ; preds = %_ZN6EngineILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEED2Ev.exit10, %_ZN6EngineILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK14GridLayoutDataILi3EE7touchesI8IntervalILi3EESt20back_insert_iteratorISt6vectorI5INodeILi3EESaIS7_EEE21TouchesConstructINodeILi3EEEEiRKT_T0_RKT1_(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 4 dereferenceable(24) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.std::pair.333", align 8    ; 10 uses
  %5 = alloca %class.Interval, align 4            ; 13 uses
  %6 = alloca %"struct.std::pair.333", align 8    ; 10 uses
  %7 = alloca %class.Interval, align 4            ; 13 uses
  %8 = alloca %class.INode, align 8               ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !tbaa !165, !noalias !6517 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !165, !noalias !6517
  %i.g = add i32 %i.d, -1
  %i.h = add i32 %i.g, %i.f                       ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !165, !noalias !6517 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !165, !noalias !6517
  %i.l = add i32 %i.i, -1
  %i.m = add i32 %i.l, %i.k                       ; 2 uses
  %i.n = icmp slt i32 %i.h, %i.i
  %i.o = icmp sgt i32 %i.d, %i.m
  %or.cond.i.i.i = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond.i.i.i, label %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi3ELb0EE9intersectERKS1_S5_RS2_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.i, i32 %i.d) ; 2 uses
  %.016.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.m, i32 %i.h)
  %reass.sub.a = sub i32 %.016.i.i.i, %spec.select.i.i.i
  %i.p = add i32 %reass.sub.a, 1
  br label %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi3ELb0EE9intersectERKS1_S5_RS2_.exit.i.i

_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi3ELb0EE9intersectERKS1_S5_RS2_.exit.i.i: ; preds = %bb.b, %bb.a
  %.sroa.13.0110 = phi i32 [ 0, %bb.a ], [ %spec.select.i.i.i, %bb.b ] ; 2 uses
  %.sroa.15104.0 = phi i32 [ 0, %bb.a ], [ %i.p, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.q, align 8, !tbaa !165, !noalias !6517 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !165, !noalias !6517
  %i.v = add i32 %i.s, -1
  %i.w = add i32 %i.v, %i.u                       ; 2 uses
  %i.x = load i32, ptr %i.r, align 4, !tbaa !165, !noalias !6517 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !165, !noalias !6517
  %i.aa = add i32 %i.x, -1
  %i.ab = add i32 %i.aa, %i.z                     ; 2 uses
  %i.ac = icmp slt i32 %i.w, %i.x
  %i.ad = icmp sgt i32 %i.s, %i.ab
  %or.cond.i.i.i.i = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond.i.i.i.i, label %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi2ELb0EE9intersectERKS1_S5_RS2_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi3ELb0EE9intersectERKS1_S5_RS2_.exit.i.i
  %spec.select.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.x, i32 %i.s) ; 2 uses
  %.016.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ab, i32 %i.w)
  %reass.sub78 = sub i32 %.016.i.i.i.i, %spec.select.i.i.i.i
  %i.ae = add i32 %reass.sub78, 1
  br label %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi2ELb0EE9intersectERKS1_S5_RS2_.exit.i.i.i

_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi2ELb0EE9intersectERKS1_S5_RS2_.exit.i.i.i: ; preds = %bb.c, %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi3ELb0EE9intersectERKS1_S5_RS2_.exit.i.i
  %.sroa.8101.0 = phi i32 [ 0, %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi3ELb0EE9intersectERKS1_S5_RS2_.exit.i.i ], [ %spec.select.i.i.i.i, %bb.c ] ; 2 uses
  %.sroa.10102.0 = phi i32 [ 0, %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi3ELb0EE9intersectERKS1_S5_RS2_.exit.i.i ], [ %i.ae, %bb.c ] ; 2 uses
  %i.af = load i32, ptr %i.a, align 8, !tbaa !165, !noalias !6517 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !165, !noalias !6517
  %i.ai = add i32 %i.af, -1
  %i.aj = add i32 %i.ai, %i.ah                    ; 2 uses
  %i.ak = load i32, ptr %1, align 4, !tbaa !165, !noalias !6517 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !165, !noalias !6517
  %i.an = add i32 %i.ak, -1
  %i.ao = add i32 %i.an, %i.am                    ; 2 uses
  %i.ap = icmp slt i32 %i.aj, %i.ak
  %i.aq = icmp sgt i32 %i.af, %i.ao
  %or.cond.i.i.i.i.i = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %or.cond.i.i.i.i.i, label %_Z9intersectI8IntervalILi3EES1_EN19IntersectReturnTypeIT_T0_E6Type_tERKS3_RKS4_.exit.thread, label %_Z9intersectI8IntervalILi3EES1_EN19IntersectReturnTypeIT_T0_E6Type_tERKS3_RKS4_.exit

_Z9intersectI8IntervalILi3EES1_EN19IntersectReturnTypeIT_T0_E6Type_tERKS3_RKS4_.exit: ; preds = %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi2ELb0EE9intersectERKS1_S5_RS2_.exit.i.i.i
  %spec.select.i.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 %i.af) ; 2 uses
  %.016.i.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ao, i32 %i.aj) ; 2 uses
  %reass.sub79 = sub i32 %.016.i.i.i.i.i, %spec.select.i.i.i.i.i
  %i.ar = icmp ugt i32 %reass.sub79, 2147483646
  %9 = icmp slt i32 %.sroa.10102.0, 1
  %or.cond.i = select i1 %i.ar, i1 true, i1 %9
  %10 = icmp slt i32 %.sroa.15104.0, 1
  %or.cond14.i = select i1 %or.cond.i, i1 true, i1 %10
  br i1 %or.cond14.i, label %_Z9intersectI8IntervalILi3EES1_EN19IntersectReturnTypeIT_T0_E6Type_tERKS3_RKS4_.exit.thread, label %.preheader

.preheader:                                       ; preds = %_Z9intersectI8IntervalILi3EES1_EN19IntersectReturnTypeIT_T0_E6Type_tERKS3_RKS4_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  store i32 %spec.select.i.i.i.i.i, ptr %5, align 4, !tbaa !165
  store i32 1, ptr %i.at, align 4, !tbaa !165
  call void @_ZNK9DomainMapI8IntervalILi1EEiE5touchERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.333") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 4 dereferenceable(8) %5)
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !762
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !165 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47
  store i32 %.016.i.i.i.i.i, ptr %7, align 4, !tbaa !165
  store i32 1, ptr %i.av, align 4, !tbaa !165
  call void @_ZNK9DomainMapI8IntervalILi1EEiE5touchERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.333") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 4 dereferenceable(8) %7)
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !762
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !165 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  %spec.select = call i32 @llvm.smax.i32(i32 %i.az, i32 %i.bc)
  %spec.select164 = call i32 @llvm.smin.i32(i32 %i.az, i32 %i.bc) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  store i32 %.sroa.8101.0, ptr %5, align 4, !tbaa !165
  store i32 1, ptr %i.at, align 4, !tbaa !165
  call void @_ZNK9DomainMapI8IntervalILi1EEiE5touchERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.333") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 4 dereferenceable(8) %5)
  %i.be = load ptr, ptr %i.au, align 8, !tbaa !762
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !165 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47
  %i.bh = add i32 %.sroa.8101.0, -1
  %i.bi = add i32 %i.bh, %.sroa.10102.0
  store i32 %i.bi, ptr %7, align 4, !tbaa !165
  store i32 1, ptr %i.av, align 4, !tbaa !165
  call void @_ZNK9DomainMapI8IntervalILi1EEiE5touchERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.333") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 4 dereferenceable(8) %7)
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !762
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !165 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  %.sroa.5.0109 = call i32 @llvm.smax.i32(i32 %i.bg, i32 %i.bl)
  %.sroa.6.0 = call i32 @llvm.smin.i32(i32 %i.bg, i32 %i.bl) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  store i32 %.sroa.13.0110, ptr %5, align 4, !tbaa !165
  store i32 1, ptr %i.at, align 4, !tbaa !165
  call void @_ZNK9DomainMapI8IntervalILi1EEiE5touchERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.333") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 4 dereferenceable(8) %5)
  %i.bn = load ptr, ptr %i.au, align 8, !tbaa !762
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !165 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47
  %i.bq = add i32 %.sroa.13.0110, -1
  %i.br = add i32 %i.bq, %.sroa.15104.0
  store i32 %i.br, ptr %7, align 4, !tbaa !165
  store i32 1, ptr %i.av, align 4, !tbaa !165
  call void @_ZNK9DomainMapI8IntervalILi1EEiE5touchERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.333") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 4 dereferenceable(8) %7)
  %i.bs = load ptr, ptr %i.aw, align 8, !tbaa !762
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !165 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  %.sroa.896.0 = call i32 @llvm.smax.i32(i32 %i.bp, i32 %i.bu)
  %.sroa.10.0 = call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.bu)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cj = add nsw i32 %.sroa.896.0, 1
  %i.ck = add nsw i32 %.sroa.5.0109, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.o, %.preheader
  %.sroa.15.0 = phi i32 [ %.sroa.10.0, %.preheader ], [ %.sroa.15.2, %bb.o ] ; 2 uses
  %.sroa.8.0 = phi i32 [ %.sroa.6.0, %.preheader ], [ %.sroa.8.3, %bb.o ] ; 2 uses
  %.sroa.0.0108 = phi i32 [ %spec.select164, %.preheader ], [ %spec.select166, %bb.o ] ; 3 uses
  %.0 = phi i32 [ 0, %.preheader ], [ %.1, %bb.o ] ; 2 uses
  %i.cl = load i32, ptr %i.bv, align 4, !tbaa !165
  %i.cm = mul nsw i32 %i.cl, %.sroa.8.0
  %i.cn = add nsw i32 %i.cm, %.sroa.0.0108
  %i.co = load i32, ptr %i.bw, align 8, !tbaa !165
  %i.cp = mul nsw i32 %i.co, %.sroa.15.0
  %i.cq = add nsw i32 %i.cn, %i.cp
  %i.cr = sext i32 %i.cq to i64
  %i.cs = load ptr, ptr %i.bx, align 8, !tbaa !589
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cr ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !586 ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !165 ; 2 uses
  %i.cx = icmp slt i32 %i.cw, 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  %i.cz = load i32, ptr %i.cy, align 4            ; 2 uses
  %i.da = icmp slt i32 %i.cz, 1
  %or.cond.i49 = select i1 %i.cx, i1 true, i1 %i.da
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 20
  %i.dc = load i32, ptr %i.db, align 4            ; 2 uses
  %i.dd = icmp slt i32 %i.dc, 1
  %or.cond14.i50 = select i1 %or.cond.i49, i1 true, i1 %i.dd
  br i1 %or.cond14.i50, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.df = load i32, ptr %i.c, align 4, !tbaa !165, !noalias !6518 ; 3 uses
  %i.dg = load i32, ptr %i.j, align 4, !tbaa !165, !noalias !6518
  %i.dh = add i32 %i.df, -1
  %i.di = add i32 %i.dh, %i.dg                    ; 2 uses
  %i.dj = load i32, ptr %i.de, align 4, !tbaa !165, !noalias !6518 ; 3 uses
  %i.dk = add nsw i32 %i.dc, -1
  %i.dl = add i32 %i.dk, %i.dj                    ; 2 uses
  %i.dm = icmp slt i32 %i.di, %i.dj
  %i.dn = icmp sgt i32 %i.df, %i.dl
  %or.cond.i.i.i51 = select i1 %i.dm, i1 true, i1 %i.dn
  br i1 %or.cond.i.i.i51, label %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi3ELb0EE9intersectERKS1_S5_RS2_.exit.i.i55, label %bb.f

bb.f:                                             ; preds = %bb.e
  %spec.select.i.i.i52 = call i32 @llvm.smax.i32(i32 %i.dj, i32 %i.df) ; 2 uses
  %.016.i.i.i53 = call i32 @llvm.smin.i32(i32 %i.dl, i32 %i.di)
  %reass.sub80.a = sub i32 %.016.i.i.i53, %spec.select.i.i.i52
  %i.do = add i32 %reass.sub80.a, 1
  br label %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi3ELb0EE9intersectERKS1_S5_RS2_.exit.i.i55

_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi3ELb0EE9intersectERKS1_S5_RS2_.exit.i.i55: ; preds = %bb.f, %bb.e
  %.sroa.11.0 = phi i32 [ 0, %bb.e ], [ %spec.select.i.i.i52, %bb.f ]
  %.sroa.13.0 = phi i32 [ 0, %bb.e ], [ %i.do, %bb.f ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.dq = load i32, ptr %i.r, align 4, !tbaa !165, !noalias !6518 ; 3 uses
  %i.dr = load i32, ptr %i.y, align 4, !tbaa !165, !noalias !6518
  %i.ds = add i32 %i.dq, -1
  %i.dt = add i32 %i.ds, %i.dr                    ; 2 uses
  %i.du = load i32, ptr %i.dp, align 4, !tbaa !165, !noalias !6518 ; 3 uses
  %i.dv = add nsw i32 %i.cz, -1
  %i.dw = add i32 %i.dv, %i.du                    ; 2 uses
  %i.dx = icmp slt i32 %i.dt, %i.du
  %i.dy = icmp sgt i32 %i.dq, %i.dw
  %or.cond.i.i.i.i56 = select i1 %i.dx, i1 true, i1 %i.dy
  br i1 %or.cond.i.i.i.i56, label %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi2ELb0EE9intersectERKS1_S5_RS2_.exit.i.i.i60, label %bb.g

bb.g:                                             ; preds = %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi3ELb0EE9intersectERKS1_S5_RS2_.exit.i.i55
  %spec.select.i.i.i.i57 = call i32 @llvm.smax.i32(i32 %i.du, i32 %i.dq) ; 2 uses
  %.016.i.i.i.i58 = call i32 @llvm.smin.i32(i32 %i.dw, i32 %i.dt)
  %reass.sub81.a = sub i32 %.016.i.i.i.i58, %spec.select.i.i.i.i57
  %i.dz = add i32 %reass.sub81.a, 1
  br label %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi2ELb0EE9intersectERKS1_S5_RS2_.exit.i.i.i60

_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi2ELb0EE9intersectERKS1_S5_RS2_.exit.i.i.i60: ; preds = %bb.g, %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi3ELb0EE9intersectERKS1_S5_RS2_.exit.i.i55
  %.sroa.7.0 = phi i32 [ 0, %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi3ELb0EE9intersectERKS1_S5_RS2_.exit.i.i55 ], [ %spec.select.i.i.i.i57, %bb.g ]
  %.sroa.9.0 = phi i32 [ 0, %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi3ELb0EE9intersectERKS1_S5_RS2_.exit.i.i55 ], [ %i.dz, %bb.g ]
  %i.ea = load i32, ptr %1, align 4, !tbaa !165, !noalias !6518 ; 3 uses
  %i.eb = load i32, ptr %i.al, align 4, !tbaa !165, !noalias !6518
  %i.ec = add i32 %i.ea, -1
  %i.ed = add i32 %i.ec, %i.eb                    ; 2 uses
  %i.ee = load i32, ptr %i.cu, align 4, !tbaa !165, !noalias !6518 ; 3 uses
  %i.ef = add nsw i32 %i.cw, -1
  %i.eg = add i32 %i.ef, %i.ee                    ; 2 uses
  %i.eh = icmp slt i32 %i.ed, %i.ee
  %i.ei = icmp sgt i32 %i.ea, %i.eg
  %or.cond.i.i.i.i.i61 = or i1 %i.eh, %i.ei
  br i1 %or.cond.i.i.i.i.i61, label %_Z9intersectI8IntervalILi3EES1_EN19IntersectReturnTypeIT_T0_E6Type_tERKS3_RKS4_.exit65, label %bb.h

bb.h:                                             ; preds = %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi2ELb0EE9intersectERKS1_S5_RS2_.exit.i.i.i60
  %spec.select.i.i.i.i.i62 = call i32 @llvm.smax.i32(i32 %i.ee, i32 %i.ea) ; 2 uses
  %.016.i.i.i.i.i63 = call i32 @llvm.smin.i32(i32 %i.eg, i32 %i.ed)
  %reass.sub82 = sub i32 %.016.i.i.i.i.i63, %spec.select.i.i.i.i.i62
  %i.ej = add i32 %reass.sub82, 1
  br label %_Z9intersectI8IntervalILi3EES1_EN19IntersectReturnTypeIT_T0_E6Type_tERKS3_RKS4_.exit65

_Z9intersectI8IntervalILi3EES1_EN19IntersectReturnTypeIT_T0_E6Type_tERKS3_RKS4_.exit65: ; preds = %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi2ELb0EE9intersectERKS1_S5_RS2_.exit.i.i.i60, %bb.h
  %.sroa.0.0 = phi i32 [ 0, %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi2ELb0EE9intersectERKS1_S5_RS2_.exit.i.i.i60 ], [ %spec.select.i.i.i.i.i62, %bb.h ]
  %.sroa.5.0 = phi i32 [ 0, %_ZN21IntersectDomainSingleI8IntervalILi1EES1_S0_ILi3EELi2ELb0EE9intersectERKS1_S5_RS2_.exit.i.i.i60 ], [ %i.ej, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47
  %i.ek = load ptr, ptr %i.ct, align 8, !tbaa !586 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 56
  %i.em = load i32, ptr %i.el, align 4, !tbaa !165 ; 2 uses
end_hunk_0
