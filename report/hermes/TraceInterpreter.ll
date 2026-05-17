inline.NumInlined: 3334
inline.NumDeleted: 1601
begin_hunk_0_@_ZN8facebook6hermes7tracing16TraceInterpreter24getSourceHashToBundleMapEOSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS6_EESaIS9_EERKNS1_10SynthTraceERKNS2_14ExecuteOptionsEPbSJ_:bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = invoke noundef i64 %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %i.da)
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.df = load ptr, ptr %.0.i, align 8, !tbaa !94
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = invoke noundef zeroext i1 %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef %i.cz, i64 noundef %i.de)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  br i1 %i.di, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  %i.dj = load ptr, ptr %.sroa.088.0158, align 8, !tbaa !249 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !94
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = invoke noundef ptr %i.dm(ptr noundef nonnull align 8 dereferenceable(8) %i.dj)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.do = load ptr, ptr %.sroa.088.0158, align 8, !tbaa !249 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !94
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = invoke noundef i64 %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %i.do)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN6hermes3hbc20BCProviderFromBuffer25getSourceHashFromBytecodeEN4llvh8ArrayRefIhEE(ptr dead_on_unwind nonnull writable sret(%"struct.std::array") align 1 %11, ptr %i.dn, i64 %i.ds)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(20) %11, i64 20, i1 false), !tbaa.struct !266
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %bb.ak

bb.ad:                                            ; preds = %bb.x, %bb.w, %bb.v
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ae:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %bb.au

bb.af:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  %i.dv = load ptr, ptr %.sroa.088.0158, align 8, !tbaa !249 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !94
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = invoke noundef ptr %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %i.dv)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.ea = load ptr, ptr %.sroa.088.0158, align 8, !tbaa !249 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !94
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = invoke noundef i64 %i.ed(ptr noundef nonnull align 8 dereferenceable(8) %i.ea)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN4llvh4SHA14hashENS_8ArrayRefIhEE(ptr dead_on_unwind nonnull writable sret(%"struct.std::array") align 1 %12, ptr %i.dz, i64 %i.ee)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(20) %12, i64 20, i1 false), !tbaa.struct !266
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %bb.au

bb.ak:                                            ; preds = %bb.ai, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %13, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.0, i64 20, i1 false), !tbaa.struct !266
  invoke void @_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS3_St14default_deleteIS3_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.088.0158)
          to label %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEEC2IRS1_St10unique_ptrIS7_St14default_deleteIS7_EETnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit unwind label %bb.ar

_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEEC2IRS1_St10unique_ptrIS7_St14default_deleteIS7_EETnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit: ; preds = %bb.ak
  %i.eg = invoke { ptr, i8 } @_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE16_M_insert_uniqueISA_EES2_ISt17_Rb_tree_iteratorISA_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %13)
          to label %_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE6insertEOSC_.exit unwind label %bb.as ; 0 uses

_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE6insertEOSC_.exit: ; preds = %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEEC2IRS1_St10unique_ptrIS7_St14default_deleteIS7_EETnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit
  %i.eh = load ptr, ptr %i.cr, align 8, !tbaa !184 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i, label %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE6insertEOSC_.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 4 uses
  %i.ej = load atomic i64, ptr %i.ei acquire, align 8 ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 4294967297
  %i.el = trunc i64 %i.ej to i32                  ; 2 uses
  br i1 %i.ek, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.ei, align 8, !tbaa !187
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  store i32 0, ptr %i.em, align 4, !tbaa !189
  %i.en = load ptr, ptr %i.eh, align 8, !tbaa !94
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #36, !inline_history !267
  %i.eq = load ptr, ptr %i.eh, align 8, !tbaa !94
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #36, !inline_history !267
  br label %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev.exit

bb.an:                                            ; preds = %bb.al
  %i.et = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i.i = icmp eq i8 %i.et, 0
  br i1 %.not.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eu = add nsw i32 %i.el, -1
  store i32 %i.eu, ptr %i.ei, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.ev = atomicrmw volatile add ptr %i.ei, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i = phi i32 [ %i.el, %bb.ao ], [ %i.ev, %bb.ap ]
  %i.ew = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ew, label %bb.aq, label %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev.exit, !prof !125

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #36
  br label %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev.exit

_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev.exit: ; preds = %_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE6insertEOSC_.exit, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.088.0158, i64 8 ; 2 uses
  %.not115 = icmp eq ptr %i.ex, %i.o
  br i1 %.not115, label %._crit_edge161, label %bb.v

bb.ar:                                            ; preds = %bb.ak
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEEC2IRS1_St10unique_ptrIS7_St14default_deleteIS7_EETnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %13) #36
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn = phi { ptr, i32 } [ %i.ez, %bb.as ], [ %i.ey, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.aj, %bb.ae, %bb.ad
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.at ], [ %i.du, %bb.ae ], [ %i.ef, %bb.aj ], [ %i.dt, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %.body

bb.av:                                            ; preds = %._crit_edge161
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load ptr, ptr %i.fa, align 8, !tbaa !268 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val62 = load ptr, ptr %i.fb, align 8, !tbaa !268 ; 2 uses
  %.not53.i = icmp eq ptr %.val, %.val62
  br i1 %.not53.i, label %_ZN8facebook6hermes7tracing12_GLOBAL__N_118verifyBundlesExistERKSt3mapISt5arrayIhLm20EESt10shared_ptrIKNS_3jsi6BufferEESt4lessIS5_ESaISt4pairIKS5_SA_EEERKNS1_10SynthTraceE.exit, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i
  %i.fc = icmp eq ptr %.sroa.013.2.i, %.sroa.1018.2.i
  br i1 %i.fc, label %bb.by, label %bb.bf

.lr.ph.i:                                         ; preds = %bb.av, %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i
  %.sroa.013.057.i = phi ptr [ %.sroa.013.2.i, %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i ], [ null, %bb.av ] ; 11 uses
  %.sroa.1018.056.i = phi ptr [ %.sroa.1018.2.i, %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i ], [ null, %bb.av ] ; 9 uses
  %.sroa.1622.055.i = phi ptr [ %.sroa.1622.2.i, %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i ], [ null, %bb.av ] ; 6 uses
  %.sroa.010.054.i = phi ptr [ %i.gl, %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i ], [ %.val, %bb.av ] ; 3 uses
  %i.fd = load ptr, ptr %.sroa.010.054.i, align 8, !tbaa !110 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !94
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = invoke noundef i32 %i.fg(ptr noundef nonnull align 8 dereferenceable(16) %i.fd)
          to label %bb.aw unwind label %bb.be

bb.aw:                                            ; preds = %.lr.ph.i
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.ax, label %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i

bb.ax:                                            ; preds = %bb.aw
  %i.fj = load ptr, ptr %.sroa.010.054.i, align 8, !tbaa !110
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 48 ; 5 uses
  %i.fl = load ptr, ptr %i.cl, align 8, !tbaa !76 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not10.i.i.i.i, label %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ax, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.fl, %bb.ax ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ck, %bb.ax ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.fn = call noundef i32 @memcmp(ptr noundef nonnull align 1 dereferenceable(20) %i.fm, ptr noundef nonnull align 1 dereferenceable(20) %i.fk, i64 noundef 20) #36
  %i.fo = icmp slt i32 %i.fn, 0                   ; 2 uses
  %.19.i.i.i.i = select i1 %i.fo, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.fo, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i.i78 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i78, label %_ZNKSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !269

_ZNKSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.fp = icmp eq ptr %.19.i.i.i.i, %i.ck
  br i1 %i.fp, label %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.thread.i, label %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.i

_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.i: ; preds = %_ZNKSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.fr = call noundef i32 @memcmp(ptr noundef nonnull align 1 dereferenceable(20) %i.fk, ptr noundef nonnull align 1 dereferenceable(20) %i.fq, i64 noundef 20) #36
  %i.fs = icmp slt i32 %i.fr, 0
  br i1 %i.fs, label %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.thread.i, label %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i

_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.thread.i: ; preds = %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.i, %_ZNKSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, %bb.ax
  %14 = load <20 x i8>, ptr %i.fk, align 1
  %.fr = freeze <20 x i8> %14
  %15 = icmp ne <20 x i8> %.fr, zeroinitializer
  %16 = bitcast <20 x i1> %15 to i20
  %i.ft = icmp eq i20 %16, 0
  br i1 %i.ft, label %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i, label %bb.ay

bb.ay:                                            ; preds = %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.thread.i
  %.not.i.i = icmp eq ptr %.sroa.1018.056.i, %.sroa.1622.055.i
  br i1 %.not.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.1018.056.i, ptr noundef nonnull align 1 dereferenceable(20) %i.fk, i64 20, i1 false), !tbaa.struct !266
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.1018.056.i, i64 20
  br label %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.fv = ptrtoint ptr %.sroa.1018.056.i to i64
  %i.fw = ptrtoint ptr %.sroa.013.057.i to i64
  %i.fx = sub i64 %i.fv, %i.fw                    ; 6 uses
  %i.fy = icmp eq i64 %i.fx, 9223372036854775800
  br i1 %i.fy, label %bb.bb, label %_ZNKSt6vectorISt5arrayIhLm20EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #39
          to label %.noexc.i unwind label %.loopexit.split-lp35.i

.noexc.i:                                         ; preds = %bb.bb
  unreachable

_ZNKSt6vectorISt5arrayIhLm20EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ba
  %i.fz = sdiv exact i64 %i.fx, 20                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fz, i64 1)
  %i.ga = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fz ; 2 uses
  %i.gb = icmp ult i64 %i.ga, %i.fz
  %i.gc = call i64 @llvm.umin.i64(i64 %i.ga, i64 461168601842738790)
  %i.gd = select i1 %i.gb, i64 461168601842738790, i64 %i.gc ; 3 uses
  %.not.i.i.i40.i = icmp ne i64 %i.gd, 0
  call void @llvm.assume(i1 %.not.i.i.i40.i)
  %i.ge = mul nuw nsw i64 %i.gd, 20
  %i.gf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ge) #38
          to label %.noexc41.i unwind label %.loopexit34.i ; 4 uses

.noexc41.i:                                       ; preds = %_ZNKSt6vectorISt5arrayIhLm20EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 %i.fx ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.gg, ptr noundef nonnull align 1 dereferenceable(20) %i.fk, i64 20, i1 false), !tbaa.struct !266
  %i.gh = icmp sgt i64 %i.fx, 0
  br i1 %i.gh, label %bb.bc, label %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.bc:                                            ; preds = %.noexc41.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gf, ptr align 1 %.sroa.013.057.i, i64 %i.fx, i1 false)
  br label %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.bc, %.noexc41.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 20
  %.not.i17.i.i.i = icmp eq ptr %.sroa.013.057.i, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.013.057.i, i64 noundef %i.fx) #37
  br label %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.bd, %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.gj = getelementptr inbounds nuw [20 x i8], ptr %i.gf, i64 %i.gd
  br label %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i

bb.be:                                            ; preds = %.lr.ph.i
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit34.i:                                    ; preds = %_ZNKSt6vectorISt5arrayIhLm20EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit36.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit.split-lp35.i:                           ; preds = %bb.bb
  %lpad.loopexit.split-lp37.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i: ; preds = %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.az, %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.thread.i, %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.i, %bb.aw
  %.sroa.1622.2.i = phi ptr [ %.sroa.1622.055.i, %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.thread.i ], [ %.sroa.1622.055.i, %bb.aw ], [ %.sroa.1622.055.i, %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.i ], [ %i.gj, %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.1622.055.i, %bb.az ] ; 3 uses
  %.sroa.1018.2.i = phi ptr [ %.sroa.1018.056.i, %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.thread.i ], [ %.sroa.1018.056.i, %bb.aw ], [ %.sroa.1018.056.i, %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.i ], [ %i.gi, %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.fu, %bb.az ] ; 6 uses
  %.sroa.013.2.i = phi ptr [ %.sroa.013.057.i, %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.thread.i ], [ %.sroa.013.057.i, %bb.aw ], [ %.sroa.013.057.i, %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.i ], [ %i.gf, %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.013.057.i, %bb.az ] ; 6 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.010.054.i, i64 8 ; 2 uses
  %.not.i77 = icmp eq ptr %i.gl, %.val62
  br i1 %.not.i77, label %._crit_edge.i, label %.lr.ph.i

bb.bf:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel.i unwind label %bb.bh

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel.i: ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.gm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  invoke void @_ZN6hermes12hashAsStringB5cxx11ERKSt5arrayIhLm20EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.013.2.i)
          to label %bb.bg unwind label %.loopexit.split-lp82.i

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel.i
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !92 ; 2 uses
  %i.gq = load i64, ptr %i.gm, align 8, !tbaa !92
  %i.gr = sub i64 4611686018427387903, %i.gq
  %i.gs = icmp ult i64 %i.gr, %i.gp
  br i1 %i.gs, label %.loopexit85.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel.i: ; preds = %bb.bg
  %i.gt = load ptr, ptr %8, align 8, !tbaa !144
  %i.gu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.gt, i64 noundef %i.gp)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel.i unwind label %.loopexit29.loopexit.split-lp.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel.i
  %i.gv = load ptr, ptr %8, align 8, !tbaa !144   ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.go
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel.i
  %i.gx = load i64, ptr %i.go, align 8, !tbaa !74
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.013.2.i, i64 20 ; 2 uses
  %.not26.peel.i = icmp eq ptr %i.gz, %.sroa.1018.2.i
  br i1 %.not26.peel.i, label %._crit_edge65.i, label %.peel.next.i

._crit_edge65.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel.i
  %i.ha = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.24)
          to label %bb.bj unwind label %bb.bl     ; 0 uses

bb.bh:                                            ; preds = %bb.bf
  %i.hb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i

.peel.next.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.sroa.05.061.i = phi ptr [ %i.hq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.gz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel.i ] ; 2 uses
  %i.hc = load i64, ptr %i.gm, align 8, !tbaa !92
  %i.hd = and i64 %i.hc, -2
  %i.he = icmp eq i64 %i.hd, 4611686018427387902
  br i1 %i.he, label %.loopexit78.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

.loopexit78.i:                                    ; preds = %.peel.next.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #39
          to label %.noexc42.i unwind label %.loopexit.split-lp.i

.noexc42.i:                                       ; preds = %.loopexit78.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i: ; preds = %.peel.next.i
  %i.hf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i unwind label %.loopexit28.i ; 0 uses

.loopexit28.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  %lpad.loopexit79.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.loopexit.split-lp.i:                             ; preds = %.loopexit78.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  invoke void @_ZN6hermes12hashAsStringB5cxx11ERKSt5arrayIhLm20EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.05.061.i)
          to label %bb.bi unwind label %.loopexit81.i

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  %i.hg = load i64, ptr %i.gn, align 8, !tbaa !92 ; 2 uses
  %i.hh = load i64, ptr %i.gm, align 8, !tbaa !92
  %i.hi = sub i64 4611686018427387903, %i.hh
  %i.hj = icmp ult i64 %i.hi, %i.hg
  br i1 %i.hj, label %.loopexit85.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i

.loopexit85.i:                                    ; preds = %bb.bi, %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #39
          to label %.noexc44.i unwind label %.loopexit.split-lp30.i

.noexc44.i:                                       ; preds = %.loopexit85.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i: ; preds = %bb.bi
  %i.hk = load ptr, ptr %8, align 8, !tbaa !144
  %i.hl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.hk, i64 noundef %i.hg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i unwind label %.loopexit29.loopexit.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %i.hm = load ptr, ptr %8, align 8, !tbaa !144   ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.go
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %i.ho = load i64, ptr %i.go, align 8, !tbaa !74
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
end_hunk_0
