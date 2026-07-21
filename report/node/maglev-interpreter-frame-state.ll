inline.NumInlined: 3050
inline.NumDeleted: 1473
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK2v88internal6maglev16KnownNodeAspects26IsCompatibleWithLoopHeaderERKS2_:bb.a
bb.f:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.l = load i32, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 284
  %i.n = load i32, ptr %i.m, align 4
  %.not12 = icmp eq i32 %i.l, %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 5 uses
  %i.r = icmp eq ptr %i.p, %i.q                   ; 2 uses
  br i1 %.not12, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  br i1 %i.r, label %_ZN2v88internal6maglev12_GLOBAL__N_114AspectIncludesINS0_7ZoneMapIPNS1_9ValueNodeENS1_8NodeInfoESt4lessIS6_EEESA_FbRKS7_SC_EPFbSC_EEEbRKT_RKT0_RKT1_T2_.exit, label %.lr.ph.lr.ph.i

.lr.ph.lr.ph.i:                                   ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.outer.i, %.lr.ph.lr.ph.i
  %.sroa.010.0.ph34.i = phi ptr [ %i.p, %.lr.ph.lr.ph.i ], [ %i.ar, %.outer.i ]
  %.sroa.03.0.ph33.i = phi ptr [ %i.t, %.lr.ph.lr.ph.i ], [ %i.as, %.outer.i ] ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i
  %.sroa.010.031.i = phi ptr [ %.sroa.010.0.ph34.i, %.lr.ph.i ], [ %i.ab, %bb.i ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.010.031.i, i64 40
  %i.w = load i32, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp ne i32 %i.w, 262143
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.010.031.i, i64 45
  %i.z = load i8, ptr %i.y, align 1, !range !5
  %i.aa = trunc nuw i8 %i.z to i1
  %.not17.i = select i1 %i.x, i1 true, i1 %i.aa
  br i1 %.not17.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.010.031.i) #21 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.q
  br i1 %i.ac, label %_ZN2v88internal6maglev12_GLOBAL__N_114AspectIncludesINS0_7ZoneMapIPNS1_9ValueNodeENS1_8NodeInfoESt4lessIS6_EEESA_FbRKS7_SC_EPFbSC_EEEbRKT_RKT0_RKT1_T2_.exit, label %bb.h, !llvm.loop !30

bb.j:                                             ; preds = %bb.h
  %i.ad = icmp eq ptr %.sroa.03.0.ph33.i, %i.u
  br i1 %i.ad, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.010.031.i, i64 32
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.preheader.i
  %.sroa.03.1.i = phi ptr [ %i.aj, %bb.l ], [ %.sroa.03.0.ph33.i, %.preheader.i ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = icmp ult ptr %i.ah, %i.af
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.1.i) #21 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.u
  br i1 %i.ak, label %.loopexit, label %bb.k, !llvm.loop !31

bb.m:                                             ; preds = %bb.k
  %i.al = icmp eq ptr %i.af, %i.ah
  br i1 %i.al, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i, i64 40
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = xor i32 %i.w, -1
  %i.ap = and i32 %i.an, %i.ao
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %.outer.i, label %.loopexit

.outer.i:                                         ; preds = %bb.n
  %i.ar = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.010.031.i) #21 ; 2 uses
  %i.as = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.1.i) #21
  %i.at = icmp eq ptr %i.ar, %i.q
  br i1 %i.at, label %_ZN2v88internal6maglev12_GLOBAL__N_114AspectIncludesINS0_7ZoneMapIPNS1_9ValueNodeENS1_8NodeInfoESt4lessIS6_EEESA_FbRKS7_SC_EPFbSC_EEEbRKT_RKT0_RKT1_T2_.exit, label %.lr.ph.i, !llvm.loop !30

.loopexit:                                        ; preds = %bb.n, %bb.m, %bb.j, %bb.l
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 159), align 1, !range !5, !noundef !6
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.o, label %_ZN2v88internal6maglev12_GLOBAL__N_114AspectIncludesINS0_7ZoneMapIPNS1_9ValueNodeENS1_8NodeInfoESt4lessIS6_EEESA_FbRKS7_SC_EPFbSC_EEEbRKT_RKT0_RKT1_T2_.exit, !prof !16

bb.o:                                             ; preds = %.loopexit
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 54) #20 ; 0 uses
  br label %_ZN2v88internal6maglev12_GLOBAL__N_114AspectIncludesINS0_7ZoneMapIPNS1_9ValueNodeENS1_8NodeInfoESt4lessIS6_EEESA_FbRKS7_SC_EPFbSC_EEEbRKT_RKT0_RKT1_T2_.exit

bb.p:                                             ; preds = %bb.f
  br i1 %i.r, label %_ZN2v88internal6maglev12_GLOBAL__N_114AspectIncludesINS0_7ZoneMapIPNS1_9ValueNodeENS1_8NodeInfoESt4lessIS6_EEESA_FbRKS7_SC_EPFbSC_EEEbRKT_RKT0_RKT1_T2_.exit22, label %.lr.ph.lr.ph.i13

.lr.ph.lr.ph.i13:                                 ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  br label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %.outer.i21, %.lr.ph.lr.ph.i13
  %.sroa.010.0.ph34.i15 = phi ptr [ %i.p, %.lr.ph.lr.ph.i13 ], [ %i.cf, %.outer.i21 ]
  %.sroa.03.0.ph33.i16 = phi ptr [ %i.ay, %.lr.ph.lr.ph.i13 ], [ %i.cg, %.outer.i21 ] ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph.i14
  %.sroa.010.031.i17 = phi ptr [ %.sroa.010.0.ph34.i15, %.lr.ph.i14 ], [ %i.bg, %bb.r ] ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.010.031.i17, i64 40
  %i.bb = load i32, ptr %i.ba, align 8            ; 2 uses
  %i.bc = icmp ne i32 %i.bb, 262143
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.010.031.i17, i64 45
  %i.be = load i8, ptr %i.bd, align 1, !range !5
  %i.bf = trunc nuw i8 %i.be to i1                ; 2 uses
  %.not17.i18 = select i1 %i.bc, i1 true, i1 %i.bf
  br i1 %.not17.i18, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.010.031.i17) #21 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.q
  br i1 %i.bh, label %_ZN2v88internal6maglev12_GLOBAL__N_114AspectIncludesINS0_7ZoneMapIPNS1_9ValueNodeENS1_8NodeInfoESt4lessIS6_EEESA_FbRKS7_SC_EPFbSC_EEEbRKT_RKT0_RKT1_T2_.exit22, label %bb.q, !llvm.loop !30

bb.s:                                             ; preds = %bb.q
  %i.bi = icmp eq ptr %.sroa.03.0.ph33.i16, %i.az
  br i1 %i.bi, label %_ZN2v88internal6maglev12_GLOBAL__N_116NodeInfoIncludesERKNS1_8NodeInfoES5_.exit.thread, label %.preheader.i19

.preheader.i19:                                   ; preds = %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.010.031.i17, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.preheader.i19
  %.sroa.03.1.i20 = phi ptr [ %i.bo, %bb.u ], [ %.sroa.03.0.ph33.i16, %.preheader.i19 ] ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i20, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = icmp ult ptr %i.bm, %i.bk
  br i1 %i.bn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bo = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.1.i20) #21 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.az
  br i1 %i.bp, label %_ZN2v88internal6maglev12_GLOBAL__N_116NodeInfoIncludesERKNS1_8NodeInfoES5_.exit.thread, label %bb.t, !llvm.loop !31

bb.v:                                             ; preds = %bb.t
  %i.bq = icmp eq ptr %i.bk, %i.bm
  br i1 %i.bq, label %bb.w, label %_ZN2v88internal6maglev12_GLOBAL__N_116NodeInfoIncludesERKNS1_8NodeInfoES5_.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i20, i64 40
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = xor i32 %i.bb, -1
  %i.bu = and i32 %i.bs, %i.bt
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.x, label %_ZN2v88internal6maglev12_GLOBAL__N_116NodeInfoIncludesERKNS1_8NodeInfoES5_.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.010.031.i17, i64 44
  %i.bx = load i8, ptr %i.bw, align 4, !range !5
  %i.by = trunc nuw i8 %i.bx to i1
  %or.cond.i = select i1 %i.bf, i1 %i.by, i1 false
  br i1 %or.cond.i, label %bb.y, label %.outer.i21

bb.y:                                             ; preds = %bb.x
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i20, i64 45
  %i.ca = load i8, ptr %i.bz, align 1, !range !5, !noundef !6
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %_ZNK2v88internal6maglev8NodeInfo13possible_mapsEv.exit8.i, label %_ZN2v88internal6maglev12_GLOBAL__N_116NodeInfoIncludesERKNS1_8NodeInfoES5_.exit.thread

_ZNK2v88internal6maglev8NodeInfo13possible_mapsEv.exit8.i: ; preds = %bb.y
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.010.031.i17, i64 48
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i20, i64 48
  %i.ce = tail call noundef zeroext i1 @_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE8containsERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull align 8 dereferenceable(8) %i.cd)
  br i1 %i.ce, label %.outer.i21, label %_ZN2v88internal6maglev12_GLOBAL__N_116NodeInfoIncludesERKNS1_8NodeInfoES5_.exit.thread

.outer.i21:                                       ; preds = %_ZNK2v88internal6maglev8NodeInfo13possible_mapsEv.exit8.i, %bb.x
  %i.cf = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.010.031.i17) #21 ; 2 uses
  %i.cg = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.1.i20) #21
  %i.ch = icmp eq ptr %i.cf, %i.q
  br i1 %i.ch, label %_ZN2v88internal6maglev12_GLOBAL__N_114AspectIncludesINS0_7ZoneMapIPNS1_9ValueNodeENS1_8NodeInfoESt4lessIS6_EEESA_FbRKS7_SC_EPFbSC_EEEbRKT_RKT0_RKT1_T2_.exit22, label %.lr.ph.i14, !llvm.loop !30

_ZN2v88internal6maglev12_GLOBAL__N_116NodeInfoIncludesERKNS1_8NodeInfoES5_.exit.thread: ; preds = %_ZNK2v88internal6maglev8NodeInfo13possible_mapsEv.exit8.i, %bb.w, %bb.y, %bb.v, %bb.s, %bb.u
  %i.ci = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 159), align 1, !range !5, !noundef !6
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.z, label %_ZN2v88internal6maglev12_GLOBAL__N_114AspectIncludesINS0_7ZoneMapIPNS1_9ValueNodeENS1_8NodeInfoESt4lessIS6_EEESA_FbRKS7_SC_EPFbSC_EEEbRKT_RKT0_RKT1_T2_.exit, !prof !16

bb.z:                                             ; preds = %_ZN2v88internal6maglev12_GLOBAL__N_116NodeInfoIncludesERKNS1_8NodeInfoES5_.exit.thread
  %i.ck = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 43) #20 ; 0 uses
  br label %_ZN2v88internal6maglev12_GLOBAL__N_114AspectIncludesINS0_7ZoneMapIPNS1_9ValueNodeENS1_8NodeInfoESt4lessIS6_EEESA_FbRKS7_SC_EPFbSC_EEEbRKT_RKT0_RKT1_T2_.exit

_ZN2v88internal6maglev12_GLOBAL__N_114AspectIncludesINS0_7ZoneMapIPNS1_9ValueNodeENS1_8NodeInfoESt4lessIS6_EEESA_FbRKS7_SC_EPFbSC_EEEbRKT_RKT0_RKT1_T2_.exit22: ; preds = %.outer.i21, %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %.loopexit36, label %.lr.ph.lr.ph.i.i

.lr.ph.lr.ph.i.i:                                 ; preds = %_ZN2v88internal6maglev12_GLOBAL__N_114AspectIncludesINS0_7ZoneMapIPNS1_9ValueNodeENS1_8NodeInfoESt4lessIS6_EEESA_FbRKS7_SC_EPFbSC_EEEbRKT_RKT0_RKT1_T2_.exit22
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZZNK2v88internal6maglev16KnownNodeAspects26IsCompatibleWithLoopHeaderERKS2_ENK3$_0clINS0_7ZoneMapIPNS1_9ValueNodeES9_St4lessIS9_EEESC_EEDaT_T0_.exit.i.i", %.lr.ph.lr.ph.i.i
  %.sroa.010.0.ph47.i.i = phi ptr [ %i.cm, %.lr.ph.lr.ph.i.i ], [ %i.fu, %"_ZZNK2v88internal6maglev16KnownNodeAspects26IsCompatibleWithLoopHeaderERKS2_ENK3$_0clINS0_7ZoneMapIPNS1_9ValueNodeES9_St4lessIS9_EEESC_EEDaT_T0_.exit.i.i" ]
  %.sroa.03.0.ph46.i.i = phi ptr [ %i.cq, %.lr.ph.lr.ph.i.i ], [ %i.fv, %"_ZZNK2v88internal6maglev16KnownNodeAspects26IsCompatibleWithLoopHeaderERKS2_ENK3$_0clINS0_7ZoneMapIPNS1_9ValueNodeES9_St4lessIS9_EEESC_EEDaT_T0_.exit.i.i" ] ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit.thread.i.i, %.lr.ph.i.i
  %.sroa.010.044.i.i = phi ptr [ %.sroa.010.0.ph47.i.i, %.lr.ph.i.i ], [ %i.ds, %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit.thread.i.i ] ; 9 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.010.044.i.i, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.dh, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %5, align 8
  store i32 0, ptr %i.cr, align 8
  store ptr null, ptr %i.cs, align 8
  store ptr %i.cr, ptr %i.ct, align 8
  store ptr %i.cr, ptr %i.cu, align 8
  store i64 0, ptr %i.cv, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.010.044.i.i, i64 64
  %i.dj = load ptr, ptr %i.di, align 8            ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit.thread.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr %5, ptr %4, align 8
  %i.dk = call noundef ptr @_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS7_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull %i.dj, ptr noundef nonnull %i.cr, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 4 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dk, %bb.ab ], [ %i.dm, %bb.ac ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i, label %bb.ac, !llvm.loop !18

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i: ; preds = %bb.ac
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.ct, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i.i.i = phi ptr [ %i.dk, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i ], [ %i.do, %bb.ad ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i.i, i64 24
  %i.do = load ptr, ptr %i.dn, align 8            ; 2 uses
  %.not.i.i8.i.i.i.i.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i8.i.i.i.i.i.i.i, label %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit.i.i, label %bb.ad, !llvm.loop !19

_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit.i.i: ; preds = %bb.ad
  store ptr %.0.i.i7.i.i.i.i.i.i.i, ptr %i.cu, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.010.044.i.i, i64 88
  %i.dq = load i64, ptr %i.dp, align 8            ; 2 uses
  store i64 %i.dq, ptr %i.cv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  store ptr %i.dk, ptr %i.cs, align 8
  %i.dr = icmp eq i64 %i.dq, 0
  call void @_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.dk)
  br i1 %i.dr, label %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit.thread.i.i, label %bb.ae

_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit.thread.i.i: ; preds = %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit.i.i, %bb.aa
  %i.ds = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.010.044.i.i) #21 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.cn
  br i1 %i.dt, label %.loopexit36, label %bb.aa, !llvm.loop !32

bb.ae:                                            ; preds = %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.010.044.i.i, i64 40
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.010.044.i.i, i64 64
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.010.044.i.i, i64 88
  %i.dx = icmp eq ptr %.sroa.03.0.ph46.i.i, %i.cw
  br i1 %i.dx, label %.loopexit35, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ae
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.010.044.i.i, i64 32
  %i.dz = load i64, ptr %i.dy, align 8            ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %.preheader.i.i
  %.sroa.03.1.i.i = phi ptr [ %i.ed, %bb.ag ], [ %.sroa.03.0.ph46.i.i, %.preheader.i.i ] ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i.i, i64 32
  %i.eb = load i64, ptr %i.ea, align 8            ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.dz
  br i1 %i.ec, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ed = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.1.i.i) #21 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.cw
  br i1 %i.ee, label %.loopexit35, label %bb.af, !llvm.loop !33

bb.ah:                                            ; preds = %bb.af
  %i.ef = icmp eq i64 %i.dz, %i.eb
  br i1 %i.ef, label %bb.ai, label %.loopexit35

bb.ai:                                            ; preds = %bb.ah
  %.sroa.0.0.copyload.i.i.i.i.i.i7.i.i = load ptr, ptr %i.du, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i7.i.i, ptr %6, align 8
  store i32 0, ptr %i.cx, align 8
  store ptr null, ptr %i.cy, align 8
  store ptr %i.cx, ptr %i.cz, align 8
  store ptr %i.cx, ptr %i.da, align 8
  store i64 0, ptr %i.db, align 8
  %i.eg = load ptr, ptr %i.dv, align 8            ; 2 uses
  %.not.i.i.i8.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i8.i.i, label %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit15.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %6, ptr %3, align 8
  %i.eh = call noundef ptr @_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS7_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull %i.eg, ptr noundef nonnull %i.cx, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 3 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i.i9.i.i = phi ptr [ %i.eh, %bb.aj ], [ %i.ej, %bb.ak ] ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i9.i.i, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i10.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i.i.i.i10.i.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i11.i.i, label %bb.ak, !llvm.loop !18

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i11.i.i: ; preds = %bb.ak
  store ptr %.0.i.i.i.i.i.i.i9.i.i, ptr %i.cz, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i11.i.i
  %.0.i.i7.i.i.i.i.i12.i.i = phi ptr [ %i.eh, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i11.i.i ], [ %i.el, %bb.al ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i12.i.i, i64 24
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %.not.i.i8.i.i.i.i.i13.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i8.i.i.i.i.i13.i.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE7_M_copyERKSE_.exit.i.i.i14.i.i, label %bb.al, !llvm.loop !19

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE7_M_copyERKSE_.exit.i.i.i14.i.i: ; preds = %bb.al
  store ptr %.0.i.i7.i.i.i.i.i12.i.i, ptr %i.da, align 8
  %i.em = load i64, ptr %i.dw, align 8
  store i64 %i.em, ptr %i.db, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  store ptr %i.eh, ptr %i.cy, align 8
  br label %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit15.i.i

_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit15.i.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE7_M_copyERKSE_.exit.i.i.i14.i.i, %bb.ai
  %i.en = phi ptr [ %i.cx, %bb.ai ], [ %.0.i.i.i.i.i.i.i9.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE7_M_copyERKSE_.exit.i.i.i14.i.i ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i.i, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i.i16.i.i = load ptr, ptr %i.eo, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i16.i.i, ptr %7, align 8
  store i32 0, ptr %i.dc, align 8
  store ptr null, ptr %i.dd, align 8
  store ptr %i.dc, ptr %i.de, align 8
  store ptr %i.dc, ptr %i.df, align 8
  store i64 0, ptr %i.dg, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i.i, i64 64
  %i.eq = load ptr, ptr %i.ep, align 8            ; 2 uses
  %.not.i.i.i17.i.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i17.i.i, label %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit24.i.i, label %bb.am

bb.am:                                            ; preds = %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit15.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %7, ptr %2, align 8
  %i.er = call noundef ptr @_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS7_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull %i.eq, ptr noundef nonnull %i.dc, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 4 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i.i.i18.i.i = phi ptr [ %i.er, %bb.am ], [ %i.et, %bb.an ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i18.i.i, i64 16
  %i.et = load ptr, ptr %i.es, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i19.i.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i.i.i.i19.i.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i20.i.i, label %bb.an, !llvm.loop !18

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i20.i.i: ; preds = %bb.an
  store ptr %.0.i.i.i.i.i.i.i18.i.i, ptr %i.de, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i20.i.i
  %.0.i.i7.i.i.i.i.i21.i.i = phi ptr [ %i.er, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i20.i.i ], [ %i.ev, %bb.ao ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i21.i.i, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8            ; 2 uses
  %.not.i.i8.i.i.i.i.i22.i.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i8.i.i.i.i.i22.i.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE7_M_copyERKSE_.exit.i.i.i23.i.i, label %bb.ao, !llvm.loop !19

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE7_M_copyERKSE_.exit.i.i.i23.i.i: ; preds = %bb.ao
  store ptr %.0.i.i7.i.i.i.i.i21.i.i, ptr %i.df, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i.i, i64 88
  %i.ex = load i64, ptr %i.ew, align 8
  store i64 %i.ex, ptr %i.dg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  store ptr %i.er, ptr %i.dd, align 8
  %.pre.i.i = load ptr, ptr %i.cz, align 8
  br label %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit24.i.i

_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit24.i.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE7_M_copyERKSE_.exit.i.i.i23.i.i, %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit15.i.i
  %i.ey = phi ptr [ null, %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit15.i.i ], [ %i.er, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE7_M_copyERKSE_.exit.i.i.i23.i.i ] ; 2 uses
  %i.ez = phi ptr [ %i.dc, %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit15.i.i ], [ %.0.i.i.i.i.i.i.i18.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE7_M_copyERKSE_.exit.i.i.i23.i.i ]
  %i.fa = phi ptr [ %i.en, %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit15.i.i ], [ %.pre.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE7_M_copyERKSE_.exit.i.i.i23.i.i ] ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.cx
  br i1 %i.fb, label %"_ZZNK2v88internal6maglev16KnownNodeAspects26IsCompatibleWithLoopHeaderERKS2_ENK3$_0clINS0_7ZoneMapIPNS1_9ValueNodeES9_St4lessIS9_EEESC_EEDaT_T0_.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit24.i.i, %bb.at
  %.sroa.010.023.i.i.i.i = phi ptr [ %i.fq, %bb.at ], [ %i.fa, %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit24.i.i ] ; 3 uses
  %.sroa.03.022.i.i.i.i = phi ptr [ %i.fr, %bb.at ], [ %i.ez, %_ZN2v88internal7ZoneMapIPNS0_6maglev9ValueNodeES4_St4lessIS4_EEC2ERKS7_.exit24.i.i ] ; 2 uses
  %i.fc = icmp eq ptr %.sroa.03.022.i.i.i.i, %i.dc
  br i1 %i.fc, label %.critedge.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.010.023.i.i.i.i, i64 32
  %i.fe = load ptr, ptr %i.fd, align 8            ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aq, %.preheader.i.i.i.i
  %.sroa.03.1.i.i.i.i = phi ptr [ %i.fi, %bb.aq ], [ %.sroa.03.022.i.i.i.i, %.preheader.i.i.i.i ] ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i.i.i.i, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8            ; 2 uses
  %i.fh = icmp ult ptr %i.fg, %i.fe
  br i1 %i.fh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fi = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.1.i.i.i.i) #21 ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.dc
  br i1 %i.fj, label %.critedge.i.i, label %bb.ap, !llvm.loop !34

bb.ar:                                            ; preds = %bb.ap
  %i.fk = icmp eq ptr %i.fe, %i.fg
  br i1 %i.fk, label %bb.as, label %.critedge.i.i
end_hunk_0
