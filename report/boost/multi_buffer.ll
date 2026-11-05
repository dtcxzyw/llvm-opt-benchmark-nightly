Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/multi_buffer?download=true
inline.NumInlined: 6576
inline.NumDeleted: 1413
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_:bb.a
  br i1 %i.cjl, label %bb.xb, label %bb.xd

bb.xb:                                            ; preds = %.preheader.i1212
  store ptr %.sroa.073.0.i1213, ptr %i.cim, align 8, !tbaa !238
  %i.cjm = getelementptr inbounds nuw i8, ptr %67, i64 24
  store i64 %.040.i1214, ptr %i.cjm, align 8, !tbaa !344
  %i.cjn = sub nuw i64 %i.cjk, %.040.i1214        ; 2 uses
  %.not47.i1217 = icmp ugt i64 %i.cil, %i.cjn
  br i1 %.not47.i1217, label %bb.xc, label %.thread.i1218

.thread.i1218:                                    ; preds = %bb.xb
  %i.cjo = load ptr, ptr %.sroa.073.0.i1213, align 8, !tbaa !142
  store ptr %i.cjo, ptr %i.cin, align 8, !tbaa !238
  %i.cjp = add i64 %.040.i1214, %i.cil
  %i.cjq = getelementptr inbounds nuw i8, ptr %67, i64 32
  store i64 %i.cjp, ptr %i.cjq, align 8, !tbaa !345
  br label %_ZN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EEC2ERKS3_mm.exit1231

bb.xc:                                            ; preds = %bb.xb
  %i.cjr = sub nuw i64 %i.cil, %i.cjn             ; 2 uses
  %.sroa.073.2115.i1219 = load ptr, ptr %.sroa.073.0.i1213, align 8, !tbaa !142 ; 3 uses
  %i.cjs = icmp eq ptr %.sroa.073.2115.i1219, %i.cit
  br i1 %i.cjs, label %._crit_edge.i1225, label %.lr.ph.i1220

bb.xd:                                            ; preds = %.preheader.i1212
  %i.cjt = sub nuw i64 %.040.i1214, %i.cjk        ; 5 uses
  %i.cju = load ptr, ptr %.sroa.073.0.i1213, align 8, !tbaa !142 ; 4 uses
  %i.cjv = icmp eq ptr %i.cju, %i.cit
  br i1 %i.cjv, label %bb.xe, label %.preheader.i1212, !llvm.loop !28

bb.xe:                                            ; preds = %bb.xd
  %.not.i1215 = icmp ult i64 %i.cjt, %.0.i.i1211
  br i1 %.not.i1215, label %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit.i1216, label %bb.xf

bb.xf:                                            ; preds = %bb.xe
  store ptr %i.cea, ptr %i.cim, align 8, !tbaa !238
  store ptr %i.cea, ptr %i.cin, align 8, !tbaa !238
  %i.cjw = getelementptr inbounds nuw i8, ptr %67, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cjw, i8 0, i64 16, i1 false)
  br label %_ZN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EEC2ERKS3_mm.exit1231

_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit.i1216: ; preds = %bb.xe
  store ptr %i.cju, ptr %i.cim, align 8, !tbaa !238
  %i.cjx = getelementptr inbounds nuw i8, ptr %67, i64 24
  store i64 %i.cjt, ptr %i.cjx, align 8, !tbaa !344
  %i.cjy = load ptr, ptr %i.cju, align 8, !tbaa !142
  store ptr %i.cjy, ptr %i.cin, align 8, !tbaa !238
  %i.cjz = sub nuw i64 %.0.i.i1211, %i.cjt
  %i.cka = icmp ult i64 %i.cil, %i.cjz
  br i1 %i.cka, label %bb.xg, label %bb.xh

bb.xg:                                            ; preds = %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit.i1216
  %i.ckb = add i64 %i.cjt, %i.cil
  %i.ckc = getelementptr inbounds nuw i8, ptr %67, i64 32
  store i64 %i.ckb, ptr %i.ckc, align 8, !tbaa !345
  br label %_ZN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EEC2ERKS3_mm.exit1231

bb.xh:                                            ; preds = %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit.i1216
  %i.ckd = getelementptr inbounds nuw i8, ptr %67, i64 32
  store i64 %.0.i.i1211, ptr %i.ckd, align 8, !tbaa !345
  br label %_ZN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EEC2ERKS3_mm.exit1231

._crit_edge.i1225:                                ; preds = %bb.xl, %bb.xc
  %.1.lcssa.i1226 = phi i64 [ %i.cjr, %bb.xc ], [ %i.ckk, %bb.xl ] ; 2 uses
  %.sroa.073.2.lcssa.i1227 = phi ptr [ %.sroa.073.2115.i1219, %bb.xc ], [ %.sroa.073.2.i1224, %bb.xl ]
  %i.cke = load ptr, ptr %.sroa.073.2.lcssa.i1227, align 8, !tbaa !142
  store ptr %i.cke, ptr %i.cin, align 8, !tbaa !238
  %.not49.i1228 = icmp ult i64 %.1.lcssa.i1226, %.0.i.i1211
  %i.ckf = getelementptr inbounds nuw i8, ptr %67, i64 32 ; 2 uses
  br i1 %.not49.i1228, label %bb.xj, label %bb.xi

bb.xi:                                            ; preds = %._crit_edge.i1225
  store i64 %.0.i.i1211, ptr %i.ckf, align 8, !tbaa !345
  br label %_ZN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EEC2ERKS3_mm.exit1231

bb.xj:                                            ; preds = %._crit_edge.i1225
  store i64 %.1.lcssa.i1226, ptr %i.ckf, align 8, !tbaa !345
  br label %_ZN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EEC2ERKS3_mm.exit1231

.lr.ph.i1220:                                     ; preds = %bb.xc, %bb.xl
  %.sroa.073.2117.i1221 = phi ptr [ %.sroa.073.2.i1224, %bb.xl ], [ %.sroa.073.2115.i1219, %bb.xc ] ; 3 uses
  %.1116.i1222 = phi i64 [ %i.ckk, %bb.xl ], [ %i.cjr, %bb.xc ] ; 3 uses
  %i.ckg = getelementptr inbounds nuw i8, ptr %.sroa.073.2117.i1221, i64 16
  %i.ckh = load i64, ptr %i.ckg, align 8, !tbaa !150 ; 2 uses
  %.not48.i1223 = icmp ugt i64 %.1116.i1222, %i.ckh
  br i1 %.not48.i1223, label %bb.xl, label %bb.xk

bb.xk:                                            ; preds = %.lr.ph.i1220
  %i.cki = load ptr, ptr %.sroa.073.2117.i1221, align 8, !tbaa !142
  store ptr %i.cki, ptr %i.cin, align 8, !tbaa !238
  %i.ckj = getelementptr inbounds nuw i8, ptr %67, i64 32
  store i64 %.1116.i1222, ptr %i.ckj, align 8, !tbaa !345
  br label %_ZN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EEC2ERKS3_mm.exit1231

bb.xl:                                            ; preds = %.lr.ph.i1220
  %i.ckk = sub nuw i64 %.1116.i1222, %i.ckh       ; 2 uses
  %.sroa.073.2.i1224 = load ptr, ptr %.sroa.073.2117.i1221, align 8, !tbaa !142 ; 3 uses
  %i.ckl = icmp eq ptr %.sroa.073.2.i1224, %i.cit
  br i1 %i.ckl, label %._crit_edge.i1225, label %.lr.ph.i1220, !llvm.loop !29

_ZN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EEC2ERKS3_mm.exit1231: ; preds = %bb.ws, %bb.wu, %bb.wy, %bb.wz, %bb.xa, %.thread.i1218, %bb.xf, %bb.xg, %bb.xh, %bb.xi, %bb.xj, %bb.xk
  invoke void @_ZN5boost5beast20test_buffer_sequenceINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(40) %67)
          to label %bb.xm unwind label %bb.xq

bb.xm:                                            ; preds = %_ZN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EEC2ERKS3_mm.exit1231
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #29
  %i.ckm = load ptr, ptr %i.cea, align 8, !tbaa !142, !noalias !2404 ; 2 uses
  %.not6.i.i625 = icmp eq ptr %i.ckm, %i.cea
  br i1 %.not6.i.i625, label %_ZN5boost5beast18basic_multi_bufferISaIcEED2Ev.exit629, label %.lr.ph.i.i626

.lr.ph.i.i626:                                    ; preds = %bb.xm, %.lr.ph.i.i626
  %.sroa.04.07.i.i627 = phi ptr [ %i.ckn, %.lr.ph.i.i626 ], [ %i.ckm, %bb.xm ] ; 3 uses
  %i.ckn = load ptr, ptr %.sroa.04.07.i.i627, align 8, !tbaa !142, !noalias !2405 ; 2 uses
  %i.cko = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i627, i64 16
  %i.ckp = load i64, ptr %i.cko, align 8, !tbaa !150
  %i.ckq = add i64 %i.ckp, 31
  %i.ckr = and i64 %i.ckq, -8
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i.i627, i64 noundef %i.ckr) #32
  %.not.i.i628 = icmp eq ptr %i.ckn, %i.cea
  br i1 %.not.i.i628, label %_ZN5boost5beast18basic_multi_bufferISaIcEED2Ev.exit629, label %.lr.ph.i.i626, !llvm.loop !0

_ZN5boost5beast18basic_multi_bufferISaIcEED2Ev.exit629: ; preds = %.lr.ph.i.i626, %bb.xm
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #29
  br i1 %.not.i549, label %._crit_edge, label %.preheader1492.lr.ph

.preheader1492.lr.ph:                             ; preds = %_ZN5boost5beast18basic_multi_bufferISaIcEED2Ev.exit629
  %i.cks = getelementptr inbounds nuw i8, ptr %68, i64 8 ; 22 uses
  %i.ckt = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 4 uses
  %i.cku = getelementptr inbounds nuw i8, ptr %68, i64 24 ; 7 uses
  %i.ckv = getelementptr inbounds nuw i8, ptr %68, i64 32 ; 16 uses
  %i.ckw = getelementptr inbounds nuw i8, ptr %69, i64 8 ; 2 uses
  %i.ckx = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 2 uses
  %i.cky = getelementptr inbounds nuw i8, ptr %69, i64 32
  %i.ckz = getelementptr inbounds nuw i8, ptr %69, i64 24
  %.phi.trans.insert.i660 = getelementptr inbounds nuw i8, ptr %68, i64 48 ; 5 uses
  %i.cla = getelementptr inbounds nuw i8, ptr %68, i64 56 ; 4 uses
  %i.clb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.clc = getelementptr inbounds nuw i8, ptr %68, i64 40 ; 8 uses
  %i.cld = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.cle = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 9 uses
  %i.clf = getelementptr inbounds nuw i8, ptr %70, i64 8 ; 4 uses
  %i.clg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.clh = add nuw nsw i64 %spec.select1470, 3
  %i.cli = insertelement <2 x ptr> poison, ptr %i.cks, i64 0
  %i.clj = shufflevector <2 x ptr> %i.cli, <2 x ptr> poison, <2 x i32> zeroinitializer
  %xtraiter3694 = and i64 %spec.select1470, 3     ; 3 uses
  %i.clk = icmp ult i64 %i.cbg, 4
  %unroll_iter3698 = and i64 %spec.select1470, 12
  %lcmp.mod3696.not = icmp eq i64 %xtraiter3694, 0
  %lcmp.mod3697 = icmp ne i64 %xtraiter3694, 0
  br label %.preheader1492

.preheader1492:                                   ; preds = %.preheader1492.lr.ph, %bb.xs
  %indvars.iv2196 = phi i64 [ 4, %.preheader1492.lr.ph ], [ %indvars.iv.next2197, %bb.xs ] ; 3 uses
  %indvars.iv = phi i64 [ 2, %.preheader1492.lr.ph ], [ %indvars.iv.next, %bb.xs ] ; 2 uses
  %.0801881 = phi i64 [ 1, %.preheader1492.lr.ph ], [ %i.clq, %bb.xs ] ; 6 uses
  %.01880 = phi i8 [ 1, %.preheader1492.lr.ph ], [ %i.cls, %bb.xs ]
  br label %.preheader.preheader

._crit_edge:                                      ; preds = %bb.xs, %_ZN5boost5beast18basic_multi_bufferISaIcEED2Ev.exit629
  call void @_ZN5boost5beast6detail27test_mutable_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(64) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #29
  ret void

bb.xn:                                            ; preds = %_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit565, %_ZZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit
  %i.cll = landingpad { ptr, i32 }
          cleanup
  br label %bb.xr

bb.xo:                                            ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit563
  %i.clm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #29
  br label %bb.xr

bb.xp:                                            ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEvEEmRKT_.exit622
  %i.cln = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #29
  br label %bb.xr

bb.xq:                                            ; preds = %_ZN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EEC2ERKS3_mm.exit1231
  %i.clo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #29
  br label %bb.xr

bb.xr:                                            ; preds = %bb.xq, %bb.xp, %bb.xo, %bb.xn
  %.pn131 = phi { ptr, i32 } [ %i.clo, %bb.xq ], [ %i.cln, %bb.xp ], [ %i.cll, %bb.xn ], [ %i.clm, %bb.xo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #29
  call void @_ZN5boost5beast18basic_multi_bufferISaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %65) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #29
  br label %bb.aab

.loopexit:                                        ; preds = %bb.xt
  %indvars.iv.next2194 = add nuw nsw i64 %indvars.iv2193, 1 ; 2 uses
  %exitcond2198 = icmp eq i64 %indvars.iv.next2194, %indvars.iv2196
  br i1 %exitcond2198, label %bb.xs, label %.preheader.preheader, !llvm.loop !2254

.preheader.preheader:                             ; preds = %.preheader1492, %.loopexit
  %indvars.iv2193 = phi i64 [ 3, %.preheader1492 ], [ %indvars.iv.next2194, %.loopexit ] ; 2 uses
  %storemerge1878 = phi i64 [ 1, %.preheader1492 ], [ %i.clp, %.loopexit ] ; 2 uses
  %.11877 = phi i8 [ %.01880, %.preheader1492 ], [ %i.cls, %.loopexit ]
  %i.clp = add nuw nsw i64 %storemerge1878, 1
  br label %.preheader

bb.xs:                                            ; preds = %.loopexit
  %i.clq = add nuw nsw i64 %.0801881, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next2197 = add nuw nsw i64 %indvars.iv2196, 1
  %exitcond2199.not = icmp eq i64 %indvars.iv2196, %i.clh
  br i1 %exitcond2199.not, label %._crit_edge, label %.preheader1492, !llvm.loop !2255

.preheader:                                       ; preds = %.preheader.preheader, %bb.xt
  %storemerge1341875 = phi i64 [ 1, %.preheader.preheader ], [ %i.clr, %bb.xt ] ; 2 uses
  %.21874 = phi i8 [ %.11877, %.preheader.preheader ], [ %i.cls, %bb.xt ]
  br label %.lr.ph.i631.preheader

bb.xt:                                            ; preds = %_ZN5boost5beast18basic_multi_bufferISaIcEED2Ev.exit752
  %i.clr = add nuw nsw i64 %storemerge1341875, 1  ; 2 uses
  %exitcond2195 = icmp eq i64 %i.clr, %indvars.iv2193
  br i1 %exitcond2195, label %.loopexit, label %.preheader, !llvm.loop !2256

.lr.ph.i631.preheader:                            ; preds = %_ZN5boost5beast18basic_multi_bufferISaIcEED2Ev.exit752, %.preheader
  %.0791872 = phi i64 [ 1, %.preheader ], [ %i.cxe, %_ZN5boost5beast18basic_multi_bufferISaIcEED2Ev.exit752 ] ; 3 uses
  %.31871 = phi i8 [ %.21874, %.preheader ], [ %i.cls, %_ZN5boost5beast18basic_multi_bufferISaIcEED2Ev.exit752 ] ; 3 uses
  %i.cls = add i8 %.31871, 1                      ; 4 uses
  br i1 %i.clk, label %.lr.ph.i631.epil.preheader, label %.lr.ph.i631

.lr.ph.i631:                                      ; preds = %.lr.ph.i631.preheader, %.lr.ph.i631
  %.06.i632 = phi i64 [ %i.cme, %.lr.ph.i631 ], [ 0, %.lr.ph.i631.preheader ] ; 5 uses
  %.045.i633 = phi i8 [ %i.cmb, %.lr.ph.i631 ], [ %.31871, %.lr.ph.i631.preheader ] ; 5 uses
  %niter3699 = phi i64 [ %niter3699.next.3, %.lr.ph.i631 ], [ 0, %.lr.ph.i631.preheader ]
  %i.clt = add i8 %.045.i633, 1
  %i.clu = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.06.i632
  store i8 %.045.i633, ptr %i.clu, align 1, !tbaa !72
  %i.clv = add i8 %.045.i633, 2
  %i.clw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.06.i632
  %i.clx = getelementptr inbounds nuw i8, ptr %i.clw, i64 1
  store i8 %i.clt, ptr %i.clx, align 1, !tbaa !72
  %i.cly = add i8 %.045.i633, 3
  %i.clz = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.06.i632
  %i.cma = getelementptr inbounds nuw i8, ptr %i.clz, i64 2
  store i8 %i.clv, ptr %i.cma, align 1, !tbaa !72
  %i.cmb = add i8 %.045.i633, 4                   ; 2 uses
  %i.cmc = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.06.i632
  %i.cmd = getelementptr inbounds nuw i8, ptr %i.cmc, i64 3
  store i8 %i.cly, ptr %i.cmd, align 1, !tbaa !72
  %i.cme = add nuw nsw i64 %.06.i632, 4           ; 2 uses
  %niter3699.next.3 = add i64 %niter3699, 4       ; 2 uses
  %niter3699.ncmp.3 = icmp eq i64 %niter3699.next.3, %unroll_iter3698
  br i1 %niter3699.ncmp.3, label %_ZZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit635.unr-lcssa, label %.lr.ph.i631, !llvm.loop !2222

_ZZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit635.unr-lcssa: ; preds = %.lr.ph.i631
  br i1 %lcmp.mod3696.not, label %_ZZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit635, label %.lr.ph.i631.epil.preheader

.lr.ph.i631.epil.preheader:                       ; preds = %_ZZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit635.unr-lcssa, %.lr.ph.i631.preheader
  %.06.i632.epil.init = phi i64 [ 0, %.lr.ph.i631.preheader ], [ %i.cme, %_ZZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit635.unr-lcssa ]
  %.045.i633.epil.init = phi i8 [ %.31871, %.lr.ph.i631.preheader ], [ %i.cmb, %_ZZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit635.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod3697)
  br label %.lr.ph.i631.epil

.lr.ph.i631.epil:                                 ; preds = %.lr.ph.i631.epil, %.lr.ph.i631.epil.preheader
  %.06.i632.epil = phi i64 [ %i.cmh, %.lr.ph.i631.epil ], [ %.06.i632.epil.init, %.lr.ph.i631.epil.preheader ] ; 2 uses
  %.045.i633.epil = phi i8 [ %i.cmf, %.lr.ph.i631.epil ], [ %.045.i633.epil.init, %.lr.ph.i631.epil.preheader ] ; 2 uses
  %epil.iter3695 = phi i64 [ %epil.iter3695.next, %.lr.ph.i631.epil ], [ 0, %.lr.ph.i631.epil.preheader ]
  %i.cmf = add i8 %.045.i633.epil, 1
  %i.cmg = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.06.i632.epil
  store i8 %.045.i633.epil, ptr %i.cmg, align 1, !tbaa !72
  %i.cmh = add nuw nsw i64 %.06.i632.epil, 1
  %epil.iter3695.next = add i64 %epil.iter3695, 1 ; 2 uses
  %epil.iter3695.cmp.not = icmp eq i64 %epil.iter3695.next, %xtraiter3694
  br i1 %epil.iter3695.cmp.not, label %_ZZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit635, label %.lr.ph.i631.epil, !llvm.loop !2257

_ZZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit635: ; preds = %.lr.ph.i631.epil, %_ZZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit635.unr-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #29
  %i.cmi = load i64, ptr %0, align 8, !tbaa !141
  store i64 %i.cmi, ptr %68, align 8, !tbaa !141
  store <2 x ptr> %i.clj, ptr %i.cks, align 8, !tbaa !204
  store ptr %i.cks, ptr %i.cku, align 8, !tbaa !144, !alias.scope !2406
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ckv, i8 0, i64 32, i1 false)
  call void @_ZN5boost5beast18basic_multi_bufferISaIcEE9copy_fromIS2_EEvRKNS1_IT_EE(ptr noundef nonnull align 8 dereferenceable(64) %68, ptr noundef nonnull align 8 dereferenceable(64) %0)
  br label %bb.xu

bb.xu:                                            ; preds = %_ZZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit635, %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit681
  %.sroa.01374.01869 = phi ptr [ %i.ag, %_ZZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit635 ], [ %i.coi, %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit681 ] ; 2 uses
  %.sroa.7.01868 = phi i64 [ %.0801881, %_ZZN5boost5beast19test_dynamic_bufferINS0_18basic_multi_bufferISaIcEEEEEvRKT_ENKUlvE_clEv.exit635 ], [ %i.coj, %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit681 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #29
  %i.cmj = load i64, ptr %68, align 8, !tbaa !141
  %i.cmk = load i64, ptr %i.ckv, align 8, !tbaa !160
  %i.cml = sub i64 %i.cmj, %i.cmk
  %.sroa.speculated1371 = call i64 @llvm.umin.i64(i64 %i.cml, i64 %storemerge1878)
  invoke void @_ZN5boost5beast18basic_multi_bufferISaIcEE7prepareEm(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::basic_multi_buffer<std::allocator<char>>::subrange") align 8 %69, ptr noundef nonnull align 8 dereferenceable(64) %68, i64 noundef %.sroa.speculated1371)
          to label %.lr.ph.i.i639 unwind label %bb.ye

.lr.ph.i.i639:                                    ; preds = %bb.xu
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i637)
  call void @llvm.experimental.noalias.scope.decl(metadata !2407)
  call void @llvm.experimental.noalias.scope.decl(metadata !2408)
  %i.cmm = load ptr, ptr %i.ckw, align 8, !tbaa !238, !noalias !2409
  store ptr %i.cmm, ptr %.sroa.2.i637, align 8, !tbaa !144, !alias.scope !2409
  %i.cmn = load ptr, ptr %i.ckx, align 8, !tbaa !238, !noalias !2410
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.sroa.7.01868, i64 %storemerge1341875)
  br label %bb.xv

bb.xv:                                            ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i653, %.lr.ph.i.i639
  %.sroa.5.020.in.i.i640 = phi ptr [ %.sroa.2.i637, %.lr.ph.i.i639 ], [ %.sroa.5.020.i.i644, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i653 ]
  %.019.i.i641 = phi i64 [ 0, %.lr.ph.i.i639 ], [ %i.cmz, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i653 ] ; 2 uses
  %.sroa.07.018.i.i642 = phi ptr [ %.sroa.01374.01869, %.lr.ph.i.i639 ], [ %i.cna, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i653 ] ; 2 uses
  %.sroa.6.017.i.i643 = phi i64 [ %.sroa.speculated, %.lr.ph.i.i639 ], [ %i.cnb, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i653 ] ; 2 uses
  %.sroa.5.020.i.i644 = load ptr, ptr %.sroa.5.020.in.i.i640, align 8, !tbaa !204 ; 6 uses
  %.not.i645 = icmp eq ptr %.sroa.5.020.i.i644, %i.cmn
  br i1 %.not.i645, label %_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit657.loopexit, label %bb.xw

bb.xw:                                            ; preds = %bb.xv
  %i.cmo = load ptr, ptr %i.ckx, align 8, !tbaa !238
  %i.cmp = getelementptr inbounds nuw i8, ptr %i.cmo, i64 8
  %i.cmq = load ptr, ptr %i.cmp, align 8, !tbaa !143
  %i.cmr = icmp eq ptr %.sroa.5.020.i.i644, %i.cmq
  %i.cms = getelementptr inbounds nuw i8, ptr %.sroa.5.020.i.i644, i64 16
  %.sroa.6.0.in.i.i.i646 = select i1 %i.cmr, ptr %i.cky, ptr %i.cms
  %.sroa.6.0.i.i.i647 = load i64, ptr %.sroa.6.0.in.i.i.i646, align 8, !tbaa !69 ; 3 uses
  %.sroa.07.0.i.i.i648 = getelementptr inbounds nuw i8, ptr %.sroa.5.020.i.i644, i64 24 ; 2 uses
  %i.cmt = load ptr, ptr %i.ckw, align 8, !tbaa !238
  %i.cmu = icmp eq ptr %.sroa.5.020.i.i644, %i.cmt
  br i1 %i.cmu, label %bb.xx, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i649

bb.xx:                                            ; preds = %bb.xw
  %i.cmv = load i64, ptr %i.ckz, align 8, !tbaa !239
  %..i.i.i.i656 = call i64 @llvm.umin.i64(i64 %i.cmv, i64 %.sroa.6.0.i.i.i647) ; 2 uses
  %i.cmw = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i648, i64 %..i.i.i.i656
  %i.cmx = sub i64 %.sroa.6.0.i.i.i647, %..i.i.i.i656
  br label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i649

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i649: ; preds = %bb.xx, %bb.xw
  %.sroa.07.1.i.i.i650 = phi ptr [ %i.cmw, %bb.xx ], [ %.sroa.07.0.i.i.i648, %bb.xw ]
  %.sroa.6.1.i.i.i651 = phi i64 [ %i.cmx, %bb.xx ], [ %.sroa.6.0.i.i.i647, %bb.xw ] ; 2 uses
  %i.cmy = call i64 @llvm.umin.i64(i64 %.sroa.6.1.i.i.i651, i64 %.sroa.6.017.i.i643) ; 4 uses
  %.not.i.i.i652 = icmp eq i64 %.sroa.6.1.i.i.i651, 0
  br i1 %.not.i.i.i652, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i653, label %bb.xy

bb.xy:                                            ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i649
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.07.1.i.i.i650, ptr align 1 %.sroa.07.018.i.i642, i64 %i.cmy, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i653

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i653: ; preds = %bb.xy, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i649
  %i.cmz = add i64 %i.cmy, %.019.i.i641           ; 2 uses
  %i.cna = getelementptr inbounds nuw i8, ptr %.sroa.07.018.i.i642, i64 %i.cmy
  %i.cnb = sub nuw i64 %.sroa.6.017.i.i643, %i.cmy ; 2 uses
  %.not.i.i654 = icmp eq i64 %i.cnb, 0
  br i1 %.not.i.i654, label %_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit657.loopexit, label %bb.xv, !llvm.loop !24

_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit657.loopexit: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i653, %bb.xv
  %.0.lcssa.i.i655.ph = phi i64 [ %i.cmz, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i653 ], [ %.019.i.i641, %bb.xv ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i637)
  %i.cnc = load ptr, ptr %i.cks, align 8, !tbaa !142 ; 2 uses
  %.not.i.i.i658 = icmp eq ptr %i.cnc, null
  %i.cnd = icmp eq ptr %i.cnc, %i.cks
  %i.cne = or i1 %.not.i.i.i658, %i.cnd
  br i1 %i.cne, label %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit681, label %bb.xz

bb.xz:                                            ; preds = %_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit657.loopexit
  %i.cnf = load ptr, ptr %i.cku, align 8, !tbaa !159 ; 5 uses
  %i.cng = icmp eq ptr %i.cnf, %i.cks
  br i1 %i.cng, label %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit681, label %bb.ya

bb.ya:                                            ; preds = %bb.xz
  %i.cnh = load ptr, ptr %i.ckt, align 8, !tbaa !143 ; 3 uses
  %.not1419.i659 = icmp eq ptr %i.cnf, %i.cnh
  %.pre.i678 = load i64, ptr %.phi.trans.insert.i660, align 8, !tbaa !161 ; 3 uses
  %.pre31.i680 = load i64, ptr %i.ckv, align 8    ; 3 uses
  br i1 %.not1419.i659, label %._crit_edge.i670, label %.lr.ph.i661

.lr.ph.i661:                                      ; preds = %bb.ya
  %i.cni = getelementptr inbounds nuw i8, ptr %i.cnf, i64 16
  %i.cnj = load i64, ptr %i.cni, align 8, !tbaa !150
  %i.cnk = sub i64 %i.cnj, %.pre.i678             ; 3 uses
  %.not.peel.i664 = icmp ult i64 %.0.lcssa.i.i655.ph, %i.cnk
  br i1 %.not.peel.i664, label %.thread.i674, label %bb.yb

bb.yb:                                            ; preds = %.lr.ph.i661
  %i.cnl = load ptr, ptr %i.cnf, align 8, !tbaa !142 ; 4 uses
  store ptr %i.cnl, ptr %i.cku, align 8, !tbaa !159
  %i.cnm = sub nuw i64 %.0.lcssa.i.i655.ph, %i.cnk ; 2 uses
  %i.cnn = add i64 %i.cnk, %.pre31.i680           ; 2 uses
  %.not14.peel.i665 = icmp eq ptr %i.cnl, %i.cnh
  br i1 %.not14.peel.i665, label %._crit_edge.i670, label %.peel.next.i666

.peel.next.i666:                                  ; preds = %bb.yb, %bb.yc
  %i.cno = phi i64 [ %i.cnx, %bb.yc ], [ %i.cnn, %bb.yb ] ; 2 uses
  %.020.i667 = phi i64 [ %i.cnw, %bb.yc ], [ %i.cnm, %bb.yb ] ; 3 uses
  %i.cnp = phi ptr [ %i.cnv, %bb.yc ], [ %i.cnl, %bb.yb ] ; 2 uses
  %i.cnq = getelementptr inbounds nuw i8, ptr %i.cnp, i64 16
  %i.cnr = load i64, ptr %i.cnq, align 8, !tbaa !150 ; 3 uses
  %.not.i668 = icmp ult i64 %.020.i667, %i.cnr
  br i1 %.not.i668, label %.thread.i674, label %bb.yc

.thread.i674:                                     ; preds = %.peel.next.i666, %.lr.ph.i661
  %i.cns = phi i64 [ %.pre31.i680, %.lr.ph.i661 ], [ %i.cno, %.peel.next.i666 ]
  %.lcssa25.i675 = phi i64 [ %.pre.i678, %.lr.ph.i661 ], [ 0, %.peel.next.i666 ]
  %.020.lcssa.i676 = phi i64 [ %.0.lcssa.i.i655.ph, %.lr.ph.i661 ], [ %.020.i667, %.peel.next.i666 ] ; 2 uses
  %i.cnt = add i64 %.020.lcssa.i676, %.lcssa25.i675
  store i64 %i.cnt, ptr %.phi.trans.insert.i660, align 8, !tbaa !161
  %i.cnu = add i64 %.020.lcssa.i676, %i.cns
  store i64 %i.cnu, ptr %i.ckv, align 8, !tbaa !160
  br label %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit681

bb.yc:                                            ; preds = %.peel.next.i666
  %i.cnv = load ptr, ptr %i.cnp, align 8, !tbaa !142 ; 4 uses
  store ptr %i.cnv, ptr %i.cku, align 8, !tbaa !159
  %i.cnw = sub nuw i64 %.020.i667, %i.cnr         ; 2 uses
  %i.cnx = add i64 %i.cnr, %i.cno                 ; 2 uses
  %.not14.i669 = icmp eq ptr %i.cnv, %i.cnh
  br i1 %.not14.i669, label %._crit_edge.i670, label %.peel.next.i666, !llvm.loop !2

._crit_edge.i670:                                 ; preds = %bb.yc, %bb.ya, %bb.yb
end_hunk_0
