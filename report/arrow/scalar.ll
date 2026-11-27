Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/scalar?download=true
inline.NumInlined: 43590
inline.NumDeleted: 6067
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  %i.iog = load <2 x ptr>, ptr %i.iod, align 8, !tbaa !683, !noalias !24174
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iod, i8 0, i64 16, i1 false)
  %i.ioh = load ptr, ptr %i.iof, align 8, !tbaa !684, !noalias !24173 ; 8 uses
  store <2 x ptr> %i.iog, ptr %i.ioe, align 8, !tbaa !683, !noalias !24173
  %.not.i.i.i.i2056 = icmp eq ptr %i.ioh, null
  br i1 %.not.i.i.i.i2056, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit2055, label %bb.bsp

bb.bsp:                                           ; preds = %bb.bso
  %i.ioi = getelementptr inbounds nuw i8, ptr %i.ioh, i64 8 ; 4 uses
  %i.ioj = load atomic i64, ptr %i.ioi acquire, align 8, !noalias !24173 ; 2 uses
  %i.iok = icmp eq i64 %i.ioj, 4294967297
  %i.iol = trunc i64 %i.ioj to i32                ; 2 uses
  br i1 %i.iok, label %bb.bsq, label %bb.bsr

bb.bsq:                                           ; preds = %bb.bsp
  store i32 0, ptr %i.ioi, align 8, !tbaa !689, !noalias !24173
  %i.iom = getelementptr inbounds nuw i8, ptr %i.ioh, i64 12
  store i32 0, ptr %i.iom, align 4, !tbaa !690, !noalias !24173
  %i.ion = load ptr, ptr %i.ioh, align 8, !tbaa !658, !noalias !24173
  %i.ioo = getelementptr inbounds nuw i8, ptr %i.ion, i64 16
  %i.iop = load ptr, ptr %i.ioo, align 8, !noalias !24173
  call void %i.iop(ptr noundef nonnull align 8 dereferenceable(16) %i.ioh) #28, !noalias !24173, !inline_history !23770
  %i.ioq = load ptr, ptr %i.ioh, align 8, !tbaa !658, !noalias !24173
  %i.ior = getelementptr inbounds nuw i8, ptr %i.ioq, i64 24
  %i.ios = load ptr, ptr %i.ior, align 8, !noalias !24173
  call void %i.ios(ptr noundef nonnull align 8 dereferenceable(16) %i.ioh) #28, !noalias !24173, !inline_history !23770
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit2055

bb.bsr:                                           ; preds = %bb.bsp
  %i.iot = load i8, ptr @__libc_single_threaded, align 1, !tbaa !663, !noalias !24173
  %.not.i.i.i.i.i2057 = icmp eq i8 %i.iot, 0
  br i1 %.not.i.i.i.i.i2057, label %bb.bst, label %bb.bss

bb.bss:                                           ; preds = %bb.bsr
  %i.iou = add nsw i32 %i.iol, -1
  store i32 %i.iou, ptr %i.ioi, align 8, !tbaa !94, !noalias !24173
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i2058

bb.bst:                                           ; preds = %bb.bsr
  %i.iov = atomicrmw volatile add ptr %i.ioi, i32 -1 acq_rel, align 4, !noalias !24173
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i2058

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i2058: ; preds = %bb.bst, %bb.bss
  %.0.i.i.i.i.i.i2059 = phi i32 [ %i.iol, %bb.bss ], [ %i.iov, %bb.bst ]
  %i.iow = icmp eq i32 %.0.i.i.i.i.i.i2059, 1
  br i1 %i.iow, label %bb.bsu, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit2055, !prof !691

bb.bsu:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i2058
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ioh) #28, !noalias !24173
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit2055

_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit2055: ; preds = %bb.bsu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i2058, %bb.bsq, %bb.bso
  store ptr null, ptr %0, align 8, !tbaa !680, !alias.scope !24175
  br label %_ZN5arrow12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEE5VisitINS_17FixedSizeListTypeEEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEE5VisitINS_17FixedSizeListTypeEEENS_6StatusERKT_.exit: ; preds = %bb.bsl, %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit2055
  %i.iox = load ptr, ptr %19, align 8, !tbaa !680 ; 2 uses
  %i.ioy = icmp eq ptr %i.iox, null
  br i1 %i.ioy, label %bb.bsv, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i2042, !prof !700

bb.bsv:                                           ; preds = %_ZN5arrow12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEE5VisitINS_17FixedSizeListTypeEEENS_6StatusERKT_.exit
  %i.ioz = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ipa = load ptr, ptr %i.ioz, align 8, !tbaa !684 ; 8 uses
  %.not.i.i.i.i.i2043 = icmp eq ptr %i.ipa, null
  br i1 %.not.i.i.i.i.i2043, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i2047, label %bb.bsw

bb.bsw:                                           ; preds = %bb.bsv
  %i.ipb = getelementptr inbounds nuw i8, ptr %i.ipa, i64 8 ; 4 uses
  %i.ipc = load atomic i64, ptr %i.ipb acquire, align 8 ; 2 uses
  %i.ipd = icmp eq i64 %i.ipc, 4294967297
  %i.ipe = trunc i64 %i.ipc to i32                ; 2 uses
  br i1 %i.ipd, label %bb.bsx, label %bb.bsy

bb.bsx:                                           ; preds = %bb.bsw
  store i32 0, ptr %i.ipb, align 8, !tbaa !689
  %i.ipf = getelementptr inbounds nuw i8, ptr %i.ipa, i64 12
  store i32 0, ptr %i.ipf, align 4, !tbaa !690
  %i.ipg = load ptr, ptr %i.ipa, align 8, !tbaa !658
  %i.iph = getelementptr inbounds nuw i8, ptr %i.ipg, i64 16
  %i.ipi = load ptr, ptr %i.iph, align 8
  call void %i.ipi(ptr noundef nonnull align 8 dereferenceable(16) %i.ipa) #28, !inline_history !23773
  %i.ipj = load ptr, ptr %i.ipa, align 8, !tbaa !658
  %i.ipk = getelementptr inbounds nuw i8, ptr %i.ipj, i64 24
  %i.ipl = load ptr, ptr %i.ipk, align 8
  call void %i.ipl(ptr noundef nonnull align 8 dereferenceable(16) %i.ipa) #28, !inline_history !23773
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i2047

bb.bsy:                                           ; preds = %bb.bsw
  %i.ipm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !663
  %.not.i.i.i.i.i.i2044 = icmp eq i8 %i.ipm, 0
  br i1 %.not.i.i.i.i.i.i2044, label %bb.bta, label %bb.bsz

bb.bsz:                                           ; preds = %bb.bsy
  %i.ipn = add nsw i32 %i.ipe, -1
  store i32 %i.ipn, ptr %i.ipb, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i2045

bb.bta:                                           ; preds = %bb.bsy
  %i.ipo = atomicrmw volatile add ptr %i.ipb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i2045

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i2045: ; preds = %bb.bta, %bb.bsz
  %.0.i.i.i.i.i.i.i2046 = phi i32 [ %i.ipe, %bb.bsz ], [ %i.ipo, %bb.bta ]
  %i.ipp = icmp eq i32 %.0.i.i.i.i.i.i.i2046, 1
  br i1 %i.ipp, label %bb.btb, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i2047, !prof !691

bb.btb:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i2045
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ipa) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i2047

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i2047: ; preds = %bb.btb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i2045, %bb.bsx, %bb.bsv
  %.pr.i2048 = load ptr, ptr %19, align 8, !tbaa !680 ; 2 uses
  %.not.i.i2049 = icmp eq ptr %.pr.i2048, null
  br i1 %.not.i.i2049, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit2050, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i2042, !prof !757

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i2042: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i2047, %_ZN5arrow12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEE5VisitINS_17FixedSizeListTypeEEENS_6StatusERKT_.exit
  %i.ipq = phi ptr [ %.pr.i2048, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i2047 ], [ %i.iox, %_ZN5arrow12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEE5VisitINS_17FixedSizeListTypeEEENS_6StatusERKT_.exit ]
  %i.ipr = getelementptr inbounds nuw i8, ptr %i.ipq, i64 1
  %i.ips = load i8, ptr %i.ipr, align 1, !tbaa !743, !range !676, !noundef !677
  %i.ipt = trunc nuw i8 %i.ips to i1
  br i1 %i.ipt, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit2050, label %bb.btc

bb.btc:                                           ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i2042
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %19) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit2050

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit2050: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i2047, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i2042, %bb.btc
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28, !noalias !24173
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  br label %bb.bzf

bb.btd:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28, !noalias !24176
  %i.ipu = load ptr, ptr %1, align 8, !tbaa !968, !noalias !24176, !nonnull !677, !align !840 ; 3 uses
  %i.ipv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ipw = load ptr, ptr %i.ipv, align 8, !tbaa !969, !noalias !24176, !nonnull !677, !align !840 ; 2 uses
  %i.ipx = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ipy = getelementptr inbounds nuw i8, ptr %i.ipw, i64 8
  %i.ipz = load ptr, ptr %i.ipy, align 8, !tbaa !684, !noalias !24176 ; 2 uses
  %i.iqa = load <2 x ptr>, ptr %i.ipw, align 8, !tbaa !683, !noalias !24176
  store <2 x ptr> %i.iqa, ptr %18, align 16, !tbaa !683, !noalias !24176
  %.not.i.i.i2109 = icmp eq ptr %i.ipz, null
  br i1 %.not.i.i.i2109, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit2111, label %bb.bte

bb.bte:                                           ; preds = %bb.btd
  %i.iqb = getelementptr inbounds nuw i8, ptr %i.ipz, i64 8 ; 3 uses
  %i.iqc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !663, !noalias !24176
  %.not.i.i.i.i2110 = icmp eq i8 %i.iqc, 0
  br i1 %.not.i.i.i.i2110, label %bb.btg, label %bb.btf

bb.btf:                                           ; preds = %bb.bte
  %i.iqd = load i32, ptr %i.iqb, align 4, !tbaa !94, !noalias !24176
  %i.iqe = add nsw i32 %i.iqd, 1
  store i32 %i.iqe, ptr %i.iqb, align 4, !tbaa !94, !noalias !24176
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit2111

bb.btg:                                           ; preds = %bb.bte
  %i.iqf = atomicrmw volatile add ptr %i.iqb, i32 1 acq_rel, align 4, !noalias !24176 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit2111

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit2111: ; preds = %bb.btd, %bb.btf, %bb.btg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24177)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !24178
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %.noexc unwind label %bb.buu, !noalias !24178, !inline_history !23778

.noexc:                                           ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit2111
  %i.iqg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24178
  store i8 123, ptr %i.c, align 1, !tbaa !663, !noalias !24178
  %i.iqh = load ptr, ptr %i.iqg, align 8, !tbaa !658, !noalias !24178
  %i.iqi = getelementptr i8, ptr %i.iqh, i64 -24
  %i.iqj = load i64, ptr %i.iqi, align 8, !noalias !24178
  %i.iqk = getelementptr inbounds i8, ptr %i.iqg, i64 %i.iqj
  %i.iql = getelementptr inbounds nuw i8, ptr %i.iqk, i64 16
  %i.iqm = load i64, ptr %i.iql, align 8, !tbaa !859, !noalias !24178
  %.not.i.i2095 = icmp eq i64 %i.iqm, 0
  br i1 %.not.i.i2095, label %bb.bti, label %bb.bth

bb.bth:                                           ; preds = %.noexc
  %i.iqn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iqg, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !24178, !inline_history !23778 ; 0 uses

bb.bti:                                           ; preds = %.noexc
  %i.iqo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.iqg, i8 noundef signext 123)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !24178, !inline_history !23778 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i: ; preds = %bb.bti, %bb.bth
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24178
  %i.iqp = getelementptr inbounds nuw i8, ptr %i.ipu, i64 48 ; 5 uses
  %i.iqq = getelementptr inbounds nuw i8, ptr %i.ipu, i64 56 ; 3 uses
  %i.iqr = load ptr, ptr %i.iqq, align 8, !tbaa !736, !noalias !24178
  %i.iqs = load ptr, ptr %i.iqp, align 8, !tbaa !737, !noalias !24178
  %.not = icmp eq ptr %i.iqr, %i.iqs
  br i1 %.not, label %._crit_edge, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.peel

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i
  %i.iqt = getelementptr inbounds nuw i8, ptr %i.ipu, i64 24 ; 4 uses
  %i.iqu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.iqv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.iqw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.iqx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %.pre = load ptr, ptr %i.iqt, align 8, !tbaa !640, !noalias !24178
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %.pre157 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !704, !noalias !24178
  %.pre158 = load ptr, ptr %.pre157, align 8, !tbaa !707, !noalias !24178 ; 2 uses
  %.phi.trans.insert161 = getelementptr inbounds nuw i8, ptr %.pre158, i64 32
  %.pre162 = load i64, ptr %.phi.trans.insert161, align 8, !tbaa !682, !noalias !24178
  %.phi.trans.insert159 = getelementptr inbounds nuw i8, ptr %.pre158, i64 24
  %.pre160 = load ptr, ptr %.phi.trans.insert159, align 8, !tbaa !662, !noalias !24178
  %i.iqy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iqg, ptr noundef %.pre160, i64 noundef %.pre162)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !24178, !inline_history !23778 ; 5 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24178
  store i8 58, ptr %i.a, align 1, !tbaa !663, !noalias !24178
  %i.iqz = load ptr, ptr %i.iqy, align 8, !tbaa !658, !noalias !24178
  %i.ira = getelementptr i8, ptr %i.iqz, i64 -24
  %i.irb = load i64, ptr %i.ira, align 8, !noalias !24178
  %i.irc = getelementptr inbounds i8, ptr %i.iqy, i64 %i.irb
  %i.ird = getelementptr inbounds nuw i8, ptr %i.irc, i64 16
  %i.ire = load i64, ptr %i.ird, align 8, !tbaa !859, !noalias !24178
  %.not.i36.i.peel = icmp eq i64 %i.ire, 0
  br i1 %.not.i36.i.peel, label %bb.btk, label %bb.btj

bb.btj:                                           ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.peel
  %i.irf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iqy, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit40.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !24178, !inline_history !23778

bb.btk:                                           ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.peel
  %i.irg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.iqy, i8 noundef signext 58)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit40.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !24178, !inline_history !23778 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit40.i.peel: ; preds = %bb.btk, %bb.btj
  %.0.i37.i.peel = phi ptr [ %i.irf, %bb.btj ], [ %i.iqy, %bb.btk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24178
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !24178
  %i.irh = load ptr, ptr %i.iqt, align 8, !tbaa !640, !noalias !24178
  %i.iri = getelementptr inbounds nuw i8, ptr %i.irh, i64 48
  %i.irj = load ptr, ptr %i.iri, align 8, !tbaa !704, !noalias !24178
  %i.irk = load ptr, ptr %i.irj, align 8, !tbaa !707, !noalias !24178
  %i.irl = getelementptr inbounds nuw i8, ptr %i.irk, i64 56
  %i.irm = load ptr, ptr %i.irl, align 8, !tbaa !640, !noalias !24178 ; 2 uses
  %i.irn = load ptr, ptr %i.irm, align 8, !tbaa !658, !noalias !24178
  %i.iro = getelementptr inbounds nuw i8, ptr %i.irn, i64 32
  %i.irp = load ptr, ptr %i.iro, align 8, !noalias !24178
  invoke void %i.irp(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %i.irm, i1 noundef zeroext false)
          to label %bb.btl unwind label %.loopexit.split-lp139.loopexit.split-lp.loopexit.split-lp, !noalias !24178, !inline_history !23778

bb.btl:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit40.i.peel
  %i.irq = load ptr, ptr %3, align 8, !tbaa !662, !noalias !24178
  %i.irr = load i64, ptr %i.iqu, align 8, !tbaa !682, !noalias !24178
  %i.irs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i37.i.peel, ptr noundef %i.irq, i64 noundef %i.irr)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit42.i.peel unwind label %.loopexit.split-lp143.loopexit.split-lp.loopexit.split-lp, !noalias !24178, !inline_history !23778 ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit42.i.peel: ; preds = %bb.btl
  %i.irt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.irs, ptr noundef nonnull @.str.89, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44.i.peel unwind label %.loopexit.split-lp143.loopexit.split-lp.loopexit.split-lp, !noalias !24178, !inline_history !23778 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44.i.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit42.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !24178
  %i.iru = load ptr, ptr %i.iqp, align 8, !tbaa !737, !noalias !24178
  %i.irv = load ptr, ptr %i.iru, align 8, !tbaa !746, !noalias !24178
  invoke void @_ZNK5arrow6Scalar8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(41) %i.irv)
          to label %bb.btm unwind label %.loopexit.split-lp148.loopexit.split-lp.loopexit.split-lp, !noalias !24178, !inline_history !23778

bb.btm:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44.i.peel
  %i.irw = load ptr, ptr %4, align 8, !tbaa !662, !noalias !24178
  %i.irx = load i64, ptr %i.iqv, align 8, !tbaa !682, !noalias !24178
  %i.iry = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.irs, ptr noundef %i.irw, i64 noundef %i.irx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit46.i.peel unwind label %.loopexit.split-lp153.loopexit.split-lp.loopexit.split-lp, !noalias !24178, !inline_history !23778 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit46.i.peel: ; preds = %bb.btm
  %i.irz = load ptr, ptr %4, align 8, !tbaa !662, !noalias !24178 ; 2 uses
  %i.isa = icmp eq ptr %i.irz, %i.iqw
  br i1 %i.isa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit46.i.peel
  %i.isb = load i64, ptr %i.iqw, align 8, !tbaa !663, !noalias !24178
  %i.isc = add i64 %i.isb, 1
  call void @_ZdlPvm(ptr noundef %i.irz, i64 noundef %i.isc) #29, !noalias !24178, !inline_history !23778
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit46.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !24178
  %i.isd = load ptr, ptr %3, align 8, !tbaa !662, !noalias !24178 ; 2 uses
  %i.ise = icmp eq ptr %i.isd, %i.iqx
  br i1 %i.ise, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.peel
  %i.isf = load i64, ptr %i.iqx, align 8, !tbaa !663, !noalias !24178
  %i.isg = add i64 %i.isf, 1
  call void @_ZdlPvm(ptr noundef %i.isd, i64 noundef %i.isg) #29, !noalias !24178, !inline_history !23778
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !24178
  %i.ish = load ptr, ptr %i.iqq, align 8, !tbaa !736, !noalias !24178
  %i.isi = load ptr, ptr %i.iqp, align 8, !tbaa !737, !noalias !24178
  %i.isj = ptrtoint ptr %i.ish to i64
  %i.isk = ptrtoint ptr %i.isi to i64
  %i.isl = sub i64 %i.isj, %i.isk
  %i.ism = icmp ugt i64 %i.isl, 16
  br i1 %i.ism, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24178
  store i8 125, ptr %i.b, align 1, !tbaa !663, !noalias !24178
  %i.isn = load ptr, ptr %i.iqg, align 8, !tbaa !658, !noalias !24178
  %i.iso = getelementptr i8, ptr %i.isn, i64 -24
  %i.isp = load i64, ptr %i.iso, align 8, !noalias !24178
  %i.isq = getelementptr inbounds i8, ptr %i.iqg, i64 %i.isp
  %i.isr = getelementptr inbounds nuw i8, ptr %i.isq, i64 16
  %i.iss = load i64, ptr %i.isr, align 8, !tbaa !859, !noalias !24178
  %.not.i29.i = icmp eq i64 %i.iss, 0
  br i1 %.not.i29.i, label %bb.bto, label %bb.btn

bb.btn:                                           ; preds = %._crit_edge
  %i.ist = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iqg, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !24178, !inline_history !23778 ; 0 uses

bb.bto:                                           ; preds = %._crit_edge
  %i.isu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.iqg, i8 noundef signext 125)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !24178, !inline_history !23778 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33.i: ; preds = %bb.bto, %bb.btn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24178
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !24178
  call void @llvm.experimental.noalias.scope.decl(metadata !24179), !noalias !24176
  call void @llvm.experimental.noalias.scope.decl(metadata !24180), !noalias !24176
  %i.isv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.isv, ptr %6, align 8, !tbaa !681, !alias.scope !24181, !noalias !24178
  %i.isw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.isw, align 8, !tbaa !682, !alias.scope !24181, !noalias !24178
  store i8 0, ptr %i.isv, align 8, !tbaa !663, !alias.scope !24181, !noalias !24178
  %i.isx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.isy = load ptr, ptr %i.isx, align 8, !tbaa !993, !noalias !24182 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.isy, null
  %i.isz = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ita = load ptr, ptr %i.isz, align 8, !noalias !24182 ; 2 uses
  %i.itb = icmp ugt ptr %i.isy, %i.ita
  %.08.i.i.i.i = select i1 %i.itb, ptr %i.isy, ptr %i.ita ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i2097 = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i2097, label %bb.btw, label %bb.btu

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.peel ] ; 4 uses
  %i.itc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iqg, ptr noundef nonnull @.str.88, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !24178, !inline_history !23778 ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %bb.btp, %bb.btq, %bb.btk, %bb.btj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.peel, %bb.bto, %bb.btn, %bb.bti, %bb.bth
  %lpad.loopexit.split-lp876 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.peel.next
  %i.itd = load ptr, ptr %i.iqt, align 8, !tbaa !640, !noalias !24178
  %i.ite = getelementptr inbounds nuw i8, ptr %i.itd, i64 48
  %i.itf = load ptr, ptr %i.ite, align 8, !tbaa !704, !noalias !24178
  %i.itg = getelementptr inbounds nuw [16 x i8], ptr %i.itf, i64 %indvars.iv
  %i.ith = load ptr, ptr %i.itg, align 8, !tbaa !707, !noalias !24178 ; 2 uses
  %i.iti = getelementptr inbounds nuw i8, ptr %i.ith, i64 24
  %i.itj = load ptr, ptr %i.iti, align 8, !tbaa !662, !noalias !24178
  %i.itk = getelementptr inbounds nuw i8, ptr %i.ith, i64 32
  %i.itl = load i64, ptr %i.itk, align 8, !tbaa !682, !noalias !24178
  %i.itm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iqg, ptr noundef %i.itj, i64 noundef %i.itl)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !24178, !inline_history !23778 ; 5 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24178
  store i8 58, ptr %i.a, align 1, !tbaa !663, !noalias !24178
  %i.itn = load ptr, ptr %i.itm, align 8, !tbaa !658, !noalias !24178
  %i.ito = getelementptr i8, ptr %i.itn, i64 -24
  %i.itp = load i64, ptr %i.ito, align 8, !noalias !24178
  %i.itq = getelementptr inbounds i8, ptr %i.itm, i64 %i.itp
  %i.itr = getelementptr inbounds nuw i8, ptr %i.itq, i64 16
  %i.its = load i64, ptr %i.itr, align 8, !tbaa !859, !noalias !24178
  %.not.i36.i = icmp eq i64 %i.its, 0
  br i1 %.not.i36.i, label %bb.btq, label %bb.btp

bb.btp:                                           ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.itt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.itm, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit40.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !24178, !inline_history !23778

bb.btq:                                           ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.itu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.itm, i8 noundef signext 58)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit40.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !24178, !inline_history !23778 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit40.i: ; preds = %bb.btq, %bb.btp
  %.0.i37.i = phi ptr [ %i.itt, %bb.btp ], [ %i.itm, %bb.btq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24178
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !24178
  %i.itv = load ptr, ptr %i.iqt, align 8, !tbaa !640, !noalias !24178
  %i.itw = getelementptr inbounds nuw i8, ptr %i.itv, i64 48
  %i.itx = load ptr, ptr %i.itw, align 8, !tbaa !704, !noalias !24178
  %i.ity = getelementptr inbounds nuw [16 x i8], ptr %i.itx, i64 %indvars.iv
  %i.itz = load ptr, ptr %i.ity, align 8, !tbaa !707, !noalias !24178
  %i.iua = getelementptr inbounds nuw i8, ptr %i.itz, i64 56
  %i.iub = load ptr, ptr %i.iua, align 8, !tbaa !640, !noalias !24178 ; 2 uses
  %i.iuc = load ptr, ptr %i.iub, align 8, !tbaa !658, !noalias !24178
  %i.iud = getelementptr inbounds nuw i8, ptr %i.iuc, i64 32
  %i.iue = load ptr, ptr %i.iud, align 8, !noalias !24178
  invoke void %i.iue(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %i.iub, i1 noundef zeroext false)
          to label %bb.btr unwind label %.loopexit.split-lp139.loopexit.split-lp.loopexit.split-lp, !noalias !24178, !inline_history !23778

bb.btr:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit40.i
  %i.iuf = load ptr, ptr %3, align 8, !tbaa !662, !noalias !24178
  %i.iug = load i64, ptr %i.iqu, align 8, !tbaa !682, !noalias !24178
  %i.iuh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i37.i, ptr noundef %i.iuf, i64 noundef %i.iug)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit42.i unwind label %.loopexit.split-lp143.loopexit.split-lp.loopexit.split-lp, !noalias !24178, !inline_history !23778 ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit42.i: ; preds = %bb.btr
  %i.iui = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iuh, ptr noundef nonnull @.str.89, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44.i unwind label %.loopexit.split-lp143.loopexit.split-lp.loopexit.split-lp, !noalias !24178, !inline_history !23778 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit42.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !24178
  %i.iuj = load ptr, ptr %i.iqp, align 8, !tbaa !737, !noalias !24178
  %i.iuk = getelementptr inbounds nuw [16 x i8], ptr %i.iuj, i64 %indvars.iv
  %i.iul = load ptr, ptr %i.iuk, align 8, !tbaa !746, !noalias !24178
  invoke void @_ZNK5arrow6Scalar8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(41) %i.iul)
          to label %bb.bts unwind label %.loopexit.split-lp148.loopexit.split-lp.loopexit.split-lp, !noalias !24178, !inline_history !23778

bb.bts:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44.i
  %i.ium = load ptr, ptr %4, align 8, !tbaa !662, !noalias !24178
  %i.iun = load i64, ptr %i.iqv, align 8, !tbaa !682, !noalias !24178
  %i.iuo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iuh, ptr noundef %i.ium, i64 noundef %i.iun)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit46.i unwind label %.loopexit.split-lp153.loopexit.split-lp.loopexit.split-lp, !noalias !24178, !inline_history !23778 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit46.i: ; preds = %bb.bts
  %i.iup = load ptr, ptr %4, align 8, !tbaa !662, !noalias !24178 ; 2 uses
  %i.iuq = icmp eq ptr %i.iup, %i.iqw
  br i1 %i.iuq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit46.i
  %i.iur = load i64, ptr %i.iqw, align 8, !tbaa !663, !noalias !24178
  %i.ius = add i64 %i.iur, 1
  call void @_ZdlPvm(ptr noundef %i.iup, i64 noundef %i.ius) #29, !noalias !24178, !inline_history !23778
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit46.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !24178
  %i.iut = load ptr, ptr %3, align 8, !tbaa !662, !noalias !24178 ; 2 uses
  %i.iuu = icmp eq ptr %i.iut, %i.iqx
  br i1 %i.iuu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.iuv = load i64, ptr %i.iqx, align 8, !tbaa !663, !noalias !24178
  %i.iuw = add i64 %i.iuv, 1
  call void @_ZdlPvm(ptr noundef %i.iut, i64 noundef %i.iuw) #29, !noalias !24178, !inline_history !23778
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !24178
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.iux = load ptr, ptr %i.iqq, align 8, !tbaa !736, !noalias !24178
  %i.iuy = load ptr, ptr %i.iqp, align 8, !tbaa !737, !noalias !24178
  %i.iuz = ptrtoint ptr %i.iux to i64
  %i.iva = ptrtoint ptr %i.iuy to i64
  %i.ivb = sub i64 %i.iuz, %i.iva
  %i.ivc = ashr exact i64 %i.ivb, 4
  %i.ivd = icmp ugt i64 %i.ivc, %indvars.iv.next
  br i1 %i.ivd, label %.peel.next, label %._crit_edge, !llvm.loop !23783

.loopexit.split-lp139.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit40.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit40.i.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i

.loopexit.split-lp143.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit42.i, %bb.btr, %bb.btl, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit42.i.peel
  %lpad.loopexit.split-lp880 = landingpad { ptr, i32 }
          cleanup
  br label %bb.btt

.loopexit.split-lp148.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44.i.peel
  %lpad.loopexit.split-lp883 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i

.loopexit.split-lp153.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bts, %bb.btm
  %lpad.loopexit.split-lp886 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ive = load ptr, ptr %4, align 8, !tbaa !662, !noalias !24178 ; 2 uses
  %i.ivf = icmp eq ptr %i.ive, %i.iqw
  br i1 %i.ivf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i: ; preds = %.loopexit.split-lp153.loopexit.split-lp.loopexit.split-lp
  %i.ivg = load i64, ptr %i.iqw, align 8, !tbaa !663, !noalias !24178
  %i.ivh = add i64 %i.ivg, 1
  call void @_ZdlPvm(ptr noundef %i.ive, i64 noundef %i.ivh) #29, !noalias !24178, !inline_history !23778
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i: ; preds = %.loopexit.split-lp153.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp148.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i
  %.pn22.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp883, %.loopexit.split-lp148.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp886, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i ], [ %lpad.loopexit.split-lp886, %.loopexit.split-lp153.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !24178
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZNS_12_GLOBAL__N_114FormatToBufferINS0_15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISF_EEtlSL_EEESE_OSF_:bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !663
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %1, align 8, !tbaa !662   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ag
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.j
  %i.bp = load i64, ptr %i.ag, align 8, !tbaa !663
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.pn6 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.bm, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn6
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %1, ptr nofree readonly captures(address_is_null) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !24589 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !681
  %i.b = icmp eq ptr %2, null
  %i.c = icmp ne i64 %1, 0
  %or.cond.i.i.i = and i1 %i.c, %i.b
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.68) #30
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %1, 15
  br i1 %i.d, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i64 %1, 0
  br i1 %i.e, label %.noexc.i.i.i, label %bb.d

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #30
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = add nuw i64 %1, 1                        ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc9.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !691

.noexc9.i.i.i:                                    ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.d
  %i.h = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #31 ; 2 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !662
  store i64 %1, ptr %i.a, align 8, !tbaa !663
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.b
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  switch i64 %1, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.j = load i8, ptr %2, align 1, !tbaa !663
  store i8 %i.j, ptr %i.i, align 1, !tbaa !663
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %2, i64 %1, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.k, align 8, !tbaa !682
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %1
  store i8 0, ptr %i.l, align 1, !tbaa !663
  invoke void @_ZN5arrow6Buffer10FromStringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.9") align 8 %0, ptr noundef nonnull %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = load ptr, ptr %3, align 8, !tbaa !662    ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.o = load i64, ptr %i.a, align 8, !tbaa !663
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %3, align 8, !tbaa !662    ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.a
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.i
  %i.t = load i64, ptr %i.a, align 8, !tbaa !663
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  resume { ptr, i32 } %i.q
}

declare void @_ZNK5arrow9Decimal328ToStringB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) local_unnamed_addr #2

declare void @_ZNK5arrow9Decimal648ToStringB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare void @_ZNK5arrow10Decimal1288ToStringB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

declare void @_ZNK5arrow10Decimal2568ToStringB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_18CastImplINS_10StringTypeEEENSt9enable_ifIXsr3std7is_sameIT_S2_EE5valueENS_6ResultISt10shared_ptrINS_6ScalarEEEEE4typeERKNS_14BaseListScalarES6_INS_8DataTypeEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 !guid !24607 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.arrow::Result.62", align 8  ; 20 uses
  %6 = alloca %"class.std::shared_ptr.56", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::shared_ptr.9", align 16 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !640  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !658
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %4, align 8, !tbaa !662
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !682
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.h, i64 noundef %i.j)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.y

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.b
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.m = load ptr, ptr %4, align 8, !tbaa !662    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !663
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !703  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !710
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !728
  %.not3167 = icmp sgt i64 %i.w, 0
  br i1 %.not3167, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39.peel, label %.critedge

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZNK5arrow5Array9GetScalarEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.62") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef 0)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39.peel
  %i.ac = load ptr, ptr %5, align 8, !tbaa !680
  %i.ad = icmp eq ptr %i.ac, null                 ; 2 uses
  br i1 %i.ad, label %bb.e, label %bb.d, !prof !700

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !24608)
  call void @llvm.experimental.noalias.scope.decl(metadata !24609)
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !746, !noalias !24610 ; 2 uses
  store ptr %i.ae, ptr %6, align 8, !tbaa !746, !alias.scope !24610
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !684, !noalias !24610 ; 9 uses
  store ptr null, ptr %i.z, align 8, !tbaa !684, !noalias !24610
  store ptr %i.af, ptr %i.y, align 8, !tbaa !684, !alias.scope !24610
  store ptr null, ptr %i.x, align 8, !tbaa !746, !noalias !24610
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZNK5arrow6Scalar8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(41) %i.ae)
          to label %bb.f unwind label %.loopexit.split-lp73.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %7, align 8, !tbaa !662
  %i.ah = load i64, ptr %i.aa, align 8, !tbaa !682
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.ag, i64 noundef %i.ah)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit40.peel unwind label %.loopexit.split-lp77.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit40.peel: ; preds = %bb.f
  %i.aj = load ptr, ptr %7, align 8, !tbaa !662   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.ab
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit40.peel
  %i.al = load i64, ptr %i.ab, align 8, !tbaa !663
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit40.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %.not.i.i.peel = icmp eq ptr %i.af, null
  br i1 %.not.i.i.peel, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.peel
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !663
  %.not.i.i.i.peel = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.peel, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = add nsw i32 %i.aq, -1
  store i32 %i.as, ptr %i.an, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel

bb.j:                                             ; preds = %bb.h
  %i.at = atomicrmw volatile add ptr %i.an, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.peel = phi i32 [ %i.aq, %bb.i ], [ %i.at, %bb.j ]
  %i.au = icmp eq i32 %.0.i.i.i.i.peel, 1
  br i1 %i.au, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel, !prof !691

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #28
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel

bb.l:                                             ; preds = %bb.g
  store i32 0, ptr %i.an, align 8, !tbaa !689
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !690
  %i.aw = load ptr, ptr %i.af, align 8, !tbaa !658
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #28, !inline_history !6
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !658
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #28, !inline_history !6
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel

_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel: ; preds = %bb.l, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel, %bb.d
  %i.bc = load ptr, ptr %5, align 8, !tbaa !680   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.n, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.peel, !prof !700

bb.n:                                             ; preds = %bb.m
  %i.be = load ptr, ptr %i.z, align 8, !tbaa !684 ; 8 uses
  %.not.i.i.i.i.i.peel = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i.peel, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.peel, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !663
  %.not.i.i.i.i.i.i.peel = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i.peel, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = add nsw i32 %i.bi, -1
  store i32 %i.bk, ptr %i.bf, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.peel

bb.r:                                             ; preds = %bb.p
  %i.bl = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.peel

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.peel: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i.i.peel = phi i32 [ %i.bi, %bb.q ], [ %i.bl, %bb.r ]
  %i.bm = icmp eq i32 %.0.i.i.i.i.i.i.i.peel, 1
  br i1 %i.bm, label %bb.s, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.peel, !prof !691

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.peel
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.peel

bb.t:                                             ; preds = %bb.o
  store i32 0, ptr %i.bf, align 8, !tbaa !689
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bn, align 4, !tbaa !690
  %i.bo = load ptr, ptr %i.be, align 8, !tbaa !658
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #28, !inline_history !13
  %i.br = load ptr, ptr %i.be, align 8, !tbaa !658
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #28, !inline_history !13
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.peel

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.peel: ; preds = %bb.t, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.peel
  %.pr.i.peel.pr = load ptr, ptr %5, align 8, !tbaa !680 ; 2 uses
  %.not.i.i44.peel = icmp eq ptr %.pr.i.peel.pr, null
  br i1 %.not.i.i44.peel, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.peel, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.peel, !prof !757

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.peel: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.peel, %bb.m
  %i.bu = phi ptr [ %.pr.i.peel.pr, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.peel ], [ %i.bc, %bb.m ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !743, !range !676, !noundef !677
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.peel, label %bb.u

bb.u:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.peel
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.peel

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.peel: ; preds = %bb.n, %bb.u, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.peel, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %i.ad, label %bb.v, label %.loopexit66

bb.v:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.peel
  %i.by = load ptr, ptr %i.r, align 8, !tbaa !703
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !710
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !728
  %.not31.peel = icmp sgt i64 %i.cc, 1
  br i1 %.not31.peel, label %.peel.next, label %.critedge

bb.w:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit
  %i.cd = add nuw nsw i64 %.01468, 1              ; 2 uses
  %i.ce = load ptr, ptr %i.r, align 8, !tbaa !703
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !710
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !728
  %.not31 = icmp slt i64 %i.cd, %i.ci
  br i1 %.not31, label %.peel.next, label %.critedge, !llvm.loop !24594

bb.x:                                             ; preds = %bb.a
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

bb.y:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.b
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %4, align 8, !tbaa !662   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.y
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !663
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.x
  %.pn = phi { ptr, i32 } [ %i.cj, %bb.x ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %i.ck, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.loopexit.split-lp

.peel.next:                                       ; preds = %bb.v, %bb.w
  %.01468 = phi i64 [ %i.cd, %bb.w ], [ 1, %bb.v ] ; 2 uses
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.88, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %.peel.next
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !703
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZNK5arrow5Array9GetScalarEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.62") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %.pre, i64 noundef %.01468)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.cr = load ptr, ptr %5, align 8, !tbaa !680
  %i.cs = icmp eq ptr %i.cr, null                 ; 2 uses
  br i1 %i.cs, label %bb.ab, label %bb.aa, !prof !700

bb.aa:                                            ; preds = %bb.z
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  br label %bb.aj

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %.peel.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39.peel, %bb.at, %bb.as
  %lpad.loopexit.split-lp118 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !24611)
  call void @llvm.experimental.noalias.scope.decl(metadata !24612)
  %i.ct = load ptr, ptr %i.x, align 8, !tbaa !746, !noalias !24613 ; 2 uses
  store ptr %i.ct, ptr %6, align 8, !tbaa !746, !alias.scope !24613
end_hunk_1
