inline.NumInlined: 2019
inline.NumDeleted: 419
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseSubstitutionEv:bb.a
  %i.ck = icmp eq ptr %i.ce, %i.cj
  %i.cl = shl i64 %i.ch, 1                        ; 2 uses
  br i1 %i.ck, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.cm = tail call noalias ptr @malloc(i64 noundef %i.cl) #21 ; 5 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @_ZSt9terminatev() #23
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.co = icmp sgt i64 %i.ch, 8
  br i1 %i.co, label %bb.aa, label %bb.ab, !prof !109

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cm, ptr align 8 %i.ce, i64 %i.ch, i1 false)
  br label %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.cp = icmp eq i64 %i.ch, 8
  br i1 %i.cp, label %bb.ac, label %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.cq = load ptr, ptr %i.ce, align 8, !tbaa !71
  store ptr %i.cq, ptr %i.cm, align 8, !tbaa !71
  br label %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i

_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i: ; preds = %bb.ac, %bb.ab, %bb.aa
  store ptr %i.cm, ptr %i.by, align 8, !tbaa !26
  br label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i

bb.ad:                                            ; preds = %bb.w
  %i.cr = tail call ptr @realloc(ptr noundef %i.ce, i64 noundef %i.cl) #22 ; 3 uses
  store ptr %i.cr, ptr %i.by, align 8, !tbaa !26
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.ae, label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i: ; preds = %bb.ad, %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i
  %i.ct = phi ptr [ %i.cr, %bb.ad ], [ %i.cm, %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ch
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.ci
  store ptr %i.cv, ptr %i.cb, align 8, !tbaa !28
  br label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit

_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit: ; preds = %bb.v, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i
  %i.cw = phi ptr [ %i.cu, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i ], [ %i.ca, %bb.v ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr %i.cx, ptr %i.bz, align 16, !tbaa !27
  store ptr %i.bx, ptr %i.cw, align 8, !tbaa !71
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

bb.af:                                            ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit
  %i.cy = load i8, ptr %i.f, align 1, !tbaa !7
  %i.cz = icmp eq i8 %i.cy, 95
  br i1 %i.cz, label %bb.ag, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store ptr %i.da, ptr %0, align 16, !tbaa !11
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !26 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.de = load ptr, ptr %i.dd, align 16, !tbaa !27
  %i.df = icmp eq ptr %i.dc, %i.de
  br i1 %i.df, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dg = load ptr, ptr %i.dc, align 8, !tbaa !71
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.i: ; preds = %bb.af
  %i.dh = load i8, ptr %i.f, align 1, !tbaa !7    ; 3 uses
  %i.di = icmp sgt i8 %i.dh, 47
  br i1 %i.di, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit29.i, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit29.i: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.i
  %i.dj = icmp samesign ult i8 %i.dh, 58
  %i.dk = add nsw i8 %i.dh, -65
  %or.cond71.i = icmp ult i8 %i.dk, 26
  %or.cond = select i1 %i.dj, i1 true, i1 %or.cond71.i
  br i1 %or.cond, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit38.i, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit38.i: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit29.i, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit44.i
  %.065.i = phi i64 [ %i.ds, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit44.i ], [ 0, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit29.i ] ; 3 uses
  %.val176264.i = phi ptr [ %i.dt, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit44.i ], [ %i.f, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit29.i ] ; 4 uses
  %i.dl = load i8, ptr %.val176264.i, align 1, !tbaa !7 ; 4 uses
  %i.dm = icmp sgt i8 %i.dl, 47
  br i1 %i.dm, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit41.i, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE10parseSeqIdEPm.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit41.i: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit38.i
  %i.dn = icmp samesign ult i8 %i.dl, 58
  br i1 %i.dn, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit44.i, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit47.i

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit47.i: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit41.i
  %i.do = add nsw i8 %i.dl, -65
  %or.cond.i = icmp ult i8 %i.do, 26
  br i1 %or.cond.i, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit44.i, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE10parseSeqIdEPm.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit44.i: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit47.i, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit41.i
  %.sink74.i = phi i64 [ -48, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit41.i ], [ -55, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit47.i ]
  %i.dp = mul i64 %.065.i, 36
  %i.dq = zext nneg i8 %i.dl to i64
  %i.dr = add i64 %i.dp, %i.dq
  %i.ds = add i64 %i.dr, %.sink74.i               ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.val176264.i, i64 1 ; 4 uses
  store ptr %i.dt, ptr %0, align 16, !tbaa !11
  %.not.i36.not.i = icmp eq ptr %i.c, %i.dt
  br i1 %.not.i36.not.i, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE10parseSeqIdEPm.exit, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit38.i, !llvm.loop !96

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE10parseSeqIdEPm.exit: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit44.i, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit47.i, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit38.i
  %i.du = phi ptr [ %.val176264.i, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit47.i ], [ %.val176264.i, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit38.i ], [ %i.dt, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit44.i ] ; 3 uses
  %.044 = phi i64 [ %.065.i, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit47.i ], [ %.065.i, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit38.i ], [ %i.ds, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit44.i ]
  %i.dv = add i64 %.044, 1                        ; 2 uses
  %.not.i38 = icmp eq ptr %i.du, %i.c
  br i1 %.not.i38, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE10parseSeqIdEPm.exit
  %i.dw = load i8, ptr %i.du, align 1, !tbaa !7
  %i.dx = icmp eq i8 %i.dw, 95
  br i1 %i.dx, label %bb.aj, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store ptr %i.dy, ptr %0, align 16, !tbaa !11
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.eb = load ptr, ptr %i.ea, align 16, !tbaa !27
  %i.ec = load ptr, ptr %i.dz, align 8, !tbaa !26 ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 3
  %.not8 = icmp ult i64 %i.dv, %i.eg
  br i1 %.not8, label %bb.ak, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.dv
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !71
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread: ; preds = %bb.c, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit29.i, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE10parseSeqIdEPm.exit, %bb.ai, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.i, %bb.a, %bb.b, %bb.ak, %bb.aj, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_19SpecialSubstitutionEJNS0_14SpecialSubKindEEEEPNS0_4NodeEDpOT0_.exit, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit, %bb.ag, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit24, %bb.ah
  %.2 = phi ptr [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit29.i ], [ null, %bb.a ], [ %i.dg, %bb.ah ], [ %i.bu, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_19SpecialSubstitutionEJNS0_14SpecialSubKindEEEEPNS0_4NodeEDpOT0_.exit ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit24 ], [ null, %bb.ag ], [ %i.bx, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit ], [ %i.ei, %bb.ak ], [ null, %bb.ai ], [ null, %bb.aj ], [ null, %bb.b ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE10parseSeqIdEPm.exit ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.i ], [ null, %bb.c ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE17parseTemplateArgsEb(ptr noundef nonnull align 16 dereferenceable(4864) %0, i1 noundef zeroext %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.llvh::itanium_demangle::PODSmallVector.0", align 8 ; 15 uses
  %i.a = load ptr, ptr %0, align 16, !tbaa !11    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 3 uses
  %.not.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i, label %.critedge12, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 1, !tbaa !7
  %i.e = icmp eq i8 %i.d, 73
  br i1 %i.e, label %bb.c, label %.critedge12

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  store ptr %i.f, ptr %0, align 16, !tbaa !11
  br i1 %1, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27   ; 2 uses
  %i.j = load ptr, ptr %i.g, align 16, !tbaa !26
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4848
  br label %.split

.split.us.preheader:                              ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr %i.r, ptr %i.s, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !27
  %i.w = load ptr, ptr %i.t, align 16, !tbaa !26
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 11 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 10 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 3 uses
  %i.am = ptrtoint ptr %i.ah to i64
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm8EED2Ev.exit.us
  %i.an = phi ptr [ %i.c, %.split.us.preheader ], [ %.pre80, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm8EED2Ev.exit.us ]
  %i.ao = phi ptr [ %i.f, %.split.us.preheader ], [ %.pre79, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm8EED2Ev.exit.us ] ; 3 uses
  %.not.i18.us = icmp eq ptr %i.ao, %i.an
  br i1 %.not.i18.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split.us
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !7
  %i.aq = icmp eq i8 %i.ap, 69
  br i1 %i.aq, label %.split55.us.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr %i.ad, ptr %2, align 8, !tbaa !29
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !30
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !31
  %i.ar = load ptr, ptr %i.ac, align 16, !tbaa !29 ; 5 uses
  %i.as = icmp eq ptr %i.ar, %i.ah
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.ar, ptr %2, align 8, !tbaa !29
  %i.at = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !84
  store <2 x ptr> %i.at, ptr %i.ae, align 8, !tbaa !84
  store ptr %i.ah, ptr %i.ac, align 16, !tbaa !29
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !30
  store ptr %i.ak, ptr %i.aj, align 16, !tbaa !31
  br label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm8EEC2EOS4_.exit.us

bb.g:                                             ; preds = %bb.e
  %i.au = load ptr, ptr %i.ai, align 8, !tbaa !30
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.am                    ; 4 uses
  %i.ax = icmp sgt i64 %i.aw, 8
  br i1 %i.ax, label %bb.j, label %bb.h, !prof !109

bb.h:                                             ; preds = %bb.g
  %i.ay = icmp eq i64 %i.aw, 8
  br i1 %i.ay, label %bb.i, label %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.us

bb.i:                                             ; preds = %bb.h
  %i.az = load ptr, ptr %i.ar, align 8, !tbaa !71
  store ptr %i.az, ptr %i.ad, align 8, !tbaa !71
  br label %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.us

bb.j:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 8 %i.ar, i64 %i.aw, i1 false)
  br label %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.us

_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.us: ; preds = %bb.j, %bb.i, %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aw
  store ptr %i.ba, ptr %i.ae, align 8, !tbaa !30
  store ptr %i.ar, ptr %i.ai, align 8, !tbaa !30
  br label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm8EEC2EOS4_.exit.us

_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm8EEC2EOS4_.exit.us: ; preds = %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.us, %bb.f
  %i.bb = call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE16parseTemplateArgEv(ptr noundef nonnull align 16 dereferenceable(4864) %0) ; 6 uses
  %i.bc = load ptr, ptr %2, align 8, !tbaa !29    ; 3 uses
  %i.bd = icmp eq ptr %i.bc, %i.ad
  %i.be = load ptr, ptr %i.ac, align 16, !tbaa !29 ; 6 uses
  %i.bf = icmp eq ptr %i.be, %i.ah                ; 2 uses
  br i1 %i.bd, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm8EEC2EOS4_.exit.us
  store ptr %i.bc, ptr %i.ac, align 16, !tbaa !84
  br i1 %i.bf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.be, ptr %2, align 8, !tbaa !84
  %i.bg = load ptr, ptr %i.aj, align 16, !tbaa !84
  %i.bh = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !84
  store <2 x ptr> %i.bh, ptr %i.ai, align 8, !tbaa !84
  store ptr %i.bg, ptr %i.af, align 8, !tbaa !84
  store ptr %i.be, ptr %i.ae, align 8, !tbaa !30
  br label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm8EEaSEOS4_.exit.us

bb.m:                                             ; preds = %bb.k
  %i.bi = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !84
  store <2 x ptr> %i.bi, ptr %i.ai, align 8, !tbaa !84
  store ptr %i.ad, ptr %2, align 8, !tbaa !29
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !30
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !31
  br label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm8EEaSEOS4_.exit.us

bb.n:                                             ; preds = %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm8EEC2EOS4_.exit.us
  br i1 %i.bf, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef %i.be) #19
  store ptr %i.ah, ptr %i.ac, align 16, !tbaa !29
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !30
  store ptr %i.ak, ptr %i.aj, align 16, !tbaa !31
  %.pre.i21.us = load ptr, ptr %2, align 8, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bj = phi ptr [ %i.ah, %bb.o ], [ %i.be, %bb.n ] ; 4 uses
  %i.bk = phi ptr [ %.pre.i21.us, %bb.o ], [ %i.bc, %bb.n ] ; 5 uses
  %i.bl = load ptr, ptr %i.ae, align 8, !tbaa !30
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 4 uses
  %i.bp = icmp sgt i64 %i.bo, 8
  br i1 %i.bp, label %bb.s, label %bb.q, !prof !109

bb.q:                                             ; preds = %bb.p
  %i.bq = icmp eq i64 %i.bo, 8
  br i1 %i.bq, label %bb.r, label %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i22.us

bb.r:                                             ; preds = %bb.q
  %i.br = load ptr, ptr %i.bk, align 8, !tbaa !71
  store ptr %i.br, ptr %i.bj, align 8, !tbaa !71
  br label %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i22.us

bb.s:                                             ; preds = %bb.p
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bj, ptr align 8 %i.bk, i64 %i.bo, i1 false)
  %.pre15.i.us = load ptr, ptr %i.ac, align 16, !tbaa !29
  %.pre16.i.us = load ptr, ptr %i.ae, align 8, !tbaa !30
  %.pre17.i.us = load ptr, ptr %2, align 8, !tbaa !29 ; 2 uses
  %.pre18.i.us = ptrtoint ptr %.pre16.i.us to i64
  %.pre19.i.us = ptrtoint ptr %.pre17.i.us to i64
  %.pre21.i.us = sub i64 %.pre18.i.us, %.pre19.i.us
  br label %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i22.us

_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i22.us: ; preds = %bb.s, %bb.r, %bb.q
  %.pre-phi22.i.us = phi i64 [ %.pre21.i.us, %bb.s ], [ %i.bo, %bb.q ], [ 8, %bb.r ]
  %i.bs = phi ptr [ %.pre17.i.us, %bb.s ], [ %i.bk, %bb.q ], [ %i.bk, %bb.r ] ; 2 uses
  %i.bt = phi ptr [ %.pre15.i.us, %bb.s ], [ %i.bj, %bb.q ], [ %i.bj, %bb.r ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.pre-phi22.i.us
  store ptr %i.bu, ptr %i.ai, align 8, !tbaa !30
  store ptr %i.bs, ptr %i.ae, align 8, !tbaa !30
  br label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm8EEaSEOS4_.exit.us

_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm8EEaSEOS4_.exit.us: ; preds = %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i22.us, %bb.m, %bb.l
  %i.bv = phi ptr [ %i.bs, %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i22.us ], [ %i.ad, %bb.m ], [ %i.be, %bb.l ] ; 2 uses
  %i.bw = icmp eq ptr %i.bb, null
  br i1 %i.bw, label %.critedge, label %bb.t

bb.t:                                             ; preds = %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm8EEaSEOS4_.exit.us
  %i.bx = load ptr, ptr %i.u, align 8, !tbaa !27  ; 3 uses
  %i.by = load ptr, ptr %i.aa, align 16, !tbaa !28
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %bb.u, label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit.us

bb.u:                                             ; preds = %bb.t
  %i.ca = load ptr, ptr %i.t, align 16, !tbaa !26 ; 5 uses
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 6 uses
  %i.ce = ashr exact i64 %i.cd, 2
  %i.cf = icmp eq ptr %i.ca, %i.ab
  %i.cg = shl i64 %i.cd, 1                        ; 2 uses
  br i1 %i.cf, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = call ptr @realloc(ptr noundef %i.ca, i64 noundef %i.cg) #22 ; 3 uses
  store ptr %i.ch, ptr %i.t, align 16, !tbaa !26
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %.split58.us, label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i.us

bb.w:                                             ; preds = %bb.u
  %i.cj = call noalias ptr @malloc(i64 noundef %i.cg) #21 ; 5 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %.split60.us, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = icmp sgt i64 %i.cd, 8
  br i1 %i.cl, label %bb.aa, label %bb.y, !prof !109

bb.y:                                             ; preds = %bb.x
  %i.cm = icmp eq i64 %i.cd, 8
  br i1 %i.cm, label %bb.z, label %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i.us

bb.z:                                             ; preds = %bb.y
  %i.cn = load ptr, ptr %i.ca, align 8, !tbaa !71
  store ptr %i.cn, ptr %i.cj, align 8, !tbaa !71
  br label %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i.us

bb.aa:                                            ; preds = %bb.x
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr align 8 %i.ca, i64 %i.cd, i1 false)
  br label %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i.us

_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i.us: ; preds = %bb.aa, %bb.z, %bb.y
  store ptr %i.cj, ptr %i.t, align 16, !tbaa !26
  br label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i.us

_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i.us: ; preds = %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i.us, %bb.v
  %i.co = phi ptr [ %i.ch, %bb.v ], [ %i.cj, %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i.us ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cd
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.ce
  store ptr %i.cq, ptr %i.aa, align 16, !tbaa !28
  br label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit.us

_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit.us: ; preds = %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i.us, %bb.t
  %i.cr = phi ptr [ %i.cp, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i.us ], [ %i.bx, %bb.t ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr %i.cs, ptr %i.u, align 8, !tbaa !27
  store ptr %i.bb, ptr %i.cr, align 8, !tbaa !71
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !70
  %i.cv = icmp eq i8 %i.cu, 28
  br i1 %i.cv, label %bb.ab, label %.critedge14.us

bb.ab:                                            ; preds = %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit.us
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.cw, align 8, !tbaa !84
  %.sroa.2.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %.sroa.2.0.copyload.i.us = load i64, ptr %.sroa.2.0..sroa_idx.i.us, align 8, !tbaa !43
  %i.cx = load ptr, ptr %i.al, align 16, !tbaa !38 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !57 ; 2 uses
  %i.da = add i64 %i.cz, -4048
  %i.db = icmp ult i64 %i.da, -4080
  br i1 %i.db, label %bb.ac, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_13ParameterPackEJNS0_9NodeArrayEEEEPNS0_4NodeEDpOT0_.exit.us

bb.ac:                                            ; preds = %bb.ab
  %i.dc = call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #21 ; 5 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %.split62.us, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i.us

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i.us: ; preds = %bb.ac
  store ptr %i.cx, ptr %i.dc, align 8, !tbaa !54
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i64 0, ptr %i.de, align 8, !tbaa !57
  store ptr %i.dc, ptr %i.al, align 16, !tbaa !38
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_13ParameterPackEJNS0_9NodeArrayEEEEPNS0_4NodeEDpOT0_.exit.us

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_13ParameterPackEJNS0_9NodeArrayEEEEPNS0_4NodeEDpOT0_.exit.us: ; preds = %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i.us, %bb.ab
  %i.df = phi i64 [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i.us ], [ %i.cz, %bb.ab ] ; 2 uses
  %i.dg = phi ptr [ %i.dc, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i.us ], [ %i.cx, %bb.ab ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = add nsw i64 %i.df, 32
  store i64 %i.di, ptr %i.dh, align 8, !tbaa !57
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 %i.df ; 2 uses
  call void @_ZN4llvh16itanium_demangle13ParameterPackC2ENS0_9NodeArrayE(ptr noundef nonnull align 8 dereferenceable(32) %i.dk, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.2.0.copyload.i.us)
  br label %.critedge14.us

.critedge14.us:                                   ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_13ParameterPackEJNS0_9NodeArrayEEEEPNS0_4NodeEDpOT0_.exit.us, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit.us
  %.0.us = phi ptr [ %i.dk, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_13ParameterPackEJNS0_9NodeArrayEEEEPNS0_4NodeEDpOT0_.exit.us ], [ %i.bb, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit.us ]
  %i.dl = load ptr, ptr %i.ai, align 8, !tbaa !30 ; 3 uses
  %i.dm = load ptr, ptr %i.aj, align 16, !tbaa !31
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %bb.ad, label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm8EE9push_backERKS3_.exit.us

bb.ad:                                            ; preds = %.critedge14.us
  %i.do = load ptr, ptr %i.ac, align 16, !tbaa !29 ; 5 uses
  %i.dp = ptrtoint ptr %i.dl to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 6 uses
  %i.ds = ashr exact i64 %i.dr, 2
  %i.dt = icmp eq ptr %i.do, %i.ah
  %i.du = shl i64 %i.dr, 1                        ; 2 uses
  br i1 %i.dt, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dv = call ptr @realloc(ptr noundef %i.do, i64 noundef %i.du) #22 ; 3 uses
  store ptr %i.dv, ptr %i.ac, align 16, !tbaa !29
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %.split64.us, label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm8EE7reserveEm.exit.i.us

bb.af:                                            ; preds = %bb.ad
  %i.dx = call noalias ptr @malloc(i64 noundef %i.du) #21 ; 5 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %.split66.us, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dz = icmp sgt i64 %i.dr, 8
  br i1 %i.dz, label %bb.aj, label %bb.ah, !prof !109

bb.ah:                                            ; preds = %bb.ag
  %i.ea = icmp eq i64 %i.dr, 8
  br i1 %i.ea, label %bb.ai, label %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i23.us

bb.ai:                                            ; preds = %bb.ah
  %i.eb = load ptr, ptr %i.do, align 8, !tbaa !71
  store ptr %i.eb, ptr %i.dx, align 8, !tbaa !71
  br label %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i23.us

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dx, ptr align 8 %i.do, i64 %i.dr, i1 false)
  br label %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i23.us

_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i23.us: ; preds = %bb.aj, %bb.ai, %bb.ah
  store ptr %i.dx, ptr %i.ac, align 16, !tbaa !29
  br label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm8EE7reserveEm.exit.i.us

_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm8EE7reserveEm.exit.i.us: ; preds = %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i23.us, %bb.ae
  %i.ec = phi ptr [ %i.dv, %bb.ae ], [ %i.dx, %_ZSt4copyIPPN4llvh16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i23.us ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.dr
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ds
  store ptr %i.ee, ptr %i.aj, align 16, !tbaa !31
end_hunk_0
