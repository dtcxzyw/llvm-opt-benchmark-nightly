Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/sygus_extension?download=true
inline.NumInlined: 7628
inline.NumDeleted: 2644
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4cvc58internal6theory9datatypes14SygusExtension21registerSymBreakLemmaENS0_8TypeNodeENS0_12NodeTemplateILb1EEEjS6_:bb.a

.critedge.i69:                                    ; preds = %bb.e, %_ZNSt3mapIN4cvc58internal8TypeNodeES_ImSt6vectorINS1_12NodeTemplateILb1EEESaIS5_EESt4lessImESaISt4pairIKmS7_EEES8_IS2_ESaISA_IKS2_SE_EEE11lower_boundERSG_.exit.i, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory9datatypes14SygusExtension11SearchCacheESt4lessIS3_ESaISt4pairIKS3_S7_EEEixERSB_.exit
  %.08.lcssa.i.i.i11.i70 = phi ptr [ %.19.i.i.i.i63, %bb.e ], [ %.19.i.i.i.i63, %_ZNSt3mapIN4cvc58internal8TypeNodeES_ImSt6vectorINS1_12NodeTemplateILb1EEESaIS5_EESt4lessImESaISt4pairIKmS7_EEES8_IS2_ESaISA_IKS2_SE_EEE11lower_boundERSG_.exit.i ], [ %i.y, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory9datatypes14SygusExtension11SearchCacheESt4lessIS3_ESaISt4pairIKS3_S7_EEEixERSB_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  store ptr %1, ptr %17, align 8, !tbaa !432
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.an = call ptr @_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_St3mapImSt6vectorINS1_12NodeTemplateILb1EEESaIS8_EESt4lessImESaIS3_IKmSA_EEEESt10_Select1stISH_ESB_IS2_ESaISH_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESR_IJEEEEESt17_Rb_tree_iteratorISH_ESt23_Rb_tree_const_iteratorISH_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr %.08.lcssa.i.i.i11.i70, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 1 dereferenceable(1) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %_ZNSt3mapIN4cvc58internal8TypeNodeES_ImSt6vectorINS1_12NodeTemplateILb1EEESaIS5_EESt4lessImESaISt4pairIKmS7_EEES8_IS2_ESaISA_IKS2_SE_EEEixERSG_.exit

_ZNSt3mapIN4cvc58internal8TypeNodeES_ImSt6vectorINS1_12NodeTemplateILb1EEESaIS5_EESt4lessImESaISt4pairIKmS7_EEES8_IS2_ESaISA_IKS2_SE_EEEixERSG_.exit: ; preds = %bb.e, %.critedge.i69
  %.sroa.06.0.i68 = phi ptr [ %i.an, %.critedge.i69 ], [ %.19.i.i.i.i63, %bb.e ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i68, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ap = zext i32 %3 to i64                      ; 3 uses
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !457
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i68, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !131 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i68, i64 48 ; 3 uses
  %.not10.i.i.i.i71 = icmp eq ptr %i.ar, null
  br i1 %.not10.i.i.i.i71, label %.critedge.i81, label %.lr.ph.i.i.i.i72

.lr.ph.i.i.i.i72:                                 ; preds = %_ZNSt3mapIN4cvc58internal8TypeNodeES_ImSt6vectorINS1_12NodeTemplateILb1EEESaIS5_EESt4lessImESaISt4pairIKmS7_EEES8_IS2_ESaISA_IKS2_SE_EEEixERSG_.exit, %.lr.ph.i.i.i.i72
  %.012.i.i.i.i73 = phi ptr [ %.1.i.i.i.i78, %.lr.ph.i.i.i.i72 ], [ %i.ar, %_ZNSt3mapIN4cvc58internal8TypeNodeES_ImSt6vectorINS1_12NodeTemplateILb1EEESaIS5_EESt4lessImESaISt4pairIKmS7_EEES8_IS2_ESaISA_IKS2_SE_EEEixERSG_.exit ] ; 3 uses
  %.0811.i.i.i.i74 = phi ptr [ %.19.i.i.i.i75, %.lr.ph.i.i.i.i72 ], [ %i.as, %_ZNSt3mapIN4cvc58internal8TypeNodeES_ImSt6vectorINS1_12NodeTemplateILb1EEESaIS5_EESt4lessImESaISt4pairIKmS7_EEES8_IS2_ESaISA_IKS2_SE_EEEixERSG_.exit ]
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i73, i64 32
  %i.au = load i64, ptr %i.at, align 8, !tbaa !457
  %i.av = icmp ult i64 %i.au, %i.ap               ; 2 uses
  %.19.i.i.i.i75 = select i1 %i.av, ptr %.0811.i.i.i.i74, ptr %.012.i.i.i.i73 ; 6 uses
  %.1.in.v.i.i.i.i76 = select i1 %i.av, i64 24, i64 16
  %.1.in.i.i.i.i77 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i73, i64 %.1.in.v.i.i.i.i76
  %.1.i.i.i.i78 = load ptr, ptr %.1.in.i.i.i.i77, align 8, !tbaa !368 ; 2 uses
  %.not.i.i.i.i79 = icmp eq ptr %.1.i.i.i.i78, null
  br i1 %.not.i.i.i.i79, label %_ZNSt3mapImSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessImESaISt4pairIKmS6_EEE11lower_boundERSA_.exit.i, label %.lr.ph.i.i.i.i72, !llvm.loop !904

_ZNSt3mapImSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessImESaISt4pairIKmS6_EEE11lower_boundERSA_.exit.i: ; preds = %.lr.ph.i.i.i.i72
  %i.aw = icmp eq ptr %.19.i.i.i.i75, %i.as
  br i1 %i.aw, label %.critedge.i81, label %bb.f

bb.f:                                             ; preds = %_ZNSt3mapImSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessImESaISt4pairIKmS6_EEE11lower_boundERSA_.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i75, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !457
  %i.az = icmp ugt i64 %i.ay, %i.ap
  br i1 %i.az, label %.critedge.i81, label %_ZNSt3mapImSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessImESaISt4pairIKmS6_EEEixEOm.exit

.critedge.i81:                                    ; preds = %bb.f, %_ZNSt3mapImSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessImESaISt4pairIKmS6_EEE11lower_boundERSA_.exit.i, %_ZNSt3mapIN4cvc58internal8TypeNodeES_ImSt6vectorINS1_12NodeTemplateILb1EEESaIS5_EESt4lessImESaISt4pairIKmS7_EEES8_IS2_ESaISA_IKS2_SE_EEEixERSG_.exit
  %.08.lcssa.i.i.i11.i82 = phi ptr [ %.19.i.i.i.i75, %bb.f ], [ %.19.i.i.i.i75, %_ZNSt3mapImSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessImESaISt4pairIKmS6_EEE11lower_boundERSA_.exit.i ], [ %i.as, %_ZNSt3mapIN4cvc58internal8TypeNodeES_ImSt6vectorINS1_12NodeTemplateILb1EEESaIS5_EESt4lessImESaISt4pairIKmS7_EEES8_IS2_ESaISA_IKS2_SE_EEEixERSG_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  store ptr %i.a, ptr %15, align 8, !tbaa !459, !alias.scope !914
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.ba = call ptr @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS6_EEESt10_Select1stIS9_ESt4lessImESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, ptr %.08.lcssa.i.i.i11.i82, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 1 dereferenceable(1) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %_ZNSt3mapImSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessImESaISt4pairIKmS6_EEEixEOm.exit

_ZNSt3mapImSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessImESaISt4pairIKmS6_EEEixEOm.exit: ; preds = %bb.f, %.critedge.i81
  %.sroa.06.0.i80 = phi ptr [ %i.ba, %.critedge.i81 ], [ %.19.i.i.i.i75, %bb.f ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i80, i64 48 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !404 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i80, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !405
  %.not.i83 = icmp eq ptr %i.bc, %i.be
  br i1 %.not.i83, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapImSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessImESaISt4pairIKmS6_EEEixEOm.exit
  %i.bf = load ptr, ptr %2, align 8, !tbaa !127   ; 5 uses
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !127
  %i.bg = load i64, ptr %i.bf, align 8            ; 3 uses
  %i.bh = lshr i64 %i.bg, 40
  %i.bi = trunc nuw nsw i64 %i.bh to i32
  %i.bj = and i32 %i.bi, 1048575                  ; 3 uses
  %i.bk = icmp samesign ult i32 %i.bj, 1048574
  br i1 %i.bk, label %bb.h, label %bb.i, !prof !140

bb.h:                                             ; preds = %bb.g
  %i.bl = add nuw nsw i32 %i.bj, 1
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 40
  %i.bo = and i64 %i.bg, -1152920405095219201
  %i.bp = or i64 %i.bn, %i.bo
  store i64 %i.bp, ptr %i.bf, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.bq = icmp eq i32 %i.bj, 1048574
  br i1 %i.bq, label %bb.j, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, !prof !139

bb.j:                                             ; preds = %bb.i
  %i.br = or i64 %i.bg, 1152920405095219200
  store i64 %i.br, ptr %i.bf, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bf)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.bs = load ptr, ptr %i.bb, align 8, !tbaa !404
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bt, ptr %i.bb, align 8, !tbaa !404
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit

bb.k:                                             ; preds = %_ZNSt3mapImSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessImESaISt4pairIKmS6_EEEixEOm.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i80, i64 40
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  %i.bv = load ptr, ptr %1, align 8, !tbaa !366   ; 5 uses
  store ptr %i.bv, ptr %22, align 8, !tbaa !366
  %i.bw = load i64, ptr %i.bv, align 8            ; 3 uses
  %i.bx = lshr i64 %i.bw, 40
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = and i32 %i.by, 1048575                  ; 3 uses
  %i.ca = icmp samesign ult i32 %i.bz, 1048574
  br i1 %i.ca, label %bb.l, label %bb.m, !prof !140

bb.l:                                             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  %i.cb = add nuw nsw i32 %i.bz, 1
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 40
  %i.ce = and i64 %i.bw, -1152920405095219201
  %i.cf = or i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.bv, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit

bb.m:                                             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  %i.cg = icmp eq i32 %i.bz, 1048574
  br i1 %i.cg, label %bb.n, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit, !prof !139

bb.n:                                             ; preds = %bb.m
  %i.ch = or i64 %i.bw, 1152920405095219200
  store i64 %i.ch, ptr %i.bv, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bv)
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit:          ; preds = %bb.l, %bb.m, %bb.n
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !112, !noalias !915
  invoke void @_ZN4cvc58internal6theory11quantifiers11TermDbSygus10getFreeVarERKNS0_8TypeNodeEm(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.498") align 8 %21, ptr noundef nonnull align 8 dereferenceable(920) %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef 0)
          to label %_ZN4cvc58internal6theory9datatypes14SygusExtension10getFreeVarENS0_8TypeNodeE.exit unwind label %bb.y

_ZN4cvc58internal6theory9datatypes14SygusExtension10getFreeVarENS0_8TypeNodeE.exit: ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.ck = load ptr, ptr %22, align 8, !tbaa !366  ; 3 uses
  %i.cl = load i64, ptr %i.ck, align 8            ; 3 uses
  %i.cm = and i64 %i.cl, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.cm, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.o, !prof !139

bb.o:                                             ; preds = %_ZN4cvc58internal6theory9datatypes14SygusExtension10getFreeVarENS0_8TypeNodeE.exit
  %i.cn = add i64 %i.cl, 1152920405095219200
  %i.co = and i64 %i.cn, 1152920405095219200      ; 2 uses
  %i.cp = and i64 %i.cl, -1152920405095219201
  %i.cq = or disjoint i64 %i.co, %i.cp
  store i64 %i.cq, ptr %i.ck, align 8
  %i.cr = icmp eq i64 %i.co, 0
  br i1 %i.cr, label %bb.p, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !139

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ck)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #26
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %_ZN4cvc58internal6theory9datatypes14SygusExtension10getFreeVarENS0_8TypeNodeE.exit, %bb.o, %bb.p
  %i.cu = load ptr, ptr %4, align 8, !tbaa !127   ; 8 uses
  store ptr %i.cu, ptr %23, align 8, !tbaa !127
  %i.cv = load i64, ptr %i.cu, align 8            ; 3 uses
  %i.cw = lshr i64 %i.cv, 40
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = and i32 %i.cx, 1048575                  ; 3 uses
  %i.cz = icmp samesign ult i32 %i.cy, 1048574
  br i1 %i.cz, label %bb.r, label %bb.s, !prof !140

bb.r:                                             ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %i.da = add nuw nsw i32 %i.cy, 1
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = shl nuw nsw i64 %i.db, 40
  %i.dd = and i64 %i.cv, -1152920405095219201
  %i.de = or i64 %i.dc, %i.dd
  store i64 %i.de, ptr %i.cu, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.s:                                             ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %i.df = icmp eq i32 %i.cy, 1048574
  br i1 %i.df, label %bb.t, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !139

bb.t:                                             ; preds = %bb.s
  %i.dg = or i64 %i.cv, 1152920405095219200
  store i64 %i.dg, ptr %i.cu, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cu)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.t, %bb.s, %bb.r
  %i.dh = invoke noundef i32 @_ZN4cvc58internal6theory9datatypes14SygusExtension22getSearchSizeForAnchorENS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(1264) %0, ptr noundef nonnull align 8 %23)
          to label %bb.u unwind label %bb.z       ; 2 uses

bb.u:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.di = load i64, ptr %i.cu, align 8            ; 3 uses
  %i.dj = and i64 %i.di, 1152920405095219200
  %.not.i.i84 = icmp eq i64 %i.dj, 1152920405095219200
  br i1 %.not.i.i84, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.v, !prof !139

bb.v:                                             ; preds = %bb.u
  %i.dk = add i64 %i.di, 1152920405095219200
  %i.dl = and i64 %i.dk, 1152920405095219200      ; 2 uses
  %i.dm = and i64 %i.di, -1152920405095219201
  %i.dn = or disjoint i64 %i.dl, %i.dm
  store i64 %i.dn, ptr %i.cu, align 8
  %i.do = icmp eq i64 %i.dl, 0
  br i1 %i.do, label %bb.w, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !139

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cu)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.u, %bb.v, %bb.w
  %i.dr = call noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 0 uses
  %.not183 = icmp slt i32 %i.dh, %3
  br i1 %.not183, label %._crit_edge, label %.lr.ph185

.lr.ph185:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 24
  %29 = add i32 %i.dh, 1
  %30 = sub i32 %29, %3
  br label %bb.aa

._crit_edge:                                      ; preds = %.loopexit, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  ret void

bb.y:                                             ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #25
  br label %bb.cr

bb.z:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #25
  br label %bb.cr

bb.aa:                                            ; preds = %.lr.ph185, %.loopexit
  %.0184 = phi i32 [ 0, %.lr.ph185 ], [ %i.mk, %.loopexit ] ; 3 uses
  %i.ed = load ptr, ptr %i.ds, align 8, !tbaa !131 ; 2 uses
  %.not10.i.i.i.i85 = icmp eq ptr %i.ed, null
  br i1 %.not10.i.i.i.i85, label %.critedge.i95, label %.lr.ph.i.i.i.i86

.lr.ph.i.i.i.i86:                                 ; preds = %bb.aa
  %i.ee = load ptr, ptr %1, align 8, !tbaa !366
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = and i64 %i.ef, 1099511627775            ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph.i.i.i.i86
  %.012.i.i.i.i87 = phi ptr [ %i.ed, %.lr.ph.i.i.i.i86 ], [ %.1.i.i.i.i92, %bb.ab ] ; 3 uses
  %.0811.i.i.i.i88 = phi ptr [ %i.dt, %.lr.ph.i.i.i.i86 ], [ %.19.i.i.i.i89, %bb.ab ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i87, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !366
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = and i64 %i.ej, 1099511627775
  %i.el = icmp samesign ult i64 %i.ek, %i.eg      ; 2 uses
  %.19.i.i.i.i89 = select i1 %i.el, ptr %.0811.i.i.i.i88, ptr %.012.i.i.i.i87 ; 6 uses
  %.1.in.v.i.i.i.i90 = select i1 %i.el, i64 24, i64 16
  %.1.in.i.i.i.i91 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i87, i64 %.1.in.v.i.i.i.i90
  %.1.i.i.i.i92 = load ptr, ptr %.1.in.i.i.i.i91, align 8, !tbaa !368 ; 2 uses
  %.not.i.i.i.i93 = icmp eq ptr %.1.i.i.i.i92, null
  br i1 %.not.i.i.i.i93, label %_ZNSt3mapIN4cvc58internal8TypeNodeES_IjSt6vectorINS1_12NodeTemplateILb1EEESaIS5_EESt4lessIjESaISt4pairIKjS7_EEES8_IS2_ESaISA_IKS2_SE_EEE11lower_boundERSG_.exit.i, label %bb.ab, !llvm.loop !20

_ZNSt3mapIN4cvc58internal8TypeNodeES_IjSt6vectorINS1_12NodeTemplateILb1EEESaIS5_EESt4lessIjESaISt4pairIKjS7_EEES8_IS2_ESaISA_IKS2_SE_EEE11lower_boundERSG_.exit.i: ; preds = %bb.ab
  %i.em = icmp eq ptr %.19.i.i.i.i89, %i.dt
  br i1 %i.em, label %.critedge.i95, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt3mapIN4cvc58internal8TypeNodeES_IjSt6vectorINS1_12NodeTemplateILb1EEESaIS5_EESt4lessIjESaISt4pairIKjS7_EEES8_IS2_ESaISA_IKS2_SE_EEE11lower_boundERSG_.exit.i
  %i.en = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i89, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !366
  %i.ep = load i64, ptr %i.eo, align 8
  %i.eq = and i64 %i.ep, 1099511627775
  %i.er = icmp samesign ult i64 %i.eg, %i.eq
  br i1 %i.er, label %.critedge.i95, label %bb.ad

.critedge.i95:                                    ; preds = %bb.ac, %_ZNSt3mapIN4cvc58internal8TypeNodeES_IjSt6vectorINS1_12NodeTemplateILb1EEESaIS5_EESt4lessIjESaISt4pairIKjS7_EEES8_IS2_ESaISA_IKS2_SE_EEE11lower_boundERSG_.exit.i, %bb.aa
  %.08.lcssa.i.i.i11.i96 = phi ptr [ %.19.i.i.i.i89, %bb.ac ], [ %.19.i.i.i.i89, %_ZNSt3mapIN4cvc58internal8TypeNodeES_IjSt6vectorINS1_12NodeTemplateILb1EEESaIS5_EESt4lessIjESaISt4pairIKjS7_EEES8_IS2_ESaISA_IKS2_SE_EEE11lower_boundERSG_.exit.i ], [ %i.dt, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  store ptr %1, ptr %13, align 8, !tbaa !432
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.es = call ptr @_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_St3mapIjSt6vectorINS1_12NodeTemplateILb1EEESaIS8_EESt4lessIjESaIS3_IKjSA_EEEESt10_Select1stISH_ESB_IS2_ESaISH_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESR_IJEEEEESt17_Rb_tree_iteratorISH_ESt23_Rb_tree_const_iteratorISH_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr %.08.lcssa.i.i.i11.i96, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 1 dereferenceable(1) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.ad

bb.ad:                                            ; preds = %.critedge.i95, %bb.ac
  %.sroa.06.0.i94 = phi ptr [ %i.es, %.critedge.i95 ], [ %.19.i.i.i.i89, %bb.ac ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i94, i64 56
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !131 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i94, i64 48 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessIjESaISt4pairIKjS6_EEE4findERSA_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ad, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.eu, %bb.ad ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.ev, %bb.ad ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !167
  %i.ey = icmp ult i32 %i.ex, %.0184              ; 2 uses
  %.19.i.i.i = select i1 %i.ey, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.ey, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !368 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS6_EEESt10_Select1stIS9_ESt4lessIjESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !21

_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS6_EEESt10_Select1stIS9_ESt4lessIjESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.ez = icmp eq ptr %.19.i.i.i, %i.ev
  br i1 %i.ez, label %_ZNSt3mapIjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessIjESaISt4pairIKjS6_EEE4findERSA_.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS6_EEESt10_Select1stIS9_ESt4lessIjESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !167
  %i.fc = icmp ult i32 %.0184, %i.fb
  %spec.select.i.i = select i1 %i.fc, ptr %i.ev, ptr %.19.i.i.i
  br label %_ZNSt3mapIjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessIjESaISt4pairIKjS6_EEE4findERSA_.exit

_ZNSt3mapIjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessIjESaISt4pairIKjS6_EEE4findERSA_.exit: ; preds = %bb.ae, %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS6_EEESt10_Select1stIS9_ESt4lessIjESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.ad
  %.sroa.0.0.i.i = phi ptr [ %i.ev, %bb.ad ], [ %i.ev, %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS6_EEESt10_Select1stIS9_ESt4lessIjESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i ], [ %spec.select.i.i, %bb.ae ] ; 3 uses
  %i.fd = load ptr, ptr %i.ds, align 8, !tbaa !131 ; 2 uses
  %.not10.i.i.i.i98 = icmp eq ptr %i.fd, null
  br i1 %.not10.i.i.i.i98, label %.critedge.i109, label %.lr.ph.i.i.i.i99

.lr.ph.i.i.i.i99:                                 ; preds = %_ZNSt3mapIjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessIjESaISt4pairIKjS6_EEE4findERSA_.exit
  %i.fe = load ptr, ptr %1, align 8, !tbaa !366
  %i.ff = load i64, ptr %i.fe, align 8
  %i.fg = and i64 %i.ff, 1099511627775            ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.lr.ph.i.i.i.i99
  %.012.i.i.i.i100 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i99 ], [ %.1.i.i.i.i105, %bb.af ] ; 3 uses
  %.0811.i.i.i.i101 = phi ptr [ %i.dt, %.lr.ph.i.i.i.i99 ], [ %.19.i.i.i.i102, %bb.af ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i100, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !366
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = and i64 %i.fj, 1099511627775
  %i.fl = icmp samesign ult i64 %i.fk, %i.fg      ; 2 uses
  %.19.i.i.i.i102 = select i1 %i.fl, ptr %.0811.i.i.i.i101, ptr %.012.i.i.i.i100 ; 6 uses
  %.1.in.v.i.i.i.i103 = select i1 %i.fl, i64 24, i64 16
  %.1.in.i.i.i.i104 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i100, i64 %.1.in.v.i.i.i.i103
  %.1.i.i.i.i105 = load ptr, ptr %.1.in.i.i.i.i104, align 8, !tbaa !368 ; 2 uses
  %.not.i.i.i.i106 = icmp eq ptr %.1.i.i.i.i105, null
  br i1 %.not.i.i.i.i106, label %_ZNSt3mapIN4cvc58internal8TypeNodeES_IjSt6vectorINS1_12NodeTemplateILb1EEESaIS5_EESt4lessIjESaISt4pairIKjS7_EEES8_IS2_ESaISA_IKS2_SE_EEE11lower_boundERSG_.exit.i107, label %bb.af, !llvm.loop !20

_ZNSt3mapIN4cvc58internal8TypeNodeES_IjSt6vectorINS1_12NodeTemplateILb1EEESaIS5_EESt4lessIjESaISt4pairIKjS7_EEES8_IS2_ESaISA_IKS2_SE_EEE11lower_boundERSG_.exit.i107: ; preds = %bb.af
  %i.fm = icmp eq ptr %.19.i.i.i.i102, %i.dt
  br i1 %i.fm, label %.critedge.i109, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt3mapIN4cvc58internal8TypeNodeES_IjSt6vectorINS1_12NodeTemplateILb1EEESaIS5_EESt4lessIjESaISt4pairIKjS7_EEES8_IS2_ESaISA_IKS2_SE_EEE11lower_boundERSG_.exit.i107
  %i.fn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i102, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !366
  %i.fp = load i64, ptr %i.fo, align 8
  %i.fq = and i64 %i.fp, 1099511627775
  %i.fr = icmp samesign ult i64 %i.fg, %i.fq
  br i1 %i.fr, label %.critedge.i109, label %bb.ah

.critedge.i109:                                   ; preds = %bb.ag, %_ZNSt3mapIN4cvc58internal8TypeNodeES_IjSt6vectorINS1_12NodeTemplateILb1EEESaIS5_EESt4lessIjESaISt4pairIKjS7_EEES8_IS2_ESaISA_IKS2_SE_EEE11lower_boundERSG_.exit.i107, %_ZNSt3mapIjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessIjESaISt4pairIKjS6_EEE4findERSA_.exit
  %.08.lcssa.i.i.i11.i110 = phi ptr [ %.19.i.i.i.i102, %bb.ag ], [ %.19.i.i.i.i102, %_ZNSt3mapIN4cvc58internal8TypeNodeES_IjSt6vectorINS1_12NodeTemplateILb1EEESaIS5_EESt4lessIjESaISt4pairIKjS7_EEES8_IS2_ESaISA_IKS2_SE_EEE11lower_boundERSG_.exit.i107 ], [ %i.dt, %_ZNSt3mapIjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessIjESaISt4pairIKjS6_EEE4findERSA_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  store ptr %1, ptr %11, align 8, !tbaa !432
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.fs = call ptr @_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_St3mapIjSt6vectorINS1_12NodeTemplateILb1EEESaIS8_EESt4lessIjESaIS3_IKjSA_EEEESt10_Select1stISH_ESB_IS2_ESaISH_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESR_IJEEEEESt17_Rb_tree_iteratorISH_ESt23_Rb_tree_const_iteratorISH_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr %.08.lcssa.i.i.i11.i110, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.ah

bb.ah:                                            ; preds = %.critedge.i109, %bb.ag
  %.sroa.06.0.i108 = phi ptr [ %i.fs, %.critedge.i109 ], [ %.19.i.i.i.i102, %bb.ag ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i108, i64 48
  %.not177 = icmp eq ptr %.sroa.0.0.i.i, %i.ft
  br i1 %.not177, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 40
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !370 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 48
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !370 ; 2 uses
  %.not178181 = icmp eq ptr %i.fv, %i.fx
  br i1 %.not178181, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ai, %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit.thread
  %.sroa.0163.0182 = phi ptr [ %i.mj, %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit.thread ], [ %i.fv, %bb.ai ] ; 6 uses
  %i.fy = call noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 256
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !351, !nonnull !352, !align !353
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 44
  %i.gc = load i8, ptr %i.gb, align 4, !tbaa !358, !range !359, !noundef !352
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.aj, label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit

bb.aj:                                            ; preds = %.lr.ph
  %i.ge = load ptr, ptr %i.du, align 8, !tbaa !123 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 104
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !155
  %.not.not.i.i.i.i.i = icmp eq i64 %i.gg, 0
  br i1 %.not.not.i.i.i.i.i, label %bb.ak, label %.noexc113

bb.ak:                                            ; preds = %bb.aj
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 96
  %i.gi = load ptr, ptr %.sroa.0163.0182, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %i.gh, %bb.ak ], [ %.sroa.06.0.i.i.i.i.i, %bb.am ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !144 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !127
  %i.gl = icmp eq ptr %i.gi, %i.gk
  br i1 %i.gl, label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, label %bb.al, !llvm.loop !3

.noexc113:                                        ; preds = %bb.aj
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ge, i64 80 ; 2 uses
  %i.gn = call noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.gm, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0163.0182) ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.ge, i64 88
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !122 ; 2 uses
  %i.gq = urem i64 %i.gn, %i.gp                   ; 2 uses
  %i.gr = load ptr, ptr %i.gm, align 8, !tbaa !121
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.gq
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !152 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit.thread, label %bb.an

bb.an:                                            ; preds = %.noexc113
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !144 ; 3 uses
  %i.gv = load ptr, ptr %.sroa.0163.0182, align 8 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !154
  %i.gz = icmp eq i64 %i.gn, %i.gy
  %i.ha = load ptr, ptr %i.gw, align 8
  %i.hb = icmp eq ptr %i.gv, %i.ha
  %i.hc = select i1 %i.gz, i1 %i.hb, i1 false
  br i1 %i.hc, label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, label %.lr.ph.i.i.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory9datatypes14SygusExtension21registerSymBreakLemmaENS0_8TypeNodeENS0_12NodeTemplateILb1EEEjS6_:bb.a

bb.bu:                                            ; preds = %bb.bt
  %i.ke = add i64 %i.kc, 1152920405095219200
  %i.kf = and i64 %i.ke, 1152920405095219200      ; 2 uses
  %i.kg = and i64 %i.kc, -1152920405095219201
  %i.kh = or disjoint i64 %i.kf, %i.kg
  store i64 %i.kh, ptr %i.ka, align 8
  %i.ki = icmp eq i64 %i.kf, 0
  br i1 %i.ki, label %bb.bv, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !139

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ka)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %bb.cg

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.bv, %bb.bu, %bb.bt
  %i.kj = load ptr, ptr %27, align 8, !tbaa !127  ; 5 uses
  store ptr %i.kj, ptr %24, align 8, !tbaa !127
  %i.kk = load i64, ptr %i.kj, align 8            ; 3 uses
  %i.kl = lshr i64 %i.kk, 40
  %i.km = trunc nuw nsw i64 %i.kl to i32
  %i.kn = and i32 %i.km, 1048575                  ; 3 uses
  %i.ko = icmp samesign ult i32 %i.kn, 1048574
  br i1 %i.ko, label %bb.bw, label %bb.bx, !prof !140

bb.bw:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.kp = add nuw nsw i32 %i.kn, 1
  %i.kq = zext nneg i32 %i.kp to i64
  %i.kr = shl nuw nsw i64 %i.kq, 40
  %i.ks = and i64 %i.kk, -1152920405095219201
  %i.kt = or i64 %i.kr, %i.ks
  store i64 %i.kt, ptr %i.kj, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.bx:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.ku = icmp eq i32 %i.kn, 1048574
  br i1 %i.ku, label %bb.by, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !139

bb.by:                                            ; preds = %bb.bx
  %i.kv = or i64 %i.kk, 1152920405095219200
  store i64 %i.kv, ptr %i.kj, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.cg

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.bx, %bb.bw, %bb.bs, %bb.by
  %i.kw = load ptr, ptr %27, align 8, !tbaa !127  ; 3 uses
  %i.kx = load i64, ptr %i.kw, align 8            ; 3 uses
  %i.ky = and i64 %i.kx, 1152920405095219200
  %.not.i.i130 = icmp eq i64 %i.ky, 1152920405095219200
  br i1 %.not.i.i130, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit132, label %bb.bz, !prof !139

bb.bz:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.kz = add i64 %i.kx, 1152920405095219200
  %i.la = and i64 %i.kz, 1152920405095219200      ; 2 uses
  %i.lb = and i64 %i.kx, -1152920405095219201
  %i.lc = or disjoint i64 %i.la, %i.lb
  store i64 %i.lc, ptr %i.kw, align 8
  %i.ld = icmp eq i64 %i.la, 0
  br i1 %i.ld, label %bb.ca, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit132, !prof !139

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit132 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.le = landingpad { ptr, i32 }
          catch ptr null
  %i.lf = extractvalue { ptr, i32 } %i.le, 0
  call void @__clang_call_terminate(ptr %i.lf) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit132: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.bz, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  %.pre = load ptr, ptr %24, align 8, !tbaa !127
  br label %bb.ch

bb.cc:                                            ; preds = %bb.at
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cd:                                            ; preds = %bb.bb
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.ce:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit117
  %i.li = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #25
  br label %bb.cq

bb.cf:                                            ; preds = %bb.bl
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %.body124

bb.cg:                                            ; preds = %bb.by, %bb.bv
  %i.lk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #25
  br label %.body124

.body124:                                         ; preds = %bb.cf, %bb.br, %bb.cg
  %.pn27 = phi { ptr, i32 } [ %i.lk, %bb.cg ], [ %i.lj, %bb.cf ], [ %.pn5.i, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  br label %.body121

bb.ch:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit132, %bb.bk
  %i.ll = phi ptr [ %.pre, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit132 ], [ %.pre188, %bb.bk ]
  %i.lm = load ptr, ptr %i.ea, align 8, !tbaa !406, !nonnull !352, !align !353
  store ptr %i.ll, ptr %28, align 8, !tbaa !150
  %i.ln = invoke noundef zeroext i1 @_ZN4cvc58internal6theory22TheoryInferenceManager5lemmaENS0_12NodeTemplateILb0EEENS1_11InferenceIdENS1_13LemmaPropertyE(ptr noundef nonnull align 8 dereferenceable(240) %i.lm, ptr noundef nonnull align 8 %28, i32 noundef 141, i32 noundef 0)
          to label %bb.ci unwind label %bb.cp     ; 0 uses

bb.ci:                                            ; preds = %bb.ch
  %i.lo = load ptr, ptr %25, align 8, !tbaa !127  ; 3 uses
  %i.lp = load i64, ptr %i.lo, align 8            ; 3 uses
  %i.lq = and i64 %i.lp, 1152920405095219200
  %.not.i.i133 = icmp eq i64 %i.lq, 1152920405095219200
  br i1 %.not.i.i133, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit135, label %bb.cj, !prof !139

bb.cj:                                            ; preds = %bb.ci
  %i.lr = add i64 %i.lp, 1152920405095219200
  %i.ls = and i64 %i.lr, 1152920405095219200      ; 2 uses
  %i.lt = and i64 %i.lp, -1152920405095219201
  %i.lu = or disjoint i64 %i.ls, %i.lt
  store i64 %i.lu, ptr %i.lo, align 8
  %i.lv = icmp eq i64 %i.ls, 0
  br i1 %i.lv, label %bb.ck, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit135, !prof !139

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lo)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit135 unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lw = landingpad { ptr, i32 }
          catch ptr null
  %i.lx = extractvalue { ptr, i32 } %i.lw, 0
  call void @__clang_call_terminate(ptr %i.lx) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit135: ; preds = %bb.ci, %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  %i.ly = load ptr, ptr %24, align 8, !tbaa !127  ; 3 uses
  %i.lz = load i64, ptr %i.ly, align 8            ; 3 uses
  %i.ma = and i64 %i.lz, 1152920405095219200
  %.not.i.i136 = icmp eq i64 %i.ma, 1152920405095219200
  br i1 %.not.i.i136, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit138, label %bb.cm, !prof !139

bb.cm:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit135
  %i.mb = add i64 %i.lz, 1152920405095219200
  %i.mc = and i64 %i.mb, 1152920405095219200      ; 2 uses
  %i.md = and i64 %i.lz, -1152920405095219201
  %i.me = or disjoint i64 %i.mc, %i.md
  store i64 %i.me, ptr %i.ly, align 8
  %i.mf = icmp eq i64 %i.mc, 0
  br i1 %i.mf, label %bb.cn, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit138, !prof !139

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ly)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit138 unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.mg = landingpad { ptr, i32 }
          catch ptr null
  %i.mh = extractvalue { ptr, i32 } %i.mg, 0
  call void @__clang_call_terminate(ptr %i.mh) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit138: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit135, %bb.cm, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit.thread

bb.cp:                                            ; preds = %bb.ch
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %.body121

.body121:                                         ; preds = %bb.bj, %bb.cp, %.body124
  %.pn29 = phi { ptr, i32 } [ %i.mi, %bb.cp ], [ %.pn27, %.body124 ], [ %i.jp, %bb.bj ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #25
  br label %bb.cq

bb.cq:                                            ; preds = %.body121, %bb.ce, %bb.cd
  %.pn29.pn = phi { ptr, i32 } [ %.pn29, %.body121 ], [ %i.li, %bb.ce ], [ %i.lh, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #25
  br label %.body

.body:                                            ; preds = %bb.cc, %bb.ax, %bb.cq
  %.pn29.pn.pn = phi { ptr, i32 } [ %.pn29.pn, %bb.cq ], [ %i.lg, %bb.cc ], [ %i.il, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %bb.cr

_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.al, %.noexc113, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit138
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.0163.0182, i64 8 ; 2 uses
  %.not178 = icmp eq ptr %i.mj, %i.fx
  br i1 %.not178, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit.thread, %bb.ai, %bb.ah
  %i.mk = add nuw i32 %.0184, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.mk, %30
  br i1 %exitcond.not, label %._crit_edge, label %bb.aa, !llvm.loop !913

bb.cr:                                            ; preds = %bb.z, %.body, %bb.y
  %.pn29.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eb, %bb.y ], [ %.pn29.pn.pn, %.body ], [ %i.ec, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  resume { ptr, i32 } %.pn29.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4cvc58internal6theory9datatypes14SygusExtension22getSearchSizeForAnchorENS0_12NodeTemplateILb1EEE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1264) %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !131  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !127
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 1099511627775              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !127
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 1099511627775
  %i.k = icmp samesign ult i64 %i.j, %i.f         ; 2 uses
  %.19.i.i.i = select i1 %i.k, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.k, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !368 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, label %bb.b, !llvm.loop !10

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %bb.b
  %i.l = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.l, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !127
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, 1099511627775
  %i.q = icmp samesign ult i64 %i.f, %i.p
  %spec.select.i.i = select i1 %i.q, ptr %i.c, ptr %.19.i.i.i
  br label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit: ; preds = %bb.a, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, %bb.c
  %.sroa.0.0.i.i = phi ptr [ %i.c, %bb.a ], [ %i.c, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i ], [ %spec.select.i.i, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !127  ; 7 uses
  %i.t = load i64, ptr %i.s, align 8              ; 4 uses
  %i.u = lshr i64 %i.t, 40
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = and i32 %i.v, 1048575                    ; 3 uses
  %i.x = icmp samesign ult i32 %i.w, 1048574
  br i1 %i.x, label %bb.d, label %bb.e, !prof !140

bb.d:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit
  %i.y = add nuw nsw i32 %i.w, 1
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 40
  %i.ab = and i64 %i.t, -1152920405095219201
  %i.ac = or i64 %i.aa, %i.ab                     ; 2 uses
  store i64 %i.ac, ptr %i.s, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.e:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit
  %i.ad = icmp eq i32 %i.w, 1048574
  br i1 %i.ad, label %bb.f, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !139

bb.f:                                             ; preds = %bb.e
  %i.ae = or i64 %i.t, 1152920405095219200
  store i64 %i.ae, ptr %i.s, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.s)
  %.pre.pre = load i64, ptr %i.s, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre = phi i64 [ %i.ac, %bb.d ], [ %i.t, %bb.e ], [ %.pre.pre, %bb.f ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !131 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 5 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not10.i.i.i.i, label %bb.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.ai = and i64 %.pre, 1099511627775            ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.g ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.g ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !127
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = and i64 %i.al, 1099511627775
  %i.an = icmp samesign ult i64 %i.am, %i.ai      ; 2 uses
  %.19.i.i.i.i = select i1 %i.an, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.an, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !368 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St10unique_ptrINS1_6theory9datatypes14SygusExtension25SygusSizeDecisionStrategyESt14default_deleteISA_EEESt10_Select1stISE_ESt4lessIS3_ESaISE_EE14_M_lower_boundEPSt13_Rb_tree_nodeISE_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %bb.g, !llvm.loop !11

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St10unique_ptrINS1_6theory9datatypes14SygusExtension25SygusSizeDecisionStrategyESt14default_deleteISA_EEESt10_Select1stISE_ESt4lessIS3_ESaISE_EE14_M_lower_boundEPSt13_Rb_tree_nodeISE_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %bb.g
  %i.ao = icmp eq ptr %.19.i.i.i.i, %i.ah
  br i1 %i.ao, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St10unique_ptrINS1_6theory9datatypes14SygusExtension25SygusSizeDecisionStrategyESt14default_deleteISA_EEESt10_Select1stISE_ESt4lessIS3_ESaISE_EE14_M_lower_boundEPSt13_Rb_tree_nodeISE_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !127
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = and i64 %i.ar, 1099511627775
  %i.at = icmp samesign ult i64 %i.ai, %i.as
  %spec.select.i.i.i = select i1 %i.at, ptr %i.ah, ptr %.19.i.i.i.i
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St10unique_ptrINS1_6theory9datatypes14SygusExtension25SygusSizeDecisionStrategyESt14default_deleteISA_EEESt10_Select1stISE_ESt4lessIS3_ESaISE_EE14_M_lower_boundEPSt13_Rb_tree_nodeISE_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %.sroa.0.0.i.i.i = phi ptr [ %i.ah, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit ], [ %i.ah, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St10unique_ptrINS1_6theory9datatypes14SygusExtension25SygusSizeDecisionStrategyESt14default_deleteISA_EEESt10_Select1stISE_ESt4lessIS3_ESaISE_EE14_M_lower_boundEPSt13_Rb_tree_nodeISE_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i ], [ %spec.select.i.i.i, %bb.h ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !384
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 200
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !401
  %i.ay = and i64 %.pre, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ay, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.j, !prof !139

bb.j:                                             ; preds = %bb.i
  %i.az = add i64 %.pre, 1152920405095219200
  %i.ba = and i64 %i.az, 1152920405095219200      ; 2 uses
  %i.bb = and i64 %.pre, -1152920405095219201
  %i.bc = or disjoint i64 %i.ba, %i.bb
  store i64 %i.bc, ptr %i.s, align 8
  %i.bd = icmp eq i64 %i.ba, 0
  br i1 %i.bd, label %bb.k, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !139

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.i, %bb.j, %bb.k
  ret i32 %i.ax
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory9datatypes14SygusExtension20addSymBreakLemmasForENS0_8TypeNodeENS0_12NodeTemplateILb0EEEjNS5_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(1264) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr nofree noundef readonly align 8 captures(none) %2, i32 noundef %3, ptr noundef align 8 %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.498", align 8 ; 4 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.498", align 8 ; 4 uses
  %8 = alloca %"class.std::tuple.1276", align 8   ; 4 uses
  %9 = alloca %"class.std::tuple.1279", align 1   ; 3 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate.498", align 8 ; 5 uses
  %13 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  %15 = alloca %"class.std::unordered_map.804", align 8 ; 13 uses
  %16 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %17 = alloca %"class.cvc5::internal::NodeTemplate.498", align 8 ; 2 uses
  %18 = alloca %"class.cvc5::internal::NodeTemplate.498", align 8 ; 2 uses
  %19 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %20 = alloca %"class.cvc5::internal::NodeTemplate.498", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !131  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !127
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 1099511627775              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !127
  %i.j = load i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, 1099511627775
  %i.l = icmp samesign ult i64 %i.k, %i.g         ; 2 uses
  %.19.i.i.i.i = select i1 %i.l, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.l, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !368 ; 2 uses
end_hunk_1
