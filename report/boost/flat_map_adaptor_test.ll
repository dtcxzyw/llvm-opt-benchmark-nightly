Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_map_adaptor_test?download=true
inline.NumInlined: 32430
inline.NumDeleted: 3898
loop-unroll.NumCompletelyUnrolled: 264
loop-unroll.NumRuntimeUnrolled: 252
loop-unroll.NumUnrolled: 523
begin_hunk_0_@_ZN5boost9container4test13map_test_stepINS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEENS0_13flat_multimapIiiS5_S9_EESt8multimapIiiS5_SE_EEEiRT_RT0_RT1_RT2_:.preheader243.preheader
.lr.ph.i183:                                      ; preds = %.preheader.i181, %bb.t
  %.01826.i184 = phi ptr [ %i.ga, %bb.t ], [ %i.fo, %.preheader.i181 ] ; 2 uses
  %.sroa.0.025.i185 = phi ptr [ %i.gb, %bb.t ], [ %i.fq, %.preheader.i181 ] ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i185, i64 32
  %i.fu = load <2 x i32>, ptr %.01826.i184, align 4
  %i.fv = load <2 x i32>, ptr %i.ft, align 4
  %i.fw = icmp eq <2 x i32> %i.fu, %i.fv          ; 2 uses
  %i.fx = extractelement <2 x i1> %i.fw, i64 0
  %i.fy = extractelement <2 x i1> %i.fw, i64 1
  %i.fz = select i1 %i.fx, i1 %i.fy, i1 false
  br i1 %i.fz, label %bb.t, label %_ZN5boost9containereqERKNS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESA_.exit

bb.t:                                             ; preds = %.lr.ph.i183
  %i.ga = getelementptr inbounds nuw i8, ptr %.01826.i184, i64 8 ; 2 uses
  %i.gb = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.025.i185) #27
  %.not21.i186 = icmp eq ptr %i.ga, %i.fp
  br i1 %.not21.i186, label %_ZN5boost9container4test20CheckEqualContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit187, label %.lr.ph.i183, !llvm.loop !285

_ZN5boost9container4test20CheckEqualContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit187: ; preds = %bb.t, %.preheader.i181
  %i.gc = invoke noundef zeroext i1 @_ZN5boost9containerltERKNS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESA_(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %i.ce)
          to label %bb.u unwind label %bb.o

bb.u:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit187
  br i1 %i.gc, label %_ZN5boost9containereqERKNS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESA_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gd = invoke noundef zeroext i1 @_ZN5boost9containergtERKNS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESA_(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %i.ce)
          to label %bb.w unwind label %bb.o

bb.w:                                             ; preds = %bb.v
  br i1 %i.gd, label %_ZN5boost9containereqERKNS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESA_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ge = invoke noundef zeroext i1 @_ZN5boost9containerleERKNS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESA_(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %i.ce)
          to label %bb.y unwind label %bb.o

bb.y:                                             ; preds = %bb.x
  br i1 %i.ge, label %bb.z, label %_ZN5boost9containereqERKNS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESA_.exit

bb.z:                                             ; preds = %bb.y
  %i.gf = invoke noundef zeroext i1 @_ZN5boost9containergeERKNS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESA_(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %i.ce)
          to label %bb.aa unwind label %bb.o

bb.aa:                                            ; preds = %bb.z
  br i1 %i.gf, label %bb.ab, label %_ZN5boost9containereqERKNS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESA_.exit

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store ptr %5, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr %i.cb, ptr %14, align 8
  invoke void @_ZN5boost7movelib11make_uniqueINS_9container8flat_mapIiiSt4lessIiENS2_8devectorISt4pairIiiEvvEEEEJNS_13move_iteratorIPNS2_3dtl4pairIiiEEEESG_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::unique_ptr.228") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %6, ptr %i.a, align 8, !tbaa !352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.cc, ptr %i.b, align 8, !tbaa !352
  invoke void @_ZN5boost7movelib11make_uniqueISt3mapIiiSt4lessIiESaISt4pairIKiiEEEJPS7_SA_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::unique_ptr.0") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  store ptr %7, ptr %17, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  store ptr %i.cd, ptr %18, align 8
  invoke void @_ZN5boost7movelib11make_uniqueINS_9container13flat_multimapIiiSt4lessIiENS2_8devectorISt4pairIiiEvvEEEEJNS_13move_iteratorIPNS2_3dtl4pairIiiEEEESG_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::unique_ptr.232") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.ae unwind label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %6, ptr %i.c, align 8, !tbaa !352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.cc, ptr %i.d, align 8, !tbaa !352
  invoke void @_ZN5boost7movelib11make_uniqueISt8multimapIiiSt4lessIiESaISt4pairIKiiEEEJPS7_SA_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::unique_ptr.8") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.gg = load ptr, ptr %12, align 8, !tbaa !557
  %i.gh = load ptr, ptr %15, align 8, !tbaa !356
  %i.gi = load ptr, ptr %16, align 8, !tbaa !559
  %i.gj = load ptr, ptr %19, align 8, !tbaa !360
  %i.gk = invoke noundef zeroext i1 @_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(32) %i.gg, ptr noundef nonnull align 8 dereferenceable(48) %i.gh)
          to label %bb.ag unwind label %bb.ap

bb.ag:                                            ; preds = %bb.af
  br i1 %i.gk, label %bb.al, label %.invoke

bb.ah:                                            ; preds = %bb.ab
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.bi

bb.ai:                                            ; preds = %bb.ac
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.bh

bb.aj:                                            ; preds = %bb.ad
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.bg

bb.ak:                                            ; preds = %bb.ae
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.bf

bb.al:                                            ; preds = %bb.ag
  %i.gp = invoke noundef zeroext i1 @_ZN5boost9container4test20CheckEqualContainersINS0_13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(32) %i.gi, ptr noundef nonnull align 8 dereferenceable(48) %i.gj)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  br i1 %i.gp, label %bb.an, label %.invoke

.invoke:                                          ; preds = %bb.am, %bb.ag
  %i.gq = phi ptr [ @.str.9, %bb.ag ], [ @.str.10, %bb.am ]
  %i.gr = phi i64 [ 43, %bb.ag ], [ 53, %bb.am ]
  %i.gs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.gq, i64 noundef %i.gr)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193.invoke unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193.invoke: ; preds = %.invoke
  %i.gt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.ap, !inline_history !0 ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.gu = invoke noundef i32 @_ZN5boost9container4test24map_move_assignable_onlyINS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEENS0_13flat_multimapIiiS5_S9_EESt8multimapIiiS5_SE_EEEiNS_11move_detail17integral_constantIbLb1EEE()
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %.not = icmp eq i32 %i.gu, 0
  br i1 %.not, label %bb.aq, label %_ZNSolsEPFRSoS_E.exit

bb.ap:                                            ; preds = %.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193.invoke, %bb.af, %bb.al, %bb.an
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i32 0, ptr %i.e, align 4, !tbaa !338
  %i.gw = invoke noundef i64 @_ZN5boost9container8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE5eraseERKi(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %bb.ar unwind label %bb.ba     ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  %i.gx = invoke noundef i64 @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE5eraseERKi(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE5eraseERKi.exit unwind label %bb.ba ; 0 uses

_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE5eraseERKi.exit: ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i32 0, ptr %i.f, align 4, !tbaa !338
  %i.gy = invoke noundef i64 @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE5eraseERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.ck, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5eraseERS3_.exit unwind label %bb.bb ; 0 uses

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5eraseERS3_.exit: ; preds = %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE5eraseERKi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store i32 0, ptr %i.g, align 4, !tbaa !338
  %i.gz = invoke noundef i64 @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE5eraseERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.cs, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5eraseERS3_.exit unwind label %bb.bc ; 0 uses

_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5eraseERS3_.exit: ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5eraseERS3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %_ZNSolsEPFRSoS_E.exit

_ZNSolsEPFRSoS_E.exit:                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193.invoke, %bb.ao, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5eraseERS3_.exit
  %.063 = phi i32 [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193.invoke ], [ 0, %_ZNSt8multimapIiiSt4lessIiESaISt4pairIKiiEEE5eraseERS3_.exit ], [ 1, %bb.ao ]
  call void @_ZN5boost7movelib10unique_ptrISt8multimapIiiSt4lessIiESaISt4pairIKiiEEENS0_14default_deleteIS9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @_ZN5boost7movelib10unique_ptrINS_9container13flat_multimapIiiSt4lessIiENS2_8devectorISt4pairIiiEvvEEEENS0_14default_deleteISA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN5boost7movelib10unique_ptrISt3mapIiiSt4lessIiESaISt4pairIKiiEEENS0_14default_deleteIS9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @_ZN5boost7movelib10unique_ptrINS_9container8flat_mapIiiSt4lessIiENS2_8devectorISt4pairIiiEvvEEEENS0_14default_deleteISA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZN5boost9containereqERKNS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESA_.exit

_ZN5boost9containereqERKNS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESA_.exit: ; preds = %.lr.ph.i, %.lr.ph.i142, %.lr.ph.i162, %.lr.ph.i183, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i178, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i157, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i137, %bb.p, %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i, %bb.i, %bb.h, %bb.aa, %bb.y, %bb.w, %bb.u, %_ZNSolsEPFRSoS_E.exit
  %.1 = phi i32 [ 1, %bb.aa ], [ 1, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i157 ], [ 1, %bb.u ], [ %.063, %_ZNSolsEPFRSoS_E.exit ], [ 1, %bb.y ], [ 1, %bb.w ], [ 1, %.lr.ph.i142 ], [ 1, %.lr.ph.i183 ], [ 1, %.lr.ph.i162 ], [ 1, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i178 ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i ], [ 1, %_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_.exit ], [ 1, %bb.p ], [ 1, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit.i137 ], [ 1, %.lr.ph.i ]
  %i.ha = load ptr, ptr %11, align 8, !tbaa !360  ; 4 uses
  %.not.i199 = icmp eq ptr %i.ha, null
  br i1 %.not.i199, label %_ZN5boost7movelib10unique_ptrISt8multimapIiiSt4lessIiESaISt4pairIKiiEEENS0_14default_deleteIS9_EEED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZN5boost9containereqERKNS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESA_.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !327
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ha, ptr noundef %i.hc)
          to label %_ZNK5boost7movelib14default_deleteISt8multimapIiiSt4lessIiESaISt4pairIKiiEEEEclIS9_EENS_8move_upd18enable_defdel_callIT_S9_vE4typeEPSE_.exit.i unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hd = landingpad { ptr, i32 }
          catch ptr null
  %i.he = extractvalue { ptr, i32 } %i.hd, 0
  call void @__clang_call_terminate(ptr %i.he) #25
  unreachable

_ZNK5boost7movelib14default_deleteISt8multimapIiiSt4lessIiESaISt4pairIKiiEEEEclIS9_EENS_8move_upd18enable_defdel_callIT_S9_vE4typeEPSE_.exit.i: ; preds = %bb.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef 48) #26
  br label %_ZN5boost7movelib10unique_ptrISt8multimapIiiSt4lessIiESaISt4pairIKiiEEENS0_14default_deleteIS9_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrISt8multimapIiiSt4lessIiESaISt4pairIKiiEEENS0_14default_deleteIS9_EEED2Ev.exit: ; preds = %_ZN5boost9containereqERKNS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESA_.exit, %_ZNK5boost7movelib14default_deleteISt8multimapIiiSt4lessIiESaISt4pairIKiiEEEEclIS9_EENS_8move_upd18enable_defdel_callIT_S9_vE4typeEPSE_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.hf = load ptr, ptr %10, align 8, !tbaa !559  ; 4 uses
  %.not.i200 = icmp eq ptr %i.hf, null
  br i1 %.not.i200, label %_ZN5boost7movelib10unique_ptrINS_9container13flat_multimapIiiSt4lessIiENS2_8devectorISt4pairIiiEvvEEEENS0_14default_deleteISA_EEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZN5boost7movelib10unique_ptrISt8multimapIiiSt4lessIiESaISt4pairIKiiEEENS0_14default_deleteIS9_EEED2Ev.exit
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !548 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK5boost7movelib14default_deleteINS_9container13flat_multimapIiiSt4lessIiENS2_8devectorISt4pairIiiEvvEEEEEclISA_EENS_8move_upd18enable_defdel_callIT_SA_vE4typeEPSF_.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !549
  %i.hj = shl i64 %i.hi, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hj) #23
  br label %_ZNK5boost7movelib14default_deleteINS_9container13flat_multimapIiiSt4lessIiENS2_8devectorISt4pairIiiEvvEEEEEclISA_EENS_8move_upd18enable_defdel_callIT_SA_vE4typeEPSF_.exit.i

_ZNK5boost7movelib14default_deleteINS_9container13flat_multimapIiiSt4lessIiENS2_8devectorISt4pairIiiEvvEEEEEclISA_EENS_8move_upd18enable_defdel_callIT_SA_vE4typeEPSF_.exit.i: ; preds = %bb.av, %bb.au
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef 32) #26
  br label %_ZN5boost7movelib10unique_ptrINS_9container13flat_multimapIiiSt4lessIiENS2_8devectorISt4pairIiiEvvEEEENS0_14default_deleteISA_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrINS_9container13flat_multimapIiiSt4lessIiENS2_8devectorISt4pairIiiEvvEEEENS0_14default_deleteISA_EEED2Ev.exit: ; preds = %_ZN5boost7movelib10unique_ptrISt8multimapIiiSt4lessIiESaISt4pairIKiiEEENS0_14default_deleteIS9_EEED2Ev.exit, %_ZNK5boost7movelib14default_deleteINS_9container13flat_multimapIiiSt4lessIiENS2_8devectorISt4pairIiiEvvEEEEEclISA_EENS_8move_upd18enable_defdel_callIT_SA_vE4typeEPSF_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.hk = load ptr, ptr %9, align 8, !tbaa !356   ; 4 uses
  %.not.i201 = icmp eq ptr %i.hk, null
  br i1 %.not.i201, label %_ZN5boost7movelib10unique_ptrISt3mapIiiSt4lessIiESaISt4pairIKiiEEENS0_14default_deleteIS9_EEED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZN5boost7movelib10unique_ptrINS_9container13flat_multimapIiiSt4lessIiENS2_8devectorISt4pairIiiEvvEEEENS0_14default_deleteISA_EEED2Ev.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !327
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.hk, ptr noundef %i.hm)
          to label %_ZNK5boost7movelib14default_deleteISt3mapIiiSt4lessIiESaISt4pairIKiiEEEEclIS9_EENS_8move_upd18enable_defdel_callIT_S9_vE4typeEPSE_.exit.i unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hn = landingpad { ptr, i32 }
          catch ptr null
  %i.ho = extractvalue { ptr, i32 } %i.hn, 0
  call void @__clang_call_terminate(ptr %i.ho) #25
  unreachable

_ZNK5boost7movelib14default_deleteISt3mapIiiSt4lessIiESaISt4pairIKiiEEEEclIS9_EENS_8move_upd18enable_defdel_callIT_S9_vE4typeEPSE_.exit.i: ; preds = %bb.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef 48) #26
  br label %_ZN5boost7movelib10unique_ptrISt3mapIiiSt4lessIiESaISt4pairIKiiEEENS0_14default_deleteIS9_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrISt3mapIiiSt4lessIiESaISt4pairIKiiEEENS0_14default_deleteIS9_EEED2Ev.exit: ; preds = %_ZN5boost7movelib10unique_ptrINS_9container13flat_multimapIiiSt4lessIiENS2_8devectorISt4pairIiiEvvEEEENS0_14default_deleteISA_EEED2Ev.exit, %_ZNK5boost7movelib14default_deleteISt3mapIiiSt4lessIiESaISt4pairIKiiEEEEclIS9_EENS_8move_upd18enable_defdel_callIT_S9_vE4typeEPSE_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.hp = load ptr, ptr %8, align 8, !tbaa !557   ; 4 uses
  %.not.i202 = icmp eq ptr %i.hp, null
  br i1 %.not.i202, label %_ZN5boost7movelib10unique_ptrINS_9container8flat_mapIiiSt4lessIiENS2_8devectorISt4pairIiiEvvEEEENS0_14default_deleteISA_EEED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN5boost7movelib10unique_ptrISt3mapIiiSt4lessIiESaISt4pairIKiiEEENS0_14default_deleteIS9_EEED2Ev.exit
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !548 ; 2 uses
  %.not.i.i.i.i.i.i.i.i203 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i.i.i.i.i.i203, label %_ZNK5boost7movelib14default_deleteINS_9container8flat_mapIiiSt4lessIiENS2_8devectorISt4pairIiiEvvEEEEEclISA_EENS_8move_upd18enable_defdel_callIT_SA_vE4typeEPSF_.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !549
  %i.ht = shl i64 %i.hs, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %i.ht) #23
  br label %_ZNK5boost7movelib14default_deleteINS_9container8flat_mapIiiSt4lessIiENS2_8devectorISt4pairIiiEvvEEEEEclISA_EENS_8move_upd18enable_defdel_callIT_SA_vE4typeEPSF_.exit.i

_ZNK5boost7movelib14default_deleteINS_9container8flat_mapIiiSt4lessIiENS2_8devectorISt4pairIiiEvvEEEEEclISA_EENS_8move_upd18enable_defdel_callIT_SA_vE4typeEPSF_.exit.i: ; preds = %bb.az, %bb.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.hp, i64 noundef 32) #26
  br label %_ZN5boost7movelib10unique_ptrINS_9container8flat_mapIiiSt4lessIiENS2_8devectorISt4pairIiiEvvEEEENS0_14default_deleteISA_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrINS_9container8flat_mapIiiSt4lessIiENS2_8devectorISt4pairIiiEvvEEEENS0_14default_deleteISA_EEED2Ev.exit: ; preds = %_ZN5boost7movelib10unique_ptrISt3mapIiiSt4lessIiESaISt4pairIKiiEEENS0_14default_deleteIS9_EEED2Ev.exit, %_ZNK5boost7movelib14default_deleteINS_9container8flat_mapIiiSt4lessIiENS2_8devectorISt4pairIiiEvvEEEEEclISA_EENS_8move_upd18enable_defdel_callIT_SA_vE4typeEPSF_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret i32 %.1

bb.ba:                                            ; preds = %bb.ar, %bb.aq
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bb:                                            ; preds = %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEE5eraseERKi.exit
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br label %bb.bd

bb.bc:                                            ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5eraseERS3_.exit
  %i.hw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %.pn102 = phi { ptr, i32 } [ %i.hw, %bb.bc ], [ %i.hv, %bb.bb ], [ %i.hu, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ap
  %.pn102.pn = phi { ptr, i32 } [ %.pn102, %bb.bd ], [ %i.gv, %bb.ap ]
  call void @_ZN5boost7movelib10unique_ptrISt8multimapIiiSt4lessIiESaISt4pairIKiiEEENS0_14default_deleteIS9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #23
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.ak
  %.pn102.pn.pn = phi { ptr, i32 } [ %.pn102.pn, %bb.be ], [ %i.go, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @_ZN5boost7movelib10unique_ptrINS_9container13flat_multimapIiiSt4lessIiENS2_8devectorISt4pairIiiEvvEEEENS0_14default_deleteISA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #23
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.aj
  %.pn102.pn.pn.pn = phi { ptr, i32 } [ %.pn102.pn.pn, %bb.bf ], [ %i.gn, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN5boost7movelib10unique_ptrISt3mapIiiSt4lessIiESaISt4pairIKiiEEENS0_14default_deleteIS9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #23
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.ai
  %.pn102.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn102.pn.pn.pn, %bb.bg ], [ %i.gm, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @_ZN5boost7movelib10unique_ptrINS_9container8flat_mapIiiSt4lessIiENS2_8devectorISt4pairIiiEvvEEEENS0_14default_deleteISA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #23
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.ah
  %.pn102.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn102.pn.pn.pn.pn, %bb.bh ], [ %i.gl, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.o
  %.pn102.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn102.pn.pn.pn.pn.pn, %bb.bi ], [ %i.eb, %bb.o ]
  call void @_ZN5boost7movelib10unique_ptrISt8multimapIiiSt4lessIiESaISt4pairIKiiEEENS0_14default_deleteIS9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #23
  br label %.body122

.body122:                                         ; preds = %bb.n, %.body.i120, %bb.bj
  %.pn102.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn102.pn.pn.pn.pn.pn.pn, %bb.bj ], [ %i.ea, %bb.n ], [ %i.cy, %.body.i120 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @_ZN5boost7movelib10unique_ptrINS_9container13flat_multimapIiiSt4lessIiENS2_8devectorISt4pairIiiEvvEEEENS0_14default_deleteISA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #23
  br label %.body118

.body118:                                         ; preds = %.body.i116, %bb.m, %.body122
  %.pn102.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn102.pn.pn.pn.pn.pn.pn.pn, %.body122 ], [ %i.cn, %.body.i116 ], [ %i.dz, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @_ZN5boost7movelib10unique_ptrISt3mapIiiSt4lessIiESaISt4pairIKiiEEENS0_14default_deleteIS9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #23
  br label %.body

.body:                                            ; preds = %bb.l, %bb.c, %.body118
  %.pn102.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn102.pn.pn.pn.pn.pn.pn.pn.pn, %.body118 ], [ %i.dy, %bb.l ], [ %i.cl, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @_ZN5boost7movelib10unique_ptrINS_9container8flat_mapIiiSt4lessIiENS2_8devectorISt4pairIiiEvvEEEENS0_14default_deleteISA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test15map_test_insertINS0_8flat_mapIiiSt4lessIiENS0_8devectorISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEENS0_13flat_multimapIiiS5_S9_EESt8multimapIiiS5_SE_EEEiRT_RT0_RT1_RT2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
.preheader269.preheader:
  %4 = alloca %"union.boost::move_detail::aligned_struct_wrapper", align 8 ; 4 uses
  %5 = alloca %"union.boost::move_detail::aligned_struct_wrapper", align 8 ; 4 uses
  %6 = alloca [50 x %"struct.boost::container::dtl::pair"], align 16 ; 31 uses
  %7 = alloca [50 x %"struct.boost::container::dtl::pair"], align 16 ; 31 uses
  %8 = alloca %"class.std::map", align 8          ; 12 uses
  %9 = alloca %"class.std::multimap", align 8     ; 12 uses
  %10 = alloca %"class.boost::container::flat_map.236", align 8 ; 10 uses
  %11 = alloca %"class.boost::container::flat_multimap.238", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %6, i8 0, i64 400, i1 false)
  store <4 x i32> <i32 1, i32 1, i32 2, i32 2>, ptr %i.a, align 8, !tbaa !338
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 24
  store <4 x i32> <i32 3, i32 3, i32 4, i32 4>, ptr %i.b, align 8, !tbaa !338
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 40
  store <4 x i32> <i32 5, i32 5, i32 6, i32 6>, ptr %i.c, align 8, !tbaa !338
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 56
  store <4 x i32> <i32 7, i32 7, i32 8, i32 8>, ptr %i.d, align 8, !tbaa !338
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 72
  store <4 x i32> <i32 9, i32 9, i32 10, i32 10>, ptr %i.e, align 8, !tbaa !338
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 88
  store <4 x i32> <i32 11, i32 11, i32 12, i32 12>, ptr %i.f, align 8, !tbaa !338
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 104
  store <4 x i32> <i32 13, i32 13, i32 14, i32 14>, ptr %i.g, align 8, !tbaa !338
end_hunk_0
