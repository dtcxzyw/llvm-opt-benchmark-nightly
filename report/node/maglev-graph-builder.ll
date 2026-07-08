inline.NumInlined: 39756
inline.NumDeleted: 11734
loop-unroll.NumCompletelyUnrolled: 245
loop-unroll.NumRuntimeUnrolled: 140
loop-unroll.NumUnrolled: 385
begin_hunk_0_@_ZN2v88internal6maglev18MaglevGraphBuilder32BuildRegisterFrameInitializationEPNS1_9ValueNodeES4_S4_:bb.a
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.hd = load ptr, ptr %i.bk, align 8
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.epil
  store ptr %.0.i.i.i45, ptr %i.he, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !26

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %i.hf = add nuw nsw i32 %i.du, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader64
  %.1.lcssa = phi i32 [ 1, %.preheader64 ], [ %i.hf, %._crit_edge.loopexit ]
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %._crit_edge
  %i.hg = load ptr, ptr %i.gc, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 720 ; 2 uses
  %i.hi = load i16, ptr %i.hh, align 2
  %i.hj = or i16 %i.hi, 4
  store i16 %i.hj, ptr %i.hh, align 2
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8            ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hn = load i64, ptr %i.hm, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 16 ; 3 uses
  %i.hp = load i64, ptr %i.ho, align 8            ; 2 uses
  %i.hq = sub i64 %i.hn, %i.hp
  %i.hr = icmp ult i64 %i.hq, 24
  br i1 %i.hr, label %bb.an, label %_ZN2v88internal6maglev18MaglevGraphBuilder16GetRegisterInputENS0_8RegisterE.exit, !prof !6

bb.an:                                            ; preds = %bb.am
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.hl, i64 noundef 24) #33
  %.pre.i.i.i.i.i.i46 = load i64, ptr %i.ho, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder16GetRegisterInputENS0_8RegisterE.exit

_ZN2v88internal6maglev18MaglevGraphBuilder16GetRegisterInputENS0_8RegisterE.exit: ; preds = %bb.am, %bb.an
  %i.hs = phi i64 [ %.pre.i.i.i.i.i.i46, %bb.an ], [ %i.hp, %bb.am ] ; 2 uses
  %i.ht = add i64 %i.hs, 24
  store i64 %i.ht, ptr %i.ho, align 8
  %i.hu = inttoptr i64 %i.hs to ptr               ; 6 uses
  store ptr null, ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store i64 549755814031, ptr %i.hv, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  store i32 0, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 20
  store i8 2, ptr %i.hx, align 4
  call void @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddInitializedNodeToGraphEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.hu)
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge, %_ZN2v88internal6maglev18MaglevGraphBuilder16GetRegisterInputENS0_8RegisterE.exit
  %i.hy = phi ptr [ %i.hu, %_ZN2v88internal6maglev18MaglevGraphBuilder16GetRegisterInputENS0_8RegisterE.exit ], [ %3, %._crit_edge ]
  %i.hz = load ptr, ptr %i.bk, align 8
  %i.ia = sext i32 %i.du to i64
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.hz, i64 %i.ia
  store ptr %i.hy, ptr %i.ib, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZN2v88internal6maglev18MaglevGraphBuilder15GetRootConstantENS0_9RootIndexE.exit
  %.2 = phi i32 [ %.1.lcssa, %bb.ao ], [ 0, %_ZN2v88internal6maglev18MaglevGraphBuilder15GetRootConstantENS0_9RootIndexE.exit ] ; 2 uses
  %i.ic = load ptr, ptr %i.dq, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 40
  %i.ie = load i32, ptr %i.id, align 8
  %i.if = icmp slt i32 %.2, %i.ie
  br i1 %i.if, label %.lr.ph69, label %.loopexit

.lr.ph69:                                         ; preds = %bb.ap
  %.not.i47 = icmp eq ptr %.0.i.i.i45, null
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ih = zext nneg i32 %.2 to i64                ; 2 uses
  br i1 %.not.i47, label %.lr.ph69.split.us, label %_ZN2v88internal6maglev18MaglevGraphBuilder18InitializeRegisterENS0_11interpreter8RegisterEPNS1_9ValueNodeE.exit50

.lr.ph69.split.us:                                ; preds = %.lr.ph69, %_ZN2v88internal6maglev18MaglevGraphBuilder18InitializeRegisterENS0_11interpreter8RegisterEPNS1_9ValueNodeE.exit50.us
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %_ZN2v88internal6maglev18MaglevGraphBuilder18InitializeRegisterENS0_11interpreter8RegisterEPNS1_9ValueNodeE.exit50.us ], [ %i.ih, %.lr.ph69 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ii = trunc nsw i64 %indvars.iv78 to i32      ; 2 uses
  store i32 %i.ii, ptr %4, align 4
  %i.ij = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 132), align 4, !range !10, !noundef !11
  %i.ik = trunc nuw i8 %i.ij to i1
  br i1 %i.ik, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph69.split.us
  %i.il = load ptr, ptr %i.ig, align 8            ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  %i.in = load i64, ptr %i.im, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 16 ; 3 uses
  %i.ip = load i64, ptr %i.io, align 8            ; 2 uses
  %i.iq = sub i64 %i.in, %i.ip
  %i.ir = icmp ult i64 %i.iq, 24
  br i1 %i.ir, label %bb.ar, label %_ZN2v88internal6maglev8NodeBase3NewINS1_12InitialValueEJRNS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i48.us, !prof !6

bb.ar:                                            ; preds = %bb.aq
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.il, i64 noundef 24) #33
  %.pre.i.i.i.i.i.i49.us = load i64, ptr %i.io, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_12InitialValueEJRNS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i48.us

_ZN2v88internal6maglev8NodeBase3NewINS1_12InitialValueEJRNS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i48.us: ; preds = %bb.ar, %bb.aq
  %i.is = phi i64 [ %.pre.i.i.i.i.i.i49.us, %bb.ar ], [ %i.ip, %bb.aq ] ; 2 uses
  %i.it = add i64 %i.is, 24
  store i64 %i.it, ptr %i.io, align 8
  %i.iu = inttoptr i64 %i.is to ptr               ; 3 uses
  call void @_ZN2v88internal6maglev12InitialValueC1EmNS0_11interpreter8RegisterE(ptr noundef nonnull align 8 dereferenceable(24) %i.iu, i64 noundef 107, i32 %i.ii) #33
  call void @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddInitializedNodeToGraphEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.iu)
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder18InitializeRegisterENS0_11interpreter8RegisterEPNS1_9ValueNodeE.exit50.us

bb.as:                                            ; preds = %.lr.ph69.split.us
  %i.iv = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddNewNodeOrGetEquivalentINS1_12InitialValueEJRNS0_11interpreter8RegisterEEEEPT_bSt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, i1 noundef zeroext false, ptr null, i64 0, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder18InitializeRegisterENS0_11interpreter8RegisterEPNS1_9ValueNodeE.exit50.us

_ZN2v88internal6maglev18MaglevGraphBuilder18InitializeRegisterENS0_11interpreter8RegisterEPNS1_9ValueNodeE.exit50.us: ; preds = %bb.as, %_ZN2v88internal6maglev8NodeBase3NewINS1_12InitialValueEJRNS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i48.us
  %i.iw = phi ptr [ %i.iu, %_ZN2v88internal6maglev8NodeBase3NewINS1_12InitialValueEJRNS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i48.us ], [ %i.iv, %bb.as ]
  %i.ix = load ptr, ptr %i.bk, align 8
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %indvars.iv78
  store ptr %i.iw, ptr %i.iy, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.iz = load ptr, ptr %i.dq, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 40
  %i.jb = load i32, ptr %i.ja, align 8
  %i.jc = sext i32 %i.jb to i64
  %i.jd = icmp slt i64 %indvars.iv.next79, %i.jc
  br i1 %i.jd, label %.lr.ph69.split.us, label %.loopexit, !llvm.loop !28

_ZN2v88internal6maglev18MaglevGraphBuilder18InitializeRegisterENS0_11interpreter8RegisterEPNS1_9ValueNodeE.exit50: ; preds = %.lr.ph69, %_ZN2v88internal6maglev18MaglevGraphBuilder18InitializeRegisterENS0_11interpreter8RegisterEPNS1_9ValueNodeE.exit50
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %_ZN2v88internal6maglev18MaglevGraphBuilder18InitializeRegisterENS0_11interpreter8RegisterEPNS1_9ValueNodeE.exit50 ], [ %i.ih, %.lr.ph69 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.je = load ptr, ptr %i.bk, align 8
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv75
  store ptr %.0.i.i.i45, ptr %i.jf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %i.jg = load ptr, ptr %i.dq, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 40
  %i.ji = load i32, ptr %i.jh, align 8
  %i.jj = sext i32 %i.ji to i64
  %i.jk = icmp slt i64 %indvars.iv.next76, %i.jj
  br i1 %i.jk, label %_ZN2v88internal6maglev18MaglevGraphBuilder18InitializeRegisterENS0_11interpreter8RegisterEPNS1_9ValueNodeE.exit50, label %.loopexit, !llvm.loop !28

.loopexit:                                        ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder18InitializeRegisterENS0_11interpreter8RegisterEPNS1_9ValueNodeE.exit50, %_ZN2v88internal6maglev18MaglevGraphBuilder18InitializeRegisterENS0_11interpreter8RegisterEPNS1_9ValueNodeE.exit50.us, %_ZN2v88internal10ZoneVectorIPNS0_6maglev12InitialValueEE9push_backERKS4_.exit, %bb.ap, %.preheader
  ret void
}

declare ptr @_ZNK2v88internal8compiler13JSFunctionRef7contextEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = tail call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %i.d) #33 ; 2 uses
  %.not.i = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.e, ptr %3, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = xor i32 %2, -1                           ; 2 uses
  %i.g = and i32 %i.e, %i.f
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN2v88internal6maglev16KnownNodeAspects10EnsureTypeEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeENS1_8NodeTypeEPS8_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef ptr @_ZN2v88internal6maglev16KnownNodeAspects18GetOrCreateInfoForEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(352) %i.b, ptr noundef %i.d, ptr noundef nonnull %1) ; 4 uses
  %.pre.i = load i32, ptr %i.i, align 8           ; 3 uses
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %.pre.i, ptr %3, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = and i32 %.pre.i, %i.f
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN2v88internal6maglev16KnownNodeAspects10EnsureTypeEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeENS1_8NodeTypeEPS8_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = and i32 %.pre.i, %2                      ; 2 uses
  store i32 %i.l, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 65535
  %.not29.i = icmp eq i64 %i.o, 142
  br i1 %.not29.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load i32, ptr %i.p, align 8
  %i.r = and i32 %i.q, %i.l
  store i32 %i.r, ptr %i.i, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %4 = lshr i32 %2, 6
  %i.s = and i32 %4, 31
  %switch.shifted = lshr i32 -2147483517, %i.s
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN2v88internal6maglev16KnownNodeAspects10EnsureTypeEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeENS1_8NodeTypeEPS8_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i8 1, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  store i8 1, ptr %i.u, align 8
  br label %_ZN2v88internal6maglev16KnownNodeAspects10EnsureTypeEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeENS1_8NodeTypeEPS8_.exit

_ZN2v88internal6maglev16KnownNodeAspects10EnsureTypeEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeENS1_8NodeTypeEPS8_.exit: ; preds = %bb.i, %bb.c, %bb.f, %bb.j
  %.1.i = phi i1 [ true, %bb.c ], [ true, %bb.f ], [ false, %bb.j ], [ false, %bb.i ]
  ret i1 %.1.i
}

declare i32 @_ZNK2v88internal8compiler16BytecodeArrayRef41incoming_new_target_or_generator_registerEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder16GetRegisterInputENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(953) %0, i8 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not.i = icmp eq i8 %1, -1
  br i1 %.not.i, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 720 ; 2 uses
  %i.d = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.d)
  %i.e = zext nneg i8 %1 to i16
  %i.f = shl nuw i16 1, %i.e
  %i.g = load i16, ptr %i.c, align 2
  %i.h = or i16 %i.g, %i.f
  store i16 %i.h, ptr %i.c, align 2
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit

_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = sub i64 %i.l, %i.n
  %i.p = icmp ult i64 %i.o, 24
  br i1 %i.p, label %bb.c, label %_ZN2v88internal6maglev18MaglevGraphBuilder10AddNewNodeINS1_13RegisterInputEJRNS0_8RegisterEEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_.exit, !prof !6

bb.c:                                             ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 noundef 24) #33
  %.pre.i.i.i.i.i = load i64, ptr %i.m, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder10AddNewNodeINS1_13RegisterInputEJRNS0_8RegisterEEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_.exit

_ZN2v88internal6maglev18MaglevGraphBuilder10AddNewNodeINS1_13RegisterInputEJRNS0_8RegisterEEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_.exit: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit, %bb.c
  %i.q = phi i64 [ %.pre.i.i.i.i.i, %bb.c ], [ %i.n, %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit ] ; 2 uses
  %i.r = add i64 %i.q, 24
  store i64 %i.r, ptr %i.m, align 8
  %i.s = inttoptr i64 %i.q to ptr                 ; 6 uses
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 549755814031, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  store i8 %1, ptr %i.v, align 4
  tail call void @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddInitializedNodeToGraphEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.s)
  ret ptr %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildMergeStatesEv(ptr noundef nonnull align 8 dereferenceable(953) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::compiler::BytecodeArrayRef", align 8 ; 4 uses
  %2 = alloca %"class.v8::internal::HandlerTable", align 8 ; 8 uses
  %3 = alloca %"class.v8::internal::compiler::BytecodeArrayRef", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %.idx = shl i64 %i.e, 6
  %i.f = getelementptr i8, ptr %i.c, i64 %.idx    ; 3 uses
  %.not42 = icmp eq i64 %i.e, 0
  br i1 %.not42, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 756
  %i.h = load i32, ptr %i.g, align 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.043 = phi ptr [ %i.c, %.lr.ph ], [ %i.l, %bb.c ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.043, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp slt i32 %i.j, %i.h
  br i1 %i.k, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.043, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.l, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !29

.critedge:                                        ; preds = %bb.b, %bb.a
  %.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %.043, %bb.b ] ; 2 uses
  %.not3146 = icmp eq ptr %.0.lcssa, %i.f
  br i1 %.not3146, label %._crit_edge, label %.lr.ph48

.lr.ph48:                                         ; preds = %.critedge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 712
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph48, %bb.h
  %.147 = phi ptr [ %.0.lcssa, %.lr.ph48 ], [ %i.ax, %bb.h ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.147, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 7 uses
  %i.u = load ptr, ptr %i.m, align 8
  %i.v = icmp sgt i32 %i.t, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = lshr i32 %i.t, 6
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = and i32 %i.t, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = and i64 %i.z, %i.ac
  %.not41 = icmp eq i64 %i.ad, 0
  br i1 %.not41, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ae = tail call noundef ptr @_ZNK2v88internal8compiler16BytecodeAnalysis16GetInLivenessForEi(ptr noundef nonnull align 8 dereferenceable(140) %i.a, i32 noundef %i.t) #33
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 158), align 2, !range !10, !noundef !11
  %i.ag = trunc nuw i8 %i.af to i1
  %.pre52 = load ptr, ptr %i.n, align 8           ; 3 uses
  br i1 %i.ag, label %bb.f, label %.critedge33

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %.pre52, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 103
  %i.aj = load i8, ptr %i.ai, align 1, !range !10, !noundef !11
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.g, label %.critedge33, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.13, i64 noundef 32) #33 ; 0 uses
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.t) #33
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.am) #33, !inline_history !12 ; 0 uses
  %.pre = load ptr, ptr %i.n, align 8
  br label %.critedge33

.critedge33:                                      ; preds = %bb.e, %bb.g, %bb.f
  %i.ao = phi ptr [ %.pre52, %bb.e ], [ %.pre, %bb.g ], [ %.pre52, %bb.f ]
  %i.ap = load ptr, ptr %i.p, align 8
  %i.aq = load ptr, ptr %i.q, align 8
  %i.ar = zext nneg i32 %i.t to i64               ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4
  %i.au = tail call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState10NewForLoopERKNS1_21InterpreterFrameStateEPNS1_5GraphERKNS1_21MaglevCompilationUnitEiiPKNS0_8compiler21BytecodeLivenessStateEPKNSB_8LoopInfoEb(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(52) %i.ao, i32 noundef %i.t, i32 noundef %i.at, ptr noundef %i.ae, ptr noundef nonnull %.147, i1 noundef zeroext false) #33
  %i.av = load ptr, ptr %i.r, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ar
  store ptr %i.au, ptr %i.aw, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %.critedge33
  %i.ax = getelementptr inbounds nuw i8, ptr %.147, i64 64 ; 2 uses
  %.not31 = icmp eq ptr %i.ax, %i.f
  br i1 %.not31, label %._crit_edge, label %bb.d, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.c, %bb.h, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %_ZNK2v88internal6maglev18MaglevGraphBuilder8bytecodeEv.exit, !prof !6

bb.i:                                             ; preds = %._crit_edge
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZNK2v88internal6maglev18MaglevGraphBuilder8bytecodeEv.exit: ; preds = %._crit_edge
  store ptr %i.bb, ptr %1, align 8
  %i.bc = call noundef i32 @_ZNK2v88internal8compiler16BytecodeArrayRef18handler_table_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #33
  %i.bd = icmp sgt i32 %i.bc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br i1 %i.bd, label %bb.j, label %bb.o

bb.j:                                             ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder8bytecodeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.be = load ptr, ptr %i.ay, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not.i.i.i.i.i.i36 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i36, label %bb.k, label %_ZNK2v88internal6maglev18MaglevGraphBuilder8bytecodeEv.exit37, !prof !6

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZNK2v88internal6maglev18MaglevGraphBuilder8bytecodeEv.exit37: ; preds = %bb.j
  store ptr %i.bg, ptr %3, align 8
  %i.bh = call ptr @_ZNK2v88internal8compiler16BytecodeArrayRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  %i.bi = load i64, ptr %i.bh, align 8
  call void @_ZN2v88internal12HandlerTableC1ENS0_6TaggedINS0_13BytecodeArrayEEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 %i.bi) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.bj = call noundef i32 @_ZNK2v88internal12HandlerTable20NumberOfRangeEntriesEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #33
end_hunk_0
begin_hunk_1_@_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddNewNodeOrGetEquivalentINS1_25CheckedInternalizedStringEJNS1_9CheckTypeEEEEPT_bSt16initializer_listIPNS1_9ValueNodeEEDpOT0_:bb.a
  store ptr null, ptr %i.dp, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  store i64 %i.dt, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store i32 0, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %storemerge34.lcssa, i64 8
  %i.dx = load i64, ptr %i.dw, align 8
  %i.dy = and i64 %i.dx, 7696581394432
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_25CheckedInternalizedStringESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit, label %bb.g, !prof !430

bb.g:                                             ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_25CheckedInternalizedStringEJNS1_9CheckTypeEEEEPT_PNS0_4ZoneEmDpOT0_.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.179) #32
  unreachable

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_25CheckedInternalizedStringESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit: ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_25CheckedInternalizedStringEJNS1_9CheckTypeEEEEPT_PNS0_4ZoneEmDpOT0_.exit
  %i.ea = getelementptr inbounds i8, ptr %i.dp, i64 -8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %storemerge34.lcssa, i64 16 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = add nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 8
  store ptr %storemerge34.lcssa, ptr %i.ea, align 8
  %i.ee = load ptr, ptr %0, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 728
  %i.eg = load ptr, ptr %i.ef, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.bb, ptr %i.a, align 4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 224
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store ptr %i.dp, ptr %5, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 -1, ptr %i.ei, align 8
  %i.ej = call { ptr, i8 } @_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionEESt10_Select1stIS7_ESt4lessIjENS3_13ZoneAllocatorIS7_EEE17_M_emplace_uniqueIJRjS6_EEES0_ISt17_Rb_tree_iteratorIS7_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.eh, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ek = load ptr, ptr %i.de, align 8
  %i.el = load ptr, ptr %0, align 8
  %i.em = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder26GetLatestCheckpointedFrameEv(ptr noundef nonnull align 8 dereferenceable(953) %i.el)
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.en, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.eo = load i64, ptr %i.du, align 8            ; 2 uses
  %i.ep = lshr i64 %i.eo, 32
  %i.eq = trunc i64 %i.ep to i16                  ; 2 uses
  %i.er = and i16 %i.eq, 2
  %.not.i.i.i.i.i.i = icmp eq i16 %i.er, 0
  %.neg.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 0, i64 -48
  %i.es = and i16 %i.eq, 6
  %i.et = icmp eq i16 %i.es, 4
  %.neg2.i.i.i.i.i = select i1 %i.et, i64 -56, i64 0
  %.neg3.i.i.i.i.i = add nsw i64 %.neg.i.i.i.i.i, %.neg2.i.i.i.i.i
  %i.eu = trunc i64 %i.eo to i32
  %i.ev = lshr i32 %i.eu, 16
  %narrow.i.i.i.i.i.i = sub nsw i32 1, %i.ev
  %i.ew = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.ew
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = add i64 %.neg3.i.i.i.i.i, %i.ey
  %i.fa = inttoptr i64 %i.ez to ptr               ; 2 uses
  call void @_ZN2v88internal6maglev9DeoptInfoC2EPNS0_4ZoneEPNS1_10DeoptFrameENS0_8compiler14FeedbackSourceE(ptr noundef nonnull align 8 dereferenceable(45) %i.fa, ptr noundef %i.ek, ptr noundef %i.em, ptr %.sroa.0.0.copyload.i.i, i32 %.sroa.2.0.copyload.i.i) #33
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 44
  store i8 62, ptr %i.fb, align 4
  call void @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddInitializedNodeToGraphEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.dp)
  %i.fc = load ptr, ptr %0, align 8               ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 912
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 896
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 904
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = shl i64 %i.fh, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ff, i8 0, i64 %i.fi, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, i8 0, i64 16, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 696
  store ptr null, ptr %i.fj, align 8
  br label %_ZN2v88internal6maglev16KnownNodeAspects14FindExpressionINS1_25CheckedInternalizedStringEJNS1_9CheckTypeEEEEPT_jRSt5arrayIPNS1_9ValueNodeEXsrS6_11kInputCountEEDpOT0_.exit

_ZN2v88internal6maglev16KnownNodeAspects14FindExpressionINS1_25CheckedInternalizedStringEJNS1_9CheckTypeEEEEPT_jRSt5arrayIPNS1_9ValueNodeEXsrS6_11kInputCountEEDpOT0_.exit: ; preds = %.preheader.i, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_25CheckedInternalizedStringESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit
  %.0 = phi ptr [ %i.dp, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_25CheckedInternalizedStringESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit ], [ %i.bq, %.preheader.i ]
  ret ptr %.0
}

declare noundef double @_ZNK2v88internal8compiler13HeapNumberRef5valueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE16GetInt32ConstantEi(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 272 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not10.i.i.i.i.i, label %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.h, %bb.a ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.i, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp slt i32 %i.k, %1                    ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.l, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.l, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal6maglev13Int32ConstantEESt10_Select1stIS7_ESt4lessIiENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !64

_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal6maglev13Int32ConstantEESt10_Select1stIS7_ESt4lessIiENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.m = icmp eq ptr %.19.i.i.i.i.i, %i.i
  br i1 %i.m, label %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i, label %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.i.i

_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.i.i: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal6maglev13Int32ConstantEESt10_Select1stIS7_ESt4lessIiENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp slt i32 %1, %i.o
  br i1 %i.p, label %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i, label %bb.b

_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i: ; preds = %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.i.i, %_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal6maglev13Int32ConstantEESt10_Select1stIS7_ESt4lessIiENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i32 0, ptr %i.c, align 4
  %i.q = call noundef ptr @_ZNK2v88internal6maglev5Graph21CreateNewConstantNodeINS1_13Int32ConstantEJiRiEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(976) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  store ptr %i.q, ptr %i.b, align 8
  %i.r = call { ptr, i8 } @_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal6maglev13Int32ConstantEESt10_Select1stIS7_ESt4lessIiENS3_13ZoneAllocatorIS7_EEE17_M_emplace_uniqueIJRiRS6_EEES0_ISt17_Rb_tree_iteratorIS7_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %i.s = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %_ZN2v88internal6maglev5Graph16GetInt32ConstantEi.exit

bb.b:                                             ; preds = %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.u = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal6maglev5Graph16GetInt32ConstantEi.exit

_ZN2v88internal6maglev5Graph16GetInt32ConstantEi.exit: ; preds = %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.s, %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i ], [ %i.u, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 728
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = tail call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %i.e) #33 ; 2 uses
  %.not.i = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.f, ptr %3, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = xor i32 %2, -1                           ; 2 uses
  %i.h = and i32 %i.f, %i.g
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN2v88internal6maglev16KnownNodeAspects10EnsureTypeEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeENS1_8NodeTypeEPS8_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef ptr @_ZN2v88internal6maglev16KnownNodeAspects18GetOrCreateInfoForEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(352) %i.c, ptr noundef %i.e, ptr noundef nonnull %1) ; 4 uses
  %.pre.i = load i32, ptr %i.j, align 8           ; 3 uses
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %.pre.i, ptr %3, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = and i32 %.pre.i, %i.g
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN2v88internal6maglev16KnownNodeAspects10EnsureTypeEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeENS1_8NodeTypeEPS8_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = and i32 %.pre.i, %2                      ; 2 uses
  store i32 %i.m, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, 65535
  %.not29.i = icmp eq i64 %i.p, 142
  br i1 %.not29.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load i32, ptr %i.q, align 8
  %i.s = and i32 %i.r, %i.m
  store i32 %i.s, ptr %i.j, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %4 = lshr i32 %2, 6
  %i.t = and i32 %4, 31
  %switch.shifted = lshr i32 -2147483517, %i.t
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN2v88internal6maglev16KnownNodeAspects10EnsureTypeEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeENS1_8NodeTypeEPS8_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i8 1, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  store i8 1, ptr %i.v, align 8
  br label %_ZN2v88internal6maglev16KnownNodeAspects10EnsureTypeEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeENS1_8NodeTypeEPS8_.exit

_ZN2v88internal6maglev16KnownNodeAspects10EnsureTypeEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeENS1_8NodeTypeEPS8_.exit: ; preds = %bb.i, %bb.c, %bb.f, %bb.j
  %.1.i = phi i1 [ true, %bb.c ], [ true, %bb.f ], [ false, %bb.j ], [ false, %bb.i ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE27AddNewNodeNoInputConversionINS1_15CheckedSmiUntagEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.fr12 = freeze i64 %2                          ; 4 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 132), align 4, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddNewNodeOrGetEquivalentINS1_15CheckedSmiUntagEJEEEPT_bSt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, i1 noundef zeroext false, ptr %1, i64 %.fr12)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = shl i64 %.fr12, 3                        ; 3 uses
  %i.g = add i64 %i.f, 72                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = sub i64 %i.i, %i.k
  %i.m = icmp ugt i64 %i.g, %i.l
  br i1 %i.m, label %bb.d, label %_ZN2v88internal6maglev8NodeBase3NewINS1_15CheckedSmiUntagEJEEEPT_PNS0_4ZoneEmDpOT0_.exit, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 noundef %i.g) #33
  %.pre.i.i.i = load i64, ptr %i.j, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_15CheckedSmiUntagEJEEEPT_PNS0_4ZoneEmDpOT0_.exit

_ZN2v88internal6maglev8NodeBase3NewINS1_15CheckedSmiUntagEJEEEPT_PNS0_4ZoneEmDpOT0_.exit: ; preds = %bb.c, %bb.d
  %i.n = phi i64 [ %.pre.i.i.i, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %i.o = add i64 %i.f, 48
  %i.p = add i64 %i.n, %i.g
  store i64 %i.p, ptr %i.j, align 8
  %i.q = add i64 %i.o, %i.n
  %i.r = inttoptr i64 %i.q to ptr                 ; 7 uses
  %i.s = shl i64 %.fr12, 16
  %i.t = or i64 %i.s, 9904194584727
  store ptr null, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store i64 %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i32 0, ptr %i.v, align 8
  %.not14.i = icmp eq i64 %.fr12, 0
  br i1 %.not14.i, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_15CheckedSmiUntagESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_15CheckedSmiUntagEJEEEPT_PNS0_4ZoneEmDpOT0_.exit
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 -8 ; 3 uses
  %i.x = add i64 %i.f, -8                         ; 3 uses
  %i.y = lshr exact i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %i.aa = icmp eq i64 %i.x, 0
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.z, 4611686018427387902
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.g ] ; 3 uses
  %.01115.i = phi ptr [ %1, %.lr.ph.i.new ], [ %i.aw, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.ab = load ptr, ptr %.01115.i, align 8        ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = and i64 %i.ad, 7696581394432
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.f, label %.loopexit, !prof !430

.loopexit:                                        ; preds = %bb.e, %bb.f, %.epil.preheader
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.179) #32
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 8
  %i.aj = sub nsw i64 0, %indvars.iv.i
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.aj
  store ptr %i.ab, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.01115.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8            ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = and i64 %i.ao, 7696581394432
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.g, label %.loopexit, !prof !430

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 8
  %i.au = xor i64 %indvars.iv.i, -1
  %i.av = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.au
  store ptr %i.am, ptr %i.av, align 8
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01115.i, i64 16 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_15CheckedSmiUntagESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit.loopexit.unr-lcssa, label %bb.e

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_15CheckedSmiUntagESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %i.ax = and i64 %i.x, 8
  %lcmp.mod.not.not = icmp eq i64 %i.ax, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_15CheckedSmiUntagESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit

.epil.preheader:                                  ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_15CheckedSmiUntagESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_15CheckedSmiUntagESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit.loopexit.unr-lcssa ]
  %.01115.i.epil.init = phi ptr [ %1, %.lr.ph.i ], [ %i.aw, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_15CheckedSmiUntagESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit.loopexit.unr-lcssa ]
  %lcmp.mod10 = trunc i64 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod10)
  %i.ay = load ptr, ptr %.01115.i.epil.init, align 8 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = and i64 %i.ba, 7696581394432
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_15CheckedSmiUntagESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit.loopexit.epilog-lcssa, label %.loopexit, !prof !430

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_15CheckedSmiUntagESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit.loopexit.epilog-lcssa: ; preds = %.epil.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 8
  %i.bg = sub nsw i64 0, %indvars.iv.i.epil.init
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bg
  store ptr %i.ay, ptr %i.bh, align 8
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_15CheckedSmiUntagESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_15CheckedSmiUntagESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit: ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_15CheckedSmiUntagESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit.loopexit.epilog-lcssa, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_15CheckedSmiUntagESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit.loopexit.unr-lcssa, %_ZN2v88internal6maglev8NodeBase3NewINS1_15CheckedSmiUntagEJEEEPT_PNS0_4ZoneEmDpOT0_.exit
  %i.bi = load ptr, ptr %i.d, align 8
  %i.bj = load ptr, ptr %0, align 8
  %i.bk = tail call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder26GetLatestCheckpointedFrameEv(ptr noundef nonnull align 8 dereferenceable(953) %i.bj)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bl, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.bm = load i64, ptr %i.u, align 8             ; 2 uses
  %i.bn = lshr i64 %i.bm, 32
  %i.bo = trunc i64 %i.bn to i16                  ; 2 uses
  %i.bp = and i16 %i.bo, 2
  %.not.i.i.i.i.i.i = icmp eq i16 %i.bp, 0
  %.neg.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 0, i64 -48
  %i.bq = and i16 %i.bo, 6
  %i.br = icmp eq i16 %i.bq, 4
  %.neg2.i.i.i.i.i = select i1 %i.br, i64 -56, i64 0
  %.neg3.i.i.i.i.i = add nsw i64 %.neg.i.i.i.i.i, %.neg2.i.i.i.i.i
  %i.bs = trunc i64 %i.bm to i32
  %i.bt = lshr i32 %i.bs, 16
  %i.bu = getelementptr inbounds i8, ptr %i.r, i64 -8
  %narrow.i.i.i.i.i.i = sub nsw i32 1, %i.bt
  %i.bv = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = add i64 %.neg3.i.i.i.i.i, %i.bx
  %i.bz = inttoptr i64 %i.by to ptr               ; 2 uses
  tail call void @_ZN2v88internal6maglev9DeoptInfoC2EPNS0_4ZoneEPNS1_10DeoptFrameENS0_8compiler14FeedbackSourceE(ptr noundef nonnull align 8 dereferenceable(45) %i.bz, ptr noundef %i.bi, ptr noundef %i.bk, ptr %.sroa.0.0.copyload.i.i, i32 %.sroa.2.0.copyload.i.i) #33
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 44
  store i8 62, ptr %i.ca, align 4
  tail call void @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddInitializedNodeToGraphEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.r)
  %i.cb = load ptr, ptr %0, align 8               ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 912
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 896
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 904
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = shl i64 %i.cg, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ce, i8 0, i64 %i.ch, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 696
  store ptr null, ptr %i.ci, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_15CheckedSmiUntagESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.r, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_15CheckedSmiUntagESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE27AddNewNodeNoInputConversionINS1_36TruncateUnsafeNumberOrOddballToInt32EJNS1_29TaggedToFloat64ConversionTypeEEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.fr14 = freeze i64 %2                          ; 4 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 132), align 4, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddNewNodeOrGetEquivalentINS1_36TruncateUnsafeNumberOrOddballToInt32EJNS1_29TaggedToFloat64ConversionTypeEEEEPT_bSt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, i1 noundef zeroext false, ptr %1, i64 %.fr14, ptr noundef nonnull align 1 dereferenceable(1) %3)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = shl i64 %.fr14, 3                        ; 3 uses
  %i.g = add i64 %i.f, 24                         ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddNewNodeOrGetEquivalentINS1_26CheckedHoleyFloat64ToInt32EJEEEPT_bSt16initializer_listIPNS1_9ValueNodeEEDpOT0_:bb.a
  %i.bp = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %i.bq = load ptr, ptr %i.bp, align 8
  %.not32.i = icmp eq ptr %storemerge31.lcssa, %i.bq
  br i1 %.not32.i, label %_ZN2v88internal6maglev16KnownNodeAspects14FindExpressionINS1_26CheckedHoleyFloat64ToInt32EJEEEPT_jRSt5arrayIPNS1_9ValueNodeEXsrS5_11kInputCountEEDpOT0_.exit, label %.critedge.i

.lr.ph56:                                         ; preds = %.lr.ph56.prol.loopexit, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.1
  %i.br = phi ptr [ %i.cd, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.1 ], [ %.unr, %.lr.ph56.prol.loopexit ] ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i64, ptr %i.bt, align 8
  %sum.shift = lshr i64 %i.bu, 40
  %i.bv = trunc i64 %sum.shift to i8
  %i.bw = and i8 %i.bv, 7
  %.off = add nsw i8 %i.bw, -3
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread, label %._crit_edge40, !prof !426

._crit_edge40:                                    ; preds = %.lr.ph56.prol, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread, %.lr.ph56, %.lr.ph.split
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.177) #32
  unreachable

_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread: ; preds = %.lr.ph56
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i64, ptr %i.bz, align 8
  %sum.shift.1 = lshr i64 %i.ca, 40
  %i.cb = trunc i64 %sum.shift.1 to i8
  %i.cc = and i8 %i.cb, 7
  %.off.1 = add nsw i8 %i.cc, -3
  %switch.1 = icmp ult i8 %.off.1, 2
  br i1 %switch.1, label %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.1, label %._crit_edge40, !prof !426

_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.1: ; preds = %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %.not.1 = icmp eq ptr %i.cd, %i.b
  br i1 %.not.1, label %._crit_edge, label %.lr.ph56

.critedge.i:                                      ; preds = %bb.f, %bb.h, %.preheader.i, %_ZNSt3mapIjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionESt4lessIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERS9_.exit.i, %bb.g, %._crit_edge, %_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionEESt10_Select1stIS7_ESt4lessIjENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8            ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 3 uses
  %i.cj = load i64, ptr %i.ci, align 8            ; 2 uses
  %i.ck = sub i64 %i.ch, %i.cj
  %i.cl = icmp ult i64 %i.ck, 80
  br i1 %i.cl, label %bb.i, label %_ZN2v88internal6maglev8NodeBase3NewINS1_26CheckedHoleyFloat64ToInt32EJEEEPT_PNS0_4ZoneEmDpOT0_.exit, !prof !6

bb.i:                                             ; preds = %.critedge.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cf, i64 noundef 80) #33
  %.pre.i.i.i = load i64, ptr %i.ci, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_26CheckedHoleyFloat64ToInt32EJEEEPT_PNS0_4ZoneEmDpOT0_.exit

_ZN2v88internal6maglev8NodeBase3NewINS1_26CheckedHoleyFloat64ToInt32EJEEEPT_PNS0_4ZoneEmDpOT0_.exit: ; preds = %.critedge.i, %bb.i
  %i.cm = phi i64 [ %.pre.i.i.i, %bb.i ], [ %i.cj, %.critedge.i ] ; 2 uses
  %i.cn = add i64 %i.cm, 80
  store i64 %i.cn, ptr %i.ci, align 8
  %i.co = add i64 %i.cm, 56
  %i.cp = inttoptr i64 %i.co to ptr               ; 7 uses
  store ptr null, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  store i64 9904194650277, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i32 0, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %storemerge31.lcssa, i64 8
  %i.ct = load i64, ptr %i.cs, align 8
  %sum.shift.i = lshr i64 %i.ct, 40
  %i.cu = trunc i64 %sum.shift.i to i8
  %i.cv = and i8 %i.cu, 7
  %.off.i = add nsw i8 %i.cv, -3
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_26CheckedHoleyFloat64ToInt32ESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit, label %bb.j, !prof !424

bb.j:                                             ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_26CheckedHoleyFloat64ToInt32EJEEEPT_PNS0_4ZoneEmDpOT0_.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.179) #32
  unreachable

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_26CheckedHoleyFloat64ToInt32ESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit: ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_26CheckedHoleyFloat64ToInt32EJEEEPT_PNS0_4ZoneEmDpOT0_.exit
  %i.cw = getelementptr inbounds i8, ptr %i.cp, i64 -8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %storemerge31.lcssa, i64 16 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.cx, align 8
  store ptr %storemerge31.lcssa, ptr %i.cw, align 8
  %i.da = load ptr, ptr %0, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 728
  %i.dc = load ptr, ptr %i.db, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ar, ptr %i.a, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 224
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store ptr %i.cp, ptr %4, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 -1, ptr %i.de, align 8
  %i.df = call { ptr, i8 } @_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionEESt10_Select1stIS7_ESt4lessIjENS3_13ZoneAllocatorIS7_EEE17_M_emplace_uniqueIJRjS6_EEES0_ISt17_Rb_tree_iteratorIS7_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.dd, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dg = load ptr, ptr %i.ce, align 8
  %i.dh = load ptr, ptr %0, align 8
  %i.di = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder26GetLatestCheckpointedFrameEv(ptr noundef nonnull align 8 dereferenceable(953) %i.dh)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.dj, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.dk = load i64, ptr %i.cq, align 8            ; 2 uses
  %i.dl = lshr i64 %i.dk, 32
  %i.dm = trunc i64 %i.dl to i16                  ; 2 uses
  %i.dn = and i16 %i.dm, 2
  %.not.i.i.i.i.i.i = icmp eq i16 %i.dn, 0
  %.neg.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 0, i64 -48
  %i.do = and i16 %i.dm, 6
  %i.dp = icmp eq i16 %i.do, 4
  %.neg2.i.i.i.i.i = select i1 %i.dp, i64 -56, i64 0
  %.neg3.i.i.i.i.i = add nsw i64 %.neg.i.i.i.i.i, %.neg2.i.i.i.i.i
  %i.dq = trunc i64 %i.dk to i32
  %i.dr = lshr i32 %i.dq, 16
  %narrow.i.i.i.i.i.i = sub nsw i32 1, %i.dr
  %i.ds = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.ds
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = add i64 %.neg3.i.i.i.i.i, %i.du
  %i.dw = inttoptr i64 %i.dv to ptr               ; 2 uses
  call void @_ZN2v88internal6maglev9DeoptInfoC2EPNS0_4ZoneEPNS1_10DeoptFrameENS0_8compiler14FeedbackSourceE(ptr noundef nonnull align 8 dereferenceable(45) %i.dw, ptr noundef %i.dg, ptr noundef %i.di, ptr %.sroa.0.0.copyload.i.i, i32 %.sroa.2.0.copyload.i.i) #33
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 44
  store i8 62, ptr %i.dx, align 4
  call void @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddInitializedNodeToGraphEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.cp)
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 894
  store i8 1, ptr %i.ea, align 2
  %i.eb = load ptr, ptr %0, align 8               ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 912
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 896
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 904
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = shl i64 %i.eg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ee, i8 0, i64 %i.eh, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, i8 0, i64 16, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 696
  store ptr null, ptr %i.ei, align 8
  br label %_ZN2v88internal6maglev16KnownNodeAspects14FindExpressionINS1_26CheckedHoleyFloat64ToInt32EJEEEPT_jRSt5arrayIPNS1_9ValueNodeEXsrS5_11kInputCountEEDpOT0_.exit

_ZN2v88internal6maglev16KnownNodeAspects14FindExpressionINS1_26CheckedHoleyFloat64ToInt32EJEEEPT_jRSt5arrayIPNS1_9ValueNodeEXsrS5_11kInputCountEEDpOT0_.exit: ; preds = %.preheader.i, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_26CheckedHoleyFloat64ToInt32ESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit
  %.0 = phi ptr [ %i.cp, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_26CheckedHoleyFloat64ToInt32ESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit ], [ %i.bg, %.preheader.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE29BuildNumberOrOddballToFloat64EPNS1_9ValueNodeENS1_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %i.b = alloca [1 x ptr], align 8                ; 4 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca [1 x ptr], align 8                ; 4 uses
  %i.e = alloca [1 x ptr], align 8                ; 4 uses
  %i.f = alloca [1 x ptr], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.g = icmp ult i32 %2, 4
  %i.h = and i32 %2, -20
  %i.i = icmp eq i32 %i.h, 0
  %..i = select i1 %i.i, i8 2, i8 3
  %.0.i = select i1 %i.g, i8 0, i8 %..i
  store i8 %.0.i, ptr %i.c, align 1
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 728
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = tail call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %i.n) #33 ; 2 uses
  %i.p = xor i32 %2, -1                           ; 2 uses
  %i.q = and i32 %i.o, %i.p
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = tail call noundef ptr @_ZN2v88internal6maglev16KnownNodeAspects18GetOrCreateInfoForEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(352) %i.l, ptr noundef %i.n, ptr noundef nonnull %1) ; 4 uses
  %.pre.i.i = load i32, ptr %i.s, align 8         ; 3 uses
  %i.t = and i32 %.pre.i.i, %i.p
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = and i32 %.pre.i.i, %2                    ; 2 uses
  store i32 %i.v, ptr %i.s, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = and i64 %i.x, 65535
  %.not29.i.i = icmp eq i64 %i.y, 142
  br i1 %.not29.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = and i32 %i.aa, %i.v
  store i32 %i.ab, ptr %i.s, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %3 = lshr i32 %2, 6
  %i.ac = and i32 %3, 31
  switch i32 %i.ac, label %bb.f [
    i32 0, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit
    i32 1, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit
    i32 7, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit
    i32 31, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit
  ]

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 1, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 280
  store i8 1, ptr %i.ae, align 8
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit

bb.g:                                             ; preds = %bb.a, %bb.b
  %.017.ph = phi i32 [ %.pre.i.i, %bb.b ], [ %i.o, %bb.a ]
  %i.af = icmp eq i32 %.017.ph, 1
  br i1 %i.af, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 728
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = load ptr, ptr %i.m, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 312
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 304 ; 2 uses
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not10.i.i.i.i.i.i.i.i, label %select.unfold.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.al, %bb.h ] ; 3 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.am, %bb.h ]
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 32
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp ult ptr %i.ao, %1                  ; 2 uses
  %.19.i.i.i.i.i.i.i.i = select i1 %i.ap, ptr %.0811.i.i.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i.i.i.i = select i1 %i.ap, i64 24, i64 16
  %.1.in.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !63

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.aq = icmp eq ptr %.19.i.i.i.i.i.i.i.i, %i.am
  br i1 %i.aq, label %select.unfold.i.i, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i, i64 32
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = icmp ult ptr %1, %i.as
  br i1 %i.at, label %select.unfold.i.i, label %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i

select.unfold.i.i:                                ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i, %bb.h
  %i.au = tail call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %i.aj) #33
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE7GetTypeEPNS1_9ValueNodeE.exit

_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i: ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i, i64 40
  %i.aw = load i32, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = and i64 %i.ay, 65535
  %.not = icmp eq i64 %i.az, 142
  br i1 %.not, label %bb.i, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE7GetTypeEPNS1_9ValueNodeE.exit

bb.i:                                             ; preds = %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = and i32 %i.bb, %i.aw
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE7GetTypeEPNS1_9ValueNodeE.exit

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE7GetTypeEPNS1_9ValueNodeE.exit: ; preds = %select.unfold.i.i, %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i, %bb.i
  %.0.i.i = phi i32 [ %i.au, %select.unfold.i.i ], [ %i.bc, %bb.i ], [ %i.aw, %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i ]
  %i.bd = icmp eq i32 %.0.i.i, 0
  br i1 %i.bd, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit16, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE7GetTypeEPNS1_9ValueNodeE.exit
  %i.be = load ptr, ptr %0, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 728
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.bi = tail call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %i.bh) #33
  %i.bj = icmp ult i32 %i.bi, 2
  br i1 %i.bj, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = tail call noundef ptr @_ZN2v88internal6maglev16KnownNodeAspects18GetOrCreateInfoForEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(352) %i.bg, ptr noundef %i.bh, ptr noundef nonnull %1) ; 3 uses
  %.pre.i.i13 = load i32, ptr %i.bk, align 8      ; 2 uses
  %i.bl = icmp ult i32 %.pre.i.i13, 2
  br i1 %i.bl, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = and i32 %.pre.i.i13, 1                  ; 2 uses
  store i32 %i.bm, ptr %i.bk, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = and i64 %i.bo, 65535
  %.not29.i.i14 = icmp eq i64 %i.bp, 142
  br i1 %.not29.i.i14, label %bb.m, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit16

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = and i32 %i.br, %i.bm
  store i32 %i.bs, ptr %i.bk, align 8
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit16

bb.n:                                             ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store ptr %1, ptr %i.a, align 8
  %i.bt = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_14UnsafeSmiUntagEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %i.a, i64 1), !inline_history !939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE13BuildSmiUntagEPNS1_9ValueNodeE.exit

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit16: ; preds = %bb.m, %bb.l, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE7GetTypeEPNS1_9ValueNodeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store ptr %1, ptr %i.b, align 8
  %i.bu = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_15CheckedSmiUntagEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %i.b, i64 1), !inline_history !939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE13BuildSmiUntagEPNS1_9ValueNodeE.exit

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE13BuildSmiUntagEPNS1_9ValueNodeE.exit: ; preds = %bb.n, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit16
  %.0.i12 = phi ptr [ %i.bu, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit16 ], [ %i.bt, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store ptr %.0.i12, ptr %i.d, align 8
  %i.bv = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_20ChangeInt32ToFloat64EJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %i.d, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %bb.p

bb.o:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store ptr %1, ptr %i.e, align 8
  %i.bw = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_33UncheckedNumberOrOddballToFloat64EJRNS1_29TaggedToFloat64ConversionTypeEEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %i.e, i64 1, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %bb.p

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit: ; preds = %bb.f, %bb.e, %bb.e, %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  store ptr %1, ptr %i.f, align 8
  %i.bx = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_31CheckedNumberOrOddballToFloat64EJRNS1_29TaggedToFloat64ConversionTypeEEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %i.f, i64 1, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  br label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit, %bb.o, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE13BuildSmiUntagEPNS1_9ValueNodeE.exit
  %.0 = phi ptr [ %i.bv, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE13BuildSmiUntagEPNS1_9ValueNodeE.exit ], [ %i.bw, %bb.o ], [ %i.bx, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_20ChangeInt32ToFloat64EJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 132), align 4, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddNewNodeOrGetEquivalentINS1_20ChangeInt32ToFloat64EJEEEPT_bSt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, i1 noundef zeroext true, ptr %1, i64 %2)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = shl i64 %2, 3                            ; 3 uses
  %i.g = add i64 %i.f, 24                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = sub i64 %i.i, %i.k
  %i.m = icmp ugt i64 %i.g, %i.l
  br i1 %i.m, label %bb.d, label %_ZN2v88internal6maglev8NodeBase3NewINS1_20ChangeInt32ToFloat64EJEEEPT_PNS0_4ZoneEmDpOT0_.exit, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 noundef %i.g) #33
  %.pre.i.i.i = load i64, ptr %i.j, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_20ChangeInt32ToFloat64EJEEEPT_PNS0_4ZoneEmDpOT0_.exit

_ZN2v88internal6maglev8NodeBase3NewINS1_20ChangeInt32ToFloat64EJEEEPT_PNS0_4ZoneEmDpOT0_.exit: ; preds = %bb.c, %bb.d
  %i.n = phi i64 [ %.pre.i.i.i, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %i.o = add i64 %i.n, %i.g
  store i64 %i.o, ptr %i.j, align 8
  %i.p = add i64 %i.n, %i.f
  %i.q = inttoptr i64 %i.p to ptr                 ; 6 uses
  %i.r = shl i64 %2, 16
  %i.s = or i64 %i.r, 12094627905698
  store ptr null, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %.not.i10 = icmp eq i64 %2, 0
  br i1 %.not.i10, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE13SetNodeInputsINS1_20ChangeInt32ToFloat64ESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_20ChangeInt32ToFloat64EJEEEPT_PNS0_4ZoneEmDpOT0_.exit
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 -8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit ] ; 2 uses
  %.011.i11 = phi ptr [ %1, %.lr.ph ], [ %i.ai, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit ] ; 2 uses
  %i.x = load ptr, ptr %.011.i11, align 8         ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
end_hunk_2
