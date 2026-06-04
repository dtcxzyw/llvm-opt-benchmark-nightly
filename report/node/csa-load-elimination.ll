inline.NumInlined: 1756
inline.NumDeleted: 834
begin_hunk_0_@_ZN2v88internal8compiler18CsaLoadElimination6ReduceEPNS1_4NodeE:bb.a
  br label %bb.i

.peel.next:                                       ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.peel, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit ], [ 1, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.peel ] ; 3 uses
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.2) #14
  %.pre = load ptr, ptr %1, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 20
  %.pre52 = load i32, ptr %.phi.trans.insert, align 4
  %i.am = sext i32 %.pre52 to i64
  %i.an = icmp slt i64 %indvars.iv, %i.am
  br i1 %i.an, label %bb.g, label %.loopexit50, !prof !7

.loopexit50:                                      ; preds = %.peel.next
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12) #15
  unreachable

bb.g:                                             ; preds = %.peel.next
  %i.ao = load i32, ptr %i.f, align 4
  %i.ap = and i32 %i.ao, 251658240
  %.not.i.i.i = icmp eq i32 %i.ap, 251658240
  br i1 %.not.i.i.i, label %bb.h, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.u, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = add i64 %i.ar, 16
  %i.at = inttoptr i64 %i.as to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i.i = phi ptr [ %i.at, %bb.h ], [ %i.u, %bb.g ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i.i, i64 %indvars.iv
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = and i32 %i.ax, 16777215
  %i.az = load ptr, ptr %i.av, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.3, i32 noundef %i.ay, ptr noundef %i.bb) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = load ptr, ptr %1, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp slt i64 %indvars.iv.next, %i.bf
  br i1 %i.bg, label %.peel.next, label %._crit_edge, !llvm.loop !8

bb.i:                                             ; preds = %._crit_edge, %bb.c
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.5) #14
  %i.bh = load ptr, ptr %1, align 8               ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph47, label %.loopexit

.lr.ph47:                                         ; preds = %bb.i
  %i.bl = ptrtoint ptr %1 to i64
  %i.bm = add i64 %i.bl, 32
  %i.bn = inttoptr i64 %i.bm to ptr               ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 632
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph47, %bb.m
  %i.bq = phi ptr [ %i.bh, %.lr.ph47 ], [ %i.dq, %bb.m ] ; 2 uses
  %.03744 = phi i32 [ 0, %.lr.ph47 ], [ %i.dp, %bb.m ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 20
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.bq) #14
  %i.bu = load ptr, ptr %1, align 8
  %i.bv = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.bu) #14
  %i.bw = load i32, ptr %i.f, align 4
  %i.bx = and i32 %i.bw, 251658240
  %.not.i.i.i40 = icmp eq i32 %i.bx, 251658240
  br i1 %.not.i.i.i40, label %bb.k, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

bb.k:                                             ; preds = %bb.j
  %i.by = load ptr, ptr %i.bn, align 8
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = add i64 %i.bz, 16
  %i.cb = inttoptr i64 %i.ca to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit: ; preds = %bb.j, %bb.k
  %.sink.i.i.i41 = phi ptr [ %i.cb, %bb.k ], [ %i.bn, %bb.j ]
  %i.cc = zext i1 %i.bt to i32
  %i.cd = zext i1 %i.bv to i32
  %i.ce = add i32 %i.bs, %.03744
  %i.cf = add i32 %i.ce, %i.cc
  %i.cg = add i32 %i.cf, %i.cd
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i41, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8            ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 20
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = and i32 %i.cl, 16777215                 ; 3 uses
  %i.cn = zext nneg i32 %i.cm to i64              ; 2 uses
  %i.co = load ptr, ptr %i.bo, align 8
  %i.cp = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 3
  %i.cu = icmp ugt i64 %i.ct, %i.cn
  br i1 %i.cu, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread

_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cn
  %i.cw = load ptr, ptr %i.cv, align 8            ; 13 uses
  %.not = icmp eq ptr %i.cw, null
  br i1 %.not, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit
  %i.cx = load ptr, ptr %i.cj, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.6, i32 noundef %.03744, i32 noundef %i.cm, ptr noundef %i.cz) #14
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState5PrintERKNS1_13PersistentMapIjNS4_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS6_EEEENS9_IjEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.da)
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState5PrintERKNS1_13PersistentMapIjNS4_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS6_EEEENS9_IjEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.db)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 112
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState5PrintERKNS1_13PersistentMapIjNS4_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS6_EEEENS9_IjEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.dc)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 160
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState5PrintERKNS1_13PersistentMapIPNS1_4NodeENS4_IS6_NS2_9FieldInfoENS_4base4hashIS6_EEEESA_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.dd)
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 208
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState5PrintERKNS1_13PersistentMapIPNS1_4NodeENS4_IS6_NS2_9FieldInfoENS_4base4hashIS6_EEEESA_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.de)
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 256
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState5PrintERKNS1_13PersistentMapIPNS1_4NodeENS4_IS6_NS2_9FieldInfoENS_4base4hashIS6_EEEESA_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.df)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 312
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState5PrintERKNS1_13PersistentMapIjNS4_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS6_EEEENS9_IjEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.dg)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 360
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState5PrintERKNS1_13PersistentMapIjNS4_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS6_EEEENS9_IjEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.dh)
  %i.di = getelementptr inbounds nuw i8, ptr %i.cw, i64 408
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState5PrintERKNS1_13PersistentMapIjNS4_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS6_EEEENS9_IjEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.di)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cw, i64 456
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState5PrintERKNS1_13PersistentMapIPNS1_4NodeENS4_IS6_NS2_9FieldInfoENS_4base4hashIS6_EEEESA_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.dj)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cw, i64 504
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState5PrintERKNS1_13PersistentMapIPNS1_4NodeENS4_IS6_NS2_9FieldInfoENS_4base4hashIS6_EEEESA_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.dk)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cw, i64 552
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState5PrintERKNS1_13PersistentMapIPNS1_4NodeENS4_IS6_NS2_9FieldInfoENS_4base4hashIS6_EEEESA_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.dl)
  br label %bb.m

_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread: ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit
  %i.dm = load ptr, ptr %i.cj, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.7, i32 noundef %.03744, i32 noundef %i.cm, ptr noundef %i.do) #14
  br label %bb.m

bb.m:                                             ; preds = %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread, %bb.l
  %i.dp = add nuw nsw i32 %.03744, 1              ; 2 uses
  %i.dq = load ptr, ptr %1, align 8               ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load i32, ptr %i.dr, align 8
  %i.dt = icmp slt i32 %i.dp, %i.ds
  br i1 %i.dt, label %bb.j, label %.loopexit, !llvm.loop !11

.loopexit:                                        ; preds = %bb.m, %bb.i, %bb.b, %bb.a
  %i.du = phi ptr [ %.pre53, %bb.a ], [ %i.bh, %bb.i ], [ %.pre53, %bb.b ], [ %i.dq, %bb.m ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load i16, ptr %i.dv, align 8
  switch i16 %i.dw, label %bb.t [
    i16 310, label %bb.n
    i16 311, label %bb.n
    i16 353, label %bb.o
    i16 305, label %bb.o
    i16 520, label %bb.p
    i16 519, label %bb.p
    i16 50, label %bb.q
    i16 37, label %bb.r
    i16 64, label %bb.u
    i16 0, label %bb.s
  ]

bb.n:                                             ; preds = %.loopexit, %.loopexit
  %i.dx = tail call noundef nonnull align 1 dereferenceable(3) ptr @_ZN2v88internal8compiler14ObjectAccessOfEPKNS1_8OperatorE(ptr noundef nonnull %i.du) #14
  %i.dy = tail call ptr @_ZN2v88internal8compiler18CsaLoadElimination20ReduceLoadFromObjectEPNS1_4NodeERKNS1_12ObjectAccessE(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull %1, ptr noundef nonnull align 1 dereferenceable(3) %i.dx)
  br label %bb.u

bb.o:                                             ; preds = %.loopexit, %.loopexit
  %i.dz = tail call noundef nonnull align 1 dereferenceable(3) ptr @_ZN2v88internal8compiler14ObjectAccessOfEPKNS1_8OperatorE(ptr noundef nonnull %i.du) #14
  %i.ea = tail call ptr @_ZN2v88internal8compiler18CsaLoadElimination19ReduceStoreToObjectEPNS1_4NodeERKNS1_12ObjectAccessE(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull %1, ptr noundef nonnull align 1 dereferenceable(3) %i.dz)
  br label %bb.u

bb.p:                                             ; preds = %.loopexit, %.loopexit
  %i.eb = tail call ptr @_ZN2v88internal8compiler18CsaLoadElimination19PropagateInputStateEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull %1)
  br label %bb.u

bb.q:                                             ; preds = %.loopexit
  %i.ec = tail call ptr @_ZN2v88internal8compiler18CsaLoadElimination10ReduceCallEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull %1)
  br label %bb.u

bb.r:                                             ; preds = %.loopexit
  %i.ed = tail call ptr @_ZN2v88internal8compiler18CsaLoadElimination15ReduceEffectPhiEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull %1)
  br label %bb.u

bb.s:                                             ; preds = %.loopexit
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ef = tail call noundef ptr @_ZN2v88internal8compiler18CsaLoadElimination11UpdateStateEPNS1_4NodeEPKNS2_13AbstractStateE(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull readonly %1, ptr noundef nonnull %i.ee)
  br label %bb.u

bb.t:                                             ; preds = %.loopexit
  %i.eg = tail call ptr @_ZN2v88internal8compiler18CsaLoadElimination15ReduceOtherNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull %1)
  br label %bb.u

bb.u:                                             ; preds = %.loopexit, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.sroa.0.0 = phi ptr [ %i.eg, %bb.t ], [ %i.dy, %bb.n ], [ %i.ea, %bb.o ], [ %i.eb, %bb.p ], [ %i.ec, %bb.q ], [ %i.ed, %bb.r ], [ %i.ef, %bb.s ], [ null, %.loopexit ]
  ret ptr %.sroa.0.0
}

declare void @_ZN2v88internal6PrintFEPKcz(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal8compiler18CsaLoadElimination9HalfState5PrintEv(ptr noundef nonnull align 8 dereferenceable(296) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState5PrintERKNS1_13PersistentMapIjNS4_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS6_EEEENS9_IjEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState5PrintERKNS1_13PersistentMapIjNS4_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS6_EEEENS9_IjEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState5PrintERKNS1_13PersistentMapIjNS4_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS6_EEEENS9_IjEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState5PrintERKNS1_13PersistentMapIPNS1_4NodeENS4_IS6_NS2_9FieldInfoENS_4base4hashIS6_EEEESA_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState5PrintERKNS1_13PersistentMapIPNS1_4NodeENS4_IS6_NS2_9FieldInfoENS_4base4hashIS6_EEEESA_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState5PrintERKNS1_13PersistentMapIPNS1_4NodeENS4_IS6_NS2_9FieldInfoENS_4base4hashIS6_EEEESA_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.f)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler18CsaLoadElimination20ReduceLoadFromObjectEPNS1_4NodeERKNS1_12ObjectAccessE(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef %1, ptr noundef nonnull readonly align 1 captures(none) dereferenceable(3) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::CsaLoadElimination::HalfState", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::compiler::CsaLoadElimination::HalfState", align 8 ; 4 uses
  %5 = alloca %"struct.std::array.192", align 8   ; 4 uses
  %6 = alloca %"struct.std::array.191", align 8   ; 5 uses
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 251658240
  %.not.i.i.i = icmp eq i32 %i.g, 251658240
  %i.h = ptrtoint ptr %1 to i64
  %i.i = add i64 %i.h, 32
  %i.j = inttoptr i64 %i.i to ptr                 ; 6 uses
  %.not78 = icmp eq i32 %i.c, 1                   ; 2 uses
  br i1 %.not.i.i.i, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.thread

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit: ; preds = %bb.c
  br i1 %.not78, label %bb.d, label %bb.e, !prof !12

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.thread: ; preds = %bb.c
  br i1 %.not78, label %bb.d, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit61, !prof !12

bb.d:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.thread, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12) #15
  unreachable

bb.e:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = add i64 %i.l, 16
  %i.n = inttoptr i64 %i.m to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit61

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit61: ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.thread, %bb.e
  %.in = phi ptr [ %i.n, %bb.e ], [ %i.j, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit.thread ] ; 2 uses
  %i.o = load ptr, ptr %.in, align 8              ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.in, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.f, !prof !7

bb.f:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit61
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.13) #15
  unreachable

bb.g:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit61
  %i.u = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.a) #14
  %i.v = load ptr, ptr %1, align 8
  %i.w = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.v) #14
  %i.x = load i32, ptr %i.e, align 4
  %i.y = and i32 %i.x, 251658240
  %.not.i.i.i62 = icmp eq i32 %i.y, 251658240
  br i1 %.not.i.i.i62, label %bb.h, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.j, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = add i64 %i.aa, 16
  %i.ac = inttoptr i64 %i.ab to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i.i63 = phi ptr [ %i.ac, %bb.h ], [ %i.j, %bb.g ]
  %i.ad = zext i1 %i.u to i32
  %i.ae = zext i1 %i.w to i32
  %i.af = add nuw i32 %i.c, %i.ad
  %i.ag = add nuw i32 %i.af, %i.ae
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i63, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = and i32 %i.al, 16777215
  %i.an = zext nneg i32 %i.am to i64              ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 3
  %i.aw = icmp ugt i64 %i.av, %i.an
  br i1 %i.aw, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread

_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.an
  %i.ay = load ptr, ptr %i.ax, align 8            ; 3 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit
  %i.ba = load ptr, ptr %1, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i16, ptr %i.bb, align 8
  %i.bd = icmp eq i16 %i.bc, 310                  ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 304 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  %i.bg = select i1 %i.bd, ptr %i.be, ptr %i.bf
  %i.bh = tail call { ptr, i8 } @_ZNK2v88internal8compiler18CsaLoadElimination9HalfState6LookupEPNS1_4NodeES5_(ptr noundef nonnull align 8 dereferenceable(296) %i.bg, ptr noundef %i.o, ptr noundef %i.q)
  %.fca.0.extract18 = extractvalue { ptr, i8 } %i.bh, 0
  %i.bi = icmp eq ptr %.fca.0.extract18, null
  br i1 %i.bi, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = load ptr, ptr %1, align 8               ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 28
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %bb.l, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.15) #15
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.bj) #14
  %i.bq = load ptr, ptr %1, align 8
  %i.br = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.bq) #14
  %i.bs = load ptr, ptr %1, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = load i32, ptr %i.e, align 4
  %i.bw = and i32 %i.bv, 251658240
  %.not.i.i.i64 = icmp eq i32 %i.bw, 251658240
  br i1 %.not.i.i.i64, label %bb.m, label %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit

bb.m:                                             ; preds = %bb.l
  %i.bx = load ptr, ptr %i.j, align 8
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = add i64 %i.by, 16
  %i.ca = inttoptr i64 %i.bz to ptr
  br label %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit: ; preds = %bb.l, %bb.m
  %.sink.i.i.i65 = phi ptr [ %i.ca, %bb.m ], [ %i.j, %bb.l ]
  %i.cb = zext i1 %i.bp to i32
  %i.cc = zext i1 %i.br to i32
  %i.cd = add i32 %i.bo, %i.cb
  %i.ce = add i32 %i.cd, %i.cc
  %i.cf = add i32 %i.ce, %i.bu
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i65, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler18CsaLoadElimination15ReduceEffectPhiEPNS1_4NodeE:bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = and i32 %i.bb, 16777215
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 3
  %i.bm = icmp ugt i64 %i.bl, %i.bd
  br i1 %i.bm, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread

_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bd
  %i.bo = load ptr, ptr %i.bn, align 8            ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit
  %i.bq = load ptr, ptr %i.az, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i16, ptr %i.br, align 8
  %i.bt = icmp eq i16 %i.bs, 1
  br i1 %i.bt, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.h
  %.not3250 = icmp sgt i32 %i.al, 1               ; 2 uses
  br i1 %.not3250, label %.lr.ph, label %._crit_edge

bb.i:                                             ; preds = %bb.h
  %i.bu = tail call noundef ptr @_ZNK2v88internal8compiler18CsaLoadElimination16ComputeLoopStateEPNS1_4NodeEPKNS2_13AbstractStateE(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.bo)
  br label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread.sink.split

bb.j:                                             ; preds = %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit38
  %i.bv = add nuw nsw i32 %.03051, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bv, %i.al
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %.03051 = phi i32 [ %i.bv, %bb.j ], [ 1, %.preheader ] ; 3 uses
  %i.bw = load ptr, ptr %1, align 8               ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = icmp slt i32 %.03051, %i.by
  br i1 %i.bz, label %bb.l, label %bb.k, !prof !7

bb.k:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.13) #15
  unreachable

bb.l:                                             ; preds = %.lr.ph
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 20
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.bw) #14
  %i.cd = load ptr, ptr %1, align 8
  %i.ce = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.cd) #14
  %i.cf = load i32, ptr %i.j, align 4
  %i.cg = and i32 %i.cf, 251658240
  %.not.i.i.i35 = icmp eq i32 %i.cg, 251658240
  br i1 %.not.i.i.i35, label %bb.m, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit37

bb.m:                                             ; preds = %bb.l
  %i.ch = load ptr, ptr %i.o, align 8
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = add i64 %i.ci, 16
  %i.ck = inttoptr i64 %i.cj to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit37

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit37: ; preds = %bb.l, %bb.m
  %.sink.i.i.i36 = phi ptr [ %i.ck, %bb.m ], [ %i.o, %bb.l ]
  %i.cl = zext i1 %i.cc to i32
  %i.cm = zext i1 %i.ce to i32
  %i.cn = add i32 %i.cb, %.03051
  %i.co = add i32 %i.cn, %i.cl
  %i.cp = add i32 %i.co, %i.cm
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i36, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 20
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = and i32 %i.cu, 16777215
  %i.cw = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.cx = load ptr, ptr %i.be, align 8
  %i.cy = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = ashr exact i64 %i.db, 3
  %i.dd = icmp ugt i64 %i.dc, %i.cw
  br i1 %i.dd, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit38, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread

_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit38: ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit37
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cw
  %i.df = load ptr, ptr %i.de, align 8
  %.not = icmp eq ptr %i.df, null
  br i1 %.not, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread, label %bb.j

._crit_edge:                                      ; preds = %bb.j, %.preheader
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.dh = load ptr, ptr %i.dg, align 8            ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 3 uses
  %i.dl = load i64, ptr %i.dk, align 8            ; 2 uses
  %i.dm = sub i64 %i.dj, %i.dl
  %i.dn = icmp ult i64 %i.dm, 600
  br i1 %i.dn, label %bb.n, label %_ZN2v88internal4Zone3NewINS0_8compiler18CsaLoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit, !prof !12

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
define hidden noundef ptr @_ZN2v88internal8compiler18CsaLoadElimination11ReduceStartEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef readonly captures(ret: address, provenance) %1) local_unnamed_addr #0 align 2 {
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.4.0..sroa_idx, i8 0, i64 25, i1 false)
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store ptr %i.ax, ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  store ptr %i.ax, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.7.0..sroa_idx, i8 0, i64 25, i1 false)
  %.sroa.811.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  store ptr %i.ax, ptr %.sroa.811.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 104
  store ptr %i.ax, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.10.0..sroa_idx, i8 0, i64 25, i1 false)
  %.sroa.1112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 144
  store ptr %i.ax, ptr %.sroa.1112.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 152
  store ptr %i.ax, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.13.0..sroa_idx, i8 0, i64 25, i1 false)
  %.sroa.1413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 192
  store ptr %i.ax, ptr %.sroa.1413.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 200
  store ptr %i.ax, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.16.0..sroa_idx, i8 0, i64 25, i1 false)
  %.sroa.1714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 240
  store ptr %i.ax, ptr %.sroa.1714.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 248
  store ptr %i.ax, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.19.0..sroa_idx, i8 0, i64 25, i1 false)
  %.sroa.2015.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 288
  store ptr %i.ax, ptr %.sroa.2015.0..sroa_idx, align 8
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
define hidden noundef zeroext i1 @_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE(ptr noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
end_hunk_1
