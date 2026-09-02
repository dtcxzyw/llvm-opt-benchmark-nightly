Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/sygus_extension?download=true
inline.NumInlined: 7628
inline.NumDeleted: 2644
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4cvc58internal6theory9datatypes14SygusExtension19registerSearchValueENS0_12NodeTemplateILb1EEES5_S5_jbb:bb.a

bb.i:                                             ; preds = %bb.h
  %i.q = invoke noundef zeroext i1 @_ZNK4cvc58internal5DType7isSygusEv(ptr noundef nonnull align 8 dereferenceable(448) %i.p)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  br i1 %i.q, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = load ptr, ptr %3, align 8, !tbaa !127    ; 5 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !127
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  %i.t = lshr i64 %i.s, 40
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = and i32 %i.u, 1048575                    ; 3 uses
  %i.w = icmp samesign ult i32 %i.v, 1048574
  br i1 %i.w, label %bb.l, label %bb.m, !prof !140

bb.l:                                             ; preds = %bb.k
  %i.x = add nuw nsw i32 %i.v, 1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 40
  %i.aa = and i64 %i.s, -1152920405095219201
  %i.ab = or i64 %i.z, %i.aa
  store i64 %i.ab, ptr %i.r, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.m:                                             ; preds = %bb.k
  %i.ac = icmp eq i32 %i.v, 1048574
  br i1 %i.ac, label %bb.n, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !139

bb.n:                                             ; preds = %bb.m
  %i.ad = or i64 %i.s, 1152920405095219200
  store i64 %i.ad, ptr %i.r, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i, %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.lt

bb.p:                                             ; preds = %bb.j
  %i.af = invoke noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.q unwind label %bb.aj

bb.q:                                             ; preds = %bb.p
  %i.ag = load ptr, ptr %4, align 8, !tbaa !127
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.aj, 1023                     ; 2 uses
  %i.al = icmp eq i32 %i.ak, 1023
  %i.am = select i1 %i.al, i32 -1, i32 %i.ak
  %i.an = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.am)
          to label %bb.r unwind label %bb.aj

bb.r:                                             ; preds = %bb.q
  %i.ao = icmp eq i32 %i.an, 2
  %i.ap = load i64, ptr %i.ah, align 8
  %i.aq = lshr i64 %i.ap, 32
  %i.ar = and i64 %i.aq, 67108863
  %i.as = sext i1 %i.ao to i64
  %i.at = add nsw i64 %i.ar, %i.as
  %i.au = and i64 %i.at, 4294967295
  %.not = icmp eq i64 %i.au, 0
  br i1 %.not, label %bb.ep, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE11getOperatorEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.t unwind label %bb.ak

bb.t:                                             ; preds = %bb.s
  %i.av = invoke noundef i64 @_ZN4cvc58internal6theory9datatypes5utils7indexOfENS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 %23)
          to label %bb.u unwind label %bb.al

bb.u:                                             ; preds = %bb.t
  %i.aw = load ptr, ptr %23, align 8, !tbaa !127  ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8            ; 3 uses
  %i.ay = and i64 %i.ax, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ay, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.v, !prof !139

bb.v:                                             ; preds = %bb.u
  %i.az = add i64 %i.ax, 1152920405095219200
  %i.ba = and i64 %i.az, 1152920405095219200      ; 2 uses
  %i.bb = and i64 %i.ax, -1152920405095219201
  %i.bc = or disjoint i64 %i.ba, %i.bb
  store i64 %i.bc, ptr %i.aw, align 8
  %i.bd = icmp eq i64 %i.ba, 0
  br i1 %i.bd, label %bb.w, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !139

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.u, %bb.v, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE11getOperatorEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %25, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.y unwind label %bb.am

bb.y:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 9 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !404 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !405
  %.not.i.i301 = icmp eq ptr %i.bh, %i.bj
  br i1 %.not.i.i301, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bk = load ptr, ptr %25, align 8, !tbaa !127  ; 5 uses
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !127
  %i.bl = load i64, ptr %i.bk, align 8            ; 3 uses
  %i.bm = lshr i64 %i.bl, 40
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  %i.bo = and i32 %i.bn, 1048575                  ; 3 uses
  %i.bp = icmp samesign ult i32 %i.bo, 1048574
  br i1 %i.bp, label %bb.aa, label %bb.ab, !prof !140

bb.aa:                                            ; preds = %bb.z
  %i.bq = add nuw nsw i32 %i.bo, 1
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 40
  %i.bt = and i64 %i.bl, -1152920405095219201
  %i.bu = or i64 %i.bs, %i.bt
  store i64 %i.bu, ptr %i.bk, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.bv = icmp eq i32 %i.bo, 1048574
  br i1 %i.bv, label %bb.ac, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, !prof !139

bb.ac:                                            ; preds = %bb.ab
  %i.bw = or i64 %i.bl, 1152920405095219200
  store i64 %i.bw, ptr %i.bk, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i unwind label %bb.an

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i: ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.bx = load ptr, ptr %i.bg, align 8, !tbaa !404
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.by, ptr %i.bg, align 8, !tbaa !404
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit

bb.ad:                                            ; preds = %bb.y
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit unwind label %bb.an

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, %bb.ad
  %i.bz = load ptr, ptr %25, align 8, !tbaa !127  ; 3 uses
  %i.ca = load i64, ptr %i.bz, align 8            ; 3 uses
  %i.cb = and i64 %i.ca, 1152920405095219200
  %.not.i.i304 = icmp eq i64 %i.cb, 1152920405095219200
  br i1 %.not.i.i304, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit305, label %bb.ae, !prof !139

bb.ae:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit
  %i.cc = add i64 %i.ca, 1152920405095219200
  %i.cd = and i64 %i.cc, 1152920405095219200      ; 2 uses
  %i.ce = and i64 %i.ca, -1152920405095219201
  %i.cf = or disjoint i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.bz, align 8
  %i.cg = icmp eq i64 %i.cd, 0
  br i1 %i.cg, label %bb.af, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit305, !prof !139

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit305 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit305: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  %i.cj = load ptr, ptr %4, align 8, !tbaa !127
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = and i32 %i.cm, 1023                     ; 2 uses
  %i.co = icmp eq i32 %i.cn, 1023
  %i.cp = select i1 %i.co, i32 -1, i32 %i.cn
  %i.cq = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.cp)
          to label %bb.ah unwind label %bb.ap

bb.ah:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit305
  %i.cr = icmp eq i32 %i.cq, 2
  %i.cs = load i64, ptr %i.ck, align 8
  %i.ct = lshr i64 %i.cs, 32
  %57 = and i64 %i.ct, 67108863
  %58 = sext i1 %i.cr to i64
  %59 = add nsw i64 %57, %58                      ; 2 uses
  %.not200.not660.not = icmp eq i64 %59, 0
  br i1 %.not200.not660.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ah
  %i.cu = and i64 %i.av, 4294967295
  %i.cv = add i32 %5, 1
  %not. = xor i1 %6, true
  %wide.trip.count = and i64 %59, 4294967295
  br label %bb.aq

bb.ai:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit340
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.aq, !llvm.loop !873

bb.aj:                                            ; preds = %bb.et, %bb.q, %bb.p
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.lt

bb.ak:                                            ; preds = %bb.s
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.lt

bb.al:                                            ; preds = %bb.t
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #25
  br label %bb.lt

bb.am:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.ad, %bb.ac
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #25
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn = phi { ptr, i32 } [ %i.da, %bb.an ], [ %i.cz, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  br label %bb.eo

bb.ap:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit305
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.aq:                                            ; preds = %.lr.ph, %bb.ai
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ai ] ; 5 uses
  %.0177661 = phi i8 [ 0, %.lr.ph ], [ %.1178, %bb.ai ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  %i.dc = load ptr, ptr %22, align 8, !tbaa !366  ; 8 uses
  store ptr %i.dc, ptr %28, align 8, !tbaa !366
  %i.dd = load i64, ptr %i.dc, align 8            ; 3 uses
  %i.de = lshr i64 %i.dd, 40
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = and i32 %i.df, 1048575                  ; 3 uses
  %i.dh = icmp samesign ult i32 %i.dg, 1048574
  br i1 %i.dh, label %bb.ar, label %bb.as, !prof !140

bb.ar:                                            ; preds = %bb.aq
  %i.di = add nuw nsw i32 %i.dg, 1
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = shl nuw nsw i64 %i.dj, 40
  %i.dl = and i64 %i.dd, -1152920405095219201
  %i.dm = or i64 %i.dk, %i.dl
  store i64 %i.dm, ptr %i.dc, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit

bb.as:                                            ; preds = %bb.aq
  %i.dn = icmp eq i32 %i.dg, 1048574
  br i1 %i.dn, label %bb.at, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit, !prof !139

bb.at:                                            ; preds = %bb.as
  %i.do = or i64 %i.dd, 1152920405095219200
  store i64 %i.do, ptr %i.dc, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dc)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit unwind label %bb.cn

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit:          ; preds = %bb.as, %bb.ar, %bb.at
  %i.dp = invoke noundef nonnull align 8 dereferenceable(264) ptr @_ZNK4cvc58internal5DTypeixEm(ptr noundef nonnull align 8 dereferenceable(448) %i.p, i64 noundef %i.cu)
          to label %bb.au unwind label %bb.co

bb.au:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  invoke void @_ZNK4cvc58internal6theory9datatypes14SygusExtension19getSelectorInternalENS0_8TypeNodeERKNS0_16DTypeConstructorEm(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %27, ptr noundef nonnull align 8 dereferenceable(1264) %1, ptr noundef nonnull align 8 %28, ptr noundef nonnull align 8 dereferenceable(264) %i.dp, i64 noundef %indvars.iv)
          to label %bb.av unwind label %bb.co

bb.av:                                            ; preds = %bb.au
  %i.dq = load ptr, ptr %27, align 8, !tbaa !127  ; 2 uses
  %i.dr = load ptr, ptr %3, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25, !noalias !888
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !382, !noalias !888
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %19, ptr noundef %i.dt, i32 noundef 227)
          to label %.noexc309 unwind label %bb.cp

.noexc309:                                        ; preds = %bb.av
  store ptr %i.dq, ptr %20, align 8, !tbaa !150, !noalias !888
  %i.du = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %19, ptr noundef nonnull align 8 %20)
          to label %bb.aw unwind label %bb.az, !noalias !888

bb.aw:                                            ; preds = %.noexc309
  store ptr %i.dr, ptr %21, align 8, !tbaa !150, !noalias !888
  %i.dv = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.du, ptr noundef nonnull align 8 %21)
          to label %bb.ax unwind label %bb.ba, !noalias !888 ; 0 uses

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %26, ptr noundef nonnull align 8 dereferenceable(124) %19)
          to label %bb.bc unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.az:                                            ; preds = %.noexc309
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.aw
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %.pn5.i = phi { ptr, i32 } [ %i.dw, %bb.ay ], [ %i.dy, %bb.ba ], [ %i.dx, %bb.az ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25, !noalias !888
  br label %.body

bb.bc:                                            ; preds = %bb.ax
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25, !noalias !888
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  %i.dz = load ptr, ptr %27, align 8, !tbaa !127  ; 3 uses
  %i.ea = load i64, ptr %i.dz, align 8            ; 3 uses
  %i.eb = and i64 %i.ea, 1152920405095219200
  %.not.i.i310 = icmp eq i64 %i.eb, 1152920405095219200
  br i1 %.not.i.i310, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit311, label %bb.bd, !prof !139

bb.bd:                                            ; preds = %bb.bc
  %i.ec = add i64 %i.ea, 1152920405095219200
  %i.ed = and i64 %i.ec, 1152920405095219200      ; 2 uses
  %i.ee = and i64 %i.ea, -1152920405095219201
  %i.ef = or disjoint i64 %i.ed, %i.ee
  store i64 %i.ef, ptr %i.dz, align 8
  %i.eg = icmp eq i64 %i.ed, 0
  br i1 %i.eg, label %bb.be, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit311, !prof !139

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit311 unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit311: ; preds = %bb.bc, %bb.bd, %bb.be
  %i.ej = load i64, ptr %i.dc, align 8            ; 3 uses
  %i.ek = and i64 %i.ej, 1152920405095219200
  %.not.i.i312 = icmp eq i64 %i.ek, 1152920405095219200
  br i1 %.not.i.i312, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.bg, !prof !139

bb.bg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit311
  %i.el = add i64 %i.ej, 1152920405095219200
  %i.em = and i64 %i.el, 1152920405095219200      ; 2 uses
  %i.en = and i64 %i.ej, -1152920405095219201
  %i.eo = or disjoint i64 %i.em, %i.en
  store i64 %i.eo, ptr %i.dc, align 8
  %i.ep = icmp eq i64 %i.em, 0
  br i1 %i.ep, label %bb.bh, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !139

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dc)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @__clang_call_terminate(ptr %i.er) #26
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit311, %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  %i.es = load ptr, ptr %2, align 8, !tbaa !127   ; 5 uses
  store ptr %i.es, ptr %30, align 8, !tbaa !127
  %i.et = load i64, ptr %i.es, align 8            ; 3 uses
  %i.eu = lshr i64 %i.et, 40
  %i.ev = trunc nuw nsw i64 %i.eu to i32
  %i.ew = and i32 %i.ev, 1048575                  ; 3 uses
  %i.ex = icmp samesign ult i32 %i.ew, 1048574
  br i1 %i.ex, label %bb.bj, label %bb.bk, !prof !140

end_hunk_0
