Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/elementwise_layers?download=true
inline.NumInlined: 5542
inline.NumDeleted: 1795
loop-unroll.NumRuntimeUnrolled: 140
loop-unroll.NumUnrolled: 140
begin_hunk_0_@_ZN2cv3dnn16ElementWiseLayerINS0_12PowerFunctorEE7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES9_:bb.a
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !245 ; 2 uses
  %.not4.i.i.i80 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not4.i.i.i80, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i86, label %.lr.ph.i.i.i81

.lr.ph.i.i.i81:                                   ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, %.lr.ph.i.i.i81
  %.05.i.i.i82 = phi ptr [ %i.aj, %.lr.ph.i.i.i81 ], [ %i.ah, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i82) #21
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i82, i64 208 ; 2 uses
  %.not.i.i.i83 = icmp eq ptr %i.aj, %i.ai
  br i1 %.not.i.i.i83, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i84, label %.lr.ph.i.i.i81, !llvm.loop !2

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i84: ; preds = %.lr.ph.i.i.i81
  %.pr.i85 = load ptr, ptr %5, align 8, !tbaa !246
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i86

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i86: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i84, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %i.ak = phi ptr [ %.pr.i85, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i84 ], [ %i.ah, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i87 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i1.i87, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit88, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i86
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !255
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #23
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit88

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit88:        ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i86, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.bl

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit100

bb.j:                                             ; preds = %.lr.ph, %_ZN2cv3dnn22ElementWiseIntDispatchINS0_12PowerFunctorEE5applyERKS2_RKNS_3MatERS6_.exit
  %i.ar = phi ptr [ %i.f, %.lr.ph ], [ %i.gk, %_ZN2cv3dnn22ElementWiseIntDispatchINS0_12PowerFunctorEE5applyERKS2_RKNS_3MatERS6_.exit ]
  %.0127 = phi i64 [ 0, %.lr.ph ], [ %i.gi, %_ZN2cv3dnn22ElementWiseIntDispatchINS0_12PowerFunctorEE5applyERKS2_RKNS_3MatERS6_.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw [208 x i8], ptr %i.ar, i64 %.0127 ; 7 uses
  %i.at = load ptr, ptr %6, align 8, !tbaa !246
  %i.au = getelementptr inbounds nuw [208 x i8], ptr %i.at, i64 %.0127 ; 5 uses
  %i.av = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.as)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZN2cv3dnn22ElementWiseIntDispatchINS0_12PowerFunctorEE5applyERKS2_RKNS_3MatERS6_.exit, label %bb.m

bb.l:                                             ; preds = %bb.aj, %bb.m, %bb.j
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit100

bb.m:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 72 ; 2 uses
  %i.ba = invoke noundef zeroext i1 @_ZN2cveqERKNS_8MatShapeES2_(ptr noundef nonnull align 4 dereferenceable(52) %i.ay, ptr noundef nonnull align 4 dereferenceable(52) %i.az)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  br i1 %i.ba, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.56, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv3dnn16ElementWiseLayerINS0_20ChannelsPReLUFunctorEE7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES9_, ptr noundef nonnull @.str.1, i32 noundef 251) #22
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.s:                                             ; preds = %bb.p
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %7, align 8, !tbaa !94    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !95
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.r ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bc, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit100

bb.t:                                             ; preds = %bb.n
  %i.bi = load i32, ptr %i.as, align 8, !tbaa !309 ; 4 uses
  %i.bj = and i32 %i.bi, 16384
  %.not = icmp eq i32 %i.bj, 0
  br i1 %.not, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.57, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv3dnn16ElementWiseLayerINS0_20ChannelsPReLUFunctorEE7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES9_, ptr noundef nonnull @.str.1, i32 noundef 251) #22
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.y:                                             ; preds = %bb.v
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %9, align 8, !tbaa !94    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.y
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !95
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.x
  %.pn56 = phi { ptr, i32 } [ %i.bk, %bb.x ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %i.bl, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit100

bb.z:                                             ; preds = %bb.t
  %i.br = load i32, ptr %i.au, align 8, !tbaa !309 ; 4 uses
  %i.bs = and i32 %i.br, 16384
  %.not113 = icmp eq i32 %i.bs, 0
  br i1 %.not113, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv3dnn16ElementWiseLayerINS0_20ChannelsPReLUFunctorEE7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES9_, ptr noundef nonnull @.str.1, i32 noundef 251) #22
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

bb.ae:                                            ; preds = %bb.ab
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %11, align 8, !tbaa !94   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %bb.ae
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !95
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92, %bb.ad
  %.pn58 = phi { ptr, i32 } [ %i.bt, %bb.ad ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %i.bu, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit100

bb.af:                                            ; preds = %bb.z
  %i.ca = xor i32 %i.br, %i.bi
  %i.cb = and i32 %i.ca, 4095
  %.not.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.cc = and i32 %i.bi, 31                       ; 2 uses
  switch i32 %i.cc, label %bb.am [
    i32 11, label %23
    i32 4, label %23
  ]

23:                                               ; preds = %bb.ag, %bb.ag
  %24 = load float, ptr %i.g, align 8, !tbaa !547
  %25 = fcmp une float %24, 1.000000e+00
  br i1 %25, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %23
  %i.cd = load float, ptr %i.h, align 8, !tbaa !546
  %i.ce = fcmp une float %i.cd, 0.000000e+00
  br i1 %i.ce, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cf = load float, ptr %i.i, align 4, !tbaa !548 ; 2 uses
  %i.cg = fpext float %i.cf to double             ; 2 uses
  %i.ch = call double @llvm.trunc.f64(double %i.cg)
  %i.ci = fcmp oeq double %i.ch, %i.cg
  br i1 %i.ci, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.cj = fptosi float %i.cf to i64               ; 7 uses
  %i.ck = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.as)
          to label %.noexc unwind label %bb.l     ; 13 uses

.noexc:                                           ; preds = %bb.aj
  %i.cl = icmp eq i32 %i.cc, 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !252 ; 13 uses
  %i.co = ptrtoaddr ptr %i.cn to i64              ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !252 ; 13 uses
  %i.cr = ptrtoaddr ptr %i.cq to i64              ; 2 uses
  %.not42.i = icmp eq i64 %i.ck, 0                ; 2 uses
  br i1 %i.cl, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.noexc
  br i1 %.not42.i, label %_ZN2cv3dnn22ElementWiseIntDispatchINS0_12PowerFunctorEE5applyERKS2_RKNS_3MatERS6_.exit, label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %bb.ak
  %i.cs = trunc i64 %i.cj to i32                  ; 6 uses
  %min.iters.check = icmp ult i64 %i.ck, 8
  %i.ct = sub i64 %i.co, %i.cr
  %diff.check = icmp ugt i64 %i.ct, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph40.i
  %n.vec = and i64 %i.ck, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cs, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %index ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load = load <4 x i32>, ptr %i.cu, align 4, !tbaa !136
  %wide.load150 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !136
  %i.cw = mul <4 x i32> %wide.load, %broadcast.splat
  %i.cx = mul <4 x i32> %wide.load150, %broadcast.splat
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %index ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <4 x i32> %i.cw, ptr %i.cy, align 4, !tbaa !136
  store <4 x i32> %i.cx, ptr %i.cz, align 4, !tbaa !136
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !1287

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn22ElementWiseIntDispatchINS0_12PowerFunctorEE5applyERKS2_RKNS_3MatERS6_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph40.i, %middle.block
  %.03439.i.ph = phi i64 [ 0, %.lr.ph40.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter170 = and i64 %i.ck, 3                 ; 2 uses
  %lcmp.mod171.not = icmp eq i64 %xtraiter170, 0
  br i1 %lcmp.mod171.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.03439.i.prol = phi i64 [ %i.df, %scalar.ph.prol ], [ %.03439.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter172 = phi i64 [ %prol.iter172.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.03439.i.prol
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !136
  %i.dd = mul i32 %i.dc, %i.cs
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.03439.i.prol
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !136
  %i.df = add nuw i64 %.03439.i.prol, 1           ; 2 uses
  %prol.iter172.next = add i64 %prol.iter172, 1   ; 2 uses
  %prol.iter172.cmp.not = icmp eq i64 %prol.iter172.next, %xtraiter170
  br i1 %prol.iter172.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1288

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.03439.i.unr = phi i64 [ %.03439.i.ph, %scalar.ph.preheader ], [ %i.df, %scalar.ph.prol ]
  %i.dg = sub i64 %.03439.i.ph, %i.ck
  %i.dh = icmp ugt i64 %i.dg, -4
  br i1 %i.dh, label %_ZN2cv3dnn22ElementWiseIntDispatchINS0_12PowerFunctorEE5applyERKS2_RKNS_3MatERS6_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.03439.i = phi i64 [ %i.eb, %scalar.ph ], [ %.03439.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.03439.i
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !136
  %i.dk = mul i32 %i.dj, %i.cs
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.03439.i
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !136
  %i.dm = add nuw i64 %.03439.i, 1                ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !136
  %i.dp = mul i32 %i.do, %i.cs
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dm
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !136
  %i.dr = add nuw i64 %.03439.i, 2                ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !136
  %i.du = mul i32 %i.dt, %i.cs
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dr
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !136
  %i.dw = add nuw i64 %.03439.i, 3                ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !136
  %i.dz = mul i32 %i.dy, %i.cs
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dw
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !136
  %i.eb = add nuw i64 %.03439.i, 4                ; 2 uses
  %exitcond44.not.i.3 = icmp eq i64 %i.eb, %i.ck
  br i1 %exitcond44.not.i.3, label %_ZN2cv3dnn22ElementWiseIntDispatchINS0_12PowerFunctorEE5applyERKS2_RKNS_3MatERS6_.exit, label %scalar.ph, !llvm.loop !1289

bb.al:                                            ; preds = %.noexc
  br i1 %.not42.i, label %_ZN2cv3dnn22ElementWiseIntDispatchINS0_12PowerFunctorEE5applyERKS2_RKNS_3MatERS6_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.al
  %min.iters.check154 = icmp ult i64 %i.ck, 4
  %i.ec = sub i64 %i.co, %i.cr
  %diff.check152 = icmp ugt i64 %i.ec, -32
  %or.cond167 = select i1 %min.iters.check154, i1 true, i1 %diff.check152
  br i1 %or.cond167, label %.lr.ph.i.preheader168, label %vector.ph155

vector.ph155:                                     ; preds = %.lr.ph.i.preheader
  %n.vec156 = and i64 %i.ck, -4                   ; 3 uses
  %broadcast.splatinsert157 = insertelement <2 x i64> poison, i64 %i.cj, i64 0
  %broadcast.splat158 = shufflevector <2 x i64> %broadcast.splatinsert157, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body159

vector.body159:                                   ; preds = %vector.body159, %vector.ph155
  %index160 = phi i64 [ 0, %vector.ph155 ], [ %index.next163, %vector.body159 ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %index160 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %wide.load161 = load <2 x i64>, ptr %i.ed, align 8, !tbaa !97
  %wide.load162 = load <2 x i64>, ptr %i.ee, align 8, !tbaa !97
  %i.ef = mul nsw <2 x i64> %wide.load161, %broadcast.splat158
  %i.eg = mul nsw <2 x i64> %wide.load162, %broadcast.splat158
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %index160 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store <2 x i64> %i.ef, ptr %i.eh, align 8, !tbaa !97
  store <2 x i64> %i.eg, ptr %i.ei, align 8, !tbaa !97
  %index.next163 = add nuw i64 %index160, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next163, %n.vec156
  br i1 %i.ej, label %middle.block164, label %vector.body159, !llvm.loop !1290

middle.block164:                                  ; preds = %vector.body159
  %cmp.n165 = icmp eq i64 %i.ck, %n.vec156
  br i1 %cmp.n165, label %_ZN2cv3dnn22ElementWiseIntDispatchINS0_12PowerFunctorEE5applyERKS2_RKNS_3MatERS6_.exit, label %.lr.ph.i.preheader168

.lr.ph.i.preheader168:                            ; preds = %.lr.ph.i.preheader, %middle.block164
  %.038.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec156, %middle.block164 ] ; 3 uses
  %xtraiter = and i64 %i.ck, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader168, %.lr.ph.i.prol
  %.038.i.prol = phi i64 [ %i.eo, %.lr.ph.i.prol ], [ %.038.i.ph, %.lr.ph.i.preheader168 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader168 ]
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.038.i.prol
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !97
  %i.em = mul nsw i64 %i.el, %i.cj
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %.038.i.prol
  store i64 %i.em, ptr %i.en, align 8, !tbaa !97
  %i.eo = add nuw i64 %.038.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1291

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader168
  %.038.i.unr = phi i64 [ %.038.i.ph, %.lr.ph.i.preheader168 ], [ %i.eo, %.lr.ph.i.prol ]
  %i.ep = sub i64 %.038.i.ph, %i.ck
  %i.eq = icmp ugt i64 %i.ep, -4
  br i1 %i.eq, label %_ZN2cv3dnn22ElementWiseIntDispatchINS0_12PowerFunctorEE5applyERKS2_RKNS_3MatERS6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.038.i = phi i64 [ %i.fk, %.lr.ph.i ], [ %.038.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.038.i
  %i.es = load i64, ptr %i.er, align 8, !tbaa !97
  %i.et = mul nsw i64 %i.es, %i.cj
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %.038.i
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !97
  %i.ev = add nuw i64 %.038.i, 1                  ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !97
  %i.ey = mul nsw i64 %i.ex, %i.cj
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.ev
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !97
  %i.fa = add nuw i64 %.038.i, 2                  ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.fa
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !97
  %i.fd = mul nsw i64 %i.fc, %i.cj
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.fa
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !97
  %i.ff = add nuw i64 %.038.i, 3                  ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !97
  %i.fi = mul nsw i64 %i.fh, %i.cj
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.ff
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !97
  %i.fk = add nuw i64 %.038.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.fk, %i.ck
  br i1 %exitcond.not.i.3, label %_ZN2cv3dnn22ElementWiseIntDispatchINS0_12PowerFunctorEE5applyERKS2_RKNS_3MatERS6_.exit, label %.lr.ph.i, !llvm.loop !1292

bb.am:                                            ; preds = %bb.af, %bb.ah, %bb.ag, %23, %bb.ai
  %i.fl = and i32 %i.bi, 4095
  switch i32 %i.fl, label %.thread [
    i32 5, label %bb.an
    i32 6, label %bb.as
  ]

bb.an:                                            ; preds = %bb.am
  %i.fm = and i32 %i.br, 4095
  %i.fn = icmp eq i32 %i.fm, 5
  br i1 %i.fn, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %bb.an
  %i.fo = invoke noundef i32 @_ZN2cv13getNumThreadsEv()
          to label %bb.ap unwind label %bb.aq     ; 3 uses

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16ElementWiseLayerINS0_12PowerFunctorEE5PBodyE, i64 16), ptr %13, align 8, !tbaa !112
  store ptr %i.g, ptr %i.s, align 8, !tbaa !551
  store ptr %i.as, ptr %i.t, align 8, !tbaa !552
  store ptr %i.au, ptr %i.u, align 8, !tbaa !553
  store i32 %i.fo, ptr %i.v, align 8, !tbaa !554
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  store i32 0, ptr %14, align 4, !tbaa !318
  store i32 %i.fo, ptr %i.w, align 4, !tbaa !319
  %i.fp = sitofp i32 %i.fo to double
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13, double noundef %i.fp)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit100

bb.ar:                                            ; preds = %bb.ap
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit100

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %_ZN2cv3dnn22ElementWiseIntDispatchINS0_12PowerFunctorEE5applyERKS2_RKNS_3MatERS6_.exit

bb.as:                                            ; preds = %bb.am
  %i.fs = and i32 %i.br, 4095
  %i.ft = icmp eq i32 %i.fs, 6
  br i1 %i.ft, label %bb.at, label %.thread

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  invoke void @_ZN2cv3MatC1ERKNS_8MatShapeEi(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 4 dereferenceable(52) %i.az, i32 noundef 5)
          to label %bb.au unwind label %bb.az

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  store i64 0, ptr %i.k, align 8
  store i32 33619968, ptr %17, align 8, !tbaa !322
  store ptr %15, ptr %i.j, align 8, !tbaa !323
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %17, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  %i.fu = invoke noundef i32 @_ZN2cv13getNumThreadsEv()
          to label %bb.aw unwind label %bb.bb     ; 3 uses

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16ElementWiseLayerINS0_12PowerFunctorEE5PBodyE, i64 16), ptr %18, align 8, !tbaa !112
  store ptr %i.g, ptr %i.l, align 8, !tbaa !551
  store ptr %15, ptr %i.m, align 8, !tbaa !552
  store ptr %16, ptr %i.n, align 8, !tbaa !553
  store i32 %i.fu, ptr %i.o, align 8, !tbaa !554
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  store i32 0, ptr %19, align 4, !tbaa !318
  store i32 %i.fu, ptr %i.p, align 4, !tbaa !319
  %i.fv = sitofp i32 %i.fu to double
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18, double noundef %i.fv)
          to label %bb.ax unwind label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  store i64 0, ptr %i.r, align 8
  store i32 33619968, ptr %20, align 8, !tbaa !322
  store ptr %i.au, ptr %i.q, align 8, !tbaa !323
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(24) %20, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ay unwind label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %_ZN2cv3dnn22ElementWiseIntDispatchINS0_12PowerFunctorEE5applyERKS2_RKNS_3MatERS6_.exit

bb.az:                                            ; preds = %bb.at
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ba:                                            ; preds = %bb.au
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %bb.bf

bb.bb:                                            ; preds = %bb.av
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bc:                                            ; preds = %bb.aw
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.be

bb.bd:                                            ; preds = %bb.ax
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn64.pn = phi { ptr, i32 } [ %i.ga, %bb.bd ], [ %i.fz, %bb.bc ]
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bb, %bb.be, %bb.ba
  %.pn64.pn.pn.pn = phi { ptr, i32 } [ %i.fx, %bb.ba ], [ %.pn64.pn, %bb.be ], [ %i.fy, %bb.bb ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #21
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.az
  %.pn64.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn64.pn.pn.pn, %bb.bf ], [ %i.fw, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit100

.thread:                                          ; preds = %bb.am, %bb.an, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.59, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.bh unwind label %bb.bj

bb.bh:                                            ; preds = %.thread
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -210, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @__func__._ZN2cv3dnn16ElementWiseLayerINS0_20ChannelsPReLUFunctorEE7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES9_, ptr noundef nonnull @.str.1, i32 noundef 296) #22
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  unreachable

bb.bj:                                            ; preds = %.thread
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

bb.bk:                                            ; preds = %bb.bh
  %i.gc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gd = load ptr, ptr %21, align 8, !tbaa !94   ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.bk
  %i.gg = load i64, ptr %i.ge, align 8, !tbaa !95
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.bj
  %.pn60 = phi { ptr, i32 } [ %i.gb, %bb.bj ], [ %i.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %i.gc, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit100

_ZN2cv3dnn22ElementWiseIntDispatchINS0_12PowerFunctorEE5applyERKS2_RKNS_3MatERS6_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block164, %middle.block, %bb.ak, %bb.al, %bb.k, %bb.ay, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.gi = add nuw i64 %.0127, 1                   ; 2 uses
  %i.gj = load ptr, ptr %i.d, align 8, !tbaa !245
  %i.gk = load ptr, ptr %5, align 8, !tbaa !246   ; 2 uses
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = sdiv exact i64 %i.gn, 208
  %i.gp = icmp ult i64 %i.gi, %i.go
  br i1 %i.gp, label %bb.j, label %._crit_edge, !llvm.loop !1293

bb.bl:                                            ; preds = %bb.c, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit88
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !303
  %.not.i104 = icmp eq i32 %i.gr, 0
  br i1 %.not.i104, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gs = landingpad { ptr, i32 }
          catch ptr null
  %i.gt = extractvalue { ptr, i32 } %i.gs, 0
  call void @__clang_call_terminate(ptr %i.gt) #25
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

_ZNSt6vectorIfSaIfEED2Ev.exit100:                 ; preds = %bb.aq, %bb.ar, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %bb.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %bb.i
  %.pn72.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn64.pn.pn.pn.pn, %bb.bg ], [ %.pn60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %i.ax, %bb.l ], [ %.pn58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %i.fq, %bb.aq ], [ %i.fr, %bb.ar ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit100, %bb.d
  %.pn78 = phi { ptr, i32 } [ %i.c, %bb.d ], [ %.pn72.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit100 ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn78
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv3dnn16ElementWiseLayerINS0_12PowerFunctorEE14supportBackendEi(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 3
  %i.b = icmp eq i32 %1, 5
  %i.c = or i1 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv3dnn16ElementWiseLayerINS0_12PowerFunctorEE7tryFuseERNS_3PtrINS0_14dnn5_v202606055LayerEEE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = tail call noundef zeroext i1 @_ZN2cv3dnn12PowerFunctor7tryFuseERNS_3PtrINS0_14dnn5_v202606055LayerEEE(ptr noundef nonnull align 4 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn16ElementWiseLayerINS0_12PowerFunctorEE13getScaleShiftERNS_3MatES5_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNK2cv3dnn12PowerFunctor13getScaleShiftERNS_3MatES3_(ptr noundef nonnull align 4 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv3dnn16ElementWiseLayerINS0_12PowerFunctorEE15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS5_EEiRS7_SA_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606055Layer15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS4_EEiRS6_S9_(ptr noundef nonnull align 8 dereferenceable(156) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) ; 0 uses
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK2cv3dnn16ElementWiseLayerINS0_12PowerFunctorEE8getFLOPSERKSt6vectorINS_8MatShapeESaIS5_EES9_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !306  ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !307    ; 3 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 52
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = load float, ptr %i.h, align 8, !tbaa !547
  %i.j = fcmp oeq float %i.i, 1.000000e+00
  %i.k = select i1 %i.j, i64 2, i64 10            ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, %bb.a
  %.07.lcssa = phi i64 [ 0, %bb.a ], [ %i.bi, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit ]
  ret i64 %.07.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit ] ; 2 uses
  %.079 = phi i64 [ 0, %.lr.ph ], [ %i.bi, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit ]
  %i.l = getelementptr inbounds nuw [52 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !308  ; 3 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %_ZNK2cv8MatShapeixEm.exit.lr.ph.i, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit

_ZNK2cv8MatShapeixEm.exit.lr.ph.i:                ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 9 uses
  %wide.trip.count.i = zext nneg i32 %i.m to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.p = icmp ult i32 %i.m, 8
  br i1 %i.p, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new

_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new:            ; preds = %_ZNK2cv8MatShapeixEm.exit.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit.i

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new ], [ %indvars.iv.next.i.7, %_ZNK2cv8MatShapeixEm.exit.i ] ; 9 uses
  %.02127.i = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new ], [ %i.bc, %_ZNK2cv8MatShapeixEm.exit.i ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit.i ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !136
  %i.s = sext i32 %i.r to i64
  %i.t = mul i64 %.02127.i, %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !136
  %i.x = sext i32 %i.w to i64
  %i.y = mul i64 %i.t, %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !136
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul i64 %i.y, %i.ac
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !136
  %i.ah = sext i32 %i.ag to i64
  %i.ai = mul i64 %i.ad, %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !136
  %i.am = sext i32 %i.al to i64
  %i.an = mul i64 %i.ai, %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !136
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul i64 %i.an, %i.ar
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i32, ptr %i.au, align 4, !tbaa !136
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul i64 %i.as, %i.aw
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !136
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul i64 %i.ax, %i.bb                    ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !6

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i.epil.preheader:       ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i ], [ %indvars.iv.next.i.7, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ]
  %.02127.i.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i ], [ %i.bc, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ]
  %lcmp.mod18 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod18)
  br label %_ZNK2cv8MatShapeixEm.exit.i.epil

_ZNK2cv8MatShapeixEm.exit.i.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ], [ %indvars.iv.next.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil ] ; 2 uses
  %.02127.i.epil = phi i64 [ %.02127.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ], [ %i.bg, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %epil.iter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ], [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.epil
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !136
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul i64 %.02127.i.epil, %i.bf           ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit, label %_ZNK2cv8MatShapeixEm.exit.i.epil, !llvm.loop !1294

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit: ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa
  %.lcssa = phi i64 [ %i.bc, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ], [ %i.bg, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %i.bh = mul i64 %i.k, %.lcssa
  br label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit: ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit, %bb.b
  %.021.lcssa.i = phi i64 [ %i.k, %bb.b ], [ %i.bh, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit ]
end_hunk_0
