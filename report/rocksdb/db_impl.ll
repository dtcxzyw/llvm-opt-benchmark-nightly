Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/db_impl?download=true
inline.NumInlined: 18355
inline.NumDeleted: 8074
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN7rocksdb6DBImpl26CommitFileIngestionHandlesESt6vectorISt10unique_ptrINS_19FileIngestionHandleESt14default_deleteIS3_EESaIS6_EE:bb.a
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yy, i64 352
  store i32 %i.yz, ptr %i.zb, align 8, !tbaa !884
  %i.zc = add nuw i64 %.sroa.5.0979.epil, 1
  %epil.iter1835.next = add i64 %epil.iter1835, 1 ; 2 uses
  %epil.iter1835.cmp.not = icmp eq i64 %epil.iter1835.next, %xtraiter1834
  br i1 %epil.iter1835.cmp.not, label %.loopexit724, label %.lr.ph982.epil, !llvm.loop !3521

.loopexit724:                                     ; preds = %.loopexit724.loopexit.unr-lcssa, %.lr.ph982.epil, %._crit_edge971.thread, %bb.eb, %._crit_edge976
  %i.zd = phi ptr [ %i.tu, %._crit_edge971.thread ], [ %i.uh, %._crit_edge976 ], [ %i.uh, %bb.eb ], [ %i.uh, %.lr.ph982.epil ], [ %i.uh, %.loopexit724.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #43
  %i.ze = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.zf = load ptr, ptr %i.ze, align 16, !tbaa !724 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %1, i64 3944
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !796
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %35, i8 0, i64 32, i1 false)
  %i.zi = load ptr, ptr %i.zf, align 8, !tbaa !243
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 24
  %i.zk = load ptr, ptr %i.zj, align 8
  invoke void %i.zk(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %33, ptr noundef nonnull align 8 dereferenceable(874) %i.zf, ptr noundef nonnull align 8 dereferenceable(104) %30, ptr noundef nonnull align 8 dereferenceable(192) %29, ptr noundef nonnull align 8 dereferenceable(25) %13, ptr noundef nonnull align 8 dereferenceable(872) %31, ptr noundef nonnull %i.gi, ptr noundef %i.zh, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(32) %35, i32 noundef %.0628.lcssa1288)
          to label %bb.ec unwind label %bb.ej

bb.ec:                                            ; preds = %.loopexit724
  %.not.i379 = icmp eq ptr %0, %33
  br i1 %.not.i379, label %_ZN7rocksdb6StatusaSEOS0_.exit382, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.zl = load <4 x i8>, ptr %33, align 8, !tbaa !158
  store <4 x i8> %i.zl, ptr %0, align 8, !tbaa !158
  store <4 x i8> zeroinitializer, ptr %33, align 8, !tbaa !158
  %i.zm = getelementptr inbounds nuw i8, ptr %33, i64 4 ; 2 uses
  %i.zn = load i8, ptr %i.zm, align 4, !tbaa !709, !range !638, !noundef !639
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.zn, ptr %i.zo, align 4, !tbaa !839
  store i8 0, ptr %i.zm, align 4, !tbaa !839
  %i.zp = getelementptr inbounds nuw i8, ptr %33, i64 5 ; 2 uses
  %i.zq = load i8, ptr %i.zp, align 1, !tbaa !158
  %i.zr = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.zq, ptr %i.zr, align 1, !tbaa !840
  store i8 0, ptr %i.zp, align 1, !tbaa !840
  %i.zs = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !737
  store ptr null, ptr %i.zs, align 8, !tbaa !737
  %i.zu = load ptr, ptr %i.i, align 8, !tbaa !737 ; 2 uses
  store ptr %i.zt, ptr %i.i, align 8, !tbaa !737
  %.not.i.i.i.i.i380 = icmp eq ptr %i.zu, null
  br i1 %.not.i.i.i.i.i380, label %_ZN7rocksdb6StatusaSEOS0_.exit382, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i381

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i381: ; preds = %bb.ed
  call void @_ZdaPv(ptr noundef nonnull %i.zu) #40
  br label %_ZN7rocksdb6StatusaSEOS0_.exit382

_ZN7rocksdb6StatusaSEOS0_.exit382:                ; preds = %bb.ec, %bb.ed, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i381
  %i.zv = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !737 ; 2 uses
  %.not.i.i383 = icmp eq ptr %i.zw, null
  br i1 %.not.i.i383, label %_ZN7rocksdb6StatusD2Ev.exit385, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i384

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i384: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit382
  call void @_ZdaPv(ptr noundef nonnull %i.zw) #40
  br label %_ZN7rocksdb6StatusD2Ev.exit385

_ZN7rocksdb6StatusD2Ev.exit385:                   ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit382, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i384
  %i.zx = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !719 ; 2 uses
  %.not.i386 = icmp eq ptr %i.zy, null
  br i1 %.not.i386, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ee

bb.ee:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit385
  %i.zz = invoke noundef zeroext i1 %i.zy(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(32) %35, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.ef ; 0 uses

bb.ef:                                            ; preds = %bb.ee
  %i.aaa = landingpad { ptr, i32 }
          catch ptr null
  %i.aab = extractvalue { ptr, i32 } %i.aaa, 0
  call void @__clang_call_terminate(ptr %i.aab) #44
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN7rocksdb6StatusD2Ev.exit385, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #43
  %i.aac = load ptr, ptr %34, align 8, !tbaa !1034 ; 3 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !1036 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aac, %i.aae
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8functionIFvRKN7rocksdb6StatusEEES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZSt8_DestroyISt8functionIFvRKN7rocksdb6StatusEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aak, %_ZSt8_DestroyISt8functionIFvRKN7rocksdb6StatusEEEEvPT_.exit.i.i.i ], [ %i.aac, %_ZNSt14_Function_baseD2Ev.exit ] ; 4 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !719 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aag, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt8functionIFvRKN7rocksdb6StatusEEEEvPT_.exit.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %.lr.ph.i.i.i
  %i.aah = invoke noundef zeroext i1 %i.aag(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFvRKN7rocksdb6StatusEEEEvPT_.exit.i.i.i unwind label %bb.eh ; 0 uses

bb.eh:                                            ; preds = %bb.eg
  %i.aai = landingpad { ptr, i32 }
          catch ptr null
  %i.aaj = extractvalue { ptr, i32 } %i.aai, 0
  call void @__clang_call_terminate(ptr %i.aaj) #44
  unreachable

_ZSt8_DestroyISt8functionIFvRKN7rocksdb6StatusEEEEvPT_.exit.i.i.i: ; preds = %bb.eg, %.lr.ph.i.i.i
  %i.aak = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i387 = icmp eq ptr %i.aak, %i.aae
  br i1 %.not.i.i.i387, label %_ZSt8_DestroyIPSt8functionIFvRKN7rocksdb6StatusEEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !43

_ZSt8_DestroyIPSt8functionIFvRKN7rocksdb6StatusEEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8functionIFvRKN7rocksdb6StatusEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %34, align 8, !tbaa !1034
  br label %_ZSt8_DestroyIPSt8functionIFvRKN7rocksdb6StatusEEES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8functionIFvRKN7rocksdb6StatusEEES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8functionIFvRKN7rocksdb6StatusEEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %_ZNSt14_Function_baseD2Ev.exit
  %i.aal = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8functionIFvRKN7rocksdb6StatusEEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.aac, %_ZNSt14_Function_baseD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aal, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8functionIFvRKN7rocksdb6StatusEEESaIS6_EED2Ev.exit, label %bb.ei

bb.ei:                                            ; preds = %_ZSt8_DestroyIPSt8functionIFvRKN7rocksdb6StatusEEES6_EvT_S8_RSaIT0_E.exit.i
  %i.aam = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !1035
  %i.aao = ptrtoint ptr %i.aan to i64
  %i.aap = ptrtoint ptr %i.aal to i64
  %i.aaq = sub i64 %i.aao, %i.aap
  call void @_ZdlPvm(ptr noundef nonnull %i.aal, i64 noundef %i.aaq) #40
  br label %_ZNSt6vectorISt8functionIFvRKN7rocksdb6StatusEEESaIS6_EED2Ev.exit

_ZNSt6vectorISt8functionIFvRKN7rocksdb6StatusEEESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8functionIFvRKN7rocksdb6StatusEEES6_EvT_S8_RSaIT0_E.exit.i, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #43
  br i1 %.not186947, label %._crit_edge986.thread, label %iter.check1686

iter.check1686:                                   ; preds = %_ZNSt6vectorISt8functionIFvRKN7rocksdb6StatusEEESaIS6_EED2Ev.exit
  %i.aar = add i64 %i.ex, -8
  %i.aas = sub i64 %i.aar, %i.ey                  ; 3 uses
  %i.aat = lshr i64 %i.aas, 3
  %i.aau = add nuw nsw i64 %i.aat, 1              ; 5 uses
  %min.iters.check1659.a = icmp ult i64 %i.aas, 24
  br i1 %min.iters.check1659.a, label %.lr.ph985.preheader, label %vector.main.loop.iter.check1660

vector.main.loop.iter.check1660:                  ; preds = %iter.check1686
  %min.iters.check1661 = icmp ult i64 %i.aas, 120
  br i1 %min.iters.check1661, label %vec.epilog.ph1690, label %vector.ph1662

vector.ph1662:                                    ; preds = %vector.main.loop.iter.check1660
  %i.aav = and i64 %i.aau, 12
  %n.vec1663 = and i64 %i.aau, 4611686018427387888 ; 4 uses
  %i.aaw = shl i64 %n.vec1663, 3
  %i.aax = getelementptr i8, ptr %.sroa.0577.0.lcssa1293, i64 %i.aaw
  br label %vector.body1664

vector.body1664:                                  ; preds = %vector.ph1662, %vector.body1664
  %index1665 = phi i64 [ 0, %vector.ph1662 ], [ %index.next1680, %vector.body1664 ] ; 2 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph1662 ], [ %i.abc, %vector.body1664 ]
  %vec.phi1666.a = phi <4 x i64> [ zeroinitializer, %vector.ph1662 ], [ %i.abd, %vector.body1664 ]
  %vec.phi1667 = phi <4 x i64> [ zeroinitializer, %vector.ph1662 ], [ %i.abe, %vector.body1664 ]
  %vec.phi1668 = phi <4 x i64> [ zeroinitializer, %vector.ph1662 ], [ %i.abf, %vector.body1664 ]
  %i.aay = shl i64 %index1665, 3
  %next.gep1669 = getelementptr i8, ptr %.sroa.0577.0.lcssa1293, i64 %i.aay ; 4 uses
  %i.aaz = getelementptr i8, ptr %next.gep1669, i64 32
  %i.aba = getelementptr i8, ptr %next.gep1669, i64 64
  %i.abb = getelementptr i8, ptr %next.gep1669, i64 96
  %wide.load1670.a = load <4 x ptr>, ptr %next.gep1669, align 8, !tbaa !1963
  %wide.load1671.a = load <4 x ptr>, ptr %i.aaz, align 8, !tbaa !1963
  %wide.load1672 = load <4 x ptr>, ptr %i.aba, align 8, !tbaa !1963
  %wide.load1673 = load <4 x ptr>, ptr %i.abb, align 8, !tbaa !1963
  %wide.gep = getelementptr inbounds nuw i8, <4 x ptr> %wide.load1670.a, i64 17440
  %wide.gep1674.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.load1671.a, i64 17440
  %wide.gep1675 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load1672, i64 17440
  %wide.gep1676 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load1673, i64 17440
  %wide.masked.gather = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !2023
  %wide.masked.gather1677.a = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep1674.a, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !2023
  %wide.masked.gather1678 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep1675, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !2023
  %wide.masked.gather1679 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep1676, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !2023
  %i.abc = call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi, <4 x i64> %wide.masked.gather) ; 2 uses
  %i.abd = call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi1666.a, <4 x i64> %wide.masked.gather1677.a) ; 2 uses
  %i.abe = call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi1667, <4 x i64> %wide.masked.gather1678) ; 2 uses
  %i.abf = call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi1668, <4 x i64> %wide.masked.gather1679) ; 2 uses
  %index.next1680 = add nuw i64 %index1665, 16    ; 2 uses
  %i.abg = icmp eq i64 %index.next1680, %n.vec1663
  br i1 %i.abg, label %middle.block1681, label %vector.body1664, !llvm.loop !3522

middle.block1681:                                 ; preds = %vector.body1664
  %rdx.minmax = call <4 x i64> @llvm.umax.v4i64(<4 x i64> %i.abc, <4 x i64> %i.abd)
  %rdx.minmax1682 = call <4 x i64> @llvm.umax.v4i64(<4 x i64> %rdx.minmax, <4 x i64> %i.abe)
  %rdx.minmax1683 = call <4 x i64> @llvm.umax.v4i64(<4 x i64> %rdx.minmax1682, <4 x i64> %i.abf)
  %i.abh = call i64 @llvm.vector.reduce.umax.v4i64(<4 x i64> %rdx.minmax1683) ; 3 uses
  %cmp.n1684 = icmp eq i64 %i.aau, %n.vec1663
  br i1 %cmp.n1684, label %._crit_edge986, label %vec.epilog.iter.check1688

vec.epilog.iter.check1688:                        ; preds = %middle.block1681
  %min.epilog.iters.check1689 = icmp eq i64 %i.aav, 0
  br i1 %min.epilog.iters.check1689, label %.lr.ph985.preheader, label %vec.epilog.ph1690, !prof !1069

vec.epilog.ph1690:                                ; preds = %vector.main.loop.iter.check1660, %vec.epilog.iter.check1688
  %vec.epilog.resume.val1685 = phi i64 [ %n.vec1663, %vec.epilog.iter.check1688 ], [ 0, %vector.main.loop.iter.check1660 ]
  %bc.merge.rdx = phi i64 [ %i.abh, %vec.epilog.iter.check1688 ], [ 0, %vector.main.loop.iter.check1660 ]
  %n.vec1691 = and i64 %i.aau, 4611686018427387900 ; 3 uses
  %37 = shl i64 %n.vec1691, 3
  %38 = getelementptr i8, ptr %.sroa.0577.0.lcssa1293, i64 %37
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1692

vec.epilog.vector.body1692:                       ; preds = %vec.epilog.vector.body1692, %vec.epilog.ph1690
  %index1693 = phi i64 [ %vec.epilog.resume.val1685, %vec.epilog.ph1690 ], [ %index.next1699, %vec.epilog.vector.body1692 ] ; 2 uses
  %vec.phi1694 = phi <4 x i64> [ %broadcast.splat, %vec.epilog.ph1690 ], [ %i.abj, %vec.epilog.vector.body1692 ]
  %i.abi = shl i64 %index1693, 3
  %next.gep1695 = getelementptr i8, ptr %.sroa.0577.0.lcssa1293, i64 %i.abi
  %wide.load1696 = load <4 x ptr>, ptr %next.gep1695, align 8, !tbaa !1963
  %wide.gep1697 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load1696, i64 17440
  %wide.masked.gather1698 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep1697, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !2023
  %i.abj = call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi1694, <4 x i64> %wide.masked.gather1698) ; 2 uses
  %index.next1699 = add nuw i64 %index1693, 4     ; 2 uses
  %i.abk = icmp eq i64 %index.next1699, %n.vec1691
  br i1 %i.abk, label %vec.epilog.middle.block1700, label %vec.epilog.vector.body1692, !llvm.loop !3523

vec.epilog.middle.block1700:                      ; preds = %vec.epilog.vector.body1692
  %i.abl = call i64 @llvm.vector.reduce.umax.v4i64(<4 x i64> %i.abj) ; 2 uses
  %cmp.n1701 = icmp eq i64 %i.aau, %n.vec1691
  br i1 %cmp.n1701, label %._crit_edge986, label %.lr.ph985.preheader

.lr.ph985.preheader:                              ; preds = %iter.check1686, %vec.epilog.iter.check1688, %vec.epilog.middle.block1700
  %.sroa.0499.0984.ph = phi ptr [ %.sroa.0577.0.lcssa1293, %iter.check1686 ], [ %i.aax, %vec.epilog.iter.check1688 ], [ %38, %vec.epilog.middle.block1700 ]
  %.0627983.ph = phi i64 [ 0, %iter.check1686 ], [ %i.abh, %vec.epilog.iter.check1688 ], [ %i.abl, %vec.epilog.middle.block1700 ]
  br label %.lr.ph985

._crit_edge986:                                   ; preds = %.lr.ph985, %vec.epilog.middle.block1700, %middle.block1681
  %.sroa.speculated.lcssa = phi i64 [ %i.abl, %vec.epilog.middle.block1700 ], [ %i.abh, %middle.block1681 ], [ %.sroa.speculated, %.lr.ph985 ] ; 5 uses
  %.not197 = icmp eq i64 %.sroa.speculated.lcssa, 0
  br i1 %.not197, label %._crit_edge986.thread, label %bb.em

bb.ej:                                            ; preds = %.loopexit724
  %i.abm = landingpad { ptr, i32 }
          cleanup
  %i.abn = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !719 ; 2 uses
  %.not.i388 = icmp eq ptr %i.abo, null
  br i1 %.not.i388, label %_ZNSt14_Function_baseD2Ev.exit389, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.abp = invoke noundef zeroext i1 %i.abo(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(32) %35, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit389 unwind label %bb.el ; 0 uses

bb.el:                                            ; preds = %bb.ek
  %i.abq = landingpad { ptr, i32 }
          catch ptr null
  %i.abr = extractvalue { ptr, i32 } %i.abq, 0
  call void @__clang_call_terminate(ptr %i.abr) #44
  unreachable

_ZNSt14_Function_baseD2Ev.exit389:                ; preds = %bb.ej, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #43
  call void @_ZNSt6vectorISt8functionIFvRKN7rocksdb6StatusEEESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %34) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #43
  br label %.loopexit.split-lp726

.lr.ph985:                                        ; preds = %.lr.ph985.preheader, %.lr.ph985
  %.sroa.0499.0984 = phi ptr [ %i.abv, %.lr.ph985 ], [ %.sroa.0499.0984.ph, %.lr.ph985.preheader ] ; 2 uses
  %.0627983 = phi i64 [ %.sroa.speculated, %.lr.ph985 ], [ %.0627983.ph, %.lr.ph985.preheader ]
  %i.abs = load ptr, ptr %.sroa.0499.0984, align 8, !tbaa !1963
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 17440
  %i.abu = load i64, ptr %i.abt, align 8, !tbaa !2023
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %.0627983, i64 %i.abu) ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %.sroa.0499.0984, i64 8 ; 2 uses
  %i.abw = icmp eq ptr %i.abv, %.sroa.25.0.lcssa1290
  br i1 %i.abw, label %._crit_edge986, label %.lr.ph985, !llvm.loop !3524

bb.em:                                            ; preds = %._crit_edge986
  %i.abx = load ptr, ptr %i.ze, align 16, !tbaa !724
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 264
  %i.abz = load atomic i64, ptr %i.aby acquire, align 8
  %i.aca = icmp ugt i64 %.sroa.speculated.lcssa, %i.abz
  br i1 %i.aca, label %bb.en, label %._crit_edge986.thread

bb.en:                                            ; preds = %bb.em
  %i.acb = load ptr, ptr %i.ze, align 16, !tbaa !724
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 280
  store atomic i64 %.sroa.speculated.lcssa, ptr %i.acc seq_cst, align 8
  %i.acd = load ptr, ptr %i.ze, align 16, !tbaa !724
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 288
  store atomic i64 %.sroa.speculated.lcssa, ptr %i.ace seq_cst, align 8
  %i.acf = load ptr, ptr %i.ze, align 16, !tbaa !724
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 264
  store atomic i64 %.sroa.speculated.lcssa, ptr %i.acg release, align 8
  br label %._crit_edge986.thread

._crit_edge986.thread:                            ; preds = %_ZNSt6vectorISt8functionIFvRKN7rocksdb6StatusEEESaIS6_EED2Ev.exit, %bb.em, %bb.en, %._crit_edge986
  %i.ach = load i64, ptr %31, align 8, !tbaa !1028 ; 2 uses
  %.not2.i469 = icmp eq i64 %i.ach, 0
  br i1 %.not2.i469, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge986.thread, %_ZN7rocksdb10autovectorIPNS_11VersionEditELm8EED2Ev.exit.i
  %i.aci = phi i64 [ %i.acv, %_ZN7rocksdb10autovectorIPNS_11VersionEditELm8EED2Ev.exit.i ], [ %i.ach, %._crit_edge986.thread ]
  %i.acj = load ptr, ptr %i.tr, align 8, !tbaa !1017
  %i.ack = add i64 %i.aci, -1                     ; 3 uses
  store i64 %i.ack, ptr %31, align 8, !tbaa !1028
  %i.acl = getelementptr inbounds nuw [104 x i8], ptr %i.acj, i64 %i.ack ; 5 uses
  %.pr.i.i.i = load i64, ptr %i.acl, align 8, !tbaa !1025
  %.not1.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not1.i.i.i, label %bb.eo, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i
  store i64 0, ptr %i.acl, align 8, !tbaa !1025
  br label %bb.eo

bb.eo:                                            ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 80
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !1030 ; 5 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acl, i64 88 ; 2 uses
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !1037
  %.not.i.i.i.i.i470 = icmp eq ptr %i.acp, %i.acn
  br i1 %.not.i.i.i.i.i470, label %_ZN7rocksdb10autovectorIPNS_11VersionEditELm8EE5clearEv.exit.i.i, label %_ZSt8_DestroyIPPN7rocksdb11VersionEditES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPPN7rocksdb11VersionEditES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %bb.eo
  store ptr %i.acn, ptr %i.aco, align 8, !tbaa !1037
  br label %_ZN7rocksdb10autovectorIPNS_11VersionEditELm8EE5clearEv.exit.i.i

_ZN7rocksdb10autovectorIPNS_11VersionEditELm8EE5clearEv.exit.i.i: ; preds = %_ZSt8_DestroyIPPN7rocksdb11VersionEditES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, %bb.eo
  %.not.i.i.i1.i.i = icmp eq ptr %i.acn, null
  br i1 %.not.i.i.i1.i.i, label %_ZN7rocksdb10autovectorIPNS_11VersionEditELm8EED2Ev.exit.i, label %bb.ep

bb.ep:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_11VersionEditELm8EE5clearEv.exit.i.i
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acl, i64 96
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !1031
  %i.acs = ptrtoint ptr %i.acr to i64
  %i.act = ptrtoint ptr %i.acn to i64
  %i.acu = sub i64 %i.acs, %i.act
  call void @_ZdlPvm(ptr noundef nonnull %i.acn, i64 noundef %i.acu) #40
  %.pre.i471 = load i64, ptr %31, align 8, !tbaa !1028
  br label %_ZN7rocksdb10autovectorIPNS_11VersionEditELm8EED2Ev.exit.i

_ZN7rocksdb10autovectorIPNS_11VersionEditELm8EED2Ev.exit.i: ; preds = %bb.ep, %_ZN7rocksdb10autovectorIPNS_11VersionEditELm8EE5clearEv.exit.i.i
  %i.acv = phi i64 [ %i.ack, %_ZN7rocksdb10autovectorIPNS_11VersionEditELm8EE5clearEv.exit.i.i ], [ %.pre.i471, %bb.ep ] ; 2 uses
  %.not.i472 = icmp eq i64 %i.acv, 0
  br i1 %.not.i472, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !44

._crit_edge.i:                                    ; preds = %_ZN7rocksdb10autovectorIPNS_11VersionEditELm8EED2Ev.exit.i, %._crit_edge986.thread
  %i.acw = load ptr, ptr %i.tt, align 8, !tbaa !1038 ; 6 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %31, i64 856 ; 2 uses
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !1039 ; 2 uses
  %.not.i.i.i473 = icmp eq ptr %i.acy, %i.acw
  br i1 %.not.i.i.i473, label %_ZSt8_DestroyIPN7rocksdb10autovectorIPNS0_11VersionEditELm8EEES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge.i, %_ZSt8_DestroyIN7rocksdb10autovectorIPNS0_11VersionEditELm8EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.adi, %_ZSt8_DestroyIN7rocksdb10autovectorIPNS0_11VersionEditELm8EEEEvPT_.exit.i.i.i.i.i ], [ %i.acw, %._crit_edge.i ] ; 6 uses
  %.pr.i.i.i.i.i.i.i.i.i = load i64, ptr %.05.i.i.i.i.i, align 8, !tbaa !1025
  %.not1.i.i.i.i.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i, label %bb.eq, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i
  store i64 0, ptr %.05.i.i.i.i.i, align 8, !tbaa !1025
  br label %bb.eq

bb.eq:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.acz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 80
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !1030 ; 5 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 88 ; 2 uses
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !1037
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.adc, %i.ada
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN7rocksdb10autovectorIPNS_11VersionEditELm8EE5clearEv.exit.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPPN7rocksdb11VersionEditES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPPN7rocksdb11VersionEditES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.eq
  store ptr %i.ada, ptr %i.adb, align 8, !tbaa !1037
  br label %_ZN7rocksdb10autovectorIPNS_11VersionEditELm8EE5clearEv.exit.i.i.i.i.i.i.i.i

_ZN7rocksdb10autovectorIPNS_11VersionEditELm8EE5clearEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPPN7rocksdb11VersionEditES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.eq
  %.not.i.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.ada, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7rocksdb10autovectorIPNS0_11VersionEditELm8EEEEvPT_.exit.i.i.i.i.i, label %bb.er

bb.er:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_11VersionEditELm8EE5clearEv.exit.i.i.i.i.i.i.i.i
  %i.add = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 96
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !1031
  %i.adf = ptrtoint ptr %i.ade to i64
  %i.adg = ptrtoint ptr %i.ada to i64
  %i.adh = sub i64 %i.adf, %i.adg
  call void @_ZdlPvm(ptr noundef nonnull %i.ada, i64 noundef %i.adh) #40
  br label %_ZSt8_DestroyIN7rocksdb10autovectorIPNS0_11VersionEditELm8EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN7rocksdb10autovectorIPNS0_11VersionEditELm8EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.er, %_ZN7rocksdb10autovectorIPNS_11VersionEditELm8EE5clearEv.exit.i.i.i.i.i.i.i.i
  %i.adi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.adi, %i.acy
  br i1 %.not.i.i.i.i1.i, label %_ZN7rocksdb10autovectorINS0_IPNS_11VersionEditELm8EEELm8EE5clearEv.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !45

_ZN7rocksdb10autovectorINS0_IPNS_11VersionEditELm8EEELm8EE5clearEv.exit: ; preds = %_ZSt8_DestroyIN7rocksdb10autovectorIPNS0_11VersionEditELm8EEEEvPT_.exit.i.i.i.i.i
  store ptr %i.acw, ptr %i.acx, align 8, !tbaa !1039
  %.pre1137 = load ptr, ptr %i.tt, align 8, !tbaa !1038 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %.pre1137, %i.acw
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb10autovectorIPNS0_11VersionEditELm8EEES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i391

.lr.ph.i.i.i.i391:                                ; preds = %_ZN7rocksdb10autovectorINS0_IPNS_11VersionEditELm8EEELm8EE5clearEv.exit, %_ZSt8_DestroyIN7rocksdb10autovectorIPNS0_11VersionEditELm8EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ads, %_ZSt8_DestroyIN7rocksdb10autovectorIPNS0_11VersionEditELm8EEEEvPT_.exit.i.i.i.i ], [ %.pre1137, %_ZN7rocksdb10autovectorINS0_IPNS_11VersionEditELm8EEELm8EE5clearEv.exit ] ; 6 uses
  %.pr.i.i.i.i.i.i.i.i = load i64, ptr %.05.i.i.i.i, align 8, !tbaa !1025
  %.not1.i.i.i.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i.i.i.i, label %bb.es, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i391
  store i64 0, ptr %.05.i.i.i.i, align 8, !tbaa !1025
  br label %bb.es

bb.es:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i391
  %i.adj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 80
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !1030 ; 5 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 88 ; 2 uses
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !1037
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.adm, %i.adk
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN7rocksdb10autovectorIPNS_11VersionEditELm8EE5clearEv.exit.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPPN7rocksdb11VersionEditES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPPN7rocksdb11VersionEditES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.es
  store ptr %i.adk, ptr %i.adl, align 8, !tbaa !1037
  br label %_ZN7rocksdb10autovectorIPNS_11VersionEditELm8EE5clearEv.exit.i.i.i.i.i.i.i

_ZN7rocksdb10autovectorIPNS_11VersionEditELm8EE5clearEv.exit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPPN7rocksdb11VersionEditES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i, %bb.es
  %.not.i.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.adk, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7rocksdb10autovectorIPNS0_11VersionEditELm8EEEEvPT_.exit.i.i.i.i, label %bb.et

bb.et:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_11VersionEditELm8EE5clearEv.exit.i.i.i.i.i.i.i
  %i.adn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 96
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !1031
end_hunk_0
