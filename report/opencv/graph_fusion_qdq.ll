Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/graph_fusion_qdq?download=true
inline.NumInlined: 1844
inline.NumDeleted: 601
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ9fuseGraphERNS_3PtrINS1_5GraphEEE:bb.a
  %i.gt = getelementptr inbounds nuw i8, ptr %123, i64 56
  %i.gu = getelementptr inbounds nuw i8, ptr %123, i64 60
  %i.gv = getelementptr inbounds nuw i8, ptr %123, i64 64
  %i.gw = getelementptr inbounds nuw i8, ptr %123, i64 272
  %i.gx = getelementptr inbounds nuw i8, ptr %123, i64 480
  %i.gy = getelementptr inbounds nuw i8, ptr %128, i64 16 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %128, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %128, i64 32 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %128, i64 134 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %128, i64 135
  %i.hd = getelementptr inbounds nuw i8, ptr %128, i64 136 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %128, i64 140 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %128, i64 144 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %128, i64 148 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %128, i64 56
  %i.hi = getelementptr inbounds nuw i8, ptr %128, i64 104
  %i.hj = getelementptr inbounds nuw i8, ptr %128, i64 128
  %i.hk = getelementptr inbounds nuw i8, ptr %128, i64 132
  %i.hl = getelementptr inbounds nuw i8, ptr %128, i64 133
  %i.hm = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %bb.d

.preheader3730:                                   ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit
  %.pre8707 = load ptr, ptr %i.bi, align 8, !tbaa !29 ; 2 uses
  %.pre8708 = load ptr, ptr %12, align 8, !tbaa !30 ; 5 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 15 uses
  %.not6642 = icmp eq ptr %.pre8707, %.pre8708
  br i1 %.not6642, label %.preheader3728.thread, label %.lr.ph6574

.lr.ph6574:                                       ; preds = %.preheader3730
  %i.ho = ptrtoint ptr %.pre8708 to i64
  %i.hp = ptrtoint ptr %.pre8707 to i64
  %i.hq = sub i64 %i.hp, %i.ho
  %i.hr = ashr exact i64 %i.hq, 4
  %i.hs = getelementptr inbounds nuw i8, ptr %136, i64 24
  %i.ht = getelementptr inbounds nuw i8, ptr %137, i64 16 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %137, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %137, i64 32 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %137, i64 134 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %137, i64 135
  %i.hy = getelementptr inbounds nuw i8, ptr %137, i64 136 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %137, i64 140 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %137, i64 144 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %137, i64 148 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %137, i64 56 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %137, i64 80 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %137, i64 104 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %137, i64 128
  %i.ig = getelementptr inbounds nuw i8, ptr %137, i64 132
  %i.ih = getelementptr inbounds nuw i8, ptr %138, i64 8 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %137, i64 120
  %i.ij = getelementptr inbounds nuw i8, ptr %137, i64 96
  %i.ik = getelementptr inbounds nuw i8, ptr %137, i64 72
  %i.il = getelementptr inbounds nuw i8, ptr %137, i64 48
  br label %bb.axe

bb.d:                                             ; preds = %.lr.ph6560, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit
  %.012846558 = phi i1 [ false, %.lr.ph6560 ], [ %.5, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit ] ; 4 uses
  %.015716557 = phi i64 [ 0, %.lr.ph6560 ], [ %i.fdt, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit ] ; 3 uses
  %i.im = trunc i64 %.015716557 to i32            ; 2 uses
  %i.in = load ptr, ptr %i.av, align 8, !tbaa !38 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.in, null
  br i1 %.not10.i.i.i, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.in, %bb.d ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.au, %bb.d ] ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !31
  %i.iq = icmp slt i32 %i.ip, %i.im               ; 3 uses
  %.19.i.i.i = select i1 %i.iq, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.iq, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !41 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !161

_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.ir = icmp eq ptr %.19.i.i.i, %i.au
  br i1 %i.ir, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit

_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit:      ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.iq, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.is = load i32, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !31
  %.not3697 = icmp sgt i32 %i.is, %i.im
  br i1 %.not3697, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.bdg

_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread: ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i, %bb.d, %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit
  %i.iu = load ptr, ptr %i.w, align 8, !tbaa !30
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr %i.iu, i64 %.015716557 ; 6 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !45 ; 13 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !26
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 64
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = invoke noundef ptr %i.iz(ptr noundef nonnull align 8 dereferenceable(156) %i.iw)
          to label %bb.f unwind label %bb.h       ; 3 uses

bb.f:                                             ; preds = %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread
  %.not1921 = icmp eq ptr %i.ja, null
  br i1 %.not1921, label %.loopexit3793, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !270 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !270 ; 2 uses
  %.not36986347 = icmp eq ptr %i.jb, %i.jd
  br i1 %.not36986347, label %.loopexit3793, label %.lr.ph

bb.h:                                             ; preds = %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit3189

.lr.ph:                                           ; preds = %bb.g, %bb.i
  %.112856349 = phi i1 [ %spec.select, %bb.i ], [ %.012846558, %bb.g ]
  %.sroa.03439.06348 = phi ptr [ %i.jg, %bb.i ], [ %i.jb, %bb.g ] ; 2 uses
  %i.jf = invoke noundef zeroext i1 @_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ9fuseGraphERNS_3PtrINS1_5GraphEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03439.06348)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %spec.select = select i1 %i.jf, i1 true, i1 %.112856349 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.03439.06348, i64 16 ; 2 uses
  %.not3698 = icmp eq ptr %i.jg, %i.jd
  br i1 %.not3698, label %.loopexit3793, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit3189

.loopexit3793:                                    ; preds = %bb.i, %bb.g, %bb.f
  %.31287 = phi i1 [ %.012846558, %bb.f ], [ %.012846558, %bb.g ], [ %spec.select, %bb.i ] ; 2 uses
  %i.ji = load ptr, ptr %i.iv, align 8, !tbaa !45 ; 11 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 32 ; 22 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 56 ; 9 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 40
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !48
  %i.jn = load ptr, ptr %i.jj, align 8, !tbaa !49
  %i.jo = ptrtoint ptr %i.jm to i64
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = sub i64 %i.jo, %i.jp                    ; 3 uses
  %i.jr = ashr exact i64 %i.jq, 2                 ; 8 uses
  %i.js = load ptr, ptr %10, align 8, !tbaa !49   ; 2 uses
  %i.jt = load ptr, ptr %i.bf, align 8, !tbaa !48
  %.not.i.i = icmp eq ptr %i.jt, %i.js
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv3dnn14dnn5_v202606053ArgES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv3dnn14dnn5_v202606053ArgES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %.loopexit3793
  store ptr %i.js, ptr %i.bf, align 8, !tbaa !48
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE5clearEv.exit

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE5clearEv.exit: ; preds = %.loopexit3793, %_ZSt8_DestroyIPN2cv3dnn14dnn5_v202606053ArgES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.ju = load ptr, ptr %13, align 8, !tbaa !49   ; 2 uses
  %i.jv = load ptr, ptr %i.bg, align 8, !tbaa !48
  %.not.i.i2321 = icmp eq ptr %i.jv, %i.ju
  br i1 %.not.i.i2321, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE5clearEv.exit2323, label %_ZSt8_DestroyIPN2cv3dnn14dnn5_v202606053ArgES3_EvT_S5_RSaIT0_E.exit.i.i2322

_ZSt8_DestroyIPN2cv3dnn14dnn5_v202606053ArgES3_EvT_S5_RSaIT0_E.exit.i.i2322: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE5clearEv.exit
  store ptr %i.ju, ptr %i.bg, align 8, !tbaa !48
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE5clearEv.exit2323

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE5clearEv.exit2323: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE5clearEv.exit, %_ZSt8_DestroyIPN2cv3dnn14dnn5_v202606053ArgES3_EvT_S5_RSaIT0_E.exit.i.i2322
  %i.jw = load ptr, ptr %15, align 8, !tbaa !49   ; 2 uses
  %i.jx = load ptr, ptr %i.bh, align 8, !tbaa !48
  %.not.i.i2324 = icmp eq ptr %i.jx, %i.jw
  br i1 %.not.i.i2324, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE5clearEv.exit2326, label %_ZSt8_DestroyIPN2cv3dnn14dnn5_v202606053ArgES3_EvT_S5_RSaIT0_E.exit.i.i2325

_ZSt8_DestroyIPN2cv3dnn14dnn5_v202606053ArgES3_EvT_S5_RSaIT0_E.exit.i.i2325: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE5clearEv.exit2323
  store ptr %i.jw, ptr %i.bh, align 8, !tbaa !48
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE5clearEv.exit2326

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE5clearEv.exit2326: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE5clearEv.exit2323, %_ZSt8_DestroyIPN2cv3dnn14dnn5_v202606053ArgES3_EvT_S5_RSaIT0_E.exit.i.i2325
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  store i32 0, ptr %17, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  store i32 0, ptr %18, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  store i32 0, ptr %19, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 -1, ptr %i.a, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr null, ptr %i.b, align 8, !tbaa !53
  %i.jy = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ20getQdqPatternContextINS1_16NaryEltwiseLayerEEEbPNS1_5LayerEmRKSt6vectorINS1_3ArgESaIS8_EERKS7_IiSaIiEERS7_INS_3PtrIS5_EESaISI_EERS8_SM_SM_RiRPT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.iw, i64 noundef %i.jr, ptr noundef nonnull align 8 dereferenceable(24) %i.jj, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 4 dereferenceable(4) %17, ptr noundef nonnull align 4 dereferenceable(4) %18, ptr noundef nonnull align 4 dereferenceable(4) %19, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE5clearEv.exit2326
  %i.jz = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.ka = icmp ne ptr %i.jz, null
  %or.cond = select i1 %i.jy, i1 %i.ka, i1 false
  br i1 %or.cond, label %bb.l, label %bb.do

bb.l:                                             ; preds = %bb.k
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 40
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !48
  %i.ke = load ptr, ptr %i.kb, align 8, !tbaa !49 ; 2 uses
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = sub i64 %i.kf, %i.kg
  %i.ki = icmp ugt i64 %i.kh, 4
  br i1 %i.ki, label %.lr.ph6360, label %bb.do

bb.m:                                             ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE5clearEv.exit2326
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EED2Ev.exit2436

.lr.ph6360:                                       ; preds = %bb.l, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit
  %i.kk = phi ptr [ %i.pa, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ %i.ke, %bb.l ]
  %.016736359 = phi i64 [ %i.ov, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ 0, %bb.l ] ; 2 uses
  %.sroa.03423.06358 = phi ptr [ %.sroa.03423.4, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ null, %bb.l ] ; 18 uses
  %.sroa.153433.06357 = phi ptr [ %.sroa.153433.1, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ null, %bb.l ] ; 13 uses
  %.sroa.19.06356 = phi ptr [ %.sroa.19.4, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ null, %bb.l ] ; 13 uses
  %.sroa.03414.06355 = phi ptr [ %.sroa.03414.4, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ null, %bb.l ] ; 20 uses
  %.sroa.9.06354 = phi ptr [ %.sroa.9.1, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ null, %bb.l ] ; 13 uses
  %.sroa.133419.06353 = phi ptr [ %.sroa.133419.4, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ null, %bb.l ] ; 15 uses
  %.sroa.03404.06352 = phi ptr [ %.sroa.03404.9, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ null, %bb.l ] ; 18 uses
  %.sroa.153409.06351 = phi ptr [ %.sroa.153409.9, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ null, %bb.l ] ; 15 uses
  %.sroa.10.06350 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ null, %bb.l ] ; 10 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %.016736359
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !51
  %i.kn = sext i32 %i.km to i64                   ; 6 uses
  %i.ko = load ptr, ptr %i.at, align 8, !tbaa !32
  %i.kp = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = ashr exact i64 %i.ks, 2                 ; 2 uses
  %.not.i.i2327 = icmp ugt i64 %i.kt, %i.kn
  br i1 %.not.i.i2327, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph6360
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, i64 noundef %i.kn, i64 noundef %i.kt) #25
          to label %.noexc2328 unwind label %bb.w

.noexc2328:                                       ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %.lr.ph6360
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.kn
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !31 ; 4 uses
  %i.kw = icmp sgt i32 %i.kv, -1
  br i1 %i.kw, label %bb.p, label %.critedge2246.loopexit

bb.p:                                             ; preds = %bb.o
  %i.kx = zext nneg i32 %i.kv to i64              ; 3 uses
  %i.ky = load ptr, ptr %i.bi, align 8, !tbaa !29
  %i.kz = load ptr, ptr %12, align 8, !tbaa !30   ; 2 uses
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = ptrtoint ptr %i.kz to i64
  %i.lc = sub i64 %i.la, %i.lb
  %i.ld = ashr exact i64 %i.lc, 4                 ; 2 uses
  %.not.i.i.i2329 = icmp ugt i64 %i.ld, %i.kx
  br i1 %.not.i.i.i2329, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i, label %.invoke13210

.invoke13210:                                     ; preds = %bb.r, %bb.p
  %i.le = phi i64 [ %i.kx, %bb.p ], [ %i.kn, %bb.r ]
  %i.lf = phi i64 [ %i.ld, %bb.p ], [ %i.lx, %bb.r ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, i64 noundef %i.le, i64 noundef %i.lf) #25
          to label %.cont13211 unwind label %.loopexit.split-lp3785

.cont13211:                                       ; preds = %.invoke13210
  unreachable

_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i: ; preds = %bb.p
  %i.lg = getelementptr inbounds nuw [16 x i8], ptr %i.kz, i64 %i.kx
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !45 ; 2 uses
  %i.li = icmp eq ptr %i.lh, null
  br i1 %i.li, label %.critedge2246.loopexit, label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit

_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit: ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i
  %i.lj = call ptr @__dynamic_cast(ptr nonnull %i.lh, ptr nonnull @_ZTIN2cv3dnn14dnn5_v202606055LayerE, ptr nonnull @_ZTIN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerE, i64 0) #23 ; 5 uses
  %.not1922 = icmp eq ptr %i.lj, null
  br i1 %.not1922, label %.critedge2246.loopexit, label %bb.q

bb.q:                                             ; preds = %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 32 ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 40 ; 2 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !48
  %i.ln = load ptr, ptr %i.lk, align 8, !tbaa !49 ; 2 uses
  %i.lo = ptrtoint ptr %i.lm to i64
  %i.lp = ptrtoint ptr %i.ln to i64
  %i.lq = sub i64 %i.lo, %i.lp
  %i.lr = icmp ult i64 %i.lq, 9
  br i1 %i.lr, label %.critedge2246.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ls = load ptr, ptr %i.bk, align 8, !tbaa !32
  %i.lt = load ptr, ptr %i.bj, align 8, !tbaa !21 ; 2 uses
  %i.lu = ptrtoint ptr %i.ls to i64
  %i.lv = ptrtoint ptr %i.lt to i64
  %i.lw = sub i64 %i.lu, %i.lv
  %i.lx = ashr exact i64 %i.lw, 2                 ; 2 uses
  %.not.i.i2331 = icmp ugt i64 %i.lx, %i.kn
  br i1 %.not.i.i2331, label %bb.s, label %.invoke13210

bb.s:                                             ; preds = %bb.r
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.kn
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !31
  %.not1923 = icmp eq i32 %i.lz, 1
  br i1 %.not1923, label %bb.t, label %.critedge2246.loopexit

bb.t:                                             ; preds = %bb.s
  %i.ma = load ptr, ptr %0, align 8, !tbaa !20
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %.sroa.01.0.copyload.i = load i32, ptr %i.mb, align 4, !tbaa !31
  %i.mc = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.ma, i32 %.sroa.01.0.copyload.i)
          to label %.noexc2334 unwind label %.loopexit3784

.noexc2334:                                       ; preds = %bb.t
  br i1 %i.mc, label %bb.u, label %.critedge2246.loopexit

bb.u:                                             ; preds = %.noexc2334
  %i.md = load ptr, ptr %i.ll, align 8, !tbaa !48
  %i.me = load ptr, ptr %i.lk, align 8, !tbaa !49 ; 2 uses
  %i.mf = ptrtoint ptr %i.md to i64
  %i.mg = ptrtoint ptr %i.me to i64
  %i.mh = sub i64 %i.mf, %i.mg
  %i.mi = icmp ugt i64 %i.mh, 8
  br i1 %i.mi, label %bb.v, label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ14areDqArgsConstEPKNS1_21DequantizeLinearLayerE.exit

bb.v:                                             ; preds = %bb.u
  %i.mj = load ptr, ptr %0, align 8, !tbaa !20
  %i.mk = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.mk, align 4, !tbaa !31
  %i.ml = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.mj, i32 %.sroa.0.0.copyload.i)
          to label %.noexc2335 unwind label %.loopexit3784

.noexc2335:                                       ; preds = %bb.v
  br i1 %i.ml, label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ14areDqArgsConstEPKNS1_21DequantizeLinearLayerE.exit, label %.critedge2246.loopexit

bb.w:                                             ; preds = %bb.n
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

.loopexit3784:                                    ; preds = %bb.t, %bb.v, %_ZNKSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.133419.1.ph = phi ptr [ %.sroa.133419.06353, %bb.t ], [ %.sroa.133419.06353, %bb.v ], [ %.sroa.133419.06353, %_ZNKSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.9.06354, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.133419.4, %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i ]
  %.sroa.03414.1.ph = phi ptr [ %.sroa.03414.06355, %bb.t ], [ %.sroa.03414.06355, %bb.v ], [ %.sroa.03414.06355, %_ZNKSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.03414.06355, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.03414.4, %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i ]
  %.sroa.19.1.ph = phi ptr [ %.sroa.19.06356, %bb.t ], [ %.sroa.19.06356, %bb.v ], [ %.sroa.153433.06357, %_ZNKSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.19.4, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.19.4, %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i ]
  %.sroa.03423.1.ph = phi ptr [ %.sroa.03423.06358, %bb.t ], [ %.sroa.03423.06358, %bb.v ], [ %.sroa.03423.06358, %_ZNKSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.03423.4, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.03423.4, %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit3790 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

.loopexit.split-lp3785:                           ; preds = %.invoke13210, %bb.z, %bb.ae, %bb.aj
  %.sroa.133419.1.ph3786 = phi ptr [ %.sroa.133419.06353, %bb.z ], [ %.sroa.133419.06353, %.invoke13210 ], [ %.sroa.133419.4, %bb.aj ], [ %.sroa.9.06354, %bb.ae ]
  %.sroa.03414.1.ph3787 = phi ptr [ %.sroa.03414.06355, %bb.z ], [ %.sroa.03414.06355, %.invoke13210 ], [ %.sroa.03414.4, %bb.aj ], [ %.sroa.03414.06355, %bb.ae ]
  %.sroa.19.1.ph3788 = phi ptr [ %.sroa.153433.06357, %bb.z ], [ %.sroa.19.06356, %.invoke13210 ], [ %.sroa.19.4, %bb.aj ], [ %.sroa.19.4, %bb.ae ]
  %.sroa.03423.1.ph3789 = phi ptr [ %.sroa.03423.06358, %bb.z ], [ %.sroa.03423.06358, %.invoke13210 ], [ %.sroa.03423.4, %bb.aj ], [ %.sroa.03423.4, %bb.ae ]
  %lpad.loopexit.split-lp3791 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ14areDqArgsConstEPKNS1_21DequantizeLinearLayerE.exit: ; preds = %.noexc2335, %bb.u
  %.not.i2336 = icmp eq ptr %.sroa.153433.06357, %.sroa.19.06356
  br i1 %.not.i2336, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ14areDqArgsConstEPKNS1_21DequantizeLinearLayerE.exit
  store ptr %i.lj, ptr %.sroa.153433.06357, align 8, !tbaa !272
  br label %_ZNSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EE9push_backERKS4_.exit

bb.y:                                             ; preds = %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ14areDqArgsConstEPKNS1_21DequantizeLinearLayerE.exit
  %i.mn = ptrtoint ptr %.sroa.153433.06357 to i64
  %i.mo = ptrtoint ptr %.sroa.03423.06358 to i64
  %i.mp = sub i64 %i.mn, %i.mo                    ; 6 uses
  %i.mq = icmp eq i64 %i.mp, 9223372036854775800
  br i1 %i.mq, label %bb.z, label %_ZNKSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
          to label %.noexc2338 unwind label %.loopexit.split-lp3785

.noexc2338:                                       ; preds = %bb.z
  unreachable

_ZNKSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.y
  %i.mr = ashr exact i64 %i.mp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.mr, i64 1)
  %i.ms = add nsw i64 %.sroa.speculated.i.i.i, %i.mr ; 2 uses
  %i.mt = icmp ult i64 %i.ms, %i.mr
  %i.mu = call i64 @llvm.umin.i64(i64 %i.ms, i64 1152921504606846975)
  %i.mv = select i1 %i.mt, i64 1152921504606846975, i64 %i.mu ; 3 uses
  %.not.i.i.i2337 = icmp ne i64 %i.mv, 0
  call void @llvm.assume(i1 %.not.i.i.i2337)
  %i.mw = shl nuw nsw i64 %i.mv, 3
  %i.mx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mw) #26
          to label %.noexc2339 unwind label %.loopexit3784 ; 4 uses

.noexc2339:                                       ; preds = %_ZNKSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.my = getelementptr inbounds i8, ptr %i.mx, i64 %i.mp ; 2 uses
  store ptr %i.lj, ptr %i.my, align 8, !tbaa !272
  %i.mz = icmp sgt i64 %i.mp, 0
  br i1 %i.mz, label %bb.aa, label %_ZNSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.aa:                                            ; preds = %.noexc2339
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mx, ptr align 8 %.sroa.03423.06358, i64 %i.mp, i1 false)
  br label %_ZNSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.aa, %.noexc2339
  %.not.i17.i.i = icmp eq ptr %.sroa.03423.06358, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.03423.06358, i64 noundef %i.mp) #24
  br label %_ZNSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.ab, %_ZNSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %i.mv
  br label %_ZNSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.x
  %.sroa.19.4 = phi ptr [ %i.na, %_ZNSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.19.06356, %bb.x ] ; 6 uses
  %.pn3699 = phi ptr [ %i.my, %_ZNSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.153433.06357, %bb.x ]
  %.sroa.03423.4 = phi ptr [ %i.mx, %_ZNSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.03423.06358, %bb.x ] ; 6 uses
  %.sroa.153433.1 = getelementptr inbounds nuw i8, ptr %.pn3699, i64 8 ; 2 uses
  %.not.i2340 = icmp eq ptr %.sroa.9.06354, %.sroa.133419.06353
  br i1 %.not.i2340, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EE9push_backERKS4_.exit
  store i32 %i.kv, ptr %.sroa.9.06354, align 4, !tbaa !31
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.ad:                                            ; preds = %_ZNSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EE9push_backERKS4_.exit
  %i.nb = ptrtoint ptr %.sroa.9.06354 to i64
  %i.nc = ptrtoint ptr %.sroa.03414.06355 to i64
  %i.nd = sub i64 %i.nb, %i.nc                    ; 6 uses
  %i.ne = icmp eq i64 %i.nd, 9223372036854775804
  br i1 %i.ne, label %bb.ae, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
          to label %.noexc2344 unwind label %.loopexit.split-lp3785

.noexc2344:                                       ; preds = %bb.ae
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ad
  %i.nf = ashr exact i64 %i.nd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i2341 = call i64 @llvm.umax.i64(i64 %i.nf, i64 1)
  %i.ng = add nsw i64 %.sroa.speculated.i.i.i2341, %i.nf ; 2 uses
  %i.nh = icmp ult i64 %i.ng, %i.nf
  %i.ni = call i64 @llvm.umin.i64(i64 %i.ng, i64 2305843009213693951)
  %i.nj = select i1 %i.nh, i64 2305843009213693951, i64 %i.ni ; 3 uses
  %.not.i.i.i2342 = icmp ne i64 %i.nj, 0
  call void @llvm.assume(i1 %.not.i.i.i2342)
  %i.nk = shl nuw nsw i64 %i.nj, 2
  %i.nl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nk) #26
          to label %.noexc2345 unwind label %.loopexit3784 ; 4 uses

.noexc2345:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.nm = getelementptr inbounds i8, ptr %i.nl, i64 %i.nd ; 2 uses
  store i32 %i.kv, ptr %i.nm, align 4, !tbaa !31
  %i.nn = icmp sgt i64 %i.nd, 0
  br i1 %i.nn, label %bb.af, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.af:                                            ; preds = %.noexc2345
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nl, ptr align 4 %.sroa.03414.06355, i64 %i.nd, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.af, %.noexc2345
  %.not.i17.i.i2343 = icmp eq ptr %.sroa.03414.06355, null
  br i1 %.not.i17.i.i2343, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.03414.06355, i64 noundef %i.nd) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ag, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %i.nj
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.ac
  %.sroa.133419.4 = phi ptr [ %i.no, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.133419.06353, %bb.ac ] ; 4 uses
  %.pn3700 = phi ptr [ %i.nm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.9.06354, %bb.ac ]
  %.sroa.03414.4 = phi ptr [ %i.nl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.03414.06355, %bb.ac ] ; 4 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.pn3700, i64 4 ; 2 uses
  %i.np = load ptr, ptr %i.lk, align 8, !tbaa !49 ; 2 uses
  %.not.i2346 = icmp eq ptr %.sroa.10.06350, %.sroa.153409.06351
  br i1 %.not.i2346, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !31
  store i32 %i.nq, ptr %.sroa.10.06350, align 4, !tbaa !31
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.nr = ptrtoint ptr %.sroa.153409.06351 to i64 ; 2 uses
  %i.ns = ptrtoint ptr %.sroa.03404.06352 to i64  ; 3 uses
  %i.nt = sub i64 %i.nr, %i.ns                    ; 4 uses
  %i.nu = icmp eq i64 %i.nt, 9223372036854775804
  br i1 %i.nu, label %bb.aj, label %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
          to label %.noexc2349 unwind label %.loopexit.split-lp3785

.noexc2349:                                       ; preds = %bb.aj
  unreachable

_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ai
  %i.nv = ashr exact i64 %i.nt, 2                 ; 3 uses
  %.sroa.speculated.i.i.i2347 = call i64 @llvm.umax.i64(i64 %i.nv, i64 1)
  %i.nw = add nsw i64 %.sroa.speculated.i.i.i2347, %i.nv ; 2 uses
  %i.nx = icmp ult i64 %i.nw, %i.nv
  %i.ny = call i64 @llvm.umin.i64(i64 %i.nw, i64 2305843009213693951)
  %i.nz = select i1 %i.nx, i64 2305843009213693951, i64 %i.ny ; 3 uses
  %.not.i.i.i2348 = icmp ne i64 %i.nz, 0
  call void @llvm.assume(i1 %.not.i.i.i2348)
  %i.oa = shl nuw nsw i64 %i.nz, 2
  %i.ob = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oa) #26
          to label %.noexc2350 unwind label %.loopexit3784 ; 8 uses

.noexc2350:                                       ; preds = %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.nt
  %i.od = load i32, ptr %i.np, align 4, !tbaa !31
  store i32 %i.od, ptr %i.oc, align 4, !tbaa !31
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.03404.06352, %.sroa.153409.06351
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc2350
  %i.oe = ptrtoaddr ptr %i.ob to i64
  %i.of = add i64 %i.nr, -4
  %i.og = sub i64 %i.of, %i.ns                    ; 2 uses
  %i.oh = lshr i64 %i.og, 2
  %i.oi = add nuw nsw i64 %i.oh, 1                ; 2 uses
  %min.iters.check13182 = icmp ult i64 %i.og, 28
  %i.oj = sub i64 %i.ns, %i.oe
  %diff.check13180 = icmp ugt i64 %i.oj, -32
  %or.cond13212.a = or i1 %min.iters.check13182, %diff.check13180
  br i1 %or.cond13212.a, label %.lr.ph.i.i.i.i.i.preheader13261, label %vector.ph13183

vector.ph13183:                                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec13184 = and i64 %i.oi, 9223372036854775800 ; 3 uses
  %i.ok = shl i64 %n.vec13184, 2                  ; 2 uses
  %i.ol = getelementptr i8, ptr %i.ob, i64 %i.ok  ; 2 uses
  %i.om = getelementptr i8, ptr %.sroa.03404.06352, i64 %i.ok
  br label %vector.body13185

vector.body13185:                                 ; preds = %vector.body13185, %vector.ph13183
  %index13186 = phi i64 [ 0, %vector.ph13183 ], [ %index.next13191, %vector.body13185 ] ; 2 uses
  %i.on = shl i64 %index13186, 2                  ; 2 uses
  %next.gep13187.a = getelementptr i8, ptr %i.ob, i64 %i.on ; 2 uses
  %next.gep13188 = getelementptr i8, ptr %.sroa.03404.06352, i64 %i.on ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.oo = getelementptr i8, ptr %next.gep13188, i64 16
  %wide.load13189.a = load <4 x i32>, ptr %next.gep13188, align 4, !tbaa !31, !alias.scope !274, !noalias !273
  %wide.load13190 = load <4 x i32>, ptr %i.oo, align 4, !tbaa !31, !alias.scope !274, !noalias !273
  %i.op = getelementptr i8, ptr %next.gep13187.a, i64 16
  store <4 x i32> %wide.load13189.a, ptr %next.gep13187.a, align 4, !tbaa !31, !alias.scope !273, !noalias !274
  store <4 x i32> %wide.load13190, ptr %i.op, align 4, !tbaa !31, !alias.scope !273, !noalias !274
  %index.next13191 = add nuw i64 %index13186, 8   ; 2 uses
  %i.oq = icmp eq i64 %index.next13191, %n.vec13184
  br i1 %i.oq, label %middle.block13192, label %vector.body13185, !llvm.loop !165

middle.block13192:                                ; preds = %vector.body13185
  %cmp.n13193 = icmp eq i64 %i.oi, %n.vec13184
  br i1 %cmp.n13193, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader13261

.lr.ph.i.i.i.i.i.preheader13261:                  ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block13192
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ob, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ol, %middle.block13192 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %.sroa.03404.06352, %.lr.ph.i.i.i.i.i.preheader ], [ %i.om, %middle.block13192 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader13261, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ot, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13261 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.os, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13261 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.or = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !31, !alias.scope !274, !noalias !273
  store i32 %i.or, ptr %.012.i.i.i.i.i, align 4, !tbaa !31, !alias.scope !273, !noalias !274
  %i.os = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.os, %.sroa.153409.06351
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !166

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block13192, %.noexc2350
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ob, %.noexc2350 ], [ %i.ol, %middle.block13192 ], [ %i.ot, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.03404.06352, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.03404.06352, i64 noundef %i.nt) #24
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.ak, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.nz
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.ah
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.10.06350, %bb.ah ]
  %.sroa.153409.9 = phi ptr [ %i.ou, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.153409.06351, %bb.ah ] ; 2 uses
  %.sroa.03404.9 = phi ptr [ %i.ob, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.03404.06352, %bb.ah ] ; 2 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 4 ; 2 uses
  %i.ov = add nuw i64 %.016736359, 1              ; 2 uses
  %i.ow = load ptr, ptr %i.b, align 8, !tbaa !53  ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 32
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 40
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !48
  %i.pa = load ptr, ptr %i.ox, align 8, !tbaa !49 ; 2 uses
  %i.pb = ptrtoint ptr %i.oz to i64
  %i.pc = ptrtoint ptr %i.pa to i64
  %i.pd = sub i64 %i.pb, %i.pc
  %i.pe = ashr exact i64 %i.pd, 2
  %i.pf = icmp ult i64 %i.ov, %i.pe
  br i1 %i.pf, label %.lr.ph6360, label %.critedge2246.loopexit, !llvm.loop !167

.critedge2246.loopexit:                           ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit, %bb.q, %bb.s, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i, %bb.o, %.noexc2335, %.noexc2334
  %.sroa.10.0.lcssa.ph = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.10.06350, %bb.q ], [ %.sroa.10.06350, %bb.s ], [ %.sroa.10.06350, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit ], [ %.sroa.10.06350, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i ], [ %.sroa.10.06350, %bb.o ], [ %.sroa.10.06350, %.noexc2335 ], [ %.sroa.10.06350, %.noexc2334 ]
  %.sroa.153409.0.lcssa.ph = phi ptr [ %.sroa.153409.9, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.153409.06351, %bb.q ], [ %.sroa.153409.06351, %bb.s ], [ %.sroa.153409.06351, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit ], [ %.sroa.153409.06351, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i ], [ %.sroa.153409.06351, %bb.o ], [ %.sroa.153409.06351, %.noexc2335 ], [ %.sroa.153409.06351, %.noexc2334 ] ; 14 uses
  %.sroa.03404.0.lcssa.ph = phi ptr [ %.sroa.03404.9, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.03404.06352, %bb.q ], [ %.sroa.03404.06352, %bb.s ], [ %.sroa.03404.06352, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit ], [ %.sroa.03404.06352, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i ], [ %.sroa.03404.06352, %bb.o ], [ %.sroa.03404.06352, %.noexc2335 ], [ %.sroa.03404.06352, %.noexc2334 ] ; 14 uses
  %.sroa.133419.0.lcssa.ph = phi ptr [ %.sroa.133419.4, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.133419.06353, %bb.q ], [ %.sroa.133419.06353, %bb.s ], [ %.sroa.133419.06353, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit ], [ %.sroa.133419.06353, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i ], [ %.sroa.133419.06353, %bb.o ], [ %.sroa.133419.06353, %.noexc2335 ], [ %.sroa.133419.06353, %.noexc2334 ] ; 3 uses
  %.sroa.9.0.lcssa.ph = phi ptr [ %.sroa.9.1, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.9.06354, %bb.q ], [ %.sroa.9.06354, %bb.s ], [ %.sroa.9.06354, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit ], [ %.sroa.9.06354, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i ], [ %.sroa.9.06354, %bb.o ], [ %.sroa.9.06354, %.noexc2335 ], [ %.sroa.9.06354, %.noexc2334 ] ; 2 uses
  %.sroa.03414.0.lcssa.ph = phi ptr [ %.sroa.03414.4, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.03414.06355, %bb.q ], [ %.sroa.03414.06355, %bb.s ], [ %.sroa.03414.06355, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit ], [ %.sroa.03414.06355, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i ], [ %.sroa.03414.06355, %bb.o ], [ %.sroa.03414.06355, %.noexc2335 ], [ %.sroa.03414.06355, %.noexc2334 ] ; 7 uses
  %.sroa.19.0.lcssa.ph = phi ptr [ %.sroa.19.4, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.19.06356, %bb.q ], [ %.sroa.19.06356, %bb.s ], [ %.sroa.19.06356, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit ], [ %.sroa.19.06356, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i ], [ %.sroa.19.06356, %bb.o ], [ %.sroa.19.06356, %.noexc2335 ], [ %.sroa.19.06356, %.noexc2334 ] ; 3 uses
  %.sroa.153433.0.lcssa.ph = phi ptr [ %.sroa.153433.1, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.153433.06357, %bb.q ], [ %.sroa.153433.06357, %bb.s ], [ %.sroa.153433.06357, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit ], [ %.sroa.153433.06357, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i ], [ %.sroa.153433.06357, %bb.o ], [ %.sroa.153433.06357, %.noexc2335 ], [ %.sroa.153433.06357, %.noexc2334 ]
  %.sroa.03423.0.lcssa.ph = phi ptr [ %.sroa.03423.4, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.03423.06358, %bb.q ], [ %.sroa.03423.06358, %bb.s ], [ %.sroa.03423.06358, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit ], [ %.sroa.03423.06358, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i ], [ %.sroa.03423.06358, %bb.o ], [ %.sroa.03423.06358, %.noexc2335 ], [ %.sroa.03423.06358, %.noexc2334 ] ; 11 uses
  %139 = load ptr, ptr %0, align 8, !tbaa !20
  %.sroa.01120.0.copyload = load i32, ptr %19, align 4, !tbaa !31
  %140 = invoke noundef nonnull align 8 dereferenceable(92) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl7argDataENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %139, i32 %.sroa.01120.0.copyload)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %.critedge2246.loopexit
  %i.pg = getelementptr inbounds nuw i8, ptr %140, i64 88
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !277
  %i.pi = icmp ugt i32 %i.ph, 1
  %141 = ptrtoint ptr %.sroa.153433.0.lcssa.ph to i64
  %i.pj = ptrtoint ptr %.sroa.03423.0.lcssa.ph to i64 ; 2 uses
  %i.pk = sub i64 %141, %i.pj
  %i.pl = ashr exact i64 %i.pk, 3
  %i.pm = load ptr, ptr %i.b, align 8, !tbaa !53  ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 32
  %i.po = getelementptr inbounds nuw i8, ptr %i.pm, i64 40
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !48
  %i.pq = load ptr, ptr %i.pn, align 8, !tbaa !49
  %i.pr = ptrtoint ptr %i.pp to i64
  %i.ps = ptrtoint ptr %i.pq to i64
  %i.pt = sub i64 %i.pr, %i.ps
  %i.pu = ashr exact i64 %i.pt, 2
  %i.pv = icmp ne i64 %i.pl, %i.pu
  %or.cond52.not = select i1 %i.pv, i1 true, i1 %i.pi ; 2 uses
  br i1 %or.cond52.not, label %bb.dg, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  %i.pw = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26
          to label %bb.an unwind label %bb.aq     ; 4 uses

bb.an:                                            ; preds = %bb.am
  store ptr %i.pw, ptr %20, align 8, !tbaa !63
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8 ; 2 uses
  store ptr %i.px, ptr %i.bl, align 8, !tbaa !64
  store float 0.000000e+00, ptr %i.pw, align 4, !tbaa !66
  %i.py = getelementptr inbounds nuw i8, ptr %i.pw, i64 4
  store i32 0, ptr %i.py, align 4
  store ptr %i.px, ptr %i.bm, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  %i.pz = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26
          to label %bb.ao unwind label %bb.ar     ; 4 uses

bb.ao:                                            ; preds = %bb.an
  store ptr %i.pz, ptr %21, align 8, !tbaa !21
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 8 ; 2 uses
  store ptr %i.qa, ptr %i.bn, align 8, !tbaa !22
  store i32 0, ptr %i.pz, align 4, !tbaa !31
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pz, i64 4
  store i32 0, ptr %i.qb, align 4
  store ptr %i.qa, ptr %i.bo, align 8, !tbaa !32
  %i.qc = load ptr, ptr %0, align 8, !tbaa !20
  %i.qd = load ptr, ptr %.sroa.03423.0.lcssa.ph, align 8, !tbaa !272
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 32
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !49
  %.sroa.01104.0.copyload = load i32, ptr %i.qf, align 4, !tbaa !31
  %i.qg = invoke noundef nonnull align 8 dereferenceable(92) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl7argDataENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.qc, i32 %.sroa.01104.0.copyload)
          to label %bb.as unwind label %bb.bg

bb.ap:                                            ; preds = %.critedge2246.loopexit
  %i.qh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.aq:                                            ; preds = %bb.am
  %i.qi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2426

bb.ar:                                            ; preds = %bb.an
  %i.qj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2424

bb.as:                                            ; preds = %bb.ao
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qg, i64 88
  %i.ql = load i32, ptr %i.qk, align 8, !tbaa !277 ; 2 uses
  %i.qm = load ptr, ptr %.sroa.03423.0.lcssa.ph, align 8, !tbaa !272 ; 3 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 32
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 40
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !48
  %i.qq = load ptr, ptr %i.qn, align 8, !tbaa !49 ; 2 uses
  %i.qr = ptrtoint ptr %i.qp to i64
  %i.qs = ptrtoint ptr %i.qq to i64
  %i.qt = sub i64 %i.qr, %i.qs
  %i.qu = icmp ugt i64 %i.qt, 8
  br i1 %i.qu, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.qv = load ptr, ptr %0, align 8, !tbaa !20
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %.sroa.01102.0.copyload = load i32, ptr %i.qw, align 4, !tbaa !31
  %i.qx = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.qv, i32 %.sroa.01102.0.copyload)
          to label %bb.au unwind label %bb.bh

bb.au:                                            ; preds = %bb.at
  %.pre8678 = load ptr, ptr %.sroa.03423.0.lcssa.ph, align 8, !tbaa !272 ; 2 uses
  br i1 %i.qx, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.qy = load ptr, ptr %0, align 8, !tbaa !20
  %i.qz = getelementptr inbounds nuw i8, ptr %.pre8678, i64 32
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !49
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %.sroa.01101.0.copyload = load i32, ptr %i.rb, align 4, !tbaa !31
  %i.rc = invoke noundef nonnull align 8 dereferenceable(92) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl7argDataENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.qy, i32 %.sroa.01101.0.copyload)
          to label %bb.aw unwind label %bb.bh

bb.aw:                                            ; preds = %bb.av
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 88
  %i.re = load i32, ptr %i.rd, align 8, !tbaa !277
  %.pre = load ptr, ptr %.sroa.03423.0.lcssa.ph, align 8, !tbaa !272
  br label %bb.ax

bb.ax:                                            ; preds = %bb.as, %bb.au, %bb.aw
  %i.rf = phi ptr [ %.pre, %bb.aw ], [ %.pre8678, %bb.au ], [ %i.qm, %bb.as ]
  %i.rg = phi i32 [ %i.re, %bb.aw ], [ -1, %bb.au ], [ -1, %bb.as ]
  %i.rh = icmp slt i32 %i.ql, 0
  %i.ri = select i1 %i.rh, i32 %i.rg, i32 %i.ql
  %i.rj = icmp ult i32 %i.ri, 2
  %i.rk = load ptr, ptr %0, align 8, !tbaa !20
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rf, i64 32
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !49
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 4
  %.sroa.01098.0.copyload = load i32, ptr %i.rn, align 4, !tbaa !31
  %i.ro = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.rk, i32 %.sroa.01098.0.copyload)
          to label %_ZN2cv3Mat2atIfEERT_i.exit unwind label %bb.bi

_ZN2cv3Mat2atIfEERT_i.exit:                       ; preds = %bb.ax
  %.0.i2354.in = getelementptr inbounds nuw i8, ptr %i.ro, i64 24
  %.0.i2354 = load ptr, ptr %.0.i2354.in, align 8, !tbaa !72
  %i.rp = load float, ptr %.0.i2354, align 4, !tbaa !66
  %i.rq = load ptr, ptr %20, align 8, !tbaa !63
  store float %i.rp, ptr %i.rq, align 4, !tbaa !66
  %i.rr = load ptr, ptr %0, align 8, !tbaa !20
  %i.rs = load ptr, ptr %.sroa.03423.0.lcssa.ph, align 8, !tbaa !272
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 32
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !49
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %.sroa.01094.0.copyload = load i32, ptr %i.rv, align 4, !tbaa !31
  %i.rw = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.rr, i32 %.sroa.01094.0.copyload)
          to label %bb.ay unwind label %bb.bj     ; 2 uses

bb.ay:                                            ; preds = %_ZN2cv3Mat2atIfEERT_i.exit
  %i.rx = load i32, ptr %i.rw, align 8, !tbaa !73
  %i.ry = and i32 %i.rx, 31
  %i.rz = icmp eq i32 %i.ry, 0
  %.0.i2356.in = getelementptr inbounds nuw i8, ptr %i.rw, i64 24
  %.0.i2356 = load ptr, ptr %.0.i2356.in, align 8, !tbaa !72
  %i.sa = load i8, ptr %.0.i2356, align 1, !tbaa !74 ; 2 uses
  %i.sb = zext i8 %i.sa to i32
  %i.sc = sext i8 %i.sa to i32
  %i.sd = select i1 %i.rz, i32 %i.sb, i32 %i.sc
  %i.se = load ptr, ptr %21, align 8, !tbaa !21
  store i32 %i.sd, ptr %i.se, align 4, !tbaa !31
  %i.sf = load ptr, ptr %0, align 8, !tbaa !20
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.03423.0.lcssa.ph, i64 8 ; 5 uses
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !272
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 32
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !49
  %.sroa.01104.0.copyload.1 = load i32, ptr %i.sj, align 4, !tbaa !31
  %i.sk = invoke noundef nonnull align 8 dereferenceable(92) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl7argDataENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.sf, i32 %.sroa.01104.0.copyload.1)
          to label %bb.az unwind label %bb.bg

bb.az:                                            ; preds = %bb.ay
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 88
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !277 ; 2 uses
  %i.sn = load ptr, ptr %i.sg, align 8, !tbaa !272 ; 3 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 32
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 40
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !48
  %i.sr = load ptr, ptr %i.so, align 8, !tbaa !49 ; 2 uses
  %i.ss = ptrtoint ptr %i.sq to i64
  %i.st = ptrtoint ptr %i.sr to i64
  %i.su = sub i64 %i.ss, %i.st
  %i.sv = icmp ugt i64 %i.su, 8
  br i1 %i.sv, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  %i.sw = load ptr, ptr %0, align 8, !tbaa !20
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %.sroa.01102.0.copyload.1 = load i32, ptr %i.sx, align 4, !tbaa !31
  %i.sy = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.sw, i32 %.sroa.01102.0.copyload.1)
          to label %bb.bb unwind label %bb.bh

bb.bb:                                            ; preds = %bb.ba
  %.pre8680 = load ptr, ptr %i.sg, align 8, !tbaa !272 ; 2 uses
  br i1 %i.sy, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.sz = load ptr, ptr %0, align 8, !tbaa !20
  %i.ta = getelementptr inbounds nuw i8, ptr %.pre8680, i64 32
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !49
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %.sroa.01101.0.copyload.1 = load i32, ptr %i.tc, align 4, !tbaa !31
  %i.td = invoke noundef nonnull align 8 dereferenceable(92) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl7argDataENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.sz, i32 %.sroa.01101.0.copyload.1)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 88
  %i.tf = load i32, ptr %i.te, align 8, !tbaa !277
  %.pre8679 = load ptr, ptr %i.sg, align 8, !tbaa !272
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bb, %bb.az
  %i.tg = phi ptr [ %.pre8679, %bb.bd ], [ %.pre8680, %bb.bb ], [ %i.sn, %bb.az ]
  %i.th = phi i32 [ %i.tf, %bb.bd ], [ -1, %bb.bb ], [ -1, %bb.az ]
  %i.ti = icmp slt i32 %i.sm, 0
  %i.tj = select i1 %i.ti, i32 %i.th, i32 %i.sm
  %i.tk = icmp ult i32 %i.tj, 2
  %i.tl = select i1 %i.rj, i1 %i.tk, i1 false
  %i.tm = load ptr, ptr %0, align 8, !tbaa !20
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tg, i64 32
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !49
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 4
  %.sroa.01098.0.copyload.1 = load i32, ptr %i.tp, align 4, !tbaa !31
  %i.tq = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.tm, i32 %.sroa.01098.0.copyload.1)
          to label %_ZN2cv3Mat2atIfEERT_i.exit.1 unwind label %bb.bi

_ZN2cv3Mat2atIfEERT_i.exit.1:                     ; preds = %bb.be
  %.0.i2354.in.1 = getelementptr inbounds nuw i8, ptr %i.tq, i64 24
  %.0.i2354.1 = load ptr, ptr %.0.i2354.in.1, align 8, !tbaa !72
  %i.tr = load float, ptr %.0.i2354.1, align 4, !tbaa !66
  %i.ts = load ptr, ptr %20, align 8, !tbaa !63
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 4
  store float %i.tr, ptr %i.tt, align 4, !tbaa !66
  %i.tu = load ptr, ptr %0, align 8, !tbaa !20
  %i.tv = load ptr, ptr %i.sg, align 8, !tbaa !272
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 32
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !49
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %.sroa.01094.0.copyload.1 = load i32, ptr %i.ty, align 4, !tbaa !31
  %i.tz = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.tu, i32 %.sroa.01094.0.copyload.1)
          to label %bb.bf unwind label %bb.bj     ; 2 uses

bb.bf:                                            ; preds = %_ZN2cv3Mat2atIfEERT_i.exit.1
  %i.ua = load i32, ptr %i.tz, align 8, !tbaa !73
  %i.ub = and i32 %i.ua, 31
  %i.uc = icmp eq i32 %i.ub, 0
  %.0.i2356.in.1 = getelementptr inbounds nuw i8, ptr %i.tz, i64 24
  %.0.i2356.1 = load ptr, ptr %.0.i2356.in.1, align 8, !tbaa !72
  %i.ud = load i8, ptr %.0.i2356.1, align 1, !tbaa !74 ; 2 uses
  %i.ue = zext i8 %i.ud to i32
  %i.uf = sext i8 %i.ud to i32
  %i.ug = select i1 %i.uc, i32 %i.ue, i32 %i.uf
  %i.uh = load ptr, ptr %21, align 8, !tbaa !21   ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  store i32 %i.ug, ptr %i.ui, align 4, !tbaa !31
  br i1 %i.tl, label %bb.bk, label %.thread9328

bb.bg:                                            ; preds = %bb.ay, %bb.ao
  %i.uj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.bh:                                            ; preds = %bb.bc, %bb.ba, %bb.av, %bb.at
  %i.uk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.bi:                                            ; preds = %bb.be, %bb.ax
  %i.ul = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.bj:                                            ; preds = %_ZN2cv3Mat2atIfEERT_i.exit.1, %_ZN2cv3Mat2atIfEERT_i.exit
  %i.um = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.bk:                                            ; preds = %bb.bf
  %i.un = load ptr, ptr %0, align 8, !tbaa !20
  %.sroa.01092.0.copyload = load i32, ptr %18, align 4, !tbaa !31
  %i.uo = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.un, i32 %.sroa.01092.0.copyload)
          to label %_ZN2cv3Mat2atIfEERT_i.exit2361 unwind label %bb.cd

_ZN2cv3Mat2atIfEERT_i.exit2361:                   ; preds = %bb.bk
  %.0.i2360.in = getelementptr inbounds nuw i8, ptr %i.uo, i64 24
  %.0.i2360 = load ptr, ptr %.0.i2360.in, align 8, !tbaa !72
  %i.up = load float, ptr %.0.i2360, align 4, !tbaa !66
  %i.uq = load ptr, ptr %0, align 8, !tbaa !20
  %.sroa.01088.0.copyload = load i32, ptr %19, align 4, !tbaa !31
  %i.ur = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.uq, i32 %.sroa.01088.0.copyload)
          to label %bb.bl unwind label %bb.ce     ; 2 uses

bb.bl:                                            ; preds = %_ZN2cv3Mat2atIfEERT_i.exit2361
  %i.us = load i32, ptr %i.ur, align 8, !tbaa !73
  %i.ut = and i32 %i.us, 31
  %i.uu = icmp eq i32 %i.ut, 0
  %.0.i2363.in = getelementptr inbounds nuw i8, ptr %i.ur, i64 24
  %.0.i2363 = load ptr, ptr %.0.i2363.in, align 8, !tbaa !72
  %i.uv = load i8, ptr %.0.i2363, align 1, !tbaa !74 ; 2 uses
  %i.uw = zext i8 %i.uv to i32
  %i.ux = sext i8 %i.uv to i32
  %i.uy = select i1 %i.uu, i32 %i.uw, i32 %i.ux
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  store ptr %i.bp, ptr %22, align 8, !tbaa !75
  store i64 0, ptr %i.bq, align 8, !tbaa !76
  store i8 0, ptr %i.bp, align 8, !tbaa !74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.br, i8 0, i64 48, i1 false)
  store float 1.000000e+00, ptr %i.bs, align 8, !tbaa !279
  store i32 0, ptr %i.bt, align 4, !tbaa !280
  store i8 0, ptr %i.bu, align 8, !tbaa !281
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bw, ptr noundef nonnull align 1 dereferenceable(3) @.str.1, i64 3, i1 false)
  store i64 3, ptr %i.bx, align 8, !tbaa !76
  store i8 0, ptr %i.by, align 1, !tbaa !74
  %i.uz = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %i.va)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.cf

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.bl
  %i.vb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %20)
          to label %bb.bm unwind label %bb.cf     ; 0 uses

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.vc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %21)
          to label %bb.bn unwind label %bb.cf     ; 0 uses

bb.bn:                                            ; preds = %bb.bm
  store float %i.up, ptr %i.bs, align 8, !tbaa !279
  store i32 %i.uy, ptr %i.bt, align 4, !tbaa !280
  %i.vd = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 156
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !284
  %i.vg = icmp eq i32 %i.vf, 15
  %.str..str.1 = select i1 %i.vg, ptr @.str, ptr @.str.1
  %i.vh = load i64, ptr %i.bx, align 8, !tbaa !76
  %i.vi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 noundef 0, i64 noundef %i.vh, ptr noundef nonnull %.str..str.1, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.cf ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  invoke void @_ZN2cv3dnn14dnn5_v2026060517Eltwise2Int8Layer6createERKNS1_18Eltwise2Int8ParamsE(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.125") align 8 %23, ptr noundef nonnull align 8 dereferenceable(128) %22)
          to label %bb.bo unwind label %bb.cg

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.vj = load ptr, ptr %0, align 8, !tbaa !20
  %i.vk = load ptr, ptr %23, align 8, !tbaa !93   ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 80
  store ptr %i.vj, ptr %i.vl, align 8, !tbaa !285
  %i.vm = load i32, ptr %i.a, align 4, !tbaa !31  ; 3 uses
  %i.vn = sext i32 %i.vm to i64
  %i.vo = load ptr, ptr %12, align 8, !tbaa !30
  %i.vp = getelementptr inbounds nuw [16 x i8], ptr %i.vo, i64 %i.vn ; 2 uses
  store ptr %i.vk, ptr %i.vp, align 8, !tbaa !45
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 8 ; 3 uses
  %i.vr = load ptr, ptr %i.ca, align 8, !tbaa !94 ; 4 uses
  %i.vs = load ptr, ptr %i.vq, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i.i2370 = icmp eq ptr %i.vr, %i.vs
  br i1 %.not.i.i.i.i2370, label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSINS2_17Eltwise2Int8LayerEEERS4_RKNS0_IT_EE.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.not7.i.i.i.i = icmp eq ptr %i.vr, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vr, i64 8 ; 3 uses
  %i.vu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i.i.i2371 = icmp eq i8 %i.vu, 0
  br i1 %.not.i.i.i.i.i2371, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.vv = load i32, ptr %i.vt, align 4, !tbaa !31
  %i.vw = add nsw i32 %i.vv, 1
  store i32 %i.vw, ptr %i.vt, align 4, !tbaa !31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.vx = atomicrmw volatile add ptr %i.vt, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.vq, align 8, !tbaa !94
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.bs, %bb.br, %bb.bp
  %i.vy = phi ptr [ %i.vs, %bb.bp ], [ %i.vs, %bb.br ], [ %.pr.pre.i.i.i.i, %bb.bs ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.vy, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 8 ; 4 uses
  %i.wa = load atomic i64, ptr %i.vz acquire, align 8 ; 2 uses
  %i.wb = icmp eq i64 %i.wa, 4294967297
  %i.wc = trunc i64 %i.wa to i32                  ; 2 uses
  br i1 %i.wb, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i32 0, ptr %i.vz, align 8, !tbaa !96
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vy, i64 12
  store i32 0, ptr %i.wd, align 4, !tbaa !97
  %i.we = load ptr, ptr %i.vy, align 8, !tbaa !26
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 16
  %i.wg = load ptr, ptr %i.wf, align 8
  call void %i.wg(ptr noundef nonnull align 8 dereferenceable(16) %i.vy) #23, !inline_history !168
  %i.wh = load ptr, ptr %i.vy, align 8, !tbaa !26
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 24
  %i.wj = load ptr, ptr %i.wi, align 8
  call void %i.wj(ptr noundef nonnull align 8 dereferenceable(16) %i.vy) #23, !inline_history !168
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.bv:                                            ; preds = %bb.bt
  %i.wk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i9.i.i.i.i = icmp eq i8 %i.wk, 0
  br i1 %.not.i9.i.i.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.wl = add nsw i32 %i.wc, -1
  store i32 %i.wl, ptr %i.vz, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bx:                                            ; preds = %bb.bv
  %i.wm = atomicrmw volatile add ptr %i.vz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bx, %bb.bw
  %.0.i.i.i.i.i.i = phi i32 [ %i.wc, %bb.bw ], [ %i.wm, %bb.bx ]
  %i.wn = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.wn, label %bb.by, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !98

bb.by:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vy) #23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.by, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bu, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.vr, ptr %i.vq, align 8, !tbaa !94
  br label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSINS2_17Eltwise2Int8LayerEEERS4_RKNS0_IT_EE.exit

_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSINS2_17Eltwise2Int8LayerEEERS4_RKNS0_IT_EE.exit: ; preds = %bb.bo, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i
  %i.wo = load ptr, ptr %13, align 8, !tbaa !49   ; 3 uses
  %i.wp = load ptr, ptr %i.cb, align 8, !tbaa !99 ; 3 uses
  store ptr %.sroa.03404.0.lcssa.ph, ptr %13, align 8, !tbaa !49
  store ptr %.sroa.10.0.lcssa.ph, ptr %i.bg, align 8, !tbaa !48
  store ptr %.sroa.153409.0.lcssa.ph, ptr %i.cb, align 8, !tbaa !99
  %i.wq = load ptr, ptr %i.bf, align 8, !tbaa !48 ; 6 uses
  %i.wr = load ptr, ptr %i.cc, align 8, !tbaa !99 ; 2 uses
  %.not.i2372 = icmp eq ptr %i.wq, %i.wr
  br i1 %.not.i2372, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSINS2_17Eltwise2Int8LayerEEERS4_RKNS0_IT_EE.exit
  %i.ws = load i32, ptr %17, align 4, !tbaa !31
  store i32 %i.ws, ptr %i.wq, align 4, !tbaa !31
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wq, i64 4 ; 2 uses
  store ptr %i.wt, ptr %i.bf, align 8, !tbaa !48
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2387

bb.ca:                                            ; preds = %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSINS2_17Eltwise2Int8LayerEEERS4_RKNS0_IT_EE.exit
  %i.wu = load ptr, ptr %10, align 8, !tbaa !49   ; 7 uses
  %i.wv = ptrtoint ptr %i.wq to i64               ; 2 uses
  %i.ww = ptrtoint ptr %i.wu to i64               ; 4 uses
  %i.wx = sub i64 %i.wv, %i.ww                    ; 3 uses
  %i.wy = icmp eq i64 %i.wx, 9223372036854775804
  br i1 %i.wy, label %bb.cb, label %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i2373

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
          to label %.noexc2385 unwind label %.loopexit.split-lp3795

.noexc2385:                                       ; preds = %bb.cb
  unreachable

_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i2373: ; preds = %bb.ca
  %i.wz = ashr exact i64 %i.wx, 2                 ; 3 uses
  %.sroa.speculated.i.i.i2374 = call i64 @llvm.umax.i64(i64 %i.wz, i64 1)
  %i.xa = add nsw i64 %.sroa.speculated.i.i.i2374, %i.wz ; 2 uses
  %i.xb = icmp ult i64 %i.xa, %i.wz
  %i.xc = call i64 @llvm.umin.i64(i64 %i.xa, i64 2305843009213693951)
  %i.xd = select i1 %i.xb, i64 2305843009213693951, i64 %i.xc ; 3 uses
  %.not.i.i.i2375 = icmp ne i64 %i.xd, 0
  call void @llvm.assume(i1 %.not.i.i.i2375)
  %i.xe = shl nuw nsw i64 %i.xd, 2
  %i.xf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xe) #26
          to label %.noexc2386 unwind label %.loopexit3794 ; 8 uses

.noexc2386:                                       ; preds = %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i2373
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 %i.wx
  %i.xh = load i32, ptr %17, align 4, !tbaa !31
  store i32 %i.xh, ptr %i.xg, align 4, !tbaa !31
  %.not10.i.i.i.i.i2376 = icmp eq ptr %i.wu, %i.wq
  br i1 %.not10.i.i.i.i.i2376, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2381, label %.lr.ph.i.i.i.i.i2377.preheader

.lr.ph.i.i.i.i.i2377.preheader:                   ; preds = %.noexc2386
  %i.xi = ptrtoaddr ptr %i.xf to i64
  %i.xj = add i64 %i.wv, -4
  %i.xk = sub i64 %i.xj, %i.ww                    ; 2 uses
  %i.xl = lshr i64 %i.xk, 2
  %i.xm = add nuw nsw i64 %i.xl, 1                ; 2 uses
  %min.iters.check13165 = icmp ult i64 %i.xk, 28
  %i.xn = sub i64 %i.ww, %i.xi
  %diff.check13163 = icmp ugt i64 %i.xn, -32
  %or.cond13213.a = or i1 %min.iters.check13165, %diff.check13163
  br i1 %or.cond13213.a, label %.lr.ph.i.i.i.i.i2377.preheader13268, label %vector.ph13166

vector.ph13166:                                   ; preds = %.lr.ph.i.i.i.i.i2377.preheader
  %n.vec13167 = and i64 %i.xm, 9223372036854775800 ; 3 uses
  %i.xo = shl i64 %n.vec13167, 2                  ; 2 uses
  %i.xp = getelementptr i8, ptr %i.xf, i64 %i.xo  ; 2 uses
  %i.xq = getelementptr i8, ptr %i.wu, i64 %i.xo
  br label %vector.body13168

vector.body13168:                                 ; preds = %vector.body13168, %vector.ph13166
  %index13169 = phi i64 [ 0, %vector.ph13166 ], [ %index.next13174, %vector.body13168 ] ; 2 uses
  %i.xr = shl i64 %index13169, 2                  ; 2 uses
  %next.gep13170.a = getelementptr i8, ptr %i.xf, i64 %i.xr ; 2 uses
  %next.gep13171 = getelementptr i8, ptr %i.wu, i64 %i.xr ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.xs = getelementptr i8, ptr %next.gep13171, i64 16
  %wide.load13172.a = load <4 x i32>, ptr %next.gep13171, align 4, !tbaa !31, !alias.scope !287, !noalias !286
  %wide.load13173 = load <4 x i32>, ptr %i.xs, align 4, !tbaa !31, !alias.scope !287, !noalias !286
  %i.xt = getelementptr i8, ptr %next.gep13170.a, i64 16
  store <4 x i32> %wide.load13172.a, ptr %next.gep13170.a, align 4, !tbaa !31, !alias.scope !286, !noalias !287
  store <4 x i32> %wide.load13173, ptr %i.xt, align 4, !tbaa !31, !alias.scope !286, !noalias !287
  %index.next13174 = add nuw i64 %index13169, 8   ; 2 uses
  %i.xu = icmp eq i64 %index.next13174, %n.vec13167
  br i1 %i.xu, label %middle.block13175, label %vector.body13168, !llvm.loop !172

middle.block13175:                                ; preds = %vector.body13168
  %cmp.n13176 = icmp eq i64 %i.xm, %n.vec13167
  br i1 %cmp.n13176, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2381, label %.lr.ph.i.i.i.i.i2377.preheader13268

.lr.ph.i.i.i.i.i2377.preheader13268:              ; preds = %.lr.ph.i.i.i.i.i2377.preheader, %middle.block13175
  %.012.i.i.i.i.i2378.ph = phi ptr [ %i.xf, %.lr.ph.i.i.i.i.i2377.preheader ], [ %i.xp, %middle.block13175 ]
  %.0911.i.i.i.i.i2379.ph = phi ptr [ %i.wu, %.lr.ph.i.i.i.i.i2377.preheader ], [ %i.xq, %middle.block13175 ]
  br label %.lr.ph.i.i.i.i.i2377

.lr.ph.i.i.i.i.i2377:                             ; preds = %.lr.ph.i.i.i.i.i2377.preheader13268, %.lr.ph.i.i.i.i.i2377
  %.012.i.i.i.i.i2378 = phi ptr [ %i.xx, %.lr.ph.i.i.i.i.i2377 ], [ %.012.i.i.i.i.i2378.ph, %.lr.ph.i.i.i.i.i2377.preheader13268 ] ; 2 uses
  %.0911.i.i.i.i.i2379 = phi ptr [ %i.xw, %.lr.ph.i.i.i.i.i2377 ], [ %.0911.i.i.i.i.i2379.ph, %.lr.ph.i.i.i.i.i2377.preheader13268 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.xv = load i32, ptr %.0911.i.i.i.i.i2379, align 4, !tbaa !31, !alias.scope !287, !noalias !286
  store i32 %i.xv, ptr %.012.i.i.i.i.i2378, align 4, !tbaa !31, !alias.scope !286, !noalias !287
  %i.xw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i2379, i64 4 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i2378, i64 4 ; 2 uses
  %.not.i.i.i.i.i2380 = icmp eq ptr %i.xw, %i.wq
  br i1 %.not.i.i.i.i.i2380, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2381, label %.lr.ph.i.i.i.i.i2377, !llvm.loop !173

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2381: ; preds = %.lr.ph.i.i.i.i.i2377, %middle.block13175, %.noexc2386
  %.0.lcssa.i.i.i.i.i2382 = phi ptr [ %i.xf, %.noexc2386 ], [ %i.xp, %middle.block13175 ], [ %i.xx, %.lr.ph.i.i.i.i.i2377 ]
  %i.xy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i2382, i64 4 ; 2 uses
  %.not.i23.i.i2383 = icmp eq ptr %i.wu, null
  br i1 %.not.i23.i.i2383, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2384, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2381
  %i.xz = load ptr, ptr %i.cc, align 8, !tbaa !99
  %i.ya = ptrtoint ptr %i.xz to i64
  %i.yb = sub i64 %i.ya, %i.ww
  call void @_ZdlPvm(ptr noundef nonnull %i.wu, i64 noundef %i.yb) #24
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2384

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2384: ; preds = %bb.cc, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2381
  store ptr %i.xf, ptr %10, align 8, !tbaa !49
  store ptr %i.xy, ptr %i.bf, align 8, !tbaa !48
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %i.xd ; 2 uses
  store ptr %i.yc, ptr %i.cc, align 8, !tbaa !99
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2387

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2387: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2384, %bb.bz
  %i.yd = phi ptr [ %i.yc, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2384 ], [ %i.wr, %bb.bz ]
  %i.ye = phi ptr [ %i.xy, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2384 ], [ %i.wt, %bb.bz ]
  %i.yf = load ptr, ptr %i.b, align 8, !tbaa !53  ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 32
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !288 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yf, i64 40
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !288 ; 2 uses
  %.not37016448 = icmp eq ptr %i.yh, %i.yj
  br i1 %.not37016448, label %.preheader3777, label %.lr.ph6450

.preheader3777:                                   ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2403, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2387
  %.not37026451 = icmp eq ptr %.sroa.03414.0.lcssa.ph, %.sroa.9.0.lcssa.ph
  br i1 %.not37026451, label %._crit_edge, label %.lr.ph6453

bb.cd:                                            ; preds = %bb.bk
  %i.yk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.ce:                                            ; preds = %_ZN2cv3Mat2atIfEERT_i.exit2361
  %i.yl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.cf:                                            ; preds = %bb.bn, %bb.bl, %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ym = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.cg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.yn = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

.loopexit3794:                                    ; preds = %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i2373
  %lpad.loopexit3796 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

.loopexit.split-lp3795:                           ; preds = %bb.cb
  %lpad.loopexit.split-lp3797 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

.lr.ph6450:                                       ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2387, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2403
  %i.yo = phi ptr [ %i.aab, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2403 ], [ %i.yd, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2387 ] ; 5 uses
  %i.yp = phi ptr [ %i.aac, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2403 ], [ %i.ye, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2387 ] ; 3 uses
  %.sroa.03393.06449 = phi ptr [ %i.aad, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2403 ], [ %i.yh, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2387 ] ; 3 uses
  %.not.i2388 = icmp eq ptr %i.yp, %i.yo
  br i1 %.not.i2388, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph6450
  %i.yq = load i32, ptr %.sroa.03393.06449, align 4, !tbaa !31
  store i32 %i.yq, ptr %i.yp, align 4, !tbaa !31
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yp, i64 4 ; 2 uses
  store ptr %i.yr, ptr %i.bf, align 8, !tbaa !48
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2403

bb.ci:                                            ; preds = %.lr.ph6450
  %i.ys = load ptr, ptr %10, align 8, !tbaa !49   ; 7 uses
  %i.yt = ptrtoint ptr %i.yo to i64               ; 2 uses
  %i.yu = ptrtoint ptr %i.ys to i64               ; 4 uses
  %i.yv = sub i64 %i.yt, %i.yu                    ; 3 uses
  %i.yw = icmp eq i64 %i.yv, 9223372036854775804
  br i1 %i.yw, label %bb.cj, label %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i2389

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
          to label %.noexc2401 unwind label %.loopexit.split-lp3779

.noexc2401:                                       ; preds = %bb.cj
  unreachable

_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i2389: ; preds = %bb.ci
  %i.yx = ashr exact i64 %i.yv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i2390 = call i64 @llvm.umax.i64(i64 %i.yx, i64 1)
  %i.yy = add nsw i64 %.sroa.speculated.i.i.i2390, %i.yx ; 2 uses
  %i.yz = icmp ult i64 %i.yy, %i.yx
  %i.za = call i64 @llvm.umin.i64(i64 %i.yy, i64 2305843009213693951)
  %i.zb = select i1 %i.yz, i64 2305843009213693951, i64 %i.za ; 3 uses
  %.not.i.i.i2391 = icmp ne i64 %i.zb, 0
  call void @llvm.assume(i1 %.not.i.i.i2391)
  %i.zc = shl nuw nsw i64 %i.zb, 2
  %i.zd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zc) #26
          to label %.noexc2402 unwind label %.loopexit3778 ; 8 uses

.noexc2402:                                       ; preds = %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i2389
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 %i.yv
  %i.zf = load i32, ptr %.sroa.03393.06449, align 4, !tbaa !31
  store i32 %i.zf, ptr %i.ze, align 4, !tbaa !31
  %.not10.i.i.i.i.i2392 = icmp eq ptr %i.ys, %i.yo
  br i1 %.not10.i.i.i.i.i2392, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2397, label %.lr.ph.i.i.i.i.i2393.preheader

.lr.ph.i.i.i.i.i2393.preheader:                   ; preds = %.noexc2402
  %i.zg = ptrtoaddr ptr %i.zd to i64
  %i.zh = add i64 %i.yt, -4
  %i.zi = sub i64 %i.zh, %i.yu                    ; 2 uses
  %i.zj = lshr i64 %i.zi, 2
  %i.zk = add nuw nsw i64 %i.zj, 1                ; 2 uses
  %min.iters.check13148 = icmp ult i64 %i.zi, 28
  %i.zl = sub i64 %i.yu, %i.zg
  %diff.check13146 = icmp ugt i64 %i.zl, -32
  %or.cond13214.a = or i1 %min.iters.check13148, %diff.check13146
  br i1 %or.cond13214.a, label %.lr.ph.i.i.i.i.i2393.preheader13260, label %vector.ph13149

vector.ph13149:                                   ; preds = %.lr.ph.i.i.i.i.i2393.preheader
  %n.vec13150 = and i64 %i.zk, 9223372036854775800 ; 3 uses
  %i.zm = shl i64 %n.vec13150, 2                  ; 2 uses
  %i.zn = getelementptr i8, ptr %i.zd, i64 %i.zm  ; 2 uses
  %i.zo = getelementptr i8, ptr %i.ys, i64 %i.zm
  br label %vector.body13151

vector.body13151:                                 ; preds = %vector.body13151, %vector.ph13149
  %index13152 = phi i64 [ 0, %vector.ph13149 ], [ %index.next13157, %vector.body13151 ] ; 2 uses
  %i.zp = shl i64 %index13152, 2                  ; 2 uses
  %next.gep13153.a = getelementptr i8, ptr %i.zd, i64 %i.zp ; 2 uses
  %next.gep13154 = getelementptr i8, ptr %i.ys, i64 %i.zp ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.zq = getelementptr i8, ptr %next.gep13154, i64 16
  %wide.load13155.a = load <4 x i32>, ptr %next.gep13154, align 4, !tbaa !31, !alias.scope !290, !noalias !289
  %wide.load13156 = load <4 x i32>, ptr %i.zq, align 4, !tbaa !31, !alias.scope !290, !noalias !289
  %i.zr = getelementptr i8, ptr %next.gep13153.a, i64 16
  store <4 x i32> %wide.load13155.a, ptr %next.gep13153.a, align 4, !tbaa !31, !alias.scope !289, !noalias !290
  store <4 x i32> %wide.load13156, ptr %i.zr, align 4, !tbaa !31, !alias.scope !289, !noalias !290
  %index.next13157 = add nuw i64 %index13152, 8   ; 2 uses
  %i.zs = icmp eq i64 %index.next13157, %n.vec13150
  br i1 %i.zs, label %middle.block13158, label %vector.body13151, !llvm.loop !177

middle.block13158:                                ; preds = %vector.body13151
  %cmp.n13159 = icmp eq i64 %i.zk, %n.vec13150
  br i1 %cmp.n13159, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2397, label %.lr.ph.i.i.i.i.i2393.preheader13260

.lr.ph.i.i.i.i.i2393.preheader13260:              ; preds = %.lr.ph.i.i.i.i.i2393.preheader, %middle.block13158
  %.012.i.i.i.i.i2394.ph = phi ptr [ %i.zd, %.lr.ph.i.i.i.i.i2393.preheader ], [ %i.zn, %middle.block13158 ]
  %.0911.i.i.i.i.i2395.ph = phi ptr [ %i.ys, %.lr.ph.i.i.i.i.i2393.preheader ], [ %i.zo, %middle.block13158 ]
  br label %.lr.ph.i.i.i.i.i2393

.lr.ph.i.i.i.i.i2393:                             ; preds = %.lr.ph.i.i.i.i.i2393.preheader13260, %.lr.ph.i.i.i.i.i2393
  %.012.i.i.i.i.i2394 = phi ptr [ %i.zv, %.lr.ph.i.i.i.i.i2393 ], [ %.012.i.i.i.i.i2394.ph, %.lr.ph.i.i.i.i.i2393.preheader13260 ] ; 2 uses
  %.0911.i.i.i.i.i2395 = phi ptr [ %i.zu, %.lr.ph.i.i.i.i.i2393 ], [ %.0911.i.i.i.i.i2395.ph, %.lr.ph.i.i.i.i.i2393.preheader13260 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.zt = load i32, ptr %.0911.i.i.i.i.i2395, align 4, !tbaa !31, !alias.scope !290, !noalias !289
  store i32 %i.zt, ptr %.012.i.i.i.i.i2394, align 4, !tbaa !31, !alias.scope !289, !noalias !290
  %i.zu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i2395, i64 4 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i2394, i64 4 ; 2 uses
  %.not.i.i.i.i.i2396 = icmp eq ptr %i.zu, %i.yo
  br i1 %.not.i.i.i.i.i2396, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2397, label %.lr.ph.i.i.i.i.i2393, !llvm.loop !178

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2397: ; preds = %.lr.ph.i.i.i.i.i2393, %middle.block13158, %.noexc2402
  %.0.lcssa.i.i.i.i.i2398 = phi ptr [ %i.zd, %.noexc2402 ], [ %i.zn, %middle.block13158 ], [ %i.zv, %.lr.ph.i.i.i.i.i2393 ]
  %i.zw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i2398, i64 4 ; 2 uses
  %.not.i23.i.i2399 = icmp eq ptr %i.ys, null
  br i1 %.not.i23.i.i2399, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2400, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2397
  %i.zx = load ptr, ptr %i.cc, align 8, !tbaa !99
  %i.zy = ptrtoint ptr %i.zx to i64
  %i.zz = sub i64 %i.zy, %i.yu
  call void @_ZdlPvm(ptr noundef nonnull %i.ys, i64 noundef %i.zz) #24
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2400

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2400: ; preds = %bb.ck, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2397
  store ptr %i.zd, ptr %10, align 8, !tbaa !49
  store ptr %i.zw, ptr %i.bf, align 8, !tbaa !48
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.zd, i64 %i.zb ; 2 uses
  store ptr %i.aaa, ptr %i.cc, align 8, !tbaa !99
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2403

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2403: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2400, %bb.ch
  %i.aab = phi ptr [ %i.aaa, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2400 ], [ %i.yo, %bb.ch ]
  %i.aac = phi ptr [ %i.zw, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2400 ], [ %i.yr, %bb.ch ]
  %i.aad = getelementptr inbounds nuw i8, ptr %.sroa.03393.06449, i64 4 ; 2 uses
  %.not3701 = icmp eq ptr %i.aad, %i.yj
  br i1 %.not3701, label %.preheader3777, label %.lr.ph6450

.loopexit3778:                                    ; preds = %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i2389
  %lpad.loopexit3780 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

.loopexit.split-lp3779:                           ; preds = %bb.cj
  %lpad.loopexit.split-lp3781 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.preheader3777
  %i.aae = load ptr, ptr %i.ca, align 8, !tbaa !94 ; 8 uses
  %.not.i.i2404 = icmp eq ptr %i.aae, null
  br i1 %.not.i.i2404, label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060517Eltwise2Int8LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cl

bb.cl:                                            ; preds = %._crit_edge
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 8 ; 4 uses
  %i.aag = load atomic i64, ptr %i.aaf acquire, align 8 ; 2 uses
  %i.aah = icmp eq i64 %i.aag, 4294967297
  %i.aai = trunc i64 %i.aag to i32                ; 2 uses
  br i1 %i.aah, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  store i32 0, ptr %i.aaf, align 8, !tbaa !96
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aae, i64 12
  store i32 0, ptr %i.aaj, align 4, !tbaa !97
  %i.aak = load ptr, ptr %i.aae, align 8, !tbaa !26
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 16
  %i.aam = load ptr, ptr %i.aal, align 8
  call void %i.aam(ptr noundef nonnull align 8 dereferenceable(16) %i.aae) #23, !inline_history !179
  %i.aan = load ptr, ptr %i.aae, align 8, !tbaa !26
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 24
  %i.aap = load ptr, ptr %i.aao, align 8
  call void %i.aap(ptr noundef nonnull align 8 dereferenceable(16) %i.aae) #23, !inline_history !179
  br label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060517Eltwise2Int8LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cn:                                            ; preds = %bb.cl
  %i.aaq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i2405 = icmp eq i8 %i.aaq, 0
  br i1 %.not.i.i.i2405, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.aar = add nsw i32 %i.aai, -1
  store i32 %i.aar, ptr %i.aaf, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.cp:                                            ; preds = %bb.cn
  %i.aas = atomicrmw volatile add ptr %i.aaf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.cp, %bb.co
  %.0.i.i.i.i = phi i32 [ %i.aai, %bb.co ], [ %i.aas, %bb.cp ]
  %i.aat = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aat, label %bb.cq, label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060517Eltwise2Int8LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !98

bb.cq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aae) #23
  br label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060517Eltwise2Int8LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060517Eltwise2Int8LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %._crit_edge, %bb.cm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  %i.aau = load ptr, ptr %i.bv, align 8, !tbaa !100 ; 2 uses
  %i.aav = icmp eq ptr %i.aau, %i.bw
  br i1 %i.aav, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060517Eltwise2Int8LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aaw = load i64, ptr %i.bw, align 8, !tbaa !74
  %i.aax = add i64 %i.aaw, 1
  call void @_ZdlPvm(ptr noundef %i.aau, i64 noundef %i.aax) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060517Eltwise2Int8LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.aay = load ptr, ptr %i.bz, align 8, !tbaa !21 ; 3 uses
  %.not.i.i.i.i2406 = icmp eq ptr %i.aay, null
  br i1 %.not.i.i.i.i2406, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.aaz = load ptr, ptr %i.cd, align 8, !tbaa !22
  %i.aba = ptrtoint ptr %i.aaz to i64
  %i.abb = ptrtoint ptr %i.aay to i64
  %i.abc = sub i64 %i.aba, %i.abb
  call void @_ZdlPvm(ptr noundef nonnull %i.aay, i64 noundef %i.abc) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.abd = load ptr, ptr %i.br, align 8, !tbaa !63 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.abd, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.abe = load ptr, ptr %i.ce, align 8, !tbaa !64
  %i.abf = ptrtoint ptr %i.abe to i64
  %i.abg = ptrtoint ptr %i.abd to i64
  %i.abh = sub i64 %i.abf, %i.abg
  call void @_ZdlPvm(ptr noundef nonnull %i.abd, i64 noundef %i.abh) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.cs, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.abi = load ptr, ptr %22, align 8, !tbaa !100 ; 2 uses
  %i.abj = icmp eq ptr %i.abi, %i.bp
  br i1 %i.abj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.abk = load i64, ptr %i.bp, align 8, !tbaa !74
  %i.abl = add i64 %i.abk, 1
  call void @_ZdlPvm(ptr noundef %i.abi, i64 noundef %i.abl) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i

.lr.ph6453:                                       ; preds = %.preheader3777, %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.03389.06452 = phi ptr [ %i.ach, %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %.sroa.03414.0.lcssa.ph, %.preheader3777 ] ; 2 uses
  %i.abm = load i32, ptr %.sroa.03389.06452, align 4, !tbaa !31
  %i.abn = sext i32 %i.abm to i64
  %i.abo = load ptr, ptr %12, align 8, !tbaa !30
  %i.abp = getelementptr inbounds nuw [16 x i8], ptr %i.abo, i64 %i.abn ; 2 uses
  store ptr null, ptr %i.abp, align 8, !tbaa !45
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 8 ; 2 uses
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !94 ; 8 uses
  %.not.i.i.i.i2407 = icmp eq ptr %i.abr, null
  br i1 %.not.i.i.i.i2407, label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph6453
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 8 ; 4 uses
  %i.abt = load atomic i64, ptr %i.abs acquire, align 8 ; 2 uses
  %i.abu = icmp eq i64 %i.abt, 4294967297
  %i.abv = trunc i64 %i.abt to i32                ; 2 uses
  br i1 %i.abu, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  store i32 0, ptr %i.abs, align 8, !tbaa !96
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abr, i64 12
  store i32 0, ptr %i.abw, align 4, !tbaa !97
  %i.abx = load ptr, ptr %i.abr, align 8, !tbaa !26
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 16
  %i.abz = load ptr, ptr %i.aby, align 8
  call void %i.abz(ptr noundef nonnull align 8 dereferenceable(16) %i.abr) #23, !inline_history !180
  %i.aca = load ptr, ptr %i.abr, align 8, !tbaa !26
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 24
  %i.acc = load ptr, ptr %i.acb, align 8
  call void %i.acc(ptr noundef nonnull align 8 dereferenceable(16) %i.abr) #23, !inline_history !180
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i2415

bb.cv:                                            ; preds = %bb.ct
  %i.acd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i9.i.i.i.i2412 = icmp eq i8 %i.acd, 0
  br i1 %.not.i9.i.i.i.i2412, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ace = add nsw i32 %i.abv, -1
  store i32 %i.ace, ptr %i.abs, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i2413

bb.cx:                                            ; preds = %bb.cv
  %i.acf = atomicrmw volatile add ptr %i.abs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i2413

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i2413: ; preds = %bb.cx, %bb.cw
  %.0.i.i.i.i.i.i2414 = phi i32 [ %i.abv, %bb.cw ], [ %i.acf, %bb.cx ]
  %i.acg = icmp eq i32 %.0.i.i.i.i.i.i2414, 1
  br i1 %i.acg, label %bb.cy, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i2415, !prof !98

bb.cy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i2413
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.abr) #23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i2415

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i2415: ; preds = %bb.cy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i2413, %bb.cu
  store ptr null, ptr %i.abq, align 8, !tbaa !94
  br label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i2415, %.lr.ph6453
  %i.ach = getelementptr inbounds nuw i8, ptr %.sroa.03389.06452, i64 4 ; 2 uses
  %.not3702 = icmp eq ptr %i.ach, %.sroa.9.0.lcssa.ph
  br i1 %.not3702, label %._crit_edge, label %.lr.ph6453

bb.cz:                                            ; preds = %.loopexit3778, %.loopexit.split-lp3779, %.loopexit3794, %.loopexit.split-lp3795
  %.pn2222 = phi { ptr, i32 } [ %lpad.loopexit.split-lp3797, %.loopexit.split-lp3795 ], [ %lpad.loopexit3796, %.loopexit3794 ], [ %lpad.loopexit3780, %.loopexit3778 ], [ %lpad.loopexit.split-lp3781, %.loopexit.split-lp3779 ]
  call void @_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060517Eltwise2Int8LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #23
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cg
  %.sroa.153409.1 = phi ptr [ %i.wp, %bb.cz ], [ %.sroa.153409.0.lcssa.ph, %bb.cg ]
  %.sroa.03404.1 = phi ptr [ %i.wo, %bb.cz ], [ %.sroa.03404.0.lcssa.ph, %bb.cg ]
  %.pn2222.pn = phi { ptr, i32 } [ %.pn2222, %bb.cz ], [ %i.yn, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cf
  %.sroa.153409.2 = phi ptr [ %.sroa.153409.1, %bb.da ], [ %.sroa.153409.0.lcssa.ph, %bb.cf ]
  %.sroa.03404.2 = phi ptr [ %.sroa.03404.1, %bb.da ], [ %.sroa.03404.0.lcssa.ph, %bb.cf ]
  %.pn2222.pn.pn = phi { ptr, i32 } [ %.pn2222.pn, %bb.da ], [ %i.ym, %bb.cf ]
  call void @_ZN2cv3dnn14dnn5_v2026060518Eltwise2Int8ParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %bb.dd

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  %.pre8681 = load ptr, ptr %21, align 8, !tbaa !21 ; 2 uses
  %.not.i.i.i2421 = icmp eq ptr %.pre8681, null
  br i1 %.not.i.i.i2421, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.thread9328

.thread9328:                                      ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i
  %.015869337.a = phi i32 [ %i.vm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i ], [ -1, %bb.bf ]
  %.sroa.03404.39335.a = phi ptr [ %i.wo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i ], [ %.sroa.03404.0.lcssa.ph, %bb.bf ]
  %.sroa.153409.39333.a = phi ptr [ %i.wp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i ], [ %.sroa.153409.0.lcssa.ph, %bb.bf ]
  %i.aci = phi ptr [ %.pre8681, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i ], [ %i.uh, %bb.bf ] ; 2 uses
  %i.acj = load ptr, ptr %i.bn, align 8, !tbaa !22
  %i.ack = ptrtoint ptr %i.acj to i64
  %i.acl = ptrtoint ptr %i.aci to i64
  %i.acm = sub i64 %i.ack, %i.acl
  call void @_ZdlPvm(ptr noundef nonnull %i.aci, i64 noundef %i.acm) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i, %.thread9328
  %.015869338 = phi i32 [ %i.vm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i ], [ %.015869337.a, %.thread9328 ]
  %.sroa.03404.39336 = phi ptr [ %i.wo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i ], [ %.sroa.03404.39335.a, %.thread9328 ]
  %.sroa.153409.39334 = phi ptr [ %i.wp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i ], [ %.sroa.153409.39333.a, %.thread9328 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %i.acn = load ptr, ptr %20, align 8, !tbaa !63  ; 3 uses
  %.not.i.i.i2422 = icmp eq ptr %i.acn, null
  br i1 %.not.i.i.i2422, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.aco = load ptr, ptr %i.bl, align 8, !tbaa !64
  %i.acp = ptrtoint ptr %i.aco to i64
  %i.acq = ptrtoint ptr %i.acn to i64
  %i.acr = sub i64 %i.acp, %i.acq
  call void @_ZdlPvm(ptr noundef nonnull %i.acn, i64 noundef %i.acr) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %bb.dg

bb.dd:                                            ; preds = %bb.cd, %bb.db, %bb.ce, %bb.bg, %bb.bi, %bb.bj, %bb.bh
  %.sroa.153409.4 = phi ptr [ %.sroa.153409.0.lcssa.ph, %bb.bj ], [ %.sroa.153409.0.lcssa.ph, %bb.bi ], [ %.sroa.153409.0.lcssa.ph, %bb.bh ], [ %.sroa.153409.0.lcssa.ph, %bb.bg ], [ %.sroa.153409.2, %bb.db ], [ %.sroa.153409.0.lcssa.ph, %bb.ce ], [ %.sroa.153409.0.lcssa.ph, %bb.cd ] ; 2 uses
  %.sroa.03404.4 = phi ptr [ %.sroa.03404.0.lcssa.ph, %bb.bj ], [ %.sroa.03404.0.lcssa.ph, %bb.bi ], [ %.sroa.03404.0.lcssa.ph, %bb.bh ], [ %.sroa.03404.0.lcssa.ph, %bb.bg ], [ %.sroa.03404.2, %bb.db ], [ %.sroa.03404.0.lcssa.ph, %bb.ce ], [ %.sroa.03404.0.lcssa.ph, %bb.cd ] ; 2 uses
  %.pn2229.pn.pn.pn = phi { ptr, i32 } [ %i.um, %bb.bj ], [ %i.ul, %bb.bi ], [ %i.uk, %bb.bh ], [ %i.uj, %bb.bg ], [ %.pn2222.pn.pn, %bb.db ], [ %i.yl, %bb.ce ], [ %i.yk, %bb.cd ] ; 2 uses
  %i.acs = load ptr, ptr %21, align 8, !tbaa !21  ; 3 uses
  %.not.i.i.i2423 = icmp eq ptr %i.acs, null
  br i1 %.not.i.i.i2423, label %_ZNSt6vectorIiSaIiEED2Ev.exit2424, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.act = load ptr, ptr %i.bn, align 8, !tbaa !22
  %i.acu = ptrtoint ptr %i.act to i64
  %i.acv = ptrtoint ptr %i.acs to i64
  %i.acw = sub i64 %i.acu, %i.acv
  call void @_ZdlPvm(ptr noundef nonnull %i.acs, i64 noundef %i.acw) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2424

_ZNSt6vectorIiSaIiEED2Ev.exit2424:                ; preds = %bb.de, %bb.dd, %bb.ar
  %.sroa.153409.5 = phi ptr [ %.sroa.153409.0.lcssa.ph, %bb.ar ], [ %.sroa.153409.4, %bb.dd ], [ %.sroa.153409.4, %bb.de ] ; 2 uses
  %.sroa.03404.5 = phi ptr [ %.sroa.03404.0.lcssa.ph, %bb.ar ], [ %.sroa.03404.4, %bb.dd ], [ %.sroa.03404.4, %bb.de ] ; 2 uses
  %.pn2229.pn.pn.pn.pn = phi { ptr, i32 } [ %i.qj, %bb.ar ], [ %.pn2229.pn.pn.pn, %bb.dd ], [ %.pn2229.pn.pn.pn, %bb.de ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %i.acx = load ptr, ptr %20, align 8, !tbaa !63  ; 3 uses
  %.not.i.i.i2425 = icmp eq ptr %i.acx, null
  br i1 %.not.i.i.i2425, label %_ZNSt6vectorIfSaIfEED2Ev.exit2426, label %bb.df

bb.df:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2424
  %i.acy = load ptr, ptr %i.bl, align 8, !tbaa !64
  %i.acz = ptrtoint ptr %i.acy to i64
  %i.ada = ptrtoint ptr %i.acx to i64
  %i.adb = sub i64 %i.acz, %i.ada
  call void @_ZdlPvm(ptr noundef nonnull %i.acx, i64 noundef %i.adb) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2426

_ZNSt6vectorIfSaIfEED2Ev.exit2426:                ; preds = %bb.df, %_ZNSt6vectorIiSaIiEED2Ev.exit2424, %bb.aq
  %.sroa.153409.6 = phi ptr [ %.sroa.153409.0.lcssa.ph, %bb.aq ], [ %.sroa.153409.5, %_ZNSt6vectorIiSaIiEED2Ev.exit2424 ], [ %.sroa.153409.5, %bb.df ]
  %.sroa.03404.6 = phi ptr [ %.sroa.03404.0.lcssa.ph, %bb.aq ], [ %.sroa.03404.5, %_ZNSt6vectorIiSaIiEED2Ev.exit2424 ], [ %.sroa.03404.5, %bb.df ]
  %.pn2229.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.qi, %bb.aq ], [ %.pn2229.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit2424 ], [ %.pn2229.pn.pn.pn.pn, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %bb.dk

bb.dg:                                            ; preds = %bb.al, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %.sroa.153409.7 = phi ptr [ %.sroa.153409.0.lcssa.ph, %bb.al ], [ %.sroa.153409.39334, %_ZNSt6vectorIfSaIfEED2Ev.exit ]
  %.sroa.03404.7 = phi ptr [ %.sroa.03404.0.lcssa.ph, %bb.al ], [ %.sroa.03404.39336, %_ZNSt6vectorIfSaIfEED2Ev.exit ] ; 3 uses
  %.11587 = phi i32 [ -1, %bb.al ], [ %.015869338, %_ZNSt6vectorIfSaIfEED2Ev.exit ] ; 2 uses
  %.not.i.i.i2427 = icmp eq ptr %.sroa.03404.7, null
  br i1 %.not.i.i.i2427, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.adc = ptrtoint ptr %.sroa.153409.7 to i64
  %i.add = ptrtoint ptr %.sroa.03404.7 to i64
  %i.ade = sub i64 %i.adc, %i.add
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.03404.7, i64 noundef %i.ade) #24
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit: ; preds = %bb.dg, %bb.dh
  %.not.i.i.i2428 = icmp eq ptr %.sroa.03414.0.lcssa.ph, null
  br i1 %.not.i.i.i2428, label %_ZNSt6vectorIiSaIiEED2Ev.exit2429, label %bb.di

bb.di:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit
  %i.adf = ptrtoint ptr %.sroa.133419.0.lcssa.ph to i64
  %i.adg = ptrtoint ptr %.sroa.03414.0.lcssa.ph to i64
  %i.adh = sub i64 %i.adf, %i.adg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.03414.0.lcssa.ph, i64 noundef %i.adh) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2429

_ZNSt6vectorIiSaIiEED2Ev.exit2429:                ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit, %bb.di
  %.not.i.i.i2430 = icmp eq ptr %.sroa.03423.0.lcssa.ph, null
  br i1 %.not.i.i.i2430, label %_ZNSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EED2Ev.exit, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2429
  %i.adi = ptrtoint ptr %.sroa.19.0.lcssa.ph to i64
  %i.adj = sub i64 %i.adi, %i.pj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.03423.0.lcssa.ph, i64 noundef %i.adj) #24
  br label %_ZNSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EED2Ev.exit

_ZNSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2429, %bb.dj
  br i1 %or.cond52.not, label %bb.do, label %bb.awl

bb.dk:                                            ; preds = %.loopexit3784, %.loopexit.split-lp3785, %bb.w, %bb.ap, %_ZNSt6vectorIfSaIfEED2Ev.exit2426
  %.sroa.153409.8 = phi ptr [ %.sroa.153409.6, %_ZNSt6vectorIfSaIfEED2Ev.exit2426 ], [ %.sroa.153409.0.lcssa.ph, %bb.ap ], [ %.sroa.153409.06351, %bb.w ], [ %.sroa.153409.06351, %.loopexit3784 ], [ %.sroa.153409.06351, %.loopexit.split-lp3785 ]
  %.sroa.03404.8 = phi ptr [ %.sroa.03404.6, %_ZNSt6vectorIfSaIfEED2Ev.exit2426 ], [ %.sroa.03404.0.lcssa.ph, %bb.ap ], [ %.sroa.03404.06352, %bb.w ], [ %.sroa.03404.06352, %.loopexit3784 ], [ %.sroa.03404.06352, %.loopexit.split-lp3785 ] ; 3 uses
  %.sroa.133419.3 = phi ptr [ %.sroa.133419.0.lcssa.ph, %_ZNSt6vectorIfSaIfEED2Ev.exit2426 ], [ %.sroa.133419.0.lcssa.ph, %bb.ap ], [ %.sroa.133419.06353, %bb.w ], [ %.sroa.133419.1.ph, %.loopexit3784 ], [ %.sroa.133419.1.ph3786, %.loopexit.split-lp3785 ]
  %.sroa.03414.3 = phi ptr [ %.sroa.03414.0.lcssa.ph, %_ZNSt6vectorIfSaIfEED2Ev.exit2426 ], [ %.sroa.03414.0.lcssa.ph, %bb.ap ], [ %.sroa.03414.06355, %bb.w ], [ %.sroa.03414.1.ph, %.loopexit3784 ], [ %.sroa.03414.1.ph3787, %.loopexit.split-lp3785 ] ; 3 uses
  %.sroa.19.3 = phi ptr [ %.sroa.19.0.lcssa.ph, %_ZNSt6vectorIfSaIfEED2Ev.exit2426 ], [ %.sroa.19.0.lcssa.ph, %bb.ap ], [ %.sroa.19.06356, %bb.w ], [ %.sroa.19.1.ph, %.loopexit3784 ], [ %.sroa.19.1.ph3788, %.loopexit.split-lp3785 ]
  %.sroa.03423.3 = phi ptr [ %.sroa.03423.0.lcssa.ph, %_ZNSt6vectorIfSaIfEED2Ev.exit2426 ], [ %.sroa.03423.0.lcssa.ph, %bb.ap ], [ %.sroa.03423.06358, %bb.w ], [ %.sroa.03423.1.ph, %.loopexit3784 ], [ %.sroa.03423.1.ph3789, %.loopexit.split-lp3785 ] ; 3 uses
  %.pn2229.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn2229.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit2426 ], [ %i.qh, %bb.ap ], [ %i.mm, %bb.w ], [ %lpad.loopexit3790, %.loopexit3784 ], [ %lpad.loopexit.split-lp3791, %.loopexit.split-lp3785 ] ; 2 uses
  %.not.i.i.i2431 = icmp eq ptr %.sroa.03404.8, null
  br i1 %.not.i.i.i2431, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit2432, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.adk = ptrtoint ptr %.sroa.153409.8 to i64
  %i.adl = ptrtoint ptr %.sroa.03404.8 to i64
  %i.adm = sub i64 %i.adk, %i.adl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.03404.8, i64 noundef %i.adm) #24
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit2432

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit2432: ; preds = %bb.dk, %bb.dl
  %.not.i.i.i2433 = icmp eq ptr %.sroa.03414.3, null
  br i1 %.not.i.i.i2433, label %_ZNSt6vectorIiSaIiEED2Ev.exit2434, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit2432
  %i.adn = ptrtoint ptr %.sroa.133419.3 to i64
  %i.ado = ptrtoint ptr %.sroa.03414.3 to i64
  %i.adp = sub i64 %i.adn, %i.ado
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.03414.3, i64 noundef %i.adp) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2434

_ZNSt6vectorIiSaIiEED2Ev.exit2434:                ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EED2Ev.exit2432, %bb.dm
  %.not.i.i.i2435 = icmp eq ptr %.sroa.03423.3, null
  br i1 %.not.i.i.i2435, label %_ZNSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EED2Ev.exit2436, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2434
  %i.adq = ptrtoint ptr %.sroa.19.3 to i64
  %i.adr = ptrtoint ptr %.sroa.03423.3 to i64
  %i.ads = sub i64 %i.adq, %i.adr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.03423.3, i64 noundef %i.ads) #24
  br label %_ZNSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EED2Ev.exit2436

bb.do:                                            ; preds = %_ZNSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EED2Ev.exit, %bb.l, %bb.k
  %.21588 = phi i32 [ %.11587, %_ZNSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EED2Ev.exit ], [ -1, %bb.l ], [ -1, %bb.k ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 -1, ptr %i.c, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr null, ptr %i.d, align 8, !tbaa !102
  %i.adt = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ20getQdqPatternContextINS1_9ReLULayerEEEbPNS1_5LayerEmRKSt6vectorINS1_3ArgESaIS8_EERKS7_IiSaIiEERS7_INS_3PtrIS5_EESaISI_EERS8_SM_SM_RiRPT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.iw, i64 noundef %i.jr, ptr noundef nonnull align 8 dereferenceable(24) %i.jj, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 4 dereferenceable(4) %17, ptr noundef nonnull align 4 dereferenceable(4) %18, ptr noundef nonnull align 4 dereferenceable(4) %19, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.dp unwind label %bb.ep

bb.dp:                                            ; preds = %bb.do
  br i1 %i.adt, label %bb.dq, label %.critedge2248.thread

bb.dq:                                            ; preds = %bb.dp
  %i.adu = load ptr, ptr %i.d, align 8, !tbaa !102 ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 32
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adu, i64 40
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !48
  %i.ady = load ptr, ptr %i.adv, align 8, !tbaa !49 ; 2 uses
  %i.adz = ptrtoint ptr %i.adx to i64
  %i.aea = ptrtoint ptr %i.ady to i64
  %i.aeb = sub i64 %i.adz, %i.aea
  %i.aec = icmp eq i64 %i.aeb, 4
  br i1 %i.aec, label %bb.dr, label %.critedge2248.thread

bb.dr:                                            ; preds = %bb.dq
  %i.aed = load i32, ptr %i.ady, align 4, !tbaa !31 ; 3 uses
  %i.aee = sext i32 %i.aed to i64                 ; 6 uses
  %i.aef = load ptr, ptr %i.at, align 8, !tbaa !32
  %i.aeg = load ptr, ptr %11, align 8, !tbaa !21  ; 2 uses
  %i.aeh = ptrtoint ptr %i.aef to i64
  %i.aei = ptrtoint ptr %i.aeg to i64
  %i.aej = sub i64 %i.aeh, %i.aei
  %i.aek = ashr exact i64 %i.aej, 2               ; 2 uses
  %.not.i.i2437 = icmp ugt i64 %i.aek, %i.aee
  br i1 %.not.i.i2437, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, i64 noundef %i.aee, i64 noundef %i.aek) #25
          to label %.noexc2438 unwind label %bb.eq

.noexc2438:                                       ; preds = %bb.ds
  unreachable

bb.dt:                                            ; preds = %bb.dr
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.aeg, i64 %i.aee
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !31 ; 3 uses
  %i.aen = icmp sgt i32 %i.aem, -1
  br i1 %i.aen, label %bb.du, label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2443

bb.du:                                            ; preds = %bb.dt
  %i.aeo = zext nneg i32 %i.aem to i64            ; 3 uses
  %i.aep = load ptr, ptr %i.bi, align 8, !tbaa !29
  %i.aeq = load ptr, ptr %12, align 8, !tbaa !30  ; 2 uses
  %i.aer = ptrtoint ptr %i.aep to i64
  %i.aes = ptrtoint ptr %i.aeq to i64
  %i.aet = sub i64 %i.aer, %i.aes
  %i.aeu = ashr exact i64 %i.aet, 4               ; 2 uses
  %.not.i.i.i2440 = icmp ugt i64 %i.aeu, %i.aeo
  br i1 %.not.i.i.i2440, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i2441, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, i64 noundef %i.aeo, i64 noundef %i.aeu) #25
          to label %.noexc2442 unwind label %bb.er

.noexc2442:                                       ; preds = %bb.dv
  unreachable

_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i2441: ; preds = %bb.du
  %i.aev = getelementptr inbounds nuw [16 x i8], ptr %i.aeq, i64 %i.aeo
  %i.aew = load ptr, ptr %i.aev, align 8, !tbaa !45 ; 2 uses
  %i.aex = icmp eq ptr %i.aew, null
  br i1 %i.aex, label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2443, label %bb.dw

bb.dw:                                            ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i2441
  %i.aey = call ptr @__dynamic_cast(ptr nonnull %i.aew, ptr nonnull @_ZTIN2cv3dnn14dnn5_v202606055LayerE, ptr nonnull @_ZTIN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerE, i64 0) #23
  br label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2443

_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2443: ; preds = %bb.dw, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i2441, %bb.dt
  %i.aez = phi ptr [ null, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i2441 ], [ %i.aey, %bb.dw ], [ null, %bb.dt ] ; 3 uses
  %i.afa = load ptr, ptr %i.jk, align 8, !tbaa !288 ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.ji, i64 64
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !288
  %i.afd = icmp eq ptr %i.afa, %i.afc
  br i1 %i.afd, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2443
  %i.afe = load ptr, ptr %0, align 8, !tbaa !20
  %.sroa.01067.0.copyload = load i32, ptr %i.afa, align 4, !tbaa !31
  %i.aff = invoke noundef nonnull align 8 dereferenceable(92) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl7argDataENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.afe, i32 %.sroa.01067.0.copyload)
          to label %bb.dy unwind label %bb.es

bb.dy:                                            ; preds = %bb.dx
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 88
  %i.afh = load i32, ptr %i.afg, align 8, !tbaa !277
  %i.afi = icmp ult i32 %i.afh, 2
  br label %bb.dz

bb.dz:                                            ; preds = %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2443, %bb.dy
  %i.afj = phi i1 [ %i.afi, %bb.dy ], [ false, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2443 ] ; 2 uses
  %.not1928 = icmp eq ptr %i.aez, null
  br i1 %.not1928, label %.critedge2248.thread, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.afk = getelementptr inbounds nuw i8, ptr %i.aez, i64 32 ; 6 uses
  %i.afl = load ptr, ptr %i.afk, align 8, !tbaa !288 ; 4 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %i.aez, i64 40 ; 3 uses
  %i.afn = load ptr, ptr %i.afm, align 8, !tbaa !288
  %i.afo = icmp eq ptr %i.afl, %i.afn
  br i1 %i.afo, label %bb.ed, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.afp = load ptr, ptr %0, align 8, !tbaa !20
  %.sroa.01062.0.copyload = load i32, ptr %i.afl, align 4, !tbaa !31
  %i.afq = invoke noundef nonnull align 8 dereferenceable(92) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl7argDataENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.afp, i32 %.sroa.01062.0.copyload)
          to label %bb.ec unwind label %bb.et

bb.ec:                                            ; preds = %bb.eb
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 88
  %i.afs = load i32, ptr %i.afr, align 8, !tbaa !277
  %.pre8682 = load ptr, ptr %i.afm, align 8, !tbaa !48
  %.pre8683 = load ptr, ptr %i.afk, align 8, !tbaa !49
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.ea
  %i.aft = phi ptr [ %.pre8683, %bb.ec ], [ %i.afl, %bb.ea ] ; 2 uses
  %i.afu = phi ptr [ %.pre8682, %bb.ec ], [ %i.afl, %bb.ea ]
  %i.afv = phi i32 [ %i.afs, %bb.ec ], [ -1, %bb.ea ] ; 3 uses
  %.not1929 = icmp eq i32 %i.afv, 0
  %i.afw = icmp ult i32 %i.afv, 2                 ; 2 uses
  %i.afx = ptrtoint ptr %i.afu to i64
  %i.afy = ptrtoint ptr %i.aft to i64
  %i.afz = sub i64 %i.afx, %i.afy
  %i.aga = icmp ugt i64 %i.afz, 8
  br i1 %i.aga, label %bb.ee, label %.critedge2248.thread

bb.ee:                                            ; preds = %bb.ed
  %i.agb = load ptr, ptr %0, align 8, !tbaa !20
  %i.agc = getelementptr inbounds nuw i8, ptr %i.aft, i64 4
  %.sroa.01.0.copyload.i2445 = load i32, ptr %i.agc, align 4, !tbaa !31
  %i.agd = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.agb, i32 %.sroa.01.0.copyload.i2445)
          to label %.noexc2448 unwind label %.loopexit3799

.noexc2448:                                       ; preds = %bb.ee
  br i1 %i.agd, label %bb.ef, label %.critedge2248.thread

bb.ef:                                            ; preds = %.noexc2448
  %i.age = load ptr, ptr %i.afm, align 8, !tbaa !48
  %i.agf = load ptr, ptr %i.afk, align 8, !tbaa !49 ; 2 uses
  %i.agg = ptrtoint ptr %i.age to i64
  %i.agh = ptrtoint ptr %i.agf to i64
  %i.agi = sub i64 %i.agg, %i.agh
  %i.agj = icmp ugt i64 %i.agi, 8
  br i1 %i.agj, label %bb.eg, label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ14areDqArgsConstEPKNS1_21DequantizeLinearLayerE.exit2450

bb.eg:                                            ; preds = %bb.ef
  %i.agk = load ptr, ptr %0, align 8, !tbaa !20
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agf, i64 8
  %.sroa.0.0.copyload.i2447 = load i32, ptr %i.agl, align 4, !tbaa !31
  %i.agm = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.agk, i32 %.sroa.0.0.copyload.i2447)
          to label %.noexc2449 unwind label %.loopexit3799

.noexc2449:                                       ; preds = %bb.eg
  %i.agn = select i1 %i.agm, i1 %i.afw, i1 false
  %or.cond3679 = select i1 %i.agn, i1 %i.afj, i1 false
  br i1 %or.cond3679, label %bb.eh, label %.critedge2248.thread

_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ14areDqArgsConstEPKNS1_21DequantizeLinearLayerE.exit2450: ; preds = %bb.ef
end_hunk_0
