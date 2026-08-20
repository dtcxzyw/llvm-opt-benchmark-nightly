inline.NumInlined: 6576
inline.NumDeleted: 1413
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_:bb.a
.preheader1489:                                   ; preds = %.preheader1489.lr.ph, %bb.xv
  %indvars.iv2207 = phi i64 [ 4, %.preheader1489.lr.ph ], [ %indvars.iv.next2208, %bb.xv ] ; 3 uses
  %indvars.iv = phi i64 [ 2, %.preheader1489.lr.ph ], [ %indvars.iv.next, %bb.xv ] ; 2 uses
  %.0801890 = phi i64 [ 1, %.preheader1489.lr.ph ], [ %i.clr, %bb.xv ] ; 6 uses
  %.01889 = phi i8 [ 1, %.preheader1489.lr.ph ], [ %i.clt, %bb.xv ]
  br label %.preheader.preheader

._crit_edge:                                      ; preds = %bb.xv, %_ZN5boost5beast18basic_multi_bufferISaIcEED2Ev.exit629
  call void @_ZN5boost5beast6detail27test_mutable_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(64) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #29
  ret void

bb.xq:                                            ; preds = %_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit565, %_ZZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit
  %i.clm = landingpad { ptr, i32 }
          cleanup
  br label %bb.xu

bb.xr:                                            ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit563
  %i.cln = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #29
  br label %bb.xu

bb.xs:                                            ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEvEEmRKT_.exit622
  %i.clo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #29
  br label %bb.xu

bb.xt:                                            ; preds = %_ZN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EEC2ERKS3_mm.exit1231
  %i.clp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #29
  br label %bb.xu

bb.xu:                                            ; preds = %bb.xt, %bb.xs, %bb.xr, %bb.xq
  %.pn131 = phi { ptr, i32 } [ %i.clp, %bb.xt ], [ %i.clo, %bb.xs ], [ %i.clm, %bb.xq ], [ %i.cln, %bb.xr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #29
  call void @_ZN5boost5beast18basic_multi_bufferISaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %65) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #29
  br label %bb.aai

.loopexit:                                        ; preds = %bb.xw
  %indvars.iv.next2205 = add nuw nsw i64 %indvars.iv2204, 1 ; 2 uses
  %exitcond2209 = icmp eq i64 %indvars.iv.next2205, %indvars.iv2207
  br i1 %exitcond2209, label %bb.xv, label %.preheader.preheader, !llvm.loop !2315

.preheader.preheader:                             ; preds = %.loopexit, %.preheader1489
  %indvars.iv2204 = phi i64 [ 3, %.preheader1489 ], [ %indvars.iv.next2205, %.loopexit ] ; 2 uses
  %storemerge1887 = phi i64 [ 1, %.preheader1489 ], [ %i.clq, %.loopexit ] ; 2 uses
  %.11886 = phi i8 [ %.01889, %.preheader1489 ], [ %i.clt, %.loopexit ]
  %i.clq = add nuw nsw i64 %storemerge1887, 1
  br label %.preheader

bb.xv:                                            ; preds = %.loopexit
  %i.clr = add nuw nsw i64 %.0801890, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next2208 = add nuw nsw i64 %indvars.iv2207, 1
  %exitcond2210.not = icmp eq i64 %indvars.iv2207, %i.cli
  br i1 %exitcond2210.not, label %._crit_edge, label %.preheader1489, !llvm.loop !2316

.preheader:                                       ; preds = %.preheader.preheader, %bb.xw
  %storemerge1341884 = phi i64 [ %i.cls, %bb.xw ], [ 1, %.preheader.preheader ] ; 2 uses
  %.21883 = phi i8 [ %i.clt, %bb.xw ], [ %.11886, %.preheader.preheader ]
  br label %.lr.ph.i631.preheader

bb.xw:                                            ; preds = %_ZN5boost5beast18basic_multi_bufferISaIcEED2Ev.exit752
  %i.cls = add nuw nsw i64 %storemerge1341884, 1  ; 2 uses
  %exitcond2206 = icmp eq i64 %i.cls, %indvars.iv2204
  br i1 %exitcond2206, label %.loopexit, label %.preheader, !llvm.loop !2317

.lr.ph.i631.preheader:                            ; preds = %_ZN5boost5beast18basic_multi_bufferISaIcEED2Ev.exit752, %.preheader
  %.0791881 = phi i64 [ 1, %.preheader ], [ %i.cxi, %_ZN5boost5beast18basic_multi_bufferISaIcEED2Ev.exit752 ] ; 3 uses
  %.31880 = phi i8 [ %.21883, %.preheader ], [ %i.clt, %_ZN5boost5beast18basic_multi_bufferISaIcEED2Ev.exit752 ] ; 3 uses
  %i.clt = add i8 %.31880, 1                      ; 4 uses
  br i1 %i.cll, label %.lr.ph.i631.epil.preheader, label %.lr.ph.i631

.lr.ph.i631:                                      ; preds = %.lr.ph.i631.preheader, %.lr.ph.i631
  %.06.i632 = phi i64 [ %i.cmf, %.lr.ph.i631 ], [ 0, %.lr.ph.i631.preheader ] ; 5 uses
  %.045.i633 = phi i8 [ %i.cmc, %.lr.ph.i631 ], [ %.31880, %.lr.ph.i631.preheader ] ; 5 uses
  %niter3710 = phi i64 [ %niter3710.next.3, %.lr.ph.i631 ], [ 0, %.lr.ph.i631.preheader ]
  %i.clu = add i8 %.045.i633, 1
  %i.clv = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.06.i632
  store i8 %.045.i633, ptr %i.clv, align 1, !tbaa !17
  %i.clw = add i8 %.045.i633, 2
  %i.clx = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.06.i632
  %i.cly = getelementptr inbounds nuw i8, ptr %i.clx, i64 1
  store i8 %i.clu, ptr %i.cly, align 1, !tbaa !17
  %i.clz = add i8 %.045.i633, 3
  %i.cma = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.06.i632
  %i.cmb = getelementptr inbounds nuw i8, ptr %i.cma, i64 2
  store i8 %i.clw, ptr %i.cmb, align 1, !tbaa !17
  %i.cmc = add i8 %.045.i633, 4                   ; 2 uses
  %i.cmd = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.06.i632
  %i.cme = getelementptr inbounds nuw i8, ptr %i.cmd, i64 3
  store i8 %i.clz, ptr %i.cme, align 1, !tbaa !17
  %i.cmf = add nuw nsw i64 %.06.i632, 4           ; 2 uses
  %niter3710.next.3 = add i64 %niter3710, 4       ; 2 uses
  %niter3710.ncmp.3 = icmp eq i64 %niter3710.next.3, %unroll_iter3709
  br i1 %niter3710.ncmp.3, label %_ZZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit635.unr-lcssa, label %.lr.ph.i631, !llvm.loop !2266

_ZZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit635.unr-lcssa: ; preds = %.lr.ph.i631
  br i1 %lcmp.mod3707.not, label %_ZZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit635, label %.lr.ph.i631.epil.preheader

.lr.ph.i631.epil.preheader:                       ; preds = %_ZZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit635.unr-lcssa, %.lr.ph.i631.preheader
  %.06.i632.epil.init = phi i64 [ 0, %.lr.ph.i631.preheader ], [ %i.cmf, %_ZZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit635.unr-lcssa ]
  %.045.i633.epil.init = phi i8 [ %.31880, %.lr.ph.i631.preheader ], [ %i.cmc, %_ZZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit635.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod3708)
  br label %.lr.ph.i631.epil

.lr.ph.i631.epil:                                 ; preds = %.lr.ph.i631.epil, %.lr.ph.i631.epil.preheader
  %.06.i632.epil = phi i64 [ %i.cmi, %.lr.ph.i631.epil ], [ %.06.i632.epil.init, %.lr.ph.i631.epil.preheader ] ; 2 uses
  %.045.i633.epil = phi i8 [ %i.cmg, %.lr.ph.i631.epil ], [ %.045.i633.epil.init, %.lr.ph.i631.epil.preheader ] ; 2 uses
  %epil.iter3706 = phi i64 [ %epil.iter3706.next, %.lr.ph.i631.epil ], [ 0, %.lr.ph.i631.epil.preheader ]
  %i.cmg = add i8 %.045.i633.epil, 1
  %i.cmh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.06.i632.epil
  store i8 %.045.i633.epil, ptr %i.cmh, align 1, !tbaa !17
  %i.cmi = add nuw nsw i64 %.06.i632.epil, 1
  %epil.iter3706.next = add i64 %epil.iter3706, 1 ; 2 uses
  %epil.iter3706.cmp.not = icmp eq i64 %epil.iter3706.next, %xtraiter3705
  br i1 %epil.iter3706.cmp.not, label %_ZZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit635, label %.lr.ph.i631.epil, !llvm.loop !2318

_ZZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit635: ; preds = %.lr.ph.i631.epil, %_ZZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit635.unr-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #29
  %i.cmj = load i64, ptr %0, align 8, !tbaa !99
  store i64 %i.cmj, ptr %68, align 8, !tbaa !99
  store <2 x ptr> %i.clk, ptr %i.ckt, align 8, !tbaa !369
  store ptr %i.ckt, ptr %i.ckv, align 8, !tbaa !111, !alias.scope !2319
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ckw, i8 0, i64 32, i1 false)
  call void @_ZN5boost5beast18basic_multi_bufferISaIcEE9copy_fromIS2_EEvRKNS1_IT_EE(ptr noundef nonnull align 8 dereferenceable(64) %68, ptr noundef nonnull align 8 dereferenceable(64) %0)
  br label %bb.xx

bb.xx:                                            ; preds = %_ZZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit635, %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit681
  %.sroa.01374.01878 = phi ptr [ %i.ag, %_ZZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit635 ], [ %i.coj, %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit681 ] ; 2 uses
  %.sroa.7.01877 = phi i64 [ %.0801890, %_ZZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit635 ], [ %i.cok, %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit681 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #29
  %i.cmk = load i64, ptr %68, align 8, !tbaa !99
  %i.cml = load i64, ptr %i.ckw, align 8, !tbaa !147
  %i.cmm = sub i64 %i.cmk, %i.cml
  %.sroa.speculated1371 = call i64 @llvm.umin.i64(i64 %i.cmm, i64 %storemerge1887)
  invoke void @_ZN5boost5beast18basic_multi_bufferISaIcEE7prepareEm(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::basic_multi_buffer<std::allocator<char>>::subrange") align 8 %69, ptr noundef nonnull align 8 dereferenceable(64) %68, i64 noundef %.sroa.speculated1371)
          to label %.lr.ph.i.i639 unwind label %bb.yh

.lr.ph.i.i639:                                    ; preds = %bb.xx
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.i637)
  call void @llvm.experimental.noalias.scope.decl(metadata !2322)
  call void @llvm.experimental.noalias.scope.decl(metadata !2325)
  %i.cmn = load ptr, ptr %i.ckx, align 8, !tbaa !677, !noalias !2328
  store ptr %i.cmn, ptr %.sroa.25.i637, align 8, !tbaa !111, !alias.scope !2328
  %i.cmo = load ptr, ptr %i.cky, align 8, !tbaa !677, !noalias !2329
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.sroa.7.01877, i64 %storemerge1341884)
  br label %bb.xy

bb.xy:                                            ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i653, %.lr.ph.i.i639
  %.sroa.5.020.in.i.i640 = phi ptr [ %.sroa.25.i637, %.lr.ph.i.i639 ], [ %.sroa.5.020.i.i644, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i653 ]
  %.019.i.i641 = phi i64 [ 0, %.lr.ph.i.i639 ], [ %i.cna, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i653 ] ; 2 uses
  %.sroa.07.018.i.i642 = phi ptr [ %.sroa.01374.01878, %.lr.ph.i.i639 ], [ %i.cnb, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i653 ] ; 2 uses
  %.sroa.6.017.i.i643 = phi i64 [ %.sroa.speculated, %.lr.ph.i.i639 ], [ %i.cnc, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i653 ] ; 2 uses
  %.sroa.5.020.i.i644 = load ptr, ptr %.sroa.5.020.in.i.i640, align 8, !tbaa !369 ; 6 uses
  %.not.i645 = icmp eq ptr %.sroa.5.020.i.i644, %i.cmo
  br i1 %.not.i645, label %_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit657, label %bb.xz

bb.xz:                                            ; preds = %bb.xy
  %i.cmp = load ptr, ptr %i.cky, align 8, !tbaa !677
  %i.cmq = getelementptr inbounds nuw i8, ptr %i.cmp, i64 8
  %i.cmr = load ptr, ptr %i.cmq, align 8, !tbaa !110
  %i.cms = icmp eq ptr %.sroa.5.020.i.i644, %i.cmr
  %i.cmt = getelementptr inbounds nuw i8, ptr %.sroa.5.020.i.i644, i64 16
  %.sroa.6.0.in.i.i.i646 = select i1 %i.cms, ptr %i.ckz, ptr %i.cmt
  %.sroa.6.0.i.i.i647 = load i64, ptr %.sroa.6.0.in.i.i.i646, align 8, !tbaa !13 ; 3 uses
  %.sroa.07.0.i.i.i648 = getelementptr inbounds nuw i8, ptr %.sroa.5.020.i.i644, i64 24 ; 2 uses
  %i.cmu = load ptr, ptr %i.ckx, align 8, !tbaa !677
  %i.cmv = icmp eq ptr %.sroa.5.020.i.i644, %i.cmu
  br i1 %i.cmv, label %bb.ya, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i649

bb.ya:                                            ; preds = %bb.xz
  %i.cmw = load i64, ptr %i.cla, align 8, !tbaa !678
  %..i.i.i.i656 = call i64 @llvm.umin.i64(i64 %i.cmw, i64 %.sroa.6.0.i.i.i647) ; 2 uses
  %i.cmx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i648, i64 %..i.i.i.i656
  %i.cmy = sub i64 %.sroa.6.0.i.i.i647, %..i.i.i.i656
  br label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i649

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i649: ; preds = %bb.ya, %bb.xz
  %.sroa.07.1.i.i.i650 = phi ptr [ %i.cmx, %bb.ya ], [ %.sroa.07.0.i.i.i648, %bb.xz ]
  %.sroa.6.1.i.i.i651 = phi i64 [ %i.cmy, %bb.ya ], [ %.sroa.6.0.i.i.i647, %bb.xz ] ; 2 uses
  %i.cmz = call i64 @llvm.umin.i64(i64 %.sroa.6.1.i.i.i651, i64 %.sroa.6.017.i.i643) ; 4 uses
  %.not.i.i.i652 = icmp eq i64 %.sroa.6.1.i.i.i651, 0
  br i1 %.not.i.i.i652, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i653, label %bb.yb

bb.yb:                                            ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i649
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.07.1.i.i.i650, ptr align 1 %.sroa.07.018.i.i642, i64 %i.cmz, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i653

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i653: ; preds = %bb.yb, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i649
  %i.cna = add i64 %i.cmz, %.019.i.i641           ; 2 uses
  %i.cnb = getelementptr inbounds nuw i8, ptr %.sroa.07.018.i.i642, i64 %i.cmz
  %i.cnc = sub i64 %.sroa.6.017.i.i643, %i.cmz    ; 2 uses
  %.not.i.i654 = icmp eq i64 %i.cnc, 0
  br i1 %.not.i.i654, label %_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit657, label %bb.xy, !llvm.loop !1428

_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit657: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i653, %bb.xy
  %.0.lcssa.i.i655.ph = phi i64 [ %i.cna, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i653 ], [ %.019.i.i641, %bb.xy ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i637)
  %i.cnd = load ptr, ptr %i.ckt, align 8, !tbaa !109 ; 2 uses
  %.not.i.i.i658 = icmp eq ptr %i.cnd, null
  %i.cne = icmp eq ptr %i.cnd, %i.ckt
  %i.cnf = or i1 %.not.i.i.i658, %i.cne
  br i1 %i.cnf, label %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit681, label %bb.yc

bb.yc:                                            ; preds = %_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit657
  %i.cng = load ptr, ptr %i.ckv, align 8, !tbaa !146 ; 5 uses
  %i.cnh = icmp eq ptr %i.cng, %i.ckt
  br i1 %i.cnh, label %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit681, label %bb.yd

bb.yd:                                            ; preds = %bb.yc
  %i.cni = load ptr, ptr %i.cku, align 8, !tbaa !110 ; 3 uses
  %.not1419.i659 = icmp eq ptr %i.cng, %i.cni
  %.pre.i678 = load i64, ptr %.phi.trans.insert.i660, align 8, !tbaa !148 ; 3 uses
  %.pre31.i680 = load i64, ptr %i.ckw, align 8    ; 3 uses
  br i1 %.not1419.i659, label %._crit_edge.i670, label %.lr.ph.i661

.lr.ph.i661:                                      ; preds = %bb.yd
  %i.cnj = getelementptr inbounds nuw i8, ptr %i.cng, i64 16
  %i.cnk = load i64, ptr %i.cnj, align 8, !tbaa !122
  %i.cnl = sub i64 %i.cnk, %.pre.i678             ; 3 uses
  %.not.peel.i664 = icmp ult i64 %.0.lcssa.i.i655.ph, %i.cnl
  br i1 %.not.peel.i664, label %.thread.i674, label %bb.ye

bb.ye:                                            ; preds = %.lr.ph.i661
  %i.cnm = load ptr, ptr %i.cng, align 8, !tbaa !109 ; 4 uses
  store ptr %i.cnm, ptr %i.ckv, align 8, !tbaa !146
  %i.cnn = sub nuw i64 %.0.lcssa.i.i655.ph, %i.cnl ; 2 uses
  %i.cno = add i64 %i.cnl, %.pre31.i680           ; 2 uses
  %.not14.peel.i665 = icmp eq ptr %i.cnm, %i.cni
  br i1 %.not14.peel.i665, label %._crit_edge.i670, label %.peel.next.i666

.peel.next.i666:                                  ; preds = %bb.ye, %bb.yf
  %i.cnp = phi i64 [ %i.cny, %bb.yf ], [ %i.cno, %bb.ye ] ; 2 uses
  %.020.i667 = phi i64 [ %i.cnx, %bb.yf ], [ %i.cnn, %bb.ye ] ; 3 uses
  %i.cnq = phi ptr [ %i.cnw, %bb.yf ], [ %i.cnm, %bb.ye ] ; 2 uses
  %i.cnr = getelementptr inbounds nuw i8, ptr %i.cnq, i64 16
  %i.cns = load i64, ptr %i.cnr, align 8, !tbaa !122 ; 3 uses
  %.not.i668 = icmp ult i64 %.020.i667, %i.cns
  br i1 %.not.i668, label %.thread.i674, label %bb.yf

.thread.i674:                                     ; preds = %.peel.next.i666, %.lr.ph.i661
  %i.cnt = phi i64 [ %.pre31.i680, %.lr.ph.i661 ], [ %i.cnp, %.peel.next.i666 ]
  %.lcssa25.i675 = phi i64 [ %.pre.i678, %.lr.ph.i661 ], [ 0, %.peel.next.i666 ]
  %.020.lcssa.i676 = phi i64 [ %.0.lcssa.i.i655.ph, %.lr.ph.i661 ], [ %.020.i667, %.peel.next.i666 ] ; 2 uses
  %i.cnu = add i64 %.020.lcssa.i676, %.lcssa25.i675
  store i64 %i.cnu, ptr %.phi.trans.insert.i660, align 8, !tbaa !148
  %i.cnv = add i64 %.020.lcssa.i676, %i.cnt
  store i64 %i.cnv, ptr %i.ckw, align 8, !tbaa !147
  br label %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit681

bb.yf:                                            ; preds = %.peel.next.i666
  %i.cnw = load ptr, ptr %i.cnq, align 8, !tbaa !109 ; 4 uses
  store ptr %i.cnw, ptr %i.ckv, align 8, !tbaa !146
  %i.cnx = sub nuw i64 %.020.i667, %i.cns         ; 2 uses
  %i.cny = add i64 %i.cns, %i.cnp                 ; 2 uses
  %.not14.i669 = icmp eq ptr %i.cnw, %i.cni
  br i1 %.not14.i669, label %._crit_edge.i670, label %.peel.next.i666, !llvm.loop !168

._crit_edge.i670:                                 ; preds = %bb.yf, %bb.yd, %bb.ye
  %i.cnz = phi i64 [ %.pre31.i680, %bb.yd ], [ %i.cno, %bb.ye ], [ %i.cny, %bb.yf ]
  %i.coa = phi i64 [ %.pre.i678, %bb.yd ], [ 0, %bb.ye ], [ 0, %bb.yf ] ; 2 uses
  %.0.lcssa.i671 = phi i64 [ %.0.lcssa.i.i655.ph, %bb.yd ], [ %i.cnn, %bb.ye ], [ %i.cnx, %bb.yf ]
  %.lcssa.i672 = phi ptr [ %i.cng, %bb.yd ], [ %i.cnm, %bb.ye ], [ %i.cnw, %bb.yf ] ; 2 uses
  %i.cob = load i64, ptr %i.clb, align 8, !tbaa !170
  %i.coc = sub i64 %i.cob, %i.coa
  %.sroa.speculated.i673 = call i64 @llvm.umin.i64(i64 %i.coc, i64 %.0.lcssa.i671) ; 2 uses
  %i.cod = add i64 %.sroa.speculated.i673, %i.coa ; 2 uses
  store i64 %i.cod, ptr %.phi.trans.insert.i660, align 8, !tbaa !148
  %i.coe = add i64 %.sroa.speculated.i673, %i.cnz
  store i64 %i.coe, ptr %i.ckw, align 8, !tbaa !147
  %i.cof = getelementptr inbounds nuw i8, ptr %.lcssa.i672, i64 16
  %i.cog = load i64, ptr %i.cof, align 8, !tbaa !122
  %i.coh = icmp eq i64 %i.cod, %i.cog
  br i1 %i.coh, label %bb.yg, label %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit681

bb.yg:                                            ; preds = %._crit_edge.i670
  %i.coi = load ptr, ptr %.lcssa.i672, align 8, !tbaa !109
  store ptr %i.coi, ptr %i.ckv, align 8, !tbaa !146
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert.i660, i8 0, i64 16, i1 false)
  br label %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit681

_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit681: ; preds = %_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit657, %bb.yc, %.thread.i674, %._crit_edge.i670, %bb.yg
  %..i682 = call i64 @llvm.umin.i64(i64 %.0.lcssa.i.i655.ph, i64 %.sroa.7.01877) ; 2 uses
  %i.coj = getelementptr inbounds nuw i8, ptr %.sroa.01374.01878, i64 %..i682
  %i.cok = sub i64 %.sroa.7.01877, %..i682        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #29
  %.not137 = icmp eq i64 %i.cok, 0
  br i1 %.not137, label %bb.yi, label %bb.xx, !llvm.loop !2334

bb.yh:                                            ; preds = %bb.xx
  %i.col = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #29
  br label %.body1235

bb.yi:                                            ; preds = %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit681
  %i.com = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !61 ; 4 uses
  %i.con = load i64, ptr %i.ckw, align 8, !tbaa !147
  %i.coo = icmp eq i64 %i.con, %.0801890
  br i1 %i.coo, label %bb.yj, label %bb.yn

bb.yj:                                            ; preds = %bb.yi
  %i.cop = getelementptr inbounds nuw i8, ptr %i.com, i64 8
  %i.coq = load i8, ptr %i.cop, align 8, !tbaa !67, !range !42, !noundef !43
  %i.cor = trunc nuw i8 %i.coq to i1
  %i.cos = getelementptr inbounds nuw i8, ptr %i.com, i64 9
  %i.cot = load i8, ptr %i.cos, align 1, !range !42
  %i.cou = trunc nuw i8 %i.cot to i1
  %or.cond.i.i.i = select i1 %i.cor, i1 %i.cou, i1 false
  br i1 %or.cond.i.i.i, label %bb.yk, label %_ZN5boost5beast9unit_test5suite4passIvEEvv.exit.i

bb.yk:                                            ; preds = %bb.yj
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast9unit_test5suite15abort_exceptionE, i64 16), ptr %9, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  store ptr @.str.7, ptr %10, align 8, !tbaa !1460
  %i.cov = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.8, ptr %i.cov, align 8, !tbaa !1462
  %i.cow = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 592, ptr %i.cow, align 8, !tbaa !1463
  %i.cox = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 48, ptr %i.cox, align 4, !tbaa !1464
  invoke void @_ZN5boost15throw_exceptionINS_5beast9unit_test5suite15abort_exceptionEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(24) %10) #30
          to label %bb.yl unwind label %bb.ym

bb.yl:                                            ; preds = %bb.yk
  unreachable

bb.ym:                                            ; preds = %bb.yk
  %i.coy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %.body1235

_ZN5boost5beast9unit_test5suite4passIvEEvv.exit.i: ; preds = %bb.yj
  %i.coz = getelementptr inbounds nuw i8, ptr %i.com, i64 16
  %i.cpa = load ptr, ptr %i.coz, align 8, !tbaa !82
  invoke void @_ZN5boost5beast9unit_test6runner4passIvEEvv(ptr noundef nonnull align 8 dereferenceable(88) %i.cpa)
          to label %bb.yq unwind label %bb.aab

bb.yn:                                            ; preds = %bb.yi
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  invoke void @_ZN5boost5beast9unit_test6detail11make_reasonIA1_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_PKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 1 dereferenceable(1) @.str.3, ptr noundef nonnull @.str.20, i32 noundef 583)
          to label %.noexc1238 unwind label %bb.aab

.noexc1238:                                       ; preds = %bb.yn
  invoke void @_ZN5boost5beast9unit_test5suite4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(808) %i.com, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.yo unwind label %bb.yp

bb.yo:                                            ; preds = %.noexc1238
  %i.cpb = load ptr, ptr %11, align 8, !tbaa !15  ; 2 uses
  %i.cpc = icmp eq ptr %i.cpb, %i.clc
  br i1 %i.cpc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1232: ; preds = %bb.yo
  %i.cpd = load i64, ptr %i.clc, align 8, !tbaa !17
  %i.cpe = add i64 %i.cpd, 1
  call void @_ZdlPvm(ptr noundef %i.cpb, i64 noundef %i.cpe) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1233

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1233: ; preds = %bb.yo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1232
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.yq

bb.yp:                                            ; preds = %.noexc1238
  %i.cpf = landingpad { ptr, i32 }
          cleanup
  %i.cpg = load ptr, ptr %11, align 8, !tbaa !15  ; 2 uses
  %i.cph = icmp eq ptr %i.cpg, %i.clc
  br i1 %i.cph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.yp
  %i.cpi = load i64, ptr %i.clc, align 8, !tbaa !17
  %i.cpj = add i64 %i.cpi, 1
  call void @_ZdlPvm(ptr noundef %i.cpg, i64 noundef %i.cpj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.yp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %.body1235

bb.yq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1233, %_ZN5boost5beast9unit_test5suite4passIvEEvv.exit.i
  %i.cpk = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !61 ; 4 uses
  %i.cpl = load i64, ptr %i.ckw, align 8, !tbaa !147, !noalias !2335 ; 8 uses
  %i.cpm = load i64, ptr %i.cld, align 8, !tbaa !171 ; 5 uses
  %i.cpn = load ptr, ptr %i.ckt, align 8, !tbaa !109, !noalias !2338 ; 5 uses
  %i.cpo = icmp eq ptr %i.cpn, %i.ckt
  %i.cpp = icmp eq i64 %i.cpl, 0
  %or.cond1479 = select i1 %i.cpo, i1 true, i1 %i.cpp
  br i1 %or.cond1479, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEvEEmRKT_.exit696.thread, label %.lr.ph.i.preheader.i1239

.lr.ph.i.preheader.i1239:                         ; preds = %bb.yq
  %i.cpq = load ptr, ptr %i.cku, align 8, !tbaa !110 ; 5 uses
  %i.cpr = load i64, ptr %i.clb, align 8, !tbaa !170 ; 2 uses
  %i.cps = icmp eq i64 %i.cpr, 0
end_hunk_0
