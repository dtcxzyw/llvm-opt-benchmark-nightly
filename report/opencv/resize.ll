inline.NumInlined: 1363
inline.NumDeleted: 293
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 135
loop-unroll.NumUnrolled: 149
begin_hunk_0_@_ZNK2cv21resizeGeneric_InvokerINS_13HResizeLinearIhisLi2048ENS_12HResizeNoVecEEENS_13VResizeLinearIhisNS_11FixedPtCastIihLi22EEENS_12VResizeNoVecEEEEclERKNS_5RangeE:bb.a
bb.j:                                             ; preds = %.lr.ph67, %bb.g
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 3 uses
  %i.ct = icmp samesign ult i64 %indvars.iv.next86, %sext87
  br i1 %i.ct, label %.lr.ph67, label %.loopexit.loopexit, !llvm.loop !415

.loopexit.loopexit:                               ; preds = %bb.j
  %i.cu = trunc nuw i64 %indvars.iv.next86 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.f, %bb.h, %bb.i
  %i.cv = phi i32 [ %.pre, %bb.i ], [ %i.bz, %bb.h ], [ %i.bz, %bb.f ], [ %i.bz, %.loopexit.loopexit ] ; 5 uses
  %storemerge3362 = phi i32 [ %i.cn, %bb.i ], [ %i.cn, %bb.h ], [ %.sroa.speculated45, %bb.f ], [ %i.cu, %.loopexit.loopexit ] ; 2 uses
  %i.cw = icmp eq i32 %storemerge3362, %i.cv
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.cg, i32 %.05969)
  %.1 = select i1 %i.cw, i32 %.sroa.speculated, i32 %.05969 ; 4 uses
  %i.cx = load ptr, ptr %i.at, align 8, !tbaa !348
  %i.cy = load i64, ptr %i.au, align 8, !tbaa !84
  %i.cz = sext i32 %i.cf to i64
  %i.da = mul i64 %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.da
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv89
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !416
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv89
  store i32 %i.cf, ptr %i.dd, align 4, !tbaa !19
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %i.de = sext i32 %i.cv to i64
  %i.df = icmp slt i64 %indvars.iv.next90, %i.de
  br i1 %i.df, label %bb.f, label %._crit_edge73, !llvm.loop !417

bb.k:                                             ; preds = %._crit_edge73
  %i.dg = sext i32 %.1 to i64                     ; 2 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dg
  %i.di = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.dg
  %i.dj = sub nsw i32 %i.cv, %.1
  %i.dk = load ptr, ptr %i.av, align 8, !tbaa !402
  %i.dl = load ptr, ptr %i.aw, align 8, !tbaa !406
  %i.dm = load i32, ptr %i.ax, align 8, !tbaa !418
  %i.dn = load i32, ptr %i.ay, align 4, !tbaa !409
  %i.do = load i32, ptr %i.az, align 8, !tbaa !410
  invoke void @_ZNK2cv13HResizeLinearIhisLi2048ENS_12HResizeNoVecEEclEPPKhPPiiPKiPKsiiiii(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.di, i32 noundef %i.dj, ptr noundef %i.dk, ptr noundef %i.dl, i32 noundef %i.dm, i32 noundef %.pre97, i32 noundef %i.h, i32 noundef %i.dn, i32 noundef %i.do)
          to label %.sink.split unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.dq = load ptr, ptr %3, align 8, !tbaa !20    ; 3 uses
  %.not.i.i35 = icmp eq ptr %i.dq, %i.s
  %i.dr = icmp eq ptr %i.dq, null
  %or.cond.i = or i1 %.not.i.i35, %i.dr
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.dq) #24
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit

_ZN2cv10AutoBufferIiLm264EED2Ev.exit:             ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.dp

.sink.split:                                      ; preds = %bb.k, %bb.e
  %.pre97112 = load i32, ptr %i.i, align 8, !tbaa !411
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %._crit_edge73
  %i.ds = phi i32 [ %.pre97, %._crit_edge73 ], [ %.pre97112, %.sink.split ] ; 3 uses
  %i.dt = load ptr, ptr %i.ba, align 8, !tbaa !419 ; 2 uses
  %i.du = load i64, ptr %i.bb, align 8, !tbaa !84
  %i.dv = mul i64 %i.du, %indvars.iv92            ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dt, i64 %i.dv  ; 4 uses
  %i.dx = load ptr, ptr %i.b, align 16, !tbaa !46 ; 4 uses
  %i.dy = load ptr, ptr %i.bc, align 8, !tbaa !46 ; 4 uses
  %i.dz = icmp sgt i32 %i.ds, 0
  br i1 %i.dz, label %.lr.ph.i, label %_ZNK2cv13VResizeLinearIhisNS_11FixedPtCastIihLi22EEENS_12VResizeNoVecEEclEPPKiPhPKsi.exit

.lr.ph.i:                                         ; preds = %bb.n
  %i.ea = getelementptr inbounds nuw i8, ptr %.02676, i64 2
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !71
  %i.ec = load i16, ptr %.02676, align 2, !tbaa !71
  %i.ed = sext i16 %i.ec to i32                   ; 2 uses
  %i.ee = sext i16 %i.eb to i32                   ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.ds to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ds, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.ef = getelementptr i8, ptr %i.dt, i64 %i.dv
  %scevgep = getelementptr i8, ptr %i.ef, i64 %wide.trip.count.i ; 2 uses
  %i.eg = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  %scevgep115 = getelementptr i8, ptr %i.dx, i64 %i.eg
  %scevgep116 = getelementptr i8, ptr %i.dy, i64 %i.eg
  %bound0 = icmp ult ptr %i.dw, %scevgep115
  %bound1 = icmp ult ptr %i.dx, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0117 = icmp ult ptr %i.dw, %scevgep116
  %bound1118 = icmp ult ptr %i.dy, %scevgep
  %found.conflict119 = and i1 %bound0117, %bound1118
  %conflict.rdx = or i1 %found.conflict, %found.conflict119
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ed, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert120 = insertelement <4 x i32> poison, i32 %i.ee, i64 0
  %broadcast.splat121 = shufflevector <4 x i32> %broadcast.splatinsert120, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %index
  %wide.load = load <4 x i32>, ptr %i.eh, align 4, !tbaa !19, !alias.scope !420
  %i.ei = ashr <4 x i32> %wide.load, splat (i32 4)
  %i.ej = mul nsw <4 x i32> %i.ei, %broadcast.splat
  %i.ek = lshr <4 x i32> %i.ej, splat (i32 16)
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %index
  %wide.load122 = load <4 x i32>, ptr %i.el, align 4, !tbaa !19, !alias.scope !423
  %i.em = lshr <4 x i32> %wide.load122, splat (i32 4)
  %i.en = mul <4 x i32> %i.em, %broadcast.splat121
  %i.eo = lshr <4 x i32> %i.en, splat (i32 16)
  %i.ep = add nuw nsw <4 x i32> %i.ek, splat (i32 2)
  %i.eq = add nuw nsw <4 x i32> %i.ep, %i.eo
  %i.er = lshr <4 x i32> %i.eq, splat (i32 2)
  %i.es = trunc <4 x i32> %i.er to <4 x i8>
  %i.et = getelementptr inbounds nuw i8, ptr %i.dw, i64 %index
  store <4 x i8> %i.es, ptr %i.et, align 1, !tbaa !14, !alias.scope !425, !noalias !427
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !428

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZNK2cv13VResizeLinearIhisNS_11FixedPtCastIihLi22EEENS_12VResizeNoVecEEclEPPKiPhPKsi.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !19
  %i.ex = ashr i32 %i.ew, 4
  %i.ey = mul nsw i32 %i.ex, %i.ed
  %i.ez = lshr i32 %i.ey, 16
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.i
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !19
  %i.fc = lshr i32 %i.fb, 4
  %i.fd = mul i32 %i.fc, %i.ee
  %i.fe = lshr i32 %i.fd, 16
  %i.ff = add nuw nsw i32 %i.ez, 2
  %i.fg = add nuw nsw i32 %i.ff, %i.fe
  %i.fh = lshr i32 %i.fg, 2
  %i.fi = trunc i32 %i.fh to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dw, i64 %indvars.iv.i
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK2cv13VResizeLinearIhisNS_11FixedPtCastIihLi22EEENS_12VResizeNoVecEEclEPPKiPhPKsi.exit, label %scalar.ph, !llvm.loop !429

_ZNK2cv13VResizeLinearIhisNS_11FixedPtCastIihLi22EEENS_12VResizeNoVecEEclEPPKiPhPKsi.exit: ; preds = %scalar.ph, %middle.block, %bb.n
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.fk = load i32, ptr %i.o, align 8, !tbaa !408 ; 2 uses
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [2 x i8], ptr %.02676, i64 %i.fl
  %i.fn = load i32, ptr %i.ai, align 4, !tbaa !36
  %i.fo = sext i32 %i.fn to i64
  %i.fp = icmp slt i64 %indvars.iv.next93, %i.fo
  br i1 %i.fp, label %bb.e, label %._crit_edge80.loopexit, !llvm.loop !430

._crit_edge80.loopexit:                           ; preds = %_ZNK2cv13VResizeLinearIhisNS_11FixedPtCastIihLi22EEENS_12VResizeNoVecEEclEPPKiPhPKsi.exit
  %.pre98 = load ptr, ptr %3, align 8, !tbaa !20
  br label %._crit_edge80

._crit_edge80:                                    ; preds = %._crit_edge80.loopexit, %._crit_edge
  %i.fq = phi ptr [ %.pre98, %._crit_edge80.loopexit ], [ %i.y, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not.i.i36 = icmp eq ptr %i.fq, %i.s
  %i.fr = icmp eq ptr %i.fq, null
  %or.cond.i37 = or i1 %.not.i.i36, %i.fr
  br i1 %or.cond.i37, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit38, label %bb.o

bb.o:                                             ; preds = %._crit_edge80
  call void @_ZdaPv(ptr noundef nonnull %i.fq) #24
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit38

_ZN2cv10AutoBufferIiLm264EED2Ev.exit38:           ; preds = %._crit_edge80, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv13HResizeLinearIhisLi2048ENS_12HResizeNoVecEEclEPPKhPPiiPKiPKsiiiii(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = add i32 %3, -2                           ; 3 uses
  %.not102 = icmp slt i32 %3, 2
  br i1 %.not102, label %.preheader97, label %.lr.ph105

.lr.ph105:                                        ; preds = %bb.a
  %i.b = icmp sgt i32 %10, 0
  br i1 %i.b, label %.lr.ph.us.preheader, label %.lr.ph105.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph105
  %i.c = zext nneg i32 %i.a to i64
  %wide.trip.count138 = zext nneg i32 %10 to i64
  %i.d = icmp slt i32 %10, %7
  %i.e = sub i32 %7, %10
  %.neg = add nuw i32 %10, 1
  %xtraiter177 = and i32 %i.e, 1
  %lcmp.mod178.not = icmp eq i32 %xtraiter177, 0
  %i.f = icmp eq i32 %7, %.neg
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv145 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next146, %._crit_edge.us ] ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv145
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !416  ; 5 uses
  %i.i = or disjoint i64 %indvars.iv145, 1        ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !416  ; 5 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv145
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !46   ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !46   ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %indvars.iv140 = phi i64 [ 1, %.lr.ph.us ], [ %indvars.iv.next141, %bb.b ] ; 6 uses
  %indvars.iv135 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next136, %bb.b ] ; 5 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv135
  %i.q = load i32, ptr %i.p, align 4, !tbaa !19   ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv135, 2
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 %.idx ; 2 uses
  %i.s = load i16, ptr %i.r, align 2, !tbaa !71
  %i.t = sext i16 %i.s to i32                     ; 2 uses
  %i.u = getelementptr i8, ptr %i.r, i64 2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !71
  %i.w = sext i16 %i.v to i32                     ; 2 uses
  %i.x = sext i32 %i.q to i64                     ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.h, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14
  %i.aa = zext i8 %i.z to i32
  %i.ab = mul nsw i32 %i.aa, %i.t
  %i.ac = add nsw i32 %i.q, %8
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.h, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !14
  %i.ag = zext i8 %i.af to i32
  %i.ah = mul nsw i32 %i.ag, %i.w
  %i.ai = add nsw i32 %i.ah, %i.ab
  %i.aj = getelementptr inbounds i8, ptr %i.k, i64 %i.x
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !14
  %i.al = zext i8 %i.ak to i32
  %i.am = mul nsw i32 %i.al, %i.t
  %i.an = getelementptr inbounds i8, ptr %i.k, i64 %i.ad
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !14
  %i.ap = zext i8 %i.ao to i32
  %i.aq = mul nsw i32 %i.ap, %i.w
  %i.ar = add nsw i32 %i.aq, %i.am
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv135
  store i32 %i.ai, ptr %i.as, align 4, !tbaa !19
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv135
  store i32 %i.ar, ptr %i.at, align 4, !tbaa !19
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  br i1 %exitcond139.not, label %..preheader98_crit_edge.us, label %bb.b, !llvm.loop !431

.lr.ph101.us:                                     ; preds = %.lr.ph101.us.prol.loopexit, %.lr.ph101.us
  %indvars.iv142 = phi i64 [ %indvars.iv.next143.1, %.lr.ph101.us ], [ %indvars.iv142.unr, %.lr.ph101.us.prol.loopexit ] ; 5 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv142
  %i.av = load i32, ptr %i.au, align 4, !tbaa !19
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.h, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !14
  %i.az = zext i8 %i.ay to i32
  %i.ba = shl nuw nsw i32 %i.az, 11
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv142
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !19
  %i.bc = getelementptr inbounds i8, ptr %i.k, i64 %i.aw
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !14
  %i.be = zext i8 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 11
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv142
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !19
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next143
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !19
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.h, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !14
  %i.bm = zext i8 %i.bl to i32
  %i.bn = shl nuw nsw i32 %i.bm, 11
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next143
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !19
  %i.bp = getelementptr inbounds i8, ptr %i.k, i64 %i.bj
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !14
  %i.br = zext i8 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 11
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next143
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !19
  %indvars.iv.next143.1 = add nuw nsw i64 %indvars.iv142, 2 ; 2 uses
  %i.bu = trunc nuw i64 %indvars.iv.next143.1 to i32
  %i.bv = icmp sgt i32 %7, %i.bu
  br i1 %i.bv, label %.lr.ph101.us, label %._crit_edge.us, !llvm.loop !432

._crit_edge.us:                                   ; preds = %.lr.ph101.us.prol.loopexit, %.lr.ph101.us, %..preheader98_crit_edge.us
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 2 ; 3 uses
  %.not.us = icmp samesign ugt i64 %indvars.iv.next146, %i.c
  br i1 %.not.us, label %.preheader97.loopexit, label %.lr.ph.us, !llvm.loop !433

..preheader98_crit_edge.us:                       ; preds = %bb.b
  br i1 %i.d, label %.lr.ph101.us.preheader, label %._crit_edge.us

.lr.ph101.us.preheader:                           ; preds = %..preheader98_crit_edge.us
  br i1 %lcmp.mod178.not, label %.lr.ph101.us.prol.loopexit, label %.lr.ph101.us.prol

.lr.ph101.us.prol:                                ; preds = %.lr.ph101.us.preheader
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv140
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !19
  %i.by = sext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.h, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !14
  %i.cb = zext i8 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 11
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv140
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !19
  %i.ce = getelementptr inbounds i8, ptr %i.k, i64 %i.by
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !14
  %i.cg = zext i8 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 11
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv140
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !19
  %indvars.iv.next143.prol = add nuw nsw i64 %indvars.iv140, 1
  br label %.lr.ph101.us.prol.loopexit

.lr.ph101.us.prol.loopexit:                       ; preds = %.lr.ph101.us.prol, %.lr.ph101.us.preheader
  %indvars.iv142.unr = phi i64 [ %indvars.iv140, %.lr.ph101.us.preheader ], [ %indvars.iv.next143.prol, %.lr.ph101.us.prol ]
  br i1 %i.f, label %._crit_edge.us, label %.lr.ph101.us

.lr.ph105.split:                                  ; preds = %.lr.ph105
  %i.cj = icmp sgt i32 %7, 0
  br i1 %i.cj, label %.preheader98.us107.preheader, label %.preheader98.preheader

.preheader98.preheader:                           ; preds = %.lr.ph105.split
  %i.ck = and i32 %i.a, -2
  %i.cl = add nuw nsw i32 %i.ck, 2
  br label %.preheader97

.preheader98.us107.preheader:                     ; preds = %.lr.ph105.split
  %i.cm = zext nneg i32 %i.a to i64
  %wide.trip.count = zext nneg i32 %7 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.cn = icmp eq i32 %7, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod176 = trunc i32 %7 to i1
  br label %.preheader98.us107

.preheader98.us107:                               ; preds = %.preheader98.us107.preheader, %._crit_edge.us112
  %indvars.iv132 = phi i64 [ 0, %.preheader98.us107.preheader ], [ %indvars.iv.next133, %._crit_edge.us112 ] ; 4 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv132
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !416 ; 3 uses
  %i.cq = or disjoint i64 %indvars.iv132, 1       ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !416 ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv132
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !46 ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cq
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !46 ; 3 uses
  br i1 %i.cn, label %.epil.preheader, label %.preheader98.us107.new

.preheader98.us107.new:                           ; preds = %.preheader98.us107, %.preheader98.us107.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader98.us107.new ], [ 0, %.preheader98.us107 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader98.us107.new ], [ 0, %.preheader98.us107 ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !19
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cp, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !14
  %i.dc = zext i8 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 11
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !19
  %i.df = getelementptr inbounds i8, ptr %i.cs, i64 %i.cz
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !14
  %i.dh = zext i8 %i.dg to i32
  %i.di = shl nuw nsw i32 %i.dh, 11
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !19
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !19
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %i.cp, i64 %i.dm
end_hunk_0
begin_hunk_1_@_ZNK2cv21resizeGeneric_InvokerINS_13HResizeLinearItffLi1ENS_12HResizeNoVecEEENS_13VResizeLinearItffNS_4CastIftEENS_12VResizeNoVecEEEEclERKNS_5RangeE:bb.a
bb.h:                                             ; preds = %bb.g
  %i.cn = trunc nuw nsw i64 %indvars.iv85 to i32  ; 2 uses
  %i.co = icmp samesign ugt i64 %indvars.iv85, %indvars.iv89
  br i1 %i.co, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv89
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !452
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv85
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !452
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cq, ptr align 4 %i.cs, i64 %i.as, i1 false)
  %.pre = load i32, ptr %i.o, align 8, !tbaa !445
  br label %.loopexit

bb.j:                                             ; preds = %.lr.ph67, %bb.g
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 3 uses
  %i.ct = icmp samesign ult i64 %indvars.iv.next86, %sext87
  br i1 %i.ct, label %.lr.ph67, label %.loopexit.loopexit, !llvm.loop !456

.loopexit.loopexit:                               ; preds = %bb.j
  %i.cu = trunc nuw i64 %indvars.iv.next86 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.f, %bb.h, %bb.i
  %i.cv = phi i32 [ %.pre, %bb.i ], [ %i.bz, %bb.h ], [ %i.bz, %bb.f ], [ %i.bz, %.loopexit.loopexit ] ; 5 uses
  %storemerge3362 = phi i32 [ %i.cn, %bb.i ], [ %i.cn, %bb.h ], [ %.sroa.speculated45, %bb.f ], [ %i.cu, %.loopexit.loopexit ] ; 2 uses
  %i.cw = icmp eq i32 %storemerge3362, %i.cv
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.cg, i32 %.05969)
  %.1 = select i1 %i.cw, i32 %.sroa.speculated, i32 %.05969 ; 4 uses
  %i.cx = load ptr, ptr %i.at, align 8, !tbaa !348
  %i.cy = load i64, ptr %i.au, align 8, !tbaa !84
  %i.cz = sext i32 %i.cf to i64
  %i.da = mul i64 %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.da
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv89
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !457
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv89
  store i32 %i.cf, ptr %i.dd, align 4, !tbaa !19
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %i.de = sext i32 %i.cv to i64
  %i.df = icmp slt i64 %indvars.iv.next90, %i.de
  br i1 %i.df, label %bb.f, label %._crit_edge73, !llvm.loop !458

bb.k:                                             ; preds = %._crit_edge73
  %i.dg = sext i32 %.1 to i64                     ; 2 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dg
  %i.di = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.dg
  %i.dj = sub nsw i32 %i.cv, %.1
  %i.dk = load ptr, ptr %i.av, align 8, !tbaa !439
  %i.dl = load ptr, ptr %i.aw, align 8, !tbaa !443
  %i.dm = load i32, ptr %i.ax, align 8, !tbaa !459
  %i.dn = load i32, ptr %i.ay, align 4, !tbaa !446
  %i.do = load i32, ptr %i.az, align 8, !tbaa !447
  invoke void @_ZNK2cv13HResizeLinearItffLi1ENS_12HResizeNoVecEEclEPPKtPPfiPKiPKfiiiii(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.di, i32 noundef %i.dj, ptr noundef %i.dk, ptr noundef %i.dl, i32 noundef %i.dm, i32 noundef %.pre97.pre, i32 noundef %i.h, i32 noundef %i.dn, i32 noundef %i.do)
          to label %._crit_edge95 unwind label %bb.l

._crit_edge95:                                    ; preds = %bb.k
  %.pre96 = load i32, ptr %i.i, align 8, !tbaa !448
  br label %._crit_edge73.thread

bb.l:                                             ; preds = %bb.k
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.dq = load ptr, ptr %3, align 8, !tbaa !449   ; 3 uses
  %.not.i.i35 = icmp eq ptr %i.dq, %i.s
  %i.dr = icmp eq ptr %i.dq, null
  %or.cond.i = or i1 %.not.i.i35, %i.dr
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.dq) #24
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit

_ZN2cv10AutoBufferIfLm264EED2Ev.exit:             ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.dp

._crit_edge73.thread:                             ; preds = %bb.e, %._crit_edge95, %._crit_edge73
  %.pre97100 = phi i32 [ %.pre96, %._crit_edge95 ], [ %.pre97.pre, %._crit_edge73 ], [ %.pre9799, %bb.e ] ; 5 uses
  %i.ds = load ptr, ptr %i.ba, align 8, !tbaa !460
  %i.dt = load i64, ptr %i.bb, align 8, !tbaa !84
  %i.du = mul i64 %i.dt, %indvars.iv92
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.du ; 3 uses
  %i.dw = load float, ptr %.02676, align 4, !tbaa !70 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.02676, i64 4
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !70 ; 3 uses
  %i.dz = load ptr, ptr %i.b, align 16, !tbaa !452 ; 3 uses
  %i.ea = load ptr, ptr %i.bc, align 8, !tbaa !452 ; 3 uses
  %i.eb = icmp sgt i32 %.pre97100, 0
  br i1 %i.eb, label %.lr.ph.preheader.i, label %_ZNK2cv13VResizeLinearItffNS_4CastIftEENS_12VResizeNoVecEEclEPPKfPtS6_i.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge73.thread
  %wide.trip.count.i = zext nneg i32 %.pre97100 to i64 ; 2 uses
  %xtraiter119 = and i64 %wide.trip.count.i, 1
  %i.ec = icmp eq i32 %.pre97100, 1
  br i1 %i.ec, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter123 = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 5 uses
  %niter124 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter124.next.1, %.lr.ph.i ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.i
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !70
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.i
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !70
  %i.eh = fmul float %i.dy, %i.eg
  %i.ei = call float @llvm.fmuladd.f32(float %i.ee, float %i.dw, float %i.eh)
  %i.ej = insertelement <4 x float> poison, float %i.ei, i64 0
  %i.ek = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ej)
  %i.el = call i32 @llvm.smax.i32(i32 %i.ek, i32 0)
  %i.em = call i32 @llvm.umin.i32(i32 %i.el, i32 65535)
  %i.en = trunc nuw i32 %i.em to i16
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %indvars.iv.i
  store i16 %i.en, ptr %i.eo, align 2, !tbaa !71
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.next.i
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !70
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.next.i
  %i.es = load float, ptr %i.er, align 4, !tbaa !70
  %i.et = fmul float %i.dy, %i.es
  %i.eu = call float @llvm.fmuladd.f32(float %i.eq, float %i.dw, float %i.et)
  %i.ev = insertelement <4 x float> poison, float %i.eu, i64 0
  %i.ew = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ev)
  %i.ex = call i32 @llvm.smax.i32(i32 %i.ew, i32 0)
  %i.ey = call i32 @llvm.umin.i32(i32 %i.ex, i32 65535)
  %i.ez = trunc nuw i32 %i.ey to i16
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %indvars.iv.next.i
  store i16 %i.ez, ptr %i.fa, align 2, !tbaa !71
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter124.next.1 = add i64 %niter124, 2         ; 2 uses
  %niter124.ncmp.1 = icmp eq i64 %niter124.next.1, %unroll_iter123
  br i1 %niter124.ncmp.1, label %_ZNK2cv13VResizeLinearItffNS_4CastIftEENS_12VResizeNoVecEEclEPPKfPtS6_i.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !461

_ZNK2cv13VResizeLinearItffNS_4CastIftEENS_12VResizeNoVecEEclEPPKfPtS6_i.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod121.not = icmp eq i64 %xtraiter119, 0
  br i1 %lcmp.mod121.not, label %_ZNK2cv13VResizeLinearItffNS_4CastIftEENS_12VResizeNoVecEEclEPPKfPtS6_i.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZNK2cv13VResizeLinearItffNS_4CastIftEENS_12VResizeNoVecEEclEPPKfPtS6_i.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %_ZNK2cv13VResizeLinearItffNS_4CastIftEENS_12VResizeNoVecEEclEPPKfPtS6_i.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod122 = trunc i32 %.pre97100 to i1
  call void @llvm.assume(i1 %lcmp.mod122)
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.i.epil.init
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !70
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.i.epil.init
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !70
  %i.ff = fmul float %i.dy, %i.fe
  %i.fg = call float @llvm.fmuladd.f32(float %i.fc, float %i.dw, float %i.ff)
  %i.fh = insertelement <4 x float> poison, float %i.fg, i64 0
  %i.fi = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fh)
  %i.fj = call i32 @llvm.smax.i32(i32 %i.fi, i32 0)
  %i.fk = call i32 @llvm.umin.i32(i32 %i.fj, i32 65535)
  %i.fl = trunc nuw i32 %i.fk to i16
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %indvars.iv.i.epil.init
  store i16 %i.fl, ptr %i.fm, align 2, !tbaa !71
  br label %_ZNK2cv13VResizeLinearItffNS_4CastIftEENS_12VResizeNoVecEEclEPPKfPtS6_i.exit

_ZNK2cv13VResizeLinearItffNS_4CastIftEENS_12VResizeNoVecEEclEPPKfPtS6_i.exit: ; preds = %.lr.ph.i.epil.preheader, %_ZNK2cv13VResizeLinearItffNS_4CastIftEENS_12VResizeNoVecEEclEPPKfPtS6_i.exit.loopexit.unr-lcssa, %._crit_edge73.thread
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.fn = load i32, ptr %i.o, align 8, !tbaa !445 ; 2 uses
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %.02676, i64 %i.fo
  %i.fq = load i32, ptr %i.ai, align 4, !tbaa !36
  %i.fr = sext i32 %i.fq to i64
  %i.fs = icmp slt i64 %indvars.iv.next93, %i.fr
  br i1 %i.fs, label %bb.e, label %._crit_edge80.loopexit, !llvm.loop !462

._crit_edge80.loopexit:                           ; preds = %_ZNK2cv13VResizeLinearItffNS_4CastIftEENS_12VResizeNoVecEEclEPPKfPtS6_i.exit
  %.pre98 = load ptr, ptr %3, align 8, !tbaa !449
  br label %._crit_edge80

._crit_edge80:                                    ; preds = %._crit_edge80.loopexit, %._crit_edge
  %i.ft = phi ptr [ %.pre98, %._crit_edge80.loopexit ], [ %i.y, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not.i.i36 = icmp eq ptr %i.ft, %i.s
  %i.fu = icmp eq ptr %i.ft, null
  %or.cond.i37 = or i1 %.not.i.i36, %i.fu
  br i1 %or.cond.i37, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit38, label %bb.n

bb.n:                                             ; preds = %._crit_edge80
  call void @_ZdaPv(ptr noundef nonnull %i.ft) #24
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit38

_ZN2cv10AutoBufferIfLm264EED2Ev.exit38:           ; preds = %._crit_edge80, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv13HResizeLinearItffLi1ENS_12HResizeNoVecEEclEPPKtPPfiPKiPKfiiiii(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = add i32 %3, -2                           ; 3 uses
  %.not102 = icmp slt i32 %3, 2
  br i1 %.not102, label %.preheader97, label %.lr.ph105

.lr.ph105:                                        ; preds = %bb.a
  %i.b = icmp sgt i32 %10, 0
  br i1 %i.b, label %.lr.ph.us.preheader, label %.lr.ph105.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph105
  %i.c = zext nneg i32 %i.a to i64
  %wide.trip.count138 = zext nneg i32 %10 to i64
  %i.d = icmp slt i32 %10, %7
  %i.e = sub i32 %7, %10
  %.neg = add nuw i32 %10, 1
  %xtraiter177 = and i32 %i.e, 1
  %lcmp.mod178.not = icmp eq i32 %xtraiter177, 0
  %i.f = icmp eq i32 %7, %.neg
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv145 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next146, %._crit_edge.us ] ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv145
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !457  ; 5 uses
  %i.i = or disjoint i64 %indvars.iv145, 1        ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !457  ; 5 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv145
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !452  ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !452  ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %indvars.iv140 = phi i64 [ 1, %.lr.ph.us ], [ %indvars.iv.next141, %bb.b ] ; 6 uses
  %indvars.iv135 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next136, %bb.b ] ; 5 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv135
  %i.q = load i32, ptr %i.p, align 4, !tbaa !19   ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv135, 3
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 %.idx ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !70
  %i.t = getelementptr i8, ptr %i.r, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !70
  %i.v = sext i32 %i.q to i64                     ; 2 uses
  %i.w = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !71
  %i.y = add nsw i32 %i.q, %8
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !71
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.v
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !71
  %i.ae = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.z
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !71
  %i.ag = insertelement <2 x i16> poison, i16 %i.x, i64 0
  %i.ah = insertelement <2 x i16> %i.ag, i16 %i.ad, i64 1
  %i.ai = uitofp <2 x i16> %i.ah to <2 x float>
  %i.aj = insertelement <2 x i16> poison, i16 %i.ab, i64 0
  %i.ak = insertelement <2 x i16> %i.aj, i16 %i.af, i64 1
  %i.al = uitofp <2 x i16> %i.ak to <2 x float>
  %i.am = insertelement <2 x float> poison, float %i.u, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x float> %i.an, %i.al
  %i.ap = insertelement <2 x float> poison, float %i.s, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.aq, <2 x float> %i.ao) ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv135
  %i.at = extractelement <2 x float> %i.ar, i64 0
  store float %i.at, ptr %i.as, align 4, !tbaa !70
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv135
  %i.av = extractelement <2 x float> %i.ar, i64 1
  store float %i.av, ptr %i.au, align 4, !tbaa !70
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  br i1 %exitcond139.not, label %..preheader98_crit_edge.us, label %bb.b, !llvm.loop !463

.lr.ph101.us:                                     ; preds = %.lr.ph101.us.prol.loopexit, %.lr.ph101.us
  %indvars.iv142 = phi i64 [ %indvars.iv.next143.1, %.lr.ph101.us ], [ %indvars.iv142.unr, %.lr.ph101.us.prol.loopexit ] ; 5 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv142
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !19
  %i.ay = sext i32 %i.ax to i64                   ; 2 uses
  %i.az = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !71
  %i.bb = uitofp i16 %i.ba to float
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv142
  store float %i.bb, ptr %i.bc, align 4, !tbaa !70
  %i.bd = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.ay
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !71
  %i.bf = uitofp i16 %i.be to float
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv142
  store float %i.bf, ptr %i.bg, align 4, !tbaa !70
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next143
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !19
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !71
  %i.bm = uitofp i16 %i.bl to float
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next143
  store float %i.bm, ptr %i.bn, align 4, !tbaa !70
  %i.bo = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.bj
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !71
  %i.bq = uitofp i16 %i.bp to float
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next143
  store float %i.bq, ptr %i.br, align 4, !tbaa !70
  %indvars.iv.next143.1 = add nuw nsw i64 %indvars.iv142, 2 ; 2 uses
  %i.bs = trunc nuw i64 %indvars.iv.next143.1 to i32
  %i.bt = icmp sgt i32 %7, %i.bs
  br i1 %i.bt, label %.lr.ph101.us, label %._crit_edge.us, !llvm.loop !464

._crit_edge.us:                                   ; preds = %.lr.ph101.us.prol.loopexit, %.lr.ph101.us, %..preheader98_crit_edge.us
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 2 ; 3 uses
  %.not.us = icmp samesign ugt i64 %indvars.iv.next146, %i.c
  br i1 %.not.us, label %.preheader97.loopexit, label %.lr.ph.us, !llvm.loop !465

..preheader98_crit_edge.us:                       ; preds = %bb.b
  br i1 %i.d, label %.lr.ph101.us.preheader, label %._crit_edge.us

.lr.ph101.us.preheader:                           ; preds = %..preheader98_crit_edge.us
  br i1 %lcmp.mod178.not, label %.lr.ph101.us.prol.loopexit, label %.lr.ph101.us.prol

.lr.ph101.us.prol:                                ; preds = %.lr.ph101.us.preheader
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !19
  %i.bw = sext i32 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !71
  %i.bz = uitofp i16 %i.by to float
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv140
  store float %i.bz, ptr %i.ca, align 4, !tbaa !70
  %i.cb = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.bw
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !71
  %i.cd = uitofp i16 %i.cc to float
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv140
  store float %i.cd, ptr %i.ce, align 4, !tbaa !70
  %indvars.iv.next143.prol = add nuw nsw i64 %indvars.iv140, 1
  br label %.lr.ph101.us.prol.loopexit

.lr.ph101.us.prol.loopexit:                       ; preds = %.lr.ph101.us.prol, %.lr.ph101.us.preheader
  %indvars.iv142.unr = phi i64 [ %indvars.iv140, %.lr.ph101.us.preheader ], [ %indvars.iv.next143.prol, %.lr.ph101.us.prol ]
  br i1 %i.f, label %._crit_edge.us, label %.lr.ph101.us

.lr.ph105.split:                                  ; preds = %.lr.ph105
  %i.cf = icmp sgt i32 %7, 0
  br i1 %i.cf, label %.preheader98.us107.preheader, label %.preheader98.preheader

.preheader98.preheader:                           ; preds = %.lr.ph105.split
  %i.cg = and i32 %i.a, -2
  %i.ch = add nuw nsw i32 %i.cg, 2
  br label %.preheader97

.preheader98.us107.preheader:                     ; preds = %.lr.ph105.split
  %i.ci = zext nneg i32 %i.a to i64
  %wide.trip.count = zext nneg i32 %7 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.cj = icmp eq i32 %7, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod176 = trunc i32 %7 to i1
  br label %.preheader98.us107

.preheader98.us107:                               ; preds = %.preheader98.us107.preheader, %._crit_edge.us112
  %indvars.iv132 = phi i64 [ 0, %.preheader98.us107.preheader ], [ %indvars.iv.next133, %._crit_edge.us112 ] ; 4 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv132
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !457 ; 3 uses
  %i.cm = or disjoint i64 %indvars.iv132, 1       ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !457 ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv132
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !452 ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cm
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !452 ; 3 uses
  br i1 %i.cj, label %.epil.preheader, label %.preheader98.us107.new

.preheader98.us107.new:                           ; preds = %.preheader98.us107, %.preheader98.us107.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader98.us107.new ], [ 0, %.preheader98.us107 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader98.us107.new ], [ 0, %.preheader98.us107 ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !19
  %i.cv = sext i32 %i.cu to i64                   ; 2 uses
  %i.cw = getelementptr inbounds [2 x i8], ptr %i.cl, i64 %i.cv
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !71
  %i.cy = uitofp i16 %i.cx to float
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv
  store float %i.cy, ptr %i.cz, align 4, !tbaa !70
  %i.da = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.cv
  %i.db = load i16, ptr %i.da, align 2, !tbaa !71
  %i.dc = uitofp i16 %i.db to float
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv
  store float %i.dc, ptr %i.dd, align 4, !tbaa !70
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  %i.df = load i32, ptr %i.de, align 4, !tbaa !19
  %i.dg = sext i32 %i.df to i64                   ; 2 uses
  %i.dh = getelementptr inbounds [2 x i8], ptr %i.cl, i64 %i.dg
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !71
  %i.dj = uitofp i16 %i.di to float
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.next
  store float %i.dj, ptr %i.dk, align 4, !tbaa !70
  %i.dl = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.dg
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !71
end_hunk_1
begin_hunk_2_@_ZNK2cv21resizeGeneric_InvokerINS_13HResizeLinearIsffLi1ENS_12HResizeNoVecEEENS_13VResizeLinearIsffNS_4CastIfsEENS_12VResizeNoVecEEEEclERKNS_5RangeE:bb.a
bb.h:                                             ; preds = %bb.g
  %i.cn = trunc nuw nsw i64 %indvars.iv85 to i32  ; 2 uses
  %i.co = icmp samesign ugt i64 %indvars.iv85, %indvars.iv89
  br i1 %i.co, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv89
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !452
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv85
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !452
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cq, ptr align 4 %i.cs, i64 %i.as, i1 false)
  %.pre = load i32, ptr %i.o, align 8, !tbaa !476
  br label %.loopexit

bb.j:                                             ; preds = %.lr.ph67, %bb.g
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 3 uses
  %i.ct = icmp samesign ult i64 %indvars.iv.next86, %sext87
  br i1 %i.ct, label %.lr.ph67, label %.loopexit.loopexit, !llvm.loop !483

.loopexit.loopexit:                               ; preds = %bb.j
  %i.cu = trunc nuw i64 %indvars.iv.next86 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.f, %bb.h, %bb.i
  %i.cv = phi i32 [ %.pre, %bb.i ], [ %i.bz, %bb.h ], [ %i.bz, %bb.f ], [ %i.bz, %.loopexit.loopexit ] ; 5 uses
  %storemerge3362 = phi i32 [ %i.cn, %bb.i ], [ %i.cn, %bb.h ], [ %.sroa.speculated45, %bb.f ], [ %i.cu, %.loopexit.loopexit ] ; 2 uses
  %i.cw = icmp eq i32 %storemerge3362, %i.cv
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.cg, i32 %.05969)
  %.1 = select i1 %i.cw, i32 %.sroa.speculated, i32 %.05969 ; 4 uses
  %i.cx = load ptr, ptr %i.at, align 8, !tbaa !348
  %i.cy = load i64, ptr %i.au, align 8, !tbaa !84
  %i.cz = sext i32 %i.cf to i64
  %i.da = mul i64 %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.da
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv89
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !457
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv89
  store i32 %i.cf, ptr %i.dd, align 4, !tbaa !19
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %i.de = sext i32 %i.cv to i64
  %i.df = icmp slt i64 %indvars.iv.next90, %i.de
  br i1 %i.df, label %bb.f, label %._crit_edge73, !llvm.loop !484

bb.k:                                             ; preds = %._crit_edge73
  %i.dg = sext i32 %.1 to i64                     ; 2 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dg
  %i.di = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.dg
  %i.dj = sub nsw i32 %i.cv, %.1
  %i.dk = load ptr, ptr %i.av, align 8, !tbaa !471
  %i.dl = load ptr, ptr %i.aw, align 8, !tbaa !474
  %i.dm = load i32, ptr %i.ax, align 8, !tbaa !485
  %i.dn = load i32, ptr %i.ay, align 4, !tbaa !477
  %i.do = load i32, ptr %i.az, align 8, !tbaa !478
  invoke void @_ZNK2cv13HResizeLinearIsffLi1ENS_12HResizeNoVecEEclEPPKsPPfiPKiPKfiiiii(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.di, i32 noundef %i.dj, ptr noundef %i.dk, ptr noundef %i.dl, i32 noundef %i.dm, i32 noundef %.pre97.pre, i32 noundef %i.h, i32 noundef %i.dn, i32 noundef %i.do)
          to label %._crit_edge95 unwind label %bb.l

._crit_edge95:                                    ; preds = %bb.k
  %.pre96 = load i32, ptr %i.i, align 8, !tbaa !479
  br label %._crit_edge73.thread

bb.l:                                             ; preds = %bb.k
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.dq = load ptr, ptr %3, align 8, !tbaa !449   ; 3 uses
  %.not.i.i35 = icmp eq ptr %i.dq, %i.s
  %i.dr = icmp eq ptr %i.dq, null
  %or.cond.i = or i1 %.not.i.i35, %i.dr
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.dq) #24
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit

_ZN2cv10AutoBufferIfLm264EED2Ev.exit:             ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.dp

._crit_edge73.thread:                             ; preds = %bb.e, %._crit_edge95, %._crit_edge73
  %.pre97100 = phi i32 [ %.pre96, %._crit_edge95 ], [ %.pre97.pre, %._crit_edge73 ], [ %.pre9799, %bb.e ] ; 5 uses
  %i.ds = load ptr, ptr %i.ba, align 8, !tbaa !486
  %i.dt = load i64, ptr %i.bb, align 8, !tbaa !84
  %i.du = mul i64 %i.dt, %indvars.iv92
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.du ; 3 uses
  %i.dw = load float, ptr %.02676, align 4, !tbaa !70 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.02676, i64 4
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !70 ; 3 uses
  %i.dz = load ptr, ptr %i.b, align 16, !tbaa !452 ; 3 uses
  %i.ea = load ptr, ptr %i.bc, align 8, !tbaa !452 ; 3 uses
  %i.eb = icmp sgt i32 %.pre97100, 0
  br i1 %i.eb, label %.lr.ph.preheader.i, label %_ZNK2cv13VResizeLinearIsffNS_4CastIfsEENS_12VResizeNoVecEEclEPPKfPsS6_i.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge73.thread
  %wide.trip.count.i = zext nneg i32 %.pre97100 to i64 ; 2 uses
  %xtraiter119 = and i64 %wide.trip.count.i, 1
  %i.ec = icmp eq i32 %.pre97100, 1
  br i1 %i.ec, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter123 = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 5 uses
  %niter124 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter124.next.1, %.lr.ph.i ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.i
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !70
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.i
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !70
  %i.eh = fmul float %i.dy, %i.eg
  %i.ei = call float @llvm.fmuladd.f32(float %i.ee, float %i.dw, float %i.eh)
  %i.ej = insertelement <4 x float> poison, float %i.ei, i64 0
  %i.ek = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ej)
  %i.el = call i32 @llvm.smax.i32(i32 %i.ek, i32 -32768)
  %i.em = call i32 @llvm.smin.i32(i32 %i.el, i32 32767)
  %i.en = trunc nsw i32 %i.em to i16
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %indvars.iv.i
  store i16 %i.en, ptr %i.eo, align 2, !tbaa !71
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.next.i
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !70
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.next.i
  %i.es = load float, ptr %i.er, align 4, !tbaa !70
  %i.et = fmul float %i.dy, %i.es
  %i.eu = call float @llvm.fmuladd.f32(float %i.eq, float %i.dw, float %i.et)
  %i.ev = insertelement <4 x float> poison, float %i.eu, i64 0
  %i.ew = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ev)
  %i.ex = call i32 @llvm.smax.i32(i32 %i.ew, i32 -32768)
  %i.ey = call i32 @llvm.smin.i32(i32 %i.ex, i32 32767)
  %i.ez = trunc nsw i32 %i.ey to i16
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %indvars.iv.next.i
  store i16 %i.ez, ptr %i.fa, align 2, !tbaa !71
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter124.next.1 = add i64 %niter124, 2         ; 2 uses
  %niter124.ncmp.1 = icmp eq i64 %niter124.next.1, %unroll_iter123
  br i1 %niter124.ncmp.1, label %_ZNK2cv13VResizeLinearIsffNS_4CastIfsEENS_12VResizeNoVecEEclEPPKfPsS6_i.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !487

_ZNK2cv13VResizeLinearIsffNS_4CastIfsEENS_12VResizeNoVecEEclEPPKfPsS6_i.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod121.not = icmp eq i64 %xtraiter119, 0
  br i1 %lcmp.mod121.not, label %_ZNK2cv13VResizeLinearIsffNS_4CastIfsEENS_12VResizeNoVecEEclEPPKfPsS6_i.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZNK2cv13VResizeLinearIsffNS_4CastIfsEENS_12VResizeNoVecEEclEPPKfPsS6_i.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %_ZNK2cv13VResizeLinearIsffNS_4CastIfsEENS_12VResizeNoVecEEclEPPKfPsS6_i.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod122 = trunc i32 %.pre97100 to i1
  call void @llvm.assume(i1 %lcmp.mod122)
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.i.epil.init
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !70
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.i.epil.init
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !70
  %i.ff = fmul float %i.dy, %i.fe
  %i.fg = call float @llvm.fmuladd.f32(float %i.fc, float %i.dw, float %i.ff)
  %i.fh = insertelement <4 x float> poison, float %i.fg, i64 0
  %i.fi = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fh)
  %i.fj = call i32 @llvm.smax.i32(i32 %i.fi, i32 -32768)
  %i.fk = call i32 @llvm.smin.i32(i32 %i.fj, i32 32767)
  %i.fl = trunc nsw i32 %i.fk to i16
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %indvars.iv.i.epil.init
  store i16 %i.fl, ptr %i.fm, align 2, !tbaa !71
  br label %_ZNK2cv13VResizeLinearIsffNS_4CastIfsEENS_12VResizeNoVecEEclEPPKfPsS6_i.exit

_ZNK2cv13VResizeLinearIsffNS_4CastIfsEENS_12VResizeNoVecEEclEPPKfPsS6_i.exit: ; preds = %.lr.ph.i.epil.preheader, %_ZNK2cv13VResizeLinearIsffNS_4CastIfsEENS_12VResizeNoVecEEclEPPKfPsS6_i.exit.loopexit.unr-lcssa, %._crit_edge73.thread
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.fn = load i32, ptr %i.o, align 8, !tbaa !476 ; 2 uses
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %.02676, i64 %i.fo
  %i.fq = load i32, ptr %i.ai, align 4, !tbaa !36
  %i.fr = sext i32 %i.fq to i64
  %i.fs = icmp slt i64 %indvars.iv.next93, %i.fr
  br i1 %i.fs, label %bb.e, label %._crit_edge80.loopexit, !llvm.loop !488

._crit_edge80.loopexit:                           ; preds = %_ZNK2cv13VResizeLinearIsffNS_4CastIfsEENS_12VResizeNoVecEEclEPPKfPsS6_i.exit
  %.pre98 = load ptr, ptr %3, align 8, !tbaa !449
  br label %._crit_edge80

._crit_edge80:                                    ; preds = %._crit_edge80.loopexit, %._crit_edge
  %i.ft = phi ptr [ %.pre98, %._crit_edge80.loopexit ], [ %i.y, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not.i.i36 = icmp eq ptr %i.ft, %i.s
  %i.fu = icmp eq ptr %i.ft, null
  %or.cond.i37 = or i1 %.not.i.i36, %i.fu
  br i1 %or.cond.i37, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit38, label %bb.n

bb.n:                                             ; preds = %._crit_edge80
  call void @_ZdaPv(ptr noundef nonnull %i.ft) #24
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit38

_ZN2cv10AutoBufferIfLm264EED2Ev.exit38:           ; preds = %._crit_edge80, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv13HResizeLinearIsffLi1ENS_12HResizeNoVecEEclEPPKsPPfiPKiPKfiiiii(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = add i32 %3, -2                           ; 3 uses
  %.not102 = icmp slt i32 %3, 2
  br i1 %.not102, label %.preheader97, label %.lr.ph105

.lr.ph105:                                        ; preds = %bb.a
  %i.b = icmp sgt i32 %10, 0
  br i1 %i.b, label %.lr.ph.us.preheader, label %.lr.ph105.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph105
  %i.c = zext nneg i32 %i.a to i64
  %wide.trip.count138 = zext nneg i32 %10 to i64
  %i.d = icmp slt i32 %10, %7
  %i.e = sub i32 %7, %10
  %.neg = add nuw i32 %10, 1
  %xtraiter177 = and i32 %i.e, 1
  %lcmp.mod178.not = icmp eq i32 %xtraiter177, 0
  %i.f = icmp eq i32 %7, %.neg
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv145 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next146, %._crit_edge.us ] ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv145
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !457  ; 5 uses
  %i.i = or disjoint i64 %indvars.iv145, 1        ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !457  ; 5 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv145
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !452  ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !452  ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %indvars.iv140 = phi i64 [ 1, %.lr.ph.us ], [ %indvars.iv.next141, %bb.b ] ; 6 uses
  %indvars.iv135 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next136, %bb.b ] ; 5 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv135
  %i.q = load i32, ptr %i.p, align 4, !tbaa !19   ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv135, 3
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 %.idx ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !70
  %i.t = getelementptr i8, ptr %i.r, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !70
  %i.v = sext i32 %i.q to i64                     ; 2 uses
  %i.w = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !71
  %i.y = add nsw i32 %i.q, %8
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !71
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.v
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !71
  %i.ae = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.z
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !71
  %i.ag = insertelement <2 x i16> poison, i16 %i.x, i64 0
  %i.ah = insertelement <2 x i16> %i.ag, i16 %i.ad, i64 1
  %i.ai = sitofp <2 x i16> %i.ah to <2 x float>
  %i.aj = insertelement <2 x i16> poison, i16 %i.ab, i64 0
  %i.ak = insertelement <2 x i16> %i.aj, i16 %i.af, i64 1
  %i.al = sitofp <2 x i16> %i.ak to <2 x float>
  %i.am = insertelement <2 x float> poison, float %i.u, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x float> %i.an, %i.al
  %i.ap = insertelement <2 x float> poison, float %i.s, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.aq, <2 x float> %i.ao) ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv135
  %i.at = extractelement <2 x float> %i.ar, i64 0
  store float %i.at, ptr %i.as, align 4, !tbaa !70
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv135
  %i.av = extractelement <2 x float> %i.ar, i64 1
  store float %i.av, ptr %i.au, align 4, !tbaa !70
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  br i1 %exitcond139.not, label %..preheader98_crit_edge.us, label %bb.b, !llvm.loop !489

.lr.ph101.us:                                     ; preds = %.lr.ph101.us.prol.loopexit, %.lr.ph101.us
  %indvars.iv142 = phi i64 [ %indvars.iv.next143.1, %.lr.ph101.us ], [ %indvars.iv142.unr, %.lr.ph101.us.prol.loopexit ] ; 5 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv142
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !19
  %i.ay = sext i32 %i.ax to i64                   ; 2 uses
  %i.az = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !71
  %i.bb = sitofp i16 %i.ba to float
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv142
  store float %i.bb, ptr %i.bc, align 4, !tbaa !70
  %i.bd = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.ay
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !71
  %i.bf = sitofp i16 %i.be to float
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv142
  store float %i.bf, ptr %i.bg, align 4, !tbaa !70
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next143
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !19
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !71
  %i.bm = sitofp i16 %i.bl to float
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next143
  store float %i.bm, ptr %i.bn, align 4, !tbaa !70
  %i.bo = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.bj
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !71
  %i.bq = sitofp i16 %i.bp to float
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next143
  store float %i.bq, ptr %i.br, align 4, !tbaa !70
  %indvars.iv.next143.1 = add nuw nsw i64 %indvars.iv142, 2 ; 2 uses
  %i.bs = trunc nuw i64 %indvars.iv.next143.1 to i32
  %i.bt = icmp sgt i32 %7, %i.bs
  br i1 %i.bt, label %.lr.ph101.us, label %._crit_edge.us, !llvm.loop !490

._crit_edge.us:                                   ; preds = %.lr.ph101.us.prol.loopexit, %.lr.ph101.us, %..preheader98_crit_edge.us
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 2 ; 3 uses
  %.not.us = icmp samesign ugt i64 %indvars.iv.next146, %i.c
  br i1 %.not.us, label %.preheader97.loopexit, label %.lr.ph.us, !llvm.loop !491

..preheader98_crit_edge.us:                       ; preds = %bb.b
  br i1 %i.d, label %.lr.ph101.us.preheader, label %._crit_edge.us

.lr.ph101.us.preheader:                           ; preds = %..preheader98_crit_edge.us
  br i1 %lcmp.mod178.not, label %.lr.ph101.us.prol.loopexit, label %.lr.ph101.us.prol

.lr.ph101.us.prol:                                ; preds = %.lr.ph101.us.preheader
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !19
  %i.bw = sext i32 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !71
  %i.bz = sitofp i16 %i.by to float
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv140
  store float %i.bz, ptr %i.ca, align 4, !tbaa !70
  %i.cb = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.bw
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !71
  %i.cd = sitofp i16 %i.cc to float
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv140
  store float %i.cd, ptr %i.ce, align 4, !tbaa !70
  %indvars.iv.next143.prol = add nuw nsw i64 %indvars.iv140, 1
  br label %.lr.ph101.us.prol.loopexit

.lr.ph101.us.prol.loopexit:                       ; preds = %.lr.ph101.us.prol, %.lr.ph101.us.preheader
  %indvars.iv142.unr = phi i64 [ %indvars.iv140, %.lr.ph101.us.preheader ], [ %indvars.iv.next143.prol, %.lr.ph101.us.prol ]
  br i1 %i.f, label %._crit_edge.us, label %.lr.ph101.us

.lr.ph105.split:                                  ; preds = %.lr.ph105
  %i.cf = icmp sgt i32 %7, 0
  br i1 %i.cf, label %.preheader98.us107.preheader, label %.preheader98.preheader

.preheader98.preheader:                           ; preds = %.lr.ph105.split
  %i.cg = and i32 %i.a, -2
  %i.ch = add nuw nsw i32 %i.cg, 2
  br label %.preheader97

.preheader98.us107.preheader:                     ; preds = %.lr.ph105.split
  %i.ci = zext nneg i32 %i.a to i64
  %wide.trip.count = zext nneg i32 %7 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.cj = icmp eq i32 %7, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod176 = trunc i32 %7 to i1
  br label %.preheader98.us107

.preheader98.us107:                               ; preds = %.preheader98.us107.preheader, %._crit_edge.us112
  %indvars.iv132 = phi i64 [ 0, %.preheader98.us107.preheader ], [ %indvars.iv.next133, %._crit_edge.us112 ] ; 4 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv132
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !457 ; 3 uses
  %i.cm = or disjoint i64 %indvars.iv132, 1       ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !457 ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv132
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !452 ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cm
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !452 ; 3 uses
  br i1 %i.cj, label %.epil.preheader, label %.preheader98.us107.new

.preheader98.us107.new:                           ; preds = %.preheader98.us107, %.preheader98.us107.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader98.us107.new ], [ 0, %.preheader98.us107 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader98.us107.new ], [ 0, %.preheader98.us107 ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !19
  %i.cv = sext i32 %i.cu to i64                   ; 2 uses
  %i.cw = getelementptr inbounds [2 x i8], ptr %i.cl, i64 %i.cv
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !71
  %i.cy = sitofp i16 %i.cx to float
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv
  store float %i.cy, ptr %i.cz, align 4, !tbaa !70
  %i.da = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.cv
  %i.db = load i16, ptr %i.da, align 2, !tbaa !71
  %i.dc = sitofp i16 %i.db to float
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv
  store float %i.dc, ptr %i.dd, align 4, !tbaa !70
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  %i.df = load i32, ptr %i.de, align 4, !tbaa !19
  %i.dg = sext i32 %i.df to i64                   ; 2 uses
  %i.dh = getelementptr inbounds [2 x i8], ptr %i.cl, i64 %i.dg
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !71
  %i.dj = sitofp i16 %i.di to float
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.next
  store float %i.dj, ptr %i.dk, align 4, !tbaa !70
  %i.dl = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.dg
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !71
end_hunk_2
begin_hunk_3_@_ZNK2cv21resizeGeneric_InvokerINS_13HResizeLinearIfffLi1ENS_12HResizeNoVecEEENS_13VResizeLinearIfffNS_4CastIffEENS_12VResizeNoVecEEEEclERKNS_5RangeE:bb.a
  %i.cy = load i64, ptr %i.au, align 8, !tbaa !84
  %i.cz = sext i32 %i.cf to i64
  %i.da = mul i64 %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.da
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv89
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !452
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv89
  store i32 %i.cf, ptr %i.dd, align 4, !tbaa !19
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %i.de = sext i32 %i.cv to i64
  %i.df = icmp slt i64 %indvars.iv.next90, %i.de
  br i1 %i.df, label %bb.f, label %._crit_edge73, !llvm.loop !510

bb.k:                                             ; preds = %._crit_edge73
  %i.dg = sext i32 %.1 to i64                     ; 2 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dg
  %i.di = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.dg
  %i.dj = sub nsw i32 %i.cv, %.1
  %i.dk = load ptr, ptr %i.av, align 8, !tbaa !497
  %i.dl = load ptr, ptr %i.aw, align 8, !tbaa !500
  %i.dm = load i32, ptr %i.ax, align 8, !tbaa !511
  %i.dn = load i32, ptr %i.ay, align 4, !tbaa !503
  %i.do = load i32, ptr %i.az, align 8, !tbaa !504
  invoke void @_ZNK2cv13HResizeLinearIfffLi1ENS_12HResizeNoVecEEclEPPKfPPfiPKiS4_iiiii(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.di, i32 noundef %i.dj, ptr noundef %i.dk, ptr noundef %i.dl, i32 noundef %i.dm, i32 noundef %.pre97.pre, i32 noundef %i.h, i32 noundef %i.dn, i32 noundef %i.do)
          to label %._crit_edge95 unwind label %bb.l

._crit_edge95:                                    ; preds = %bb.k
  %.pre96 = load i32, ptr %i.i, align 8, !tbaa !505
  br label %._crit_edge73.thread

bb.l:                                             ; preds = %bb.k
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.dq = load ptr, ptr %3, align 8, !tbaa !449   ; 3 uses
  %.not.i.i35 = icmp eq ptr %i.dq, %i.s
  %i.dr = icmp eq ptr %i.dq, null
  %or.cond.i = or i1 %.not.i.i35, %i.dr
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.dq) #24
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit

_ZN2cv10AutoBufferIfLm264EED2Ev.exit:             ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.dp

._crit_edge73.thread:                             ; preds = %bb.e, %._crit_edge95, %._crit_edge73
  %.pre97100 = phi i32 [ %.pre96, %._crit_edge95 ], [ %.pre97.pre, %._crit_edge73 ], [ %.pre9799, %bb.e ] ; 4 uses
  %i.ds = load ptr, ptr %i.ba, align 8, !tbaa !512 ; 2 uses
  %i.dt = ptrtoaddr ptr %i.ds to i64
  %i.du = load i64, ptr %i.bb, align 8, !tbaa !84
  %i.dv = mul i64 %i.du, %indvars.iv92            ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dv ; 4 uses
  %i.dx = load float, ptr %.02676, align 4, !tbaa !70 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.02676, i64 4
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !70 ; 4 uses
  %i.ea = load ptr, ptr %i.b, align 16, !tbaa !452 ; 5 uses
  %i.eb = ptrtoaddr ptr %i.ea to i64
  %i.ec = load ptr, ptr %i.bc, align 8, !tbaa !452 ; 5 uses
  %i.ed = ptrtoaddr ptr %i.ec to i64
  %i.ee = icmp sgt i32 %.pre97100, 0
  br i1 %i.ee, label %.lr.ph.preheader.i, label %_ZNK2cv13VResizeLinearIfffNS_4CastIffEENS_12VResizeNoVecEEclEPPKfPfS6_i.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge73.thread
  %wide.trip.count.i = zext nneg i32 %.pre97100 to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre97100, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.ef = add i64 %i.dv, %i.dt                    ; 2 uses
  %i.eg = sub i64 %i.eb, %i.ef
  %diff.check = icmp ugt i64 %i.eg, -32
  %i.eh = sub i64 %i.ed, %i.ef
  %diff.check117 = icmp ugt i64 %i.eh, -32
  %conflict.rdx = or i1 %diff.check, %diff.check117
  br i1 %conflict.rdx, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.dz, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert118 = insertelement <4 x float> poison, float %i.dx, i64 0
  %broadcast.splat119 = shufflevector <4 x float> %broadcast.splatinsert118, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %index ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %wide.load = load <4 x float>, ptr %i.ei, align 4, !tbaa !70
  %wide.load120 = load <4 x float>, ptr %i.ej, align 4, !tbaa !70
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %index ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %wide.load121 = load <4 x float>, ptr %i.ek, align 4, !tbaa !70
  %wide.load122 = load <4 x float>, ptr %i.el, align 4, !tbaa !70
  %i.em = fmul <4 x float> %broadcast.splat, %wide.load121
  %i.en = fmul <4 x float> %broadcast.splat, %wide.load122
  %i.eo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat119, <4 x float> %i.em)
  %i.ep = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load120, <4 x float> %broadcast.splat119, <4 x float> %i.en)
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %index ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <4 x float> %i.eo, ptr %i.eq, align 4, !tbaa !70
  store <4 x float> %i.ep, ptr %i.er, align 4, !tbaa !70
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !513

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZNK2cv13VResizeLinearIfffNS_4CastIffEENS_12VResizeNoVecEEclEPPKfPfS6_i.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter125 = and i64 %wide.trip.count.i, 1
  %lcmp.mod126.not = icmp eq i64 %xtraiter125, 0
  br i1 %lcmp.mod126.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.i.ph
  %i.eu = load float, ptr %i.et, align 4, !tbaa !70
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.i.ph
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !70
  %i.ex = fmul float %i.dz, %i.ew
  %i.ey = call float @llvm.fmuladd.f32(float %i.eu, float %i.dx, float %i.ex)
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.i.ph
  store float %i.ey, ptr %i.ez, align 4, !tbaa !70
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.fa = add nsw i64 %wide.trip.count.i, -1
  %i.fb = icmp eq i64 %indvars.iv.i.ph, %i.fa
  br i1 %i.fb, label %_ZNK2cv13VResizeLinearIfffNS_4CastIffEENS_12VResizeNoVecEEclEPPKfPfS6_i.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.i
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !70
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.i
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !70
  %i.fg = fmul float %i.dz, %i.ff
  %i.fh = call float @llvm.fmuladd.f32(float %i.fd, float %i.dx, float %i.fg)
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.i
  store float %i.fh, ptr %i.fi, align 4, !tbaa !70
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.next.i
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !70
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.next.i
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !70
  %i.fn = fmul float %i.dz, %i.fm
  %i.fo = call float @llvm.fmuladd.f32(float %i.fk, float %i.dx, float %i.fn)
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next.i
  store float %i.fo, ptr %i.fp, align 4, !tbaa !70
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %_ZNK2cv13VResizeLinearIfffNS_4CastIffEENS_12VResizeNoVecEEclEPPKfPfS6_i.exit, label %.lr.ph.i, !llvm.loop !514

_ZNK2cv13VResizeLinearIfffNS_4CastIffEENS_12VResizeNoVecEEclEPPKfPfS6_i.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %._crit_edge73.thread
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.fq = load i32, ptr %i.o, align 8, !tbaa !502 ; 2 uses
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %.02676, i64 %i.fr
  %i.ft = load i32, ptr %i.ai, align 4, !tbaa !36
  %i.fu = sext i32 %i.ft to i64
  %i.fv = icmp slt i64 %indvars.iv.next93, %i.fu
  br i1 %i.fv, label %bb.e, label %._crit_edge80.loopexit, !llvm.loop !515

._crit_edge80.loopexit:                           ; preds = %_ZNK2cv13VResizeLinearIfffNS_4CastIffEENS_12VResizeNoVecEEclEPPKfPfS6_i.exit
  %.pre98 = load ptr, ptr %3, align 8, !tbaa !449
  br label %._crit_edge80

._crit_edge80:                                    ; preds = %._crit_edge80.loopexit, %._crit_edge
  %i.fw = phi ptr [ %.pre98, %._crit_edge80.loopexit ], [ %i.y, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not.i.i36 = icmp eq ptr %i.fw, %i.s
  %i.fx = icmp eq ptr %i.fw, null
  %or.cond.i37 = or i1 %.not.i.i36, %i.fx
  br i1 %or.cond.i37, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit38, label %bb.n

bb.n:                                             ; preds = %._crit_edge80
  call void @_ZdaPv(ptr noundef nonnull %i.fw) #24
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit38

_ZN2cv10AutoBufferIfLm264EED2Ev.exit38:           ; preds = %._crit_edge80, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv13HResizeLinearIfffLi1ENS_12HResizeNoVecEEclEPPKfPPfiPKiS4_iiiii(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = add i32 %3, -2                           ; 3 uses
  %.not102 = icmp slt i32 %3, 2
  br i1 %.not102, label %.preheader97, label %.lr.ph105

.lr.ph105:                                        ; preds = %bb.a
  %i.b = icmp sgt i32 %10, 0
  br i1 %i.b, label %.lr.ph.us.preheader, label %.lr.ph105.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph105
  %i.c = zext nneg i32 %i.a to i64
  %wide.trip.count138 = zext nneg i32 %10 to i64
  %i.d = icmp slt i32 %10, %7
  %i.e = sub i32 %7, %10
  %.neg = add nuw i32 %10, 1
  %xtraiter177 = and i32 %i.e, 1
  %lcmp.mod178.not = icmp eq i32 %xtraiter177, 0
  %i.f = icmp eq i32 %7, %.neg
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv145 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next146, %._crit_edge.us ] ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv145
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !452  ; 5 uses
  %i.i = or disjoint i64 %indvars.iv145, 1        ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !452  ; 5 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv145
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !452  ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !452  ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %indvars.iv140 = phi i64 [ 1, %.lr.ph.us ], [ %indvars.iv.next141, %bb.b ] ; 6 uses
  %indvars.iv135 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next136, %bb.b ] ; 5 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv135
  %i.q = load i32, ptr %i.p, align 4, !tbaa !19   ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv135, 3
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 %.idx ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !70
  %i.t = getelementptr i8, ptr %i.r, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !70
  %i.v = sext i32 %i.q to i64                     ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.v
  %i.x = load float, ptr %i.w, align 4, !tbaa !70
  %i.y = add nsw i32 %i.q, %8
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !70
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.v
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !70
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.z
  %i.af = load float, ptr %i.ae, align 4, !tbaa !70
  %i.ag = insertelement <2 x float> poison, float %i.u, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.af, i64 1
  %i.ak = fmul <2 x float> %i.ah, %i.aj
  %i.al = insertelement <2 x float> poison, float %i.x, i64 0
  %i.am = insertelement <2 x float> %i.al, float %i.ad, i64 1
  %i.an = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.ao, <2 x float> %i.ak) ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv135
  %i.ar = extractelement <2 x float> %i.ap, i64 0
  store float %i.ar, ptr %i.aq, align 4, !tbaa !70
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv135
  %i.at = extractelement <2 x float> %i.ap, i64 1
  store float %i.at, ptr %i.as, align 4, !tbaa !70
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  br i1 %exitcond139.not, label %..preheader98_crit_edge.us, label %bb.b, !llvm.loop !516

.lr.ph101.us:                                     ; preds = %.lr.ph101.us.prol.loopexit, %.lr.ph101.us
  %indvars.iv142 = phi i64 [ %indvars.iv.next143.1, %.lr.ph101.us ], [ %indvars.iv142.unr, %.lr.ph101.us.prol.loopexit ] ; 5 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv142
  %i.av = load i32, ptr %i.au, align 4, !tbaa !19
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !70
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv142
  store float %i.ay, ptr %i.az, align 4, !tbaa !70
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.aw
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !70
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv142
  store float %i.bb, ptr %i.bc, align 4, !tbaa !70
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next143
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !19
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bf
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !70
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next143
  store float %i.bh, ptr %i.bi, align 4, !tbaa !70
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bf
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !70
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next143
  store float %i.bk, ptr %i.bl, align 4, !tbaa !70
  %indvars.iv.next143.1 = add nuw nsw i64 %indvars.iv142, 2 ; 2 uses
  %i.bm = trunc nuw i64 %indvars.iv.next143.1 to i32
  %i.bn = icmp sgt i32 %7, %i.bm
  br i1 %i.bn, label %.lr.ph101.us, label %._crit_edge.us, !llvm.loop !517

._crit_edge.us:                                   ; preds = %.lr.ph101.us.prol.loopexit, %.lr.ph101.us, %..preheader98_crit_edge.us
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 2 ; 3 uses
  %.not.us = icmp samesign ugt i64 %indvars.iv.next146, %i.c
  br i1 %.not.us, label %.preheader97.loopexit, label %.lr.ph.us, !llvm.loop !518

..preheader98_crit_edge.us:                       ; preds = %bb.b
  br i1 %i.d, label %.lr.ph101.us.preheader, label %._crit_edge.us

.lr.ph101.us.preheader:                           ; preds = %..preheader98_crit_edge.us
  br i1 %lcmp.mod178.not, label %.lr.ph101.us.prol.loopexit, label %.lr.ph101.us.prol

.lr.ph101.us.prol:                                ; preds = %.lr.ph101.us.preheader
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv140
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !19
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !70
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv140
  store float %i.bs, ptr %i.bt, align 4, !tbaa !70
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bq
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !70
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv140
  store float %i.bv, ptr %i.bw, align 4, !tbaa !70
  %indvars.iv.next143.prol = add nuw nsw i64 %indvars.iv140, 1
  br label %.lr.ph101.us.prol.loopexit

.lr.ph101.us.prol.loopexit:                       ; preds = %.lr.ph101.us.prol, %.lr.ph101.us.preheader
  %indvars.iv142.unr = phi i64 [ %indvars.iv140, %.lr.ph101.us.preheader ], [ %indvars.iv.next143.prol, %.lr.ph101.us.prol ]
  br i1 %i.f, label %._crit_edge.us, label %.lr.ph101.us

.lr.ph105.split:                                  ; preds = %.lr.ph105
  %i.bx = icmp sgt i32 %7, 0
  br i1 %i.bx, label %.preheader98.us107.preheader, label %.preheader98.preheader

.preheader98.preheader:                           ; preds = %.lr.ph105.split
  %i.by = and i32 %i.a, -2
  %i.bz = add nuw nsw i32 %i.by, 2
  br label %.preheader97

.preheader98.us107.preheader:                     ; preds = %.lr.ph105.split
  %i.ca = zext nneg i32 %i.a to i64
  %wide.trip.count = zext nneg i32 %7 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.cb = icmp eq i32 %7, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod176 = trunc i32 %7 to i1
  br label %.preheader98.us107

.preheader98.us107:                               ; preds = %.preheader98.us107.preheader, %._crit_edge.us112
  %indvars.iv132 = phi i64 [ 0, %.preheader98.us107.preheader ], [ %indvars.iv.next133, %._crit_edge.us112 ] ; 4 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv132
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !452 ; 3 uses
  %i.ce = or disjoint i64 %indvars.iv132, 1       ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !452 ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv132
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !452 ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ce
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !452 ; 3 uses
  br i1 %i.cb, label %.epil.preheader, label %.preheader98.us107.new

.preheader98.us107.new:                           ; preds = %.preheader98.us107, %.preheader98.us107.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader98.us107.new ], [ 0, %.preheader98.us107 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader98.us107.new ], [ 0, %.preheader98.us107 ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !19
  %i.cn = sext i32 %i.cm to i64                   ; 2 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !70
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv
  store float %i.cp, ptr %i.cq, align 4, !tbaa !70
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cn
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !70
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  store float %i.cs, ptr %i.ct, align 4, !tbaa !70
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !19
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.cw
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !70
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next
  store float %i.cy, ptr %i.cz, align 4, !tbaa !70
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cw
  %i.db = load float, ptr %i.da, align 4, !tbaa !70
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.next
  store float %i.db, ptr %i.dc, align 4, !tbaa !70
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us112.unr-lcssa, label %.preheader98.us107.new, !llvm.loop !517

._crit_edge.us112.unr-lcssa:                      ; preds = %.preheader98.us107.new
  br i1 %lcmp.mod.not, label %._crit_edge.us112, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us112.unr-lcssa, %.preheader98.us107
end_hunk_3
begin_hunk_4_@_ZNK2cv21resizeGeneric_InvokerINS_13HResizeLinearIddfLi1ENS_12HResizeNoVecEEENS_13VResizeLinearIddfNS_4CastIddEENS_12VResizeNoVecEEEEclERKNS_5RangeE:bb.a
  %i.da = mul i64 %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.da
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv89
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !537
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv89
  store i32 %i.cf, ptr %i.dd, align 4, !tbaa !19
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %i.de = sext i32 %i.cv to i64
  %i.df = icmp slt i64 %indvars.iv.next90, %i.de
  br i1 %i.df, label %bb.f, label %._crit_edge73, !llvm.loop !542

bb.k:                                             ; preds = %._crit_edge73
  %i.dg = sext i32 %.1 to i64                     ; 2 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dg
  %i.di = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.dg
  %i.dj = sub nsw i32 %i.cv, %.1
  %i.dk = load ptr, ptr %i.av, align 8, !tbaa !524
  %i.dl = load ptr, ptr %i.aw, align 8, !tbaa !527
  %i.dm = load i32, ptr %i.ax, align 8, !tbaa !543
  %i.dn = load i32, ptr %i.ay, align 4, !tbaa !530
  %i.do = load i32, ptr %i.az, align 8, !tbaa !531
  invoke void @_ZNK2cv13HResizeLinearIddfLi1ENS_12HResizeNoVecEEclEPPKdPPdiPKiPKfiiiii(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.di, i32 noundef %i.dj, ptr noundef %i.dk, ptr noundef %i.dl, i32 noundef %i.dm, i32 noundef %.pre97.pre, i32 noundef %i.h, i32 noundef %i.dn, i32 noundef %i.do)
          to label %._crit_edge95 unwind label %bb.l

._crit_edge95:                                    ; preds = %bb.k
  %.pre96 = load i32, ptr %i.i, align 8, !tbaa !532
  br label %._crit_edge73.thread

bb.l:                                             ; preds = %bb.k
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.dq = load ptr, ptr %3, align 8, !tbaa !533   ; 3 uses
  %.not.i.i35 = icmp eq ptr %i.dq, %i.s
  %i.dr = icmp eq ptr %i.dq, null
  %or.cond.i = or i1 %.not.i.i35, %i.dr
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.dq) #24
  br label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit

_ZN2cv10AutoBufferIdLm136EED2Ev.exit:             ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.dp

._crit_edge73.thread:                             ; preds = %bb.e, %._crit_edge95, %._crit_edge73
  %.pre97100 = phi i32 [ %.pre96, %._crit_edge95 ], [ %.pre97.pre, %._crit_edge73 ], [ %.pre9799, %bb.e ] ; 4 uses
  %i.ds = load ptr, ptr %i.ba, align 8, !tbaa !544 ; 2 uses
  %i.dt = ptrtoaddr ptr %i.ds to i64
  %i.du = load i64, ptr %i.bb, align 8, !tbaa !84
  %i.dv = mul i64 %i.du, %indvars.iv92            ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dv ; 4 uses
  %i.dx = load float, ptr %.02676, align 4, !tbaa !70
  %i.dy = fpext float %i.dx to double             ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.02676, i64 4
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !70
  %i.eb = fpext float %i.ea to double             ; 4 uses
  %i.ec = load ptr, ptr %i.b, align 16, !tbaa !537 ; 5 uses
  %i.ed = ptrtoaddr ptr %i.ec to i64
  %i.ee = load ptr, ptr %i.bc, align 8, !tbaa !537 ; 5 uses
  %i.ef = ptrtoaddr ptr %i.ee to i64
  %i.eg = icmp sgt i32 %.pre97100, 0
  br i1 %i.eg, label %.lr.ph.preheader.i, label %_ZNK2cv13VResizeLinearIddfNS_4CastIddEENS_12VResizeNoVecEEclEPPKdPdPKfi.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge73.thread
  %wide.trip.count.i = zext nneg i32 %.pre97100 to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre97100, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.eh = add i64 %i.dv, %i.dt                    ; 2 uses
  %i.ei = sub i64 %i.ed, %i.eh
  %diff.check = icmp ugt i64 %i.ei, -32
  %i.ej = sub i64 %i.ef, %i.eh
  %diff.check117 = icmp ugt i64 %i.ej, -32
  %conflict.rdx = or i1 %diff.check, %diff.check117
  br i1 %conflict.rdx, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.eb, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert118 = insertelement <2 x double> poison, double %i.dy, i64 0
  %broadcast.splat119 = shufflevector <2 x double> %broadcast.splatinsert118, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %index ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %wide.load = load <2 x double>, ptr %i.ek, align 8, !tbaa !545
  %wide.load120 = load <2 x double>, ptr %i.el, align 8, !tbaa !545
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %index ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load121 = load <2 x double>, ptr %i.em, align 8, !tbaa !545
  %wide.load122 = load <2 x double>, ptr %i.en, align 8, !tbaa !545
  %i.eo = fmul <2 x double> %wide.load121, %broadcast.splat
  %i.ep = fmul <2 x double> %wide.load122, %broadcast.splat
  %i.eq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %broadcast.splat119, <2 x double> %i.eo)
  %i.er = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load120, <2 x double> %broadcast.splat119, <2 x double> %i.ep)
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %index ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store <2 x double> %i.eq, ptr %i.es, align 8, !tbaa !545
  store <2 x double> %i.er, ptr %i.et, align 8, !tbaa !545
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !546

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZNK2cv13VResizeLinearIddfNS_4CastIddEENS_12VResizeNoVecEEclEPPKdPdPKfi.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter125 = and i64 %wide.trip.count.i, 1
  %lcmp.mod126.not = icmp eq i64 %xtraiter125, 0
  br i1 %lcmp.mod126.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv.i.ph
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !545
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.i.ph
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !545
  %i.ez = fmul double %i.ey, %i.eb
  %i.fa = call double @llvm.fmuladd.f64(double %i.ew, double %i.dy, double %i.ez)
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.i.ph
  store double %i.fa, ptr %i.fb, align 8, !tbaa !545
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.fc = add nsw i64 %wide.trip.count.i, -1
  %i.fd = icmp eq i64 %indvars.iv.i.ph, %i.fc
  br i1 %i.fd, label %_ZNK2cv13VResizeLinearIddfNS_4CastIddEENS_12VResizeNoVecEEclEPPKdPdPKfi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv.i
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !545
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.i
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !545
  %i.fi = fmul double %i.fh, %i.eb
  %i.fj = call double @llvm.fmuladd.f64(double %i.ff, double %i.dy, double %i.fi)
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.i
  store double %i.fj, ptr %i.fk, align 8, !tbaa !545
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv.next.i
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !545
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.next.i
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !545
  %i.fp = fmul double %i.fo, %i.eb
  %i.fq = call double @llvm.fmuladd.f64(double %i.fm, double %i.dy, double %i.fp)
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.next.i
  store double %i.fq, ptr %i.fr, align 8, !tbaa !545
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %_ZNK2cv13VResizeLinearIddfNS_4CastIddEENS_12VResizeNoVecEEclEPPKdPdPKfi.exit, label %.lr.ph.i, !llvm.loop !547

_ZNK2cv13VResizeLinearIddfNS_4CastIddEENS_12VResizeNoVecEEclEPPKdPdPKfi.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %._crit_edge73.thread
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.fs = load i32, ptr %i.o, align 8, !tbaa !529 ; 2 uses
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %.02676, i64 %i.ft
  %i.fv = load i32, ptr %i.ai, align 4, !tbaa !36
  %i.fw = sext i32 %i.fv to i64
  %i.fx = icmp slt i64 %indvars.iv.next93, %i.fw
  br i1 %i.fx, label %bb.e, label %._crit_edge80.loopexit, !llvm.loop !548

._crit_edge80.loopexit:                           ; preds = %_ZNK2cv13VResizeLinearIddfNS_4CastIddEENS_12VResizeNoVecEEclEPPKdPdPKfi.exit
  %.pre98 = load ptr, ptr %3, align 8, !tbaa !533
  br label %._crit_edge80

._crit_edge80:                                    ; preds = %._crit_edge80.loopexit, %._crit_edge
  %i.fy = phi ptr [ %.pre98, %._crit_edge80.loopexit ], [ %i.y, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not.i.i36 = icmp eq ptr %i.fy, %i.s
  %i.fz = icmp eq ptr %i.fy, null
  %or.cond.i37 = or i1 %.not.i.i36, %i.fz
  br i1 %or.cond.i37, label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit38, label %bb.n

bb.n:                                             ; preds = %._crit_edge80
  call void @_ZdaPv(ptr noundef nonnull %i.fy) #24
  br label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit38

_ZN2cv10AutoBufferIdLm136EED2Ev.exit38:           ; preds = %._crit_edge80, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv13HResizeLinearIddfLi1ENS_12HResizeNoVecEEclEPPKdPPdiPKiPKfiiiii(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = add i32 %3, -2                           ; 3 uses
  %.not102 = icmp slt i32 %3, 2
  br i1 %.not102, label %.preheader97, label %.lr.ph105

.lr.ph105:                                        ; preds = %bb.a
  %i.b = icmp sgt i32 %10, 0
  br i1 %i.b, label %.lr.ph.us.preheader, label %.lr.ph105.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph105
  %i.c = zext nneg i32 %i.a to i64
  %wide.trip.count138 = zext nneg i32 %10 to i64
  %i.d = icmp slt i32 %10, %7
  %i.e = sub i32 %7, %10
  %.neg = add nuw i32 %10, 1
  %xtraiter177 = and i32 %i.e, 1
  %lcmp.mod178.not = icmp eq i32 %xtraiter177, 0
  %i.f = icmp eq i32 %7, %.neg
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv145 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next146, %._crit_edge.us ] ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv145
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !537  ; 5 uses
  %i.i = or disjoint i64 %indvars.iv145, 1        ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !537  ; 5 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv145
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !537  ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !537  ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %indvars.iv140 = phi i64 [ 1, %.lr.ph.us ], [ %indvars.iv.next141, %bb.b ] ; 6 uses
  %indvars.iv135 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next136, %bb.b ] ; 5 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv135
  %i.q = load i32, ptr %i.p, align 4, !tbaa !19   ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv135, 3
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 %.idx
  %i.s = load <2 x float>, ptr %i.r, align 4, !tbaa !70
  %i.t = fpext <2 x float> %i.s to <2 x double>   ; 2 uses
  %i.u = sext i32 %i.q to i64                     ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.u
  %i.w = load double, ptr %i.v, align 8, !tbaa !545
  %i.x = add nsw i32 %i.q, %8
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8, !tbaa !545
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.u
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !545
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.y
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !545
  %i.af = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %i.ae, i64 1
  %i.ah = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ai = fmul <2 x double> %i.ag, %i.ah
  %i.aj = insertelement <2 x double> poison, double %i.w, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.ac, i64 1
  %i.al = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %i.al, <2 x double> %i.ai) ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv135
  %i.ao = extractelement <2 x double> %i.am, i64 0
  store double %i.ao, ptr %i.an, align 8, !tbaa !545
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv135
  %i.aq = extractelement <2 x double> %i.am, i64 1
  store double %i.aq, ptr %i.ap, align 8, !tbaa !545
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  br i1 %exitcond139.not, label %..preheader98_crit_edge.us, label %bb.b, !llvm.loop !549

.lr.ph101.us:                                     ; preds = %.lr.ph101.us.prol.loopexit, %.lr.ph101.us
  %indvars.iv142 = phi i64 [ %indvars.iv.next143.1, %.lr.ph101.us ], [ %indvars.iv142.unr, %.lr.ph101.us.prol.loopexit ] ; 5 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv142
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !19
  %i.at = sext i32 %i.as to i64                   ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !545
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv142
  store double %i.av, ptr %i.aw, align 8, !tbaa !545
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.at
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !545
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv142
  store double %i.ay, ptr %i.az, align 8, !tbaa !545
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next143
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !19
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.bc
  %i.be = load double, ptr %i.bd, align 8, !tbaa !545
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next143
  store double %i.be, ptr %i.bf, align 8, !tbaa !545
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bc
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !545
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next143
  store double %i.bh, ptr %i.bi, align 8, !tbaa !545
  %indvars.iv.next143.1 = add nuw nsw i64 %indvars.iv142, 2 ; 2 uses
  %i.bj = trunc nuw i64 %indvars.iv.next143.1 to i32
  %i.bk = icmp sgt i32 %7, %i.bj
  br i1 %i.bk, label %.lr.ph101.us, label %._crit_edge.us, !llvm.loop !550

._crit_edge.us:                                   ; preds = %.lr.ph101.us.prol.loopexit, %.lr.ph101.us, %..preheader98_crit_edge.us
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 2 ; 3 uses
  %.not.us = icmp samesign ugt i64 %indvars.iv.next146, %i.c
  br i1 %.not.us, label %.preheader97.loopexit, label %.lr.ph.us, !llvm.loop !551

..preheader98_crit_edge.us:                       ; preds = %bb.b
  br i1 %i.d, label %.lr.ph101.us.preheader, label %._crit_edge.us

.lr.ph101.us.preheader:                           ; preds = %..preheader98_crit_edge.us
  br i1 %lcmp.mod178.not, label %.lr.ph101.us.prol.loopexit, label %.lr.ph101.us.prol

.lr.ph101.us.prol:                                ; preds = %.lr.ph101.us.preheader
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv140
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !19
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !545
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv140
  store double %i.bp, ptr %i.bq, align 8, !tbaa !545
  %i.br = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bn
  %i.bs = load double, ptr %i.br, align 8, !tbaa !545
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv140
  store double %i.bs, ptr %i.bt, align 8, !tbaa !545
  %indvars.iv.next143.prol = add nuw nsw i64 %indvars.iv140, 1
  br label %.lr.ph101.us.prol.loopexit

.lr.ph101.us.prol.loopexit:                       ; preds = %.lr.ph101.us.prol, %.lr.ph101.us.preheader
  %indvars.iv142.unr = phi i64 [ %indvars.iv140, %.lr.ph101.us.preheader ], [ %indvars.iv.next143.prol, %.lr.ph101.us.prol ]
  br i1 %i.f, label %._crit_edge.us, label %.lr.ph101.us

.lr.ph105.split:                                  ; preds = %.lr.ph105
  %i.bu = icmp sgt i32 %7, 0
  br i1 %i.bu, label %.preheader98.us107.preheader, label %.preheader98.preheader

.preheader98.preheader:                           ; preds = %.lr.ph105.split
  %i.bv = and i32 %i.a, -2
  %i.bw = add nuw nsw i32 %i.bv, 2
  br label %.preheader97

.preheader98.us107.preheader:                     ; preds = %.lr.ph105.split
  %i.bx = zext nneg i32 %i.a to i64
  %wide.trip.count = zext nneg i32 %7 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.by = icmp eq i32 %7, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod176 = trunc i32 %7 to i1
  br label %.preheader98.us107

.preheader98.us107:                               ; preds = %.preheader98.us107.preheader, %._crit_edge.us112
  %indvars.iv132 = phi i64 [ 0, %.preheader98.us107.preheader ], [ %indvars.iv.next133, %._crit_edge.us112 ] ; 4 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv132
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !537 ; 3 uses
  %i.cb = or disjoint i64 %indvars.iv132, 1       ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !537 ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv132
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !537 ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cb
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !537 ; 3 uses
  br i1 %i.by, label %.epil.preheader, label %.preheader98.us107.new

.preheader98.us107.new:                           ; preds = %.preheader98.us107, %.preheader98.us107.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader98.us107.new ], [ 0, %.preheader98.us107 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader98.us107.new ], [ 0, %.preheader98.us107 ]
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !19
  %i.ck = sext i32 %i.cj to i64                   ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.ck
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !545
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv
  store double %i.cm, ptr %i.cn, align 8, !tbaa !545
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.ck
  %i.cp = load double, ptr %i.co, align 8, !tbaa !545
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv
  store double %i.cp, ptr %i.cq, align 8, !tbaa !545
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !19
  %i.ct = sext i32 %i.cs to i64                   ; 2 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !545
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next
  store double %i.cv, ptr %i.cw, align 8, !tbaa !545
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.ct
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !545
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.next
  store double %i.cy, ptr %i.cz, align 8, !tbaa !545
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us112.unr-lcssa, label %.preheader98.us107.new, !llvm.loop !550

._crit_edge.us112.unr-lcssa:                      ; preds = %.preheader98.us107.new
  br i1 %lcmp.mod.not, label %._crit_edge.us112, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us112.unr-lcssa, %.preheader98.us107
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader98.us107 ], [ %indvars.iv.next.1, %._crit_edge.us112.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod176)
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.epil.init
end_hunk_4
