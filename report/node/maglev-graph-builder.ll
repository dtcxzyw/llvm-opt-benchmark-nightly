inline.NumInlined: 39742
inline.NumDeleted: 11729
begin_hunk_0_@_ZN2v88internal6maglev18MaglevGraphBuilder20BuildEagerInlineCallEPNS1_9ValueNodeES4_S4_NS0_8compiler21SharedFunctionInfoRefENS5_15FeedbackCellRefERNS1_13CallArgumentsEf:bb.a
  %8 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::maglev::MaglevGraphBuilder", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = sub nsw i64 0, %i.ab
  %.not.i = icmp eq i64 %i.u, %i.ac
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = icmp eq ptr %i.n, %i.p
  br i1 %i.ad, label %bb.c, label %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread41

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread41

bb.d:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %.not11.i = icmp eq ptr %i.ai, null
  br i1 %.not11.i, label %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread, label %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit

_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  %.sroa.0.0.copyload.i = load ptr, ptr %i.aj, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 112
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 3 uses
  %i.ak = icmp ne ptr %.sroa.0.0.copyload.i, null
  %i.al = trunc i64 %.sroa.4.0.copyload.i to i1
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.f, label %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread

_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread41: ; preds = %bb.b, %bb.c
  %i.am = phi ptr [ %i.ag, %bb.c ], [ %i.n, %bb.b ]
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = sext i32 %i.ao to i64                   ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ar
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = and i32 %i.ay, 3
  %i.ba = icmp eq i32 %i.az, 2                    ; 2 uses
  %.sroa.4.8.insert.ext.i = zext i1 %i.ba to i64  ; 2 uses
  %i.bb = icmp ne ptr %i.aq, null
  %or.cond44 = select i1 %i.bb, i1 %i.ba, i1 false
  br i1 %or.cond44, label %.thread, label %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread

.thread:                                          ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread41
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = icmp eq ptr %i.n, %i.p
  br i1 %i.be, label %bb.e, label %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCatchBlockFrameStateEv.exit

bb.e:                                             ; preds = %.thread
  %i.bf = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 512
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCatchBlockFrameStateEv.exit

_ZN2v88internal6maglev18MaglevGraphBuilder23GetCatchBlockFrameStateEv.exit: ; preds = %.thread, %bb.e
  %i.bi = phi ptr [ %i.bh, %bb.e ], [ %i.n, %.thread ]
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -4
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState10MergeThrowEPNS1_18MaglevGraphBuilderEPKNS1_21MaglevCompilationUnitERKNS1_16KnownNodeAspectsE(ptr noundef nonnull align 8 dereferenceable(312) %i.bn, ptr noundef nonnull %0, ptr noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(352) %i.br) #33
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit, %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCatchBlockFrameStateEv.exit
  %.sroa.0.0.i4552 = phi ptr [ %i.as, %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCatchBlockFrameStateEv.exit ], [ %.sroa.0.0.copyload.i, %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit ]
  %.sroa.4.0.i4650 = phi i64 [ %.sroa.4.8.insert.ext.i, %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCatchBlockFrameStateEv.exit ], [ %.sroa.4.0.copyload.i, %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit ] ; 2 uses
  %i.bs = and i64 %.sroa.4.0.i4650, -4294967296
  %.sroa.426.12.insert.ext = add i64 %i.bs, 4294967296
  %.sroa.426.12.insert.mask = and i64 %.sroa.4.0.i4650, 4294967295
  %.sroa.426.12.insert.insert = or disjoint i64 %.sroa.426.12.insert.ext, %.sroa.426.12.insert.mask
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread

_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread: ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread41, %bb.d, %bb.f, %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit
  %.sroa.0.0.i34 = phi ptr [ %.sroa.0.0.i4552, %bb.f ], [ %.sroa.0.0.copyload.i, %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit ], [ null, %bb.d ], [ %i.as, %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread41 ]
  %.sroa.426.0 = phi i64 [ %.sroa.426.12.insert.insert, %bb.f ], [ %.sroa.4.0.copyload.i, %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit ], [ 0, %bb.d ], [ %.sroa.4.8.insert.ext.i, %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread41 ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.bu) #33 ; 3 uses
  %i.bw = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 3 uses
  %i.cb = load i64, ptr %i.ca, align 8            ; 2 uses
  %i.cc = sub i64 %i.bz, %i.cb
  %i.cd = icmp ult i64 %i.cc, 56
  br i1 %i.cd, label %bb.g, label %_ZN2v88internal6maglev21MaglevCompilationUnit8NewInnerEPNS0_4ZoneEPKS2_NS0_8compiler21SharedFunctionInfoRefENS7_15FeedbackCellRefE.exit, !prof !6

bb.g:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bv, i64 noundef 56) #33
  %.pre.i.i.i = load i64, ptr %i.ca, align 8
  br label %_ZN2v88internal6maglev21MaglevCompilationUnit8NewInnerEPNS0_4ZoneEPKS2_NS0_8compiler21SharedFunctionInfoRefENS7_15FeedbackCellRefE.exit

_ZN2v88internal6maglev21MaglevCompilationUnit8NewInnerEPNS0_4ZoneEPKS2_NS0_8compiler21SharedFunctionInfoRefENS7_15FeedbackCellRefE.exit: ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread, %bb.g
  %i.ce = phi i64 [ %.pre.i.i.i, %bb.g ], [ %i.cb, %_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv.exit.thread ] ; 2 uses
  %i.cf = inttoptr i64 %i.ce to ptr               ; 3 uses
  %i.cg = add i64 %i.ce, 56
  store i64 %i.cg, ptr %i.ca, align 8
  tail call void @_ZN2v88internal6maglev21MaglevCompilationUnitC1EPNS1_21MaglevCompilationInfoEPKS2_NS0_8compiler21SharedFunctionInfoRefENS7_15FeedbackCellRefE(ptr noundef nonnull align 8 dereferenceable(52) %i.cf, ptr noundef %i.bx, ptr noundef nonnull %i.bw, ptr %4, ptr %5) #33
  %i.ch = tail call { ptr, i64 } @_ZN2v88internal6maglev18MaglevGraphBuilder31GetArgumentsAsArrayOfValueNodesENS0_8compiler21SharedFunctionInfoRefERKNS1_13CallArgumentsE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr %4, ptr noundef nonnull align 8 dereferenceable(100) %6) ; 2 uses
  %i.ci = extractvalue { ptr, i64 } %i.ch, 0      ; 2 uses
  %i.cj = extractvalue { ptr, i64 } %i.ch, 1      ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = tail call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder31GetDeoptFrameForLazyDeoptHelperENS0_11interpreter8RegisterEiPNS2_19LazyDeoptFrameScopeEb(ptr noundef nonnull align 8 dereferenceable(953) %0, i32 2147483647, i32 noundef 0, ptr noundef %i.cl, i1 noundef zeroext true)
  %i.cn = tail call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder31AddInlinedArgumentsToDeoptFrameEPNS1_10DeoptFrameEPKNS1_21MaglevCompilationUnitEPNS1_9ValueNodeENS_4base6VectorIS9_EE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.cm, ptr noundef nonnull %i.cf, ptr noundef %2, ptr %i.ci, i64 %i.cj)
  %i.co = load ptr, ptr %i.bt, align 8
  %i.cp = tail call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.co) #33 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cv = load ptr, ptr %i.cu, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.cv, null
  br i1 %.not5.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal6maglev21MaglevCompilationUnit8NewInnerEPNS0_4ZoneEPKS2_NS0_8compiler21SharedFunctionInfoRefENS7_15FeedbackCellRefE.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 120
  %i.cx = load i8, ptr %i.cw, align 8, !range !10, !noundef !11
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %_ZNK2v88internal6maglev18MaglevGraphBuilder12IsInsideLoopEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN2v88internal6maglev21MaglevCompilationUnit8NewInnerEPNS0_4ZoneEPKS2_NS0_8compiler21SharedFunctionInfoRefENS7_15FeedbackCellRefE.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = zext i32 %i.dh to i64
  %i.dj = add i64 %i.df, %i.di
  %i.dk = sub i64 %i.de, %i.dj
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = tail call noundef i32 @_ZNK2v88internal8compiler16BytecodeAnalysis16GetLoopOffsetForEi(ptr noundef nonnull align 8 dereferenceable(140) %i.cz, i32 noundef %i.dl) #33 ; 2 uses
  %.not.i19 = icmp eq i32 %i.dm, -1
  br i1 %.not.i19, label %_ZNK2v88internal6maglev18MaglevGraphBuilder12IsInsideLoopEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dn = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK2v88internal8compiler16BytecodeAnalysis14GetLoopInfoForEi(ptr noundef nonnull align 8 dereferenceable(140) %i.cz, i32 noundef %i.dm) #33
  %i.do = load i32, ptr %i.dn, align 8
  %i.dp = icmp eq i32 %i.do, -1
  br i1 %i.dp, label %bb.k, label %_ZNK2v88internal6maglev18MaglevGraphBuilder12IsInsideLoopEv.exit

bb.k:                                             ; preds = %bb.j
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.dr = load i32, ptr %i.dq, align 8            ; 2 uses
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %bb.l, label %_ZNK2v88internal6maglev18MaglevGraphBuilder12IsInsideLoopEv.exit

bb.l:                                             ; preds = %bb.k
  %i.dt = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 59), align 1, !range !10, !noundef !11
  %10 = trunc nuw i8 %i.dt to i1
  %i.du = icmp eq i32 %i.dr, 1
  %11 = and i1 %i.du, %10
  %12 = zext i1 %11 to i8
  br label %_ZNK2v88internal6maglev18MaglevGraphBuilder12IsInsideLoopEv.exit

_ZNK2v88internal6maglev18MaglevGraphBuilder12IsInsideLoopEv.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.2.i = phi i8 [ 1, %bb.h ], [ 1, %bb.j ], [ %12, %bb.l ], [ 1, %bb.k ], [ 0, %bb.i ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 3 uses
  %i.dy = load i64, ptr %i.dx, align 8            ; 2 uses
  %i.dz = sub i64 %i.dw, %i.dy
  %i.ea = icmp ult i64 %i.dz, 128
  br i1 %i.ea, label %bb.m, label %_ZN2v88internal4Zone3NewINS0_6maglev19MaglevCallerDetailsEJRNS_4base6VectorIPNS3_9ValueNodeEEERPNS3_10DeoptFrameEPNS3_16KnownNodeAspectsERPNS3_11LoopEffectsERNS0_16ZoneUnorderedMapISt5tupleIJS8_iEEPNS3_4NodeENS5_4hashISL_EESt8equal_toISL_EEERNS3_17CatchBlockDetailsEbbRfEEEPT_DpOT0_.exit, !prof !6

bb.m:                                             ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder12IsInsideLoopEv.exit
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cp, i64 noundef 128) #33
  %.pre.i.i = load i64, ptr %i.dx, align 8
  br label %_ZN2v88internal4Zone3NewINS0_6maglev19MaglevCallerDetailsEJRNS_4base6VectorIPNS3_9ValueNodeEEERPNS3_10DeoptFrameEPNS3_16KnownNodeAspectsERPNS3_11LoopEffectsERNS0_16ZoneUnorderedMapISt5tupleIJS8_iEEPNS3_4NodeENS5_4hashISL_EESt8equal_toISL_EEERNS3_17CatchBlockDetailsEbbRfEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_6maglev19MaglevCallerDetailsEJRNS_4base6VectorIPNS3_9ValueNodeEEERPNS3_10DeoptFrameEPNS3_16KnownNodeAspectsERPNS3_11LoopEffectsERNS0_16ZoneUnorderedMapISt5tupleIJS8_iEEPNS3_4NodeENS5_4hashISL_EESt8equal_toISL_EEERNS3_17CatchBlockDetailsEbbRfEEEPT_DpOT0_.exit: ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder12IsInsideLoopEv.exit, %bb.m
  %i.eb = phi i64 [ %.pre.i.i, %bb.m ], [ %i.dy, %_ZNK2v88internal6maglev18MaglevGraphBuilder12IsInsideLoopEv.exit ] ; 2 uses
  %i.ec = inttoptr i64 %i.eb to ptr               ; 18 uses
  %i.ed = add i64 %i.eb, 128
  store i64 %i.ed, ptr %i.dx, align 8
  store ptr %i.ci, ptr %i.ec, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i64 %i.cj, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store ptr %i.cn, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store ptr %i.cr, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.eh = load ptr, ptr %i.cs, align 8
  store ptr %i.eh, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 40 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.ct, align 8
  %i.ej = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i to i64
  store i64 %i.ej, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  store ptr null, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.en = load i64, ptr %i.em, align 8
  store i64 %i.en, ptr %i.el, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ec, i64 64
  store ptr null, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ec, i64 72
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.er = load i64, ptr %i.eq, align 8
  store i64 %i.er, ptr %i.ep, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.ec, i64 80
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 928
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.es, ptr noundef nonnull align 8 dereferenceable(16) %i.et, i64 16, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ec, i64 96
  store ptr null, ptr %i.eu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  store ptr %i.ei, ptr %8, align 8
  call void @_ZNSt10_HashtableISt5tupleIJPN2v88internal6maglev9ValueNodeEiEESt4pairIKS6_PNS3_4NodeEENS2_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSQ_NSE_10_AllocNodeINSC_INSE_10_Hash_nodeISB_Lb1EEEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ei, ptr noundef nonnull align 8 dereferenceable(64) %i.ct, ptr noundef nonnull align 8 dereferenceable(8) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ec, i64 104
  store ptr %.sroa.0.0.i34, ptr %i.ev, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 112
  store i64 %.sroa.426.0, ptr %.sroa.426.0..sroa_idx, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ec, i64 120
  store i8 %.2.i, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ec, i64 121
  store i8 1, ptr %i.ex, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ec, i64 124
  store float %7, ptr %i.ey, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.fc = load ptr, ptr %i.fb, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilderC2EPNS0_12LocalIsolateEPNS1_21MaglevCompilationUnitEPNS1_5GraphEPNS1_19MaglevCallerDetailsE(ptr noundef nonnull align 8 dereferenceable(953) %9, ptr noundef %i.fa, ptr noundef nonnull %i.cf, ptr noundef %i.fc, ptr noundef nonnull %i.ec)
  call void @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE17FlushNodesToBlockEv(ptr noundef nonnull align 8 dereferenceable(152) %0)
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  store ptr %i.fe, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i20 = load i64, ptr %i.fg, align 8
  %i.fh = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder19BuildInlineFunctionENS0_14SourcePositionEPNS1_9ValueNodeES5_S5_(ptr noundef nonnull align 8 dereferenceable(953) %9, i64 %.sroa.0.0.copyload.i20, ptr noundef %1, ptr noundef %2, ptr noundef %3) ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 888
  call void @_ZNSt10_HashtableISt5tupleIJPN2v88internal6maglev9ValueNodeEiEESt4pairIKS6_PNS3_4NodeEENS2_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE18_M_assign_elementsIRKSQ_EEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %i.ct, ptr noundef nonnull align 8 dereferenceable(64) %i.fi)
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 640
  store ptr null, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 696
  store ptr null, ptr %i.fk, align 8
  %i.fl = and i64 %i.fh, 7
  %i.fm = icmp eq i64 %i.fl, 1
  br i1 %i.fm, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_6maglev19MaglevCallerDetailsEJRNS_4base6VectorIPNS3_9ValueNodeEEERPNS3_10DeoptFrameEPNS3_16KnownNodeAspectsERPNS3_11LoopEffectsERNS0_16ZoneUnorderedMapISt5tupleIJS8_iEEPNS3_4NodeENS5_4hashISL_EESt8equal_toISL_EEERNS3_17CatchBlockDetailsEbbRfEEEPT_DpOT0_.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %9, i64 728
  %i.fo = load ptr, ptr %i.fn, align 8
  store ptr %i.fo, ptr %i.cq, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %9, i64 688
  %i.fq = load i8, ptr %i.fp, align 8, !range !10, !noundef !11
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i8 %i.fq, ptr %i.fr, align 8
  call void @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE17FlushNodesToBlockEv(ptr noundef nonnull align 8 dereferenceable(152) %9)
  %i.fs = load ptr, ptr %i.ff, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_6maglev19MaglevCallerDetailsEJRNS_4base6VectorIPNS3_9ValueNodeEEERPNS3_10DeoptFrameEPNS3_16KnownNodeAspectsERPNS3_11LoopEffectsERNS0_16ZoneUnorderedMapISt5tupleIJS8_iEEPNS3_4NodeENS5_4hashISL_EESt8equal_toISL_EEERNS3_17CatchBlockDetailsEbbRfEEEPT_DpOT0_.exit, %bb.n
  %storemerge = phi ptr [ %i.fs, %bb.n ], [ null, %_ZN2v88internal4Zone3NewINS0_6maglev19MaglevCallerDetailsEJRNS_4base6VectorIPNS3_9ValueNodeEEERPNS3_10DeoptFrameEPNS3_16KnownNodeAspectsERPNS3_11LoopEffectsERNS0_16ZoneUnorderedMapISt5tupleIJS8_iEEPNS3_4NodeENS5_4hashISL_EESt8equal_toISL_EEERNS3_17CatchBlockDetailsEbbRfEEEPT_DpOT0_.exit ]
  %.sroa.017.0 = phi i64 [ %i.fh, %bb.n ], [ 1, %_ZN2v88internal4Zone3NewINS0_6maglev19MaglevCallerDetailsEJRNS_4base6VectorIPNS3_9ValueNodeEEERPNS3_10DeoptFrameEPNS3_16KnownNodeAspectsERPNS3_11LoopEffectsERNS0_16ZoneUnorderedMapISt5tupleIJS8_iEEPNS3_4NodeENS5_4hashISL_EESt8equal_toISL_EEERNS3_17CatchBlockDetailsEbbRfEEEPT_DpOT0_.exit ]
  store ptr %storemerge, ptr %i.fd, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(953) dereferenceable(953) %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  ret i64 %.sroa.017.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZN2v88internal6maglev18MaglevGraphBuilder31GetArgumentsAsArrayOfValueNodesENS0_8compiler21SharedFunctionInfoRefERKNS1_13CallArgumentsE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(100) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 8
  %i.b = icmp ne i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sext i1 %i.b to i64
  %.0.i = add nsw i64 %i.j, %i.k                  ; 3 uses
  %i.l = trunc i64 %.0.i to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.n) #33 ; 3 uses
  %i.p = shl i64 %.0.i, 32
  %sext = add i64 %i.p, 4294967296                ; 2 uses
  %i.q = ashr exact i64 %sext, 32                 ; 2 uses
  %i.r = icmp ult i64 %i.q, 2305843009213693951
  br i1 %i.r, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.164) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.s = ashr exact i64 %sext, 29                 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = sub i64 %i.u, %i.w
  %i.y = icmp ugt i64 %i.s, %i.x
  br i1 %i.y, label %bb.d, label %_ZN2v88internal4Zone14AllocateVectorIPNS0_6maglev9ValueNodeEA_S5_EENS_4base6VectorIT_EEm.exit, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.o, i64 noundef %i.s) #33
  %.pre.i.i.i = load i64, ptr %i.v, align 8
  br label %_ZN2v88internal4Zone14AllocateVectorIPNS0_6maglev9ValueNodeEA_S5_EENS_4base6VectorIT_EEm.exit

_ZN2v88internal4Zone14AllocateVectorIPNS0_6maglev9ValueNodeEA_S5_EENS_4base6VectorIT_EEm.exit: ; preds = %bb.c, %bb.d
  %i.z = phi i64 [ %.pre.i.i.i, %bb.d ], [ %i.w, %bb.c ] ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 3 uses
  %i.ab = add i64 %i.z, %i.s
  store i64 %i.ab, ptr %i.v, align 8
  %i.ac = tail call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder18GetConvertReceiverENS0_8compiler21SharedFunctionInfoRefERKNS1_13CallArgumentsE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(100) %2)
  store ptr %i.ac, ptr %i.aa, align 8
  %i.ad = icmp sgt i32 %i.l, 0
  br i1 %i.ad, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal4Zone14AllocateVectorIPNS0_6maglev9ValueNodeEA_S5_EENS_4base6VectorIT_EEm.exit
  %wide.trip.count = and i64 %.0.i, 2147483647
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK2v88internal6maglev13CallArgumentsixEm.exit, %_ZN2v88internal4Zone14AllocateVectorIPNS0_6maglev9ValueNodeEA_S5_EENS_4base6VectorIT_EEm.exit
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.aa, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.q, 1
  ret { ptr, i64 } %.fca.1.insert.i

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK2v88internal6maglev13CallArgumentsixEm.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNK2v88internal6maglev13CallArgumentsixEm.exit ] ; 2 uses
  %i.ae = load i32, ptr %2, align 8
  %.not.i = icmp ne i32 %i.ae, 0
  %i.af = zext i1 %.not.i to i64
  %spec.select.i = add nuw nsw i64 %indvars.iv, %i.af ; 2 uses
  %i.ag = load ptr, ptr %i.d, align 8
  %i.ah = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %.not5.i = icmp ult i64 %spec.select.i, %i.al
  br i1 %.not5.i, label %bb.e, label %_ZNK2v88internal6maglev13CallArgumentsixEm.exit

bb.e:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %spec.select.i
  %i.an = load ptr, ptr %i.am, align 8
  br label %_ZNK2v88internal6maglev13CallArgumentsixEm.exit

_ZNK2v88internal6maglev13CallArgumentsixEm.exit:  ; preds = %.lr.ph, %bb.e
  %.04.i = phi ptr [ %i.an, %bb.e ], [ null, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next
  store ptr %.04.i, ptr %i.ao, align 8
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !170
}

end_hunk_0
