Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/vector_test?download=true
inline.NumInlined: 28809
inline.NumDeleted: 5416
loop-unroll.NumCompletelyUnrolled: 323
loop-unroll.NumRuntimeUnrolled: 1736
loop-unroll.NumUnrolled: 2069
begin_hunk_0_@main:bb.a
  %i.cq = call noundef i32 @_ZN5boost9container4test11vector_testINS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS4_EEvEEEEiv()
  %.not2.i136 = icmp eq i32 %i.cq, 0
  br i1 %.not2.i136, label %bb.ae, label %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.cr = call noundef i32 @_ZN5boost9container4test11vector_testINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEEEEiv()
  %.not3.i137 = icmp eq i32 %i.cr, 0
  br i1 %.not3.i137, label %bb.af, label %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.cs = call noundef i32 @_ZN5boost9container4test11vector_testINS0_6vectorINS1_17moveconstruct_intENS0_13new_allocatorIS4_EEvEEEEiv()
  %.not4.i138 = icmp eq i32 %i.cs, 0
  br i1 %.not4.i138, label %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit, label %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit.thread

_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit: ; preds = %bb.af
  %i.ct = call noundef i32 @_ZN5boost9container4test11vector_testINS0_6vectorINS1_24overaligned_copyable_intENS0_13new_allocatorIS4_EEvEEEEiv()
  %.not5.i139.not = icmp eq i32 %i.ct, 0
  br i1 %.not5.i139.not, label %bb.aj, label %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit.thread

_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit.thread: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.af, %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit
  %i.cu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.1, i64 noundef 44) ; 0 uses
  %i.cv = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !221
  %i.cw = getelementptr i8, ptr %i.cv, i64 -24
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 240
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !239 ; 6 uses
  %.not.i.i.i197 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i197, label %bb.ag, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i198

bb.ag:                                            ; preds = %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit.thread
  call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i198: ; preds = %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit.thread
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !245
  %.not.i1.i.i199 = icmp eq i8 %i.dc, 0
  br i1 %.not.i1.i.i199, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i198
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 67
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !246
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit202

bb.ai:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i198
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.da)
  %i.df = load ptr, ptr %i.da, align 8, !tbaa !221
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = call noundef signext i8 %i.dh(ptr noundef nonnull align 8 dereferenceable(570) %i.da, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit202

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit202: ; preds = %bb.ah, %bb.ai
  %.0.i.i.i201 = phi i8 [ %i.de, %bb.ah ], [ %i.di, %bb.ai ]
  %i.dj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i201)
  %i.dk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dj) ; 0 uses
  br label %_Z15test_expand_bwdv.exit.thread

bb.aj:                                            ; preds = %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 0, ptr %i.c, align 4, !tbaa !267
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZN5boost9container6vectorI4TestSaIS2_EvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS3_JRKS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.462") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef null, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.c)
          to label %.noexc143 unwind label %bb.ap

.noexc143:                                        ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !270 ; 4 uses
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !271 ; 2 uses
  %.not.i144 = icmp eq i64 %i.dn, %i.do
  br i1 %.not.i144, label %bb.al, label %bb.ak, !prof !272

bb.ak:                                            ; preds = %.noexc143
  %i.dp = load ptr, ptr %7, align 8, !tbaa !273, !nonnull !274, !noundef !274
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dn
  %i.dr = load i32, ptr %i.c, align 4, !tbaa !267
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !267
  %i.ds = add i64 %i.dn, 1                        ; 2 uses
  store i64 %i.ds, ptr %i.dl, align 8, !tbaa !270
  br label %_ZN5boost9container6vectorI4TestSaIS2_EvE9push_backEOS2_.exit94

bb.al:                                            ; preds = %.noexc143
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.dt = load ptr, ptr %7, align 8, !tbaa !273
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.dn
  invoke void @_ZN5boost9container6vectorI4TestSaIS2_EvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS3_JS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESA_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.462") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %i.du, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.c)
          to label %.noexc146 unwind label %bb.ap

.noexc146:                                        ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %.pre265.a = load i64, ptr %i.dl, align 8, !tbaa !270
  %.pre266.a = load i64, ptr %i.dm, align 8, !tbaa !271
  br label %_ZN5boost9container6vectorI4TestSaIS2_EvE9push_backEOS2_.exit94

_ZN5boost9container6vectorI4TestSaIS2_EvE9push_backEOS2_.exit94: ; preds = %.noexc146, %bb.ak
  %i.dv = phi i64 [ %.pre266.a, %.noexc146 ], [ %i.do, %bb.ak ] ; 3 uses
  %i.dw = phi i64 [ %.pre265.a, %.noexc146 ], [ %i.ds, %bb.ak ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i32 0, ptr %i.d, align 4, !tbaa !267
  %.not.i147 = icmp eq i64 %i.dw, %i.dv
  br i1 %.not.i147, label %bb.an, label %bb.am, !prof !272

bb.am:                                            ; preds = %_ZN5boost9container6vectorI4TestSaIS2_EvE9push_backEOS2_.exit94
  %i.dx = load ptr, ptr %7, align 8, !tbaa !273, !nonnull !274, !noundef !274
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dw
  store i32 0, ptr %i.dy, align 4, !tbaa !267
  %i.dz = add i64 %i.dw, 1
  store i64 %i.dz, ptr %i.dl, align 8, !tbaa !270
  br label %_ZN5boost9container6vectorI4TestSaIS2_EvE9push_backEOS2_.exit

bb.an:                                            ; preds = %_ZN5boost9container6vectorI4TestSaIS2_EvE9push_backEOS2_.exit94
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.ea = load ptr, ptr %7, align 8, !tbaa !273
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.dv
  invoke void @_ZN5boost9container6vectorI4TestSaIS2_EvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS3_JS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESA_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.462") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %i.eb, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.d)
          to label %.noexc149 unwind label %bb.aq

.noexc149:                                        ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %.pre267.a = load i64, ptr %i.dm, align 8, !tbaa !271
  br label %_ZN5boost9container6vectorI4TestSaIS2_EvE9push_backEOS2_.exit

_ZN5boost9container6vectorI4TestSaIS2_EvE9push_backEOS2_.exit: ; preds = %.noexc149, %bb.am
  %i.ec = phi i64 [ %.pre267.a, %.noexc149 ], [ %i.dv, %bb.am ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %.not.i.i151 = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i151, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %_ZN5boost9container6vectorI4TestSaIS2_EvE9push_backEOS2_.exit
  %i.ed = load ptr, ptr %7, align 8, !tbaa !275
  %i.ee = shl i64 %i.ec, 2
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.ee) #27
  br label %bb.at

bb.ap:                                            ; preds = %bb.al, %bb.aj
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %bb.an
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.eg, %bb.aq ], [ %i.ef, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.eh = load i64, ptr %i.dm, align 8, !tbaa !271 ; 2 uses
  %.not.i.i152 = icmp eq i64 %i.eh, 0
  br i1 %.not.i.i152, label %_ZN5boost9container6vectorI4TestSaIS2_EvED2Ev.exit153, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ei = load ptr, ptr %7, align 8, !tbaa !275
  %i.ej = shl i64 %i.eh, 2
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.ej) #27
  br label %_ZN5boost9container6vectorI4TestSaIS2_EvED2Ev.exit153

_ZN5boost9container6vectorI4TestSaIS2_EvED2Ev.exit153: ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.dm

bb.at:                                            ; preds = %bb.ao, %_ZN5boost9container6vectorI4TestSaIS2_EvE9push_backEOS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.ek = call noalias noundef nonnull dereferenceable(5) ptr @_Znwm(i64 noundef 5) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef 5) #26
  %i.el = call noundef zeroext i1 @_ZN5boost9container4test19test_all_expand_bwdINS0_6vectorIiNS1_25expand_bwd_test_allocatorIiEEvEEEEbv()
  br i1 %i.el, label %_Z15test_expand_bwdv.exit, label %_Z15test_expand_bwdv.exit.thread

_Z15test_expand_bwdv.exit:                        ; preds = %bb.at
  %i.em = call noundef zeroext i1 @_ZN5boost9container4test19test_all_expand_bwdINS0_6vectorINS1_12copyable_intENS1_25expand_bwd_test_allocatorIS4_EEvEEEEbv()
  br i1 %i.em, label %bb.au, label %_Z15test_expand_bwdv.exit.thread

bb.au:                                            ; preds = %_Z15test_expand_bwdv.exit
  %i.en = call noundef zeroext i1 @_ZN5boost9container4test17default_init_testINS0_6vectorIiNS1_22default_init_allocatorIiEEvEEEEbv()
  br i1 %i.en, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.2, i64 noundef 24) ; 0 uses
  %i.ep = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr), !inline_history !2 ; 0 uses
  br label %_Z15test_expand_bwdv.exit.thread

bb.aw:                                            ; preds = %bb.au
  %i.eq = call noundef zeroext i1 @_ZN5boost9container4test12test_emplaceINS0_6vectorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE261EEEbv()
  br i1 %i.eq, label %bb.ax, label %_Z15test_expand_bwdv.exit.thread

bb.ax:                                            ; preds = %bb.aw
  %i.er = call noundef zeroext i1 @_ZN5boost9container4test24test_propagate_allocatorI22boost_container_vectorEEbv()
  br i1 %i.er, label %bb.ay, label %_Z15test_expand_bwdv.exit.thread

bb.ay:                                            ; preds = %bb.ax
  %i.es = call noundef zeroext i1 @_ZN5boost9container4test57test_vector_methods_with_initializer_list_as_argument_forINS0_6vectorIivvEEEEbv()
  br i1 %i.es, label %bb.az, label %_Z15test_expand_bwdv.exit.thread

bb.az:                                            ; preds = %bb.ay
  %i.et = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 24 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i32 0, ptr %i.e, align 4, !tbaa !247
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  invoke void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_12vec_iteratorIPiLb0EEESA_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef null, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.e)
          to label %_ZN5boost9container6vectorIivvE9push_backEOi.exit unwind label %.loopexit237

_ZN5boost9container6vectorIivvE9push_backEOi.exit: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  %.pre268.a = load i64, ptr %i.et, align 8, !tbaa !253 ; 3 uses
  %.pre269.a = load i64, ptr %i.eu, align 8, !tbaa !260 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i32 1, ptr %i.e, align 4, !tbaa !247
  %.not.i156.1248 = icmp eq i64 %.pre268.a, %.pre269.a
  br i1 %.not.i156.1248, label %bb.bb, label %bb.ba, !prof !272

bb.ba:                                            ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit
  %i.ev = load ptr, ptr %8, align 8, !tbaa !251, !nonnull !274, !noundef !274
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.pre268.a
  store i32 1, ptr %i.ew, align 4, !tbaa !247
  %i.ex = add i64 %.pre268.a, 1                   ; 2 uses
  store i64 %i.ex, ptr %i.et, align 8, !tbaa !253
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.1252

bb.bb:                                            ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  %i.ey = load ptr, ptr %8, align 8, !tbaa !251
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.pre269.a
  invoke void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_12vec_iteratorIPiLb0EEESA_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.ez, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.e)
          to label %.noexc158.1250 unwind label %.loopexit237

.noexc158.1250:                                   ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  %.pre270.a = load i64, ptr %i.et, align 8, !tbaa !253
  %.pre271.a = load i64, ptr %i.eu, align 8, !tbaa !260
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.1252

_ZN5boost9container6vectorIivvE9push_backEOi.exit.1252: ; preds = %.noexc158.1250, %bb.ba
  %i.fa = phi i64 [ %.pre271.a, %.noexc158.1250 ], [ %.pre269.a, %bb.ba ] ; 3 uses
  %i.fb = phi i64 [ %.pre270.a, %.noexc158.1250 ], [ %i.ex, %bb.ba ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i32 2, ptr %i.e, align 4, !tbaa !247
  %.not.i156.2254 = icmp eq i64 %i.fb, %i.fa
  br i1 %.not.i156.2254, label %bb.bd, label %bb.bc, !prof !272

bb.bc:                                            ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.1252
  %i.fc = load ptr, ptr %8, align 8, !tbaa !251, !nonnull !274, !noundef !274
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fb
  store i32 2, ptr %i.fd, align 4, !tbaa !247
  %i.fe = add i64 %i.fb, 1                        ; 2 uses
  store i64 %i.fe, ptr %i.et, align 8, !tbaa !253
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.2258

bb.bd:                                            ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.1252
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  %i.ff = load ptr, ptr %8, align 8, !tbaa !251
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.fa
  invoke void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_12vec_iteratorIPiLb0EEESA_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.fg, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.e)
          to label %.noexc158.2256 unwind label %.loopexit237

.noexc158.2256:                                   ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  %.pre272.a = load i64, ptr %i.et, align 8, !tbaa !253
  %.pre273.a = load i64, ptr %i.eu, align 8, !tbaa !260
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.2258

_ZN5boost9container6vectorIivvE9push_backEOi.exit.2258: ; preds = %.noexc158.2256, %bb.bc
  %i.fh = phi i64 [ %.pre273.a, %.noexc158.2256 ], [ %i.fa, %bb.bc ] ; 3 uses
  %i.fi = phi i64 [ %.pre272.a, %.noexc158.2256 ], [ %i.fe, %bb.bc ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i32 3, ptr %i.e, align 4, !tbaa !247
  %.not.i156.3260 = icmp eq i64 %i.fi, %i.fh
  br i1 %.not.i156.3260, label %bb.bf, label %bb.be, !prof !272

bb.be:                                            ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.2258
  %i.fj = load ptr, ptr %8, align 8, !tbaa !251, !nonnull !274, !noundef !274
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fi
  store i32 3, ptr %i.fk, align 4, !tbaa !247
  %i.fl = add i64 %i.fi, 1                        ; 2 uses
  store i64 %i.fl, ptr %i.et, align 8, !tbaa !253
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.3264

bb.bf:                                            ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.2258
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  %i.fm = load ptr, ptr %8, align 8, !tbaa !251
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fh
  invoke void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_12vec_iteratorIPiLb0EEESA_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.fn, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.e)
          to label %.noexc158.3262 unwind label %.loopexit237

.noexc158.3262:                                   ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  %.pre274.a = load i64, ptr %i.et, align 8, !tbaa !253
  %.pre275.a = load i64, ptr %i.eu, align 8, !tbaa !260
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.3264

_ZN5boost9container6vectorIivvE9push_backEOi.exit.3264: ; preds = %.noexc158.3262, %bb.be
  %i.fo = phi i64 [ %.pre275.a, %.noexc158.3262 ], [ %i.fh, %bb.be ] ; 3 uses
  %i.fp = phi i64 [ %.pre274.a, %.noexc158.3262 ], [ %i.fl, %bb.be ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i32 4, ptr %i.e, align 4, !tbaa !247
  %.not.i156.4 = icmp eq i64 %i.fp, %i.fo
  br i1 %.not.i156.4, label %bb.bh, label %bb.bg, !prof !272

bb.bg:                                            ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.3264
  %i.fq = load ptr, ptr %8, align 8, !tbaa !251, !nonnull !274, !noundef !274
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fp
  store i32 4, ptr %i.fr, align 4, !tbaa !247
  %i.fs = add i64 %i.fp, 1                        ; 2 uses
  store i64 %i.fs, ptr %i.et, align 8, !tbaa !253
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.4

bb.bh:                                            ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.3264
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  %i.ft = load ptr, ptr %8, align 8, !tbaa !251
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.fo
  invoke void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_12vec_iteratorIPiLb0EEESA_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.fu, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.e)
          to label %.noexc158.4 unwind label %.loopexit237

.noexc158.4:                                      ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  %.pre276.a = load i64, ptr %i.et, align 8, !tbaa !253
  %.pre277.a = load i64, ptr %i.eu, align 8, !tbaa !260
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.4

_ZN5boost9container6vectorIivvE9push_backEOi.exit.4: ; preds = %.noexc158.4, %bb.bg
  %i.fv = phi i64 [ %.pre277.a, %.noexc158.4 ], [ %i.fo, %bb.bg ] ; 3 uses
  %i.fw = phi i64 [ %.pre276.a, %.noexc158.4 ], [ %i.fs, %bb.bg ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i32 5, ptr %i.e, align 4, !tbaa !247
  %.not.i156.5 = icmp eq i64 %i.fw, %i.fv
  br i1 %.not.i156.5, label %bb.bj, label %bb.bi, !prof !272

bb.bi:                                            ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.4
  %i.fx = load ptr, ptr %8, align 8, !tbaa !251, !nonnull !274, !noundef !274
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.fw
  store i32 5, ptr %i.fy, align 4, !tbaa !247
  %i.fz = add i64 %i.fw, 1                        ; 2 uses
  store i64 %i.fz, ptr %i.et, align 8, !tbaa !253
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.5

bb.bj:                                            ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  %i.ga = load ptr, ptr %8, align 8, !tbaa !251
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.fv
  invoke void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_12vec_iteratorIPiLb0EEESA_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.gb, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.e)
          to label %.noexc158.5 unwind label %.loopexit237

.noexc158.5:                                      ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  %.pre278.a = load i64, ptr %i.et, align 8, !tbaa !253
  %.pre279.a = load i64, ptr %i.eu, align 8, !tbaa !260
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.5

_ZN5boost9container6vectorIivvE9push_backEOi.exit.5: ; preds = %.noexc158.5, %bb.bi
  %i.gc = phi i64 [ %.pre279.a, %.noexc158.5 ], [ %i.fv, %bb.bi ] ; 3 uses
  %i.gd = phi i64 [ %.pre278.a, %.noexc158.5 ], [ %i.fz, %bb.bi ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i32 6, ptr %i.e, align 4, !tbaa !247
  %.not.i156.6 = icmp eq i64 %i.gd, %i.gc
  br i1 %.not.i156.6, label %bb.bl, label %bb.bk, !prof !272

bb.bk:                                            ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.5
  %i.ge = load ptr, ptr %8, align 8, !tbaa !251, !nonnull !274, !noundef !274
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gd
  store i32 6, ptr %i.gf, align 4, !tbaa !247
  %i.gg = add i64 %i.gd, 1                        ; 2 uses
  store i64 %i.gg, ptr %i.et, align 8, !tbaa !253
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.6

bb.bl:                                            ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.5
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  %i.gh = load ptr, ptr %8, align 8, !tbaa !251
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gc
  invoke void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_12vec_iteratorIPiLb0EEESA_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.gi, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.e)
          to label %.noexc158.6 unwind label %.loopexit237

.noexc158.6:                                      ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  %.pre280.a = load i64, ptr %i.et, align 8, !tbaa !253
  %.pre281.a = load i64, ptr %i.eu, align 8, !tbaa !260
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.6

_ZN5boost9container6vectorIivvE9push_backEOi.exit.6: ; preds = %.noexc158.6, %bb.bk
  %i.gj = phi i64 [ %.pre281.a, %.noexc158.6 ], [ %i.gc, %bb.bk ] ; 3 uses
  %i.gk = phi i64 [ %.pre280.a, %.noexc158.6 ], [ %i.gg, %bb.bk ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i32 7, ptr %i.e, align 4, !tbaa !247
  %.not.i156.7 = icmp eq i64 %i.gk, %i.gj
  br i1 %.not.i156.7, label %bb.bn, label %bb.bm, !prof !272

bb.bm:                                            ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.6
  %i.gl = load ptr, ptr %8, align 8, !tbaa !251, !nonnull !274, !noundef !274
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.gk
  store i32 7, ptr %i.gm, align 4, !tbaa !247
  %i.gn = add i64 %i.gk, 1                        ; 2 uses
  store i64 %i.gn, ptr %i.et, align 8, !tbaa !253
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.7

bb.bn:                                            ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.6
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  %i.go = load ptr, ptr %8, align 8, !tbaa !251
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.gj
  invoke void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_12vec_iteratorIPiLb0EEESA_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.gp, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.e)
          to label %.noexc158.7 unwind label %.loopexit237

.noexc158.7:                                      ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  %.pre282 = load i64, ptr %i.et, align 8, !tbaa !253
  %.pre283 = load i64, ptr %i.eu, align 8, !tbaa !260
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.7

_ZN5boost9container6vectorIivvE9push_backEOi.exit.7: ; preds = %.noexc158.7, %bb.bm
  %i.gq = phi i64 [ %.pre283, %.noexc158.7 ], [ %i.gj, %bb.bm ] ; 3 uses
  %i.gr = phi i64 [ %.pre282, %.noexc158.7 ], [ %i.gn, %bb.bm ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i32 8, ptr %i.e, align 4, !tbaa !247
  %.not.i156.8 = icmp eq i64 %i.gr, %i.gq
  br i1 %.not.i156.8, label %bb.bp, label %bb.bo, !prof !272

bb.bo:                                            ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.7
  %i.gs = load ptr, ptr %8, align 8, !tbaa !251, !nonnull !274, !noundef !274
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.gr
  store i32 8, ptr %i.gt, align 4, !tbaa !247
  %i.gu = add i64 %i.gr, 1                        ; 2 uses
  store i64 %i.gu, ptr %i.et, align 8, !tbaa !253
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.8

bb.bp:                                            ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.7
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  %i.gv = load ptr, ptr %8, align 8, !tbaa !251
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.gq
  invoke void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_12vec_iteratorIPiLb0EEESA_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.gw, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.e)
          to label %.noexc158.8 unwind label %.loopexit237

.noexc158.8:                                      ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  %.pre284 = load i64, ptr %i.et, align 8, !tbaa !253
  %.pre285 = load i64, ptr %i.eu, align 8, !tbaa !260
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.8

_ZN5boost9container6vectorIivvE9push_backEOi.exit.8: ; preds = %.noexc158.8, %bb.bo
  %i.gx = phi i64 [ %.pre285, %.noexc158.8 ], [ %i.gq, %bb.bo ] ; 2 uses
  %i.gy = phi i64 [ %.pre284, %.noexc158.8 ], [ %i.gu, %bb.bo ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i32 9, ptr %i.e, align 4, !tbaa !247
  %.not.i156.9 = icmp eq i64 %i.gy, %i.gx
  br i1 %.not.i156.9, label %bb.br, label %bb.bq, !prof !272

bb.bq:                                            ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.8
  %i.gz = load ptr, ptr %8, align 8, !tbaa !251, !nonnull !274, !noundef !274
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.gy
  store i32 9, ptr %i.ha, align 4, !tbaa !247
  %i.hb = add i64 %i.gy, 1
  store i64 %i.hb, ptr %i.et, align 8, !tbaa !253
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.9

bb.br:                                            ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  %i.hc = load ptr, ptr %8, align 8, !tbaa !251
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.gx
  invoke void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_12vec_iteratorIPiLb0EEESA_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.hd, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.e)
          to label %.noexc158.9 unwind label %.loopexit237

.noexc158.9:                                      ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.9

_ZN5boost9container6vectorIivvE9push_backEOi.exit.9: ; preds = %.noexc158.9, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  invoke void @_ZN5boost9intrusive4test20test_iterator_randomINS_9container6vectorIivvEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.bs unwind label %bb.bv

.loopexit237:                                     ; preds = %bb.br, %bb.bp, %bb.bn, %bb.bl, %bb.bj, %bb.bh, %bb.bf, %bb.bd, %bb.bb, %bb.az
  %lpad.loopexit239 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp238

.loopexit.split-lp238.loopexit:                   ; preds = %bb.bx
  %lpad.loopexit241 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp238

.loopexit.split-lp238.loopexit.split-lp.loopexit: ; preds = %bb.cc
  %lpad.loopexit244 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp238

.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ch
  %lpad.loopexit.split-lp245 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp238

.loopexit.split-lp238:                            ; preds = %.loopexit.split-lp238.loopexit, %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp238.loopexit.split-lp.loopexit, %.loopexit237
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit239, %.loopexit237 ], [ %lpad.loopexit241, %.loopexit.split-lp238.loopexit ], [ %lpad.loopexit244, %.loopexit.split-lp238.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp245, %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %bb.cl

bb.bs:                                            ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.9
  %i.he = invoke noundef i32 @_ZN5boost13report_errorsEv()
          to label %bb.bt unwind label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %.not74 = icmp eq i32 %i.he, 0
  %i.hf = load i64, ptr %i.eu, align 8, !tbaa !260 ; 2 uses
  %.not.i.i159 = icmp eq i64 %i.hf, 0
  br i1 %.not.i.i159, label %_ZN5boost9container6vectorIivvED2Ev.exit160, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hg = load ptr, ptr %8, align 8, !tbaa !259
  %i.hh = shl i64 %i.hf, 2
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hh) #26
  br label %_ZN5boost9container6vectorIivvED2Ev.exit160

_ZN5boost9container6vectorIivvED2Ev.exit160:      ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br i1 %.not74, label %.lr.ph234.preheader.1, label %_Z15test_expand_bwdv.exit.thread

bb.bv:                                            ; preds = %bb.ci, %._crit_edge.3, %bb.cd, %._crit_edge.2, %bb.by, %._crit_edge.1, %bb.bs, %_ZN5boost9container6vectorIivvE9push_backEOi.exit.9
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

.lr.ph234.preheader.1:                            ; preds = %_ZN5boost9container6vectorIivvED2Ev.exit160
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br label %.lr.ph234.1

.lr.ph234.1:                                      ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.1, %.lr.ph234.preheader.1
  %.060233.1 = phi i32 [ 0, %.lr.ph234.preheader.1 ], [ %i.hq, %_ZN5boost9container6vectorIivvE9push_backEOi.exit.1 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i32 %.060233.1, ptr %i.e, align 4, !tbaa !247
  %i.hj = load i64, ptr %i.et, align 8, !tbaa !253 ; 4 uses
  %i.hk = load i64, ptr %i.eu, align 8, !tbaa !260
  %.not.i156.1 = icmp eq i64 %i.hj, %i.hk
  br i1 %.not.i156.1, label %bb.bx, label %bb.bw, !prof !272

bb.bw:                                            ; preds = %.lr.ph234.1
  %i.hl = load ptr, ptr %8, align 8, !tbaa !251, !nonnull !274, !noundef !274
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hj
  store i32 %.060233.1, ptr %i.hm, align 4, !tbaa !247
  %i.hn = add i64 %i.hj, 1
  store i64 %i.hn, ptr %i.et, align 8, !tbaa !253
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.1

bb.bx:                                            ; preds = %.lr.ph234.1
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  %i.ho = load ptr, ptr %8, align 8, !tbaa !251
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.hj
  invoke void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_12vec_iteratorIPiLb0EEESA_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.hp, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.e)
          to label %.noexc158.1 unwind label %.loopexit.split-lp238.loopexit

.noexc158.1:                                      ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.1

_ZN5boost9container6vectorIivvE9push_backEOi.exit.1: ; preds = %.noexc158.1, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %i.hq = add nuw nsw i32 %.060233.1, 1           ; 2 uses
  %exitcond.1.not = icmp eq i32 %i.hq, 100
  br i1 %exitcond.1.not, label %._crit_edge.1, label %.lr.ph234.1, !llvm.loop !607

._crit_edge.1:                                    ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.1
  invoke void @_ZN5boost9intrusive4test20test_iterator_randomINS_9container6vectorIivvEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.by unwind label %bb.bv

bb.by:                                            ; preds = %._crit_edge.1
  %i.hr = invoke noundef i32 @_ZN5boost13report_errorsEv()
          to label %bb.bz unwind label %bb.bv

bb.bz:                                            ; preds = %bb.by
  %.not74.1 = icmp eq i32 %i.hr, 0
  %i.hs = load i64, ptr %i.eu, align 8, !tbaa !260 ; 2 uses
  %.not.i.i159.1 = icmp eq i64 %i.hs, 0
  br i1 %.not.i.i159.1, label %_ZN5boost9container6vectorIivvED2Ev.exit160.1, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ht = load ptr, ptr %8, align 8, !tbaa !259
  %i.hu = shl i64 %i.hs, 2
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hu) #26
  br label %_ZN5boost9container6vectorIivvED2Ev.exit160.1

_ZN5boost9container6vectorIivvED2Ev.exit160.1:    ; preds = %bb.ca, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br i1 %.not74.1, label %.lr.ph234.preheader.2, label %_Z15test_expand_bwdv.exit.thread

.lr.ph234.preheader.2:                            ; preds = %_ZN5boost9container6vectorIivvED2Ev.exit160.1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br label %.lr.ph234.2

.lr.ph234.2:                                      ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.2, %.lr.ph234.preheader.2
  %.060233.2 = phi i32 [ 0, %.lr.ph234.preheader.2 ], [ %i.ic, %_ZN5boost9container6vectorIivvE9push_backEOi.exit.2 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i32 %.060233.2, ptr %i.e, align 4, !tbaa !247
  %i.hv = load i64, ptr %i.et, align 8, !tbaa !253 ; 4 uses
  %i.hw = load i64, ptr %i.eu, align 8, !tbaa !260
  %.not.i156.2 = icmp eq i64 %i.hv, %i.hw
  br i1 %.not.i156.2, label %bb.cc, label %bb.cb, !prof !272

bb.cb:                                            ; preds = %.lr.ph234.2
  %i.hx = load ptr, ptr %8, align 8, !tbaa !251, !nonnull !274, !noundef !274
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.hv
  store i32 %.060233.2, ptr %i.hy, align 4, !tbaa !247
  %i.hz = add i64 %i.hv, 1
  store i64 %i.hz, ptr %i.et, align 8, !tbaa !253
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.2

bb.cc:                                            ; preds = %.lr.ph234.2
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  %i.ia = load ptr, ptr %8, align 8, !tbaa !251
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.hv
  invoke void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_12vec_iteratorIPiLb0EEESA_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.ib, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.e)
          to label %.noexc158.2 unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit

.noexc158.2:                                      ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.2

_ZN5boost9container6vectorIivvE9push_backEOi.exit.2: ; preds = %.noexc158.2, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %i.ic = add nuw nsw i32 %.060233.2, 1           ; 2 uses
  %exitcond.2.not = icmp eq i32 %i.ic, 1000
  br i1 %exitcond.2.not, label %._crit_edge.2, label %.lr.ph234.2, !llvm.loop !607

._crit_edge.2:                                    ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.2
  invoke void @_ZN5boost9intrusive4test20test_iterator_randomINS_9container6vectorIivvEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.cd unwind label %bb.bv

bb.cd:                                            ; preds = %._crit_edge.2
  %i.id = invoke noundef i32 @_ZN5boost13report_errorsEv()
          to label %bb.ce unwind label %bb.bv

bb.ce:                                            ; preds = %bb.cd
  %.not74.2 = icmp eq i32 %i.id, 0
  %i.ie = load i64, ptr %i.eu, align 8, !tbaa !260 ; 2 uses
  %.not.i.i159.2 = icmp eq i64 %i.ie, 0
  br i1 %.not.i.i159.2, label %_ZN5boost9container6vectorIivvED2Ev.exit160.2, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.if = load ptr, ptr %8, align 8, !tbaa !259
  %i.ig = shl i64 %i.ie, 2
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ig) #26
  br label %_ZN5boost9container6vectorIivvED2Ev.exit160.2

_ZN5boost9container6vectorIivvED2Ev.exit160.2:    ; preds = %bb.cf, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br i1 %.not74.2, label %.lr.ph234.preheader.3, label %_Z15test_expand_bwdv.exit.thread

.lr.ph234.preheader.3:                            ; preds = %_ZN5boost9container6vectorIivvED2Ev.exit160.2
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br label %.lr.ph234.3

.lr.ph234.3:                                      ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.3, %.lr.ph234.preheader.3
  %.060233.3 = phi i32 [ 0, %.lr.ph234.preheader.3 ], [ %i.io, %_ZN5boost9container6vectorIivvE9push_backEOi.exit.3 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i32 %.060233.3, ptr %i.e, align 4, !tbaa !247
  %i.ih = load i64, ptr %i.et, align 8, !tbaa !253 ; 4 uses
  %i.ii = load i64, ptr %i.eu, align 8, !tbaa !260
  %.not.i156.3 = icmp eq i64 %i.ih, %i.ii
  br i1 %.not.i156.3, label %bb.ch, label %bb.cg, !prof !272

bb.cg:                                            ; preds = %.lr.ph234.3
  %i.ij = load ptr, ptr %8, align 8, !tbaa !251, !nonnull !274, !noundef !274
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.ih
  store i32 %.060233.3, ptr %i.ik, align 4, !tbaa !247
  %i.il = add i64 %i.ih, 1
  store i64 %i.il, ptr %i.et, align 8, !tbaa !253
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.3

bb.ch:                                            ; preds = %.lr.ph234.3
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  %i.im = load ptr, ptr %8, align 8, !tbaa !251
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.ih
  invoke void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_12vec_iteratorIPiLb0EEESA_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.in, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.e)
          to label %.noexc158.3 unwind label %.loopexit.split-lp238.loopexit.split-lp.loopexit.split-lp

.noexc158.3:                                      ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.3

_ZN5boost9container6vectorIivvE9push_backEOi.exit.3: ; preds = %.noexc158.3, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %i.io = add nuw nsw i32 %.060233.3, 1           ; 2 uses
  %exitcond.3.not = icmp eq i32 %i.io, 10000
  br i1 %exitcond.3.not, label %._crit_edge.3, label %.lr.ph234.3, !llvm.loop !607

._crit_edge.3:                                    ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.3
  invoke void @_ZN5boost9intrusive4test20test_iterator_randomINS_9container6vectorIivvEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.ci unwind label %bb.bv

bb.ci:                                            ; preds = %._crit_edge.3
  %i.ip = invoke noundef i32 @_ZN5boost13report_errorsEv()
          to label %bb.cj unwind label %bb.bv

bb.cj:                                            ; preds = %bb.ci
  %.not74.3 = icmp eq i32 %i.ip, 0
  %i.iq = load i64, ptr %i.eu, align 8, !tbaa !260 ; 2 uses
  %.not.i.i159.3 = icmp eq i64 %i.iq, 0
  br i1 %.not.i.i159.3, label %_ZN5boost9container6vectorIivvED2Ev.exit160.3, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ir = load ptr, ptr %8, align 8, !tbaa !259
  %i.is = shl i64 %i.iq, 2
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.is) #26
  br label %_ZN5boost9container6vectorIivvED2Ev.exit160.3

_ZN5boost9container6vectorIivvED2Ev.exit160.3:    ; preds = %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br i1 %.not74.3, label %.thread, label %_Z15test_expand_bwdv.exit.thread

.thread:                                          ; preds = %_ZN5boost9container6vectorIivvED2Ev.exit160.3
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  store i32 1, ptr %i.f, align 4, !tbaa !247
  %i.it = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 2, ptr %i.it, align 4, !tbaa !247
  %i.iu = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 3, ptr %i.iu, align 4, !tbaa !247
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  invoke void @_ZNSt6vectorIiSaIiEEC2ESt16initializer_listIiERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr nonnull %i.f, i64 3, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.cn unwind label %bb.cp

bb.cl:                                            ; preds = %bb.bv, %.loopexit.split-lp238
  %.pn83 = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp238 ], [ %i.hi, %bb.bv ]
  %i.iv = load i64, ptr %i.eu, align 8, !tbaa !260 ; 2 uses
  %.not.i.i161 = icmp eq i64 %i.iv, 0
  br i1 %.not.i.i161, label %_ZN5boost9container6vectorIivvED2Ev.exit162, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.iw = load ptr, ptr %8, align 8, !tbaa !259
  %i.ix = shl i64 %i.iv, 2
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.ix) #26
  br label %_ZN5boost9container6vectorIivvED2Ev.exit162

_ZN5boost9container6vectorIivvED2Ev.exit162:      ; preds = %bb.cl, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.dm

bb.cn:                                            ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.iy = load ptr, ptr %9, align 8, !tbaa !259
  %i.iz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !259
  invoke void @_ZN5boost9container6vectorIivvEC2IN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEET_SB_PNS_11move_detail12disable_if_cIXsr3dtl14is_convertibleISB_mEE5valueENSC_3natEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.iy, ptr %i.ja, ptr noundef null)
          to label %bb.co unwind label %bb.cq

bb.co:                                            ; preds = %bb.cn
  %i.jb = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !253
  %.not77 = icmp eq i64 %i.jc, 3
  br i1 %.not77, label %bb.cs, label %bb.cv

bb.cp:                                            ; preds = %.thread
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.cq:                                            ; preds = %bb.cn
  %i.je = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.jf = load ptr, ptr %9, align 8, !tbaa !277   ; 3 uses
  %.not.i.i.i163 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i163, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.jg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !278
  %i.ji = ptrtoint ptr %i.jh to i64
  %i.jj = ptrtoint ptr %i.jf to i64
  %i.jk = sub i64 %i.ji, %i.jj
  call void @_ZdlPvm(ptr noundef nonnull %i.jf, i64 noundef %i.jk) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.cs:                                            ; preds = %bb.co
  %i.jl = load ptr, ptr %11, align 8, !tbaa !251  ; 3 uses
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !247
  %i.jn = icmp eq i32 %i.jm, 1
  br i1 %i.jn, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !247
  %i.jq = icmp eq i32 %i.jp, 2
  br i1 %i.jq, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !247
  %i.jt = icmp eq i32 %i.js, 3                    ; 2 uses
  %not. = xor i1 %i.jt, true
  %spec.select91 = zext i1 %not. to i32
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cs, %bb.ct, %bb.co
  %cond1 = phi i1 [ false, %bb.co ], [ false, %bb.cs ], [ %i.jt, %bb.cu ], [ false, %bb.ct ]
  %.3 = phi i32 [ 1, %bb.co ], [ 1, %bb.cs ], [ %spec.select91, %bb.cu ], [ 1, %bb.ct ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !260 ; 2 uses
  %.not.i.i164 = icmp eq i64 %i.jv, 0
  br i1 %.not.i.i164, label %_ZN5boost9container6vectorIivvED2Ev.exit165, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.jw = load ptr, ptr %11, align 8, !tbaa !259
  %i.jx = shl i64 %i.jv, 2
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.jx) #26
  br label %_ZN5boost9container6vectorIivvED2Ev.exit165

_ZN5boost9container6vectorIivvED2Ev.exit165:      ; preds = %bb.cv, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.jy = load ptr, ptr %9, align 8, !tbaa !277   ; 3 uses
  %.not.i.i.i166 = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i166, label %_ZNSt6vectorIiSaIiEED2Ev.exit167, label %bb.cx

bb.cx:                                            ; preds = %_ZN5boost9container6vectorIivvED2Ev.exit165
  %i.jz = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !278
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = ptrtoint ptr %i.jy to i64
  %i.kd = sub i64 %i.kb, %i.kc
  call void @_ZdlPvm(ptr noundef nonnull %i.jy, i64 noundef %i.kd) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit167

_ZNSt6vectorIiSaIiEED2Ev.exit167:                 ; preds = %_ZN5boost9container6vectorIivvED2Ev.exit165, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br i1 %cond1, label %bb.cy, label %_Z15test_expand_bwdv.exit.thread

bb.cy:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit167
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store i32 1, ptr %i.g, align 4, !tbaa !247
  %i.ke = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 2, ptr %i.ke, align 4, !tbaa !247
  %i.kf = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 3, ptr %i.kf, align 4, !tbaa !247
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZNSt6vectorIiSaIiEEC2ESt16initializer_listIiERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr nonnull %i.g, i64 3, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.cz unwind label %bb.db

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.kg = load ptr, ptr %12, align 8, !tbaa !259
  %i.kh = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  invoke void @_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvEC2IN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEET_SD_RKS3_PNS_11move_detail12disable_if_cIXsr3dtl14is_convertibleISD_mEE5valueENSG_3natEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr %i.kg, ptr %i.ki, ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef null)
          to label %bb.da unwind label %bb.dc

end_hunk_0
