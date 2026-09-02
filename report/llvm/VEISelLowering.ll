Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VEISelLowering?download=true
inline.NumInlined: 4497
inline.NumDeleted: 1598
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZL13RetCC_VE_FastjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.p = load i32, ptr %i.o, align 4, !tbaa !11   ; 3 uses
  %i.q = and i32 %i.p, 1
  %.not.i.i.5 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = and i32 %i.p, 2
  %.not.i.i.6 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = and i32 %i.p, 4
  %.not.i.i.7 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %.thread

.thread:                                          ; preds = %bb.h
  switch i16 %2, label %.thread129 [
    i16 89, label %.critedge2
    i16 150, label %.critedge2
  ]

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.critedge
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %.critedge ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ 6, %bb.g ], [ 7, %bb.h ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @_ZZL10CC_VE_FastjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList2, i64 %.0613.i.i.lcssa.wide
  %i.u = load i16, ptr %i.t, align 2, !tbaa !12   ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.u) #25
  %i.v = zext i16 %i.u to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.w, align 8, !tbaa !14, !alias.scope !68
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %0, ptr %i.x, align 8, !tbaa !19, !alias.scope !68
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.z = load i8, ptr %i.y, align 4, !alias.scope !68
  %i.aa = and i8 %i.z, -128
  %i.ab = trunc i32 %3 to i8
  %i.ac = shl i8 %i.ab, 1
  %i.ad = and i8 %i.ac, 126
  %i.ae = or disjoint i8 %i.aa, %i.ad
  store i8 %i.ae, ptr %i.y, align 4, !alias.scope !68
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %1, ptr %i.af, align 2, !tbaa !30, !alias.scope !68
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 %2, ptr %i.ag, align 8, !tbaa !30, !alias.scope !68
  store i32 %i.v, ptr %8, align 8, !tbaa !11, !alias.scope !68
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31, !nonnull !60, !align !61 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !62 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !63
  %.not.i.i54 = icmp ult i32 %i.ak, %i.am
  br i1 %.not.i.i54, label %bb.j, label %bb.i, !prof !64

bb.i:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(26) %8)
  br label %bb.k

bb.j:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.an = zext i32 %i.ak to i64
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.aq = load i32, ptr %i.aj, align 8, !tbaa !62
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.aj, align 8, !tbaa !62
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.aj

.critedge2:                                       ; preds = %bb.a, %bb.a, %.thread, %.thread
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !8  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !11 ; 5 uses
  %i.aw = and i32 %i.av, 134217728
  %.not.i.i56 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i56, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit59, label %bb.l

bb.l:                                             ; preds = %.critedge2
  %i.ax = and i32 %i.av, 268435456
  %.not.i.i56.1 = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i56.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit59, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = and i32 %i.av, 536870912
  %.not.i.i56.2 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i56.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit59, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = and i32 %i.av, 1073741824
  %.not.i.i56.3 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i56.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit59, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i.i56.4 = icmp sgt i32 %i.av, -1
  br i1 %.not.i.i56.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit59, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !11 ; 3 uses
  %i.bc = and i32 %i.bb, 1
  %.not.i.i56.5 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i56.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit59, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = and i32 %i.bb, 2
  %.not.i.i56.6 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i56.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit59, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = and i32 %i.bb, 4
  %.not.i.i56.7 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i56.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit59, label %.thread129

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit59: ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %.critedge2
  %.0613.i.i55.lcssa.wide = phi i64 [ 0, %.critedge2 ], [ 1, %bb.l ], [ 2, %bb.m ], [ 3, %bb.n ], [ 4, %bb.o ], [ 5, %bb.p ], [ 6, %bb.q ], [ 7, %bb.r ]
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr @_ZZL10CC_VE_FastjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList2, i64 %.0613.i.i55.lcssa.wide
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !12 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.bg) #25
  %i.bh = zext i16 %i.bg to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.bi, align 8, !tbaa !14, !alias.scope !71
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %0, ptr %i.bj, align 8, !tbaa !19, !alias.scope !71
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 4, !alias.scope !71
  %i.bm = and i8 %i.bl, -128
  %i.bn = trunc i32 %3 to i8
  %i.bo = shl i8 %i.bn, 1
  %i.bp = and i8 %i.bo, 126
  %i.bq = or disjoint i8 %i.bm, %i.bp
  store i8 %i.bq, ptr %i.bk, align 4, !alias.scope !71
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %1, ptr %i.br, align 2, !tbaa !30, !alias.scope !71
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 %2, ptr %i.bs, align 8, !tbaa !30, !alias.scope !71
  store i32 %i.bh, ptr %9, align 8, !tbaa !11, !alias.scope !71
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !31, !nonnull !60, !align !61 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !62 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !63
  %.not.i.i60 = icmp ult i32 %i.bw, %i.by
  br i1 %.not.i.i60, label %bb.t, label %bb.s, !prof !64

bb.s:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit59
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(26) %9)
  br label %bb.u

bb.t:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit59
  %i.bz = zext i32 %i.bw to i64
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !8
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %i.ca, i64 %i.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.cc = load i32, ptr %i.bv, align 8, !tbaa !62
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.bv, align 8, !tbaa !62
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.aj

bb.v:                                             ; preds = %._crit_edge
  %i.ce = and i32 %i.e, 536870912
  %.not.i.i63.1 = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i63.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = and i32 %i.e, 1073741824
  %.not.i.i63.2 = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i63.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not.i.i63.3 = icmp sgt i32 %i.e, -1
  br i1 %.not.i.i63.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !11 ; 3 uses
  %i.ci = and i32 %i.ch, 1
  %.not.i.i63.4 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i63.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = and i32 %i.ch, 2
  %.not.i.i63.5 = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i63.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = and i32 %i.ch, 4
  %.not.i.i63.6 = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i63.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66, label %.thread129

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %._crit_edge
  %.0613.i.i62.lcssa.wide = phi i64 [ 0, %._crit_edge ], [ 1, %bb.v ], [ 2, %bb.w ], [ 3, %bb.x ], [ 4, %bb.y ], [ 5, %bb.z ], [ 6, %bb.aa ]
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr @_ZZL10CC_VE_FastjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList3, i64 %.0613.i.i62.lcssa.wide
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !12 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.cm) #25
  %i.cn = zext i16 %i.cm to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.co, align 8, !tbaa !14, !alias.scope !74
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %0, ptr %i.cp, align 8, !tbaa !19, !alias.scope !74
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 4, !alias.scope !74
  %i.cs = and i8 %i.cr, -128
  %i.ct = trunc i32 %3 to i8
  %i.cu = shl i8 %i.ct, 1
  %i.cv = and i8 %i.cu, 126
  %i.cw = or disjoint i8 %i.cs, %i.cv
  store i8 %i.cw, ptr %i.cq, align 4, !alias.scope !74
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i16 %1, ptr %i.cx, align 2, !tbaa !30, !alias.scope !74
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 %2, ptr %i.cy, align 8, !tbaa !30, !alias.scope !74
  store i32 %i.cn, ptr %10, align 8, !tbaa !11, !alias.scope !74
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !31, !nonnull !60, !align !61 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 3 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !62 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !63
  %.not.i.i67 = icmp ult i32 %i.dc, %i.de
  br i1 %.not.i.i67, label %bb.ac, label %bb.ab, !prof !64

bb.ab:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(26) %10)
  br label %bb.ad

bb.ac:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66
  %i.df = zext i32 %i.dc to i64
  %i.dg = load ptr, ptr %i.da, align 8, !tbaa !8
  %i.dh = getelementptr inbounds nuw [32 x i8], ptr %i.dg, i64 %i.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  %i.di = load i32, ptr %i.db, align 8, !tbaa !62
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.db, align 8, !tbaa !62
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.aj

bb.ae:                                            ; preds = %._crit_edge143
  %i.dk = and i32 %i.b, 8192
  %.not.i.i70.1 = icmp eq i32 %i.dk, 0
  br i1 %.not.i.i70.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dl = and i32 %i.b, 16384
  %.not.i.i70.2 = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i70.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit, label %.thread129

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit: ; preds = %bb.af, %bb.ae, %._crit_edge143
  %.0613.i.i69.lcssa.wide = phi i64 [ 0, %._crit_edge143 ], [ 1, %bb.ae ], [ 2, %bb.af ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr @_ZZL10CC_VE_FastjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList4, i64 %.0613.i.i69.lcssa.wide
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !12 ; 2 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr @_ZZL10CC_VE_FastjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList5, i64 %.0613.i.i69.lcssa.wide
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !12
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.dn) #25
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.dp) #25
  %i.dq = zext i16 %i.dn to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 0, ptr %i.dr, align 8, !tbaa !14, !alias.scope !77
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %0, ptr %i.ds, align 8, !tbaa !19, !alias.scope !77
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 4, !alias.scope !77
  %i.dv = and i8 %i.du, -128
  %i.dw = trunc i32 %3 to i8
  %i.dx = shl i8 %i.dw, 1
  %i.dy = and i8 %i.dx, 126
  %i.dz = or disjoint i8 %i.dv, %i.dy
  store i8 %i.dz, ptr %i.dt, align 4, !alias.scope !77
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i16 %1, ptr %i.ea, align 2, !tbaa !30, !alias.scope !77
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i16 %2, ptr %i.eb, align 8, !tbaa !30, !alias.scope !77
  store i32 %i.dq, ptr %11, align 8, !tbaa !11, !alias.scope !77
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !31, !nonnull !60, !align !61 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 3 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !62 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !63
  %.not.i.i72 = icmp ult i32 %i.ef, %i.eh
  br i1 %.not.i.i72, label %bb.ah, label %bb.ag, !prof !64

bb.ag:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr noundef nonnull align 8 dereferenceable(26) %11)
  br label %bb.ai

bb.ah:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit
  %i.ei = zext i32 %i.ef to i64
  %i.ej = load ptr, ptr %i.ed, align 8, !tbaa !8
  %i.ek = getelementptr inbounds nuw [32 x i8], ptr %i.ej, i64 %i.ei
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ek, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  %i.el = load i32, ptr %i.ee, align 8, !tbaa !62
  %i.em = add i32 %i.el, 1
  store i32 %i.em, ptr %i.ee, align 8, !tbaa !62
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.aj

.thread129:                                       ; preds = %bb.r, %bb.af, %bb.aa, %bb.a, %.thread
  %i.en = tail call noundef zeroext i1 @_ZL10RetCC_VE_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 poison, ptr poison, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ad, %bb.u, %bb.k, %.thread129
  %.7 = phi i1 [ false, %bb.k ], [ %i.en, %.thread129 ], [ false, %bb.ai ], [ false, %bb.ad ], [ false, %bb.u ]
  ret i1 %.7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_Z10getParamCCjb(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %cond = icmp eq i32 %0, 8
  %_ZL10CC_VE_FastjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE._ZL7CC_VE_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE = select i1 %cond, ptr @_ZL10CC_VE_FastjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE, ptr @_ZL7CC_VE_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE
  %.0 = select i1 %1, ptr @_ZL6CC_VE2jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE, ptr %_ZL10CC_VE_FastjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE._ZL7CC_VE_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZL6CC_VE2jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree readnone captures(none) %6, ptr noundef nonnull align 8 dereferenceable(420) %7) #1 {
bb.a:
  %8 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %9 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %10 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  switch i16 %2, label %.thread50.fold.split [
    i16 2, label %.critedge
    i16 5, label %.critedge
    i16 6, label %.critedge
    i16 7, label %.critedge
    i16 14, label %.thread50
    i16 17, label %bb.c
  ]

.critedge:                                        ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.a = and i64 %4, 2
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %.thread50

bb.b:                                             ; preds = %.critedge
  %i.b = trunc i64 %4 to i1
  %. = select i1 %i.b, i32 2, i32 3
  br label %.thread50

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.d = load i8, ptr %i.c, align 8, !tbaa !80, !range !81, !noundef !60
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !82   ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = add i64 %i.g, 31
  %i.i = and i64 %i.h, -16                        ; 2 uses
  %i.j = sub i64 0, %i.i
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

bb.e:                                             ; preds = %bb.c
  %i.k = add i64 %i.g, 15
  %i.l = and i64 %i.k, -16                        ; 2 uses
  %i.m = add nsw i64 %i.l, 16
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit: ; preds = %bb.d, %bb.e
  %.sink = phi i64 [ %i.i, %bb.d ], [ %i.m, %bb.e ]
  %.0.i = phi i64 [ %i.j, %bb.d ], [ %i.l, %bb.e ]
  store i64 %.sink, ptr %i.f, align 8, !tbaa !82
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.n, align 8, !tbaa !83
  %.sroa.speculated.i = tail call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i, i8 4)
  store i8 %.sroa.speculated.i, ptr %i.n, align 8, !tbaa !83
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %7, i8 4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %0, ptr %i.p, align 8, !tbaa !19, !alias.scope !84
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4, !alias.scope !84
  %i.s = and i8 %i.r, -128
  %i.t = trunc i32 %3 to i8
  %i.u = shl i8 %i.t, 1
  %i.v = and i8 %i.u, 126
  %i.w = or disjoint i8 %i.s, %i.v
  store i8 %i.w, ptr %i.q, align 4, !alias.scope !84
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %1, ptr %i.x, align 2, !tbaa !30, !alias.scope !84
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 17, ptr %i.y, align 8, !tbaa !30, !alias.scope !84
  store i8 1, ptr %i.o, align 8, !tbaa !14, !alias.scope !84
  store i64 %.0.i, ptr %8, align 8, !tbaa !87, !alias.scope !84
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31, !nonnull !60, !align !61 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !62 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !63
  %.not.i.i = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !64

bb.f:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(26) %8)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit

bb.g:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !62
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ab, align 8, !tbaa !62
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.m

.thread50.fold.split:                             ; preds = %bb.a
  br label %.thread50

.thread50:                                        ; preds = %bb.a, %.thread50.fold.split, %bb.b, %.critedge
  %.154 = phi i32 [ 7, %bb.a ], [ %., %bb.b ], [ 1, %.critedge ], [ %3, %.thread50.fold.split ]
  %.sroa.038.153 = phi i16 [ 8, %bb.a ], [ 8, %bb.b ], [ 8, %.critedge ], [ %2, %.thread50.fold.split ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !88, !nonnull !60, !align !61
  %i.am = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.al) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store i16 %.sroa.038.153, ptr %9, align 8, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.an, align 8, !tbaa !89
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !92, !nonnull !60, !align !61
  %i.aq = call noundef ptr @_ZNK4llvm3EVT13getTypeForEVTERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #25
  %i.ar = call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.am, ptr noundef %i.aq) #25 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.ar, 1
  %i.as = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.as, label %bb.h, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.h:                                             ; preds = %.thread50
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.16) #26
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %.thread50
  %.fca.0.extract = extractvalue { i64, i8 } %i.ar, 0 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.au = load i8, ptr %i.at, align 8, !tbaa !80, !range !81, !noundef !60
  %i.av = trunc nuw i8 %i.au to i1
end_hunk_0
begin_hunk_1_@_ZL10CC_VE_FastjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.p = load i32, ptr %i.o, align 4, !tbaa !11   ; 3 uses
  %i.q = and i32 %i.p, 1
  %.not.i.i.5 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = and i32 %i.p, 2
  %.not.i.i.6 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = and i32 %i.p, 4
  %.not.i.i.7 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %.thread

.thread:                                          ; preds = %bb.h
  switch i16 %2, label %.thread129 [
    i16 89, label %.critedge2
    i16 150, label %.critedge2
  ]

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.critedge
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %.critedge ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ 6, %bb.g ], [ 7, %bb.h ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @_ZZL10CC_VE_FastjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList2, i64 %.0613.i.i.lcssa.wide
  %i.u = load i16, ptr %i.t, align 2, !tbaa !12   ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.u) #25
  %i.v = zext i16 %i.u to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.w, align 8, !tbaa !14, !alias.scope !108
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %0, ptr %i.x, align 8, !tbaa !19, !alias.scope !108
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.z = load i8, ptr %i.y, align 4, !alias.scope !108
  %i.aa = and i8 %i.z, -128
  %i.ab = trunc i32 %3 to i8
  %i.ac = shl i8 %i.ab, 1
  %i.ad = and i8 %i.ac, 126
  %i.ae = or disjoint i8 %i.aa, %i.ad
  store i8 %i.ae, ptr %i.y, align 4, !alias.scope !108
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %1, ptr %i.af, align 2, !tbaa !30, !alias.scope !108
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 %2, ptr %i.ag, align 8, !tbaa !30, !alias.scope !108
  store i32 %i.v, ptr %8, align 8, !tbaa !11, !alias.scope !108
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31, !nonnull !60, !align !61 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !62 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !63
  %.not.i.i54 = icmp ult i32 %i.ak, %i.am
  br i1 %.not.i.i54, label %bb.j, label %bb.i, !prof !64

bb.i:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(26) %8)
  br label %bb.k

bb.j:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.an = zext i32 %i.ak to i64
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.aq = load i32, ptr %i.aj, align 8, !tbaa !62
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.aj, align 8, !tbaa !62
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.aj

.critedge2:                                       ; preds = %bb.a, %bb.a, %.thread, %.thread
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !8  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !11 ; 5 uses
  %i.aw = and i32 %i.av, 134217728
  %.not.i.i56 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i56, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit59, label %bb.l

bb.l:                                             ; preds = %.critedge2
  %i.ax = and i32 %i.av, 268435456
  %.not.i.i56.1 = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i56.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit59, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = and i32 %i.av, 536870912
  %.not.i.i56.2 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i56.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit59, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = and i32 %i.av, 1073741824
  %.not.i.i56.3 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i56.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit59, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i.i56.4 = icmp sgt i32 %i.av, -1
  br i1 %.not.i.i56.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit59, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !11 ; 3 uses
  %i.bc = and i32 %i.bb, 1
  %.not.i.i56.5 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i56.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit59, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = and i32 %i.bb, 2
  %.not.i.i56.6 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i56.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit59, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = and i32 %i.bb, 4
  %.not.i.i56.7 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i56.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit59, label %.thread129

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit59: ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %.critedge2
  %.0613.i.i55.lcssa.wide = phi i64 [ 0, %.critedge2 ], [ 1, %bb.l ], [ 2, %bb.m ], [ 3, %bb.n ], [ 4, %bb.o ], [ 5, %bb.p ], [ 6, %bb.q ], [ 7, %bb.r ]
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr @_ZZL10CC_VE_FastjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList2, i64 %.0613.i.i55.lcssa.wide
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !12 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.bg) #25
  %i.bh = zext i16 %i.bg to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.bi, align 8, !tbaa !14, !alias.scope !111
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %0, ptr %i.bj, align 8, !tbaa !19, !alias.scope !111
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 4, !alias.scope !111
  %i.bm = and i8 %i.bl, -128
  %i.bn = trunc i32 %3 to i8
  %i.bo = shl i8 %i.bn, 1
  %i.bp = and i8 %i.bo, 126
  %i.bq = or disjoint i8 %i.bm, %i.bp
  store i8 %i.bq, ptr %i.bk, align 4, !alias.scope !111
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %1, ptr %i.br, align 2, !tbaa !30, !alias.scope !111
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 %2, ptr %i.bs, align 8, !tbaa !30, !alias.scope !111
  store i32 %i.bh, ptr %9, align 8, !tbaa !11, !alias.scope !111
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !31, !nonnull !60, !align !61 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !62 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !63
  %.not.i.i60 = icmp ult i32 %i.bw, %i.by
  br i1 %.not.i.i60, label %bb.t, label %bb.s, !prof !64

bb.s:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit59
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(26) %9)
  br label %bb.u

bb.t:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit59
  %i.bz = zext i32 %i.bw to i64
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !8
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %i.ca, i64 %i.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.cc = load i32, ptr %i.bv, align 8, !tbaa !62
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.bv, align 8, !tbaa !62
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.aj

bb.v:                                             ; preds = %._crit_edge
  %i.ce = and i32 %i.e, 536870912
  %.not.i.i63.1 = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i63.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = and i32 %i.e, 1073741824
  %.not.i.i63.2 = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i63.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not.i.i63.3 = icmp sgt i32 %i.e, -1
  br i1 %.not.i.i63.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !11 ; 3 uses
  %i.ci = and i32 %i.ch, 1
  %.not.i.i63.4 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i63.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = and i32 %i.ch, 2
  %.not.i.i63.5 = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i63.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = and i32 %i.ch, 4
  %.not.i.i63.6 = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i63.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66, label %.thread129

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %._crit_edge
  %.0613.i.i62.lcssa.wide = phi i64 [ 0, %._crit_edge ], [ 1, %bb.v ], [ 2, %bb.w ], [ 3, %bb.x ], [ 4, %bb.y ], [ 5, %bb.z ], [ 6, %bb.aa ]
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr @_ZZL10CC_VE_FastjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList3, i64 %.0613.i.i62.lcssa.wide
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !12 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.cm) #25
  %i.cn = zext i16 %i.cm to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.co, align 8, !tbaa !14, !alias.scope !114
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %0, ptr %i.cp, align 8, !tbaa !19, !alias.scope !114
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 4, !alias.scope !114
  %i.cs = and i8 %i.cr, -128
  %i.ct = trunc i32 %3 to i8
  %i.cu = shl i8 %i.ct, 1
  %i.cv = and i8 %i.cu, 126
  %i.cw = or disjoint i8 %i.cs, %i.cv
  store i8 %i.cw, ptr %i.cq, align 4, !alias.scope !114
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i16 %1, ptr %i.cx, align 2, !tbaa !30, !alias.scope !114
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 %2, ptr %i.cy, align 8, !tbaa !30, !alias.scope !114
  store i32 %i.cn, ptr %10, align 8, !tbaa !11, !alias.scope !114
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !31, !nonnull !60, !align !61 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 3 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !62 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !63
  %.not.i.i67 = icmp ult i32 %i.dc, %i.de
  br i1 %.not.i.i67, label %bb.ac, label %bb.ab, !prof !64

bb.ab:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(26) %10)
  br label %bb.ad

bb.ac:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66
  %i.df = zext i32 %i.dc to i64
  %i.dg = load ptr, ptr %i.da, align 8, !tbaa !8
  %i.dh = getelementptr inbounds nuw [32 x i8], ptr %i.dg, i64 %i.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  %i.di = load i32, ptr %i.db, align 8, !tbaa !62
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.db, align 8, !tbaa !62
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.aj

bb.ae:                                            ; preds = %._crit_edge143
  %i.dk = and i32 %i.b, 8192
  %.not.i.i70.1 = icmp eq i32 %i.dk, 0
  br i1 %.not.i.i70.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dl = and i32 %i.b, 16384
  %.not.i.i70.2 = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i70.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit, label %.thread129

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit: ; preds = %bb.af, %bb.ae, %._crit_edge143
  %.0613.i.i69.lcssa.wide = phi i64 [ 0, %._crit_edge143 ], [ 1, %bb.ae ], [ 2, %bb.af ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr @_ZZL10CC_VE_FastjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList4, i64 %.0613.i.i69.lcssa.wide
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !12 ; 2 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr @_ZZL10CC_VE_FastjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList5, i64 %.0613.i.i69.lcssa.wide
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !12
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.dn) #25
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.dp) #25
  %i.dq = zext i16 %i.dn to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 0, ptr %i.dr, align 8, !tbaa !14, !alias.scope !117
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %0, ptr %i.ds, align 8, !tbaa !19, !alias.scope !117
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 4, !alias.scope !117
  %i.dv = and i8 %i.du, -128
  %i.dw = trunc i32 %3 to i8
  %i.dx = shl i8 %i.dw, 1
  %i.dy = and i8 %i.dx, 126
  %i.dz = or disjoint i8 %i.dv, %i.dy
  store i8 %i.dz, ptr %i.dt, align 4, !alias.scope !117
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i16 %1, ptr %i.ea, align 2, !tbaa !30, !alias.scope !117
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i16 %2, ptr %i.eb, align 8, !tbaa !30, !alias.scope !117
  store i32 %i.dq, ptr %11, align 8, !tbaa !11, !alias.scope !117
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !31, !nonnull !60, !align !61 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 3 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !62 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !63
  %.not.i.i72 = icmp ult i32 %i.ef, %i.eh
  br i1 %.not.i.i72, label %bb.ah, label %bb.ag, !prof !64

bb.ag:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr noundef nonnull align 8 dereferenceable(26) %11)
  br label %bb.ai

bb.ah:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit
  %i.ei = zext i32 %i.ef to i64
  %i.ej = load ptr, ptr %i.ed, align 8, !tbaa !8
  %i.ek = getelementptr inbounds nuw [32 x i8], ptr %i.ej, i64 %i.ei
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ek, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  %i.el = load i32, ptr %i.ee, align 8, !tbaa !62
  %i.em = add i32 %i.el, 1
  store i32 %i.em, ptr %i.ee, align 8, !tbaa !62
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.aj

.thread129:                                       ; preds = %bb.r, %bb.af, %bb.aa, %bb.a, %.thread
  %i.en = tail call noundef zeroext i1 @_ZL7CC_VE_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 poison, ptr poison, ptr noundef nonnull align 8 dereferenceable(420) %7) ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ad, %bb.u, %bb.k, %.thread129
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16VETargetLowering14CanLowerReturnEjRNS_15MachineFunctionEbRKNS_15SmallVectorImplINS_3ISD9OutputArgEEERNS_11LLVMContextEPKNS_4TypeE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(1065) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr nofree readnone captures(none) %6) unnamed_addr #1 align 2 {
bb.a:
  %7 = alloca %"class.llvm::SmallVector", align 8 ; 8 uses
  %8 = alloca %"class.llvm::CCState", align 8     ; 12 uses
  %cond.i = icmp eq i32 %1, 8
  %_ZL13RetCC_VE_FastjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE._ZL10RetCC_VE_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.i = select i1 %cond.i, ptr @_ZL13RetCC_VE_FastjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE, ptr @_ZL10RetCC_VE_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.a, ptr %7, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 16, ptr %i.c, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @_ZN4llvm7CCStateC1EjbRNS_15MachineFunctionERNS_15SmallVectorImplINS_11CCValAssignEEERNS_11LLVMContextEb(ptr noundef nonnull align 8 dereferenceable(420) %8, i32 noundef %1, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(1065) %2, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext false) #25
  %i.d = call noundef zeroext i1 @_ZN4llvm7CCState11CheckReturnERKNS_15SmallVectorImplINS_3ISD9OutputArgEEEPFbjNS_3MVTES7_NS_11CCValAssign7LocInfoENS2_10ArgFlagsTyEPNS_4TypeERS0_E(ptr noundef nonnull align 8 dereferenceable(420) %8, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %_ZL13RetCC_VE_FastjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE._ZL10RetCC_VE_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.i) #25
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 368
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 384
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.f) #25
  br label %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 288
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 304
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.j) #25
  br label %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i: ; preds = %bb.c, %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 160
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.n) #25
  br label %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i: ; preds = %bb.d, %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !8    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN4llvm7CCStateD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.r) #25
  br label %_ZN4llvm7CCStateD2Ev.exit

_ZN4llvm7CCStateD2Ev.exit:                        ; preds = %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.u = load ptr, ptr %7, align 8, !tbaa !8      ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZN4llvm11SmallVectorINS_11CCValAssignELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm7CCStateD2Ev.exit
  call void @free(ptr noundef %i.u) #25
  br label %_ZN4llvm11SmallVectorINS_11CCValAssignELj16EED2Ev.exit

_ZN4llvm11SmallVectorINS_11CCValAssignELj16EED2Ev.exit: ; preds = %_ZN4llvm7CCStateD2Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret i1 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN4llvm7CCStateC1EjbRNS_15MachineFunctionERNS_15SmallVectorImplINS_11CCValAssignEEERNS_11LLVMContextEb(ptr noundef nonnull align 8 dereferenceable(420), i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) unnamed_addr #3

declare noundef zeroext i1 @_ZN4llvm7CCState11CheckReturnERKNS_15SmallVectorImplINS_3ISD9OutputArgEEEPFbjNS_3MVTES7_NS_11CCValAssign7LocInfoENS2_10ArgFlagsTyEPNS_4TypeERS0_E(ptr noundef nonnull align 8 dereferenceable(420), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4llvm16VETargetLowering19initRegisterClassesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(518448) initializes((168, 184), (224, 240), (248, 256)) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm24VEMCRegisterClassStorageE, i64 64), ptr %i.a, align 8, !tbaa !120
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm24VEMCRegisterClassStorageE, i64 192), ptr %i.b, align 8, !tbaa !120
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr @_ZN4llvm24VEMCRegisterClassStorageE, ptr %i.c, align 8, !tbaa !120
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm24VEMCRegisterClassStorageE, i64 192), ptr %i.d, align 8, !tbaa !120
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm24VEMCRegisterClassStorageE, i64 320), ptr %i.e, align 8, !tbaa !120
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !122
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.i = load i8, ptr %i.h, align 8, !tbaa !152, !range !81, !noundef !60
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.preheader.preheader, label %bb.b

.preheader.preheader:                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 816
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm24VEMCRegisterClassStorageE, i64 576), ptr %i.k, align 8, !tbaa !120
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 824
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm24VEMCRegisterClassStorageE, i64 576), ptr %i.l, align 8, !tbaa !120
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 928
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm24VEMCRegisterClassStorageE, i64 576), ptr %i.m, align 8, !tbaa !120
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1304
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm24VEMCRegisterClassStorageE, i64 576), ptr %i.n, align 8, !tbaa !120
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1312
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm24VEMCRegisterClassStorageE, i64 576), ptr %i.o, align 8, !tbaa !120
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1408
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm24VEMCRegisterClassStorageE, i64 576), ptr %i.p, align 8, !tbaa !120
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm24VEMCRegisterClassStorageE, i64 384), ptr %i.q, align 8, !tbaa !120
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm24VEMCRegisterClassStorageE, i64 448), ptr %i.r, align 8, !tbaa !120
  br label %bb.b

bb.b:                                             ; preds = %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16VETargetLowering14initSPUActionsEv(ptr nofree noundef nonnull align 8 dereferenceable(518448) initializes((76, 80), (88, 92), (100, 101), (6756, 6758), (6769, 6770), (7042, 7043), (7044, 7045), (7052, 7054), (7056, 7060), (7076, 7077), (7617, 7630), (8154, 8167), (8691, 8704), (9228, 9241), (9765, 9778), (9977, 9978), (10007, 10013), (10122, 10124), (10130, 10132), (10136, 10139), (10144, 10146), (10153, 10158), (10160, 10161), (10167, 10170), (10178, 10179), (10184, 10185), (10261, 10262), (10302, 10315), (10544, 10550), (10659, 10661), (10667, 10669), (10673, 10676), (10681, 10683), (10690, 10695), (10697, 10698), (10704, 10707), (10715, 10716), (10721, 10722), (10798, 10799), (10839, 10852), (11376, 11389), (11913, 11926), (12450, 12463), (12731, 12732), (12783, 12784), (12786, 12787), (12878, 12880), (12888, 12891), (12892, 12894), (12901, 12902), (13268, 13269), (13320, 13321), (13323, 13324), (13415, 13417), (13425, 13428), (13429, 13431), (13438, 13439), (13715, 13716), (13805, 13806), (13857, 13858), (13860, 13861), (13952, 13954), (13962, 13965), (13966, 13968), (13975, 13976), (13997, 13999), (14252, 14253), (14342, 14343), (14394, 14395), (14397, 14398), (14489, 14491), (14499, 14502), (14503, 14505), (14512, 14513), (14534, 14536), (14879, 14880), (14931, 14932), (14934, 14935), (15026, 15028), (15036, 15039), (15040, 15042), (15049, 15050), (15415, 15417), (15468, 15469), (15471, 15472), (15563, 15565), (15573, 15576), (15577, 15579), (15586, 15587), (15629, 15631), (15953, 15954), (16005, 16006), (16008, 16009), (16100, 16102), (16110, 16113), (16114, 16116), (16123, 16124), (427266, 427267), (427530, 427531), (427794, 427795), (428058, 428059), (428322, 428323), (428586, 428587), (428850, 428851), (429114, 429115), (429378, 429379), (429642, 429643), (429916, 429923), (430180, 430187), (430444, 430451), (430708, 430715), (430972, 430979), (431236, 431243), (431500, 431507)) %0) local_unnamed_addr #1 align 2 {
.preheader268:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225, !nonnull !60, !align !61
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 149012 ; 2 uses
  %i.d = load i16, ptr %i.c, align 4, !tbaa !12
  %i.e = and i16 %i.d, 15
end_hunk_1
