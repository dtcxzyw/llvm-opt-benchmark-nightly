Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86CallingConv?download=true
inline.NumInlined: 4000
inline.NumDeleted: 263
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumUnrolled: 148
begin_hunk_0_@_ZL9CC_X86_64jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
  br label %bb.ap

bb.ao:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit71.i
  %i.fl = zext i32 %i.fi to i64
  %i.fm = load ptr, ptr %i.fg, align 8, !tbaa !300
  %i.fn = getelementptr inbounds nuw [32 x i8], ptr %i.fm, i64 %i.fl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fn, ptr noundef nonnull align 8 dereferenceable(32) %77, i64 32, i1 false)
  %i.fo = load i32, ptr %i.fh, align 8, !tbaa !322
  %i.fp = add i32 %i.fo, 1
  store i32 %i.fp, ptr %i.fh, align 8, !tbaa !322
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #8
  br label %_ZL13CC_X86_64_GHCjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

bb.aq:                                            ; preds = %bb.a
  switch i16 %2, label %.thread282 [
    i16 5, label %.critedge.i107
    i16 6, label %.critedge.i107
    i16 7, label %.critedge.i107
    i16 8, label %.thread.i98
    i16 14, label %.critedge2.i97
    i16 15, label %.critedge2.i97
  ]

.critedge.i107:                                   ; preds = %bb.aq, %bb.aq, %bb.aq
  %i.fq = and i64 %4, 2
  %.not54.i = icmp eq i64 %i.fq, 0
  br i1 %.not54.i, label %bb.ar, label %.thread.i98

bb.ar:                                            ; preds = %.critedge.i107
  %i.fr = trunc i64 %4 to i1
  %..i108 = select i1 %i.fr, i32 2, i32 3
  br label %.thread.i98

.thread.i98:                                      ; preds = %bb.ar, %.critedge.i107, %bb.aq
  %.01829.i = phi i32 [ %3, %bb.aq ], [ 1, %.critedge.i107 ], [ %..i108, %bb.ar ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !300 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !301 ; 2 uses
  %i.fw = and i32 %i.fv, 1073741824
  %.not.i.i.i99 = icmp eq i32 %i.fw, 0
  br i1 %.not.i.i.i99, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i105, label %bb.as

bb.as:                                            ; preds = %.thread.i98
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !301 ; 4 uses
  %i.fz = and i32 %i.fy, 1048576
  %.not.i.i.1.i100 = icmp eq i32 %i.fz, 0
  br i1 %.not.i.i.1.i100, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i105, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ga = and i32 %i.fy, 268435456
  %.not.i.i.2.i101 = icmp eq i32 %i.ga, 0
  br i1 %.not.i.i.2.i101, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i105, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gb = and i32 %i.fy, 16777216
  %.not.i.i.3.i102 = icmp eq i32 %i.gb, 0
  br i1 %.not.i.i.3.i102, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i105, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gc = and i32 %i.fy, 4194304
  %.not.i.i.4.i103 = icmp eq i32 %i.gc, 0
  br i1 %.not.i.i.4.i103, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i105, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gd = and i32 %i.fv, 8388608
  %.not.i.i.5.i104 = icmp eq i32 %i.gd, 0
  br i1 %.not.i.i.5.i104, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i105, label %.critedge2.i97

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i105: ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %.thread.i98
  %.0613.i.i.lcssa.wide.i106 = phi i64 [ 0, %.thread.i98 ], [ 1, %bb.as ], [ 2, %bb.at ], [ 3, %bb.au ], [ 4, %bb.av ], [ 5, %bb.aw ]
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr @_ZZL14CC_X86_64_HiPEjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.i.lcssa.wide.i106
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext %i.gf) #8
  %i.gg = zext i16 %i.gf to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #8
  %i.gh = getelementptr inbounds nuw i8, ptr %72, i64 8
  store i8 0, ptr %i.gh, align 8, !tbaa !303, !alias.scope !408
  %i.gi = getelementptr inbounds nuw i8, ptr %72, i64 16
  store i32 %0, ptr %i.gi, align 8, !tbaa !308, !alias.scope !408
  %i.gj = getelementptr inbounds nuw i8, ptr %72, i64 20 ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 4, !alias.scope !408
  %i.gl = and i8 %i.gk, -128
  %i.gm = trunc i32 %.01829.i to i8
  %i.gn = shl i8 %i.gm, 1
  %i.go = and i8 %i.gn, 126
  %i.gp = or disjoint i8 %i.gl, %i.go
  store i8 %i.gp, ptr %i.gj, align 4, !alias.scope !408
  %i.gq = getelementptr inbounds nuw i8, ptr %72, i64 22
  store i16 %1, ptr %i.gq, align 2, !tbaa !319, !alias.scope !408
  %i.gr = getelementptr inbounds nuw i8, ptr %72, i64 24
  store i16 8, ptr %i.gr, align 8, !tbaa !319, !alias.scope !408
  store i32 %i.gg, ptr %72, align 8, !tbaa !301, !alias.scope !408
  %i.gs = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 3 uses
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !322 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !323
  %.not.i.i20.i = icmp ult i32 %i.gv, %i.gx
  br i1 %.not.i.i20.i, label %bb.ay, label %bb.ax, !prof !324

bb.ax:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i105
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, ptr noundef nonnull align 8 dereferenceable(26) %72)
  br label %bb.az

bb.ay:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i105
  %i.gy = zext i32 %i.gv to i64
  %i.gz = load ptr, ptr %i.gt, align 8, !tbaa !300
  %i.ha = getelementptr inbounds nuw [32 x i8], ptr %i.gz, i64 %i.gy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ha, ptr noundef nonnull align 8 dereferenceable(32) %72, i64 32, i1 false)
  %i.hb = load i32, ptr %i.gu, align 8, !tbaa !322
  %i.hc = add i32 %i.hb, 1
  store i32 %i.hc, ptr %i.gu, align 8, !tbaa !322
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #8
  br label %_ZL13CC_X86_64_GHCjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

.critedge2.i97:                                   ; preds = %bb.aq, %bb.aw, %bb.aq
  %.sroa.015.02843.i = phi i16 [ 8, %bb.aw ], [ %2, %bb.aq ], [ %2, %bb.aq ]
  %.0183040.i = phi i32 [ %.01829.i, %bb.aw ], [ %3, %bb.aq ], [ %3, %bb.aq ]
  %i.hd = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.he = load i8, ptr %i.hd, align 8, !tbaa !334, !range !298, !noundef !299
  %i.hf = trunc nuw i8 %i.he to i1
  %i.hg = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !335 ; 2 uses
  br i1 %i.hf, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.critedge2.i97
  %i.hi = add i64 %i.hh, 15
  %i.hj = and i64 %i.hi, -8                       ; 2 uses
  %i.hk = sub i64 0, %i.hj
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit.i

bb.bb:                                            ; preds = %.critedge2.i97
  %i.hl = add i64 %i.hh, 7
  %i.hm = and i64 %i.hl, -8                       ; 2 uses
  %i.hn = add nsw i64 %i.hm, 8
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit.i

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit.i: ; preds = %bb.bb, %bb.ba
  %.sink.i = phi i64 [ %i.hj, %bb.ba ], [ %i.hn, %bb.bb ]
  %.0.i.i = phi i64 [ %i.hk, %bb.ba ], [ %i.hm, %bb.bb ]
  store i64 %.sink.i, ptr %i.hg, align 8, !tbaa !335
  %i.ho = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.ho, align 8, !tbaa !336
  %.sroa.speculated.i.i = tail call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i.i, i8 3)
  store i8 %.sroa.speculated.i.i, ptr %i.ho, align 8, !tbaa !336
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %6, i8 3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #8
  %i.hp = getelementptr inbounds nuw i8, ptr %73, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %73, i64 16
  store i32 %0, ptr %i.hq, align 8, !tbaa !308, !alias.scope !411
  %i.hr = getelementptr inbounds nuw i8, ptr %73, i64 20 ; 2 uses
  %i.hs = load i8, ptr %i.hr, align 4, !alias.scope !411
  %i.ht = and i8 %i.hs, -128
  %i.hu = trunc i32 %.0183040.i to i8
  %i.hv = shl i8 %i.hu, 1
  %i.hw = and i8 %i.hv, 126
  %i.hx = or disjoint i8 %i.ht, %i.hw
  store i8 %i.hx, ptr %i.hr, align 4, !alias.scope !411
  %i.hy = getelementptr inbounds nuw i8, ptr %73, i64 22
  store i16 %1, ptr %i.hy, align 2, !tbaa !319, !alias.scope !411
  %i.hz = getelementptr inbounds nuw i8, ptr %73, i64 24
  store i16 %.sroa.015.02843.i, ptr %i.hz, align 8, !tbaa !319, !alias.scope !411
  store i8 1, ptr %i.hp, align 8, !tbaa !303, !alias.scope !411
  store i64 %.0.i.i, ptr %73, align 8, !tbaa !340, !alias.scope !411
  %i.ia = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 3 uses
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !322 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !323
  %.not.i.i21.i = icmp ult i32 %i.id, %i.if
  br i1 %.not.i.i21.i, label %bb.bd, label %bb.bc, !prof !324

bb.bc:                                            ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ib, ptr noundef nonnull align 8 dereferenceable(26) %73)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit22.i

bb.bd:                                            ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit.i
  %i.ig = zext i32 %i.id to i64
  %i.ih = load ptr, ptr %i.ib, align 8, !tbaa !300
  %i.ii = getelementptr inbounds nuw [32 x i8], ptr %i.ih, i64 %i.ig
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ii, ptr noundef nonnull align 8 dereferenceable(32) %73, i64 32, i1 false)
  %i.ij = load i32, ptr %i.ic, align 8, !tbaa !322
  %i.ik = add i32 %i.ij, 1
  store i32 %i.ik, ptr %i.ic, align 8, !tbaa !322
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit22.i

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit22.i: ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #8
  br label %_ZL13CC_X86_64_GHCjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

.thread282:                                       ; preds = %bb.b, %.thread170.i, %.critedge6.i, %bb.l, %.thread132.i, %bb.am, %bb.aq
  %i.il = icmp ne i32 %i.c, 13
  tail call void @llvm.assume(i1 %i.il)
  br label %bb.hb

_ZL14CC_X86_64_HiPEjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit: ; preds = %bb.a
  %i.im = icmp ne i32 %i.c, 13
  tail call void @llvm.assume(i1 %i.im)
  %i.in = icmp eq i32 %i.c, 79
  br i1 %i.in, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZL14CC_X86_64_HiPEjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit
  %i.io = tail call fastcc noundef zeroext i1 @_ZL14CC_X86_Win64_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(420) %6)
  br i1 %i.io, label %thread-pre-split, label %_ZL13CC_X86_64_GHCjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

thread-pre-split:                                 ; preds = %bb.be
  %.pr83 = load i32, ptr %6, align 8, !tbaa !8
  br label %bb.bf

bb.bf:                                            ; preds = %thread-pre-split, %_ZL14CC_X86_64_HiPEjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit
  %i.ip = phi i32 [ %.pr83, %thread-pre-split ], [ %i.c, %_ZL14CC_X86_64_HiPEjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit ] ; 2 uses
  %i.iq = icmp eq i32 %i.ip, 78
  br i1 %i.iq, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ir = tail call fastcc noundef zeroext i1 @_ZL11CC_X86_64_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(420) %6)
  br i1 %i.ir, label %._crit_edge, label %_ZL13CC_X86_64_GHCjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

._crit_edge:                                      ; preds = %bb.bg
  %.pre = load i32, ptr %6, align 8, !tbaa !8
  br label %bb.bh

bb.bh:                                            ; preds = %._crit_edge, %bb.bf
  %i.is = phi i32 [ %.pre, %._crit_edge ], [ %i.ip, %bb.bf ] ; 2 uses
  %i.it = icmp eq i32 %i.is, 80
  br i1 %i.it, label %bb.bi, label %bb.ck

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %70)
  call void @llvm.lifetime.start.p0(ptr nonnull %71)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %1, ptr %70, align 2
  store i16 %2, ptr %71, align 2
  store i32 %0, ptr %i.a, align 4, !tbaa !301
  store i32 %3, ptr %i.b, align 4, !tbaa !361
  %i.iu = and i64 %4, 524288
  %.not19.i.i = icmp eq i64 %i.iu, 0
  br i1 %.not19.i.i, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.iv = and i64 %4, 131072
  %.not22.i.i = icmp eq i64 %i.iv, 0
  br i1 %.not22.i.i, label %_ZL23CC_X86_Win64_VectorCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call fastcc void @_ZL31CC_X86_VectorCallAssignRegisterRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE(ptr noundef nonnull readonly align 4 dereferenceable(4) %i.a, ptr noundef nonnull readonly align 2 dereferenceable(2) %70, ptr noundef nonnull readonly align 2 dereferenceable(2) %71, ptr noundef nonnull readonly align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(420) %6)
  br label %_ZL23CC_X86_Win64_VectorCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread

bb.bl:                                            ; preds = %bb.bi
  %i.iw = add i16 %1, -12
  %or.cond.i.i.i = icmp ult i16 %i.iw, 7
  %i.ix = add i16 %1, -105
  %or.cond3.i.i.i = icmp ult i16 %i.ix, 58
  %or.cond4.i.i.i = or i1 %or.cond.i.i.i, %or.cond3.i.i.i
  %i.iy = add i16 %1, -195
  %spec.select.i.i.i = icmp ult i16 %i.iy, 21
  %i.iz = or i1 %spec.select.i.i.i, %or.cond4.i.i.i
  br i1 %i.iz, label %.critedge.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ja = add i16 %1, -19                         ; 2 uses
  %spec.select.i52.i.i = icmp ult i16 %i.ja, 197
  br i1 %spec.select.i52.i.i, label %bb.bn, label %.critedge48.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.jb = zext nneg i16 %1 to i64
  %i.jc = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.jb ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.jc, i64 -8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.jd = trunc nuw i8 %.sroa.2.0.copyload.i.i.i to i1
  br i1 %i.jd, label %bb.bo, label %_ZNK4llvm8TypeSizecvmEv.exit.i.i

bb.bo:                                            ; preds = %bb.bn
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.2) #9
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i.i:                 ; preds = %bb.bn
  %i.je = getelementptr i8, ptr %i.jc, i64 -16
  %.sroa.0.0.copyload.i.i.i109 = load i64, ptr %i.je, align 16
  %i.jf = icmp ult i64 %.sroa.0.0.copyload.i.i.i109, 128
  br i1 %i.jf, label %.critedge48.i.i, label %.critedge.i.i

.critedge48.i.i:                                  ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i, %bb.bm
  %i.jg = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !300 ; 7 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 12
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !301
  %i.jk = and i32 %i.jj, 16777216
  %.not20.i.i = icmp eq i32 %i.jk, 0
  br i1 %.not20.i.i, label %_ZL23CC_X86_Win64_VectorCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit, label %bb.bp

bb.bp:                                            ; preds = %.critedge48.i.i
  %spec.select.i.i.i.i.i = icmp ult i16 %i.ja, 144
  br i1 %spec.select.i.i.i.i.i, label %_ZNK4llvm3MVT14is512BitVectorEv.exit.i.i.i, label %.lr.ph.i.i.i.i

_ZNK4llvm3MVT14is512BitVectorEv.exit.i.i.i:       ; preds = %bb.bp
  %i.jl = zext nneg i16 %1 to i64
  %i.jm = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.jl
  %i.jn = getelementptr i8, ptr %i.jm, i64 -16
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.jn, align 16 ; 2 uses
  %switch.selectcmp.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 256
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, ptr @_ZZL24CC_X86_VectorCallGetSSEsRKN4llvm3MVTEE10RegListYMM, ptr @_ZZL24CC_X86_VectorCallGetSSEsRKN4llvm3MVTEE10RegListXMM
  %switch.selectcmp1.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 512
  %switch.select2.i.i.i = select i1 %switch.selectcmp1.i.i.i, ptr @_ZZL24CC_X86_VectorCallGetSSEsRKN4llvm3MVTEE10RegListZMM, ptr %switch.select.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK4llvm3MVT14is512BitVectorEv.exit.i.i.i, %bb.bp
  %.sroa.0.0.i.i.i = phi ptr [ %switch.select2.i.i.i, %_ZNK4llvm3MVT14is512BitVectorEv.exit.i.i.i ], [ @_ZZL24CC_X86_VectorCallGetSSEsRKN4llvm3MVTEE10RegListXMM, %bb.bp ] ; 6 uses
  %i.jo = load i16, ptr %.sroa.0.0.i.i.i, align 2, !tbaa !302 ; 2 uses
  %i.jp = zext i16 %i.jo to i32                   ; 2 uses
  %i.jq = lshr i32 %i.jp, 5
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !301
  %i.ju = and i32 %i.jp, 31
  %i.jv = shl nuw i32 1, %i.ju
  %i.jw = and i32 %i.jv, %i.jt
  %.not.i.i.i.i = icmp eq i32 %i.jw, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 2
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !302 ; 2 uses
  %i.jz = zext i16 %i.jy to i32                   ; 2 uses
  %i.ka = lshr i32 %i.jz, 5
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !301
  %i.ke = and i32 %i.jz, 31
  %i.kf = shl nuw i32 1, %i.ke
  %i.kg = and i32 %i.kf, %i.kd
  %.not.i.i.1.i.i = icmp eq i32 %i.kg, 0
  br i1 %.not.i.i.1.i.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 4
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !302 ; 2 uses
  %i.kj = zext i16 %i.ki to i32                   ; 2 uses
  %i.kk = lshr i32 %i.kj, 5
  %i.kl = zext nneg i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.kl
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !301
  %i.ko = and i32 %i.kj, 31
  %i.kp = shl nuw i32 1, %i.ko
  %i.kq = and i32 %i.kp, %i.kn
  %.not.i.i.2.i.i = icmp eq i32 %i.kq, 0
  br i1 %.not.i.i.2.i.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 6
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !302 ; 2 uses
  %i.kt = zext i16 %i.ks to i32                   ; 2 uses
  %i.ku = lshr i32 %i.kt, 5
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !301
  %i.ky = and i32 %i.kt, 31
  %i.kz = shl nuw i32 1, %i.ky
  %i.la = and i32 %i.kz, %i.kx
  %.not.i.i.3.i.i = icmp eq i32 %i.la, 0
  br i1 %.not.i.i.3.i.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !302 ; 2 uses
  %i.ld = zext i16 %i.lc to i32                   ; 2 uses
  %i.le = lshr i32 %i.ld, 5
  %i.lf = zext nneg i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !301
  %i.li = and i32 %i.ld, 31
  %i.lj = shl nuw i32 1, %i.li
  %i.lk = and i32 %i.lj, %i.lh
  %.not.i.i.4.i.i = icmp eq i32 %i.lk, 0
  br i1 %.not.i.i.4.i.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 10
  %i.lm = load i16, ptr %i.ll, align 2, !tbaa !302 ; 2 uses
  %i.ln = zext i16 %i.lm to i32                   ; 2 uses
  %i.lo = lshr i32 %i.ln, 5
  %i.lp = zext nneg i32 %i.lo to i64
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.lp
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !301
  %i.ls = and i32 %i.ln, 31
  %i.lt = shl nuw i32 1, %i.ls
  %i.lu = and i32 %i.lt, %i.lr
  %.not.i.i.5.i.i = icmp eq i32 %i.lu, 0
  br i1 %.not.i.i.5.i.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i.i.i, label %_ZL23CC_X86_Win64_VectorCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

end_hunk_0
begin_hunk_1_@_ZL12RetCC_X86_64jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
bb.bo:                                            ; preds = %bb.bn
  %i.id = and i32 %i.ib, 256
  %.not.i.i104.6.i = icmp eq i32 %i.id, 0
  br i1 %.not.i.i104.6.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit107.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ie = and i32 %i.ib, 1024
  %.not.i.i104.7.i = icmp eq i32 %i.ie, 0
  br i1 %.not.i.i104.7.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit107.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.if = and i32 %i.ib, 2048
  %.not.i.i104.8.i = icmp eq i32 %i.if, 0
  br i1 %.not.i.i104.8.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit107.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ig = and i32 %i.ib, 8192
  %.not.i.i104.9.i = icmp eq i32 %i.ig, 0
  br i1 %.not.i.i104.9.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit107.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ih = and i32 %i.ib, 16384
  %.not.i.i104.10.i = icmp eq i32 %i.ih, 0
  br i1 %.not.i.i104.10.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit107.i, label %.thread181.thread.i

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit107.i: ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %.thread152.i
  %.0613.i.i103.lcssa.wide.i = phi i64 [ 0, %.thread152.i ], [ 1, %bb.bj ], [ 2, %bb.bk ], [ 3, %bb.bl ], [ 4, %bb.bm ], [ 5, %bb.bn ], [ 6, %bb.bo ], [ 7, %bb.bp ], [ 8, %bb.bq ], [ 9, %bb.br ], [ 10, %bb.bs ]
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr @_ZZL25RetCC_X86_Win64_RegCallv4jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList3, i64 %.0613.i.i103.lcssa.wide.i
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.ij) #8
  %i.ik = zext i16 %i.ij to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #8
  %i.il = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i8 0, ptr %i.il, align 8, !tbaa !303, !alias.scope !665
  %i.im = getelementptr inbounds nuw i8, ptr %31, i64 16
  store i32 %0, ptr %i.im, align 8, !tbaa !308, !alias.scope !665
  %i.in = getelementptr inbounds nuw i8, ptr %31, i64 20 ; 2 uses
  %i.io = load i8, ptr %i.in, align 4, !alias.scope !665
  %i.ip = and i8 %i.io, -128
  %i.iq = trunc i32 %.2132157.i to i8
  %i.ir = shl i8 %i.iq, 1
  %i.is = and i8 %i.ir, 126
  %i.it = or disjoint i8 %i.ip, %i.is
  store i8 %i.it, ptr %i.in, align 4, !alias.scope !665
  %i.iu = getelementptr inbounds nuw i8, ptr %31, i64 22
  store i16 %1, ptr %i.iu, align 2, !tbaa !319, !alias.scope !665
  %i.iv = getelementptr inbounds nuw i8, ptr %31, i64 24
  store i16 7, ptr %i.iv, align 8, !tbaa !319, !alias.scope !665
  store i32 %i.ik, ptr %31, align 8, !tbaa !301, !alias.scope !665
  %i.iw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 3 uses
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !322 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 12
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !323
  %.not.i.i108.i = icmp ult i32 %i.iz, %i.jb
  br i1 %.not.i.i108.i, label %bb.bu, label %bb.bt, !prof !324

bb.bt:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit107.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ix, ptr noundef nonnull align 8 dereferenceable(26) %31)
  br label %bb.bv

bb.bu:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit107.i
  %i.jc = zext i32 %i.iz to i64
  %i.jd = load ptr, ptr %i.ix, align 8, !tbaa !300
  %i.je = getelementptr inbounds nuw [32 x i8], ptr %i.jd, i64 %i.jc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.je, ptr noundef nonnull align 8 dereferenceable(32) %31, i64 32, i1 false)
  %i.jf = load i32, ptr %i.iy, align 8, !tbaa !322
  %i.jg = add i32 %i.jf, 1
  store i32 %i.jg, ptr %i.iy, align 8, !tbaa !322
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #8
  br label %_ZL25RetCC_X86_Win64_RegCallv4jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread

bb.bw:                                            ; preds = %bb.ad
  %i.jh = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !300 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !301 ; 5 uses
  %i.jl = and i32 %i.jk, 524288
  %.not.i.i111.i = icmp eq i32 %i.jl, 0
  br i1 %.not.i.i111.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jm = and i32 %i.jk, 4194304
  %.not.i.i111.1.i = icmp eq i32 %i.jm, 0
  br i1 %.not.i.i111.1.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jn = and i32 %i.jk, 16777216
  %.not.i.i111.2.i = icmp eq i32 %i.jn, 0
  br i1 %.not.i.i111.2.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jo = and i32 %i.jk, 8388608
  %.not.i.i111.3.i = icmp eq i32 %i.jo, 0
  br i1 %.not.i.i111.3.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jp = and i32 %i.jk, 268435456
  %.not.i.i111.4.i = icmp eq i32 %i.jp, 0
  br i1 %.not.i.i111.4.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !301 ; 6 uses
  %i.js = and i32 %i.jr, 8388608
  %.not.i.i111.5.i = icmp eq i32 %i.js, 0
  br i1 %.not.i.i111.5.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jt = and i32 %i.jr, 16777216
  %.not.i.i111.6.i = icmp eq i32 %i.jt, 0
  br i1 %.not.i.i111.6.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ju = and i32 %i.jr, 67108864
  %.not.i.i111.7.i = icmp eq i32 %i.ju, 0
  br i1 %.not.i.i111.7.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jv = and i32 %i.jr, 134217728
  %.not.i.i111.8.i = icmp eq i32 %i.jv, 0
  br i1 %.not.i.i111.8.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jw = and i32 %i.jr, 536870912
  %.not.i.i111.9.i = icmp eq i32 %i.jw, 0
  br i1 %.not.i.i111.9.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jx = and i32 %i.jr, 1073741824
  %.not.i.i111.10.i = icmp eq i32 %i.jx, 0
  br i1 %.not.i.i111.10.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i, label %.thread174.i

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i: ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw
  %.0613.i.i110.lcssa.wide.i = phi i64 [ 0, %bb.bw ], [ 1, %bb.bx ], [ 2, %bb.by ], [ 3, %bb.bz ], [ 4, %bb.ca ], [ 5, %bb.cb ], [ 6, %bb.cc ], [ 7, %bb.cd ], [ 8, %bb.ce ], [ 9, %bb.cf ], [ 10, %bb.cg ]
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr @_ZZL25RetCC_X86_Win64_RegCallv4jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList5, i64 %.0613.i.i110.lcssa.wide.i
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.jz) #8
  %i.ka = zext i16 %i.jz to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #8
  %i.kb = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i8 0, ptr %i.kb, align 8, !tbaa !303, !alias.scope !668
  %i.kc = getelementptr inbounds nuw i8, ptr %32, i64 16
  store i32 %0, ptr %i.kc, align 8, !tbaa !308, !alias.scope !668
  %i.kd = getelementptr inbounds nuw i8, ptr %32, i64 20 ; 2 uses
  %i.ke = load i8, ptr %i.kd, align 4, !alias.scope !668
  %i.kf = and i8 %i.ke, -128
  %i.kg = trunc i32 %3 to i8
  %i.kh = shl i8 %i.kg, 1
  %i.ki = and i8 %i.kh, 126
  %i.kj = or disjoint i8 %i.kf, %i.ki
  store i8 %i.kj, ptr %i.kd, align 4, !alias.scope !668
  %i.kk = getelementptr inbounds nuw i8, ptr %32, i64 22
  store i16 %1, ptr %i.kk, align 2, !tbaa !319, !alias.scope !668
  %i.kl = getelementptr inbounds nuw i8, ptr %32, i64 24
  store i16 8, ptr %i.kl, align 8, !tbaa !319, !alias.scope !668
  store i32 %i.ka, ptr %32, align 8, !tbaa !301, !alias.scope !668
  %i.km = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8 ; 3 uses
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !322 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 12
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !323
  %.not.i.i115.i = icmp ult i32 %i.kp, %i.kr
  br i1 %.not.i.i115.i, label %bb.ci, label %bb.ch, !prof !324

bb.ch:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.kn, ptr noundef nonnull align 8 dereferenceable(26) %32)
  br label %bb.cj

bb.ci:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i
  %i.ks = zext i32 %i.kp to i64
  %i.kt = load ptr, ptr %i.kn, align 8, !tbaa !300
  %i.ku = getelementptr inbounds nuw [32 x i8], ptr %i.kt, i64 %i.ks
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ku, ptr noundef nonnull align 8 dereferenceable(32) %32, i64 32, i1 false)
  %i.kv = load i32, ptr %i.ko, align 8, !tbaa !322
  %i.kw = add i32 %i.kv, 1
  store i32 %i.kw, ptr %i.ko, align 8, !tbaa !322
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #8
  br label %_ZL25RetCC_X86_Win64_RegCallv4jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread

bb.ck:                                            ; preds = %bb.ad
  store i16 8, ptr %28, align 2, !tbaa !319
  %i.kx = and i64 %4, 2
  %.not264.i = icmp eq i64 %i.kx, 0
  br i1 %.not264.i, label %bb.cl, label %.thread174.i

bb.cl:                                            ; preds = %bb.ck
  %i.ky = trunc i64 %4 to i1
  %spec.select262.i = select i1 %i.ky, i32 2, i32 3
  br label %.thread174.i

.thread181.thread.i:                              ; preds = %bb.bs, %bb.bf, %bb.as
  %.3.ph.i = phi i32 [ %.2132157.i, %bb.bs ], [ %.2131250.i, %bb.bf ], [ %.2233.i, %bb.as ]
  %.sroa.0.0.copyload106.ph.i = phi i16 [ 7, %bb.bs ], [ 6, %bb.bf ], [ 5, %bb.as ]
  %i.kz = load ptr, ptr %i.dn, align 8, !tbaa !39, !nonnull !299, !align !321
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !40, !nonnull !299, !align !321
  br label %bb.db

.thread174.i:                                     ; preds = %bb.cl, %bb.ck, %bb.cg, %bb.ad
  %.3.i = phi i32 [ %spec.select262.i, %bb.cl ], [ 1, %bb.ck ], [ %3, %bb.ad ], [ %3, %bb.cg ] ; 3 uses
  %.sroa.0.0.copyload106.i = phi i16 [ 8, %bb.cl ], [ 8, %bb.ck ], [ %2, %bb.ad ], [ 8, %bb.cg ] ; 2 uses
  %i.lc = load ptr, ptr %i.dn, align 8, !tbaa !39, !nonnull !299, !align !321
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !40, !nonnull !299, !align !321 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 522
  %i.lg = load i8, ptr %i.lf, align 2, !tbaa !156, !range !298, !noundef !299
  %i.lh = trunc nuw i8 %i.lg to i1
  %i.li = icmp eq i16 %.sroa.0.0.copyload106.i, 8 ; 2 uses
  %or.cond.i = and i1 %i.li, %i.lh
  br i1 %or.cond.i, label %bb.cm, label %.thread181.i

bb.cm:                                            ; preds = %.thread174.i
  %i.lj = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !300 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !301 ; 5 uses
  %i.ln = and i32 %i.lm, 524288
  %.not.i.i118.i = icmp eq i32 %i.ln, 0
  br i1 %.not.i.i118.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.lo = and i32 %i.lm, 4194304
  %.not.i.i118.1.i = icmp eq i32 %i.lo, 0
  br i1 %.not.i.i118.1.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.lp = and i32 %i.lm, 16777216
  %.not.i.i118.2.i = icmp eq i32 %i.lp, 0
  br i1 %.not.i.i118.2.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.lq = and i32 %i.lm, 8388608
  %.not.i.i118.3.i = icmp eq i32 %i.lq, 0
  br i1 %.not.i.i118.3.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lr = and i32 %i.lm, 268435456
  %.not.i.i118.4.i = icmp eq i32 %i.lr, 0
  br i1 %.not.i.i118.4.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lk, i64 12
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !301 ; 6 uses
  %i.lu = and i32 %i.lt, 8388608
  %.not.i.i118.5.i = icmp eq i32 %i.lu, 0
  br i1 %.not.i.i118.5.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lv = and i32 %i.lt, 16777216
  %.not.i.i118.6.i = icmp eq i32 %i.lv, 0
  br i1 %.not.i.i118.6.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lw = and i32 %i.lt, 67108864
  %.not.i.i118.7.i = icmp eq i32 %i.lw, 0
  br i1 %.not.i.i118.7.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.lx = and i32 %i.lt, 134217728
  %.not.i.i118.8.i = icmp eq i32 %i.lx, 0
  br i1 %.not.i.i118.8.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ly = and i32 %i.lt, 536870912
  %.not.i.i118.9.i = icmp eq i32 %i.ly, 0
  br i1 %.not.i.i118.9.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.lz = and i32 %i.lt, 1073741824
  %.not.i.i118.10.i = icmp eq i32 %i.lz, 0
  br i1 %.not.i.i118.10.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i, label %.thread181.i

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i: ; preds = %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm
  %.0613.i.i117.lcssa.wide.i = phi i64 [ 0, %bb.cm ], [ 1, %bb.cn ], [ 2, %bb.co ], [ 3, %bb.cp ], [ 4, %bb.cq ], [ 5, %bb.cr ], [ 6, %bb.cs ], [ 7, %bb.ct ], [ 8, %bb.cu ], [ 9, %bb.cv ], [ 10, %bb.cw ]
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr @_ZZL25RetCC_X86_Win64_RegCallv4jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList5, i64 %.0613.i.i117.lcssa.wide.i
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.mb) #8
  %i.mc = zext i16 %i.mb to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #8
  %i.md = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i8 0, ptr %i.md, align 8, !tbaa !303, !alias.scope !671
  %i.me = getelementptr inbounds nuw i8, ptr %33, i64 16
  store i32 %0, ptr %i.me, align 8, !tbaa !308, !alias.scope !671
  %i.mf = getelementptr inbounds nuw i8, ptr %33, i64 20 ; 2 uses
  %i.mg = load i8, ptr %i.mf, align 4, !alias.scope !671
  %i.mh = and i8 %i.mg, -128
  %i.mi = trunc i32 %.3.i to i8
  %i.mj = shl i8 %i.mi, 1
  %i.mk = and i8 %i.mj, 126
  %i.ml = or disjoint i8 %i.mh, %i.mk
  store i8 %i.ml, ptr %i.mf, align 4, !alias.scope !671
  %i.mm = getelementptr inbounds nuw i8, ptr %33, i64 22
  store i16 %1, ptr %i.mm, align 2, !tbaa !319, !alias.scope !671
  %i.mn = getelementptr inbounds nuw i8, ptr %33, i64 24
  store i16 8, ptr %i.mn, align 8, !tbaa !319, !alias.scope !671
  store i32 %i.mc, ptr %33, align 8, !tbaa !301, !alias.scope !671
  %i.mo = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8 ; 3 uses
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !322 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mp, i64 12
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !323
  %.not.i.i122.i = icmp ult i32 %i.mr, %i.mt
  br i1 %.not.i.i122.i, label %bb.cy, label %bb.cx, !prof !324

bb.cx:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.mp, ptr noundef nonnull align 8 dereferenceable(26) %33)
  br label %bb.cz

bb.cy:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i
  %i.mu = zext i32 %i.mr to i64
  %i.mv = load ptr, ptr %i.mp, align 8, !tbaa !300
  %i.mw = getelementptr inbounds nuw [32 x i8], ptr %i.mv, i64 %i.mu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.mw, ptr noundef nonnull align 8 dereferenceable(32) %33, i64 32, i1 false)
  %i.mx = load i32, ptr %i.mq, align 8, !tbaa !322
  %i.my = add i32 %i.mx, 1
  store i32 %i.my, ptr %i.mq, align 8, !tbaa !322
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #8
  br label %_ZL25RetCC_X86_Win64_RegCallv4jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread

.thread181.i:                                     ; preds = %bb.cw, %.thread174.i
  %i.mz = getelementptr inbounds nuw i8, ptr %i.le, i64 521
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !429, !range !298, !noundef !299
  %i.nb = trunc nuw i8 %i.na to i1
  %or.cond263.i = and i1 %i.li, %i.nb
  br i1 %or.cond263.i, label %bb.da, label %bb.db

bb.da:                                            ; preds = %.thread181.i
  %i.nc = call fastcc noundef zeroext i1 @_ZL29CC_X86_32_RegCall_Assign2RegsRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE(i32 %0, i16 %1, ptr noundef nonnull align 2 dereferenceable(2) %28, i32 %.3.i, ptr noundef nonnull align 8 dereferenceable(420) %5)
  br i1 %i.nc, label %_ZL25RetCC_X86_Win64_RegCallv4jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread, label %_ZL25RetCC_X86_Win64_RegCallv4jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

bb.db:                                            ; preds = %.thread181.i, %.thread181.thread.i
  %.3311319.i = phi i32 [ %.3.ph.i, %.thread181.thread.i ], [ %.3.i, %.thread181.i ] ; 5 uses
  %.sroa.0.0.copyload106314318.i = phi i16 [ %.sroa.0.0.copyload106.ph.i, %.thread181.thread.i ], [ %.sroa.0.0.copyload106.i, %.thread181.i ] ; 7 uses
  %i.nd = phi ptr [ %i.lb, %.thread181.thread.i ], [ %i.le, %.thread181.i ] ; 4 uses
  switch i16 %.sroa.0.0.copyload106314318.i, label %_ZL25RetCC_X86_Win64_RegCallv4jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit [
    i16 16, label %bb.dc
    i16 14, label %.critedge2.i
    i16 15, label %.critedge2.i
    i16 17, label %.critedge2.i
    i16 48, label %.critedge4.i
    i16 62, label %.critedge4.i
    i16 73, label %.critedge4.i
    i16 94, label %.critedge4.i
    i16 136, label %.critedge4.i
    i16 154, label %.critedge4.i
    i16 49, label %.critedge6.i
    i16 63, label %.critedge6.i
    i16 77, label %.critedge6.i
    i16 96, label %.critedge6.i
    i16 140, label %.critedge6.i
    i16 156, label %.critedge6.i
    i16 50, label %.critedge8.i
    i16 64, label %.critedge8.i
    i16 82, label %.critedge8.i
    i16 97, label %.critedge8.i
    i16 145, label %.critedge8.i
    i16 157, label %.critedge8.i
  ]

bb.dc:                                            ; preds = %bb.db
  %i.ne = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !300
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 12
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !301 ; 2 uses
  %i.ni = and i32 %i.nh, 128
  %.not.i.i125.i = icmp eq i32 %i.ni, 0
  br i1 %.not.i.i125.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit128.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.nj = and i32 %i.nh, 256
  %.not.i.i125.1.i = icmp eq i32 %i.nj, 0
  br i1 %.not.i.i125.1.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit128.i, label %_ZL25RetCC_X86_Win64_RegCallv4jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit128.i: ; preds = %bb.dd, %bb.dc
  %.0613.i.i124.lcssa.wide.i = phi i64 [ 0, %bb.dc ], [ 1, %bb.dd ]
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr @_ZZL24RetCC_X86_SysV64_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList6, i64 %.0613.i.i124.lcssa.wide.i
  %i.nl = load i16, ptr %i.nk, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.nl) #8
  %i.nm = zext i16 %i.nl to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #8
  %i.nn = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i8 0, ptr %i.nn, align 8, !tbaa !303, !alias.scope !674
  %i.no = getelementptr inbounds nuw i8, ptr %34, i64 16
  store i32 %0, ptr %i.no, align 8, !tbaa !308, !alias.scope !674
  %i.np = getelementptr inbounds nuw i8, ptr %34, i64 20 ; 2 uses
  %i.nq = load i8, ptr %i.np, align 4, !alias.scope !674
  %i.nr = and i8 %i.nq, -128
  %i.ns = trunc i32 %.3311319.i to i8
  %i.nt = shl i8 %i.ns, 1
end_hunk_1
begin_hunk_2_@_ZL12RetCC_X86_64jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
  br i1 %.not.i.i143.i240, label %bb.ke, label %bb.kd, !prof !324

bb.kd:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit142.i238
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ahw, ptr noundef nonnull align 8 dereferenceable(26) %25)
  br label %bb.kf

bb.ke:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit142.i238
  %i.aib = zext i32 %i.ahy to i64
  %i.aic = load ptr, ptr %i.ahw, align 8, !tbaa !300
  %i.aid = getelementptr inbounds nuw [32 x i8], ptr %i.aic, i64 %i.aib
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aid, ptr noundef nonnull align 8 dereferenceable(32) %25, i64 32, i1 false)
  %i.aie = load i32, ptr %i.ahx, align 8, !tbaa !322
  %i.aif = add i32 %i.aie, 1
  store i32 %i.aif, ptr %i.ahx, align 8, !tbaa !322
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kd
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #8
  br label %_ZL23RetCC_X86_Win64_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread

.thread210.i221:                                  ; preds = %bb.kc, %.critedge4.i220
  switch i16 %2, label %bb.ky [
    i16 49, label %.critedge6.i200
    i16 63, label %.critedge6.i200
    i16 77, label %.critedge6.i200
    i16 96, label %.critedge6.i200
    i16 140, label %.critedge6.i200
    i16 145, label %.critedge8.i197
    i16 50, label %.critedge8.i197
    i16 64, label %.critedge8.i197
    i16 82, label %.critedge8.i197
    i16 97, label %.critedge8.i197
  ]

.critedge6.i200:                                  ; preds = %bb.fn, %bb.fn, %bb.fn, %bb.fn, %bb.fn, %bb.fn, %.thread210.i221, %.thread210.i221, %.thread210.i221, %.thread210.i221, %.thread210.i221
  %i.aig = getelementptr inbounds nuw i8, ptr %i.uf, i64 360
  %i.aih = load i32, ptr %i.aig, align 8, !tbaa !398
  %i.aii = icmp sgt i32 %i.aih, 6
  br i1 %i.aii, label %bb.kg, label %.thread222.i201

bb.kg:                                            ; preds = %.critedge6.i200
  %i.aij = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.aik = load ptr, ptr %i.aij, align 8, !tbaa !300 ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 20
  %i.aim = load i32, ptr %i.ail, align 4, !tbaa !301
  %.not.i.i146.i202 = icmp sgt i32 %i.aim, -1
  br i1 %.not.i.i146.i202, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit149.i218, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aik, i64 24
  %i.aio = load i32, ptr %i.ain, align 4, !tbaa !301 ; 15 uses
  %i.aip = and i32 %i.aio, 1
  %.not.i.i146.1.i203 = icmp eq i32 %i.aip, 0
  br i1 %.not.i.i146.1.i203, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit149.i218, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.aiq = and i32 %i.aio, 2
  %.not.i.i146.2.i204 = icmp eq i32 %i.aiq, 0
  br i1 %.not.i.i146.2.i204, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit149.i218, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.air = and i32 %i.aio, 4
  %.not.i.i146.3.i205 = icmp eq i32 %i.air, 0
  br i1 %.not.i.i146.3.i205, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit149.i218, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.ais = and i32 %i.aio, 8
  %.not.i.i146.4.i206 = icmp eq i32 %i.ais, 0
  br i1 %.not.i.i146.4.i206, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit149.i218, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.ait = and i32 %i.aio, 16
  %.not.i.i146.5.i207 = icmp eq i32 %i.ait, 0
  br i1 %.not.i.i146.5.i207, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit149.i218, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.aiu = and i32 %i.aio, 32
  %.not.i.i146.6.i208 = icmp eq i32 %i.aiu, 0
  br i1 %.not.i.i146.6.i208, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit149.i218, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.aiv = and i32 %i.aio, 64
  %.not.i.i146.7.i209 = icmp eq i32 %i.aiv, 0
  br i1 %.not.i.i146.7.i209, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit149.i218, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.aiw = and i32 %i.aio, 128
  %.not.i.i146.8.i210 = icmp eq i32 %i.aiw, 0
  br i1 %.not.i.i146.8.i210, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit149.i218, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.aix = and i32 %i.aio, 256
  %.not.i.i146.9.i211 = icmp eq i32 %i.aix, 0
  br i1 %.not.i.i146.9.i211, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit149.i218, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.aiy = and i32 %i.aio, 512
  %.not.i.i146.10.i212 = icmp eq i32 %i.aiy, 0
  br i1 %.not.i.i146.10.i212, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit149.i218, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.aiz = and i32 %i.aio, 1024
  %.not.i.i146.11.i213 = icmp eq i32 %i.aiz, 0
  br i1 %.not.i.i146.11.i213, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit149.i218, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.aja = and i32 %i.aio, 2048
  %.not.i.i146.12.i214 = icmp eq i32 %i.aja, 0
  br i1 %.not.i.i146.12.i214, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit149.i218, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.ajb = and i32 %i.aio, 4096
  %.not.i.i146.13.i215 = icmp eq i32 %i.ajb, 0
  br i1 %.not.i.i146.13.i215, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit149.i218, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.ajc = and i32 %i.aio, 8192
  %.not.i.i146.14.i216 = icmp eq i32 %i.ajc, 0
  br i1 %.not.i.i146.14.i216, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit149.i218, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.ajd = and i32 %i.aio, 16384
  %.not.i.i146.15.i217 = icmp eq i32 %i.ajd, 0
  br i1 %.not.i.i146.15.i217, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit149.i218, label %.thread222.i201

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit149.i218: ; preds = %bb.kv, %bb.ku, %bb.kt, %bb.ks, %bb.kr, %bb.kq, %bb.kp, %bb.ko, %bb.kn, %bb.km, %bb.kl, %bb.kk, %bb.kj, %bb.ki, %bb.kh, %bb.kg
  %.0613.i.i145.lcssa.wide.i219 = phi i64 [ 0, %bb.kg ], [ 1, %bb.kh ], [ 2, %bb.ki ], [ 3, %bb.kj ], [ 4, %bb.kk ], [ 5, %bb.kl ], [ 6, %bb.km ], [ 7, %bb.kn ], [ 8, %bb.ko ], [ 9, %bb.kp ], [ 10, %bb.kq ], [ 11, %bb.kr ], [ 12, %bb.ks ], [ 13, %bb.kt ], [ 14, %bb.ku ], [ 15, %bb.kv ]
  %i.aje = getelementptr inbounds nuw [2 x i8], ptr @_ZZL24RetCC_X86_SysV64_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList9, i64 %.0613.i.i145.lcssa.wide.i219
  %i.ajf = load i16, ptr %i.aje, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.ajf) #8
  %i.ajg = zext i16 %i.ajf to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #8
  %i.ajh = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i8 0, ptr %i.ajh, align 8, !tbaa !303, !alias.scope !713
  %i.aji = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i32 %0, ptr %i.aji, align 8, !tbaa !308, !alias.scope !713
  %i.ajj = getelementptr inbounds nuw i8, ptr %26, i64 20 ; 2 uses
  %i.ajk = load i8, ptr %i.ajj, align 4, !alias.scope !713
  %i.ajl = and i8 %i.ajk, -128
  %i.ajm = trunc i32 %3 to i8
  %i.ajn = shl i8 %i.ajm, 1
  %i.ajo = and i8 %i.ajn, 126
  %i.ajp = or disjoint i8 %i.ajl, %i.ajo
  store i8 %i.ajp, ptr %i.ajj, align 4, !alias.scope !713
  %i.ajq = getelementptr inbounds nuw i8, ptr %26, i64 22
  store i16 %1, ptr %i.ajq, align 2, !tbaa !319, !alias.scope !713
  %i.ajr = getelementptr inbounds nuw i8, ptr %26, i64 24
  store i16 %2, ptr %i.ajr, align 8, !tbaa !319, !alias.scope !713
  store i32 %i.ajg, ptr %26, align 8, !tbaa !301, !alias.scope !713
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %5, ptr noundef nonnull align 8 dereferenceable(26) %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #8
  br label %_ZL23RetCC_X86_Win64_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread

.thread222.i201:                                  ; preds = %bb.kv, %.critedge6.i200
  switch i16 %2, label %bb.ky [
    i16 50, label %.critedge8.i197
    i16 64, label %.critedge8.i197
    i16 82, label %.critedge8.i197
    i16 97, label %.critedge8.i197
    i16 145, label %.critedge8.i197
  ]

.critedge8.i197:                                  ; preds = %bb.fn, %bb.fn, %bb.fn, %bb.fn, %bb.fn, %bb.fn, %.thread222.i201, %.thread222.i201, %.thread222.i201, %.thread222.i201, %.thread222.i201, %.thread210.i221, %.thread210.i221, %.thread210.i221, %.thread210.i221, %.thread210.i221
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.uf, i64 360
  %i.ajt = load i32, ptr %i.ajs, align 8, !tbaa !398
  %i.aju = icmp sgt i32 %i.ajt, 8
  br i1 %i.aju, label %bb.kw, label %bb.ky

bb.kw:                                            ; preds = %.critedge8.i197
  %i.ajv = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %5, ptr nonnull @_ZZL23RetCC_X86_Win64_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE9RegList10, i64 16) ; 2 uses
  %.not92.not.i199 = icmp eq i32 %i.ajv, 0
  br i1 %.not92.not.i199, label %bb.ky, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #8
  %i.ajw = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i8 0, ptr %i.ajw, align 8, !tbaa !303, !alias.scope !716
  %i.ajx = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i32 %0, ptr %i.ajx, align 8, !tbaa !308, !alias.scope !716
  %i.ajy = getelementptr inbounds nuw i8, ptr %27, i64 20 ; 2 uses
  %i.ajz = load i8, ptr %i.ajy, align 4, !alias.scope !716
  %i.aka = and i8 %i.ajz, -128
  %i.akb = trunc i32 %3 to i8
  %i.akc = shl i8 %i.akb, 1
  %i.akd = and i8 %i.akc, 126
  %i.ake = or disjoint i8 %i.aka, %i.akd
  store i8 %i.ake, ptr %i.ajy, align 4, !alias.scope !716
  %i.akf = getelementptr inbounds nuw i8, ptr %27, i64 22
  store i16 %1, ptr %i.akf, align 2, !tbaa !319, !alias.scope !716
  %i.akg = getelementptr inbounds nuw i8, ptr %27, i64 24
  store i16 %2, ptr %i.akg, align 8, !tbaa !319, !alias.scope !716
  store i32 %i.ajv, ptr %27, align 8, !tbaa !301, !alias.scope !716
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %5, ptr noundef nonnull align 8 dereferenceable(26) %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #8
  br label %_ZL23RetCC_X86_Win64_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread

_ZL23RetCC_X86_Win64_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread: ; preds = %bb.gg, %bb.io, %bb.kx, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit149.i218, %bb.kf, %bb.jm, %bb.it, %bb.in, %bb.hx, %bb.hi, %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %bb.qo

bb.ky:                                            ; preds = %bb.kw, %.critedge8.i197, %.thread222.i201, %.thread210.i221, %bb.jj, %bb.iq, %.thread181.i192, %bb.hf, %bb.gr, %bb.gd, %.critedge2.i241, %bb.io, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %.pr20.pre = load i32, ptr %5, align 8, !tbaa !8
  %i.akh = icmp eq i32 %.pr20.pre, 92
  br i1 %i.akh, label %.thread70, label %.thread21

.thread70:                                        ; preds = %bb.fm, %bb.ky
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i16 %2, ptr %6, align 2
  switch i16 %2, label %.thread174.i355 [
    i16 2, label %.critedge.i518
    i16 19, label %.critedge.i518
    i16 26, label %.critedge.i518
    i16 27, label %bb.la
    i16 28, label %bb.lc
    i16 5, label %.thread124.thread.i498
    i16 6, label %.thread140.thread246.i482
    i16 7, label %.thread152.i463
    i16 8, label %bb.mr
    i16 29, label %bb.nf
  ]

.critedge.i518:                                   ; preds = %.thread70, %.thread70, %.thread70
  %i.aki = and i64 %4, 2
  %.not267.i519 = icmp eq i64 %i.aki, 0
  br i1 %.not267.i519, label %bb.kz, label %.thread124.thread.i498

bb.kz:                                            ; preds = %.critedge.i518
  %i.akj = trunc i64 %4 to i1
  %spec.select.i520 = select i1 %i.akj, i32 2, i32 3
  br label %.thread124.thread.i498

bb.la:                                            ; preds = %.thread70
  %i.akk = and i64 %4, 2
  %.not266.i516 = icmp eq i64 %i.akk, 0
  br i1 %.not266.i516, label %bb.lb, label %.thread140.thread246.i482

bb.lb:                                            ; preds = %bb.la
  %i.akl = trunc i64 %4 to i1
  %spec.select260.i517 = select i1 %i.akl, i32 2, i32 3
  br label %.thread140.thread246.i482

bb.lc:                                            ; preds = %.thread70
  %i.akm = and i64 %4, 2
  %.not265.i514 = icmp eq i64 %i.akm, 0
  br i1 %.not265.i514, label %bb.ld, label %.thread152.i463

bb.ld:                                            ; preds = %bb.lc
  %i.akn = trunc i64 %4 to i1
  %spec.select261.i515 = select i1 %i.akn, i32 2, i32 3
  br label %.thread152.i463

.thread124.thread.i498:                           ; preds = %bb.kz, %.critedge.i518, %.thread70
  %.2233.i499 = phi i32 [ %3, %.thread70 ], [ 1, %.critedge.i518 ], [ %spec.select.i520, %bb.kz ] ; 2 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !300 ; 3 uses
  %i.akq = load i32, ptr %i.akp, align 4, !tbaa !301 ; 4 uses
  %i.akr = and i32 %i.akq, 4
  %.not.i.i.i500 = icmp eq i32 %i.akr, 0
  br i1 %.not.i.i.i500, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i511, label %bb.le

bb.le:                                            ; preds = %.thread124.thread.i498
  %i.aks = and i32 %i.akq, 2048
  %.not.i.i.1.i501 = icmp eq i32 %i.aks, 0
  br i1 %.not.i.i.1.i501, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i511, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.akt = and i32 %i.akq, 524288
  %.not.i.i.2.i502 = icmp eq i32 %i.akt, 0
  br i1 %.not.i.i.2.i502, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i511, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.aku = and i32 %i.akq, 262144
  %.not.i.i.3.i503 = icmp eq i32 %i.aku, 0
  br i1 %.not.i.i.3.i503, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i511, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.akv = getelementptr inbounds nuw i8, ptr %i.akp, i64 8
  %i.akw = load i32, ptr %i.akv, align 4, !tbaa !301
  %i.akx = and i32 %i.akw, 1
  %.not.i.i.4.i504 = icmp eq i32 %i.akx, 0
  br i1 %.not.i.i.4.i504, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i511, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akp, i64 16
  %i.akz = load i32, ptr %i.aky, align 4, !tbaa !301 ; 6 uses
  %i.ala = and i32 %i.akz, 8388608
  %.not.i.i.5.i505 = icmp eq i32 %i.ala, 0
  br i1 %.not.i.i.5.i505, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i511, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.alb = and i32 %i.akz, 16777216
  %.not.i.i.6.i506 = icmp eq i32 %i.alb, 0
  br i1 %.not.i.i.6.i506, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i511, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.alc = and i32 %i.akz, 134217728
  %.not.i.i.7.i507 = icmp eq i32 %i.alc, 0
  br i1 %.not.i.i.7.i507, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i511, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.ald = and i32 %i.akz, 268435456
  %.not.i.i.8.i508 = icmp eq i32 %i.ald, 0
  br i1 %.not.i.i.8.i508, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i511, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.ale = and i32 %i.akz, 536870912
  %.not.i.i.9.i509 = icmp eq i32 %i.ale, 0
  br i1 %.not.i.i.9.i509, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i511, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.alf = and i32 %i.akz, 1073741824
  %.not.i.i.10.i510 = icmp eq i32 %i.alf, 0
  br i1 %.not.i.i.10.i510, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i511, label %.thread181.thread.i476

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i511: ; preds = %bb.ln, %bb.lm, %bb.ll, %bb.lk, %bb.lj, %bb.li, %bb.lh, %bb.lg, %bb.lf, %bb.le, %.thread124.thread.i498
  %.0613.i.i.lcssa.wide.i512 = phi i64 [ 0, %.thread124.thread.i498 ], [ 1, %bb.le ], [ 2, %bb.lf ], [ 3, %bb.lg ], [ 4, %bb.lh ], [ 5, %bb.li ], [ 6, %bb.lj ], [ 7, %bb.lk ], [ 8, %bb.ll ], [ 9, %bb.lm ], [ 10, %bb.ln ]
  %i.alg = getelementptr inbounds nuw [2 x i8], ptr @_ZZL24RetCC_X86_SysV64_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.i.lcssa.wide.i512
  %i.alh = load i16, ptr %i.alg, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.alh) #8
  %i.ali = zext i16 %i.alh to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.alj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 0, ptr %i.alj, align 8, !tbaa !303, !alias.scope !719
  %i.alk = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %0, ptr %i.alk, align 8, !tbaa !308, !alias.scope !719
  %i.all = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.alm = load i8, ptr %i.all, align 4, !alias.scope !719
  %i.aln = and i8 %i.alm, -128
  %i.alo = trunc i32 %.2233.i499 to i8
  %i.alp = shl i8 %i.alo, 1
  %i.alq = and i8 %i.alp, 126
  %i.alr = or disjoint i8 %i.aln, %i.alq
  store i8 %i.alr, ptr %i.all, align 4, !alias.scope !719
  %i.als = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 %1, ptr %i.als, align 2, !tbaa !319, !alias.scope !719
  %i.alt = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 5, ptr %i.alt, align 8, !tbaa !319, !alias.scope !719
  store i32 %i.ali, ptr %7, align 8, !tbaa !301, !alias.scope !719
  %i.alu = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.alv = load ptr, ptr %i.alu, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 8 ; 3 uses
  %i.alx = load i32, ptr %i.alw, align 8, !tbaa !322 ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alv, i64 12
  %i.alz = load i32, ptr %i.aly, align 4, !tbaa !323
  %.not.i.i95.i513 = icmp ult i32 %i.alx, %i.alz
  br i1 %.not.i.i95.i513, label %bb.lp, label %bb.lo, !prof !324

bb.lo:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i511
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.alv, ptr noundef nonnull align 8 dereferenceable(26) %7)
  br label %bb.lq

bb.lp:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i511
  %i.ama = zext i32 %i.alx to i64
  %i.amb = load ptr, ptr %i.alv, align 8, !tbaa !300
  %i.amc = getelementptr inbounds nuw [32 x i8], ptr %i.amb, i64 %i.ama
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.amc, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  %i.amd = load i32, ptr %i.alw, align 8, !tbaa !322
  %i.ame = add i32 %i.amd, 1
  store i32 %i.ame, ptr %i.alw, align 8, !tbaa !322
  br label %bb.lq

bb.lq:                                            ; preds = %bb.lp, %bb.lo
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %_ZL24RetCC_X86_SysV64_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread

.thread140.thread246.i482:                        ; preds = %bb.lb, %bb.la, %.thread70
  %.2131250.i483 = phi i32 [ %3, %.thread70 ], [ 1, %bb.la ], [ %spec.select260.i517, %bb.lb ] ; 2 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.amg = load ptr, ptr %i.amf, align 8, !tbaa !300 ; 3 uses
  %i.amh = load i32, ptr %i.amg, align 4, !tbaa !301 ; 4 uses
  %i.ami = and i32 %i.amh, 8
  %.not.i.i97.i484 = icmp eq i32 %i.ami, 0
  br i1 %.not.i.i97.i484, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit100.i495, label %bb.lr

bb.lr:                                            ; preds = %.thread140.thread246.i482
  %i.amj = and i32 %i.amh, 8192
  %.not.i.i97.1.i485 = icmp eq i32 %i.amj, 0
  br i1 %.not.i.i97.1.i485, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit100.i495, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.amk = and i32 %i.amh, 2097152
  %.not.i.i97.2.i486 = icmp eq i32 %i.amk, 0
  br i1 %.not.i.i97.2.i486, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit100.i495, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.aml = and i32 %i.amh, 65536
  %.not.i.i97.3.i487 = icmp eq i32 %i.aml, 0
  br i1 %.not.i.i97.3.i487, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit100.i495, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.amm = getelementptr inbounds nuw i8, ptr %i.amg, i64 4
  %i.amn = load i32, ptr %i.amm, align 4, !tbaa !301
  %i.amo = and i32 %i.amn, 1073741824
  %.not.i.i97.4.i488 = icmp eq i32 %i.amo, 0
  br i1 %.not.i.i97.4.i488, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit100.i495, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amg, i64 20
  %i.amq = load i32, ptr %i.amp, align 4, !tbaa !301 ; 6 uses
  %i.amr = and i32 %i.amq, 32768
end_hunk_2
begin_hunk_3_@_ZL12RetCC_X86_64jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
bb.mj:                                            ; preds = %bb.mi
  %i.aoj = and i32 %i.aoh, 256
  %.not.i.i104.6.i471 = icmp eq i32 %i.aoj, 0
  br i1 %.not.i.i104.6.i471, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit107.i479, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  %i.aok = and i32 %i.aoh, 2048
  %.not.i.i104.7.i472 = icmp eq i32 %i.aok, 0
  br i1 %.not.i.i104.7.i472, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit107.i479, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.aol = and i32 %i.aoh, 4096
  %.not.i.i104.8.i473 = icmp eq i32 %i.aol, 0
  br i1 %.not.i.i104.8.i473, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit107.i479, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.aom = and i32 %i.aoh, 8192
  %.not.i.i104.9.i474 = icmp eq i32 %i.aom, 0
  br i1 %.not.i.i104.9.i474, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit107.i479, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.aon = and i32 %i.aoh, 16384
  %.not.i.i104.10.i475 = icmp eq i32 %i.aon, 0
  br i1 %.not.i.i104.10.i475, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit107.i479, label %.thread181.thread.i476

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit107.i479: ; preds = %bb.mn, %bb.mm, %bb.ml, %bb.mk, %bb.mj, %bb.mi, %bb.mh, %bb.mg, %bb.mf, %bb.me, %.thread152.i463
  %.0613.i.i103.lcssa.wide.i480 = phi i64 [ 0, %.thread152.i463 ], [ 1, %bb.me ], [ 2, %bb.mf ], [ 3, %bb.mg ], [ 4, %bb.mh ], [ 5, %bb.mi ], [ 6, %bb.mj ], [ 7, %bb.mk ], [ 8, %bb.ml ], [ 9, %bb.mm ], [ 10, %bb.mn ]
  %i.aoo = getelementptr inbounds nuw [2 x i8], ptr @_ZZL24RetCC_X86_SysV64_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList3, i64 %.0613.i.i103.lcssa.wide.i480
  %i.aop = load i16, ptr %i.aoo, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.aop) #8
  %i.aoq = zext i16 %i.aop to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.aor = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.aor, align 8, !tbaa !303, !alias.scope !725
  %i.aos = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %0, ptr %i.aos, align 8, !tbaa !308, !alias.scope !725
  %i.aot = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.aou = load i8, ptr %i.aot, align 4, !alias.scope !725
  %i.aov = and i8 %i.aou, -128
  %i.aow = trunc i32 %.2132157.i464 to i8
  %i.aox = shl i8 %i.aow, 1
  %i.aoy = and i8 %i.aox, 126
  %i.aoz = or disjoint i8 %i.aov, %i.aoy
  store i8 %i.aoz, ptr %i.aot, align 4, !alias.scope !725
  %i.apa = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %1, ptr %i.apa, align 2, !tbaa !319, !alias.scope !725
  %i.apb = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 7, ptr %i.apb, align 8, !tbaa !319, !alias.scope !725
  store i32 %i.aoq, ptr %9, align 8, !tbaa !301, !alias.scope !725
  %i.apc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apd, i64 8 ; 3 uses
  %i.apf = load i32, ptr %i.ape, align 8, !tbaa !322 ; 2 uses
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apd, i64 12
  %i.aph = load i32, ptr %i.apg, align 4, !tbaa !323
  %.not.i.i108.i481 = icmp ult i32 %i.apf, %i.aph
  br i1 %.not.i.i108.i481, label %bb.mp, label %bb.mo, !prof !324

bb.mo:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit107.i479
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.apd, ptr noundef nonnull align 8 dereferenceable(26) %9)
  br label %bb.mq

bb.mp:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit107.i479
  %i.api = zext i32 %i.apf to i64
  %i.apj = load ptr, ptr %i.apd, align 8, !tbaa !300
  %i.apk = getelementptr inbounds nuw [32 x i8], ptr %i.apj, i64 %i.api
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.apk, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.apl = load i32, ptr %i.ape, align 8, !tbaa !322
  %i.apm = add i32 %i.apl, 1
  store i32 %i.apm, ptr %i.ape, align 8, !tbaa !322
  br label %bb.mq

bb.mq:                                            ; preds = %bb.mp, %bb.mo
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %_ZL24RetCC_X86_SysV64_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread

bb.mr:                                            ; preds = %.thread70
  %i.apn = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.apo = load ptr, ptr %i.apn, align 8, !tbaa !300 ; 2 uses
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 4
  %i.apq = load i32, ptr %i.app, align 4, !tbaa !301 ; 5 uses
  %i.apr = and i32 %i.apq, 524288
  %.not.i.i111.i449 = icmp eq i32 %i.apr, 0
  br i1 %.not.i.i111.i449, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i460, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.aps = and i32 %i.apq, 4194304
  %.not.i.i111.1.i450 = icmp eq i32 %i.aps, 0
  br i1 %.not.i.i111.1.i450, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i460, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  %i.apt = and i32 %i.apq, 16777216
  %.not.i.i111.2.i451 = icmp eq i32 %i.apt, 0
  br i1 %.not.i.i111.2.i451, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i460, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.apu = and i32 %i.apq, 8388608
  %.not.i.i111.3.i452 = icmp eq i32 %i.apu, 0
  br i1 %.not.i.i111.3.i452, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i460, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.apv = and i32 %i.apq, 268435456
  %.not.i.i111.4.i453 = icmp eq i32 %i.apv, 0
  br i1 %.not.i.i111.4.i453, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i460, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apo, i64 12
  %i.apx = load i32, ptr %i.apw, align 4, !tbaa !301 ; 6 uses
  %i.apy = and i32 %i.apx, 8388608
  %.not.i.i111.5.i454 = icmp eq i32 %i.apy, 0
  br i1 %.not.i.i111.5.i454, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i460, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.apz = and i32 %i.apx, 16777216
  %.not.i.i111.6.i455 = icmp eq i32 %i.apz, 0
  br i1 %.not.i.i111.6.i455, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i460, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.aqa = and i32 %i.apx, 134217728
  %.not.i.i111.7.i456 = icmp eq i32 %i.aqa, 0
  br i1 %.not.i.i111.7.i456, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i460, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.aqb = and i32 %i.apx, 268435456
  %.not.i.i111.8.i457 = icmp eq i32 %i.aqb, 0
  br i1 %.not.i.i111.8.i457, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i460, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.aqc = and i32 %i.apx, 536870912
  %.not.i.i111.9.i458 = icmp eq i32 %i.aqc, 0
  br i1 %.not.i.i111.9.i458, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i460, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.aqd = and i32 %i.apx, 1073741824
  %.not.i.i111.10.i459 = icmp eq i32 %i.aqd, 0
  br i1 %.not.i.i111.10.i459, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i460, label %.thread174.i355

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i460: ; preds = %bb.nb, %bb.na, %bb.mz, %bb.my, %bb.mx, %bb.mw, %bb.mv, %bb.mu, %bb.mt, %bb.ms, %bb.mr
  %.0613.i.i110.lcssa.wide.i461 = phi i64 [ 0, %bb.mr ], [ 1, %bb.ms ], [ 2, %bb.mt ], [ 3, %bb.mu ], [ 4, %bb.mv ], [ 5, %bb.mw ], [ 6, %bb.mx ], [ 7, %bb.my ], [ 8, %bb.mz ], [ 9, %bb.na ], [ 10, %bb.nb ]
  %i.aqe = getelementptr inbounds nuw [2 x i8], ptr @_ZZL24RetCC_X86_SysV64_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList5, i64 %.0613.i.i110.lcssa.wide.i461
  %i.aqf = load i16, ptr %i.aqe, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.aqf) #8
  %i.aqg = zext i16 %i.aqf to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.aqh = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.aqh, align 8, !tbaa !303, !alias.scope !728
  %i.aqi = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %0, ptr %i.aqi, align 8, !tbaa !308, !alias.scope !728
  %i.aqj = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.aqk = load i8, ptr %i.aqj, align 4, !alias.scope !728
  %i.aql = and i8 %i.aqk, -128
  %i.aqm = trunc i32 %3 to i8
  %i.aqn = shl i8 %i.aqm, 1
  %i.aqo = and i8 %i.aqn, 126
  %i.aqp = or disjoint i8 %i.aql, %i.aqo
  store i8 %i.aqp, ptr %i.aqj, align 4, !alias.scope !728
  %i.aqq = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i16 %1, ptr %i.aqq, align 2, !tbaa !319, !alias.scope !728
  %i.aqr = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 8, ptr %i.aqr, align 8, !tbaa !319, !alias.scope !728
  store i32 %i.aqg, ptr %10, align 8, !tbaa !301, !alias.scope !728
  %i.aqs = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aqt = load ptr, ptr %i.aqs, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqt, i64 8 ; 3 uses
  %i.aqv = load i32, ptr %i.aqu, align 8, !tbaa !322 ; 2 uses
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqt, i64 12
  %i.aqx = load i32, ptr %i.aqw, align 4, !tbaa !323
  %.not.i.i115.i462 = icmp ult i32 %i.aqv, %i.aqx
  br i1 %.not.i.i115.i462, label %bb.nd, label %bb.nc, !prof !324

bb.nc:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i460
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.aqt, ptr noundef nonnull align 8 dereferenceable(26) %10)
  br label %bb.ne

bb.nd:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit114.i460
  %i.aqy = zext i32 %i.aqv to i64
  %i.aqz = load ptr, ptr %i.aqt, align 8, !tbaa !300
  %i.ara = getelementptr inbounds nuw [32 x i8], ptr %i.aqz, i64 %i.aqy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ara, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  %i.arb = load i32, ptr %i.aqu, align 8, !tbaa !322
  %i.arc = add i32 %i.arb, 1
  store i32 %i.arc, ptr %i.aqu, align 8, !tbaa !322
  br label %bb.ne

bb.ne:                                            ; preds = %bb.nd, %bb.nc
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br label %_ZL24RetCC_X86_SysV64_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread

bb.nf:                                            ; preds = %.thread70
  store i16 8, ptr %6, align 2, !tbaa !319
  %i.ard = and i64 %4, 2
  %.not264.i354 = icmp eq i64 %i.ard, 0
  br i1 %.not264.i354, label %bb.ng, label %.thread174.i355

bb.ng:                                            ; preds = %bb.nf
  %i.are = trunc i64 %4 to i1
  %spec.select262.i448 = select i1 %i.are, i32 2, i32 3
  br label %.thread174.i355

.thread181.thread.i476:                           ; preds = %bb.mn, %bb.ma, %bb.ln
  %.3.ph.i477 = phi i32 [ %.2132157.i464, %bb.mn ], [ %.2131250.i483, %bb.ma ], [ %.2233.i499, %bb.ln ]
  %.sroa.0.0.copyload106.ph.i478 = phi i16 [ 7, %bb.mn ], [ 6, %bb.ma ], [ 5, %bb.ln ]
  %i.arf = load ptr, ptr %i.dn, align 8, !tbaa !39, !nonnull !299, !align !321
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arf, i64 16
  %i.arh = load ptr, ptr %i.arg, align 8, !tbaa !40, !nonnull !299, !align !321
  br label %bb.nw

.thread174.i355:                                  ; preds = %bb.ng, %bb.nf, %bb.nb, %.thread70
  %.3.i356 = phi i32 [ %spec.select262.i448, %bb.ng ], [ 1, %bb.nf ], [ %3, %.thread70 ], [ %3, %bb.nb ] ; 3 uses
  %.sroa.0.0.copyload106.i357 = phi i16 [ 8, %bb.ng ], [ 8, %bb.nf ], [ %2, %.thread70 ], [ 8, %bb.nb ] ; 2 uses
  %i.ari = load ptr, ptr %i.dn, align 8, !tbaa !39, !nonnull !299, !align !321
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 16
  %i.ark = load ptr, ptr %i.arj, align 8, !tbaa !40, !nonnull !299, !align !321 ; 3 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %i.ark, i64 522
  %i.arm = load i8, ptr %i.arl, align 2, !tbaa !156, !range !298, !noundef !299
  %i.arn = trunc nuw i8 %i.arm to i1
  %i.aro = icmp eq i16 %.sroa.0.0.copyload106.i357, 8 ; 2 uses
  %or.cond.i358 = and i1 %i.aro, %i.arn
  br i1 %or.cond.i358, label %bb.nh, label %.thread181.i359

bb.nh:                                            ; preds = %.thread174.i355
  %i.arp = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.arq = load ptr, ptr %i.arp, align 8, !tbaa !300 ; 2 uses
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 4
  %i.ars = load i32, ptr %i.arr, align 4, !tbaa !301 ; 5 uses
  %i.art = and i32 %i.ars, 524288
  %.not.i.i118.i434 = icmp eq i32 %i.art, 0
  br i1 %.not.i.i118.i434, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i445, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.aru = and i32 %i.ars, 4194304
  %.not.i.i118.1.i435 = icmp eq i32 %i.aru, 0
  br i1 %.not.i.i118.1.i435, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i445, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %i.arv = and i32 %i.ars, 16777216
  %.not.i.i118.2.i436 = icmp eq i32 %i.arv, 0
  br i1 %.not.i.i118.2.i436, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i445, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.arw = and i32 %i.ars, 8388608
  %.not.i.i118.3.i437 = icmp eq i32 %i.arw, 0
  br i1 %.not.i.i118.3.i437, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i445, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.arx = and i32 %i.ars, 268435456
  %.not.i.i118.4.i438 = icmp eq i32 %i.arx, 0
  br i1 %.not.i.i118.4.i438, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i445, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arq, i64 12
  %i.arz = load i32, ptr %i.ary, align 4, !tbaa !301 ; 6 uses
  %i.asa = and i32 %i.arz, 8388608
  %.not.i.i118.5.i439 = icmp eq i32 %i.asa, 0
  br i1 %.not.i.i118.5.i439, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i445, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %i.asb = and i32 %i.arz, 16777216
  %.not.i.i118.6.i440 = icmp eq i32 %i.asb, 0
  br i1 %.not.i.i118.6.i440, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i445, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.asc = and i32 %i.arz, 134217728
  %.not.i.i118.7.i441 = icmp eq i32 %i.asc, 0
  br i1 %.not.i.i118.7.i441, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i445, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.asd = and i32 %i.arz, 268435456
  %.not.i.i118.8.i442 = icmp eq i32 %i.asd, 0
  br i1 %.not.i.i118.8.i442, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i445, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  %i.ase = and i32 %i.arz, 536870912
  %.not.i.i118.9.i443 = icmp eq i32 %i.ase, 0
  br i1 %.not.i.i118.9.i443, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i445, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.asf = and i32 %i.arz, 1073741824
  %.not.i.i118.10.i444 = icmp eq i32 %i.asf, 0
  br i1 %.not.i.i118.10.i444, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i445, label %.thread181.i359

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i445: ; preds = %bb.nr, %bb.nq, %bb.np, %bb.no, %bb.nn, %bb.nm, %bb.nl, %bb.nk, %bb.nj, %bb.ni, %bb.nh
  %.0613.i.i117.lcssa.wide.i446 = phi i64 [ 0, %bb.nh ], [ 1, %bb.ni ], [ 2, %bb.nj ], [ 3, %bb.nk ], [ 4, %bb.nl ], [ 5, %bb.nm ], [ 6, %bb.nn ], [ 7, %bb.no ], [ 8, %bb.np ], [ 9, %bb.nq ], [ 10, %bb.nr ]
  %i.asg = getelementptr inbounds nuw [2 x i8], ptr @_ZZL24RetCC_X86_SysV64_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList5, i64 %.0613.i.i117.lcssa.wide.i446
  %i.ash = load i16, ptr %i.asg, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.ash) #8
  %i.asi = zext i16 %i.ash to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.asj = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 0, ptr %i.asj, align 8, !tbaa !303, !alias.scope !731
  %i.ask = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %0, ptr %i.ask, align 8, !tbaa !308, !alias.scope !731
  %i.asl = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %i.asm = load i8, ptr %i.asl, align 4, !alias.scope !731
  %i.asn = and i8 %i.asm, -128
  %i.aso = trunc i32 %.3.i356 to i8
  %i.asp = shl i8 %i.aso, 1
  %i.asq = and i8 %i.asp, 126
  %i.asr = or disjoint i8 %i.asn, %i.asq
  store i8 %i.asr, ptr %i.asl, align 4, !alias.scope !731
  %i.ass = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i16 %1, ptr %i.ass, align 2, !tbaa !319, !alias.scope !731
  %i.ast = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i16 8, ptr %i.ast, align 8, !tbaa !319, !alias.scope !731
  store i32 %i.asi, ptr %11, align 8, !tbaa !301, !alias.scope !731
  %i.asu = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.asv = load ptr, ptr %i.asu, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asv, i64 8 ; 3 uses
  %i.asx = load i32, ptr %i.asw, align 8, !tbaa !322 ; 2 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asv, i64 12
  %i.asz = load i32, ptr %i.asy, align 4, !tbaa !323
  %.not.i.i122.i447 = icmp ult i32 %i.asx, %i.asz
  br i1 %.not.i.i122.i447, label %bb.nt, label %bb.ns, !prof !324

bb.ns:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i445
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.asv, ptr noundef nonnull align 8 dereferenceable(26) %11)
  br label %bb.nu

bb.nt:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit121.i445
  %i.ata = zext i32 %i.asx to i64
  %i.atb = load ptr, ptr %i.asv, align 8, !tbaa !300
  %i.atc = getelementptr inbounds nuw [32 x i8], ptr %i.atb, i64 %i.ata
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.atc, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  %i.atd = load i32, ptr %i.asw, align 8, !tbaa !322
  %i.ate = add i32 %i.atd, 1
  store i32 %i.ate, ptr %i.asw, align 8, !tbaa !322
  br label %bb.nu

bb.nu:                                            ; preds = %bb.nt, %bb.ns
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  br label %_ZL24RetCC_X86_SysV64_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread

.thread181.i359:                                  ; preds = %bb.nr, %.thread174.i355
  %i.atf = getelementptr inbounds nuw i8, ptr %i.ark, i64 521
  %i.atg = load i8, ptr %i.atf, align 1, !tbaa !429, !range !298, !noundef !299
  %i.ath = trunc nuw i8 %i.atg to i1
  %or.cond263.i361 = and i1 %i.aro, %i.ath
  br i1 %or.cond263.i361, label %bb.nv, label %bb.nw

bb.nv:                                            ; preds = %.thread181.i359
  %i.ati = call fastcc noundef zeroext i1 @_ZL29CC_X86_32_RegCall_Assign2RegsRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE(i32 %0, i16 %1, ptr noundef nonnull align 2 dereferenceable(2) %6, i32 %.3.i356, ptr noundef nonnull align 8 dereferenceable(420) %5)
  br i1 %i.ati, label %_ZL24RetCC_X86_SysV64_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread, label %_ZL24RetCC_X86_SysV64_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

bb.nw:                                            ; preds = %.thread181.i359, %.thread181.thread.i476
  %.3311319.i362 = phi i32 [ %.3.ph.i477, %.thread181.thread.i476 ], [ %.3.i356, %.thread181.i359 ] ; 5 uses
  %.sroa.0.0.copyload106314318.i363 = phi i16 [ %.sroa.0.0.copyload106.ph.i478, %.thread181.thread.i476 ], [ %.sroa.0.0.copyload106.i357, %.thread181.i359 ] ; 7 uses
  %i.atj = phi ptr [ %i.arh, %.thread181.thread.i476 ], [ %i.ark, %.thread181.i359 ] ; 4 uses
  switch i16 %.sroa.0.0.copyload106314318.i363, label %_ZL24RetCC_X86_SysV64_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit [
    i16 16, label %bb.nx
    i16 14, label %.critedge2.i408
    i16 15, label %.critedge2.i408
    i16 17, label %.critedge2.i408
    i16 48, label %.critedge4.i387
    i16 62, label %.critedge4.i387
    i16 73, label %.critedge4.i387
    i16 94, label %.critedge4.i387
    i16 136, label %.critedge4.i387
    i16 154, label %.critedge4.i387
    i16 49, label %.critedge6.i367
    i16 63, label %.critedge6.i367
    i16 77, label %.critedge6.i367
    i16 96, label %.critedge6.i367
    i16 140, label %.critedge6.i367
    i16 156, label %.critedge6.i367
    i16 50, label %.critedge8.i364
    i16 64, label %.critedge8.i364
    i16 82, label %.critedge8.i364
    i16 97, label %.critedge8.i364
    i16 145, label %.critedge8.i364
    i16 157, label %.critedge8.i364
  ]

bb.nx:                                            ; preds = %bb.nw
  %i.atk = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.atl = load ptr, ptr %i.atk, align 8, !tbaa !300
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atl, i64 12
  %i.atn = load i32, ptr %i.atm, align 4, !tbaa !301 ; 2 uses
  %i.ato = and i32 %i.atn, 128
  %.not.i.i125.i429 = icmp eq i32 %i.ato, 0
  br i1 %.not.i.i125.i429, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit128.i431, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.atp = and i32 %i.atn, 256
  %.not.i.i125.1.i430 = icmp eq i32 %i.atp, 0
  br i1 %.not.i.i125.1.i430, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit128.i431, label %_ZL24RetCC_X86_SysV64_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit128.i431: ; preds = %bb.ny, %bb.nx
  %.0613.i.i124.lcssa.wide.i432 = phi i64 [ 0, %bb.nx ], [ 1, %bb.ny ]
  %i.atq = getelementptr inbounds nuw [2 x i8], ptr @_ZZL24RetCC_X86_SysV64_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList6, i64 %.0613.i.i124.lcssa.wide.i432
  %i.atr = load i16, ptr %i.atq, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.atr) #8
  %i.ats = zext i16 %i.atr to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  %i.att = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.att, align 8, !tbaa !303, !alias.scope !734
  %i.atu = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %0, ptr %i.atu, align 8, !tbaa !308, !alias.scope !734
  %i.atv = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  %i.atw = load i8, ptr %i.atv, align 4, !alias.scope !734
  %i.atx = and i8 %i.atw, -128
  %i.aty = trunc i32 %.3311319.i362 to i8
  %i.atz = shl i8 %i.aty, 1
end_hunk_3
begin_hunk_4_@_ZL11CC_X86_64_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
bb.w:                                             ; preds = %bb.v
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext 125) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  %i.eb = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i8 0, ptr %i.eb, align 8, !tbaa !303, !alias.scope !799
  %i.ec = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 %0, ptr %i.ec, align 8, !tbaa !308, !alias.scope !799
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 4, !alias.scope !799
  %i.ef = and i8 %i.ee, -128
  %i.eg = trunc i32 %.0 to i8
  %i.eh = shl i8 %i.eg, 1
  %i.ei = and i8 %i.eh, 126
  %i.ej = or disjoint i8 %i.ef, %i.ei
  store i8 %i.ej, ptr %i.ed, align 4, !alias.scope !799
  %i.ek = getelementptr inbounds nuw i8, ptr %13, i64 22
  store i16 %1, ptr %i.ek, align 2, !tbaa !319, !alias.scope !799
  %i.el = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i16 8, ptr %i.el, align 8, !tbaa !319, !alias.scope !799
  store i32 125, ptr %13, align 8, !tbaa !301, !alias.scope !799
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 3 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !322 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !323
  %.not.i.i175 = icmp ult i32 %i.ep, %i.er
  br i1 %.not.i.i175, label %bb.y, label %bb.x, !prof !324

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 8 dereferenceable(26) %13)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit174

bb.y:                                             ; preds = %bb.w
  %i.es = zext i32 %i.ep to i64
  %i.et = load ptr, ptr %i.en, align 8, !tbaa !300
  %i.eu = getelementptr inbounds nuw [32 x i8], ptr %i.et, i64 %i.es
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false)
  %i.ev = load i32, ptr %i.eo, align 8, !tbaa !322
  %i.ew = add i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eo, align 8, !tbaa !322
  br label %_ZN4llvm7CCState11AllocateRegEt.exit174

_ZN4llvm7CCState11AllocateRegEt.exit174:          ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  br label %_ZL14CC_X86_64_I128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit

_ZN4llvm7CCState11AllocateRegEt.exit174.thread338: ; preds = %bb.v, %_ZN4llvm7CCState11AllocateRegEt.exit169.thread331
  %i.ex = load i32, ptr %6, align 8, !tbaa !8     ; 2 uses
  %i.ey = icmp eq i32 %i.ex, 16
  %i.ez = and i64 %4, 16
  %.not483 = icmp ne i64 %i.ez, 0                 ; 2 uses
  br i1 %i.ey, label %bb.z, label %thread-pre-split

bb.z:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit174.thread338
  %brmerge569.not = select i1 %.not483, i1 %i.br, i1 false
  br i1 %brmerge569.not, label %bb.aa, label %.thread347

bb.aa:                                            ; preds = %bb.z
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !300
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !301
  %i.fe = and i32 %i.fd, 524288
  %.not.i177 = icmp eq i32 %i.fe, 0
  br i1 %.not.i177, label %_ZN4llvm7CCState11AllocateRegEt.exit179, label %.thread347

_ZN4llvm7CCState11AllocateRegEt.exit179:          ; preds = %bb.aa
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext 51) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #8
  %i.ff = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i8 0, ptr %i.ff, align 8, !tbaa !303, !alias.scope !802
  %i.fg = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %0, ptr %i.fg, align 8, !tbaa !308, !alias.scope !802
  %i.fh = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 4, !alias.scope !802
  %i.fj = and i8 %i.fi, -128
  %i.fk = trunc i32 %.0 to i8
  %i.fl = shl i8 %i.fk, 1
  %i.fm = and i8 %i.fl, 126
  %i.fn = or disjoint i8 %i.fj, %i.fm
  store i8 %i.fn, ptr %i.fh, align 4, !alias.scope !802
  %i.fo = getelementptr inbounds nuw i8, ptr %14, i64 22
  store i16 %1, ptr %i.fo, align 2, !tbaa !319, !alias.scope !802
  %i.fp = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i16 8, ptr %i.fp, align 8, !tbaa !319, !alias.scope !802
  store i32 51, ptr %14, align 8, !tbaa !301, !alias.scope !802
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  br label %_ZL14CC_X86_64_I128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit

thread-pre-split:                                 ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit174.thread338
  %i.fq = icmp eq i32 %i.ex, 20
  %or.cond461 = and i1 %.not483, %i.fq
  %or.cond462 = select i1 %or.cond461, i1 %i.br, i1 false
  br i1 %or.cond462, label %bb.ab, label %.thread347

bb.ab:                                            ; preds = %thread-pre-split
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !300
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !301
  %i.fv = and i32 %i.fu, 524288
  %.not.i180 = icmp eq i32 %i.fv, 0
  br i1 %.not.i180, label %_ZN4llvm7CCState11AllocateRegEt.exit182, label %.thread370

_ZN4llvm7CCState11AllocateRegEt.exit182:          ; preds = %bb.ab
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext 51) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #8
  %i.fw = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i8 0, ptr %i.fw, align 8, !tbaa !303, !alias.scope !805
  %i.fx = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 %0, ptr %i.fx, align 8, !tbaa !308, !alias.scope !805
  %i.fy = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 4, !alias.scope !805
  %i.ga = and i8 %i.fz, -128
  %i.gb = trunc i32 %.0 to i8
  %i.gc = shl i8 %i.gb, 1
  %i.gd = and i8 %i.gc, 126
  %i.ge = or disjoint i8 %i.ga, %i.gd
  store i8 %i.ge, ptr %i.fy, align 4, !alias.scope !805
  %i.gf = getelementptr inbounds nuw i8, ptr %15, i64 22
  store i16 %1, ptr %i.gf, align 2, !tbaa !319, !alias.scope !805
  %i.gg = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i16 8, ptr %i.gg, align 8, !tbaa !319, !alias.scope !805
  store i32 51, ptr %15, align 8, !tbaa !301, !alias.scope !805
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  br label %_ZL14CC_X86_64_I128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit

.thread347:                                       ; preds = %bb.z, %bb.aa, %thread-pre-split
  %i.gh = and i64 %4, 17179869184
  %.not484 = icmp eq i64 %i.gh, 0
  br i1 %.not484, label %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit, label %bb.ac

bb.ac:                                            ; preds = %.thread347
  %spec.select463 = select i1 %i.br, i32 %.0, i32 2
  br label %.thread370

_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit: ; preds = %.thread347
  switch i16 %.sroa.0185.0, label %.thread440 [
    i16 7, label %bb.ad
    i16 8, label %.thread370
    i16 20, label %bb.bv
    i16 22, label %bb.bx
    i16 26, label %bb.bz
    i16 27, label %bb.cb
    i16 28, label %bb.cd
    i16 29, label %bb.cf
    i16 13, label %.thread435
    i16 14, label %.thread435.fold.split570
    i16 15, label %.thread435.fold.split570
    i16 17, label %.thread435.fold.split570
    i16 48, label %.thread435.fold.split570
    i16 62, label %.thread435.fold.split570
    i16 73, label %.thread435.fold.split570
    i16 94, label %.thread435.fold.split570
    i16 112, label %.thread435.fold.split570
    i16 124, label %.thread435.fold.split570
    i16 136, label %.thread435.fold.split570
    i16 154, label %.thread435.fold.split570
  ]

bb.ad:                                            ; preds = %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !300 ; 3 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !301 ; 3 uses
  %i.gl = and i32 %i.gk, 67108864
  %.not.i.i184 = icmp eq i32 %i.gl, 0
  br i1 %.not.i.i184, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !301
  %i.go = and i32 %i.gn, 1
  %.not.i.i184.1 = icmp eq i32 %i.go, 0
  br i1 %.not.i.i184.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gp = and i32 %i.gk, 134217728
  %.not.i.i184.2 = icmp eq i32 %i.gp, 0
  br i1 %.not.i.i184.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gq = and i32 %i.gk, 33554432
  %.not.i.i184.3 = icmp eq i32 %i.gq, 0
  br i1 %.not.i.i184.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gj, i64 20
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !301 ; 2 uses
  %i.gt = and i32 %i.gs, 128
  %.not.i.i184.4 = icmp eq i32 %i.gt, 0
  br i1 %.not.i.i184.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gu = and i32 %i.gs, 256
  %.not.i.i184.5 = icmp eq i32 %i.gu, 0
  br i1 %.not.i.i184.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %.thread440

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %bb.ad ], [ 1, %bb.ae ], [ 2, %bb.af ], [ 3, %bb.ag ], [ 4, %bb.ah ], [ 5, %bb.ai ]
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr @_ZZL11CC_X86_64_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.i.lcssa.wide
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext %i.gw) #8
  %i.gx = zext i16 %i.gw to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #8
  %i.gy = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i8 0, ptr %i.gy, align 8, !tbaa !303, !alias.scope !808
  %i.gz = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 %0, ptr %i.gz, align 8, !tbaa !308, !alias.scope !808
  %i.ha = getelementptr inbounds nuw i8, ptr %16, i64 20 ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 4, !alias.scope !808
  %i.hc = and i8 %i.hb, -128
  %i.hd = trunc i32 %.0 to i8
  %i.he = shl i8 %i.hd, 1
  %i.hf = and i8 %i.he, 126
  %i.hg = or disjoint i8 %i.hc, %i.hf
  store i8 %i.hg, ptr %i.ha, align 4, !alias.scope !808
  %i.hh = getelementptr inbounds nuw i8, ptr %16, i64 22
  store i16 %1, ptr %i.hh, align 2, !tbaa !319, !alias.scope !808
  %i.hi = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i16 7, ptr %i.hi, align 8, !tbaa !319, !alias.scope !808
  store i32 %i.gx, ptr %16, align 8, !tbaa !301, !alias.scope !808
  %i.hj = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 3 uses
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !322 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 12
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !323
  %.not.i.i185 = icmp ult i32 %i.hm, %i.ho
  br i1 %.not.i.i185, label %bb.ak, label %bb.aj, !prof !324

bb.aj:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.hk, ptr noundef nonnull align 8 dereferenceable(26) %16)
  br label %bb.al

bb.ak:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.hp = zext i32 %i.hm to i64
  %i.hq = load ptr, ptr %i.hk, align 8, !tbaa !300
  %i.hr = getelementptr inbounds nuw [32 x i8], ptr %i.hq, i64 %i.hp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.hr, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 32, i1 false)
  %i.hs = load i32, ptr %i.hl, align 8, !tbaa !322
  %i.ht = add i32 %i.hs, 1
  store i32 %i.ht, ptr %i.hl, align 8, !tbaa !322
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #8
  br label %_ZL14CC_X86_64_I128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit

.thread370:                                       ; preds = %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit, %bb.ac, %bb.ab
  %.2360375 = phi i32 [ %spec.select463, %bb.ac ], [ %.0, %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit ], [ %.0, %bb.ab ] ; 3 uses
  %i.hu = and i64 %4, 4294967296
  %.not485 = icmp eq i64 %i.hu, 0
  br i1 %.not485, label %bb.bm, label %bb.am

bb.am:                                            ; preds = %.thread370
  %i.hv = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.hw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %0, ptr %i.hx, align 8, !tbaa !308, !alias.scope !811
  %i.hy = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 4, !alias.scope !811
  %i.ia = and i8 %i.hz, -128
  %i.ib = trunc i32 %.2360375 to i8
  %i.ic = shl i8 %i.ib, 1
  %i.id = and i8 %i.ic, 126
  %i.ie = or disjoint i8 %i.ia, %i.id
  store i8 %i.ie, ptr %i.hy, align 4, !alias.scope !811
  %i.if = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 %1, ptr %i.if, align 2, !tbaa !319, !alias.scope !811
  %i.ig = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 8, ptr %i.ig, align 8, !tbaa !319, !alias.scope !811
  store i8 2, ptr %i.hw, align 8, !tbaa !303, !alias.scope !811
  store i32 0, ptr %7, align 8, !tbaa !301, !alias.scope !811
  %i.ih = getelementptr inbounds nuw i8, ptr %6, i64 152 ; 5 uses
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !322 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %6, i64 156
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !323
  %.not.i.i187 = icmp ult i32 %i.ii, %i.ik
  br i1 %.not.i.i187, label %bb.ao, label %bb.an, !prof !324

bb.an:                                            ; preds = %bb.am
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.hv, ptr noundef nonnull align 8 dereferenceable(26) %7)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.il = zext i32 %i.ii to i64
  %i.im = load ptr, ptr %i.hv, align 8, !tbaa !300
  %i.in = getelementptr inbounds nuw [32 x i8], ptr %i.im, i64 %i.il
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.in, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  %i.io = load i32, ptr %i.ih, align 8, !tbaa !322
  %i.ip = add i32 %i.io, 1
  store i32 %i.ip, ptr %i.ih, align 8, !tbaa !322
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit.i: ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  %i.iq = and i64 %4, 2147483648
  %.not.i188 = icmp eq i64 %i.iq, 0
  br i1 %.not.i188, label %_ZL14CC_X86_64_I128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit.i
  %i.ir = load i32, ptr %i.ih, align 8, !tbaa !322 ; 9 uses
  %i.is = zext i32 %i.ir to i64
  %i.it = icmp ugt i32 %i.ir, 6
  br i1 %i.it, label %_ZN4llvm7CCState16AllocateRegBlockENS_8ArrayRefItEEj.exit.thread16.i, label %.preheader37.i.i

.preheader37.i.i:                                 ; preds = %bb.ap
  %.not2540.not.i.i = icmp eq i32 %i.ir, 0
  %i.iu = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.iv = load ptr, ptr %i.iu, align 8            ; 6 uses
  br i1 %.not2540.not.i.i, label %_ZN4llvm7CCState16AllocateRegBlockENS_8ArrayRefItEEj.exit.thread16.i, label %.preheader.us.i.preheader.i

.preheader.us.i.preheader.i:                      ; preds = %.preheader37.i.i
  %i.iw = sub nuw nsw i32 6, %i.ir
  %exitcond.not.i.i = icmp eq i32 %i.ir, 1
  %exitcond.not.i.i.1 = icmp eq i32 %i.ir, 2
  %exitcond.not.i.i.2 = icmp eq i32 %i.ir, 3
  %exitcond.not.i.i.3 = icmp eq i32 %i.ir, 4
  %exitcond.not.i.i.4 = icmp eq i32 %i.ir, 5
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %.critedge27.us.i.i, %.preheader.us.i.preheader.i
  %i.ix = phi i64 [ %i.ls, %.critedge27.us.i.i ], [ 0, %.preheader.us.i.preheader.i ]
  %.02245.us.i.i = phi i32 [ %i.lr, %.critedge27.us.i.i ], [ 0, %.preheader.us.i.preheader.i ] ; 8 uses
  %i.iy = zext i32 %.02245.us.i.i to i64
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr @_ZZL14CC_X86_64_I128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateEE4Regs, i64 %i.iy
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !302
  %i.jb = zext i16 %i.ja to i32                   ; 2 uses
  %i.jc = lshr i32 %i.jb, 5
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !301
  %i.jg = and i32 %i.jb, 31
  %i.jh = shl nuw i32 1, %i.jg
  %i.ji = and i32 %i.jh, %i.jf
  %.not36.us.i.i = icmp eq i32 %i.ji, 0
  br i1 %.not36.us.i.i, label %bb.aq, label %.critedge27.us.i.i

bb.aq:                                            ; preds = %.preheader.us.i.i
  br i1 %exitcond.not.i.i, label %.critedge.i.i.preheader, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jj = add i32 %.02245.us.i.i, 1
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr @_ZZL14CC_X86_64_I128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateEE4Regs, i64 %i.jk
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !302
  %i.jn = zext i16 %i.jm to i32                   ; 2 uses
  %i.jo = lshr i32 %i.jn, 5
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !301
  %i.js = and i32 %i.jn, 31
  %i.jt = shl nuw i32 1, %i.js
  %i.ju = and i32 %i.jt, %i.jr
  %.not36.us.i.i.1 = icmp eq i32 %i.ju, 0
  br i1 %.not36.us.i.i.1, label %bb.as, label %.critedge27.us.i.i

bb.as:                                            ; preds = %bb.ar
  br i1 %exitcond.not.i.i.1, label %.critedge.i.i.preheader, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jv = add i32 %.02245.us.i.i, 2
  %i.jw = zext i32 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr @_ZZL14CC_X86_64_I128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateEE4Regs, i64 %i.jw
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !302
  %i.jz = zext i16 %i.jy to i32                   ; 2 uses
  %i.ka = lshr i32 %i.jz, 5
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !301
  %i.ke = and i32 %i.jz, 31
  %i.kf = shl nuw i32 1, %i.ke
  %i.kg = and i32 %i.kf, %i.kd
  %.not36.us.i.i.2 = icmp eq i32 %i.kg, 0
  br i1 %.not36.us.i.i.2, label %bb.au, label %.critedge27.us.i.i

bb.au:                                            ; preds = %bb.at
  br i1 %exitcond.not.i.i.2, label %.critedge.i.i.preheader, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kh = add i32 %.02245.us.i.i, 3
  %i.ki = zext i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr @_ZZL14CC_X86_64_I128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateEE4Regs, i64 %i.ki
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !302
  %i.kl = zext i16 %i.kk to i32                   ; 2 uses
  %i.km = lshr i32 %i.kl, 5
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !301
  %i.kq = and i32 %i.kl, 31
  %i.kr = shl nuw i32 1, %i.kq
  %i.ks = and i32 %i.kr, %i.kp
  %.not36.us.i.i.3 = icmp eq i32 %i.ks, 0
  br i1 %.not36.us.i.i.3, label %bb.aw, label %.critedge27.us.i.i

bb.aw:                                            ; preds = %bb.av
  br i1 %exitcond.not.i.i.3, label %.critedge.i.i.preheader, label %bb.ax
end_hunk_4
begin_hunk_5_@_ZL11CC_X86_64_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
.critedge.i.i.preheader:                          ; preds = %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.az
  br label %.critedge.i.i

.critedge27.us.i.i:                               ; preds = %bb.az, %bb.ax, %bb.av, %bb.at, %bb.ar, %.preheader.us.i.i
  %i.lr = add i32 %.02245.us.i.i, 1               ; 3 uses
  %i.ls = zext i32 %i.lr to i64
  %.not.us.i.i = icmp ult i32 %i.iw, %i.lr
  br i1 %.not.us.i.i, label %_ZN4llvm7CCState16AllocateRegBlockENS_8ArrayRefItEEj.exit.thread16.i, label %.preheader.us.i.i, !llvm.loop !814

.critedge.i.i:                                    ; preds = %.critedge.i.i.preheader, %.critedge.i.i
  %indvars.iv52.i.i = phi i64 [ %indvars.iv.next53.i.i, %.critedge.i.i ], [ 0, %.critedge.i.i.preheader ] ; 2 uses
  %i.lt = trunc nuw i64 %indvars.iv52.i.i to i32
  %i.lu = add i32 %.02245.us.i.i, %i.lt
  %i.lv = zext i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr @_ZZL14CC_X86_64_I128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateEE4Regs, i64 %i.lv
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !302
  call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext %i.lx) #8
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1 ; 2 uses
  %exitcond56.not.i.i = icmp eq i64 %indvars.iv.next53.i.i, %i.is
  br i1 %exitcond56.not.i.i, label %bb.ba, label %.critedge.i.i, !llvm.loop !815

bb.ba:                                            ; preds = %.critedge.i.i
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr @_ZZL14CC_X86_64_I128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateEE4Regs, i64 %i.ix ; 2 uses
  %i.lz = load ptr, ptr %i.hv, align 8, !tbaa !300 ; 5 uses
  %i.ma = load i16, ptr %i.ly, align 2, !tbaa !302
  %i.mb = zext i16 %i.ma to i32
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 8 ; 2 uses
  %i.md = load i8, ptr %i.mc, align 8, !tbaa !303
  %i.me = icmp eq i8 %i.md, 0
  br i1 %i.me, label %_ZN4llvm11CCValAssign12convertToRegENS_10MCRegisterE.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i8 0, ptr %i.mc, align 8, !tbaa !303
  br label %_ZN4llvm11CCValAssign12convertToRegENS_10MCRegisterE.exit.i

_ZN4llvm11CCValAssign12convertToRegENS_10MCRegisterE.exit.i: ; preds = %bb.bb, %bb.ba
  store i32 %i.mb, ptr %i.lz, align 8, !tbaa !301
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lz, i64 32
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ly, i64 2
  %i.mh = load i16, ptr %i.mg, align 2, !tbaa !302
  %i.mi = zext i16 %i.mh to i32
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lz, i64 40 ; 2 uses
  %i.mk = load i8, ptr %i.mj, align 8, !tbaa !303
  %i.ml = icmp eq i8 %i.mk, 0
  br i1 %i.ml, label %_ZN4llvm11CCValAssign12convertToRegENS_10MCRegisterE.exit23.i, label %bb.bc

bb.bc:                                            ; preds = %_ZN4llvm11CCValAssign12convertToRegENS_10MCRegisterE.exit.i
  store i8 0, ptr %i.mj, align 8, !tbaa !303
  br label %_ZN4llvm11CCValAssign12convertToRegENS_10MCRegisterE.exit23.i

_ZN4llvm11CCValAssign12convertToRegENS_10MCRegisterE.exit23.i: ; preds = %bb.bc, %_ZN4llvm11CCValAssign12convertToRegENS_10MCRegisterE.exit.i
  store i32 %i.mi, ptr %i.mf, align 8, !tbaa !301
  br label %bb.bh

_ZN4llvm7CCState16AllocateRegBlockENS_8ArrayRefItEEj.exit.thread16.i: ; preds = %.critedge27.us.i.i, %.preheader37.i.i, %bb.ap
  %i.mm = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.mn = load i8, ptr %i.mm, align 8, !tbaa !334, !range !298, !noundef !299
  %i.mo = trunc nuw i8 %i.mn to i1
  %i.mp = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !335 ; 2 uses
  br i1 %i.mo, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZN4llvm7CCState16AllocateRegBlockENS_8ArrayRefItEEj.exit.thread16.i
  %i.mr = add i64 %i.mq, 31
  %i.ms = and i64 %i.mr, -16                      ; 2 uses
  %i.mt = sub i64 0, %i.ms
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit.i

bb.be:                                            ; preds = %_ZN4llvm7CCState16AllocateRegBlockENS_8ArrayRefItEEj.exit.thread16.i
  %i.mu = add i64 %i.mq, 15
  %i.mv = and i64 %i.mu, -16                      ; 2 uses
  %i.mw = add nsw i64 %i.mv, 16
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit.i

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit.i: ; preds = %bb.be, %bb.bd
  %.sink.i = phi i64 [ %i.ms, %bb.bd ], [ %i.mw, %bb.be ]
  %.0.i.i = phi i64 [ %i.mt, %bb.bd ], [ %i.mv, %bb.be ] ; 2 uses
  store i64 %.sink.i, ptr %i.mp, align 8, !tbaa !335
  %i.mx = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.mx, align 8, !tbaa !336
  %.sroa.speculated.i.i = call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i.i, i8 4)
  store i8 %.sroa.speculated.i.i, ptr %i.mx, align 8, !tbaa !336
  call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %6, i8 4) #8
  %i.my = load ptr, ptr %i.hv, align 8, !tbaa !300 ; 5 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8 ; 2 uses
  %i.na = load i8, ptr %i.mz, align 8, !tbaa !303
  %i.nb = icmp eq i8 %i.na, 1
  br i1 %i.nb, label %_ZN4llvm11CCValAssign12convertToMemEl.exit.i, label %bb.bf

bb.bf:                                            ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit.i
  store i8 1, ptr %i.mz, align 8, !tbaa !303
  br label %_ZN4llvm11CCValAssign12convertToMemEl.exit.i

_ZN4llvm11CCValAssign12convertToMemEl.exit.i:     ; preds = %bb.bf, %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit.i
  store i64 %.0.i.i, ptr %i.my, align 8, !tbaa !340
  %i.nc = getelementptr inbounds nuw i8, ptr %i.my, i64 32
  %i.nd = add nsw i64 %.0.i.i, 8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.my, i64 40 ; 2 uses
  %i.nf = load i8, ptr %i.ne, align 8, !tbaa !303
  %i.ng = icmp eq i8 %i.nf, 1
  br i1 %i.ng, label %_ZN4llvm11CCValAssign12convertToMemEl.exit24.i, label %bb.bg

bb.bg:                                            ; preds = %_ZN4llvm11CCValAssign12convertToMemEl.exit.i
  store i8 1, ptr %i.ne, align 8, !tbaa !303
  br label %_ZN4llvm11CCValAssign12convertToMemEl.exit24.i

_ZN4llvm11CCValAssign12convertToMemEl.exit24.i:   ; preds = %bb.bg, %_ZN4llvm11CCValAssign12convertToMemEl.exit.i
  store i64 %i.nd, ptr %i.nc, align 8, !tbaa !340
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN4llvm11CCValAssign12convertToMemEl.exit24.i, %_ZN4llvm11CCValAssign12convertToRegENS_10MCRegisterE.exit23.i
  %i.nh = phi ptr [ %i.my, %_ZN4llvm11CCValAssign12convertToMemEl.exit24.i ], [ %i.lz, %_ZN4llvm11CCValAssign12convertToRegENS_10MCRegisterE.exit23.i ] ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8 ; 3 uses
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !322 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 12
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !323
  %.not.i.i.i = icmp ult i32 %i.nl, %i.nn
  br i1 %.not.i.i.i, label %bb.bj, label %bb.bi, !prof !324

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.nj, ptr noundef nonnull align 8 dereferenceable(26) %i.nh)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit.i

bb.bj:                                            ; preds = %bb.bh
  %i.no = zext i32 %i.nl to i64
  %i.np = load ptr, ptr %i.nj, align 8, !tbaa !300
  %i.nq = getelementptr inbounds nuw [32 x i8], ptr %i.np, i64 %i.no
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.nq, ptr noundef nonnull align 8 dereferenceable(32) %i.nh, i64 32, i1 false)
  %i.nr = load i32, ptr %i.nk, align 8, !tbaa !322
  %i.ns = add i32 %i.nr, 1
  store i32 %i.ns, ptr %i.nk, align 8, !tbaa !322
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit.i

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit.i: ; preds = %bb.bj, %bb.bi
  %i.nt = load ptr, ptr %i.hv, align 8, !tbaa !300
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 32 ; 2 uses
  %i.nv = load ptr, ptr %i.ni, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 8 ; 3 uses
  %i.nx = load i32, ptr %i.nw, align 8, !tbaa !322 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 12
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !323
  %.not.i.i25.i = icmp ult i32 %i.nx, %i.nz
  br i1 %.not.i.i25.i, label %bb.bl, label %bb.bk, !prof !324

bb.bk:                                            ; preds = %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.nv, ptr noundef nonnull align 8 dereferenceable(26) %i.nu)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit26.i

bb.bl:                                            ; preds = %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit.i
  %i.oa = zext i32 %i.nx to i64
  %i.ob = load ptr, ptr %i.nv, align 8, !tbaa !300
  %i.oc = getelementptr inbounds nuw [32 x i8], ptr %i.ob, i64 %i.oa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.oc, ptr noundef nonnull align 8 dereferenceable(32) %i.nu, i64 32, i1 false)
  %i.od = load i32, ptr %i.nw, align 8, !tbaa !322
  %i.oe = add i32 %i.od, 1
  store i32 %i.oe, ptr %i.nw, align 8, !tbaa !322
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit26.i

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit26.i: ; preds = %bb.bl, %bb.bk
  store i32 0, ptr %i.ih, align 8, !tbaa !322
  br label %_ZL14CC_X86_64_I128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit

bb.bm:                                            ; preds = %.thread370
  %i.of = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !300 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 4
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !301 ; 4 uses
  %i.oj = and i32 %i.oi, 8388608
  %.not.i.i190 = icmp eq i32 %i.oj, 0
  br i1 %.not.i.i190, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit193, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ok = and i32 %i.oi, 268435456
  %.not.i.i190.1 = icmp eq i32 %i.ok, 0
  br i1 %.not.i.i190.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit193, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ol = and i32 %i.oi, 16777216
  %.not.i.i190.2 = icmp eq i32 %i.ol, 0
  br i1 %.not.i.i190.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit193, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.om = and i32 %i.oi, 4194304
  %.not.i.i190.3 = icmp eq i32 %i.om, 0
  br i1 %.not.i.i190.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit193, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.on = getelementptr inbounds nuw i8, ptr %i.og, i64 12
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !301 ; 2 uses
  %i.op = and i32 %i.oo, 8388608
  %.not.i.i190.4 = icmp eq i32 %i.op, 0
  br i1 %.not.i.i190.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit193, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.oq = and i32 %i.oo, 16777216
  %.not.i.i190.5 = icmp eq i32 %i.oq, 0
  br i1 %.not.i.i190.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit193, label %.thread440

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit193: ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm
  %.0613.i.i189.lcssa.wide = phi i64 [ 0, %bb.bm ], [ 1, %bb.bn ], [ 2, %bb.bo ], [ 3, %bb.bp ], [ 4, %bb.bq ], [ 5, %bb.br ]
  %i.or = getelementptr inbounds nuw [2 x i8], ptr @_ZZL14CC_X86_64_I128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateEE4Regs, i64 %.0613.i.i189.lcssa.wide
  %i.os = load i16, ptr %i.or, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext %i.os) #8
  %i.ot = zext i16 %i.os to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #8
  %i.ou = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i8 0, ptr %i.ou, align 8, !tbaa !303, !alias.scope !816
  %i.ov = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 %0, ptr %i.ov, align 8, !tbaa !308, !alias.scope !816
  %i.ow = getelementptr inbounds nuw i8, ptr %17, i64 20 ; 2 uses
  %i.ox = load i8, ptr %i.ow, align 4, !alias.scope !816
  %i.oy = and i8 %i.ox, -128
  %i.oz = trunc i32 %.2360375 to i8
  %i.pa = shl i8 %i.oz, 1
  %i.pb = and i8 %i.pa, 126
  %i.pc = or disjoint i8 %i.oy, %i.pb
  store i8 %i.pc, ptr %i.ow, align 4, !alias.scope !816
  %i.pd = getelementptr inbounds nuw i8, ptr %17, i64 22
  store i16 %1, ptr %i.pd, align 2, !tbaa !319, !alias.scope !816
  %i.pe = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i16 8, ptr %i.pe, align 8, !tbaa !319, !alias.scope !816
  store i32 %i.ot, ptr %17, align 8, !tbaa !301, !alias.scope !816
  %i.pf = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 8 ; 3 uses
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !322 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pg, i64 12
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !323
  %.not.i.i194 = icmp ult i32 %i.pi, %i.pk
  br i1 %.not.i.i194, label %bb.bt, label %bb.bs, !prof !324

bb.bs:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit193
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.pg, ptr noundef nonnull align 8 dereferenceable(26) %17)
  br label %bb.bu

bb.bt:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit193
  %i.pl = zext i32 %i.pi to i64
  %i.pm = load ptr, ptr %i.pg, align 8, !tbaa !300
  %i.pn = getelementptr inbounds nuw [32 x i8], ptr %i.pm, i64 %i.pl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.pn, ptr noundef nonnull align 8 dereferenceable(32) %17, i64 32, i1 false)
  %i.po = load i32, ptr %i.ph, align 8, !tbaa !322
  %i.pp = add i32 %i.po, 1
  store i32 %i.pp, ptr %i.ph, align 8, !tbaa !322
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #8
  br label %_ZL14CC_X86_64_I128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit

bb.bv:                                            ; preds = %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit
  %i.pq = and i64 %4, 2
  %.not491 = icmp eq i64 %i.pq, 0
  br i1 %.not491, label %bb.bw, label %.thread435

bb.bw:                                            ; preds = %bb.bv
  %i.pr = trunc i64 %4 to i1
  %spec.select464 = select i1 %i.pr, i32 2, i32 3
  br label %.thread435

bb.bx:                                            ; preds = %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit
  %i.ps = and i64 %4, 2
  %.not490 = icmp eq i64 %i.ps, 0
  br i1 %.not490, label %bb.by, label %.thread435

bb.by:                                            ; preds = %bb.bx
  %i.pt = trunc i64 %4 to i1
  %spec.select465 = select i1 %i.pt, i32 2, i32 3
  br label %.thread435

bb.bz:                                            ; preds = %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit
  %i.pu = and i64 %4, 2
  %.not489 = icmp eq i64 %i.pu, 0
  br i1 %.not489, label %bb.ca, label %.thread435

bb.ca:                                            ; preds = %bb.bz
  %i.pv = trunc i64 %4 to i1
  %spec.select466 = select i1 %i.pv, i32 2, i32 3
  br label %.thread435

bb.cb:                                            ; preds = %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit
  %i.pw = and i64 %4, 2
  %.not488 = icmp eq i64 %i.pw, 0
  br i1 %.not488, label %bb.cc, label %.thread435

bb.cc:                                            ; preds = %bb.cb
  %i.px = trunc i64 %4 to i1
  %spec.select467 = select i1 %i.px, i32 2, i32 3
  br label %.thread435

bb.cd:                                            ; preds = %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit
  %i.py = and i64 %4, 2
  %.not487 = icmp eq i64 %i.py, 0
  br i1 %.not487, label %bb.ce, label %.thread440

bb.ce:                                            ; preds = %bb.cd
  %i.pz = trunc i64 %4 to i1
  %spec.select468 = select i1 %i.pz, i32 2, i32 3
  br label %.thread440

bb.cf:                                            ; preds = %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit
  %i.qa = and i64 %4, 2
  %.not486 = icmp eq i64 %i.qa, 0
  br i1 %.not486, label %bb.cg, label %.thread440

bb.cg:                                            ; preds = %bb.cf
  %i.qb = trunc i64 %4 to i1
  %spec.select469 = select i1 %i.qb, i32 2, i32 3
  br label %.thread440

.thread435.fold.split570:                         ; preds = %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit, %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit, %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit, %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit, %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit, %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit, %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit, %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit, %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit, %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit, %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit
  br label %.thread435

.thread435:                                       ; preds = %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit, %.thread435.fold.split570, %bb.by, %bb.bx, %bb.ca, %bb.bz, %bb.cc, %bb.cb, %bb.bv, %bb.bw
  %.8414439 = phi i32 [ 1, %bb.cb ], [ %.0, %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit ], [ 1, %bb.bx ], [ 1, %bb.bz ], [ %spec.select464, %bb.bw ], [ %.0, %.thread435.fold.split570 ], [ %spec.select465, %bb.by ], [ 1, %bb.bv ], [ %spec.select466, %bb.ca ], [ %spec.select467, %bb.cc ] ; 3 uses
  %.sroa.0185.8417438 = phi i16 [ 48, %bb.cb ], [ %.sroa.0185.0, %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit ], [ 73, %bb.bx ], [ 62, %bb.bz ], [ 94, %bb.bw ], [ %.sroa.0185.0, %.thread435.fold.split570 ], [ 73, %bb.by ], [ 94, %bb.bv ], [ 62, %bb.ca ], [ 48, %bb.cc ] ; 3 uses
  %i.qc = phi i1 [ false, %bb.cb ], [ true, %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit ], [ false, %bb.bx ], [ false, %bb.bz ], [ false, %bb.bw ], [ false, %.thread435.fold.split570 ], [ false, %bb.by ], [ false, %bb.bv ], [ false, %bb.ca ], [ false, %bb.cc ] ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !39, !nonnull !299, !align !321
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !40, !nonnull !299, !align !321
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 360
  %i.qi = load i32, ptr %i.qh, align 8, !tbaa !398
  %i.qj = icmp sgt i32 %i.qi, 0
  br i1 %i.qj, label %bb.ch, label %.thread440

bb.ch:                                            ; preds = %.thread435
  %i.qk = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr nonnull @_ZZL20RetCC_X86_32_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList6, i64 8) ; 2 uses
  %.not151.not = icmp eq i32 %i.qk, 0
  br i1 %.not151.not, label %.thread440, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #8
  %i.ql = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i8 0, ptr %i.ql, align 8, !tbaa !303, !alias.scope !819
  %i.qm = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 %0, ptr %i.qm, align 8, !tbaa !308, !alias.scope !819
  %i.qn = getelementptr inbounds nuw i8, ptr %18, i64 20 ; 2 uses
  %i.qo = load i8, ptr %i.qn, align 4, !alias.scope !819
  %i.qp = and i8 %i.qo, -128
  %i.qq = trunc i32 %.8414439 to i8
  %i.qr = shl i8 %i.qq, 1
  %i.qs = and i8 %i.qr, 126
  %i.qt = or disjoint i8 %i.qp, %i.qs
  store i8 %i.qt, ptr %i.qn, align 4, !alias.scope !819
  %i.qu = getelementptr inbounds nuw i8, ptr %18, i64 22
  store i16 %1, ptr %i.qu, align 2, !tbaa !319, !alias.scope !819
  %i.qv = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i16 %.sroa.0185.8417438, ptr %i.qv, align 8, !tbaa !319, !alias.scope !819
  store i32 %i.qk, ptr %18, align 8, !tbaa !301, !alias.scope !819
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #8
  br label %_ZL14CC_X86_64_I128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit

.thread440:                                       ; preds = %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit, %bb.br, %bb.ai, %bb.cd, %bb.ce, %bb.cf, %bb.cg, %bb.ch, %.thread435
  %i.qw = phi i1 [ false, %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit ], [ %i.qc, %.thread435 ], [ %i.qc, %bb.ch ], [ false, %bb.cg ], [ false, %bb.cf ], [ false, %bb.ce ], [ false, %bb.cd ], [ false, %bb.ai ], [ false, %bb.br ] ; 2 uses
  %.sroa.0185.8418 = phi i16 [ %.sroa.0185.0, %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit ], [ %.sroa.0185.8417438, %.thread435 ], [ %.sroa.0185.8417438, %bb.ch ], [ 50, %bb.cg ], [ 50, %bb.cf ], [ 49, %bb.ce ], [ 49, %bb.cd ], [ 7, %bb.ai ], [ 8, %bb.br ] ; 14 uses
  %.8415 = phi i32 [ %.0, %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit ], [ %.8414439, %.thread435 ], [ %.8414439, %bb.ch ], [ %spec.select469, %bb.cg ], [ 1, %bb.cf ], [ %spec.select468, %bb.ce ], [ 1, %bb.cd ], [ %.0, %bb.ai ], [ %.2360375, %bb.br ] ; 7 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.qy = load i8, ptr %i.qx, align 4, !tbaa !354, !range !298, !noundef !299
  %i.qz = trunc nuw i8 %i.qy to i1
  br i1 %i.qz, label %.thread441.thread557, label %bb.cj

bb.cj:                                            ; preds = %.thread440
  switch i16 %.sroa.0185.8418, label %.thread445 [
    i16 49, label %.critedge2
    i16 63, label %.critedge2
    i16 77, label %.critedge2
    i16 96, label %.critedge2
    i16 113, label %.critedge2
    i16 125, label %.critedge2
    i16 140, label %.critedge2
    i16 156, label %.critedge2
    i16 50, label %.critedge4
    i16 64, label %.critedge4
    i16 82, label %.critedge4
    i16 97, label %.critedge4
    i16 114, label %.critedge4
    i16 126, label %.critedge4
    i16 145, label %.critedge4
    i16 157, label %.critedge4
    i16 7, label %.critedge6
    i16 8, label %.critedge6
  ]

.critedge2:                                       ; preds = %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cj
  %i.ra = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !39, !nonnull !299, !align !321
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 16
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !40, !nonnull !299, !align !321
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 360
  %i.rf = load i32, ptr %i.re, align 8, !tbaa !398
  %i.rg = icmp sgt i32 %i.rf, 6
  br i1 %i.rg, label %bb.ck, label %.thread441.thread

bb.ck:                                            ; preds = %.critedge2
  %i.rh = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr nonnull @_ZZL20RetCC_X86_32_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList7, i64 8) ; 2 uses
  %.not152.not = icmp eq i32 %i.rh, 0
  br i1 %.not152.not, label %.thread441, label %bb.cl

end_hunk_5
begin_hunk_6_@_ZL11CC_X86_32_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
  store i8 1, ptr %i.ce, align 8, !tbaa !303
  br label %_ZN4llvm11CCValAssign12convertToMemEl.exit28.i

_ZN4llvm11CCValAssign12convertToMemEl.exit28.i:   ; preds = %bb.q, %_ZN4llvm11CCValAssign12convertToMemEl.exit27.i
  store i64 %i.cd, ptr %i.cc, align 8, !tbaa !340
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !322 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !323
  %.not.i.i.i = icmp ult i32 %i.ck, %i.cm
  br i1 %.not.i.i.i, label %bb.s, label %bb.r, !prof !324

bb.r:                                             ; preds = %_ZN4llvm11CCValAssign12convertToMemEl.exit28.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(26) %i.bo)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit.i

bb.s:                                             ; preds = %_ZN4llvm11CCValAssign12convertToMemEl.exit28.i
  %i.cn = zext i32 %i.ck to i64
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !300
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %i.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cp, ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i64 32, i1 false)
  %i.cq = load i32, ptr %i.cj, align 8, !tbaa !322
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.cj, align 8, !tbaa !322
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit.i

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit.i: ; preds = %bb.s, %bb.r
  %i.cs = load ptr, ptr %i.ag, align 8, !tbaa !300
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32 ; 2 uses
  %i.cu = load ptr, ptr %i.ch, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !322 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !323
  %.not.i.i29.i = icmp ult i32 %i.cw, %i.cy
  br i1 %.not.i.i29.i, label %bb.u, label %bb.t, !prof !324

bb.t:                                             ; preds = %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(26) %i.ct)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit30.i

bb.u:                                             ; preds = %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit.i
  %i.cz = zext i32 %i.cw to i64
  %i.da = load ptr, ptr %i.cu, align 8, !tbaa !300
  %i.db = getelementptr inbounds nuw [32 x i8], ptr %i.da, i64 %i.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.db, ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i64 32, i1 false)
  %i.dc = load i32, ptr %i.cv, align 8, !tbaa !322
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr %i.cv, align 8, !tbaa !322
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit30.i

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit30.i: ; preds = %bb.u, %bb.t
  %i.de = load ptr, ptr %i.ag, align 8, !tbaa !300
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 64 ; 2 uses
  %i.dg = load ptr, ptr %i.ch, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 3 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !322 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !323
  %.not.i.i31.i = icmp ult i32 %i.di, %i.dk
  br i1 %.not.i.i31.i, label %bb.w, label %bb.v, !prof !324

bb.v:                                             ; preds = %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit30.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(26) %i.df)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit32.i

bb.w:                                             ; preds = %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit30.i
  %i.dl = zext i32 %i.di to i64
  %i.dm = load ptr, ptr %i.dg, align 8, !tbaa !300
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.dm, i64 %i.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %i.df, i64 32, i1 false)
  %i.do = load i32, ptr %i.dh, align 8, !tbaa !322
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr %i.dh, align 8, !tbaa !322
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit32.i

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit32.i: ; preds = %bb.w, %bb.v
  %i.dq = load ptr, ptr %i.ag, align 8, !tbaa !300
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 96 ; 2 uses
  %i.ds = load ptr, ptr %i.ch, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 3 uses
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !322 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !323
  %.not.i.i33.i = icmp ult i32 %i.du, %i.dw
  br i1 %.not.i.i33.i, label %bb.y, label %bb.x, !prof !324

bb.x:                                             ; preds = %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit32.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(26) %i.dr)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit34.i

bb.y:                                             ; preds = %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit32.i
  %i.dx = zext i32 %i.du to i64
  %i.dy = load ptr, ptr %i.ds, align 8, !tbaa !300
  %i.dz = getelementptr inbounds nuw [32 x i8], ptr %i.dy, i64 %i.dx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dz, ptr noundef nonnull align 8 dereferenceable(32) %i.dr, i64 32, i1 false)
  %i.ea = load i32, ptr %i.dt, align 8, !tbaa !322
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dt, align 8, !tbaa !322
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit34.i

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit34.i: ; preds = %bb.y, %bb.x
  store i32 0, ptr %i.as, align 8, !tbaa !322
  br label %_ZL20CC_X86_32_I128_FP128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit

bb.z:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread54
  %i.ec = load i32, ptr %6, align 8, !tbaa !8
  %i.ed = icmp eq i32 %i.ec, 20
  %i.ee = and i64 %4, 8192
  %i.ef = icmp ne i64 %i.ee, 0
  %or.cond69.not79.not81 = select i1 %i.ed, i1 %i.ef, i1 false
  %brmerge.not = and i1 %i.ad, %or.cond69.not79.not81
  br i1 %brmerge.not, label %bb.aa, label %_ZN4llvm7CCState11AllocateRegEt.exit37.thread61

bb.aa:                                            ; preds = %bb.z
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !300
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !301
  %i.ej = and i32 %i.ei, 33554432
  %.not.i35 = icmp eq i32 %i.ej, 0
  br i1 %.not.i35, label %bb.ab, label %_ZN4llvm7CCState11AllocateRegEt.exit37.thread61

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext 25) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.ek, align 8, !tbaa !303, !alias.scope !849
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %0, ptr %i.el, align 8, !tbaa !308, !alias.scope !849
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.en = load i8, ptr %i.em, align 4, !alias.scope !849
  %i.eo = and i8 %i.en, -128
  %i.ep = trunc i32 %.0 to i8
  %i.eq = shl i8 %i.ep, 1
  %i.er = and i8 %i.eq, 126
  %i.es = or disjoint i8 %i.eo, %i.er
  store i8 %i.es, ptr %i.em, align 4, !alias.scope !849
  %i.et = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %1, ptr %i.et, align 2, !tbaa !319, !alias.scope !849
  %i.eu = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 7, ptr %i.eu, align 8, !tbaa !319, !alias.scope !849
  store i32 25, ptr %9, align 8, !tbaa !301, !alias.scope !849
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 3 uses
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !322 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !323
  %.not.i.i38 = icmp ult i32 %i.ey, %i.fa
  br i1 %.not.i.i38, label %bb.ad, label %bb.ac, !prof !324

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(26) %9)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit37

bb.ad:                                            ; preds = %bb.ab
  %i.fb = zext i32 %i.ey to i64
  %i.fc = load ptr, ptr %i.ew, align 8, !tbaa !300
  %i.fd = getelementptr inbounds nuw [32 x i8], ptr %i.fc, i64 %i.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fd, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.fe = load i32, ptr %i.ex, align 8, !tbaa !322
  %i.ff = add i32 %i.fe, 1
  store i32 %i.ff, ptr %i.ex, align 8, !tbaa !322
  br label %_ZN4llvm7CCState11AllocateRegEt.exit37

_ZN4llvm7CCState11AllocateRegEt.exit37:           ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %_ZL20CC_X86_32_I128_FP128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit

_ZN4llvm7CCState11AllocateRegEt.exit37.thread61:  ; preds = %bb.z, %bb.aa
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.fh = load i8, ptr %i.fg, align 4, !tbaa !354, !range !298, !noundef !299
  %i.fi = trunc nuw i8 %i.fh to i1
  %i.fj = and i64 %4, 8
  %i.fk = icmp eq i64 %i.fj, 0
  %or.cond72.not82 = select i1 %i.fi, i1 true, i1 %i.fk
  %.not73 = xor i1 %i.ad, true
  %brmerge74 = or i1 %or.cond72.not82, %.not73
  br i1 %brmerge74, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit37.thread61
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !300
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !301 ; 3 uses
  %i.fo = and i32 %i.fn, 4194304
  %.not.i.i41 = icmp eq i32 %i.fo, 0
  br i1 %.not.i.i41, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fp = and i32 %i.fn, 134217728
  %.not.i.i41.1 = icmp eq i32 %i.fp, 0
  br i1 %.not.i.i41.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fq = and i32 %i.fn, 33554432
  %.not.i.i41.2 = icmp eq i32 %i.fq, 0
  br i1 %.not.i.i41.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %.thread

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.ag, %bb.af, %bb.ae
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %bb.ae ], [ 1, %bb.af ], [ 2, %bb.ag ]
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr @_ZZL14RetCC_X86_32_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList3, i64 %.0613.i.i.lcssa.wide
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext %i.fs) #8
  %i.ft = zext i16 %i.fs to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.fu = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.fu, align 8, !tbaa !303, !alias.scope !852
  %i.fv = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %0, ptr %i.fv, align 8, !tbaa !308, !alias.scope !852
  %i.fw = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 4, !alias.scope !852
  %i.fy = and i8 %i.fx, -128
  %i.fz = trunc i32 %.0 to i8
  %i.ga = shl i8 %i.fz, 1
  %i.gb = and i8 %i.ga, 126
  %i.gc = or disjoint i8 %i.fy, %i.gb
  store i8 %i.gc, ptr %i.fw, align 4, !alias.scope !852
  %i.gd = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i16 %1, ptr %i.gd, align 2, !tbaa !319, !alias.scope !852
  %i.ge = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 7, ptr %i.ge, align 8, !tbaa !319, !alias.scope !852
  store i32 %i.ft, ptr %10, align 8, !tbaa !301, !alias.scope !852
  %i.gf = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 3 uses
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !322 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 12
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !323
  %.not.i.i42 = icmp ult i32 %i.gi, %i.gk
  br i1 %.not.i.i42, label %bb.ai, label %bb.ah, !prof !324

bb.ah:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.gg, ptr noundef nonnull align 8 dereferenceable(26) %10)
  br label %bb.aj

bb.ai:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.gl = zext i32 %i.gi to i64
  %i.gm = load ptr, ptr %i.gg, align 8, !tbaa !300
  %i.gn = getelementptr inbounds nuw [32 x i8], ptr %i.gm, i64 %i.gl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.gn, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  %i.go = load i32, ptr %i.gh, align 8, !tbaa !322
  %i.gp = add i32 %i.go, 1
  store i32 %i.gp, ptr %i.gh, align 8, !tbaa !322
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br label %_ZL20CC_X86_32_I128_FP128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit

.thread:                                          ; preds = %bb.ag, %_ZN4llvm7CCState11AllocateRegEt.exit37.thread61
  %i.gq = tail call fastcc noundef zeroext i1 @_ZL16CC_X86_32_CommonjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %.sroa.032.0, i32 noundef %.0, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(420) %6)
  br label %_ZL20CC_X86_32_I128_FP128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit

_ZL20CC_X86_32_I128_FP128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit: ; preds = %bb.aj, %_ZN4llvm7CCState11AllocateRegEt.exit37, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit34.i, %_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit.i, %_ZN4llvm7CCState11AllocateRegEt.exit, %.thread
  %.5 = phi i1 [ false, %_ZN4llvm7CCState11AllocateRegEt.exit37 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit ], [ %i.gq, %.thread ], [ false, %bb.aj ], [ false, %_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit.i ], [ false, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit34.i ]
  ret i1 %.5
}

declare void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420), i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(26) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::CCValAssign", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !322
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 32) #8
  %i.f = load ptr, ptr %0, align 8, !tbaa !300
  %i.g = load i32, ptr %i.a, align 8, !tbaa !322
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !322
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !322
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420), i8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt(ptr noundef nonnull align 8 dereferenceable(420) %0, ptr %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not14.i = icmp eq i64 %2, 0
  br i1 %.not14.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !300
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.c = phi i64 [ 0, %.lr.ph.i ], [ %i.o, %bb.c ]
  %.0613.i = phi i32 [ 0, %.lr.ph.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !302
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %i.g = lshr i32 %i.f, 5
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !301
  %i.k = and i32 %i.f, 31
  %i.l = shl nuw i32 1, %i.k
  %i.m = and i32 %i.l, %i.j
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add i32 %.0613.i, 1                      ; 2 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = icmp ugt i64 %2, %i.o
  br i1 %i.p, label %bb.b, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread, !llvm.loop !749

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit: ; preds = %bb.b
  %i.q = zext i32 %.0613.i to i64                 ; 3 uses
  %i.r = icmp eq i64 %2, %i.q
  br i1 %i.r, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.q
  %i.t = load i16, ptr %i.s, align 2, !tbaa !302  ; 2 uses
  %i.u = zext i16 %i.t to i32
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.q
  %i.w = load i16, ptr %i.v, align 2, !tbaa !302
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %0, i16 noundef zeroext %i.t) #8
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %0, i16 noundef zeroext %i.w) #8
  br label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread: ; preds = %bb.c, %bb.a, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit, %bb.d
  %.sroa.05.0 = phi i32 [ %i.u, %bb.d ], [ 0, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i32 %.sroa.05.0
}

declare void @_ZN4llvm7CCState11HandleByValEjNS_3MVTES1_NS_11CCValAssign7LocInfoEiNS_5AlignENS_3ISD10ArgFlagsTyE(ptr noundef nonnull align 8 dereferenceable(420), i32 noundef, i16, i16, i32 noundef, i32 noundef, i8, ptr noundef byval(%"struct.llvm::ISD::ArgFlagsTy") align 8) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #2

declare { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK4llvm3EVT13getTypeForEVTERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912), ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL16CC_X86_32_CommonjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(420) %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %"struct.llvm::ISD::ArgFlagsTy", align 8 ; 3 uses
  %8 = alloca %"struct.llvm::ISD::ArgFlagsTy", align 8 ; 3 uses
  %9 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %10 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %11 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %12 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %13 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %14 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %15 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %16 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %17 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %18 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %i.a = and i64 %4, 32
  %.not126 = icmp eq i64 %i.a, 0
  br i1 %.not126, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %4, ptr %7, align 8, !tbaa !336
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %.sroa.21.0..sroa_idx, align 8
  tail call void @_ZN4llvm7CCState11HandleByValEjNS_3MVTES1_NS_11CCValAssign7LocInfoEiNS_5AlignENS_3ISD10ArgFlagsTyE(ptr noundef nonnull align 8 dereferenceable(420) %6, i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i32 noundef 4, i8 2, ptr noundef nonnull byval(%"struct.llvm::ISD::ArgFlagsTy") align 8 %7) #8
  br label %bb.ap

bb.c:                                             ; preds = %bb.a
  %i.b = and i64 %4, 2048
  %.not127 = icmp eq i64 %i.b, 0
  br i1 %.not127, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %4, ptr %8, align 8, !tbaa !336
  %.sroa.21.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %5, ptr %.sroa.21.0..sroa_idx56, align 8
  tail call void @_ZN4llvm7CCState11HandleByValEjNS_3MVTES1_NS_11CCValAssign7LocInfoEiNS_5AlignENS_3ISD10ArgFlagsTyE(ptr noundef nonnull align 8 dereferenceable(420) %6, i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i32 noundef 4, i8 2, ptr noundef nonnull byval(%"struct.llvm::ISD::ArgFlagsTy") align 8 %8) #8
  br label %bb.ap

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.d = load i8, ptr %i.c, align 4, !tbaa !354, !range !298, !noundef !299
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %.not120 = xor i1 %i.e, true
  %i.f = and i64 %4, 8                            ; 2 uses
  %i.g = icmp ne i64 %i.f, 0
  %or.cond = and i1 %i.g, %.not120
  %i.h = and i16 %2, -2
  %switch = icmp eq i16 %i.h, 14
  %or.cond125 = select i1 %or.cond, i1 %switch, i1 false
  br i1 %or.cond125, label %.critedge, label %.thread

.critedge:                                        ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39, !nonnull !299, !align !321
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40, !nonnull !299, !align !321
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 360
  %i.n = load i32, ptr %i.m, align 8, !tbaa !398
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.f, label %.thread

bb.f:                                             ; preds = %.critedge
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !300
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i32, ptr %i.r, align 4, !tbaa !301  ; 3 uses
  %i.t = and i32 %i.s, 128
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = and i32 %i.s, 256
  %.not.i.i.1 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = and i32 %i.s, 512
  %.not.i.i.2 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %.thread

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.h, %bb.g, %bb.f
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %bb.f ], [ 1, %bb.g ], [ 2, %bb.h ]
  %i.w = getelementptr inbounds nuw [2 x i8], ptr @_ZZL14RetCC_X86_32_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList4, i64 %.0613.i.i.lcssa.wide
  %i.x = load i16, ptr %i.w, align 2, !tbaa !302  ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext %i.x) #8
  %i.y = zext i16 %i.x to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.z, align 8, !tbaa !303, !alias.scope !855
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %0, ptr %i.aa, align 8, !tbaa !308, !alias.scope !855
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 4, !alias.scope !855
  %i.ad = and i8 %i.ac, -128
  %i.ae = trunc i32 %3 to i8
  %i.af = shl i8 %i.ae, 1
  %i.ag = and i8 %i.af, 126
  %i.ah = or disjoint i8 %i.ad, %i.ag
  store i8 %i.ah, ptr %i.ab, align 4, !alias.scope !855
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %1, ptr %i.ai, align 2, !tbaa !319, !alias.scope !855
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 %2, ptr %i.aj, align 8, !tbaa !319, !alias.scope !855
  store i32 %i.y, ptr %9, align 8, !tbaa !301, !alias.scope !855
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %bb.ap

.thread:                                          ; preds = %bb.h, %.critedge, %bb.e
  %i.ak = icmp eq i64 %i.f, 0
  %or.cond124.not = or i1 %i.ak, %i.e
  br i1 %or.cond124.not, label %.thread96, label %bb.i

bb.i:                                             ; preds = %.thread
  switch i16 %2, label %bb.v [
    i16 13, label %bb.j
    i16 7, label %.critedge2
    i16 14, label %.critedge2
    i16 15, label %bb.u
  ]

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !300
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !301 ; 3 uses
  %i.ap = and i32 %i.ao, 128
  %.not.i.i123 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i123, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit126, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = and i32 %i.ao, 256
  %.not.i.i123.1 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i123.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit126, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = and i32 %i.ao, 512
  %.not.i.i123.2 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i123.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit126, label %.thread96.thread

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit126: ; preds = %bb.l, %bb.k, %bb.j
  %.0613.i.i122.lcssa.wide = phi i64 [ 0, %bb.j ], [ 1, %bb.k ], [ 2, %bb.l ]
  %i.as = getelementptr inbounds nuw [2 x i8], ptr @_ZZL14RetCC_X86_32_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList4, i64 %.0613.i.i122.lcssa.wide
  %i.at = load i16, ptr %i.as, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext %i.at) #8
  %i.au = zext i16 %i.at to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.av, align 8, !tbaa !303, !alias.scope !858
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %0, ptr %i.aw, align 8, !tbaa !308, !alias.scope !858
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 4, !alias.scope !858
  %i.az = and i8 %i.ay, -128
  %i.ba = trunc i32 %3 to i8
  %i.bb = shl i8 %i.ba, 1
  %i.bc = and i8 %i.bb, 126
  %i.bd = or disjoint i8 %i.az, %i.bc
  store i8 %i.bd, ptr %i.ax, align 4, !alias.scope !858
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i16 %1, ptr %i.be, align 2, !tbaa !319, !alias.scope !858
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 13, ptr %i.bf, align 8, !tbaa !319, !alias.scope !858
  store i32 %i.au, ptr %10, align 8, !tbaa !301, !alias.scope !858
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br label %bb.ap

.thread96:                                        ; preds = %.thread
  switch i16 %2, label %bb.v [
    i16 13, label %.thread96.thread
    i16 7, label %.critedge2
    i16 14, label %.critedge2
    i16 15, label %bb.u
  ]

.thread96.thread:                                 ; preds = %bb.l, %.thread96
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !334, !range !298, !noundef !299
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !335 ; 2 uses
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread96.thread
  %i.bl = add i64 %i.bk, 7
  %i.bm = and i64 %i.bl, -4                       ; 2 uses
  %i.bn = sub i64 0, %i.bm
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

bb.n:                                             ; preds = %.thread96.thread
  %i.bo = add i64 %i.bk, 3
  %i.bp = and i64 %i.bo, -4                       ; 2 uses
  %i.bq = add nsw i64 %i.bp, 4
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit: ; preds = %bb.m, %bb.n
  %.sink = phi i64 [ %i.bm, %bb.m ], [ %i.bq, %bb.n ]
  %.0.i = phi i64 [ %i.bn, %bb.m ], [ %i.bp, %bb.n ]
  store i64 %.sink, ptr %i.bj, align 8, !tbaa !335
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.br, align 8, !tbaa !336
  %.sroa.speculated.i = tail call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i, i8 2)
  store i8 %.sroa.speculated.i, ptr %i.br, align 8, !tbaa !336
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %6, i8 2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %0, ptr %i.bt, align 8, !tbaa !308, !alias.scope !861
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 4, !alias.scope !861
  %i.bw = and i8 %i.bv, -128
  %i.bx = trunc i32 %3 to i8
  %i.by = shl i8 %i.bx, 1
  %i.bz = and i8 %i.by, 126
  %i.ca = or disjoint i8 %i.bw, %i.bz
  store i8 %i.ca, ptr %i.bu, align 4, !alias.scope !861
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i16 %1, ptr %i.cb, align 2, !tbaa !319, !alias.scope !861
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i16 13, ptr %i.cc, align 8, !tbaa !319, !alias.scope !861
  store i8 1, ptr %i.bs, align 8, !tbaa !303, !alias.scope !861
  store i64 %.0.i, ptr %11, align 8, !tbaa !340, !alias.scope !861
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !322 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !323
  %.not.i.i127 = icmp ult i32 %i.cg, %i.ci
  br i1 %.not.i.i127, label %bb.p, label %bb.o, !prof !324

bb.o:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(26) %11)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit

bb.p:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  %i.cj = zext i32 %i.cg to i64
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !300
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %i.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  %i.cm = load i32, ptr %i.cf, align 8, !tbaa !322
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cf, align 8, !tbaa !322
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  br label %bb.ap

.critedge2:                                       ; preds = %bb.i, %bb.i, %.thread96, %.thread96
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !334, !range !298, !noundef !299
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !335 ; 2 uses
  br i1 %i.cq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.critedge2
  %i.ct = add i64 %i.cs, 7
  %i.cu = and i64 %i.ct, -4                       ; 2 uses
  %i.cv = sub i64 0, %i.cu
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit131

bb.r:                                             ; preds = %.critedge2
  %i.cw = add i64 %i.cs, 3
  %i.cx = and i64 %i.cw, -4                       ; 2 uses
  %i.cy = add nsw i64 %i.cx, 4
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit131

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit131: ; preds = %bb.q, %bb.r
  %.sink139 = phi i64 [ %i.cu, %bb.q ], [ %i.cy, %bb.r ]
  %.0.i128 = phi i64 [ %i.cv, %bb.q ], [ %i.cx, %bb.r ]
  store i64 %.sink139, ptr %i.cr, align 8, !tbaa !335
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i129 = load i8, ptr %i.cz, align 8, !tbaa !336
  %.sroa.speculated.i130 = tail call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i129, i8 2)
  store i8 %.sroa.speculated.i130, ptr %i.cz, align 8, !tbaa !336
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %6, i8 2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  %i.da = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %0, ptr %i.db, align 8, !tbaa !308, !alias.scope !864
  %i.dc = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 4, !alias.scope !864
  %i.de = and i8 %i.dd, -128
  %i.df = trunc i32 %3 to i8
  %i.dg = shl i8 %i.df, 1
  %i.dh = and i8 %i.dg, 126
  %i.di = or disjoint i8 %i.de, %i.dh
  store i8 %i.di, ptr %i.dc, align 4, !alias.scope !864
  %i.dj = getelementptr inbounds nuw i8, ptr %12, i64 22
  store i16 %1, ptr %i.dj, align 2, !tbaa !319, !alias.scope !864
  %i.dk = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i16 %2, ptr %i.dk, align 8, !tbaa !319, !alias.scope !864
  store i8 1, ptr %i.da, align 8, !tbaa !303, !alias.scope !864
  store i64 %.0.i128, ptr %12, align 8, !tbaa !340, !alias.scope !864
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 3 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !322 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !323
  %.not.i.i132 = icmp ult i32 %i.do, %i.dq
  br i1 %.not.i.i132, label %bb.t, label %bb.s, !prof !324

bb.s:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit131
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull align 8 dereferenceable(26) %12)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit133

bb.t:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit131
  %i.dr = zext i32 %i.do to i64
  %i.ds = load ptr, ptr %i.dm, align 8, !tbaa !300
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %i.ds, i64 %i.dr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dt, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false)
  %i.du = load i32, ptr %i.dn, align 8, !tbaa !322
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr %i.dn, align 8, !tbaa !322
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit133

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit133: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  br label %bb.ap

bb.u:                                             ; preds = %bb.i, %.thread96
  %i.dw = tail call noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %6, i32 noundef 8, i8 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  %i.dx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 %0, ptr %i.dy, align 8, !tbaa !308, !alias.scope !867
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 4, !alias.scope !867
  %i.eb = and i8 %i.ea, -128
  %i.ec = trunc i32 %3 to i8
  %i.ed = shl i8 %i.ec, 1
  %i.ee = and i8 %i.ed, 126
  %i.ef = or disjoint i8 %i.eb, %i.ee
  store i8 %i.ef, ptr %i.dz, align 4, !alias.scope !867
  %i.eg = getelementptr inbounds nuw i8, ptr %13, i64 22
  store i16 %1, ptr %i.eg, align 2, !tbaa !319, !alias.scope !867
  %i.eh = getelementptr inbounds nuw i8, ptr %13, i64 24
end_hunk_6
begin_hunk_7_@_ZL23CC_X86_32_Vector_DarwinjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
  store i8 0, ptr %i.bd, align 8, !tbaa !303, !alias.scope !880
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %0, ptr %i.be, align 8, !tbaa !308, !alias.scope !880
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 4, !alias.scope !880
  %i.bh = and i8 %i.bg, -128
  %i.bi = trunc i32 %3 to i8
  %i.bj = shl i8 %i.bi, 1
  %i.bk = and i8 %i.bj, 126
  %i.bl = or disjoint i8 %i.bh, %i.bk
  store i8 %i.bl, ptr %i.bf, align 4, !alias.scope !880
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i16 %1, ptr %i.bm, align 2, !tbaa !319, !alias.scope !880
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 %2, ptr %i.bn, align 8, !tbaa !319, !alias.scope !880
  store i32 %i.bc, ptr %6, align 8, !tbaa !301, !alias.scope !880
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !322 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !323
  %.not.i.i55 = icmp ult i32 %i.br, %i.bt
  br i1 %.not.i.i55, label %bb.o, label %bb.n, !prof !324

bb.n:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit54
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(26) %6)
  br label %bb.p

bb.o:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit54
  %i.bu = zext i32 %i.br to i64
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !300
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %i.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  %i.bx = load i32, ptr %i.bq, align 8, !tbaa !322
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.bq, align 8, !tbaa !322
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.x

bb.q:                                             ; preds = %bb.m, %.critedge2
  switch i16 %2, label %.thread77 [
    i16 50, label %.critedge4
    i16 64, label %.critedge4
    i16 82, label %.critedge4
    i16 97, label %.critedge4
    i16 114, label %.critedge4
    i16 126, label %.critedge4
    i16 145, label %.critedge4
    i16 157, label %.critedge4
  ]

.critedge4:                                       ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !300
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 28
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !301 ; 4 uses
  %i.cd = and i32 %i.cc, 8388608
  %.not.i.i58 = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i58, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit61, label %bb.r

bb.r:                                             ; preds = %.critedge4
  %i.ce = and i32 %i.cc, 16777216
  %.not.i.i58.1 = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i58.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit61, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = and i32 %i.cc, 33554432
  %.not.i.i58.2 = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i58.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit61, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cg = and i32 %i.cc, 67108864
  %.not.i.i58.3 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i58.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit61, label %.thread77

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit61: ; preds = %bb.t, %bb.s, %bb.r, %.critedge4
  %.0613.i.i57.lcssa.wide = phi i64 [ 0, %.critedge4 ], [ 1, %bb.r ], [ 2, %bb.s ], [ 3, %bb.t ]
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr @_ZZL15RetCC_X86CommonjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList7, i64 %.0613.i.i57.lcssa.wide
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %4, i16 noundef zeroext %i.ci) #8
  %i.cj = zext i16 %i.ci to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 0, ptr %i.ck, align 8, !tbaa !303, !alias.scope !883
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %0, ptr %i.cl, align 8, !tbaa !308, !alias.scope !883
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 4, !alias.scope !883
  %i.co = and i8 %i.cn, -128
  %i.cp = trunc i32 %3 to i8
  %i.cq = shl i8 %i.cp, 1
  %i.cr = and i8 %i.cq, 126
  %i.cs = or disjoint i8 %i.co, %i.cr
  store i8 %i.cs, ptr %i.cm, align 4, !alias.scope !883
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 %1, ptr %i.ct, align 2, !tbaa !319, !alias.scope !883
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 %2, ptr %i.cu, align 8, !tbaa !319, !alias.scope !883
  store i32 %i.cj, ptr %7, align 8, !tbaa !301, !alias.scope !883
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !322 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !323
  %.not.i.i62 = icmp ult i32 %i.cy, %i.da
  br i1 %.not.i.i62, label %bb.v, label %bb.u, !prof !324

bb.u:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit61
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(26) %7)
  br label %bb.w

bb.v:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit61
  %i.db = zext i32 %i.cy to i64
  %i.dc = load ptr, ptr %i.cw, align 8, !tbaa !300
  %i.dd = getelementptr inbounds nuw [32 x i8], ptr %i.dc, i64 %i.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dd, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  %i.de = load i32, ptr %i.cx, align 8, !tbaa !322
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr %i.cx, align 8, !tbaa !322
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.x

.thread77:                                        ; preds = %bb.b, %bb.i, %bb.t, %bb.a, %bb.q
  %i.dg = tail call fastcc noundef zeroext i1 @_ZL23CC_X86_32_Vector_CommonjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(420) %4)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.p, %bb.h, %.thread77
  %.5 = phi i1 [ false, %bb.h ], [ %i.dg, %.thread77 ], [ false, %bb.w ], [ false, %bb.p ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL25CC_X86_32_Vector_StandardjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(420) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %6 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %7 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %8 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %9 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %10 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.b = load i8, ptr %i.a, align 4, !tbaa !354, !range !298, !noundef !299
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.thread79, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i16 %2, label %_ZL19CC_X86_Win32_VectorjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit [
    i16 48, label %.critedge
    i16 62, label %.critedge
    i16 73, label %.critedge
    i16 94, label %.critedge
    i16 112, label %.critedge
    i16 124, label %.critedge
    i16 136, label %.critedge
    i16 154, label %.critedge
    i16 49, label %.critedge2
    i16 63, label %.critedge2
    i16 77, label %.critedge2
    i16 96, label %.critedge2
    i16 113, label %.critedge2
    i16 125, label %.critedge2
    i16 140, label %.critedge2
    i16 156, label %.critedge2
    i16 50, label %.critedge4
    i16 64, label %.critedge4
    i16 82, label %.critedge4
    i16 97, label %.critedge4
    i16 114, label %.critedge4
    i16 126, label %.critedge4
    i16 145, label %.critedge4
    i16 157, label %.critedge4
  ]

.critedge:                                        ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !300
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 4, !tbaa !301  ; 3 uses
  %i.h = and i32 %i.g, 128
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.i = and i32 %i.g, 256
  %.not.i.i.1 = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = and i32 %i.g, 512
  %.not.i.i.2 = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.h

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.d, %bb.c, %.critedge
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %.critedge ], [ 1, %bb.c ], [ 2, %bb.d ]
  %i.k = getelementptr inbounds nuw [2 x i8], ptr @_ZZL14RetCC_X86_32_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList4, i64 %.0613.i.i.lcssa.wide
  %i.l = load i16, ptr %i.k, align 2, !tbaa !302  ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %4, i16 noundef zeroext %i.l) #8
  %i.m = zext i16 %i.l to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.n, align 8, !tbaa !303, !alias.scope !886
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %0, ptr %i.o, align 8, !tbaa !308, !alias.scope !886
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4, !alias.scope !886
  %i.r = and i8 %i.q, -128
  %i.s = trunc i32 %3 to i8
  %i.t = shl i8 %i.s, 1
  %i.u = and i8 %i.t, 126
  %i.v = or disjoint i8 %i.r, %i.u
  store i8 %i.v, ptr %i.p, align 4, !alias.scope !886
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %1, ptr %i.w, align 2, !tbaa !319, !alias.scope !886
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 %2, ptr %i.x, align 8, !tbaa !319, !alias.scope !886
  store i32 %i.m, ptr %8, align 8, !tbaa !301, !alias.scope !886
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !322 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !323
  %.not.i.i61 = icmp ult i32 %i.ab, %i.ad
  br i1 %.not.i.i61, label %bb.f, label %bb.e, !prof !324

bb.e:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(26) %8)
  br label %bb.g

bb.f:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.ae = zext i32 %i.ab to i64
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !300
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.ah = load i32, ptr %i.aa, align 8, !tbaa !322
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.aa, align 8, !tbaa !322
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %_ZL19CC_X86_Win32_VectorjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread

bb.h:                                             ; preds = %bb.d
  switch i16 %2, label %_ZL19CC_X86_Win32_VectorjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit [
    i16 49, label %.critedge2
    i16 63, label %.critedge2
    i16 77, label %.critedge2
    i16 96, label %.critedge2
    i16 113, label %.critedge2
    i16 125, label %.critedge2
    i16 140, label %.critedge2
    i16 156, label %.critedge2
    i16 50, label %.critedge4
    i16 64, label %.critedge4
    i16 82, label %.critedge4
    i16 97, label %.critedge4
    i16 114, label %.critedge4
    i16 126, label %.critedge4
    i16 145, label %.critedge4
    i16 157, label %.critedge4
  ]

.critedge2:                                       ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !39, !nonnull !299, !align !321
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !40, !nonnull !299, !align !321
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 360
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !398
  %i.ap = icmp sgt i32 %i.ao, 6
  br i1 %i.ap, label %bb.i, label %bb.o

bb.i:                                             ; preds = %.critedge2
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !300 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !301
  %.not.i.i63 = icmp sgt i32 %i.at, -1
  br i1 %.not.i.i63, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.av = load i32, ptr %i.au, align 4, !tbaa !301 ; 2 uses
  %i.aw = and i32 %i.av, 1
  %.not.i.i63.1 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i63.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = and i32 %i.av, 2
  %.not.i.i63.2 = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i63.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66, label %bb.o

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66: ; preds = %bb.k, %bb.j, %bb.i
  %.0613.i.i62.lcssa.wide = phi i64 [ 0, %bb.i ], [ 1, %bb.j ], [ 2, %bb.k ]
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr @_ZZL25CC_X86_32_Vector_StandardjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList2, i64 %.0613.i.i62.lcssa.wide
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %4, i16 noundef zeroext %i.az) #8
  %i.ba = zext i16 %i.az to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.bb, align 8, !tbaa !303, !alias.scope !889
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %0, ptr %i.bc, align 8, !tbaa !308, !alias.scope !889
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 4, !alias.scope !889
  %i.bf = and i8 %i.be, -128
  %i.bg = trunc i32 %3 to i8
  %i.bh = shl i8 %i.bg, 1
  %i.bi = and i8 %i.bh, 126
  %i.bj = or disjoint i8 %i.bf, %i.bi
  store i8 %i.bj, ptr %i.bd, align 4, !alias.scope !889
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %1, ptr %i.bk, align 2, !tbaa !319, !alias.scope !889
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 %2, ptr %i.bl, align 8, !tbaa !319, !alias.scope !889
  store i32 %i.ba, ptr %9, align 8, !tbaa !301, !alias.scope !889
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !322 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !323
  %.not.i.i67 = icmp ult i32 %i.bp, %i.br
  br i1 %.not.i.i67, label %bb.m, label %bb.l, !prof !324

bb.l:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(26) %9)
  br label %bb.n

bb.m:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66
  %i.bs = zext i32 %i.bp to i64
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !300
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %i.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.bv = load i32, ptr %i.bo, align 8, !tbaa !322
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bo, align 8, !tbaa !322
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %_ZL19CC_X86_Win32_VectorjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread

bb.o:                                             ; preds = %bb.k, %.critedge2
  switch i16 %2, label %_ZL19CC_X86_Win32_VectorjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit [
    i16 50, label %.critedge4
    i16 64, label %.critedge4
    i16 82, label %.critedge4
    i16 97, label %.critedge4
    i16 114, label %.critedge4
    i16 126, label %.critedge4
    i16 145, label %.critedge4
    i16 157, label %.critedge4
  ]

.critedge4:                                       ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !300
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 28
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !301 ; 3 uses
  %i.cb = and i32 %i.ca, 8388608
  %.not.i.i70 = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i70, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit73, label %bb.p

bb.p:                                             ; preds = %.critedge4
  %i.cc = and i32 %i.ca, 16777216
  %.not.i.i70.1 = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i70.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit73, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = and i32 %i.ca, 33554432
  %.not.i.i70.2 = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i70.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit73, label %_ZL19CC_X86_Win32_VectorjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit73: ; preds = %bb.q, %bb.p, %.critedge4
  %.0613.i.i69.lcssa.wide = phi i64 [ 0, %.critedge4 ], [ 1, %bb.p ], [ 2, %bb.q ]
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr @_ZZL25CC_X86_32_Vector_StandardjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList3, i64 %.0613.i.i69.lcssa.wide
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %4, i16 noundef zeroext %i.cf) #8
  %i.cg = zext i16 %i.cf to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.ch, align 8, !tbaa !303, !alias.scope !892
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %0, ptr %i.ci, align 8, !tbaa !308, !alias.scope !892
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 4, !alias.scope !892
  %i.cl = and i8 %i.ck, -128
  %i.cm = trunc i32 %3 to i8
  %i.cn = shl i8 %i.cm, 1
  %i.co = and i8 %i.cn, 126
  %i.cp = or disjoint i8 %i.cl, %i.co
  store i8 %i.cp, ptr %i.cj, align 4, !alias.scope !892
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i16 %1, ptr %i.cq, align 2, !tbaa !319, !alias.scope !892
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 %2, ptr %i.cr, align 8, !tbaa !319, !alias.scope !892
  store i32 %i.cg, ptr %10, align 8, !tbaa !301, !alias.scope !892
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 3 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !322 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !323
  %.not.i.i74 = icmp ult i32 %i.cv, %i.cx
  br i1 %.not.i.i74, label %bb.s, label %bb.r, !prof !324

bb.r:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit73
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(26) %10)
  br label %bb.t

bb.s:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit73
  %i.cy = zext i32 %i.cv to i64
  %i.cz = load ptr, ptr %i.ct, align 8, !tbaa !300
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %i.cz, i64 %i.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.da, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  %i.db = load i32, ptr %i.cu, align 8, !tbaa !322
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr %i.cu, align 8, !tbaa !322
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br label %_ZL19CC_X86_Win32_VectorjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread

.thread79:                                        ; preds = %bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !39, !nonnull !299, !align !321
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !40, !nonnull !299, !align !321 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 52
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !353
  %i.dj = icmp eq i32 %i.di, 15
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 56
  %i.dl = load i32, ptr %i.dk, align 8            ; 2 uses
  %i.dm = icmp eq i32 %i.dl, 28
  %i.dn = icmp eq i32 %i.dl, 0
  %i.do = or i1 %i.dm, %i.dn
  %or.cond = select i1 %i.dj, i1 %i.do, i1 false
  br i1 %or.cond, label %_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread, label %_ZL19CC_X86_Win32_VectorjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread: ; preds = %.thread79
  switch i16 %2, label %_ZL19CC_X86_Win32_VectorjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit [
    i16 48, label %.critedge.i
    i16 62, label %.critedge.i
    i16 73, label %.critedge.i
    i16 94, label %.critedge.i
    i16 112, label %.critedge.i
    i16 124, label %.critedge.i
    i16 136, label %.critedge.i
    i16 154, label %.critedge.i
    i16 49, label %.critedge2.i
    i16 63, label %.critedge2.i
    i16 77, label %.critedge2.i
    i16 96, label %.critedge2.i
    i16 113, label %.critedge2.i
    i16 125, label %.critedge2.i
    i16 140, label %.critedge2.i
    i16 156, label %.critedge2.i
    i16 50, label %.critedge4.i
    i16 64, label %.critedge4.i
    i16 82, label %.critedge4.i
    i16 97, label %.critedge4.i
    i16 114, label %.critedge4.i
    i16 126, label %.critedge4.i
    i16 145, label %.critedge4.i
    i16 157, label %.critedge4.i
  ]

.critedge.i:                                      ; preds = %_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread, %_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread, %_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread, %_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread, %_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread, %_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread, %_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread, %_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.dq = load i8, ptr %i.dp, align 8, !tbaa !334, !range !298, !noundef !299
  %i.dr = trunc nuw i8 %i.dq to i1
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !335 ; 2 uses
  br i1 %i.dr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.critedge.i
  %i.du = add i64 %i.dt, 19
  %i.dv = and i64 %i.du, -4                       ; 2 uses
  %i.dw = sub i64 0, %i.dv
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit.i

bb.v:                                             ; preds = %.critedge.i
  %i.dx = add i64 %i.dt, 3
  %i.dy = and i64 %i.dx, -4                       ; 2 uses
  %i.dz = add nsw i64 %i.dy, 16
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit.i

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit.i: ; preds = %bb.v, %bb.u
  %.sink.i = phi i64 [ %i.dv, %bb.u ], [ %i.dz, %bb.v ]
  %.0.i.i = phi i64 [ %i.dw, %bb.u ], [ %i.dy, %bb.v ]
  store i64 %.sink.i, ptr %i.ds, align 8, !tbaa !335
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.ea, align 8, !tbaa !336
  %.sroa.speculated.i.i = tail call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i.i, i8 2)
  store i8 %.sroa.speculated.i.i, ptr %i.ea, align 8, !tbaa !336
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %4, i8 2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %0, ptr %i.ec, align 8, !tbaa !308, !alias.scope !895
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 4, !alias.scope !895
  %i.ef = and i8 %i.ee, -128
  %i.eg = trunc i32 %3 to i8
  %i.eh = shl i8 %i.eg, 1
  %i.ei = and i8 %i.eh, 126
  %i.ej = or disjoint i8 %i.ef, %i.ei
  store i8 %i.ej, ptr %i.ed, align 4, !alias.scope !895
  %i.ek = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i16 %1, ptr %i.ek, align 2, !tbaa !319, !alias.scope !895
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 %2, ptr %i.el, align 8, !tbaa !319, !alias.scope !895
  store i8 1, ptr %i.eb, align 8, !tbaa !303, !alias.scope !895
  store i64 %.0.i.i, ptr %5, align 8, !tbaa !340, !alias.scope !895
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 3 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !322 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !323
  %.not.i.i.i = icmp ult i32 %i.ep, %i.er
  br i1 %.not.i.i.i, label %bb.x, label %bb.w, !prof !324

bb.w:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 8 dereferenceable(26) %5)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit.i

bb.x:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit.i
  %i.es = zext i32 %i.ep to i64
  %i.et = load ptr, ptr %i.en, align 8, !tbaa !300
  %i.eu = getelementptr inbounds nuw [32 x i8], ptr %i.et, i64 %i.es
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %i.ev = load i32, ptr %i.eo, align 8, !tbaa !322
  %i.ew = add i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eo, align 8, !tbaa !322
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit.i

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %_ZL19CC_X86_Win32_VectorjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread

.critedge2.i:                                     ; preds = %_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread, %_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread, %_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread, %_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread, %_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread, %_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread, %_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread, %_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ey = load i8, ptr %i.ex, align 8, !tbaa !334, !range !298, !noundef !299
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !335 ; 2 uses
  br i1 %i.ez, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.critedge2.i
  %i.fc = add i64 %i.fb, 35
  %i.fd = and i64 %i.fc, -4                       ; 2 uses
  %i.fe = sub i64 0, %i.fd
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit84

bb.z:                                             ; preds = %.critedge2.i
  %i.ff = add i64 %i.fb, 3
  %i.fg = and i64 %i.ff, -4                       ; 2 uses
  %i.fh = add nsw i64 %i.fg, 32
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit84

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit84: ; preds = %bb.y, %bb.z
  %.sink = phi i64 [ %i.fd, %bb.y ], [ %i.fh, %bb.z ]
  %.0.i81 = phi i64 [ %i.fe, %bb.y ], [ %i.fg, %bb.z ]
  store i64 %.sink, ptr %i.fa, align 8, !tbaa !335
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i82 = load i8, ptr %i.fi, align 8, !tbaa !336
  %.sroa.speculated.i83 = tail call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i82, i8 2)
  store i8 %.sroa.speculated.i83, ptr %i.fi, align 8, !tbaa !336
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %4, i8 2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 16
end_hunk_7
begin_hunk_8_@_ZL16CC_X86_32_FastCCjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
  %11 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %i.a = and i64 %4, 32
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %4, ptr %7, align 8, !tbaa !336
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_ZN4llvm7CCState11HandleByValEjNS_3MVTES1_NS_11CCValAssign7LocInfoEiNS_5AlignENS_3ISD10ArgFlagsTyE(ptr noundef nonnull align 8 dereferenceable(420) %6, i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i32 noundef 4, i8 2, ptr noundef nonnull byval(%"struct.llvm::ISD::ArgFlagsTy") align 8 %7) #8
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  switch i16 %2, label %bb.e [
    i16 2, label %.critedge
    i16 5, label %.critedge
    i16 6, label %.critedge
    i16 19, label %.critedge
  ]

.critedge:                                        ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.b = and i64 %4, 2
  %.not58 = icmp eq i64 %i.b, 0
  br i1 %.not58, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.c = trunc i64 %4 to i1
  %. = select i1 %i.c, i32 2, i32 3
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %.critedge
  %.sroa.024.0 = phi i16 [ 7, %.critedge ], [ 7, %bb.d ], [ %2, %bb.c ] ; 6 uses
  %.052 = phi i32 [ 1, %.critedge ], [ %., %bb.d ], [ %3, %bb.c ] ; 5 uses
  %i.d = and i64 %4, 128
  %.not59 = icmp eq i64 %i.d, 0
  br i1 %.not59, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread43, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !300
  %i.g = load i32, ptr %i.f, align 4, !tbaa !301
  %i.h = and i32 %i.g, 4194304
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.g, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread43

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext 22) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.i, align 8, !tbaa !303, !alias.scope !950
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %0, ptr %i.j, align 8, !tbaa !308, !alias.scope !950
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4, !alias.scope !950
  %i.m = and i8 %i.l, -128
  %i.n = trunc i32 %.052 to i8
  %i.o = shl i8 %i.n, 1
  %i.p = and i8 %i.o, 126
  %i.q = or disjoint i8 %i.m, %i.p
  store i8 %i.q, ptr %i.k, align 4, !alias.scope !950
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %1, ptr %i.r, align 2, !tbaa !319, !alias.scope !950
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 %.sroa.024.0, ptr %i.s, align 8, !tbaa !319, !alias.scope !950
  store i32 22, ptr %8, align 8, !tbaa !301, !alias.scope !950
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !322  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !323
  %.not.i.i = icmp ult i32 %i.w, %i.y
  br i1 %.not.i.i, label %bb.i, label %bb.h, !prof !324

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(26) %8)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

bb.i:                                             ; preds = %bb.g
  %i.z = zext i32 %i.w to i64
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !300
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.ac = load i32, ptr %i.v, align 8, !tbaa !322
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.v, align 8, !tbaa !322
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

_ZN4llvm7CCState11AllocateRegEt.exit:             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %bb.aa

_ZN4llvm7CCState11AllocateRegEt.exit.thread43:    ; preds = %bb.f, %bb.e
  %i.ae = icmp eq i16 %.sroa.024.0, 7
  br i1 %i.ae, label %bb.j, label %.thread

bb.j:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread43
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !300
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !301 ; 2 uses
  %i.ai = and i32 %i.ah, 33554432
  %.not.i.i59 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i59, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = and i32 %i.ah, 134217728
  %.not.i.i59.1 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i59.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %.thread

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.k, %bb.j
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %bb.j ], [ 1, %bb.k ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr @_ZZL16CC_X86_32_FastCCjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.i.lcssa.wide
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext %i.al) #8
  %i.am = zext i16 %i.al to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.an, align 8, !tbaa !303, !alias.scope !953
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %0, ptr %i.ao, align 8, !tbaa !308, !alias.scope !953
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 4, !alias.scope !953
  %i.ar = and i8 %i.aq, -128
  %i.as = trunc i32 %.052 to i8
  %i.at = shl i8 %i.as, 1
  %i.au = and i8 %i.at, 126
  %i.av = or disjoint i8 %i.ar, %i.au
  store i8 %i.av, ptr %i.ap, align 4, !alias.scope !953
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %1, ptr %i.aw, align 2, !tbaa !319, !alias.scope !953
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 7, ptr %i.ax, align 8, !tbaa !319, !alias.scope !953
  store i32 %i.am, ptr %9, align 8, !tbaa !301, !alias.scope !953
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !322 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !323
  %.not.i.i60 = icmp ult i32 %i.bb, %i.bd
  br i1 %.not.i.i60, label %bb.m, label %bb.l, !prof !324

bb.l:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(26) %9)
  br label %bb.n

bb.m:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.be = zext i32 %i.bb to i64
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !300
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.bf, i64 %i.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.bh = load i32, ptr %i.ba, align 8, !tbaa !322
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.ba, align 8, !tbaa !322
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %bb.aa

.thread:                                          ; preds = %bb.k, %_ZN4llvm7CCState11AllocateRegEt.exit.thread43
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bk = load i8, ptr %i.bj, align 4, !tbaa !354, !range !298, !noundef !299
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %.thread53, label %bb.o

bb.o:                                             ; preds = %.thread
  %i.bm = and i16 %.sroa.024.0, -2
  %switch = icmp eq i16 %i.bm, 14
  br i1 %switch, label %.critedge2, label %.thread55

.critedge2:                                       ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !39, !nonnull !299, !align !321
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !40, !nonnull !299, !align !321
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 360
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !398
  %i.bt = icmp sgt i32 %i.bs, 1
  br i1 %i.bt, label %bb.p, label %.thread53

bb.p:                                             ; preds = %.critedge2
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !300
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !301 ; 3 uses
  %i.by = and i32 %i.bx, 128
  %.not.i.i63 = icmp eq i32 %i.by, 0
  br i1 %.not.i.i63, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = and i32 %i.bx, 256
  %.not.i.i63.1 = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i63.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = and i32 %i.bx, 512
  %.not.i.i63.2 = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i63.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66, label %.thread53

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66: ; preds = %bb.r, %bb.q, %bb.p
  %.0613.i.i62.lcssa.wide = phi i64 [ 0, %bb.p ], [ 1, %bb.q ], [ 2, %bb.r ]
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr @_ZZL14RetCC_X86_32_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList4, i64 %.0613.i.i62.lcssa.wide
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext %i.cc) #8
  %i.cd = zext i16 %i.cc to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.ce, align 8, !tbaa !303, !alias.scope !956
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %0, ptr %i.cf, align 8, !tbaa !308, !alias.scope !956
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 4, !alias.scope !956
  %i.ci = and i8 %i.ch, -128
  %i.cj = trunc i32 %.052 to i8
  %i.ck = shl i8 %i.cj, 1
  %i.cl = and i8 %i.ck, 126
  %i.cm = or disjoint i8 %i.ci, %i.cl
  store i8 %i.cm, ptr %i.cg, align 4, !alias.scope !956
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i16 %1, ptr %i.cn, align 2, !tbaa !319, !alias.scope !956
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 %.sroa.024.0, ptr %i.co, align 8, !tbaa !319, !alias.scope !956
  store i32 %i.cd, ptr %10, align 8, !tbaa !301, !alias.scope !956
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !322 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !323
  %.not.i.i67 = icmp ult i32 %i.cs, %i.cu
  br i1 %.not.i.i67, label %bb.t, label %bb.s, !prof !324

bb.s:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(26) %10)
  br label %bb.u

bb.t:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit66
  %i.cv = zext i32 %i.cs to i64
  %i.cw = load ptr, ptr %i.cq, align 8, !tbaa !300
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %i.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  %i.cy = load i32, ptr %i.cr, align 8, !tbaa !322
  %i.cz = add i32 %i.cy, 1
  store i32 %i.cz, ptr %i.cr, align 8, !tbaa !322
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br label %bb.aa

.thread53:                                        ; preds = %bb.r, %.critedge2, %.thread
  %i.da = icmp eq i16 %.sroa.024.0, 15
  br i1 %i.da, label %bb.v, label %.thread55

bb.v:                                             ; preds = %.thread53
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !334, !range !298, !noundef !299
  %i.dd = trunc nuw i8 %i.dc to i1
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !335 ; 2 uses
  br i1 %i.dd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dg = add i64 %i.df, 15
  %i.dh = and i64 %i.dg, -8                       ; 2 uses
  %i.di = sub i64 0, %i.dh
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

bb.x:                                             ; preds = %bb.v
  %i.dj = add i64 %i.df, 7
  %i.dk = and i64 %i.dj, -8                       ; 2 uses
  %i.dl = add nsw i64 %i.dk, 8
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit: ; preds = %bb.w, %bb.x
  %.sink = phi i64 [ %i.dh, %bb.w ], [ %i.dl, %bb.x ]
  %.0.i = phi i64 [ %i.di, %bb.w ], [ %i.dk, %bb.x ]
  store i64 %.sink, ptr %i.de, align 8, !tbaa !335
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.dm, align 8, !tbaa !336
  %.sroa.speculated.i = tail call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i, i8 3)
  store i8 %.sroa.speculated.i, ptr %i.dm, align 8, !tbaa !336
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %6, i8 3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.dn = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %0, ptr %i.do, align 8, !tbaa !308, !alias.scope !959
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 4, !alias.scope !959
  %i.dr = and i8 %i.dq, -128
  %i.ds = trunc i32 %.052 to i8
  %i.dt = shl i8 %i.ds, 1
  %i.du = and i8 %i.dt, 126
  %i.dv = or disjoint i8 %i.dr, %i.du
  store i8 %i.dv, ptr %i.dp, align 4, !alias.scope !959
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i16 %1, ptr %i.dw, align 2, !tbaa !319, !alias.scope !959
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i16 15, ptr %i.dx, align 8, !tbaa !319, !alias.scope !959
  store i8 1, ptr %i.dn, align 8, !tbaa !303, !alias.scope !959
  store i64 %.0.i, ptr %11, align 8, !tbaa !340, !alias.scope !959
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 3 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !322 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !323
  %.not.i.i69 = icmp ult i32 %i.eb, %i.ed
  br i1 %.not.i.i69, label %bb.z, label %bb.y, !prof !324

bb.y:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noundef nonnull align 8 dereferenceable(26) %11)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit70

bb.z:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  %i.ee = zext i32 %i.eb to i64
  %i.ef = load ptr, ptr %i.dz, align 8, !tbaa !300
  %i.eg = getelementptr inbounds nuw [32 x i8], ptr %i.ef, i64 %i.ee
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.eg, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  %i.eh = load i32, ptr %i.ea, align 8, !tbaa !322
  %i.ei = add i32 %i.eh, 1
  store i32 %i.ei, ptr %i.ea, align 8, !tbaa !322
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit70

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit70: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  br label %bb.aa

.thread55:                                        ; preds = %bb.o, %.thread53
  %i.ej = tail call fastcc noundef zeroext i1 @_ZL16CC_X86_32_CommonjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %.sroa.024.0, i32 noundef %.052, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(420) %6)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.u, %bb.n, %_ZN4llvm7CCState11AllocateRegEt.exit, %.thread55, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit70, %bb.b
  %.5 = phi i1 [ false, %bb.b ], [ false, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit70 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit ], [ %i.ej, %.thread55 ], [ false, %bb.u ], [ false, %bb.n ]
  ret i1 %.5
}

declare noundef ptr @_ZNK4llvm6Module13getModuleFlagENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288), ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL23CC_X86_32_RegCallv4_WinjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(420) %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %"class.llvm::MVT", align 2         ; 5 uses
  %8 = alloca %"struct.llvm::ISD::ArgFlagsTy", align 8 ; 3 uses
  %9 = alloca %"struct.llvm::ISD::ArgFlagsTy", align 8 ; 3 uses
  %10 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %11 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %12 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %13 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %14 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %15 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %16 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %17 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %18 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %19 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %20 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %21 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %22 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %23 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %24 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %25 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %26 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  store i16 %2, ptr %7, align 2
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39, !nonnull !299, !align !321
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40, !nonnull !299, !align !321 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 522
  %i.f = load i8, ptr %i.e, align 2, !tbaa !156, !range !298, !noundef !299
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %i.h = and i64 %4, 32                           ; 2 uses
  %i.i = icmp ne i64 %i.h, 0
  %or.cond = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %4, ptr %8, align 8, !tbaa !336
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %5, ptr %.sroa.11.0..sroa_idx, align 8
  tail call void @_ZN4llvm7CCState11HandleByValEjNS_3MVTES1_NS_11CCValAssign7LocInfoEiNS_5AlignENS_3ISD10ArgFlagsTyE(ptr noundef nonnull align 8 dereferenceable(420) %6, i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i32 noundef 8, i8 3, ptr noundef nonnull byval(%"struct.llvm::ISD::ArgFlagsTy") align 8 %8) #8
  br label %bb.bp

bb.c:                                             ; preds = %bb.a
  %.not313 = icmp eq i64 %i.h, 0
  br i1 %.not313, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %4, ptr %9, align 8, !tbaa !336
  %.sroa.11.0..sroa_idx143 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %5, ptr %.sroa.11.0..sroa_idx143, align 8
  tail call void @_ZN4llvm7CCState11HandleByValEjNS_3MVTES1_NS_11CCValAssign7LocInfoEiNS_5AlignENS_3ISD10ArgFlagsTyE(ptr noundef nonnull align 8 dereferenceable(420) %6, i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i32 noundef 4, i8 2, ptr noundef nonnull byval(%"struct.llvm::ISD::ArgFlagsTy") align 8 %9) #8
  br label %bb.bp

bb.e:                                             ; preds = %bb.c
  switch i16 %2, label %.thread208.thread [
    i16 2, label %.critedge
    i16 5, label %.critedge
    i16 6, label %.critedge
    i16 19, label %.critedge
    i16 26, label %.critedge2
end_hunk_8
begin_hunk_9_@_ZL23CC_X86_32_RegCallv4_WinjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
  br label %bb.bp

bb.bn:                                            ; preds = %switch.early.test
  br i1 %i.jo, label %.critedge22, label %switch.early.test310

switch.early.test310:                             ; preds = %bb.bn
  switch i16 %.sroa.0.0.copyload145341, label %bb.bo [
    i16 156, label %.critedge22
    i16 140, label %.critedge22
    i16 96, label %.critedge22
    i16 77, label %.critedge22
    i16 63, label %.critedge22
  ]

.critedge22:                                      ; preds = %switch.early.test310, %switch.early.test310, %switch.early.test310, %switch.early.test310, %switch.early.test310, %bb.bn
  %i.mt = tail call noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %6, i32 noundef 32, i8 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #8
  %i.mu = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.mv = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 %0, ptr %i.mv, align 8, !tbaa !308, !alias.scope !1001
  %i.mw = getelementptr inbounds nuw i8, ptr %25, i64 20 ; 2 uses
  %i.mx = load i8, ptr %i.mw, align 4, !alias.scope !1001
  %i.my = and i8 %i.mx, -128
  %i.mz = trunc i32 %.2340 to i8
  %i.na = shl i8 %i.mz, 1
  %i.nb = and i8 %i.na, 126
  %i.nc = or disjoint i8 %i.my, %i.nb
  store i8 %i.nc, ptr %i.mw, align 4, !alias.scope !1001
  %i.nd = getelementptr inbounds nuw i8, ptr %25, i64 22
  store i16 %1, ptr %i.nd, align 2, !tbaa !319, !alias.scope !1001
  %i.ne = getelementptr inbounds nuw i8, ptr %25, i64 24
  store i16 %.sroa.0.0.copyload145341, ptr %i.ne, align 8, !tbaa !319, !alias.scope !1001
  store i8 1, ptr %i.mu, align 8, !tbaa !303, !alias.scope !1001
  store i64 %i.mt, ptr %25, align 8, !tbaa !340, !alias.scope !1001
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #8
  br label %bb.bp

bb.bo:                                            ; preds = %switch.early.test310
  br i1 %i.jk, label %.critedge24, label %switch.early.test311

switch.early.test311:                             ; preds = %bb.bo
  switch i16 %.sroa.0.0.copyload145341, label %bb.bp [
    i16 157, label %.critedge24
    i16 145, label %.critedge24
    i16 97, label %.critedge24
    i16 82, label %.critedge24
    i16 64, label %.critedge24
  ]

.critedge24:                                      ; preds = %switch.early.test311, %switch.early.test311, %switch.early.test311, %switch.early.test311, %switch.early.test311, %bb.bo
  %i.nf = tail call noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %6, i32 noundef 64, i8 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #8
  %i.ng = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.nh = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i32 %0, ptr %i.nh, align 8, !tbaa !308, !alias.scope !1004
  %i.ni = getelementptr inbounds nuw i8, ptr %26, i64 20 ; 2 uses
  %i.nj = load i8, ptr %i.ni, align 4, !alias.scope !1004
  %i.nk = and i8 %i.nj, -128
  %i.nl = trunc i32 %.2340 to i8
  %i.nm = shl i8 %i.nl, 1
  %i.nn = and i8 %i.nm, 126
  %i.no = or disjoint i8 %i.nk, %i.nn
  store i8 %i.no, ptr %i.ni, align 4, !alias.scope !1004
  %i.np = getelementptr inbounds nuw i8, ptr %26, i64 22
  store i16 %1, ptr %i.np, align 2, !tbaa !319, !alias.scope !1004
  %i.nq = getelementptr inbounds nuw i8, ptr %26, i64 24
  store i16 %.sroa.0.0.copyload145341, ptr %i.nq, align 8, !tbaa !319, !alias.scope !1004
  store i8 1, ptr %i.ng, align 8, !tbaa !303, !alias.scope !1004
  store i64 %i.nf, ptr %26, align 8, !tbaa !340, !alias.scope !1004
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #8
  br label %bb.bp

bb.bp:                                            ; preds = %switch.early.test311, %bb.bh, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit177, %bb.ax, %_ZN4llvm7CCState11AllocateRegEt.exit163, %bb.ai, %_ZN4llvm7CCState11AllocateRegEt.exit151, %_ZN4llvm7CCState11AllocateRegEt.exit, %bb.m, %.thread219, %.critedge24, %.critedge22, %.critedge20, %_ZNK4llvm8TypeSizecvmEv.exit, %.critedge16, %.critedge14, %.critedge12, %bb.d, %bb.b
  %.15 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.m ], [ false, %.critedge12 ], [ false, %.critedge14 ], [ false, %.critedge16 ], [ false, %_ZNK4llvm8TypeSizecvmEv.exit ], [ false, %.critedge20 ], [ false, %.critedge22 ], [ false, %.critedge24 ], [ false, %.thread219 ], [ false, %bb.bh ], [ false, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit177 ], [ false, %bb.ax ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit163 ], [ false, %bb.ai ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit151 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit ], [ true, %switch.early.test311 ]
  ret i1 %.15
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL17CC_X86_32_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(420) %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %"class.llvm::MVT", align 2         ; 5 uses
  %8 = alloca %"struct.llvm::ISD::ArgFlagsTy", align 8 ; 3 uses
  %9 = alloca %"struct.llvm::ISD::ArgFlagsTy", align 8 ; 3 uses
  %10 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %11 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %12 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %13 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %14 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %15 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %16 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %17 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %18 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %19 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %20 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %21 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %22 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %23 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %24 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %25 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %26 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  store i16 %2, ptr %7, align 2
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39, !nonnull !299, !align !321
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40, !nonnull !299, !align !321 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 522
  %i.f = load i8, ptr %i.e, align 2, !tbaa !156, !range !298, !noundef !299
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %i.h = and i64 %4, 32                           ; 2 uses
  %i.i = icmp ne i64 %i.h, 0
  %or.cond = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %4, ptr %8, align 8, !tbaa !336
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %5, ptr %.sroa.11.0..sroa_idx, align 8
  tail call void @_ZN4llvm7CCState11HandleByValEjNS_3MVTES1_NS_11CCValAssign7LocInfoEiNS_5AlignENS_3ISD10ArgFlagsTyE(ptr noundef nonnull align 8 dereferenceable(420) %6, i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i32 noundef 8, i8 3, ptr noundef nonnull byval(%"struct.llvm::ISD::ArgFlagsTy") align 8 %8) #8
  br label %bb.bq

bb.c:                                             ; preds = %bb.a
  %.not313 = icmp eq i64 %i.h, 0
  br i1 %.not313, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %4, ptr %9, align 8, !tbaa !336
  %.sroa.11.0..sroa_idx143 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %5, ptr %.sroa.11.0..sroa_idx143, align 8
  tail call void @_ZN4llvm7CCState11HandleByValEjNS_3MVTES1_NS_11CCValAssign7LocInfoEiNS_5AlignENS_3ISD10ArgFlagsTyE(ptr noundef nonnull align 8 dereferenceable(420) %6, i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i32 noundef 4, i8 2, ptr noundef nonnull byval(%"struct.llvm::ISD::ArgFlagsTy") align 8 %9) #8
  br label %bb.bq

bb.e:                                             ; preds = %bb.c
  switch i16 %2, label %.thread208.thread [
    i16 2, label %.critedge
    i16 5, label %.critedge
    i16 6, label %.critedge
    i16 19, label %.critedge
    i16 26, label %.critedge2
    i16 27, label %.critedge2
    i16 28, label %.critedge2
    i16 7, label %.thread182
    i16 8, label %bb.o
    i16 29, label %bb.s
  ]

.critedge:                                        ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  store i16 7, ptr %7, align 2, !tbaa !319
  %i.j = and i64 %4, 2
  %.not316 = icmp eq i64 %i.j, 0
  br i1 %.not316, label %bb.f, label %.thread182

bb.f:                                             ; preds = %.critedge
  %i.k = trunc i64 %4 to i1
  %spec.select = select i1 %i.k, i32 2, i32 3
  br label %.thread182

.critedge2:                                       ; preds = %bb.e, %bb.e, %bb.e
  store i16 7, ptr %7, align 2, !tbaa !319
  %i.l = and i64 %4, 2
  %.not315 = icmp eq i64 %i.l, 0
  br i1 %.not315, label %bb.g, label %.thread182

bb.g:                                             ; preds = %.critedge2
  %i.m = trunc i64 %4 to i1
  %spec.select275 = select i1 %i.m, i32 2, i32 3
  br label %.thread182

.thread182:                                       ; preds = %bb.g, %bb.f, %bb.e, %.critedge, %.critedge2
  %.1185 = phi i32 [ %3, %bb.e ], [ 1, %.critedge ], [ %spec.select275, %bb.g ], [ 1, %.critedge2 ], [ %spec.select, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !300  ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !301  ; 4 uses
  %i.q = and i32 %i.p, 4194304
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.h

bb.h:                                             ; preds = %.thread182
  %i.r = and i32 %i.p, 33554432
  %.not.i.i.1 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = and i32 %i.p, 134217728
  %.not.i.i.2 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = and i32 %i.p, 67108864
  %.not.i.i.3 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !301
  %i.w = and i32 %i.v, 1
  %.not.i.i.4 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %.thread208.thread

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %.thread182
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %.thread182 ], [ 1, %bb.h ], [ 2, %bb.i ], [ 3, %bb.j ], [ 4, %bb.k ]
  %i.x = getelementptr inbounds nuw [2 x i8], ptr @_ZZL20RetCC_X86_32_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList3, i64 %.0613.i.i.lcssa.wide
  %i.y = load i16, ptr %i.x, align 2, !tbaa !302  ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext %i.y) #8
  %i.z = zext i16 %i.y to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.aa, align 8, !tbaa !303, !alias.scope !1007
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %0, ptr %i.ab, align 8, !tbaa !308, !alias.scope !1007
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 4, !alias.scope !1007
  %i.ae = and i8 %i.ad, -128
  %i.af = trunc i32 %.1185 to i8
  %i.ag = shl i8 %i.af, 1
  %i.ah = and i8 %i.ag, 126
  %i.ai = or disjoint i8 %i.ae, %i.ah
  store i8 %i.ai, ptr %i.ac, align 4, !alias.scope !1007
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i16 %1, ptr %i.aj, align 2, !tbaa !319, !alias.scope !1007
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 7, ptr %i.ak, align 8, !tbaa !319, !alias.scope !1007
  store i32 %i.z, ptr %10, align 8, !tbaa !301, !alias.scope !1007
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !322 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !323
  %.not.i.i146 = icmp ult i32 %i.ao, %i.aq
  br i1 %.not.i.i146, label %bb.m, label %bb.l, !prof !324

bb.l:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(26) %10)
  br label %bb.n

bb.m:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.ar = zext i32 %i.ao to i64
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !300
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  %i.au = load i32, ptr %i.an, align 8, !tbaa !322
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.an, align 8, !tbaa !322
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br label %bb.bq

bb.o:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !300
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !301
  %i.ba = and i32 %i.az, 524288
  %.not.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i, label %bb.p, label %.thread208

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext 51) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 0, ptr %i.bb, align 8, !tbaa !303, !alias.scope !1010
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %0, ptr %i.bc, align 8, !tbaa !308, !alias.scope !1010
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 4, !alias.scope !1010
  %i.bf = and i8 %i.be, -128
  %i.bg = trunc i32 %3 to i8
  %i.bh = shl i8 %i.bg, 1
  %i.bi = and i8 %i.bh, 126
  %i.bj = or disjoint i8 %i.bf, %i.bi
  store i8 %i.bj, ptr %i.bd, align 4, !alias.scope !1010
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i16 %1, ptr %i.bk, align 2, !tbaa !319, !alias.scope !1010
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i16 8, ptr %i.bl, align 8, !tbaa !319, !alias.scope !1010
  store i32 51, ptr %11, align 8, !tbaa !301, !alias.scope !1010
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !322 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !323
  %.not.i.i147 = icmp ult i32 %i.bp, %i.br
  br i1 %.not.i.i147, label %bb.r, label %bb.q, !prof !324

bb.q:                                             ; preds = %bb.p
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(26) %11)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

bb.r:                                             ; preds = %bb.p
  %i.bs = zext i32 %i.bp to i64
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !300
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %i.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  %i.bv = load i32, ptr %i.bo, align 8, !tbaa !322
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bo, align 8, !tbaa !322
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

_ZN4llvm7CCState11AllocateRegEt.exit:             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  br label %bb.bq

bb.s:                                             ; preds = %bb.e
  store i16 8, ptr %7, align 2, !tbaa !319
  %i.bx = and i64 %4, 2
  %.not314 = icmp eq i64 %i.bx, 0
  br i1 %.not314, label %bb.t, label %.thread208

bb.t:                                             ; preds = %bb.s
  %i.by = trunc i64 %4 to i1
  %spec.select276 = select i1 %i.by, i32 2, i32 3
  br label %.thread208

.thread208:                                       ; preds = %bb.t, %bb.o, %bb.s
  %.2 = phi i32 [ %spec.select276, %bb.t ], [ 1, %bb.s ], [ %3, %bb.o ] ; 4 uses
  br i1 %i.g, label %bb.u, label %.thread208.thread

bb.u:                                             ; preds = %.thread208
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !300
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !301
  %i.cd = and i32 %i.cc, 524288
  %.not.i149 = icmp eq i32 %i.cd, 0
  br i1 %.not.i149, label %bb.v, label %.thread218

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext 51) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.ce, align 8, !tbaa !303, !alias.scope !1013
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %0, ptr %i.cf, align 8, !tbaa !308, !alias.scope !1013
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 4, !alias.scope !1013
  %i.ci = and i8 %i.ch, -128
  %i.cj = trunc i32 %.2 to i8
  %i.ck = shl i8 %i.cj, 1
  %i.cl = and i8 %i.ck, 126
  %i.cm = or disjoint i8 %i.ci, %i.cl
  store i8 %i.cm, ptr %i.cg, align 4, !alias.scope !1013
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 22
  store i16 %1, ptr %i.cn, align 2, !tbaa !319, !alias.scope !1013
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i16 8, ptr %i.co, align 8, !tbaa !319, !alias.scope !1013
  store i32 51, ptr %12, align 8, !tbaa !301, !alias.scope !1013
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !322 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !323
  %.not.i.i152 = icmp ult i32 %i.cs, %i.cu
  br i1 %.not.i.i152, label %bb.x, label %bb.w, !prof !324

bb.w:                                             ; preds = %bb.v
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(26) %12)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit151

bb.x:                                             ; preds = %bb.v
  %i.cv = zext i32 %i.cs to i64
  %i.cw = load ptr, ptr %i.cq, align 8, !tbaa !300
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %i.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false)
  %i.cy = load i32, ptr %i.cr, align 8, !tbaa !322
  %i.cz = add i32 %i.cy, 1
  store i32 %i.cz, ptr %i.cr, align 8, !tbaa !322
  br label %_ZN4llvm7CCState11AllocateRegEt.exit151

_ZN4llvm7CCState11AllocateRegEt.exit151:          ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  br label %bb.bq

.thread208.thread:                                ; preds = %bb.k, %bb.e, %.thread208
  %i.da = phi i1 [ true, %.thread208 ], [ false, %bb.e ], [ false, %bb.k ]
  %.sroa.0.0.copyload145343 = phi i16 [ 8, %.thread208 ], [ %2, %bb.e ], [ 7, %bb.k ] ; 12 uses
  %.2339 = phi i32 [ %.2, %.thread208 ], [ %3, %bb.e ], [ %.1185, %bb.k ] ; 10 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 521
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !429, !range !298, !noundef !299
  %i.dd = trunc nuw i8 %i.dc to i1
  %or.cond278 = and i1 %i.da, %i.dd
  br i1 %or.cond278, label %.thread219, label %bb.y

.thread218:                                       ; preds = %bb.u
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 521
  %i.df = load i8, ptr %i.de, align 1, !tbaa !429, !range !298, !noundef !299
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %.thread219, label %.thread270

.thread219:                                       ; preds = %.thread208.thread, %.thread218
  %.sroa.0.0.copyload145342 = phi i16 [ %.sroa.0.0.copyload145343, %.thread208.thread ], [ 8, %.thread218 ]
  %.2338 = phi i32 [ %.2339, %.thread208.thread ], [ %.2, %.thread218 ] ; 2 uses
  %i.dh = call fastcc noundef zeroext i1 @_ZL29CC_X86_32_RegCall_Assign2RegsRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE(i32 %0, i16 %1, ptr noundef nonnull align 2 dereferenceable(2) %7, i32 %.2338, ptr noundef nonnull align 8 dereferenceable(420) %6)
  br i1 %i.dh, label %bb.bq, label %.thread270

bb.y:                                             ; preds = %.thread208.thread
end_hunk_9
begin_hunk_10_@_ZL29CC_X86_32_RegCall_Assign2RegsRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE:bb.a
  store i16 %.0.val1, ptr %i.n, align 2, !tbaa !319, !alias.scope !1059
  store i16 %.sroa.0.0.copyload, ptr %i.o, align 8, !tbaa !319, !alias.scope !1059
  store i32 %.sroa.03.0.i, ptr %3, align 8, !tbaa !301, !alias.scope !1059
  %i.bl = load ptr, ptr %i.p, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !322 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !323
  %.not.i.i = icmp ult i32 %i.bn, %i.bp
  br i1 %.not.i.i, label %bb.m, label %bb.l, !prof !324

bb.l:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(26) %3)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit

bb.m:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit
  %i.bq = zext i32 %i.bn to i64
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !300
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.br, i64 %i.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.bt = load i32, ptr %i.bm, align 8, !tbaa !322
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bm, align 8, !tbaa !322
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.bv = load ptr, ptr %2, align 8, !tbaa !300
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !301 ; 3 uses
  %i.by = and i32 %i.bx, 65535                    ; 2 uses
  %i.bz = lshr i32 %i.by, 5
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = load ptr, ptr %i.d, align 8, !tbaa !300
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ca
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !301
  %i.ce = and i32 %i.bx, 31
  %i.cf = shl nuw i32 1, %i.ce
  %i.cg = and i32 %i.cd, %i.cf
  %.not.i22.1 = icmp eq i32 %i.cg, 0
  br i1 %.not.i22.1, label %bb.n, label %_ZN4llvm7CCState11AllocateRegEt.exit.1

bb.n:                                             ; preds = %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit
  %i.ch = trunc i32 %i.bx to i16
  call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %1, i16 noundef zeroext %i.ch) #8
  br label %_ZN4llvm7CCState11AllocateRegEt.exit.1

_ZN4llvm7CCState11AllocateRegEt.exit.1:           ; preds = %bb.n, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit
  %.sroa.03.0.i.1 = phi i32 [ %i.by, %bb.n ], [ 0, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %.sroa.0.0.copyload.1 = load i16, ptr %0, align 2, !tbaa !319
  store i8 0, ptr %i.h, align 8, !tbaa !303, !alias.scope !1059
  store i32 %.0.val, ptr %i.i, align 8, !tbaa !308, !alias.scope !1059
  %i.ci = load i8, ptr %i.j, align 4, !alias.scope !1059
  %i.cj = and i8 %i.ci, -128
  %i.ck = or disjoint i8 %i.m, %i.cj
  %i.cl = or disjoint i8 %i.ck, 1
  store i8 %i.cl, ptr %i.j, align 4, !alias.scope !1059
  store i16 %.0.val1, ptr %i.n, align 2, !tbaa !319, !alias.scope !1059
  store i16 %.sroa.0.0.copyload.1, ptr %i.o, align 8, !tbaa !319, !alias.scope !1059
  store i32 %.sroa.03.0.i.1, ptr %3, align 8, !tbaa !301, !alias.scope !1059
  %i.cm = load ptr, ptr %i.p, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 3 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !322 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !323
  %.not.i.i.1 = icmp ult i32 %i.co, %i.cq
  br i1 %.not.i.i.1, label %bb.p, label %bb.o, !prof !324

bb.o:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.1
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(26) %3)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit.1

bb.p:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.1
  %i.cr = zext i32 %i.co to i64
  %i.cs = load ptr, ptr %i.cm, align 8, !tbaa !300
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %i.cs, i64 %i.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.cu = load i32, ptr %i.cn, align 8, !tbaa !322
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.cn, align 8, !tbaa !322
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit.1

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit.1: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %.pre13 = load ptr, ptr %2, align 8, !tbaa !300
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit.1, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.4
  %i.cw = phi ptr [ %.pre13, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit.1 ], [ %.pre14, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.4 ] ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.a
  br i1 %i.cx, label %_ZN4llvm11SmallVectorIjLj5EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.loopexit
  call void @free(ptr noundef %i.cw) #8
  br label %_ZN4llvm11SmallVectorIjLj5EED2Ev.exit

_ZN4llvm11SmallVectorIjLj5EED2Ev.exit:            ; preds = %.loopexit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i1 %i.bf
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !322
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #8
  %i.f = load ptr, ptr %0, align 8, !tbaa !300
  %i.g = load i32, ptr %i.a, align 8, !tbaa !322
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  store i32 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !322
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !322
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4llvm14MCRegisterInfo11regsOverlapENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(240), i32, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL15RetCC_X86CommonjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(420) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %7 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %8 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %9 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %10 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %11 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %12 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %13 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  switch i16 %2, label %.thread255 [
    i16 19, label %bb.b
    i16 2, label %bb.d
    i16 5, label %.thread140
    i16 6, label %bb.k
    i16 7, label %bb.q
    i16 8, label %bb.w
    i16 20, label %bb.ac
    i16 22, label %bb.ae
    i16 26, label %bb.ag
    i16 27, label %bb.ai
    i16 28, label %bb.ak
    i16 29, label %bb.am
    i16 48, label %.critedge
    i16 62, label %.critedge
    i16 73, label %.critedge
    i16 94, label %.critedge
    i16 112, label %.critedge
    i16 124, label %.critedge
    i16 136, label %.critedge
    i16 154, label %.critedge
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = and i64 %4, 2
  %.not463 = icmp eq i64 %i.a, 0
  br i1 %.not463, label %bb.c, label %.thread140

bb.c:                                             ; preds = %bb.b
  %i.b = trunc i64 %4 to i1
  %. = select i1 %i.b, i32 2, i32 3
  br label %.thread140

bb.d:                                             ; preds = %bb.a
  %i.c = and i64 %4, 2
  %.not462 = icmp eq i64 %i.c, 0
  br i1 %.not462, label %bb.e, label %.thread140

bb.e:                                             ; preds = %bb.d
  %i.d = trunc i64 %4 to i1
  %.100 = select i1 %i.d, i32 2, i32 3
  br label %.thread140

.thread140:                                       ; preds = %bb.a, %bb.c, %bb.b, %bb.e, %bb.d
  %.178149 = phi i32 [ %3, %bb.a ], [ %.100, %bb.e ], [ 1, %bb.d ], [ 1, %bb.b ], [ %., %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !300
  %i.g = load i32, ptr %i.f, align 4, !tbaa !301  ; 3 uses
  %i.h = and i32 %i.g, 4
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.f

bb.f:                                             ; preds = %.thread140
  %i.i = and i32 %i.g, 524288
  %.not.i.i.1 = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = and i32 %i.g, 2048
  %.not.i.i.2 = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %.thread274

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.g, %bb.f, %.thread140
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %.thread140 ], [ 1, %bb.f ], [ 2, %bb.g ]
  %i.k = getelementptr inbounds nuw [2 x i8], ptr @_ZZL17RetCC_X86_32_FastjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList3, i64 %.0613.i.i.lcssa.wide
  %i.l = load i16, ptr %i.k, align 2, !tbaa !302  ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.l) #8
  %i.m = zext i16 %i.l to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 0, ptr %i.n, align 8, !tbaa !303, !alias.scope !1064
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %0, ptr %i.o, align 8, !tbaa !308, !alias.scope !1064
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4, !alias.scope !1064
  %i.r = and i8 %i.q, -128
  %i.s = trunc i32 %.178149 to i8
  %i.t = shl i8 %i.s, 1
  %i.u = and i8 %i.t, 126
  %i.v = or disjoint i8 %i.r, %i.u
  store i8 %i.v, ptr %i.p, align 4, !alias.scope !1064
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i16 %1, ptr %i.w, align 2, !tbaa !319, !alias.scope !1064
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 5, ptr %i.x, align 8, !tbaa !319, !alias.scope !1064
  store i32 %i.m, ptr %6, align 8, !tbaa !301, !alias.scope !1064
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !322 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !323
  %.not.i.i107 = icmp ult i32 %i.ab, %i.ad
  br i1 %.not.i.i107, label %bb.i, label %bb.h, !prof !324

bb.h:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(26) %6)
  br label %bb.j

bb.i:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.ae = zext i32 %i.ab to i64
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !300
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  %i.ah = load i32, ptr %i.aa, align 8, !tbaa !322
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.aa, align 8, !tbaa !322
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %.thread276

bb.k:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !300
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !301 ; 3 uses
  %i.am = and i32 %i.al, 8
  %.not.i.i109 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i109, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit112, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = and i32 %i.al, 2097152
  %.not.i.i109.1 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i109.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit112, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = and i32 %i.al, 8192
  %.not.i.i109.2 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i109.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit112, label %.thread274

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit112: ; preds = %bb.m, %bb.l, %bb.k
  %.0613.i.i108.lcssa.wide = phi i64 [ 0, %bb.k ], [ 1, %bb.l ], [ 2, %bb.m ]
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr @_ZZL17RetCC_X86_32_FastjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList4, i64 %.0613.i.i108.lcssa.wide
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.aq) #8
  %i.ar = zext i16 %i.aq to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 0, ptr %i.as, align 8, !tbaa !303, !alias.scope !1067
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %0, ptr %i.at, align 8, !tbaa !308, !alias.scope !1067
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.av = load i8, ptr %i.au, align 4, !alias.scope !1067
  %i.aw = and i8 %i.av, -128
  %i.ax = trunc i32 %3 to i8
  %i.ay = shl i8 %i.ax, 1
  %i.az = and i8 %i.ay, 126
  %i.ba = or disjoint i8 %i.aw, %i.az
  store i8 %i.ba, ptr %i.au, align 4, !alias.scope !1067
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 %1, ptr %i.bb, align 2, !tbaa !319, !alias.scope !1067
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 6, ptr %i.bc, align 8, !tbaa !319, !alias.scope !1067
  store i32 %i.ar, ptr %7, align 8, !tbaa !301, !alias.scope !1067
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !322 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !323
  %.not.i.i113 = icmp ult i32 %i.bg, %i.bi
  br i1 %.not.i.i113, label %bb.o, label %bb.n, !prof !324

bb.n:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit112
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(26) %7)
  br label %bb.p

bb.o:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit112
  %i.bj = zext i32 %i.bg to i64
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !300
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  %i.bm = load i32, ptr %i.bf, align 8, !tbaa !322
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bf, align 8, !tbaa !322
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %.thread276

bb.q:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !300
  %.pre487 = load i32, ptr %.pre, align 4, !tbaa !301 ; 3 uses
  %i.bo = and i32 %.pre487, 4194304
  %.not.i.i116 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i116, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit119, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = and i32 %.pre487, 134217728
  %.not.i.i116.1 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i116.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit119, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = and i32 %.pre487, 33554432
  %.not.i.i116.2 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i116.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit119, label %.thread274

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit119: ; preds = %bb.s, %bb.r, %bb.q
  %.0613.i.i115.lcssa.wide = phi i64 [ 0, %bb.q ], [ 1, %bb.r ], [ 2, %bb.s ]
  %i.br = getelementptr inbounds nuw [2 x i8], ptr @_ZZL14RetCC_X86_32_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList3, i64 %.0613.i.i115.lcssa.wide
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.bs) #8
  %i.bt = zext i16 %i.bs to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.bu, align 8, !tbaa !303, !alias.scope !1070
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %0, ptr %i.bv, align 8, !tbaa !308, !alias.scope !1070
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 4, !alias.scope !1070
  %i.by = and i8 %i.bx, -128
  %i.bz = trunc i32 %3 to i8
  %i.ca = shl i8 %i.bz, 1
  %i.cb = and i8 %i.ca, 126
  %i.cc = or disjoint i8 %i.by, %i.cb
  store i8 %i.cc, ptr %i.bw, align 4, !alias.scope !1070
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %1, ptr %i.cd, align 2, !tbaa !319, !alias.scope !1070
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 %2, ptr %i.ce, align 8, !tbaa !319, !alias.scope !1070
  store i32 %i.bt, ptr %8, align 8, !tbaa !301, !alias.scope !1070
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !322 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !323
  %.not.i.i120 = icmp ult i32 %i.ci, %i.ck
  br i1 %.not.i.i120, label %bb.u, label %bb.t, !prof !324

bb.t:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit119
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(26) %8)
  br label %bb.v

bb.u:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit119
  %i.cl = zext i32 %i.ci to i64
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !300
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %i.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cn, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.co = load i32, ptr %i.ch, align 8, !tbaa !322
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr %i.ch, align 8, !tbaa !322
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %.thread276

bb.w:                                             ; preds = %bb.a
  %.phi.trans.insert489 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.pre490 = load ptr, ptr %.phi.trans.insert489, align 8, !tbaa !300
  %i.cq = getelementptr inbounds nuw i8, ptr %.pre490, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !301 ; 3 uses
  %i.cs = and i32 %i.cr, 524288
  %.not.i.i123 = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i123, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit126, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ct = and i32 %i.cr, 16777216
  %.not.i.i123.1 = icmp eq i32 %i.ct, 0
  br i1 %.not.i.i123.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit126, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = and i32 %i.cr, 4194304
  %.not.i.i123.2 = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i123.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit126, label %.thread274

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit126: ; preds = %bb.y, %bb.x, %bb.w
  %.0613.i.i122.lcssa.wide = phi i64 [ 0, %bb.w ], [ 1, %bb.x ], [ 2, %bb.y ]
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr @_ZZL15RetCC_X86CommonjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList4, i64 %.0613.i.i122.lcssa.wide
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.cw) #8
  %i.cx = zext i16 %i.cw to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.cy, align 8, !tbaa !303, !alias.scope !1073
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %0, ptr %i.cz, align 8, !tbaa !308, !alias.scope !1073
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.db = load i8, ptr %i.da, align 4, !alias.scope !1073
  %i.dc = and i8 %i.db, -128
  %i.dd = trunc i32 %3 to i8
  %i.de = shl i8 %i.dd, 1
  %i.df = and i8 %i.de, 126
  %i.dg = or disjoint i8 %i.dc, %i.df
  store i8 %i.dg, ptr %i.da, align 4, !alias.scope !1073
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %1, ptr %i.dh, align 2, !tbaa !319, !alias.scope !1073
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 %2, ptr %i.di, align 8, !tbaa !319, !alias.scope !1073
  store i32 %i.cx, ptr %9, align 8, !tbaa !301, !alias.scope !1073
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !322 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !323
  %.not.i.i127 = icmp ult i32 %i.dm, %i.do
  br i1 %.not.i.i127, label %bb.aa, label %bb.z, !prof !324

bb.z:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit126
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(26) %9)
  br label %bb.ab

bb.aa:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit126
  %i.dp = zext i32 %i.dm to i64
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !300
  %i.dr = getelementptr inbounds nuw [32 x i8], ptr %i.dq, i64 %i.dp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dr, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.ds = load i32, ptr %i.dl, align 8, !tbaa !322
  %i.dt = add i32 %i.ds, 1
  store i32 %i.dt, ptr %i.dl, align 8, !tbaa !322
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %.thread276

bb.ac:                                            ; preds = %bb.a
  %i.du = and i64 %4, 2
  %.not461 = icmp eq i64 %i.du, 0
  br i1 %.not461, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %i.dv = trunc i64 %4 to i1
  %.101 = select i1 %i.dv, i32 2, i32 3
  br label %.critedge

bb.ae:                                            ; preds = %bb.a
  %i.dw = and i64 %4, 2
  %.not460 = icmp eq i64 %i.dw, 0
  br i1 %.not460, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae
  %i.dx = trunc i64 %4 to i1
  %.102 = select i1 %i.dx, i32 2, i32 3
  br label %.critedge

bb.ag:                                            ; preds = %bb.a
  %i.dy = and i64 %4, 2
  %.not459 = icmp eq i64 %i.dy, 0
  br i1 %.not459, label %bb.ah, label %.critedge

bb.ah:                                            ; preds = %bb.ag
  %i.dz = trunc i64 %4 to i1
  %.103 = select i1 %i.dz, i32 2, i32 3
  br label %.critedge

bb.ai:                                            ; preds = %bb.a
  %i.ea = and i64 %4, 2
  %.not458 = icmp eq i64 %i.ea, 0
  br i1 %.not458, label %bb.aj, label %.critedge

bb.aj:                                            ; preds = %bb.ai
  %i.eb = trunc i64 %4 to i1
  %.104 = select i1 %i.eb, i32 2, i32 3
  br label %.critedge

bb.ak:                                            ; preds = %bb.a
  %i.ec = and i64 %4, 2
  %.not457 = icmp eq i64 %i.ec, 0
  br i1 %.not457, label %bb.al, label %.critedge2

bb.al:                                            ; preds = %bb.ak
  %i.ed = trunc i64 %4 to i1
  %.105 = select i1 %i.ed, i32 2, i32 3
  br label %.critedge2

bb.am:                                            ; preds = %bb.a
  %i.ee = and i64 %4, 2
  %.not456 = icmp eq i64 %i.ee, 0
  br i1 %.not456, label %bb.an, label %.critedge4

bb.an:                                            ; preds = %bb.am
  %i.ef = trunc i64 %4 to i1
  %.106 = select i1 %i.ef, i32 2, i32 3
  br label %.critedge4

.critedge:                                        ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.ad, %bb.ac, %bb.af, %bb.ae, %bb.ah, %bb.ag, %bb.aj, %bb.ai
  %.784219 = phi i32 [ %3, %bb.a ], [ %3, %bb.a ], [ %3, %bb.a ], [ %.101, %bb.ad ], [ %3, %bb.a ], [ %3, %bb.a ], [ %3, %bb.a ], [ %3, %bb.a ], [ 1, %bb.ai ], [ %.104, %bb.aj ], [ 1, %bb.ag ], [ %.103, %bb.ah ], [ 1, %bb.ae ], [ %.102, %bb.af ], [ 1, %bb.ac ], [ %3, %bb.a ] ; 2 uses
  %.sroa.092.7213 = phi i16 [ %2, %bb.a ], [ %2, %bb.a ], [ %2, %bb.a ], [ 94, %bb.ad ], [ %2, %bb.a ], [ %2, %bb.a ], [ %2, %bb.a ], [ %2, %bb.a ], [ 48, %bb.ai ], [ 48, %bb.aj ], [ 62, %bb.ag ], [ 62, %bb.ah ], [ 73, %bb.ae ], [ 73, %bb.af ], [ 94, %bb.ac ], [ %2, %bb.a ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !300
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !301 ; 4 uses
  %i.ek = and i32 %i.ej, 128
  %.not.i.i130 = icmp eq i32 %i.ek, 0
  br i1 %.not.i.i130, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit133, label %bb.ao

bb.ao:                                            ; preds = %.critedge
  %i.el = and i32 %i.ej, 256
  %.not.i.i130.1 = icmp eq i32 %i.el, 0
  br i1 %.not.i.i130.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit133, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.em = and i32 %i.ej, 512
  %.not.i.i130.2 = icmp eq i32 %i.em, 0
  br i1 %.not.i.i130.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit133, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.en = and i32 %i.ej, 1024
  %.not.i.i130.3 = icmp eq i32 %i.en, 0
  br i1 %.not.i.i130.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit133, label %.thread255

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit133: ; preds = %bb.aq, %bb.ap, %bb.ao, %.critedge
  %.0613.i.i129.lcssa.wide = phi i64 [ 0, %.critedge ], [ 1, %bb.ao ], [ 2, %bb.ap ], [ 3, %bb.aq ]
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr @_ZZL23RetCC_X86_64_VectorcalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.i129.lcssa.wide
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.ep) #8
  %i.eq = zext i16 %i.ep to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.er, align 8, !tbaa !303, !alias.scope !1076
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %0, ptr %i.es, align 8, !tbaa !308, !alias.scope !1076
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.eu = load i8, ptr %i.et, align 4, !alias.scope !1076
  %i.ev = and i8 %i.eu, -128
  %i.ew = trunc i32 %.784219 to i8
  %i.ex = shl i8 %i.ew, 1
  %i.ey = and i8 %i.ex, 126
  %i.ez = or disjoint i8 %i.ev, %i.ey
  store i8 %i.ez, ptr %i.et, align 4, !alias.scope !1076
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i16 %1, ptr %i.fa, align 2, !tbaa !319, !alias.scope !1076
  %i.fb = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 %.sroa.092.7213, ptr %i.fb, align 8, !tbaa !319, !alias.scope !1076
  store i32 %i.eq, ptr %10, align 8, !tbaa !301, !alias.scope !1076
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 3 uses
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !322 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !323
  %.not.i.i134 = icmp ult i32 %i.ff, %i.fh
  br i1 %.not.i.i134, label %bb.as, label %bb.ar, !prof !324

bb.ar:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit133
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(26) %10)
  br label %bb.at

bb.as:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit133
  %i.fi = zext i32 %i.ff to i64
  %i.fj = load ptr, ptr %i.fd, align 8, !tbaa !300
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %i.fj, i64 %i.fi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fk, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  %i.fl = load i32, ptr %i.fe, align 8, !tbaa !322
  %i.fm = add i32 %i.fl, 1
  store i32 %i.fm, ptr %i.fe, align 8, !tbaa !322
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br label %.thread276

.thread255:                                       ; preds = %bb.aq, %bb.a
  %.784222 = phi i32 [ %.784219, %bb.aq ], [ %3, %bb.a ] ; 9 uses
  %.sroa.092.7216 = phi i16 [ %.sroa.092.7213, %bb.aq ], [ %2, %bb.a ] ; 10 uses
  switch i16 %.sroa.092.7216, label %.thread268 [
    i16 49, label %.critedge2
    i16 63, label %.critedge2
    i16 77, label %.critedge2
    i16 96, label %.critedge2
    i16 113, label %.critedge2
    i16 125, label %.critedge2
    i16 140, label %.critedge2
    i16 156, label %.critedge2
  ]
end_hunk_10
begin_hunk_11_@_ZL15RetCC_X86CommonjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
  %i.gh = or disjoint i8 %i.gd, %i.gg
  store i8 %i.gh, ptr %i.gb, align 4, !alias.scope !1079
  %i.gi = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i16 %1, ptr %i.gi, align 2, !tbaa !319, !alias.scope !1079
  %i.gj = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i16 %.sroa.092.7216286, ptr %i.gj, align 8, !tbaa !319, !alias.scope !1079
  store i32 %i.fy, ptr %11, align 8, !tbaa !301, !alias.scope !1079
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 3 uses
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !322 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !323
  %.not.i.i141 = icmp ult i32 %i.gn, %i.gp
  br i1 %.not.i.i141, label %bb.ay, label %bb.ax, !prof !324

bb.ax:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit140
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.gl, ptr noundef nonnull align 8 dereferenceable(26) %11)
  br label %bb.az

bb.ay:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit140
  %i.gq = zext i32 %i.gn to i64
  %i.gr = load ptr, ptr %i.gl, align 8, !tbaa !300
  %i.gs = getelementptr inbounds nuw [32 x i8], ptr %i.gr, i64 %i.gq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.gs, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  %i.gt = load i32, ptr %i.gm, align 8, !tbaa !322
  %i.gu = add i32 %i.gt, 1
  store i32 %i.gu, ptr %i.gm, align 8, !tbaa !322
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  br label %.thread276

.thread268:                                       ; preds = %bb.aw, %.thread255
  %.sroa.092.7216287 = phi i16 [ %.sroa.092.7216, %.thread255 ], [ %.sroa.092.7216286, %bb.aw ] ; 10 uses
  %.784222282 = phi i32 [ %.784222, %.thread255 ], [ %.784222281, %bb.aw ] ; 9 uses
  switch i16 %.sroa.092.7216287, label %.thread274 [
    i16 50, label %.critedge4
    i16 64, label %.critedge4
    i16 82, label %.critedge4
    i16 97, label %.critedge4
    i16 114, label %.critedge4
    i16 126, label %.critedge4
    i16 145, label %.critedge4
    i16 157, label %.critedge4
  ]

.critedge4:                                       ; preds = %.thread268, %.thread268, %.thread268, %.thread268, %.thread268, %.thread268, %.thread268, %.thread268, %bb.an, %bb.am
  %.784222282334 = phi i32 [ %.784222282, %.thread268 ], [ %.784222282, %.thread268 ], [ %.784222282, %.thread268 ], [ %.784222282, %.thread268 ], [ %.784222282, %.thread268 ], [ %.784222282, %.thread268 ], [ %.106, %bb.an ], [ %.784222282, %.thread268 ], [ 1, %bb.am ], [ %.784222282, %.thread268 ] ; 2 uses
  %.sroa.092.7216287333 = phi i16 [ %.sroa.092.7216287, %.thread268 ], [ %.sroa.092.7216287, %.thread268 ], [ %.sroa.092.7216287, %.thread268 ], [ %.sroa.092.7216287, %.thread268 ], [ %.sroa.092.7216287, %.thread268 ], [ %.sroa.092.7216287, %.thread268 ], [ 50, %bb.an ], [ %.sroa.092.7216287, %.thread268 ], [ 50, %bb.am ], [ %.sroa.092.7216287, %.thread268 ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !300
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 28
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !301 ; 4 uses
  %i.gz = and i32 %i.gy, 8388608
  %.not.i.i144 = icmp eq i32 %i.gz, 0
  br i1 %.not.i.i144, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit147, label %bb.ba

bb.ba:                                            ; preds = %.critedge4
  %i.ha = and i32 %i.gy, 16777216
  %.not.i.i144.1 = icmp eq i32 %i.ha, 0
  br i1 %.not.i.i144.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit147, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hb = and i32 %i.gy, 33554432
  %.not.i.i144.2 = icmp eq i32 %i.hb, 0
  br i1 %.not.i.i144.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit147, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hc = and i32 %i.gy, 67108864
  %.not.i.i144.3 = icmp eq i32 %i.hc, 0
  br i1 %.not.i.i144.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit147, label %.thread274

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit147: ; preds = %bb.bc, %bb.bb, %bb.ba, %.critedge4
  %.0613.i.i143.lcssa.wide = phi i64 [ 0, %.critedge4 ], [ 1, %bb.ba ], [ 2, %bb.bb ], [ 3, %bb.bc ]
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr @_ZZL15RetCC_X86CommonjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList7, i64 %.0613.i.i143.lcssa.wide
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.he) #8
  %i.hf = zext i16 %i.he to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  %i.hg = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.hg, align 8, !tbaa !303, !alias.scope !1082
  %i.hh = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %0, ptr %i.hh, align 8, !tbaa !308, !alias.scope !1082
  %i.hi = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  %i.hj = load i8, ptr %i.hi, align 4, !alias.scope !1082
  %i.hk = and i8 %i.hj, -128
  %i.hl = trunc i32 %.784222282334 to i8
  %i.hm = shl i8 %i.hl, 1
  %i.hn = and i8 %i.hm, 126
  %i.ho = or disjoint i8 %i.hk, %i.hn
  store i8 %i.ho, ptr %i.hi, align 4, !alias.scope !1082
  %i.hp = getelementptr inbounds nuw i8, ptr %12, i64 22
  store i16 %1, ptr %i.hp, align 2, !tbaa !319, !alias.scope !1082
  %i.hq = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i16 %.sroa.092.7216287333, ptr %i.hq, align 8, !tbaa !319, !alias.scope !1082
  store i32 %i.hf, ptr %12, align 8, !tbaa !301, !alias.scope !1082
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %5, ptr noundef nonnull align 8 dereferenceable(26) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  br label %.thread276

.thread274:                                       ; preds = %bb.y, %bb.s, %bb.m, %bb.bc, %bb.g, %.thread268
  %.sroa.092.7216289 = phi i16 [ %.sroa.092.7216287, %.thread268 ], [ 5, %bb.g ], [ %.sroa.092.7216287333, %bb.bc ], [ 8, %bb.y ], [ 7, %bb.s ], [ 6, %bb.m ]
  %.784222284 = phi i32 [ %.784222282, %.thread268 ], [ %.178149, %bb.g ], [ %.784222282334, %bb.bc ], [ %3, %bb.y ], [ %3, %bb.s ], [ %3, %bb.m ]
  %i.hr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !39, !nonnull !299, !align !321
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !40, !nonnull !299, !align !321 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 522
  %i.hw = load i8, ptr %i.hv, align 2, !tbaa !156, !range !298, !noundef !299
  %i.hx = trunc nuw i8 %i.hw to i1
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 676
  %i.hz = load i32, ptr %i.hy, align 4
  %i.ia = and i32 %i.hz, -2
  %i.ib = icmp ne i32 %i.ia, 14
  %not. = xor i1 %i.hx, true
  %or.cond = select i1 %not., i1 true, i1 %i.ib
  %i.ic = icmp eq i16 %.sroa.092.7216289, 16
  %or.cond455 = and i1 %i.ic, %or.cond
  br i1 %or.cond455, label %bb.bd, label %.thread276

bb.bd:                                            ; preds = %.thread274
  %i.id = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %5, ptr nonnull @_ZZL24RetCC_X86_SysV64_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList6, i64 2) ; 2 uses
  %.not99.not = icmp eq i32 %i.id, 0
  br i1 %.not99.not, label %.thread276, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  %i.ie = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i8 0, ptr %i.ie, align 8, !tbaa !303, !alias.scope !1085
  %i.if = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 %0, ptr %i.if, align 8, !tbaa !308, !alias.scope !1085
  %i.ig = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 4, !alias.scope !1085
  %i.ii = and i8 %i.ih, -128
  %i.ij = trunc i32 %.784222284 to i8
  %i.ik = shl i8 %i.ij, 1
  %i.il = and i8 %i.ik, 126
  %i.im = or disjoint i8 %i.ii, %i.il
  store i8 %i.im, ptr %i.ig, align 4, !alias.scope !1085
  %i.in = getelementptr inbounds nuw i8, ptr %13, i64 22
  store i16 %1, ptr %i.in, align 2, !tbaa !319, !alias.scope !1085
  %i.io = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i16 16, ptr %i.io, align 8, !tbaa !319, !alias.scope !1085
  store i32 %i.id, ptr %13, align 8, !tbaa !301, !alias.scope !1085
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %5, ptr noundef nonnull align 8 dereferenceable(26) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  br label %.thread276

.thread276:                                       ; preds = %bb.bd, %.thread274, %bb.be, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit147, %bb.az, %bb.at, %bb.ab, %bb.v, %bb.p, %bb.j
  %.15 = phi i1 [ false, %bb.j ], [ false, %bb.be ], [ false, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit147 ], [ false, %bb.az ], [ false, %bb.at ], [ false, %bb.ab ], [ false, %bb.v ], [ false, %bb.p ], [ true, %.thread274 ], [ true, %bb.bd ]
  ret i1 %.15
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL17RetCC_X86_32_FastjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(420) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %7 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %8 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %9 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %10 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  switch i16 %2, label %.thread61 [
    i16 14, label %bb.b
    i16 15, label %._crit_edge
    i16 5, label %bb.o
    i16 6, label %bb.u
    i16 7, label %bb.aa
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39, !nonnull !299, !align !321
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40, !nonnull !299, !align !321
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  %i.f = load i32, ptr %i.e, align 8, !tbaa !398
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %.thread61

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !300
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i32, ptr %i.j, align 4, !tbaa !301  ; 3 uses
  %i.l = and i32 %i.k, 128
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = and i32 %i.k, 256
  %.not.i.i.1 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.k, 512
  %.not.i.i.2 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %.thread61

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.e, %bb.d, %bb.c
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %bb.c ], [ 1, %bb.d ], [ 2, %bb.e ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr @_ZZL14RetCC_X86_32_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList4, i64 %.0613.i.i.lcssa.wide
  %i.p = load i16, ptr %i.o, align 2, !tbaa !302  ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.p) #8
  %i.q = zext i16 %i.p to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 0, ptr %i.r, align 8, !tbaa !303, !alias.scope !1088
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %0, ptr %i.s, align 8, !tbaa !308, !alias.scope !1088
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.u = load i8, ptr %i.t, align 4, !alias.scope !1088
  %i.v = and i8 %i.u, -128
  %i.w = trunc i32 %3 to i8
  %i.x = shl i8 %i.w, 1
  %i.y = and i8 %i.x, 126
  %i.z = or disjoint i8 %i.v, %i.y
  store i8 %i.z, ptr %i.t, align 4, !alias.scope !1088
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i16 %1, ptr %i.aa, align 2, !tbaa !319, !alias.scope !1088
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 14, ptr %i.ab, align 8, !tbaa !319, !alias.scope !1088
  store i32 %i.q, ptr %6, align 8, !tbaa !301, !alias.scope !1088
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !322 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !323
  %.not.i.i65 = icmp ult i32 %i.af, %i.ah
  br i1 %.not.i.i65, label %bb.g, label %bb.f, !prof !324

bb.f:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(26) %6)
  br label %bb.h

bb.g:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.ai = zext i32 %i.af to i64
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !300
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.aj, i64 %i.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  %i.al = load i32, ptr %i.ae, align 8, !tbaa !322
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ae, align 8, !tbaa !322
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.ag

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !39
  %.phi.trans.insert83 = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre84 = load ptr, ptr %.phi.trans.insert83, align 8, !tbaa !40
  %.phi.trans.insert85 = getelementptr inbounds nuw i8, ptr %.pre84, i64 360
  %.pre86 = load i32, ptr %.phi.trans.insert85, align 8, !tbaa !398
  %i.an = icmp sgt i32 %.pre86, 1
  br i1 %i.an, label %bb.i, label %.thread61

bb.i:                                             ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !300
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !301 ; 3 uses
  %i.as = and i32 %i.ar, 128
  %.not.i.i67 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i67, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit70, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = and i32 %i.ar, 256
  %.not.i.i67.1 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i67.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit70, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = and i32 %i.ar, 512
  %.not.i.i67.2 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i67.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit70, label %.thread61

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit70: ; preds = %bb.k, %bb.j, %bb.i
  %.0613.i.i66.lcssa.wide = phi i64 [ 0, %bb.i ], [ 1, %bb.j ], [ 2, %bb.k ]
  %i.av = getelementptr inbounds nuw [2 x i8], ptr @_ZZL14RetCC_X86_32_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList4, i64 %.0613.i.i66.lcssa.wide
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.aw) #8
  %i.ax = zext i16 %i.aw to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 0, ptr %i.ay, align 8, !tbaa !303, !alias.scope !1091
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %0, ptr %i.az, align 8, !tbaa !308, !alias.scope !1091
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 4, !alias.scope !1091
  %i.bc = and i8 %i.bb, -128
  %i.bd = trunc i32 %3 to i8
  %i.be = shl i8 %i.bd, 1
  %i.bf = and i8 %i.be, 126
  %i.bg = or disjoint i8 %i.bc, %i.bf
  store i8 %i.bg, ptr %i.ba, align 4, !alias.scope !1091
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 %1, ptr %i.bh, align 2, !tbaa !319, !alias.scope !1091
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 %2, ptr %i.bi, align 8, !tbaa !319, !alias.scope !1091
  store i32 %i.ax, ptr %7, align 8, !tbaa !301, !alias.scope !1091
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !322 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !323
  %.not.i.i71 = icmp ult i32 %i.bm, %i.bo
  br i1 %.not.i.i71, label %bb.m, label %bb.l, !prof !324

bb.l:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit70
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(26) %7)
  br label %bb.n

bb.m:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit70
  %i.bp = zext i32 %i.bm to i64
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !300
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.bq, i64 %i.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  %i.bs = load i32, ptr %i.bl, align 8, !tbaa !322
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.bl, align 8, !tbaa !322
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.ag

bb.o:                                             ; preds = %bb.a
  %.phi.trans.insert88 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.pre89 = load ptr, ptr %.phi.trans.insert88, align 8, !tbaa !300
  %i.bu = load i32, ptr %.pre89, align 4, !tbaa !301 ; 3 uses
  %i.bv = and i32 %i.bu, 4
  %.not.i.i74 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i74, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit77, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = and i32 %i.bu, 524288
  %.not.i.i74.1 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i74.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit77, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = and i32 %i.bu, 2048
  %.not.i.i74.2 = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i74.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit77, label %.thread61

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit77: ; preds = %bb.q, %bb.p, %bb.o
  %.0613.i.i73.lcssa.wide = phi i64 [ 0, %bb.o ], [ 1, %bb.p ], [ 2, %bb.q ]
  %i.by = getelementptr inbounds nuw [2 x i8], ptr @_ZZL17RetCC_X86_32_FastjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList3, i64 %.0613.i.i73.lcssa.wide
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.bz) #8
  %i.ca = zext i16 %i.bz to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.cb, align 8, !tbaa !303, !alias.scope !1094
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %0, ptr %i.cc, align 8, !tbaa !308, !alias.scope !1094
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 4, !alias.scope !1094
  %i.cf = and i8 %i.ce, -128
  %i.cg = trunc i32 %3 to i8
  %i.ch = shl i8 %i.cg, 1
  %i.ci = and i8 %i.ch, 126
  %i.cj = or disjoint i8 %i.cf, %i.ci
  store i8 %i.cj, ptr %i.cd, align 4, !alias.scope !1094
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %1, ptr %i.ck, align 2, !tbaa !319, !alias.scope !1094
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 %2, ptr %i.cl, align 8, !tbaa !319, !alias.scope !1094
  store i32 %i.ca, ptr %8, align 8, !tbaa !301, !alias.scope !1094
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 3 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !322 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !323
  %.not.i.i78 = icmp ult i32 %i.cp, %i.cr
  br i1 %.not.i.i78, label %bb.s, label %bb.r, !prof !324

bb.r:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit77
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(26) %8)
  br label %bb.t

bb.s:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit77
  %i.cs = zext i32 %i.cp to i64
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !300
  %i.cu = getelementptr inbounds nuw [32 x i8], ptr %i.ct, i64 %i.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cu, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.cv = load i32, ptr %i.co, align 8, !tbaa !322
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr %i.co, align 8, !tbaa !322
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %bb.ag

bb.u:                                             ; preds = %bb.a
  %.phi.trans.insert91 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.pre92 = load ptr, ptr %.phi.trans.insert91, align 8, !tbaa !300
  %i.cx = load i32, ptr %.pre92, align 4, !tbaa !301 ; 3 uses
  %i.cy = and i32 %i.cx, 8
  %.not.i.i81 = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i81, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit84, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cz = and i32 %i.cx, 2097152
  %.not.i.i81.1 = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i81.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit84, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.da = and i32 %i.cx, 8192
  %.not.i.i81.2 = icmp eq i32 %i.da, 0
  br i1 %.not.i.i81.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit84, label %.thread61

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit84: ; preds = %bb.w, %bb.v, %bb.u
  %.0613.i.i80.lcssa.wide = phi i64 [ 0, %bb.u ], [ 1, %bb.v ], [ 2, %bb.w ]
  %i.db = getelementptr inbounds nuw [2 x i8], ptr @_ZZL17RetCC_X86_32_FastjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList4, i64 %.0613.i.i80.lcssa.wide
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.dc) #8
  %i.dd = zext i16 %i.dc to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.de, align 8, !tbaa !303, !alias.scope !1097
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %0, ptr %i.df, align 8, !tbaa !308, !alias.scope !1097
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 4, !alias.scope !1097
  %i.di = and i8 %i.dh, -128
  %i.dj = trunc i32 %3 to i8
  %i.dk = shl i8 %i.dj, 1
  %i.dl = and i8 %i.dk, 126
  %i.dm = or disjoint i8 %i.di, %i.dl
  store i8 %i.dm, ptr %i.dg, align 4, !alias.scope !1097
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %1, ptr %i.dn, align 2, !tbaa !319, !alias.scope !1097
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 %2, ptr %i.do, align 8, !tbaa !319, !alias.scope !1097
  store i32 %i.dd, ptr %9, align 8, !tbaa !301, !alias.scope !1097
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 3 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !322 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !323
  %.not.i.i85 = icmp ult i32 %i.ds, %i.du
  br i1 %.not.i.i85, label %bb.y, label %bb.x, !prof !324

bb.x:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit84
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull align 8 dereferenceable(26) %9)
  br label %bb.z

bb.y:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit84
  %i.dv = zext i32 %i.ds to i64
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !300
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.dw, i64 %i.dv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dx, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.dy = load i32, ptr %i.dr, align 8, !tbaa !322
  %i.dz = add i32 %i.dy, 1
  store i32 %i.dz, ptr %i.dr, align 8, !tbaa !322
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %bb.ag

bb.aa:                                            ; preds = %bb.a
  %.phi.trans.insert94 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.pre95 = load ptr, ptr %.phi.trans.insert94, align 8, !tbaa !300
  %i.ea = load i32, ptr %.pre95, align 4, !tbaa !301 ; 3 uses
  %i.eb = and i32 %i.ea, 4194304
  %.not.i.i88 = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i88, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit91, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ec = and i32 %i.ea, 134217728
  %.not.i.i88.1 = icmp eq i32 %i.ec, 0
  br i1 %.not.i.i88.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit91, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ed = and i32 %i.ea, 33554432
  %.not.i.i88.2 = icmp eq i32 %i.ed, 0
  br i1 %.not.i.i88.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit91, label %.thread61

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit91: ; preds = %bb.ac, %bb.ab, %bb.aa
  %.0613.i.i87.lcssa.wide = phi i64 [ 0, %bb.aa ], [ 1, %bb.ab ], [ 2, %bb.ac ]
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr @_ZZL14RetCC_X86_32_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList3, i64 %.0613.i.i87.lcssa.wide
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !302 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.ef) #8
  %i.eg = zext i16 %i.ef to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.eh = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.eh, align 8, !tbaa !303, !alias.scope !1100
  %i.ei = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %0, ptr %i.ei, align 8, !tbaa !308, !alias.scope !1100
  %i.ej = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 4, !alias.scope !1100
  %i.el = and i8 %i.ek, -128
  %i.em = trunc i32 %3 to i8
  %i.en = shl i8 %i.em, 1
  %i.eo = and i8 %i.en, 126
  %i.ep = or disjoint i8 %i.el, %i.eo
  store i8 %i.ep, ptr %i.ej, align 4, !alias.scope !1100
  %i.eq = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i16 %1, ptr %i.eq, align 2, !tbaa !319, !alias.scope !1100
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 %2, ptr %i.er, align 8, !tbaa !319, !alias.scope !1100
  store i32 %i.eg, ptr %10, align 8, !tbaa !301, !alias.scope !1100
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 3 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !322 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !323
  %.not.i.i92 = icmp ult i32 %i.ev, %i.ex
  br i1 %.not.i.i92, label %bb.ae, label %bb.ad, !prof !324

bb.ad:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit91
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.et, ptr noundef nonnull align 8 dereferenceable(26) %10)
  br label %bb.af

bb.ae:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit91
  %i.ey = zext i32 %i.ev to i64
  %i.ez = load ptr, ptr %i.et, align 8, !tbaa !300
  %i.fa = getelementptr inbounds nuw [32 x i8], ptr %i.ez, i64 %i.ey
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  %i.fb = load i32, ptr %i.eu, align 8, !tbaa !322
  %i.fc = add i32 %i.fb, 1
  store i32 %i.fc, ptr %i.eu, align 8, !tbaa !322
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br label %bb.ag

.thread61:                                        ; preds = %bb.ac, %bb.w, %bb.q, %bb.k, %bb.e, %bb.a, %bb.b, %._crit_edge
  %i.fd = tail call fastcc noundef zeroext i1 @_ZL15RetCC_X86CommonjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(420) %5)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.z, %bb.t, %bb.n, %bb.h, %.thread61
  %.9 = phi i1 [ false, %bb.h ], [ %i.fd, %.thread61 ], [ false, %bb.af ], [ false, %bb.z ], [ false, %bb.t ], [ false, %bb.n ]
  ret i1 %.9
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL18RetCC_X86_64_SwiftjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(420) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %7 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %8 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %9 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %10 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %11 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %12 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %13 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %i.a = and i64 %4, 32768
  %i.b = icmp ne i64 %i.a, 0
  %i.c = icmp eq i16 %2, 8
  %or.cond = select i1 %i.b, i1 %i.c, i1 false
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !300  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !301
  %i.h = and i32 %i.g, 134217728
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.c, label %.thread114.thread

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext 123) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 0, ptr %i.i, align 8, !tbaa !303, !alias.scope !1103
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %0, ptr %i.j, align 8, !tbaa !308, !alias.scope !1103
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4, !alias.scope !1103
  %i.m = and i8 %i.l, -128
  %i.n = trunc i32 %3 to i8
  %i.o = shl i8 %i.n, 1
  %i.p = and i8 %i.o, 126
  %i.q = or disjoint i8 %i.m, %i.p
  store i8 %i.q, ptr %i.k, align 4, !alias.scope !1103
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i16 %1, ptr %i.r, align 2, !tbaa !319, !alias.scope !1103
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 8, ptr %i.s, align 8, !tbaa !319, !alias.scope !1103
  store i32 123, ptr %6, align 8, !tbaa !301, !alias.scope !1103
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !320, !nonnull !299, !align !321 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !322  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !323
  %.not.i.i = icmp ult i32 %i.w, %i.y
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !324

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(26) %6)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

bb.e:                                             ; preds = %bb.c
  %i.z = zext i32 %i.w to i64
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !300
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  %i.ac = load i32, ptr %i.v, align 8, !tbaa !322
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.v, align 8, !tbaa !322
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

_ZN4llvm7CCState11AllocateRegEt.exit:             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.bf

bb.f:                                             ; preds = %bb.a
  switch i16 %2, label %.thread146 [
    i16 19, label %bb.g
    i16 2, label %bb.i
    i16 5, label %.thread77
    i16 6, label %bb.q
    i16 7, label %bb.x
    i16 8, label %..thread114.thread_crit_edge
    i16 14, label %bb.ak
    i16 15, label %bb.ar
    i16 17, label %bb.ay
  ]

..thread114.thread_crit_edge:                     ; preds = %bb.f
  %.phi.trans.insert201 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.pre202 = load ptr, ptr %.phi.trans.insert201, align 8, !tbaa !300
  br label %.thread114.thread

bb.g:                                             ; preds = %bb.f
  %i.ae = and i64 %4, 2
  %.not176 = icmp eq i64 %i.ae, 0
  br i1 %.not176, label %bb.h, label %.thread77

bb.h:                                             ; preds = %bb.g
  %i.af = trunc i64 %4 to i1
  %. = select i1 %i.af, i32 2, i32 3
  br label %.thread77

bb.i:                                             ; preds = %bb.f
  %i.ag = and i64 %4, 2
  %.not = icmp eq i64 %i.ag, 0
  br i1 %.not, label %bb.j, label %.thread77

bb.j:                                             ; preds = %bb.i
  %i.ah = trunc i64 %4 to i1
  %.96 = select i1 %i.ah, i32 2, i32 3
  br label %.thread77

.thread77:                                        ; preds = %bb.f, %bb.h, %bb.g, %bb.j, %bb.i
  %.18089 = phi i32 [ %3, %bb.f ], [ 1, %bb.i ], [ %.96, %bb.j ], [ 1, %bb.g ], [ %., %bb.h ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !300 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !301 ; 3 uses
  %i.al = and i32 %i.ak, 4
  %.not.i.i98 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i98, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.k

bb.k:                                             ; preds = %.thread77
  %i.am = and i32 %i.ak, 524288
  %.not.i.i98.1 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i98.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = and i32 %i.ak, 2048
  %.not.i.i98.2 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i98.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !301
  %i.aq = and i32 %i.ap, 8388608
  %.not.i.i98.3 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i98.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %.thread146

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.m, %bb.l, %bb.k, %.thread77
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %.thread77 ], [ 1, %bb.k ], [ 2, %bb.l ], [ 3, %bb.m ]
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr @_ZZL18RetCC_X86_64_SwiftjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.i.lcssa.wide
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !302 ; 2 uses
end_hunk_11
