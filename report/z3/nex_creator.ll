Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/nex_creator?download=true
inline.NumInlined: 1980
inline.NumDeleted: 855
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3nla11nex_creator13mul_to_powersER6vectorINS_7nex_powELb1EjE:_ZNSt14_Function_baseD2Ev.exit
  %.not11.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not11.i.i.i, label %_ZNSt3mapIPN3nla3nexEiSt8functionIFbPKS1_S5_EESaISt4pairIKS2_iEEE4findERS9_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph, %.noexc28
  %.013.i.i.i = phi ptr [ %.1.i.i.i, %.noexc28 ], [ %i.w, %.lr.ph ] ; 5 uses
  %.0812.i.i.i = phi ptr [ %.19.i.i.i, %.noexc28 ], [ %i.i, %.lr.ph ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !24
  %i.z = load ptr, ptr %.02186, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.y, ptr %i.c, align 8, !tbaa !24
  store ptr %i.z, ptr %i.d, align 8, !tbaa !24
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !78
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i, label %.invoke, label %_ZNKSt8functionIFbPKN3nla3nexES3_EEclES3_S3_.exit.i.i.i

_ZNKSt8functionIFbPKN3nla3nexES3_EEclES3_S3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc28 unwind label %.loopexit70, !inline_history !88 ; 4 uses

.noexc28:                                         ; preds = %_ZNKSt8functionIFbPKN3nla3nexES3_EEclES3_S3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.19.i.i.i = select i1 %i.ac, ptr %.0812.i.i.i, ptr %.013.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.ac, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !89 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPN3nla3nexESt4pairIKS2_iESt10_Select1stIS5_ESt8functionIFbPKS1_SA_EESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !90

_ZNSt8_Rb_treeIPN3nla3nexESt4pairIKS2_iESt10_Select1stIS5_ESt8functionIFbPKS1_SA_EESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i: ; preds = %.noexc28
  %i.ad = icmp eq ptr %.19.i.i.i, %i.i
  br i1 %i.ad, label %_ZNSt3mapIPN3nla3nexEiSt8functionIFbPKS1_S5_EESaISt4pairIKS2_iEEE4findERS9_.exit.thread, label %bb.a

bb.a:                                             ; preds = %_ZNSt8_Rb_treeIPN3nla3nexESt4pairIKS2_iESt10_Select1stIS5_ESt8functionIFbPKS1_SA_EESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i
  %i.ae = load ptr, ptr %.02186, align 8, !tbaa !24
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ac, ptr %.0812.i.i.i, ptr %.013.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.af = load ptr, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !24
  store ptr %i.af, ptr %i.b, align 8, !tbaa !24
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !78
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %.invoke, label %_ZNKSt8functionIFbPKN3nla3nexES3_EEclES3_S3_.exit.i.i

.invoke:                                          ; preds = %bb.a, %.lr.ph.i.i.i
  invoke void @_ZSt25__throw_bad_function_callv() #24
          to label %.cont unwind label %.loopexit.split-lp71.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt8functionIFbPKN3nla3nexES3_EEclES3_S3_.exit.i.i: ; preds = %bb.a
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNSt3mapIPN3nla3nexEiSt8functionIFbPKS1_S5_EESaISt4pairIKS2_iEEE4findERS9_.exit unwind label %.loopexit.split-lp71.loopexit, !inline_history !88

_ZNSt3mapIPN3nla3nexEiSt8functionIFbPKS1_S5_EESaISt4pairIKS2_iEEE4findERS9_.exit: ; preds = %_ZNKSt8functionIFbPKN3nla3nexES3_EEclES3_S3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.ai, label %_ZNSt3mapIPN3nla3nexEiSt8functionIFbPKS1_S5_EESaISt4pairIKS2_iEEE4findERS9_.exit.thread, label %bb.c

_ZNSt3mapIPN3nla3nexEiSt8functionIFbPKS1_S5_EESaISt4pairIKS2_iEEE4findERS9_.exit.thread: ; preds = %_ZNSt8_Rb_treeIPN3nla3nexESt4pairIKS2_iESt10_Select1stIS5_ESt8functionIFbPKS1_SA_EESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, %.lr.ph, %_ZNSt3mapIPN3nla3nexEiSt8functionIFbPKS1_S5_EESaISt4pairIKS2_iEEE4findERS9_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %.02186, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !26
  %i.al = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIPN3nla3nexEiSt8functionIFbPKS1_S5_EESaISt4pairIKS2_iEEEixERS9_(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(8) %.02186)
          to label %bb.b unwind label %.loopexit.split-lp71.loopexit

bb.b:                                             ; preds = %_ZNSt3mapIPN3nla3nexEiSt8functionIFbPKS1_S5_EESaISt4pairIKS2_iEEE4findERS9_.exit.thread
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !23
  br label %bb.d

.loopexit70:                                      ; preds = %_ZNKSt8functionIFbPKN3nla3nexES3_EEclES3_S3_.exit.i.i.i
  %lpad.loopexit72 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp71

.loopexit.split-lp71.loopexit:                    ; preds = %_ZNKSt8functionIFbPKN3nla3nexES3_EEclES3_S3_.exit.i.i, %_ZNSt3mapIPN3nla3nexEiSt8functionIFbPKS1_S5_EESaISt4pairIKS2_iEEE4findERS9_.exit.thread
  %lpad.loopexit74 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp71

.loopexit.split-lp71.loopexit.split-lp:           ; preds = %.invoke
  %lpad.loopexit.split-lp75 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp71

bb.c:                                             ; preds = %_ZNSt3mapIPN3nla3nexEiSt8functionIFbPKS1_S5_EESaISt4pairIKS2_iEEE4findERS9_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.02186, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !26
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ac, ptr %.0812.i.i.i, ptr %.013.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40 ; 2 uses
  %i.ao = load i32, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !91
  %i.ap = add i32 %i.ao, %i.an
  store i32 %i.ap, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !91
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %.02186, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.aq, %i.t
  br i1 %.not, label %._crit_edge, label %.lr.ph

_ZN6vectorIN3nla7nex_powELb1EjE5clearEv.exit:     ; preds = %_ZNSt14_Function_baseD2Ev.exit, %._crit_edge.thread116, %._crit_edge
  %i.ar = phi ptr [ null, %._crit_edge ], [ %i.u, %._crit_edge.thread116 ], [ null, %_ZNSt14_Function_baseD2Ev.exit ] ; 4 uses
  %i.as = load ptr, ptr %i.k, align 8, !tbaa !85  ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.i
  br i1 %i.at, label %._crit_edge89, label %.lr.ph88

._crit_edge89:                                    ; preds = %_ZN6vectorIN3nla7nex_powELb1EjE5clearEv.exit
  %i.au = icmp eq ptr %i.ar, null
  br i1 %i.au, label %"_ZSt4sortIPN3nla7nex_powEZNS0_11nex_creator13mul_to_powersER6vectorIS1_Lb1EjEE3$_1EvT_S8_T0_.exit", label %._crit_edge89._ZN6vectorIN3nla7nex_powELb1EjE3endEv.exit32_crit_edge

._crit_edge89._ZN6vectorIN3nla7nex_powELb1EjE3endEv.exit32_crit_edge: ; preds = %._crit_edge89
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.ar, i64 -4
  %.pre157 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !23
  br label %_ZN6vectorIN3nla7nex_powELb1EjE3endEv.exit32

_ZN6vectorIN3nla7nex_powELb1EjE3endEv.exit32:     ; preds = %._crit_edge98, %._crit_edge89._ZN6vectorIN3nla7nex_powELb1EjE3endEv.exit32_crit_edge
  %i.av = phi i32 [ %.pre157, %._crit_edge89._ZN6vectorIN3nla7nex_powELb1EjE3endEv.exit32_crit_edge ], [ %i.ct, %._crit_edge98 ] ; 4 uses
  %i.aw = phi ptr [ %i.ar, %._crit_edge89._ZN6vectorIN3nla7nex_powELb1EjE3endEv.exit32_crit_edge ], [ %i.cp, %._crit_edge98 ] ; 16 uses
  %i.ax = zext i32 %i.av to i64                   ; 2 uses
  %i.ay = shl nuw nsw i64 %i.ax, 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ay ; 3 uses
  %.not.i.i33 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i33, label %"_ZSt4sortIPN3nla7nex_powEZNS0_11nex_creator13mul_to_powersER6vectorIS1_Lb1EjEE3$_1EvT_S8_T0_.exit", label %bb.e

bb.e:                                             ; preds = %_ZN6vectorIN3nla7nex_powELb1EjE3endEv.exit32
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ax, i1 true)
  %i.bc = shl nuw nsw i64 %i.bb, 1
  %i.bd = xor i64 %i.bc, 126
  invoke fastcc void @"_ZSt16__introsort_loopIPN3nla7nex_powElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_11nex_creator13mul_to_powersER6vectorIS1_Lb1EjEE3$_1EEEvT_SC_T0_T1_"(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.az, i64 noundef %i.bd, ptr nonnull %0)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc35:                                         ; preds = %bb.e
  %i.be = icmp ugt i32 %i.av, 16
  %scevgep.i.i.i = getelementptr i8, ptr %i.aw, i64 16 ; 2 uses
  br i1 %i.be, label %.preheader.i, label %bb.k

.preheader.i:                                     ; preds = %.noexc35, %bb.j
  %.021.i.idx.i.i.i = phi i64 [ %.021.i.add.i.i.i, %bb.j ], [ 16, %.noexc35 ] ; 4 uses
  %.pn20.i.i.i.i = phi ptr [ %.021.i.ptr.i.i.i, %bb.j ], [ %i.aw, %.noexc35 ] ; 4 uses
  %.021.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.021.i.idx.i.i.i ; 6 uses
  %.0.val.i.i.i.i = load ptr, ptr %.021.i.ptr.i.i.i, align 8, !tbaa !41
  %.val17.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !41
  %i.bf = invoke noundef zeroext i1 @_ZNK3nla11nex_creator2gtERKNS_3nexES3_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %.0.val.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.val17.i.i.i.i)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc36:                                         ; preds = %.preheader.i
  br i1 %i.bf, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.noexc36
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.021.i.ptr.i.i.i, i64 16, i1 false), !tbaa.struct !33
  %i.bg = icmp samesign ugt i64 %.021.i.idx.i.i.i, 16
  br i1 %i.bg, label %bb.g, label %bb.h, !prof !93

bb.g:                                             ; preds = %bb.f
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %.021.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIPN3nla7nex_powES2_ET0_T_S4_S3_.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bh, ptr noundef nonnull align 8 dereferenceable(12) %i.aw, i64 12, i1 false), !tbaa.struct !33
  br label %_ZSt13move_backwardIPN3nla7nex_powES2_ET0_T_S4_S3_.exit.i.i.i.i

_ZSt13move_backwardIPN3nla7nex_powES2_ET0_T_S4_S3_.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aw, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.j

bb.i:                                             ; preds = %.noexc36
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.021.i.ptr.i.i.i, align 8, !tbaa !24 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i, i64 24
  %i.bi = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8
  %.0.val14.i.i.i.i.i = load ptr, ptr %.pn20.i.i.i.i, align 8, !tbaa !41
  %i.bj = invoke noundef zeroext i1 @_ZNK3nla11nex_creator2gtERKNS_3nexES3_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.0.val14.i.i.i.i.i)
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc37:                                         ; preds = %bb.i
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN3nla7nex_powEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_11nex_creator13mul_to_powersER6vectorIS1_Lb1EjEE3$_1EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc37, %.noexc38
  %.016.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i, %.noexc38 ], [ %.pn20.i.i.i.i, %.noexc37 ] ; 4 uses
  %.0915.i.i.i.i.i = phi ptr [ %.016.i.i.i.i.i, %.noexc38 ], [ %.021.i.ptr.i.i.i, %.noexc37 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.0915.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.016.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !33
  %.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.016.i.i.i.i.i, i64 -16 ; 2 uses
  %.0.val.i.i.i.i.i = load ptr, ptr %.0.i.i.i.i.i, align 8, !tbaa !41
  %i.bk = invoke noundef zeroext i1 @_ZNK3nla11nex_creator2gtERKNS_3nexES3_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.0.val.i.i.i.i.i)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc38:                                         ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN3nla7nex_powEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_11nex_creator13mul_to_powersER6vectorIS1_Lb1EjEE3$_1EEEvT_T0_.exit.i.i.i.i", !llvm.loop !94

"_ZSt25__unguarded_linear_insertIPN3nla7nex_powEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_11nex_creator13mul_to_powersER6vectorIS1_Lb1EjEE3$_1EEEvT_T0_.exit.i.i.i.i": ; preds = %.noexc38, %.noexc37
  %.09.lcssa.i.i.i.i.i = phi ptr [ %.021.i.ptr.i.i.i, %.noexc37 ], [ %.016.i.i.i.i.i, %.noexc38 ] ; 2 uses
  %.sroa.5.sroa.0.0.extract.trunc.i.i.i.i.i = trunc i64 %i.bi to i32
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %.09.lcssa.i.i.i.i.i, align 8, !tbaa !24
  %.sroa.5.0..09.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i.i.i, i64 8
  store i32 %.sroa.5.sroa.0.0.extract.trunc.i.i.i.i.i, ptr %.sroa.5.0..09.sroa_idx.i.i.i.i.i, align 8, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %"_ZSt25__unguarded_linear_insertIPN3nla7nex_powEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_11nex_creator13mul_to_powersER6vectorIS1_Lb1EjEE3$_1EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIPN3nla7nex_powES2_ET0_T_S4_S3_.exit.i.i.i.i
  %.021.i.add.i.i.i = add nuw nsw i64 %.021.i.idx.i.i.i, 16 ; 2 uses
  %.not.i.i.i.i34 = icmp eq i64 %.021.i.add.i.i.i, 256
  br i1 %.not.i.i.i.i34, label %"_ZSt16__insertion_sortIPN3nla7nex_powEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_11nex_creator13mul_to_powersER6vectorIS1_Lb1EjEE3$_1EEEvT_SC_T0_.exit.i.i.i", label %.preheader.i, !llvm.loop !95

"_ZSt16__insertion_sortIPN3nla7nex_powEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_11nex_creator13mul_to_powersER6vectorIS1_Lb1EjEE3$_1EEEvT_SC_T0_.exit.i.i.i": ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 256
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZSt16__insertion_sortIPN3nla7nex_powEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_11nex_creator13mul_to_powersER6vectorIS1_Lb1EjEE3$_1EEEvT_SC_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIPN3nla7nex_powEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_11nex_creator13mul_to_powersER6vectorIS1_Lb1EjEE3$_1EEEvT_T0_.exit.i14.i.i.i"
  %.08.i.i.i.i = phi ptr [ %i.bp, %"_ZSt25__unguarded_linear_insertIPN3nla7nex_powEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_11nex_creator13mul_to_powersER6vectorIS1_Lb1EjEE3$_1EEEvT_T0_.exit.i14.i.i.i" ], [ %i.bl, %"_ZSt16__insertion_sortIPN3nla7nex_powEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_11nex_creator13mul_to_powersER6vectorIS1_Lb1EjEE3$_1EEEvT_SC_T0_.exit.i.i.i" ] ; 6 uses
  %.sroa.0.0.copyload.i.i11.i.i.i = load ptr, ptr %.08.i.i.i.i, align 8, !tbaa !24 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i12.i.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.bm = load i64, ptr %.sroa.5.0..sroa_idx.i.i12.i.i.i, align 8
  %.013.i.i.i.i.i = getelementptr inbounds i8, ptr %.08.i.i.i.i, i64 -16 ; 2 uses
  %.0.val14.i.i13.i.i.i = load ptr, ptr %.013.i.i.i.i.i, align 8, !tbaa !41
  %i.bn = invoke noundef zeroext i1 @_ZNK3nla11nex_creator2gtERKNS_3nexES3_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i.i11.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.0.val14.i.i13.i.i.i)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit

.noexc39:                                         ; preds = %.lr.ph.i.i.i.i
  br i1 %i.bn, label %.lr.ph.i.i19.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN3nla7nex_powEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_11nex_creator13mul_to_powersER6vectorIS1_Lb1EjEE3$_1EEEvT_T0_.exit.i14.i.i.i"

.lr.ph.i.i19.i.i.i:                               ; preds = %.noexc39, %.noexc40
  %.016.i.i20.i.i.i = phi ptr [ %.0.i.i22.i.i.i, %.noexc40 ], [ %.013.i.i.i.i.i, %.noexc39 ] ; 4 uses
  %.0915.i.i21.i.i.i = phi ptr [ %.016.i.i20.i.i.i, %.noexc40 ], [ %.08.i.i.i.i, %.noexc39 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.0915.i.i21.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.016.i.i20.i.i.i, i64 12, i1 false), !tbaa.struct !33
  %.0.i.i22.i.i.i = getelementptr inbounds i8, ptr %.016.i.i20.i.i.i, i64 -16 ; 2 uses
  %.0.val.i.i23.i.i.i = load ptr, ptr %.0.i.i22.i.i.i, align 8, !tbaa !41
  %i.bo = invoke noundef zeroext i1 @_ZNK3nla11nex_creator2gtERKNS_3nexES3_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i.i11.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.0.val.i.i23.i.i.i)
          to label %.noexc40 unwind label %.loopexit

.noexc40:                                         ; preds = %.lr.ph.i.i19.i.i.i
  br i1 %i.bo, label %.lr.ph.i.i19.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN3nla7nex_powEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_11nex_creator13mul_to_powersER6vectorIS1_Lb1EjEE3$_1EEEvT_T0_.exit.i14.i.i.i", !llvm.loop !94

"_ZSt25__unguarded_linear_insertIPN3nla7nex_powEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_11nex_creator13mul_to_powersER6vectorIS1_Lb1EjEE3$_1EEEvT_T0_.exit.i14.i.i.i": ; preds = %.noexc40, %.noexc39
  %.09.lcssa.i.i15.i.i.i = phi ptr [ %.08.i.i.i.i, %.noexc39 ], [ %.016.i.i20.i.i.i, %.noexc40 ] ; 2 uses
  %.sroa.5.sroa.0.0.extract.trunc.i.i16.i.i.i = trunc i64 %i.bm to i32
  store ptr %.sroa.0.0.copyload.i.i11.i.i.i, ptr %.09.lcssa.i.i15.i.i.i, align 8, !tbaa !24
  %.sroa.5.0..09.sroa_idx.i.i17.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i15.i.i.i, i64 8
  store i32 %.sroa.5.sroa.0.0.extract.trunc.i.i16.i.i.i, ptr %.sroa.5.0..09.sroa_idx.i.i17.i.i.i, align 8, !tbaa !23
  %i.bp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 16 ; 2 uses
  %.not.i18.i.i.i = icmp eq ptr %i.bp, %i.az
  br i1 %.not.i18.i.i.i, label %"_ZSt4sortIPN3nla7nex_powEZNS0_11nex_creator13mul_to_powersER6vectorIS1_Lb1EjEE3$_1EvT_S8_T0_.exit", label %.lr.ph.i.i.i.i, !llvm.loop !96

bb.k:                                             ; preds = %.noexc35
  %.not19.i.i.i.i = icmp eq i32 %i.av, 1
  br i1 %.not19.i.i.i.i, label %"_ZSt4sortIPN3nla7nex_powEZNS0_11nex_creator13mul_to_powersER6vectorIS1_Lb1EjEE3$_1EvT_S8_T0_.exit", label %.lr.ph.i25.i.i.i

.lr.ph.i25.i.i.i:                                 ; preds = %bb.k, %bb.q
  %.021.i26.i.i.i = phi ptr [ %.0.i37.i.i.i, %bb.q ], [ %scevgep.i.i.i, %bb.k ] ; 8 uses
  %.pn20.i27.i.i.i = phi ptr [ %.021.i26.i.i.i, %bb.q ], [ %i.aw, %bb.k ] ; 5 uses
  %.0.val.i28.i.i.i = load ptr, ptr %.021.i26.i.i.i, align 8, !tbaa !41
  %.val17.i29.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !41
  %i.bq = invoke noundef zeroext i1 @_ZNK3nla11nex_creator2gtERKNS_3nexES3_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %.0.val.i28.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.val17.i29.i.i.i)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc41:                                         ; preds = %.lr.ph.i25.i.i.i
  br i1 %i.bq, label %bb.l, label %bb.p

bb.l:                                             ; preds = %.noexc41
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.021.i26.i.i.i, i64 16, i1 false), !tbaa.struct !33
  %i.br = ptrtoint ptr %.021.i26.i.i.i to i64
  %i.bs = sub i64 %i.br, %i.ba                    ; 3 uses
  %i.bt = ashr exact i64 %i.bs, 4                 ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 1
  br i1 %i.bu, label %bb.m, label %bb.n, !prof !93

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %.pn20.i27.i.i.i, i64 32
  %i.bw = sub nsw i64 0, %i.bt
  %i.bx = getelementptr inbounds [16 x i8], ptr %i.bv, i64 %i.bw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bx, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bs, i1 false)
  br label %_ZSt13move_backwardIPN3nla7nex_powES2_ET0_T_S4_S3_.exit.i44.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.by = icmp eq i64 %i.bs, 16
  br i1 %i.by, label %bb.o, label %_ZSt13move_backwardIPN3nla7nex_powES2_ET0_T_S4_S3_.exit.i44.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %.pn20.i27.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bz, ptr noundef nonnull align 8 dereferenceable(12) %i.aw, i64 12, i1 false), !tbaa.struct !33
  br label %_ZSt13move_backwardIPN3nla7nex_powES2_ET0_T_S4_S3_.exit.i44.i.i.i

_ZSt13move_backwardIPN3nla7nex_powES2_ET0_T_S4_S3_.exit.i44.i.i.i: ; preds = %bb.o, %bb.n, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aw, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.q

bb.p:                                             ; preds = %.noexc41
  %.sroa.0.0.copyload.i.i30.i.i.i = load ptr, ptr %.021.i26.i.i.i, align 8, !tbaa !24 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i31.i.i.i = getelementptr inbounds nuw i8, ptr %.pn20.i27.i.i.i, i64 24
  %i.ca = load i64, ptr %.sroa.5.0..sroa_idx.i.i31.i.i.i, align 8
  %.0.val14.i.i32.i.i.i = load ptr, ptr %.pn20.i27.i.i.i, align 8, !tbaa !41
  %i.cb = invoke noundef zeroext i1 @_ZNK3nla11nex_creator2gtERKNS_3nexES3_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i.i30.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.0.val14.i.i32.i.i.i)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc42:                                         ; preds = %bb.p
  br i1 %i.cb, label %.lr.ph.i.i39.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN3nla7nex_powEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_11nex_creator13mul_to_powersER6vectorIS1_Lb1EjEE3$_1EEEvT_T0_.exit.i33.i.i.i"

.lr.ph.i.i39.i.i.i:                               ; preds = %.noexc42, %.noexc43
  %.016.i.i40.i.i.i = phi ptr [ %.0.i.i42.i.i.i, %.noexc43 ], [ %.pn20.i27.i.i.i, %.noexc42 ] ; 4 uses
  %.0915.i.i41.i.i.i = phi ptr [ %.016.i.i40.i.i.i, %.noexc43 ], [ %.021.i26.i.i.i, %.noexc42 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.0915.i.i41.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.016.i.i40.i.i.i, i64 12, i1 false), !tbaa.struct !33
  %.0.i.i42.i.i.i = getelementptr inbounds i8, ptr %.016.i.i40.i.i.i, i64 -16 ; 2 uses
  %.0.val.i.i43.i.i.i = load ptr, ptr %.0.i.i42.i.i.i, align 8, !tbaa !41
  %i.cc = invoke noundef zeroext i1 @_ZNK3nla11nex_creator2gtERKNS_3nexES3_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i.i30.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.0.val.i.i43.i.i.i)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc43:                                         ; preds = %.lr.ph.i.i39.i.i.i
  br i1 %i.cc, label %.lr.ph.i.i39.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN3nla7nex_powEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_11nex_creator13mul_to_powersER6vectorIS1_Lb1EjEE3$_1EEEvT_T0_.exit.i33.i.i.i", !llvm.loop !94

"_ZSt25__unguarded_linear_insertIPN3nla7nex_powEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_11nex_creator13mul_to_powersER6vectorIS1_Lb1EjEE3$_1EEEvT_T0_.exit.i33.i.i.i": ; preds = %.noexc43, %.noexc42
  %.09.lcssa.i.i34.i.i.i = phi ptr [ %.021.i26.i.i.i, %.noexc42 ], [ %.016.i.i40.i.i.i, %.noexc43 ] ; 2 uses
  %.sroa.5.sroa.0.0.extract.trunc.i.i35.i.i.i = trunc i64 %i.ca to i32
  store ptr %.sroa.0.0.copyload.i.i30.i.i.i, ptr %.09.lcssa.i.i34.i.i.i, align 8, !tbaa !24
  %.sroa.5.0..09.sroa_idx.i.i36.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i34.i.i.i, i64 8
  store i32 %.sroa.5.sroa.0.0.extract.trunc.i.i35.i.i.i, ptr %.sroa.5.0..09.sroa_idx.i.i36.i.i.i, align 8, !tbaa !23
  br label %bb.q

bb.q:                                             ; preds = %"_ZSt25__unguarded_linear_insertIPN3nla7nex_powEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_11nex_creator13mul_to_powersER6vectorIS1_Lb1EjEE3$_1EEEvT_T0_.exit.i33.i.i.i", %_ZSt13move_backwardIPN3nla7nex_powES2_ET0_T_S4_S3_.exit.i44.i.i.i
  %.0.i37.i.i.i = getelementptr inbounds nuw i8, ptr %.021.i26.i.i.i, i64 16 ; 2 uses
  %.not.i38.i.i.i = icmp eq ptr %.0.i37.i.i.i, %i.az
  br i1 %.not.i38.i.i.i, label %"_ZSt4sortIPN3nla7nex_powEZNS0_11nex_creator13mul_to_powersER6vectorIS1_Lb1EjEE3$_1EvT_S8_T0_.exit", label %.lr.ph.i25.i.i.i, !llvm.loop !95

.loopexit:                                        ; preds = %.lr.ph.i.i19.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp71

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit56 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp71

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph.i.i.i.i.i
  %lpad.loopexit59 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp71

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.i, %.preheader.i
  %lpad.loopexit61 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp71

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i.i39.i.i.i
  %lpad.loopexit64 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp71

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.p, %.lr.ph.i25.i.i.i
  %lpad.loopexit66 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp71

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp71

.lr.ph88:                                         ; preds = %_ZN6vectorIN3nla7nex_powELb1EjE5clearEv.exit, %._crit_edge98
  %i.cd = phi ptr [ %i.cp, %._crit_edge98 ], [ %i.ar, %_ZN6vectorIN3nla7nex_powELb1EjE5clearEv.exit ] ; 4 uses
  %.sroa.047.087 = phi ptr [ %i.cu, %._crit_edge98 ], [ %i.as, %_ZN6vectorIN3nla7nex_powELb1EjE5clearEv.exit ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.047.087, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !97
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.047.087, i64 40
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !91
  %i.ci = icmp eq ptr %i.cd, null
  br i1 %i.ci, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph88
  %i.cj = getelementptr inbounds i8, ptr %i.cd, i64 -4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !23 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %i.cd, i64 -8
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !23
  %i.cn = icmp eq i32 %i.ck, %i.cm
  br i1 %i.cn, label %bb.s, label %._crit_edge98

bb.s:                                             ; preds = %bb.r, %.lr.ph88
  invoke void @_ZN6vectorIN3nla7nex_powELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc44 unwind label %bb.t

.noexc44:                                         ; preds = %bb.s
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !20  ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !23
  br label %._crit_edge98

._crit_edge98:                                    ; preds = %bb.r, %.noexc44
  %i.co = phi i32 [ %.pre2.i, %.noexc44 ], [ %i.ck, %bb.r ] ; 2 uses
  %i.cp = phi ptr [ %.pre.i, %.noexc44 ], [ %i.cd, %bb.r ] ; 4 uses
  %i.cq = zext i32 %i.co to i64
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.cq ; 2 uses
  store ptr %i.cf, ptr %i.cr, align 8, !tbaa !24
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i32 %i.ch, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !23
  %i.cs = getelementptr inbounds i8, ptr %i.cp, i64 -4
  %i.ct = add i32 %i.co, 1                        ; 2 uses
  store i32 %i.ct, ptr %i.cs, align 4, !tbaa !23
  %i.cu = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.047.087) #26 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.i
  br i1 %i.cv, label %_ZN6vectorIN3nla7nex_powELb1EjE3endEv.exit32, label %.lr.ph88

bb.t:                                             ; preds = %bb.s
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp71

"_ZSt4sortIPN3nla7nex_powEZNS0_11nex_creator13mul_to_powersER6vectorIS1_Lb1EjEE3$_1EvT_S8_T0_.exit": ; preds = %bb.q, %"_ZSt25__unguarded_linear_insertIPN3nla7nex_powEN9__gnu_cxx5__ops14_Val_comp_iterIZNS0_11nex_creator13mul_to_powersER6vectorIS1_Lb1EjEE3$_1EEEvT_T0_.exit.i14.i.i.i", %._crit_edge89, %bb.k, %_ZN6vectorIN3nla7nex_powELb1EjE3endEv.exit32
  %i.cx = load ptr, ptr %i.j, align 8, !tbaa !84
  invoke void @_ZNSt8_Rb_treeIPN3nla3nexESt4pairIKS2_iESt10_Select1stIS5_ESt8functionIFbPKS1_SA_EESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef %i.cx)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %"_ZSt4sortIPN3nla7nex_powEZNS0_11nex_creator13mul_to_powersER6vectorIS1_Lb1EjEE3$_1EvT_S8_T0_.exit"
  %i.cy = load ptr, ptr %i.f, align 8, !tbaa !78  ; 2 uses
  %.not.i.i.i.i.i45 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i.i45, label %_ZNSt3mapIPN3nla3nexEiSt8functionIFbPKS1_S5_EESaISt4pairIKS2_iEEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cz = invoke noundef zeroext i1 %i.cy(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef 3)
          to label %_ZNSt3mapIPN3nla3nexEiSt8functionIFbPKS1_S5_EESaISt4pairIKS2_iEEED2Ev.exit unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #23
  unreachable

bb.x:                                             ; preds = %"_ZSt4sortIPN3nla7nex_powEZNS0_11nex_creator13mul_to_powersER6vectorIS1_Lb1EjEE3$_1EvT_S8_T0_.exit"
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  call void @__clang_call_terminate(ptr %i.dd) #23
  unreachable

_ZNSt3mapIPN3nla3nexEiSt8functionIFbPKS1_S5_EESaISt4pairIKS2_iEEED2Ev.exit: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

.loopexit.split-lp71:                             ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %.loopexit70, %.loopexit.split-lp71.loopexit.split-lp, %.loopexit.split-lp71.loopexit, %bb.t
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp75, %.loopexit.split-lp71.loopexit.split-lp ], [ %i.cw, %bb.t ], [ %lpad.loopexit72, %.loopexit70 ], [ %lpad.loopexit74, %.loopexit.split-lp71.loopexit ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit56, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit59, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit61, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit64, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit66, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt3mapIPN3nla3nexEiSt8functionIFbPKS1_S5_EESaISt4pairIKS2_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6vectorIN3nla7nex_powELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6vectorIN3nla7nex_powELb1EjE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN6vectorIN3nla7nex_powELb1EjE7destroyEv.exit unwind label %bb.c

_ZN6vectorIN3nla7nex_powELb1EjE7destroyEv.exit:   ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #23
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK3nla11nex_creator13gt_on_mul_mulERKNS_7nex_mulES3_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(48) %1) ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(48) %2) ; 2 uses
  %i.i = icmp eq i32 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZNK3nla11nex_creator28gt_on_powers_mul_same_degreeINS_7nex_mulEEEbRKT_RKS2_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = icmp ugt i32 %i.d, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi i1 [ %i.j, %bb.b ], [ %i.k, %bb.c ]
  ret i1 %i.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3nla11nex_creator28gt_on_powers_mul_same_degreeINS_7nex_mulEEEbRKT_RKS2_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %.outer

.outer:                                           ; preds = %bb.o, %bb.a
  %.ph = phi ptr [ %i.al, %bb.o ], [ %i.f, %bb.a ]
  %.ph45 = phi ptr [ %i.ad, %bb.o ], [ %i.b, %bb.a ]
  %.027.ph = phi i32 [ %.128, %bb.o ], [ %i.d, %bb.a ]
  %.026.ph.in = phi ptr [ %i.ar, %bb.o ], [ %i.g, %bb.a ]
  %.025.ph = phi ptr [ %i.ab, %bb.o ], [ %i.b, %bb.a ]
  %.0.ph = phi ptr [ %i.ac, %bb.o ], [ %i.f, %bb.a ]
  %.026.ph = load i32, ptr %.026.ph.in, align 8, !tbaa !26 ; 2 uses
  br label %bb.b
end_hunk_0
