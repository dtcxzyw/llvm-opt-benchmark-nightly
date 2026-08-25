Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUAtomicOptimizer?download=true
inline.NumInlined: 1633
inline.NumDeleted: 929
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK12_GLOBAL__N_125AMDGPUAtomicOptimizerImpl14optimizeAtomicERN4llvm11InstructionENS1_13AtomicRMWInst5BinOpEjbb:bb.a
bb.z:                                             ; preds = %bb.y
  store i64 0, ptr %69, align 8, !tbaa !352, !alias.scope !387
  br label %_ZN4llvm5APInt11getMinValueEj.exit.i

bb.aa:                                            ; preds = %bb.y
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %69, i64 noundef 0, i1 noundef zeroext false) #15
  br label %_ZN4llvm5APInt11getMinValueEj.exit.i

_ZN4llvm5APInt11getMinValueEj.exit.i:             ; preds = %bb.aa, %bb.z
  %i.hq = call noundef ptr @_ZN4llvm11ConstantInt3getERNS_11LLVMContextERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef nonnull align 8 dereferenceable(12) %69) #15
  %i.hr = load i32, ptr %i.ho, align 8, !tbaa !350
  %i.hs = icmp ugt i32 %i.hr, 64
  br i1 %i.hs, label %bb.ab, label %_ZN4llvm5APIntD2Ev.exit.i

bb.ab:                                            ; preds = %_ZN4llvm5APInt11getMinValueEj.exit.i
  %i.ht = load ptr, ptr %69, align 8, !tbaa !352  ; 2 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdaPv(ptr noundef nonnull %i.ht) #16
  br label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.ac, %bb.ab, %_ZN4llvm5APInt11getMinValueEj.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #15
  br label %_ZL27getIdentityValueForAtomicOpPN4llvm4TypeENS_13AtomicRMWInst5BinOpE.exit

bb.ad:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i, %_ZNK4llvm8TypeSizecvmEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #15
  %i.hv = getelementptr inbounds nuw i8, ptr %70, i64 8 ; 2 uses
  store i32 %i.hn, ptr %i.hv, align 8, !tbaa !350, !alias.scope !390
  %i.hw = icmp ult i32 %i.hn, 65
  br i1 %i.hw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hx = sub i64 0, %.fca.0.extract.i
  %i.hy = and i64 %i.hx, 63
  %i.hz = lshr i64 -1, %i.hy
  %i.ia = icmp eq i32 %i.hn, 0
  %spec.select.i.i.i.i = select i1 %i.ia, i64 0, i64 %i.hz, !prof !395
  store i64 %spec.select.i.i.i.i, ptr %70, align 8, !tbaa !352, !alias.scope !390
  br label %_ZN4llvm5APInt11getMaxValueEj.exit.i

bb.af:                                            ; preds = %bb.ad
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %70, i64 noundef -1, i1 noundef zeroext true) #15
  br label %_ZN4llvm5APInt11getMaxValueEj.exit.i

_ZN4llvm5APInt11getMaxValueEj.exit.i:             ; preds = %bb.af, %bb.ae
  %i.ib = call noundef ptr @_ZN4llvm11ConstantInt3getERNS_11LLVMContextERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef nonnull align 8 dereferenceable(12) %70) #15
  %i.ic = load i32, ptr %i.hv, align 8, !tbaa !350
  %i.id = icmp ugt i32 %i.ic, 64
  br i1 %i.id, label %bb.ag, label %_ZN4llvm5APIntD2Ev.exit17.i

bb.ag:                                            ; preds = %_ZN4llvm5APInt11getMaxValueEj.exit.i
  %i.ie = load ptr, ptr %70, align 8, !tbaa !352  ; 2 uses
  %i.if = icmp eq ptr %i.ie, null
  br i1 %i.if, label %_ZN4llvm5APIntD2Ev.exit17.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.ie) #16
  br label %_ZN4llvm5APIntD2Ev.exit17.i

_ZN4llvm5APIntD2Ev.exit17.i:                      ; preds = %bb.ah, %bb.ag, %_ZN4llvm5APInt11getMaxValueEj.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #15
  br label %_ZL27getIdentityValueForAtomicOpPN4llvm4TypeENS_13AtomicRMWInst5BinOpE.exit

bb.ai:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #15
  %i.ig = getelementptr inbounds nuw i8, ptr %71, i64 8 ; 3 uses
  store i32 %i.hn, ptr %i.ig, align 8, !tbaa !350, !alias.scope !396
  %i.ih = icmp ult i32 %i.hn, 65
  br i1 %i.ih, label %_ZN4llvm5APIntC2Ejmbb.exit.thread.i.i, label %_ZN4llvm5APIntC2Ejmbb.exit.i.i

_ZN4llvm5APIntC2Ejmbb.exit.thread.i.i:            ; preds = %bb.ai
  %i.ii = add nuw nsw i64 %.fca.0.extract.i, 63
  %i.ij = and i64 %i.ii, 63
  %i.ik = shl nuw i64 1, %i.ij
  br label %bb.aj

_ZN4llvm5APIntC2Ejmbb.exit.i.i:                   ; preds = %bb.ai
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %71, i64 noundef 0, i1 noundef zeroext false) #15
  %.pr.i.i = load i32, ptr %i.ig, align 8, !tbaa !350, !alias.scope !396
  %i.il = add i32 %i.hn, -1                       ; 2 uses
  %i.im = and i32 %i.il, 63
  %i.in = zext nneg i32 %i.im to i64
  %i.io = shl nuw i64 1, %i.in                    ; 2 uses
  %i.ip = icmp ult i32 %.pr.i.i, 65
  br i1 %i.ip, label %_ZN4llvm5APIntC2Ejmbb.exit._crit_edge.i.i, label %bb.ak

_ZN4llvm5APIntC2Ejmbb.exit._crit_edge.i.i:        ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i.i
  %.pre.i.i = load i64, ptr %71, align 8, !tbaa !352, !alias.scope !396
  %i.iq = or i64 %.pre.i.i, %i.io
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit._crit_edge.i.i, %_ZN4llvm5APIntC2Ejmbb.exit.thread.i.i
  %i.ir = phi i64 [ %i.ik, %_ZN4llvm5APIntC2Ejmbb.exit.thread.i.i ], [ %i.iq, %_ZN4llvm5APIntC2Ejmbb.exit._crit_edge.i.i ]
  store i64 %i.ir, ptr %71, align 8, !tbaa !352, !alias.scope !396
  br label %_ZN4llvm5APInt17getSignedMinValueEj.exit.i

bb.ak:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i.i
  %i.is = load ptr, ptr %71, align 8, !tbaa !352, !alias.scope !396
  %i.it = lshr i32 %i.il, 6
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.iu ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !326
  %i.ix = or i64 %i.iw, %i.io
  store i64 %i.ix, ptr %i.iv, align 8, !tbaa !326
  br label %_ZN4llvm5APInt17getSignedMinValueEj.exit.i

_ZN4llvm5APInt17getSignedMinValueEj.exit.i:       ; preds = %bb.ak, %bb.aj
  %i.iy = call noundef ptr @_ZN4llvm11ConstantInt3getERNS_11LLVMContextERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef nonnull align 8 dereferenceable(12) %71) #15
  %i.iz = load i32, ptr %i.ig, align 8, !tbaa !350
  %i.ja = icmp ugt i32 %i.iz, 64
  br i1 %i.ja, label %bb.al, label %_ZN4llvm5APIntD2Ev.exit18.i

bb.al:                                            ; preds = %_ZN4llvm5APInt17getSignedMinValueEj.exit.i
  %i.jb = load ptr, ptr %71, align 8, !tbaa !352  ; 2 uses
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %_ZN4llvm5APIntD2Ev.exit18.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZdaPv(ptr noundef nonnull %i.jb) #16
  br label %_ZN4llvm5APIntD2Ev.exit18.i

_ZN4llvm5APIntD2Ev.exit18.i:                      ; preds = %bb.am, %bb.al, %_ZN4llvm5APInt17getSignedMinValueEj.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #15
  br label %_ZL27getIdentityValueForAtomicOpPN4llvm4TypeENS_13AtomicRMWInst5BinOpE.exit

bb.an:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #15
  %i.jd = getelementptr inbounds nuw i8, ptr %72, i64 8 ; 3 uses
  store i32 %i.hn, ptr %i.jd, align 8, !tbaa !350, !alias.scope !399
  %i.je = icmp ult i32 %i.hn, 65
  br i1 %i.je, label %_ZN4llvm5APInt10getAllOnesEj.exit.thread.i.i, label %_ZN4llvm5APInt10getAllOnesEj.exit.i.i

_ZN4llvm5APInt10getAllOnesEj.exit.thread.i.i:     ; preds = %bb.an
  %i.jf = sub i64 0, %.fca.0.extract.i
  %i.jg = and i64 %i.jf, 63
  %i.jh = lshr i64 -1, %i.jg
  %i.ji = icmp eq i32 %i.hn, 0
  %spec.select.i.i.i20.i = select i1 %i.ji, i64 0, i64 %i.jh, !prof !395
  %i.jj = add nuw nsw i64 %.fca.0.extract.i, 63
  %i.jk = and i64 %i.jj, 63
  %i.jl = shl nuw i64 1, %i.jk
  %i.jm = xor i64 %i.jl, -1
  br label %bb.ao

_ZN4llvm5APInt10getAllOnesEj.exit.i.i:            ; preds = %bb.an
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %72, i64 noundef -1, i1 noundef zeroext true) #15
  %.pre.i19.i = load i32, ptr %i.jd, align 8, !tbaa !350, !alias.scope !404
  %i.jn = icmp ult i32 %.pre.i19.i, 65
  %i.jo = add i32 %i.hn, -1                       ; 2 uses
  %i.jp = and i32 %i.jo, 63
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = shl nuw i64 1, %i.jq
  %i.js = xor i64 %i.jr, -1                       ; 2 uses
  br i1 %i.jn, label %_ZN4llvm5APInt10getAllOnesEj.exit.i._crit_edge.i, label %bb.ap

_ZN4llvm5APInt10getAllOnesEj.exit.i._crit_edge.i: ; preds = %_ZN4llvm5APInt10getAllOnesEj.exit.i.i
  %.pre.i = load i64, ptr %72, align 8, !tbaa !352, !alias.scope !404
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm5APInt10getAllOnesEj.exit.i._crit_edge.i, %_ZN4llvm5APInt10getAllOnesEj.exit.thread.i.i
  %i.jt = phi i64 [ %spec.select.i.i.i20.i, %_ZN4llvm5APInt10getAllOnesEj.exit.thread.i.i ], [ %.pre.i, %_ZN4llvm5APInt10getAllOnesEj.exit.i._crit_edge.i ]
  %i.ju = phi i64 [ %i.jm, %_ZN4llvm5APInt10getAllOnesEj.exit.thread.i.i ], [ %i.js, %_ZN4llvm5APInt10getAllOnesEj.exit.i._crit_edge.i ]
  %i.jv = and i64 %i.ju, %i.jt
  store i64 %i.jv, ptr %72, align 8, !tbaa !352, !alias.scope !404
  br label %_ZN4llvm5APInt17getSignedMaxValueEj.exit.i

bb.ap:                                            ; preds = %_ZN4llvm5APInt10getAllOnesEj.exit.i.i
  %i.jw = load ptr, ptr %72, align 8, !tbaa !352, !alias.scope !404
  %i.jx = lshr i32 %i.jo, 6
  %i.jy = zext nneg i32 %i.jx to i64
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.jy ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !326
  %i.kb = and i64 %i.ka, %i.js
  store i64 %i.kb, ptr %i.jz, align 8, !tbaa !326
  br label %_ZN4llvm5APInt17getSignedMaxValueEj.exit.i

_ZN4llvm5APInt17getSignedMaxValueEj.exit.i:       ; preds = %bb.ap, %bb.ao
  %i.kc = call noundef ptr @_ZN4llvm11ConstantInt3getERNS_11LLVMContextERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef nonnull align 8 dereferenceable(12) %72) #15
  %i.kd = load i32, ptr %i.jd, align 8, !tbaa !350
  %i.ke = icmp ugt i32 %i.kd, 64
  br i1 %i.ke, label %bb.aq, label %_ZN4llvm5APIntD2Ev.exit21.i

bb.aq:                                            ; preds = %_ZN4llvm5APInt17getSignedMaxValueEj.exit.i
  %i.kf = load ptr, ptr %72, align 8, !tbaa !352  ; 2 uses
  %i.kg = icmp eq ptr %i.kf, null
  br i1 %i.kg, label %_ZN4llvm5APIntD2Ev.exit21.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZdaPv(ptr noundef nonnull %i.kf) #16
  br label %_ZN4llvm5APIntD2Ev.exit21.i

_ZN4llvm5APIntD2Ev.exit21.i:                      ; preds = %bb.ar, %bb.aq, %_ZN4llvm5APInt17getSignedMaxValueEj.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #15
  br label %_ZL27getIdentityValueForAtomicOpPN4llvm4TypeENS_13AtomicRMWInst5BinOpE.exit

bb.as:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #15
  %i.kh = call noundef nonnull align 4 dereferenceable(29) ptr @_ZNK4llvm4Type15getFltSemanticsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hj) #15 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.kh, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24) %73, ptr noundef nonnull align 4 dereferenceable(29) %i.kh, i32 noundef 0) #15
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i.i

bb.au:                                            ; preds = %bb.as
  call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24) %73, ptr noundef nonnull align 4 dereferenceable(29) %i.kh, i32 noundef 0) #15
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i.i

_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i.i: ; preds = %bb.au, %bb.at
  %i.ki = load ptr, ptr %73, align 8, !tbaa !352, !alias.scope !405
  %.not.i.i.i = icmp eq ptr %i.ki, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i.i
  call void @_ZN4llvm6detail9IEEEFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(24) %73, i1 noundef zeroext true) #15
  br label %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit.i

bb.aw:                                            ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i.i
  call void @_ZN4llvm6detail13DoubleAPFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(24) %73, i1 noundef zeroext true) #15
  br label %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit.i

_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit.i: ; preds = %bb.aw, %bb.av
  %i.kj = call noundef ptr @_ZN4llvm10ConstantFP3getERNS_11LLVMContextERKNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef nonnull align 8 dereferenceable(24) %73) #15
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %73) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #15
  br label %_ZL27getIdentityValueForAtomicOpPN4llvm4TypeENS_13AtomicRMWInst5BinOpE.exit

bb.ax:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i, %_ZNK4llvm8TypeSizecvmEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #15
  %i.kk = call noundef nonnull align 4 dereferenceable(29) ptr @_ZNK4llvm4Type15getFltSemanticsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hj) #15 ; 3 uses
  %.not.i.i.i5.i.i = icmp eq ptr %i.kk, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i.i5.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull align 4 dereferenceable(29) %i.kk, i32 noundef 0) #15
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i6.i.i

bb.az:                                            ; preds = %bb.ax
  call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull align 4 dereferenceable(29) %i.kk, i32 noundef 0) #15
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i6.i.i

_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i6.i.i: ; preds = %bb.az, %bb.ay
  %i.kl = load ptr, ptr %74, align 8, !tbaa !352, !alias.scope !408
  %.not.i.i7.i.i = icmp eq ptr %i.kl, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i7.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i6.i.i
  call void @_ZN4llvm6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %74, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null) #15
  br label %_ZN4llvm7APFloat6getNaNERKNS_12fltSemanticsEbm.exit.i

bb.bb:                                            ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i6.i.i
  call void @_ZN4llvm6detail13DoubleAPFloat7makeNaNEbbPKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %74, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null) #15
  br label %_ZN4llvm7APFloat6getNaNERKNS_12fltSemanticsEbm.exit.i

_ZN4llvm7APFloat6getNaNERKNS_12fltSemanticsEbm.exit.i: ; preds = %bb.bb, %bb.ba
  %i.km = call noundef ptr @_ZN4llvm10ConstantFP3getERNS_11LLVMContextERKNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef nonnull align 8 dereferenceable(24) %74) #15
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %74) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #15
  br label %_ZL27getIdentityValueForAtomicOpPN4llvm4TypeENS_13AtomicRMWInst5BinOpE.exit

_ZL27getIdentityValueForAtomicOpPN4llvm4TypeENS_13AtomicRMWInst5BinOpE.exit: ; preds = %_ZN4llvm5APIntD2Ev.exit.i, %_ZN4llvm5APIntD2Ev.exit17.i, %_ZN4llvm5APIntD2Ev.exit18.i, %_ZN4llvm5APIntD2Ev.exit21.i, %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit.i, %_ZN4llvm7APFloat6getNaNERKNS_12fltSemanticsEbm.exit.i
  %.0.i200 = phi ptr [ %i.hq, %_ZN4llvm5APIntD2Ev.exit.i ], [ %i.ib, %_ZN4llvm5APIntD2Ev.exit17.i ], [ %i.iy, %_ZN4llvm5APIntD2Ev.exit18.i ], [ %i.kc, %_ZN4llvm5APIntD2Ev.exit21.i ], [ %i.kj, %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit.i ], [ %i.km, %_ZN4llvm7APFloat6getNaNERKNS_12fltSemanticsEbm.exit.i ] ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #15
  store ptr null, ptr %i.aj, align 8, !tbaa !380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #15
  store ptr null, ptr %i.ak, align 8, !tbaa !380
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !413
  %i.kp = icmp eq ptr %i.ko, null                 ; 3 uses
  br i1 %4, label %bb.bc, label %bb.er

bb.bc:                                            ; preds = %_ZL27getIdentityValueForAtomicOpPN4llvm4TypeENS_13AtomicRMWInst5BinOpE.exit
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !69 ; 2 uses
  %i.ks = icmp eq i32 %i.kr, 0
  br i1 %i.ks, label %bb.bd, label %bb.cl

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #15
  store ptr %i.eg, ptr %i.al, align 8, !tbaa !380
  %i.kt = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %.0.i200, ptr %i.kt, align 8, !tbaa !380
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #15
  %i.ku = getelementptr inbounds nuw i8, ptr %99, i64 32
  store i16 257, ptr %i.ku, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %100, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #15
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS7_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS7_INS_17OperandBundleDefTISC_EEEES4_Ed_UlS2_E_EEvlS2_, ptr %101, align 8, !tbaa !414
  %i.kv = getelementptr inbounds nuw i8, ptr %101, i64 8
  %i.kw = ptrtoint ptr %102 to i64
  store i64 %i.kw, ptr %i.kv, align 8, !tbaa !416
  %i.kx = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(88) %85, i32 noundef 3532, ptr nonnull %i.ad, i64 1, ptr nonnull %i.al, i64 2, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %99, ptr noundef nonnull byval(%"class.llvm::ArrayRef.267") align 8 %100, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %101) #15 ; 7 uses
  store ptr %i.kx, ptr %i.ak, align 8, !tbaa !380
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #15
  br i1 %i.kp, label %bb.be, label %bb.bl

bb.be:                                            ; preds = %bb.bd
  %i.ky = load ptr, ptr %i.eh, align 8, !tbaa !77, !nonnull !41, !align !42
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 822
  %i.la = load i8, ptr %i.kz, align 2, !tbaa !417, !range !274, !noundef !41
  %i.lb = trunc nuw i8 %i.la to i1
  br i1 %i.lb, label %bb.bf, label %bb.bl

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %58)
  call void @llvm.lifetime.start.p0(ptr nonnull %59)
  call void @llvm.lifetime.start.p0(ptr nonnull %62)
  call void @llvm.lifetime.start.p0(ptr nonnull %65)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #15
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !91
  store ptr %i.ld, ptr %i.y, align 8, !tbaa !97
  %i.le = load ptr, ptr %i.ci, align 8, !tbaa !374
  %i.lf = call noundef ptr @_ZNK4llvm10BasicBlock9getModuleEv(ptr noundef nonnull align 8 dereferenceable(80) %i.le) #15
  %i.lg = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 4 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 4 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 4 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %57, i64 32 ; 4 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 4 uses
  %i.ln = ptrtoint ptr %60 to i64                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #15
  store ptr %.0.i200, ptr %i.z, align 8, !tbaa !380
  store ptr %i.kx, ptr %i.lg, align 8, !tbaa !380
  %i.lo = load ptr, ptr %i.bz, align 8, !tbaa !377, !nonnull !41, !align !42
  %i.lp = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.lo) #15
  %i.lq = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.lp, i64 noundef 353, i1 noundef zeroext false, i1 noundef zeroext false) #15
  store ptr %i.lq, ptr %i.lh, align 8, !tbaa !380
  %i.lr = load ptr, ptr %i.bz, align 8, !tbaa !377, !nonnull !41, !align !42
  %i.ls = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.lr) #15
  %i.lt = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.ls, i64 noundef 15, i1 noundef zeroext false, i1 noundef zeroext false) #15
  store ptr %i.lt, ptr %i.li, align 8, !tbaa !380
  %i.lu = load ptr, ptr %i.bz, align 8, !tbaa !377, !nonnull !41, !align !42
  %i.lv = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.lu) #15
  %i.lw = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.lv, i64 noundef 15, i1 noundef zeroext false, i1 noundef zeroext false) #15
  store ptr %i.lw, ptr %i.lj, align 8, !tbaa !380
  %i.lx = load ptr, ptr %i.bz, align 8, !tbaa !377, !nonnull !41, !align !42
  %i.ly = call noundef ptr @_ZN4llvm11ConstantInt8getFalseERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.lx) #15
  store ptr %i.ly, ptr %i.lk, align 8, !tbaa !380
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #15
  store i16 257, ptr %i.ll, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #15
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS7_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS7_INS_17OperandBundleDefTISC_EEEES4_Ed_UlS2_E_EEvlS2_, ptr %59, align 8, !tbaa !414
  store i64 %i.ln, ptr %i.lm, align 8, !tbaa !416
  %i.lz = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(104) %85, i32 noundef 3658, ptr nonnull %i.y, i64 1, ptr nonnull %i.z, i64 6, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %57, ptr noundef nonnull byval(%"class.llvm::ArrayRef.267") align 8 %58, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %59) #15
  %i.ma = call fastcc noundef ptr @_ZL19buildNonAtomicBinOpRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEENS_13AtomicRMWInst5BinOpEPNS_5ValueES8_(ptr noundef nonnull align 8 dereferenceable(104) %85, i32 noundef range(i32 3, 2) %.0178.a, ptr noundef %i.kx, ptr noundef %i.lz) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #15
  store ptr %.0.i200, ptr %i.z, align 8, !tbaa !380
  store ptr %i.ma, ptr %i.lg, align 8, !tbaa !380
  %i.mb = load ptr, ptr %i.bz, align 8, !tbaa !377, !nonnull !41, !align !42
  %i.mc = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.mb) #15
  %i.md = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.mc, i64 noundef 354, i1 noundef zeroext false, i1 noundef zeroext false) #15
  store ptr %i.md, ptr %i.lh, align 8, !tbaa !380
  %i.me = load ptr, ptr %i.bz, align 8, !tbaa !377, !nonnull !41, !align !42
  %i.mf = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.me) #15
  %i.mg = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.mf, i64 noundef 15, i1 noundef zeroext false, i1 noundef zeroext false) #15
  store ptr %i.mg, ptr %i.li, align 8, !tbaa !380
  %i.mh = load ptr, ptr %i.bz, align 8, !tbaa !377, !nonnull !41, !align !42
  %i.mi = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.mh) #15
  %i.mj = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.mi, i64 noundef 15, i1 noundef zeroext false, i1 noundef zeroext false) #15
  store ptr %i.mj, ptr %i.lj, align 8, !tbaa !380
  %i.mk = load ptr, ptr %i.bz, align 8, !tbaa !377, !nonnull !41, !align !42
  %i.ml = call noundef ptr @_ZN4llvm11ConstantInt8getFalseERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.mk) #15
  store ptr %i.ml, ptr %i.lk, align 8, !tbaa !380
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #15
  store i16 257, ptr %i.ll, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #15
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS7_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS7_INS_17OperandBundleDefTISC_EEEES4_Ed_UlS2_E_EEvlS2_, ptr %59, align 8, !tbaa !414
  store i64 %i.ln, ptr %i.lm, align 8, !tbaa !416
  %i.mm = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(104) %85, i32 noundef 3658, ptr nonnull %i.y, i64 1, ptr nonnull %i.z, i64 6, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %57, ptr noundef nonnull byval(%"class.llvm::ArrayRef.267") align 8 %58, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %59) #15
  %i.mn = call fastcc noundef ptr @_ZL19buildNonAtomicBinOpRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEENS_13AtomicRMWInst5BinOpEPNS_5ValueES8_(ptr noundef nonnull align 8 dereferenceable(104) %85, i32 noundef range(i32 3, 2) %.0178.a, ptr noundef %i.ma, ptr noundef %i.mm) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #15
  store ptr %.0.i200, ptr %i.z, align 8, !tbaa !380
  store ptr %i.mn, ptr %i.lg, align 8, !tbaa !380
  %i.mo = load ptr, ptr %i.bz, align 8, !tbaa !377, !nonnull !41, !align !42
  %i.mp = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.mo) #15
  %i.mq = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.mp, i64 noundef 356, i1 noundef zeroext false, i1 noundef zeroext false) #15
  store ptr %i.mq, ptr %i.lh, align 8, !tbaa !380
  %i.mr = load ptr, ptr %i.bz, align 8, !tbaa !377, !nonnull !41, !align !42
  %i.ms = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.mr) #15
  %i.mt = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.ms, i64 noundef 15, i1 noundef zeroext false, i1 noundef zeroext false) #15
  store ptr %i.mt, ptr %i.li, align 8, !tbaa !380
  %i.mu = load ptr, ptr %i.bz, align 8, !tbaa !377, !nonnull !41, !align !42
  %i.mv = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.mu) #15
  %i.mw = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.mv, i64 noundef 15, i1 noundef zeroext false, i1 noundef zeroext false) #15
  store ptr %i.mw, ptr %i.lj, align 8, !tbaa !380
  %i.mx = load ptr, ptr %i.bz, align 8, !tbaa !377, !nonnull !41, !align !42
  %i.my = call noundef ptr @_ZN4llvm11ConstantInt8getFalseERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.mx) #15
  store ptr %i.my, ptr %i.lk, align 8, !tbaa !380
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #15
  store i16 257, ptr %i.ll, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #15
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS7_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS7_INS_17OperandBundleDefTISC_EEEES4_Ed_UlS2_E_EEvlS2_, ptr %59, align 8, !tbaa !414
  store i64 %i.ln, ptr %i.lm, align 8, !tbaa !416
  %i.mz = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(104) %85, i32 noundef 3658, ptr nonnull %i.y, i64 1, ptr nonnull %i.z, i64 6, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %57, ptr noundef nonnull byval(%"class.llvm::ArrayRef.267") align 8 %58, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %59) #15
  %i.na = call fastcc noundef ptr @_ZL19buildNonAtomicBinOpRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEENS_13AtomicRMWInst5BinOpEPNS_5ValueES8_(ptr noundef nonnull align 8 dereferenceable(104) %85, i32 noundef range(i32 3, 2) %.0178.a, ptr noundef %i.mn, ptr noundef %i.mz) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #15
  store ptr %.0.i200, ptr %i.z, align 8, !tbaa !380
  store ptr %i.na, ptr %i.lg, align 8, !tbaa !380
  %i.nb = load ptr, ptr %i.bz, align 8, !tbaa !377, !nonnull !41, !align !42
  %i.nc = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.nb) #15
  %i.nd = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.nc, i64 noundef 360, i1 noundef zeroext false, i1 noundef zeroext false) #15
  store ptr %i.nd, ptr %i.lh, align 8, !tbaa !380
  %i.ne = load ptr, ptr %i.bz, align 8, !tbaa !377, !nonnull !41, !align !42
  %i.nf = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ne) #15
  %i.ng = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.nf, i64 noundef 15, i1 noundef zeroext false, i1 noundef zeroext false) #15
  store ptr %i.ng, ptr %i.li, align 8, !tbaa !380
  %i.nh = load ptr, ptr %i.bz, align 8, !tbaa !377, !nonnull !41, !align !42
  %i.ni = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.nh) #15
  %i.nj = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.ni, i64 noundef 15, i1 noundef zeroext false, i1 noundef zeroext false) #15
  store ptr %i.nj, ptr %i.lj, align 8, !tbaa !380
  %i.nk = load ptr, ptr %i.bz, align 8, !tbaa !377, !nonnull !41, !align !42
  %i.nl = call noundef ptr @_ZN4llvm11ConstantInt8getFalseERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.nk) #15
  store ptr %i.nl, ptr %i.lk, align 8, !tbaa !380
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #15
  store i16 257, ptr %i.ll, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #15
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS7_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS7_INS_17OperandBundleDefTISC_EEEES4_Ed_UlS2_E_EEvlS2_, ptr %59, align 8, !tbaa !414
  store i64 %i.ln, ptr %i.lm, align 8, !tbaa !416
  %i.nm = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(104) %85, i32 noundef 3658, ptr nonnull %i.y, i64 1, ptr nonnull %i.z, i64 6, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %57, ptr noundef nonnull byval(%"class.llvm::ArrayRef.267") align 8 %58, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %59) #15
  %i.nn = call fastcc noundef ptr @_ZL19buildNonAtomicBinOpRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEENS_13AtomicRMWInst5BinOpEPNS_5ValueES8_(ptr noundef nonnull align 8 dereferenceable(104) %85, i32 noundef range(i32 3, 2) %.0178.a, ptr noundef %i.na, ptr noundef %i.nm) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #15
end_hunk_0
