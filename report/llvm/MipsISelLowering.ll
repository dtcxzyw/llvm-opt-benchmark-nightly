Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MipsISelLowering?download=true
inline.NumInlined: 9952
inline.NumDeleted: 3126
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZL10CC_MipsO32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateENS_8ArrayRefItEE:bb.a
  %i.bj = zext i16 %i.bi to i32
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread:   ; preds = %_ZNK4llvm4Type14isIEEELikeFPTyEv.exit.i.i, %bb.j
  br i1 %i.ag, label %.critedge5, label %.critedge142

.critedge142:                                     ; preds = %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit, %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread
  %i.bk = icmp eq i16 %1, 14                      ; 2 uses
  %i.bl = and i1 %i.bk, %i.aa
  br i1 %i.bl, label %.critedge5, label %bb.ac

.critedge5:                                       ; preds = %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread, %.critedge142
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !26
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !72 ; 4 uses
  %i.bp = and i32 %i.bo, 4194304
  %.not.i.i106 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i106, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i108, label %bb.u

bb.u:                                             ; preds = %.critedge5
  %i.bq = and i32 %i.bo, 8388608
  %.not.i.i106.1 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i106.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i108, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = and i32 %i.bo, 16777216
  %.not.i.i106.2 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i106.2, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i108, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bs = and i32 %i.bo, 33554432
  %.not.i.i106.3 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i106.3, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i108, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit109

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i108: ; preds = %bb.w, %bb.v, %bb.u, %.critedge5
  %.0613.i.i105.lcssa.wide = phi i64 [ 0, %.critedge5 ], [ 1, %bb.u ], [ 2, %bb.v ], [ 3, %bb.w ]
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr @_ZZL10CC_MipsO32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateENS_8ArrayRefItEEE7IntRegs, i64 %.0613.i.i105.lcssa.wide
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !28 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext %i.bu) #27
  %i.bv = zext i16 %i.bu to i32
  br label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit109

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit109: ; preds = %bb.w, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i108
  %.sroa.04.0.i107 = phi i32 [ %i.bv, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i108 ], [ 0, %bb.w ] ; 3 uses
  br i1 %spec.select, label %bb.x, label %_ZN4llvm7CCState11AllocateRegEt.exit

bb.x:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit109
  %trunc = trunc nuw i32 %.sroa.04.0.i107 to i16
  switch i16 %trunc, label %_ZN4llvm7CCState11AllocateRegEt.exit [
    i16 25, label %bb.y
    i16 23, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  %i.bw = load ptr, ptr %i.bm, align 8, !tbaa !26
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !72 ; 4 uses
  %i.by = and i32 %i.bx, 4194304
  %.not.i.i111 = icmp eq i32 %i.by, 0
  br i1 %.not.i.i111, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i113, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bz = and i32 %i.bx, 8388608
  %.not.i.i111.1 = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i111.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i113, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ca = and i32 %i.bx, 16777216
  %.not.i.i111.2 = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i111.2, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i113, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cb = and i32 %i.bx, 33554432
  %.not.i.i111.3 = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i111.3, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i113, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i113: ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  %.0613.i.i110.lcssa.wide = phi i64 [ 0, %bb.y ], [ 1, %bb.z ], [ 2, %bb.aa ], [ 3, %bb.ab ]
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr @_ZZL10CC_MipsO32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateENS_8ArrayRefItEEE7IntRegs, i64 %.0613.i.i110.lcssa.wide
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !28 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext %i.cd) #27
  %i.ce = zext i16 %i.cd to i32
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

bb.ac:                                            ; preds = %.critedge142
  %i.cf = icmp eq i16 %1, 15
  %i.cg = and i1 %i.cf, %i.aa
  br i1 %i.cg, label %bb.ad, label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !26
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !72 ; 4 uses
  %i.ck = and i32 %i.cj, 4194304
  %.not.i.i116 = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i116, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit119, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cl = and i32 %i.cj, 8388608
  %.not.i.i116.1 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i116.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit119, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cm = and i32 %i.cj, 16777216
  %.not.i.i116.2 = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i116.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit119, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cn = and i32 %i.cj, 33554432
  %.not.i.i116.3 = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i116.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit119, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit119: ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.0613.i.i115.lcssa.wide = phi i64 [ 0, %bb.ad ], [ 1, %bb.ae ], [ 2, %bb.af ], [ 3, %bb.ag ]
  %i.co = getelementptr inbounds nuw [2 x i8], ptr @_ZZL10CC_MipsO32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateENS_8ArrayRefItEEE7IntRegs, i64 %.0613.i.i115.lcssa.wide
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !28 ; 3 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext %i.cp) #27
  switch i16 %i.cp, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit124 [
    i16 25, label %bb.ah
    i16 23, label %bb.ah
  ]

bb.ah:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit119, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit119
  %i.cq = load ptr, ptr %i.ch, align 8, !tbaa !26
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !72 ; 4 uses
  %i.cs = and i32 %i.cr, 4194304
  %.not.i.i121 = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i121, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i123, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ct = and i32 %i.cr, 8388608
  %.not.i.i121.1 = icmp eq i32 %i.ct, 0
  br i1 %.not.i.i121.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i123, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cu = and i32 %i.cr, 16777216
  %.not.i.i121.2 = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i121.2, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i123, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cv = and i32 %i.cr, 33554432
  %.not.i.i121.3 = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i121.3, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i123, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i123: ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %.0613.i.i120.lcssa.wide = phi i64 [ 0, %bb.ah ], [ 1, %bb.ai ], [ 2, %bb.aj ], [ 3, %bb.ak ]
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr @_ZZL10CC_MipsO32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateENS_8ArrayRefItEEE7IntRegs, i64 %.0613.i.i120.lcssa.wide
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !28 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext %i.cx) #27
  br label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit124

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit124: ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i123, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit119
  %.187.in = phi i16 [ %i.cx, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i123 ], [ %i.cp, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit119 ] ; 2 uses
  %.not = icmp eq i16 %.187.in, 0
  br i1 %.not, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread, label %bb.al

bb.al:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit124
  %.187 = zext i16 %.187.in to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 0, ptr %i.cy, align 8, !tbaa !1386, !alias.scope !1908
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %0, ptr %i.cz, align 8, !tbaa !1391, !alias.scope !1908
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.db = load i8, ptr %i.da, align 4, !alias.scope !1908
  %i.dc = and i8 %i.db, -128
  %i.dd = trunc i32 %.185 to i8
  %i.de = shl i8 %i.dd, 1
  %i.df = and i8 %i.de, 126                       ; 2 uses
  %i.dg = or disjoint i8 %i.df, %i.dc
  %i.dh = or disjoint i8 %i.dg, 1
  store i8 %i.dh, ptr %i.da, align 4, !alias.scope !1908
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 15, ptr %i.di, align 2, !tbaa !30, !alias.scope !1908
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 7, ptr %i.dj, align 8, !tbaa !30, !alias.scope !1908
  store i32 %.187, ptr %7, align 8, !tbaa !72, !alias.scope !1908
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.dk = call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr nonnull @_ZZL10CC_MipsO32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateENS_8ArrayRefItEEE7IntRegs, i64 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.dl, align 8, !tbaa !1386, !alias.scope !1913
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %0, ptr %i.dm, align 8, !tbaa !1391, !alias.scope !1913
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.do = load i8, ptr %i.dn, align 4, !alias.scope !1913
  %i.dp = and i8 %i.do, -128
  %i.dq = or disjoint i8 %i.df, %i.dp
  %i.dr = or disjoint i8 %i.dq, 1
  store i8 %i.dr, ptr %i.dn, align 4, !alias.scope !1913
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 15, ptr %i.ds, align 2, !tbaa !30, !alias.scope !1913
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 7, ptr %i.dt, align 8, !tbaa !30, !alias.scope !1913
  store i32 %i.dk, ptr %8, align 8, !tbaa !72, !alias.scope !1913
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.ay

bb.am:                                            ; preds = %bb.ac
  %11 = add i16 %1, -12
  %or.cond.i = icmp ult i16 %11, 7
  %12 = add i16 %1, -105
  %or.cond3.i = icmp ult i16 %12, 58
  %or.cond4.i = or i1 %or.cond.i, %or.cond3.i
  %13 = add i16 %1, -195
  %spec.select.i125 = icmp ult i16 %13, 21
  %14 = or i1 %spec.select.i125, %or.cond4.i
  %.not92 = xor i1 %i.aa, true
  tail call void @llvm.assume(i1 %14)
  tail call void @llvm.assume(i1 %.not92)
  br i1 %i.bk, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.du = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr nonnull @_ZZL10CC_MipsO32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateENS_8ArrayRefItEEE7F32Regs, i64 2)
  %i.dv = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr nonnull @_ZZL10CC_MipsO32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateENS_8ArrayRefItEEE7IntRegs, i64 4) ; 0 uses
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

bb.ao:                                            ; preds = %bb.am
  %i.dw = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr %.0.val, i64 %.8.val)
  %i.dx = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr nonnull @_ZZL10CC_MipsO32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateENS_8ArrayRefItEEE7IntRegs, i64 4)
  switch i32 %i.dx, label %bb.aq [
    i32 23, label %bb.ap
    i32 25, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao
  %i.dy = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr nonnull @_ZZL10CC_MipsO32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateENS_8ArrayRefItEEE7IntRegs, i64 4) ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.dz = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr nonnull @_ZZL10CC_MipsO32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateENS_8ArrayRefItEEE7IntRegs, i64 4) ; 0 uses
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

_ZN4llvm7CCState11AllocateRegEt.exit:             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit109, %bb.x, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i113, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i103, %bb.aq, %bb.an
  %.sroa.062.2 = phi i16 [ %.sroa.062.1, %bb.an ], [ %.sroa.062.1, %bb.aq ], [ 7, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i113 ], [ 7, %bb.x ], [ %.sroa.062.1, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i103 ], [ 7, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit109 ] ; 2 uses
  %.2 = phi i32 [ %i.du, %bb.an ], [ %i.dw, %bb.aq ], [ %i.ce, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i113 ], [ %.sroa.04.0.i107, %bb.x ], [ %i.bj, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i103 ], [ %.sroa.04.0.i107, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit109 ] ; 2 uses
  %.not93 = icmp eq i32 %.2, 0
  br i1 %.not93, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread100

_ZN4llvm7CCState11AllocateRegEt.exit.thread:      ; preds = %bb.ak, %bb.ag, %bb.ab, %bb.t, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit124, %bb.p, %_ZN4llvm7CCState11AllocateRegEt.exit
  %.sroa.062.298 = phi i16 [ %.sroa.062.2, %_ZN4llvm7CCState11AllocateRegEt.exit ], [ %.sroa.062.1, %bb.p ], [ %.sroa.062.1, %bb.t ], [ %.sroa.062.1, %bb.ag ], [ 7, %bb.ab ], [ %.sroa.062.1, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit124 ], [ %.sroa.062.1, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread ], [ %.sroa.062.1, %bb.ak ]
  %i.ea = zext i16 %1 to i64
  %i.eb = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ea ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.eb, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.ec = trunc nuw i8 %.sroa.2.0.copyload.i.i to i1
  br i1 %i.ec, label %bb.ar, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.ar:                                            ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.71) #29
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread
  %i.ed = getelementptr i8, ptr %i.eb, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ed, align 16
  %i.ee = add i64 %.sroa.0.0.copyload.i.i, 7
  %i.ef = lshr i64 %i.ee, 3                       ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.eh = load i8, ptr %i.eg, align 8, !tbaa !1412, !range !23, !noundef !24
  %i.ei = trunc nuw i8 %i.eh to i1
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !1413 ; 2 uses
  br i1 %i.ei, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.el = and i64 %i.ef, 4294967295
  %i.em = zext nneg i8 %.sroa.0.0.i.i.i to i64
  %i.en = shl nuw i64 1, %i.em                    ; 2 uses
  %i.eo = add i64 %i.en, -1
  %i.ep = add i64 %i.eo, %i.ek
  %i.eq = add i64 %i.ep, %i.el
  %i.er = sub i64 0, %i.en
  %i.es = and i64 %i.eq, %i.er                    ; 2 uses
  %i.et = sub i64 0, %i.es
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

bb.at:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.eu = zext nneg i8 %.sroa.0.0.i.i.i to i64
  %i.ev = shl nuw i64 1, %i.eu                    ; 2 uses
  %i.ew = add i64 %i.ev, -1
  %i.ex = add i64 %i.ew, %i.ek
  %i.ey = sub i64 0, %i.ev
  %i.ez = and i64 %i.ex, %i.ey                    ; 2 uses
  %i.fa = and i64 %i.ef, 4294967295
  %i.fb = add nsw i64 %i.ez, %i.fa
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit: ; preds = %bb.as, %bb.at
  %.sink = phi i64 [ %i.es, %bb.as ], [ %i.fb, %bb.at ]
  %.0.i = phi i64 [ %i.et, %bb.as ], [ %i.ez, %bb.at ]
  store i64 %.sink, ptr %i.ej, align 8, !tbaa !1413
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i126 = load i8, ptr %i.fc, align 8, !tbaa !279
  %.sroa.speculated.i = tail call i8 @llvm.umax.i8(i8 %.sroa.0.0.i.i.i, i8 %.sroa.0.0.copyload.i.i126)
  store i8 %.sroa.speculated.i, ptr %i.fc, align 8, !tbaa !279
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %6, i8 %.sroa.0.0.i.i.i) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.fd = and i64 %.0.i, 4294967295
  %i.fe = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %0, ptr %i.ff, align 8, !tbaa !1391, !alias.scope !1918
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 4, !alias.scope !1918
  %i.fi = and i8 %i.fh, -128
  %i.fj = trunc i32 %.185 to i8
  %i.fk = shl i8 %i.fj, 1
  %i.fl = and i8 %i.fk, 126
  %i.fm = or disjoint i8 %i.fi, %i.fl
  store i8 %i.fm, ptr %i.fg, align 4, !alias.scope !1918
  %i.fn = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %1, ptr %i.fn, align 2, !tbaa !30, !alias.scope !1918
  %i.fo = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 %.sroa.062.298, ptr %i.fo, align 8, !tbaa !30, !alias.scope !1918
  store i8 1, ptr %i.fe, align 8, !tbaa !1386, !alias.scope !1918
  store i64 %i.fd, ptr %9, align 8, !tbaa !489, !alias.scope !1918
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !1400, !nonnull !24, !align !64 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 3 uses
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !533 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !534
  %.not.i.i127 = icmp ult i32 %i.fs, %i.fu
  br i1 %.not.i.i127, label %bb.av, label %bb.au, !prof !611

bb.au:                                            ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, ptr noundef nonnull align 8 dereferenceable(26) %9)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit

bb.av:                                            ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  %i.fv = zext i32 %i.fs to i64
  %i.fw = load ptr, ptr %i.fq, align 8, !tbaa !26
  %i.fx = getelementptr inbounds nuw [32 x i8], ptr %i.fw, i64 %i.fv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fx, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.fy = load i32, ptr %i.fr, align 8, !tbaa !533
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fr, align 8, !tbaa !533
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit: ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.ay

_ZN4llvm7CCState11AllocateRegEt.exit.thread100:   ; preds = %bb.n, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, %bb.o, %_ZN4llvm7CCState11AllocateRegEt.exit
  %.2105 = phi i32 [ %.2, %_ZN4llvm7CCState11AllocateRegEt.exit ], [ 24, %bb.n ], [ %i.ay, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit ], [ 24, %bb.o ]
  %.sroa.062.2104 = phi i16 [ %.sroa.062.2, %_ZN4llvm7CCState11AllocateRegEt.exit ], [ %.sroa.062.1, %bb.n ], [ %.sroa.062.1, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit ], [ %.sroa.062.1, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.ga = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.ga, align 8, !tbaa !1386, !alias.scope !1921
  %i.gb = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %0, ptr %i.gb, align 8, !tbaa !1391, !alias.scope !1921
  %i.gc = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 4, !alias.scope !1921
  %i.ge = and i8 %i.gd, -128
  %i.gf = trunc i32 %.185 to i8
  %i.gg = shl i8 %i.gf, 1
  %i.gh = and i8 %i.gg, 126
  %i.gi = or disjoint i8 %i.ge, %i.gh
  store i8 %i.gi, ptr %i.gc, align 4, !alias.scope !1921
  %i.gj = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i16 %1, ptr %i.gj, align 2, !tbaa !30, !alias.scope !1921
  %i.gk = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 %.sroa.062.2104, ptr %i.gk, align 8, !tbaa !30, !alias.scope !1921
  store i32 %.2105, ptr %10, align 8, !tbaa !72, !alias.scope !1921
  %i.gl = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !1400, !nonnull !24, !align !64 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 3 uses
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !533 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 12
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !534
  %.not.i.i128 = icmp ult i32 %i.go, %i.gq
  br i1 %.not.i.i128, label %bb.ax, label %bb.aw, !prof !611

bb.aw:                                            ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread100
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, ptr noundef nonnull align 8 dereferenceable(26) %10)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit129

bb.ax:                                            ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread100
  %i.gr = zext i32 %i.go to i64
  %i.gs = load ptr, ptr %i.gm, align 8, !tbaa !26
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %i.gs, i64 %i.gr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.gt, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  %i.gu = load i32, ptr %i.gn, align 8, !tbaa !533
  %i.gv = add i32 %i.gu, 1
  store i32 %i.gv, ptr %i.gn, align 8, !tbaa !533
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit129

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit129: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.ay

bb.ay:                                            ; preds = %bb.al, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit129, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit, %bb.a
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL11RetCC_MipsNjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, ptr nofree noundef readonly captures(none) %5, ptr noundef nonnull align 8 dereferenceable(420) %6) unnamed_addr #1 {
bb.a:
  %7 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %8 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %9 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %10 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %11 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %12 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1384, !nonnull !24, !align !64
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1385, !nonnull !24, !align !64 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 354
  %i.f = load i8, ptr %i.e, align 2, !tbaa !601, !range !23, !noundef !24
end_hunk_0
