Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wasm-gc-operator-reducer?download=true
inline.NumInlined: 906
inline.NumDeleted: 380
begin_hunk_0_@_ZN2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_12NodeWithTypeENS_4base4hashIS6_EEE6ModifyIZNSB_3SetES6_S7_EUlPS7_E_EEvS6_T_:bb.a
  %i.e = add i64 %i.d, %i.c                       ; 2 uses
  %i.f = lshr i64 %i.e, 24
  %i.g = xor i64 %i.f, %i.e
  %i.h = mul i64 %i.g, 265                        ; 2 uses
  %i.i = lshr i64 %i.h, 14
  %i.j = xor i64 %i.i, %i.h
  %i.k = mul i64 %i.j, 21                         ; 2 uses
  %i.l = lshr i64 %i.k, 28
  %i.m = xor i64 %i.l, %i.k
  %i.n = mul i64 %i.m, 8398540807049701781        ; 2 uses
  %i.o = lshr i64 %i.n, 47
  %i.p = xor i64 %i.o, %i.n
  %i.q = mul i64 %i.p, 678072505
  %i.r = xor i64 %2, -1
  %i.s = shl i64 %2, 21
  %i.t = add i64 %i.s, %i.r                       ; 2 uses
  %i.u = lshr i64 %i.t, 24
  %i.v = xor i64 %i.u, %i.t
  %i.w = mul i64 %i.v, 265                        ; 2 uses
  %i.x = lshr i64 %i.w, 14
  %i.y = xor i64 %i.x, %i.w
  %i.z = mul i64 %i.y, 21                         ; 2 uses
  %i.aa = lshr i64 %i.z, 28
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, 8398540807049701781      ; 2 uses
  %i.ad = lshr i64 %i.ac, 47
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, 1540483477
  %i.ag = xor i64 %i.af, %i.q
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = mul i32 %i.ah, 1540483477               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.aj = load ptr, ptr %0, align 8               ; 2 uses
  %.not44.i = icmp eq ptr %i.aj, null
  br i1 %.not44.i, label %.loopexit, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %bb.a, %bb.f
  %.046.i = phi ptr [ %i.bq, %bb.f ], [ %i.aj, %bb.a ] ; 14 uses
  %.03245.i = phi i32 [ %i.br, %bb.f ], [ 0, %bb.a ] ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.046.i, i64 44
  %.sroa.01.0.copyload.i = load i32, ptr %i.ak, align 4 ; 2 uses
  %.not36.i = icmp eq i32 %i.ai, %.sroa.01.0.copyload.i
  %i.al = getelementptr inbounds nuw i8, ptr %.046.i, i64 40 ; 2 uses
  br i1 %.not36.i, label %.critedge.preheader.i, label %bb.b

.critedge.preheader.i:                            ; preds = %.lr.ph48.i
  %i.am = load i8, ptr %i.al, align 8             ; 3 uses
  %i.an = sext i8 %i.am to i32
  %i.ao = icmp slt i32 %.03245.i, %i.an
  br i1 %i.ao, label %.lr.ph52.i, label %_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_12NodeWithTypeENS_4base4hashIS6_EEE8FindHashENSB_9HashValueEPSt5arrayIPKNSB_11FocusedTreeELm32EEPi.exit

.lr.ph52.i:                                       ; preds = %.critedge.preheader.i
  %i.ap = sext i32 %.03245.i to i64               ; 2 uses
  %i.aq = sext i8 %i.am to i64
  %i.ar = shl nsw i64 %i.ap, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %6, i64 %i.ar
  %scevgep71 = getelementptr i8, ptr %.046.i, i64 56
  %scevgep72 = getelementptr i8, ptr %scevgep71, i64 %i.ar
  %i.as = sub nsw i64 %i.aq, %i.ap
  %i.at = shl nsw i64 %i.as, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep, ptr align 8 %scevgep72, i64 %i.at, i1 false)
  %i.au = sext i8 %i.am to i32
  br label %_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_12NodeWithTypeENS_4base4hashIS6_EEE8FindHashENSB_9HashValueEPSt5arrayIPKNSB_11FocusedTreeELm32EEPi.exit

bb.b:                                             ; preds = %.lr.ph48.i
  %i.av = xor i32 %.sroa.01.0.copyload.i, %i.ai   ; 2 uses
  %i.aw = lshr exact i32 -2147483648, %.03245.i
  %i.ax = and i32 %i.av, %i.aw
  %.not.i.not42.i = icmp eq i32 %i.ax, 0
  %.pre = load i8, ptr %i.al, align 8             ; 2 uses
  br i1 %.not.i.not42.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %.046.i, i64 56
  %i.az = sext i32 %.03245.i to i64
  %i.ba = sext i8 %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.az, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %i.bb = icmp slt i64 %indvars.iv.i, %i.ba
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.bd = load ptr, ptr %i.bc, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.be = phi ptr [ %i.bd, %bb.d ], [ null, %bb.c ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.i
  store ptr %i.be, ptr %i.bf, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bg = trunc nuw nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  %i.bh = lshr exact i32 -2147483648, %i.bg
  %i.bi = and i32 %i.bh, %i.av
  %.not.i.not.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.not.i, label %bb.c, label %._crit_edge.i, !llvm.loop !212

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.1.lcssa.i = phi i32 [ %.03245.i, %bb.b ], [ %i.bg, %bb.e ] ; 4 uses
  %i.bj = sext i32 %.1.lcssa.i to i64             ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bj
  store ptr %.046.i, ptr %i.bk, align 8
  %i.bl = sext i8 %.pre to i32
  %i.bm = icmp slt i32 %.1.lcssa.i, %i.bl
  br i1 %i.bm, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.i
  %i.bn = add nuw nsw i32 %.1.lcssa.i, 1
  br label %.loopexit

bb.f:                                             ; preds = %._crit_edge.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.046.i, i64 56
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bj
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = add nuw nsw i32 %.1.lcssa.i, 1          ; 2 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph48.i, !llvm.loop !213

.loopexit:                                        ; preds = %bb.f, %bb.a, %.thread.i
  %.3.i.ph = phi i32 [ 0, %bb.a ], [ %i.bn, %.thread.i ], [ %i.br, %bb.f ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_12NodeWithTypeENS_4base4hashIS6_EEE15GetFocusedValueEPKNSB_11FocusedTreeERKS6_.exit

_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_12NodeWithTypeENS_4base4hashIS6_EEE8FindHashENSB_9HashValueEPSt5arrayIPKNSB_11FocusedTreeELm32EEPi.exit: ; preds = %.lr.ph52.i, %.critedge.preheader.i
  %.3.i = phi i32 [ %.03245.i, %.critedge.preheader.i ], [ %i.au, %.lr.ph52.i ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.046.i, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8            ; 3 uses
  %.not11.i = icmp eq ptr %i.bu, null
  br i1 %.not11.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_12NodeWithTypeENS_4base4hashIS6_EEE8FindHashENSB_9HashValueEPSt5arrayIPKNSB_11FocusedTreeELm32EEPi.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not10.i.i.i.i, label %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_12NodeWithTypeESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bw, %bb.g ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bx, %bb.g ]
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = icmp ult ptr %i.bz, %1
  %i.cb = icmp eq ptr %i.bz, %1
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = icmp ult i64 %i.cd, %2
  %.sroa.05.0.i.i.i.i.i.i = select i1 %i.cb, i1 %i.ce, i1 %i.ca ; 2 uses
  %.19.i.i.i.i = select i1 %.sroa.05.0.i.i.i.i.i.i, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %.sroa.05.0.i.i.i.i.i.i, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZNKSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.cf = icmp eq ptr %.19.i.i.i.i, %i.bx
  br i1 %i.cf, label %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_12NodeWithTypeESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.thread.i, label %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_12NodeWithTypeESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.i

_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_12NodeWithTypeESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.i: ; preds = %_ZNKSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = icmp ult ptr %1, %i.ch
  %i.cj = icmp eq ptr %1, %i.ch
  %i.ck = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = icmp ult i64 %2, %i.cl
  %.sroa.05.0.i.i.i.i.i = select i1 %i.cj, i1 %i.cm, i1 %i.ci
  br i1 %.sroa.05.0.i.i.i.i.i, label %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_12NodeWithTypeESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.thread.i, label %bb.h

_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_12NodeWithTypeESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.thread.i: ; preds = %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_12NodeWithTypeESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.i, %_ZNKSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %bb.g
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_12NodeWithTypeENS_4base4hashIS6_EEE15GetFocusedValueEPKNSB_11FocusedTreeERKS6_.exit

bb.h:                                             ; preds = %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_12NodeWithTypeESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48
  br label %_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_12NodeWithTypeENS_4base4hashIS6_EEE15GetFocusedValueEPKNSB_11FocusedTreeERKS6_.exit

bb.i:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_12NodeWithTypeENS_4base4hashIS6_EEE8FindHashENSB_9HashValueEPSt5arrayIPKNSB_11FocusedTreeELm32EEPi.exit
  %i.cp = load ptr, ptr %.046.i, align 8
  %i.cq = icmp eq ptr %1, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %.046.i, i64 8
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = icmp eq i64 %2, %i.cs
  %i.cu = select i1 %i.cq, i1 %i.ct, i1 false
  br i1 %i.cu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.046.i, i64 16
  br label %_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_12NodeWithTypeENS_4base4hashIS6_EEE15GetFocusedValueEPKNSB_11FocusedTreeERKS6_.exit

bb.k:                                             ; preds = %bb.i
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_12NodeWithTypeENS_4base4hashIS6_EEE15GetFocusedValueEPKNSB_11FocusedTreeERKS6_.exit

_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_12NodeWithTypeENS_4base4hashIS6_EEE15GetFocusedValueEPKNSB_11FocusedTreeERKS6_.exit: ; preds = %.loopexit, %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_12NodeWithTypeESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.thread.i, %bb.h, %bb.j, %bb.k
  %.not.i3353 = phi i1 [ true, %.loopexit ], [ false, %bb.j ], [ false, %bb.k ], [ false, %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_12NodeWithTypeESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.thread.i ], [ false, %bb.h ]
  %.3.i51 = phi i32 [ %.3.i.ph, %.loopexit ], [ %.3.i, %bb.j ], [ %.3.i, %bb.k ], [ %.3.i, %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_12NodeWithTypeESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.thread.i ], [ %.3.i, %bb.h ] ; 4 uses
  %.039.i49 = phi ptr [ null, %.loopexit ], [ %.046.i, %bb.j ], [ %.046.i, %bb.k ], [ %.046.i, %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_12NodeWithTypeESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.thread.i ], [ %.046.i, %bb.h ] ; 5 uses
  %.1.i = phi ptr [ %i.bs, %.loopexit ], [ %i.cv, %bb.j ], [ %i.cw, %bb.k ], [ %i.cn, %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_12NodeWithTypeESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.thread.i ], [ %i.co, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.cx = load ptr, ptr %.1.i, align 8
  %i.cy = load ptr, ptr %7, align 8
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZN2v88internal8compiler14may_be_unequalINS1_12NodeWithTypeEEclERKS3_S6_.exit, label %_ZN2v88internal8compiler14may_be_unequalINS1_12NodeWithTypeEEclERKS3_S6_.exit.thread

_ZN2v88internal8compiler14may_be_unequalINS1_12NodeWithTypeEEclERKS3_S6_.exit: ; preds = %_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_12NodeWithTypeENS_4base4hashIS6_EEE15GetFocusedValueEPKNSB_11FocusedTreeERKS6_.exit
  %i.da = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.db, align 8
  %i.dc = load i32, ptr %i.da, align 8
  %i.dd = icmp ne i32 %i.dc, %.sroa.0.0.copyload.i.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = icmp ne ptr %i.df, %i.dh
  %.not3.i.i = select i1 %i.dd, i1 true, i1 %i.di
  br i1 %.not3.i.i, label %_ZN2v88internal8compiler14may_be_unequalINS1_12NodeWithTypeEEclERKS3_S6_.exit.thread, label %bb.x

_ZN2v88internal8compiler14may_be_unequalINS1_12NodeWithTypeEEclERKS3_S6_.exit.thread: ; preds = %_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_12NodeWithTypeENS_4base4hashIS6_EEE15GetFocusedValueEPKNSB_11FocusedTreeERKS6_.exit, %_ZN2v88internal8compiler14may_be_unequalINS1_12NodeWithTypeEEclERKS3_S6_.exit
  br i1 %.not.i3353, label %bb.v, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal8compiler14may_be_unequalINS1_12NodeWithTypeEEclERKS3_S6_.exit.thread
  %i.dj = getelementptr inbounds nuw i8, ptr %.039.i49, i64 48 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dm = load ptr, ptr %.039.i49, align 8
  %i.dn = icmp eq ptr %i.dm, %1
  %i.do = getelementptr inbounds nuw i8, ptr %.039.i49, i64 8
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = icmp eq i64 %i.dp, %2
  %i.dr = select i1 %i.dn, i1 %i.dq, i1 false
  br i1 %i.dr, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8            ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 3 uses
  %i.dx = load i64, ptr %i.dw, align 8            ; 2 uses
  %i.dy = sub i64 %i.dv, %i.dx
  %i.dz = icmp ult i64 %i.dy, 56
  br i1 %i.dz, label %bb.o, label %_ZN2v88internal4Zone3NewINS0_7ZoneMapISt4pairIPNS0_8compiler4NodeEmENS5_12NodeWithTypeESt4lessIS8_EEEJRPS1_EEEPT_DpOT0_.exit, !prof !13

bb.o:                                             ; preds = %bb.n
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.dt, i64 noundef 56) #13
  %.pre.i.i = load i64, ptr %i.dw, align 8
  br label %_ZN2v88internal4Zone3NewINS0_7ZoneMapISt4pairIPNS0_8compiler4NodeEmENS5_12NodeWithTypeESt4lessIS8_EEEJRPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_7ZoneMapISt4pairIPNS0_8compiler4NodeEmENS5_12NodeWithTypeESt4lessIS8_EEEJRPS1_EEEPT_DpOT0_.exit: ; preds = %bb.n, %bb.o
  %i.ea = phi i64 [ %.pre.i.i, %bb.o ], [ %i.dx, %bb.n ] ; 2 uses
  %i.eb = inttoptr i64 %i.ea to ptr               ; 15 uses
  %i.ec = add i64 %i.ea, 56
  store i64 %i.ec, ptr %i.dw, align 8
  %i.ed = load ptr, ptr %i.ds, align 8
  %i.ee = ptrtoint ptr %i.ed to i64
  store i64 %i.ee, ptr %i.eb, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 8 uses
  store i32 0, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 24 ; 4 uses
  store ptr null, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 32 ; 4 uses
  store ptr %i.ef, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 40 ; 4 uses
  store ptr %i.ef, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eb, i64 48 ; 4 uses
  store i64 0, ptr %i.ej, align 8
  %i.ek = load ptr, ptr %i.dj, align 8            ; 4 uses
  %.not30 = icmp eq ptr %i.ek, null
  br i1 %.not30, label %bb.u, label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_7ZoneMapISt4pairIPNS0_8compiler4NodeEmENS5_12NodeWithTypeESt4lessIS8_EEEJRPS1_EEEPT_DpOT0_.exit
  %.not.i.i.i = icmp eq ptr %i.ek, %i.eb
  br i1 %.not.i.i.i, label %_ZN2v88internal7ZoneMapISt4pairIPNS0_8compiler4NodeEmENS3_12NodeWithTypeESt4lessIS6_EEaSERKSA_.exit, label %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE20_Reuse_or_alloc_nodeC2ERSG_.exit.i.i.i

_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE20_Reuse_or_alloc_nodeC2ERSG_.exit.i.i.i: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr null, ptr %4, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.eb, ptr %i.em, align 8
  store ptr null, ptr %i.el, align 8
  store ptr null, ptr %i.eg, align 8
  store ptr %i.ef, ptr %i.eh, align 8
  store ptr %i.ef, ptr %i.ei, align 8
  store i64 0, ptr %i.ej, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.eo = load ptr, ptr %i.en, align 8            ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not5.i.i.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE20_Reuse_or_alloc_nodeC2ERSG_.exit.i.i.i
  %i.ep = call noundef ptr @_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.eb, ptr noundef nonnull %i.eo, ptr noundef nonnull %i.ef, ptr noundef nonnull align 8 dereferenceable(24) %4) ; 3 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i = phi ptr [ %i.ep, %bb.q ], [ %i.er, %bb.r ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.er = load ptr, ptr %i.eq, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %bb.r, !llvm.loop !214

_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %bb.r
  store ptr %.0.i.i.i.i.i.i, ptr %i.eh, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.ep, %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.et, %bb.s ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.et = load ptr, ptr %i.es, align 8            ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i8.i.i.i.i, label %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ERKSG_RT0_.exit.i.i.i, label %bb.s, !llvm.loop !215

_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ERKSG_RT0_.exit.i.i.i: ; preds = %bb.s
  store ptr %.0.i.i7.i.i.i.i, ptr %i.ei, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  %i.ev = load i64, ptr %i.eu, align 8
  store i64 %i.ev, ptr %i.ej, align 8
  store ptr %i.ep, ptr %i.eg, align 8
  %.pre.i.i.i = load ptr, ptr %i.em, align 8
  %.pre6.i.i.i = load ptr, ptr %4, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ERKSG_RT0_.exit.i.i.i, %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE20_Reuse_or_alloc_nodeC2ERSG_.exit.i.i.i
  %i.ew = phi ptr [ %.pre6.i.i.i, %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ERKSG_RT0_.exit.i.i.i ], [ null, %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE20_Reuse_or_alloc_nodeC2ERSG_.exit.i.i.i ]
  %i.ex = phi ptr [ %.pre.i.i.i, %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ERKSG_RT0_.exit.i.i.i ], [ %i.eb, %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE20_Reuse_or_alloc_nodeC2ERSG_.exit.i.i.i ]
  call void @_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(56) %i.ex, ptr noundef %i.ew)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZN2v88internal7ZoneMapISt4pairIPNS0_8compiler4NodeEmENS3_12NodeWithTypeESt4lessIS6_EEaSERKSA_.exit

bb.u:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_7ZoneMapISt4pairIPNS0_8compiler4NodeEmENS5_12NodeWithTypeESt4lessIS8_EEEJRPS1_EEEPT_DpOT0_.exit
  tail call void @_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(56) %i.eb, ptr noundef null)
  store ptr null, ptr %i.eg, align 8
  store ptr %i.ef, ptr %i.eh, align 8
  store ptr %i.ef, ptr %i.ei, align 8
  store i64 0, ptr %i.ej, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %.039.i49, i64 16
  %i.ez = tail call { ptr, i8 } @_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE17_M_emplace_uniqueIJRS7_RKS8_EEES0_ISt17_Rb_tree_iteratorIS9_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.eb, ptr noundef nonnull align 8 dereferenceable(16) %.039.i49, ptr noundef nonnull align 8 dereferenceable(24) %i.ey) ; 0 uses
  br label %_ZN2v88internal7ZoneMapISt4pairIPNS0_8compiler4NodeEmENS3_12NodeWithTypeESt4lessIS6_EEaSERKSA_.exit

_ZN2v88internal7ZoneMapISt4pairIPNS0_8compiler4NodeEmENS3_12NodeWithTypeESt4lessIS6_EEaSERKSA_.exit: ; preds = %bb.t, %bb.p, %bb.u
  %i.fa = call noundef i64 @_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE5eraseERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.eb, ptr noundef nonnull align 8 dereferenceable(16) %5) ; 0 uses
  %i.fb = call { ptr, i8 } @_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE17_M_emplace_uniqueIJRS6_RS8_EEES0_ISt17_Rb_tree_iteratorIS9_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.eb, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %7) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %_ZN2v88internal7ZoneMapISt4pairIPNS0_8compiler4NodeEmENS3_12NodeWithTypeESt4lessIS6_EEaSERKSA_.exit, %bb.m, %_ZN2v88internal8compiler14may_be_unequalINS1_12NodeWithTypeEEclERKS3_S6_.exit.thread
  %.027 = phi ptr [ null, %bb.m ], [ %i.eb, %_ZN2v88internal7ZoneMapISt4pairIPNS0_8compiler4NodeEmENS3_12NodeWithTypeESt4lessIS6_EEaSERKSA_.exit ], [ null, %_ZN2v88internal8compiler14may_be_unequalINS1_12NodeWithTypeEEclERKS3_S6_.exit.thread ]
  %i.fc = call i32 @llvm.smax.i32(i32 %.3.i51, i32 1)
  %.sroa.speculated = add nsw i32 %i.fc, -1
  %i.fd = zext nneg i32 %.sroa.speculated to i64
  %i.fe = shl nuw nsw i64 %i.fd, 3
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8            ; 3 uses
  %i.fh = add nuw nsw i64 %i.fe, 64               ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 16 ; 3 uses
  %i.fl = load i64, ptr %i.fk, align 8            ; 2 uses
  %i.fm = sub i64 %i.fj, %i.fl
  %i.fn = icmp ugt i64 %i.fh, %i.fm
  br i1 %i.fn, label %bb.w, label %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapISt4pairIPNS3_4NodeEmENS3_12NodeWithTypeENS_4base4hashIS8_EEE11FocusedTreeEEEPvm.exit, !prof !13

bb.w:                                             ; preds = %bb.v
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.fg, i64 noundef %i.fh) #13
  %.pre.i = load i64, ptr %i.fk, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapISt4pairIPNS3_4NodeEmENS3_12NodeWithTypeENS_4base4hashIS8_EEE11FocusedTreeEEEPvm.exit

_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapISt4pairIPNS3_4NodeEmENS3_12NodeWithTypeENS_4base4hashIS8_EEE11FocusedTreeEEEPvm.exit: ; preds = %bb.v, %bb.w
  %i.fo = phi i64 [ %.pre.i, %bb.w ], [ %i.fl, %bb.v ] ; 2 uses
  %i.fp = inttoptr i64 %i.fo to ptr               ; 7 uses
  %i.fq = add i64 %i.fo, %i.fh
  store i64 %i.fq, ptr %i.fk, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %i.ft = trunc i32 %.3.i51 to i8
  store i8 %i.ft, ptr %i.fs, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 44
  store i32 %i.ai, ptr %i.fu, align 4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  store ptr %.027, ptr %i.fv, align 8
  %.ptr = getelementptr inbounds nuw i8, ptr %i.fp, i64 56 ; 2 uses
  store ptr null, ptr %.ptr, align 8
  %i.fw = icmp sgt i32 %.3.i51, 0
  br i1 %i.fw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapISt4pairIPNS3_4NodeEmENS3_12NodeWithTypeENS_4base4hashIS8_EEE11FocusedTreeEEEPvm.exit
  %i.fx = zext nneg i32 %.3.i51 to i64
  %i.fy = shl nuw nsw i64 %i.fx, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.ptr, ptr nonnull align 8 %6, i64 %i.fy, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN2v88internal4Zone8AllocateINS0_8compiler13PersistentMapISt4pairIPNS3_4NodeEmENS3_12NodeWithTypeENS_4base4hashIS8_EEE11FocusedTreeEEEPvm.exit
  store ptr %i.fp, ptr %0, align 8
  br label %bb.x

bb.x:                                             ; preds = %_ZN2v88internal8compiler14may_be_unequalINS1_12NodeWithTypeEEclERKS3_S6_.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  store ptr %i.d, ptr %i.a, align 8
  %.not9.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not9.i.i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not10.i.i.i, label %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE13_M_clone_nodeILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESL_RT0_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.d, %.preheader.i.i.i
  %storemerge.i.i.i = phi ptr [ %i.l, %.preheader.i.i.i ], [ %i.j, %bb.d ] ; 3 uses
  store ptr %storemerge.i.i.i, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not11.i.i.i, label %bb.e, label %.preheader.i.i.i, !llvm.loop !216

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not12.i.i.i, label %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE13_M_clone_nodeILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESL_RT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.n, ptr %i.a, align 8
  br label %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE13_M_clone_nodeILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESL_RT0_.exit

bb.g:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.o, align 8
  br label %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE13_M_clone_nodeILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESL_RT0_.exit

bb.h:                                             ; preds = %bb.b
  store ptr null, ptr %3, align 8
  br label %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE13_M_clone_nodeILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESL_RT0_.exit

_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !12, !align !218
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ult i64 %i.w, 72
  br i1 %i.x, label %bb.i, label %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE14_M_create_nodeIJRKS9_EEEPSt13_Rb_tree_nodeIS9_EDpOT_.exit.i.i, !prof !13

bb.i:                                             ; preds = %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 noundef 72) #13
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8
  br label %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE14_M_create_nodeIJRKS9_EEEPSt13_Rb_tree_nodeIS9_EDpOT_.exit.i.i

_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE14_M_create_nodeIJRKS9_EEEPSt13_Rb_tree_nodeIS9_EDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i
  %i.y = phi i64 [ %.pre.i.i.i.i.i.i.i.i, %bb.i ], [ %i.v, %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = add i64 %i.y, 72
  store i64 %i.aa, ptr %i.u, align 8
  br label %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE13_M_clone_nodeILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESL_RT0_.exit

_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE13_M_clone_nodeILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESL_RT0_.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE14_M_create_nodeIJRKS9_EEEPSt13_Rb_tree_nodeIS9_EDpOT_.exit.i.i
  %.sink13.i.i = phi ptr [ %i.z, %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE14_M_create_nodeIJRKS9_EEEPSt13_Rb_tree_nodeIS9_EDpOT_.exit.i.i ], [ %i.b, %bb.d ], [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ %i.b, %bb.g ], [ %i.b, %bb.h ] ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false)
  %i.ad = load i32, ptr %1, align 8
  store i32 %i.ad, ptr %.sink13.i.i, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 8
  store ptr %2, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE13_M_clone_nodeILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESL_RT0_.exit
  %i.ai = tail call noundef ptr @_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.ah, ptr noundef nonnull %.sink13.i.i, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 24
  store ptr %i.ai, ptr %i.aj, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE13_M_clone_nodeILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESL_RT0_.exit
  %.0.in42 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.043 = load ptr, ptr %.0.in42, align 8         ; 2 uses
  %.not2844 = icmp eq ptr %.043, null
  br i1 %.not2844, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.v
  %.046 = phi ptr [ %.043, %.lr.ph ], [ %.0, %bb.v ] ; 4 uses
  %.02745 = phi ptr [ %.sink13.i.i, %.lr.ph ], [ %.sink13.i.i32, %bb.v ] ; 2 uses
  %i.al = load ptr, ptr %i.a, align 8             ; 8 uses
  %.not.i.i.i30 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i30, label %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i38, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8            ; 4 uses
  store ptr %i.an, ptr %i.a, align 8
  %.not9.i.i.i31 = icmp eq ptr %i.an, null
  br i1 %.not9.i.i.i31, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = icmp eq ptr %i.ap, %i.al
  br i1 %i.aq, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
end_hunk_0
